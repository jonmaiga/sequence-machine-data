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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C014
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
import Seq.B004.C004
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A023822.P15982397064296015085

`A023821(n+3)-A001222(2*(n+3)+3)+A001222(n+1)`
-/

namespace A023822.P15982397064296015085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023821 (n + 3) - A001222 (2 * (n + 3) + 3) + A001222 (n + 1)

end

end A023822.P15982397064296015085

noncomputable section

/-- A023822: Sum of exponents in prime-power factorization of C(3n,n-3).

Offset 3, canonical program `A023822.P15982397064296015085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023822 (n : ℕ) : ℤ :=
  A023822.P15982397064296015085.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023822.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023825.P3857081763701164285

`A023824(n+2)+A001222(2*(n+2)-2)-A001222(n+5)`
-/

namespace A023825.P3857081763701164285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023824 (n + 2) + A001222 (2 * (n + 2) - 2) - A001222 (n + 5)

end

end A023825.P3857081763701164285

noncomputable section

/-- A023825: Sum of exponents in prime-power factorization of C(3n,n+3).

Offset 2, canonical program `A023825.P3857081763701164285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023825 (n : ℕ) : ℤ :=
  A023825.P3857081763701164285.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023829.P17369024304238667941

`A023828(n+3)-A001222(3*(n+3)+3)+A001222(n+1)`
-/

namespace A023829.P17369024304238667941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023828 (n + 3) - A001222 (3 * (n + 3) + 3) + A001222 (n + 1)

end

end A023829.P17369024304238667941

noncomputable section

/-- A023829: Sum of exponents in prime-power factorization of C(4n,n-3).

Offset 3, canonical program `A023829.P17369024304238667941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023829 (n : ℕ) : ℤ :=
  A023829.P17369024304238667941.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023833.P6706101550866346512

`A023832(n+1)+A001222(3*(n+1)-2)-A001222(n+4)`
-/

namespace A023833.P6706101550866346512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023832 (n + 1) + A001222 (3 * (n + 1) - 2) - A001222 (n + 4)

end

end A023833.P6706101550866346512

noncomputable section

/-- A023833: Sum of exponents in prime-power factorization of C(4n,n+3).

Offset 1, canonical program `A023833.P6706101550866346512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023833 (n : ℕ) : ℤ :=
  A023833.P6706101550866346512.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038815.P659222631407016470

`A038814(10*(n+1))`
-/

namespace A038815.P659222631407016470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038814 (10 * (n + 1))

end

end A038815.P659222631407016470

noncomputable section

/-- A038815: Number of primes less than n*10^6.

Offset 1, canonical program `A038815.P659222631407016470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038815 (n : ℕ) : ℤ :=
  A038815.P659222631407016470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049107.P6027054522319473251

`A000010(A049100(n+1))`
-/

namespace A049107.P6027054522319473251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049100 (n + 1)).toNat

end

end A049107.P6027054522319473251

noncomputable section

/-- A049107: a(n) = Euler phi function applied 5 times to n.

Offset 1, canonical program `A049107.P6027054522319473251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049107 (n : ℕ) : ℤ :=
  A049107.P6027054522319473251.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056628.P2818062882459124441

`A056627(n+1)²`
-/

namespace A056628.P2818062882459124441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056627 (n + 1) ^ 2

end

end A056628.P2818062882459124441

noncomputable section

/-- A056628: a(n) = A056623(n!).

Offset 1, canonical program `A056628.P2818062882459124441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056628 (n : ℕ) : ℤ :=
  A056628.P2818062882459124441.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056673.P2016486030983977128

`A056671(A001405(n+1))`
-/

namespace A056673.P2016486030983977128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A001405 (n + 1)).toNat

end

end A056673.P2016486030983977128

noncomputable section

/-- A056673: Number of unitary and squarefree divisors of binomial(n, floor(n/2)). Also the number of divisors of the powerfree part of A001405(n), A056060(n).

Offset 1, canonical program `A056673.P2016486030983977128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056673 (n : ℕ) : ℤ :=
  A056673.P2016486030983977128.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056674.P17578094997466486638

`A034444(n+1)-A056671(n+1)`
-/

namespace A056674.P17578094997466486638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A056671 (n + 1)

end

end A056674.P17578094997466486638

noncomputable section

/-- A056674: Number of squarefree divisors which are not unitary. Also number of unitary divisors which are not squarefree.

Offset 1, canonical program `A056674.P17578094997466486638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056674 (n : ℕ) : ℤ :=
  A056674.P17578094997466486638.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064016.P2024844494893965429

`10^n*(10^n+1)/2-A064018(n)`
-/

namespace A064016.P2024844494893965429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (10 ^ n + 1) : ℚ) / 2 - (A064018 n : ℚ)

end

end A064016.P2024844494893965429

noncomputable section

/-- A064016: a(n) = Sum_{k <= 10^n} cototient(k), where cototient is A051953.

Offset 0, canonical program `A064016.P2024844494893965429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064016.P2024844494893965429.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064485.P12267262831096968651

`4*(n+1)²-A064400(n+1)`
-/

namespace A064485.P12267262831096968651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) ^ 2 : ℤ) - A064400 (n + 1)

end

end A064485.P12267262831096968651

noncomputable section

/-- A064485: Number of ordered pairs a,b of elements in the dihedral group D_2n such that the subgroup generated by the pair a,b is a proper subgroup of D_2n.

Offset 1, canonical program `A064485.P12267262831096968651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064485 (n : ℕ) : ℤ :=
  A064485.P12267262831096968651.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065887.P4570226576753041376

`sqrt(A065886(n))`
-/

namespace A065887.P4570226576753041376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065886 n : ℝ)

end

end A065887.P4570226576753041376

noncomputable section

/-- A065887: Smallest number whose square is divisible by n!.

Offset 0, canonical program `A065887.P4570226576753041376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065887 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065887.P4570226576753041376.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068773.P160054697716686617

`3*A002088(n+1)-2*A049690(n+1)`
-/

namespace A068773.P160054697716686617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002088 (n + 1) - 2 * A049690 (n + 1)

end

end A068773.P160054697716686617

noncomputable section

/-- A068773: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(n+1))*phi(n).

Offset 1, canonical program `A068773.P160054697716686617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068773 (n : ℕ) : ℤ :=
  A068773.P160054697716686617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074465.P13764796853206627509

`A074389((n+1)²)`
-/

namespace A074465.P13764796853206627509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074389 ((n + 1) ^ 2)

end

end A074465.P13764796853206627509

noncomputable section

/-- A074465: a(n) = gcd(n^2, sigma(n^2), phi(n^2)).

Offset 1, canonical program `A074465.P13764796853206627509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074465 (n : ℕ) : ℤ :=
  A074465.P13764796853206627509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086971.P8267424955413097261

`A056170(n+1)+A079275(n+1)`
-/

namespace A086971.P8267424955413097261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A079275 (n + 1)

end

end A086971.P8267424955413097261

noncomputable section

/-- A086971: Number of semiprime divisors of n.

Offset 1, canonical program `A086971.P8267424955413097261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086971 (n : ℕ) : ℤ :=
  A086971.P8267424955413097261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086971.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092589.P10477764574999040477

`-A065395(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092589.P10477764574999040477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065395 (2 ^ n)

end

end A092589.P10477764574999040477

noncomputable section

/-- A092589: a(n) = -A065395(2^n).

Offset 0, canonical program `A092589.P10477764574999040477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092589 (n : ℕ) : ℤ :=
  A092589.P10477764574999040477.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092590.P6800779655927528509

`A065395(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092590.P6800779655927528509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (A000040 (n + 1)).toNat

end

end A092590.P6800779655927528509

noncomputable section

/-- A092590: a(n) = A065395(A000040(n)); values of commutator of sigma and phi function at prime number arguments.

Offset 1, canonical program `A092590.P6800779655927528509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092590 (n : ℕ) : ℤ :=
  A092590.P6800779655927528509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098200.P7699923620318063745

`A053475(2*(n+1))`
-/

namespace A098200.P7699923620318063745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (2 * (n + 1))

end

end A098200.P7699923620318063745

noncomputable section

/-- A098200: Number of distinct terms in iteration-list when cototient-function[=A051953] is iterated and the initial value is even number.

Offset 1, canonical program `A098200.P7699923620318063745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098200 (n : ℕ) : ℤ :=
  A098200.P7699923620318063745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099957.P9340861453525677397

`A002088(2*(n+1)-1)-A049690(n)`
-/

namespace A099957.P9340861453525677397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * (n + 1) - 1) - A049690 n

end

end A099957.P9340861453525677397

noncomputable section

/-- A099957: a(n) = Sum_{k=0..n-1} phi(2k+1).

Offset 1, canonical program `A099957.P9340861453525677397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099957 (n : ℕ) : ℤ :=
  A099957.P9340861453525677397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103895.P2049527979397506863

`A000203(A103890(n+1))`
-/

namespace A103895.P2049527979397506863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A103890 (n + 1)).toNat

end

end A103895.P2049527979397506863

noncomputable section

/-- A103895: Sum of divisors of prime(n)! / prime(n)# + 1.

Offset 1, canonical program `A103895.P2049527979397506863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103895 (n : ℕ) : ℤ :=
  A103895.P2049527979397506863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103896.P5127249135774220631

`A000010(A103890(n+1))`
-/

namespace A103896.P5127249135774220631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103890 (n + 1)).toNat

end

end A103896.P5127249135774220631

noncomputable section

/-- A103896: Euler's totient of prime(n)! / prime(n)# + 1.

Offset 1, canonical program `A103896.P5127249135774220631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103896 (n : ℕ) : ℤ :=
  A103896.P5127249135774220631.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116568.P1270163907824059920

`n+1-abs(A097454(n+1))`
-/

namespace A116568.P1270163907824059920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A097454 (n + 1)|

end

end A116568.P1270163907824059920

noncomputable section

/-- A116568: Difference between n and the absolute value of the difference between number of nonprimes not exceeding n and number of primes not exceeding n.

Offset 1, canonical program `A116568.P1270163907824059920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116568 (n : ℕ) : ℤ :=
  A116568.P1270163907824059920.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117762.P18433976159916290446

`A000040(n+1)*A084921(n+1)`
-/

namespace A117762.P18433976159916290446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A084921 (n + 1)

end

end A117762.P18433976159916290446

noncomputable section

/-- A117762: a(1) = 6; for n>1, a(n) = prime(n)*(prime(n)^2 - 1)/2.

Offset 1, canonical program `A117762.P18433976159916290446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117762 (n : ℕ) : ℤ :=
  A117762.P18433976159916290446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000252.P10509989210323719014

`A000056(n+1)*A000010(n+1)`
-/

namespace A000252.P10509989210323719014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000056 (n + 1) * A000010 (n + 1)

end

end A000252.P10509989210323719014

noncomputable section

/-- A000252: Number of invertible 2 X 2 matrices mod n.

Offset 1, canonical program `A000252.P10509989210323719014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000252 (n : ℕ) : ℤ :=
  A000252.P10509989210323719014.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007413.P5220170299432131247

`4-A036585(n+1)`
-/

namespace A007413.P5220170299432131247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036585 (n + 1)

end

end A007413.P5220170299432131247

noncomputable section

/-- A007413: A squarefree (or Thue-Morse) ternary sequence: closed under 1->123, 2->13, 3->2. Start with 1.

Offset 1, canonical program `A007413.P5220170299432131247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007413 (n : ℕ) : ℤ :=
  A007413.P5220170299432131247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020985.P937884151096334327

`(-1)^A014081(n)`
-/

namespace A020985.P937884151096334327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014081 n : ℤ)

end

end A020985.P937884151096334327

noncomputable section

/-- A020985: The Rudin-Shapiro or Golay-Rudin-Shapiro sequence (coefficients of the Shapiro polynomials).

Offset 0, canonical program `A020985.P937884151096334327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020985.P937884151096334327.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032358.P8457793188510615298

`A003434(n+2)-1`
-/

namespace A032358.P8457793188510615298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 2) - 1

end

end A032358.P8457793188510615298

noncomputable section

/-- A032358: Number of iterations of phi(n) needed to reach 2.

Offset 2, canonical program `A032358.P8457793188510615298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032358 (n : ℕ) : ℤ :=
  A032358.P8457793188510615298.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033265.P2197321529465223578

`A014081(n+1)+A023416(n+1)`
-/

namespace A033265.P2197321529465223578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) + A023416 (n + 1)

end

end A033265.P2197321529465223578

noncomputable section

/-- A033265: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A033265.P2197321529465223578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033265 (n : ℕ) : ℤ :=
  A033265.P2197321529465223578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039622.P10330240831742726338

`A088020(n)/A107254(n)`
-/

namespace A039622.P10330240831742726338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088020 n : ℚ) / (A107254 n : ℚ)

end

end A039622.P10330240831742726338

noncomputable section

/-- A039622: Number of n X n Young tableaux.

Offset 0, canonical program `A039622.P10330240831742726338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039622.P10330240831742726338.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055941.P14455058881262499734

`A161511(n)-A000120(n)`
-/

namespace A055941.P14455058881262499734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n - A000120 n

end

end A055941.P14455058881262499734

noncomputable section

/-- A055941: a(n) = Sum_{j=0..k-1} (i(j) - j) where n = Sum_{j=0..k-1} 2^i(j).

Offset 0, canonical program `A055941.P14455058881262499734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055941 (n : ℕ) : ℤ :=
  A055941.P14455058881262499734.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056973.P10216103084788388741

`A023416(n+1)-A033264(n+1)`
-/

namespace A056973.P10216103084788388741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A033264 (n + 1)

end

end A056973.P10216103084788388741

noncomputable section

/-- A056973: Number of blocks of {0,0} in the binary expansion of n.

Offset 1, canonical program `A056973.P10216103084788388741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056973 (n : ℕ) : ℤ :=
  A056973.P10216103084788388741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060607.P3756822233066968907

`A003434(A006093(n+1)+1)`
-/

namespace A060607.P3756822233066968907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A006093 (n + 1) + 1).toNat

end

end A060607.P3756822233066968907

noncomputable section

/-- A060607: Number of iterations of phi(x) at prime(n) needed to reach 1.

Offset 1, canonical program `A060607.P3756822233066968907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060607 (n : ℕ) : ℤ :=
  A060607.P3756822233066968907.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064106.P240912047226861259

`A064105(n+1)+A202342(n+1)`
-/

namespace A064106.P240912047226861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + A202342 (n + 1)

end

end A064106.P240912047226861259

noncomputable section

/-- A064106: 3rd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064106.P240912047226861259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064106 (n : ℕ) : ℤ :=
  A064106.P240912047226861259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065499.P14795021583104513444

`(n+1)^9-A064767(n+1)`
-/

namespace A065499.P14795021583104513444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9 : ℤ) - A064767 (n + 1)

end

end A065499.P14795021583104513444

noncomputable section

/-- A065499: Noninvertible 3 X 3 matrices over Z_n.

Offset 1, canonical program `A065499.P14795021583104513444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065499 (n : ℕ) : ℤ :=
  A065499.P14795021583104513444.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066250.P6960547078573178582

`A026238(n+2)*2-A010051(n+2)`
-/

namespace A066250.P6960547078573178582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) * 2 - A010051 (n + 2)

end

end A066250.P6960547078573178582

noncomputable section

/-- A066250: a(n) = if n+1 is prime then A049084(n+1)*2 - 1 else A066246(n+1)*2.

Offset 1, canonical program `A066250.P6960547078573178582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066250 (n : ℕ) : ℤ :=
  A066250.P6960547078573178582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066885.P10827567578802423542

`1+A084921(n+2)`
-/

namespace A066885.P10827567578802423542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A084921 (n + 2)

end

end A066885.P10827567578802423542

noncomputable section

/-- A066885: a(n) = (prime(n)^2 + 1)/2.

Offset 2, canonical program `A066885.P10827567578802423542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066885 (n : ℕ) : ℤ :=
  A066885.P10827567578802423542.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070732.P10550468717027057537

`A000056(n+1)/A000010(2*(n+1))`
-/

namespace A070732.P10550468717027057537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000010 (2 * (n + 1)) : ℚ)

end

end A070732.P10550468717027057537

noncomputable section

/-- A070732: Size of largest conjugacy class in the group GL(2,Z_n).

Offset 1, canonical program `A070732.P10550468717027057537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070732.P10550468717027057537.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096351.P17769226119472261959

`(n+1)!/2^A268289(n)`
-/

namespace A096351.P17769226119472261959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (2 : ℚ) ^ (A268289 n : ℤ)

end

end A096351.P17769226119472261959

noncomputable section

/-- A096351: Number of meaningfully different ways to design a neutral single-elimination tournament with n teams.

Offset 1, canonical program `A096351.P17769226119472261959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096351.P17769226119472261959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101651.P2336243589466442413

`2^A245710(n)`
-/

namespace A101651.P2336243589466442413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A245710 n : ℤ)

end

end A101651.P2336243589466442413

noncomputable section

/-- A101651: a(n) = Product_{k=0..n} (1 + 0^A010060(k))/2.

Offset 0, canonical program `A101651.P2336243589466442413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101651.P2336243589466442413.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115226.P2780584315718374276

`A064767(n+1)/A000056(n+1)`
-/

namespace A115226.P2780584315718374276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ)

end

end A115226.P2780584315718374276

noncomputable section

/-- A115226: Order of the group of invertible 3 X 3 symmetric matrices over Z(n).

Offset 1, canonical program `A115226.P2780584315718374276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115226.P2780584315718374276.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002472.P6913863358796282125

`A160467(n+1)*A058026(A000265(n+1))`
-/

namespace A002472.P6913863358796282125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A058026 (A000265 (n + 1)).toNat

end

end A002472.P6913863358796282125

noncomputable section

/-- A002472: Number of pairs x,y such that y-x=2, (x,n)=1, (y,n)=1 and 1 <= x <= n.

Offset 1, canonical program `A002472.P6913863358796282125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002472 (n : ℕ) : ℤ :=
  A002472.P6913863358796282125.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005353.P13530675845642685918

`(n+1)^4-A020478(n+1)`
-/

namespace A005353.P13530675845642685918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A020478 (n + 1)

end

end A005353.P13530675845642685918

noncomputable section

/-- A005353: Number of 2 X 2 matrices with entries mod n and nonzero determinant.

Offset 1, canonical program `A005353.P13530675845642685918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005353 (n : ℕ) : ℤ :=
  A005353.P13530675845642685918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007956.P11894205286673783912

`A007955(n+1)/(n+1)`
-/

namespace A007956.P11894205286673783912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007956.P11894205286673783912

noncomputable section

/-- A007956: Product of the proper divisors of n.

Offset 1, canonical program `A007956.P11894205286673783912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007956.P11894205286673783912.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023506.P8238075321002430413

`A007814(A006093(n+1))`
-/

namespace A023506.P8238075321002430413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006093 (n + 1)).toNat

end

end A023506.P8238075321002430413

noncomputable section

/-- A023506: Exponent of 2 in prime factorization of prime(n) - 1.

Offset 1, canonical program `A023506.P8238075321002430413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023506 (n : ℕ) : ℤ :=
  A023506.P8238075321002430413.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023512.P10956487217838497278

`A007814(A008864(n+1))`
-/

namespace A023512.P10956487217838497278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008864 (n + 1)).toNat

end

end A023512.P10956487217838497278

noncomputable section

/-- A023512: Exponent of 2 in prime factorization of prime(n) + 1.

Offset 1, canonical program `A023512.P10956487217838497278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023512 (n : ℕ) : ℤ :=
  A023512.P10956487217838497278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023579.P9595567503422635053

`A007814(A113935(n+1))`
-/

namespace A023579.P9595567503422635053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113935 (n + 1)).toNat

end

end A023579.P9595567503422635053

noncomputable section

/-- A023579: Exponent of 2 in prime factorization of prime(n)+3.

Offset 1, canonical program `A023579.P9595567503422635053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023579 (n : ℕ) : ℤ :=
  A023579.P9595567503422635053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024321.P8263980654322628262

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A002808(n+1-#)]`
-/

namespace A024321.P8263980654322628262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A002808 (n + 1 - k)

end

end A024321.P8263980654322628262

noncomputable section

/-- A024321: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (composite numbers).

Offset 1, canonical program `A024321.P8263980654322628262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024321 (n : ℕ) : ℤ :=
  A024321.P8263980654322628262.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024590.P1988169681034717882

`∑{#}[floor((n+2)/2)-1, A002808(#+1)*(1+2*(n+1-(#+1)))]`
-/

namespace A024590.P1988169681034717882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A002808 (k + 1) * (1 + 2 * ((n + 1 : ℤ) - (k + 1 : ℤ)))

end

end A024590.P1988169681034717882

noncomputable section

/-- A024590: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (composite numbers), t = (odd natural numbers).

Offset 1, canonical program `A024590.P1988169681034717882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024590 (n : ℕ) : ℤ :=
  A024590.P1988169681034717882.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025000.P14966022443136286055

`A002808(a(n-1)-2)` with `a(0)=3`
-/

namespace A025000.P14966022443136286055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002808 (a (n - 1) - 2).toNat

end

end A025000.P14966022443136286055

noncomputable section

/-- A025000: a(1) = 3; a(n+1) = a(n)-th nonprime, where nonprimes begin at 0.

Offset 1, canonical program `A025000.P14966022443136286055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025000 (n : ℕ) : ℤ :=
  A025000.P14966022443136286055.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034718.P3593226666238207661

`(n+1)*A007425(n+1)`
-/

namespace A034718.P3593226666238207661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007425 (n + 1)

end

end A034718.P3593226666238207661

noncomputable section

/-- A034718: Dirichlet convolution of b_n=n with b_n with b_n.

Offset 1, canonical program `A034718.P3593226666238207661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034718 (n : ℕ) : ℤ :=
  A034718.P3593226666238207661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037227.P1481052513991100259

`2*A007814(n+1)+1`
-/

namespace A037227.P1481052513991100259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) + 1

end

end A037227.P1481052513991100259

noncomputable section

/-- A037227: If n = 2^m*k, k odd, then a(n) = 2*m+1.

Offset 1, canonical program `A037227.P1481052513991100259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227 (n : ℕ) : ℤ :=
  A037227.P1481052513991100259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038529.P12826483427186246447

`A000040(n+1)-A002808(n+1)`
-/

namespace A038529.P12826483427186246447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002808 (n + 1)

end

end A038529.P12826483427186246447

noncomputable section

/-- A038529: n-th prime - n-th composite.

Offset 1, canonical program `A038529.P12826483427186246447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038529 (n : ℕ) : ℤ :=
  A038529.P12826483427186246447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039696.P2737647612043200767

`A007947(n+1)+A005361(n+1)`
-/

namespace A039696.P2737647612043200767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A005361 (n + 1)

end

end A039696.P2737647612043200767

noncomputable section

/-- A039696: If n = Product (p_j^k_j) then a(n) = Product (p_j) + Product (k_j).

Offset 1, canonical program `A039696.P2737647612043200767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039696 (n : ℕ) : ℤ :=
  A039696.P2737647612043200767.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039963.P7442074612233397869

`A035263(1+floor(n/2))`
-/

namespace A039963.P7442074612233397869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (1 + ⌊(n : ℚ) / 2⌋).toNat

end

end A039963.P7442074612233397869

noncomputable section

/-- A039963: The period-doubling sequence A035263 repeated.

Offset 0, canonical program `A039963.P7442074612233397869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039963 (n : ℕ) : ℤ :=
  A039963.P7442074612233397869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046343.P14376199206218772197

`A001414(A002808(n+1))`
-/

namespace A046343.P14376199206218772197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A002808 (n + 1)).toNat

end

end A046343.P14376199206218772197

noncomputable section

/-- A046343: Sum of the prime factors of the composite numbers (counted with multiplicity).

Offset 1, canonical program `A046343.P14376199206218772197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046343 (n : ℕ) : ℤ :=
  A046343.P14376199206218772197.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046343.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A046640.P10355392584185486359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046640 (n : ℕ) : ℤ :=
  A046640.P10355392584185486359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048244.P17897497883723303943

`A048106(A001405(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048244.P17897497883723303943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048106 (A001405 (n + 1)).toNat

end

end A048244.P17897497883723303943

noncomputable section

/-- A048244: a(n) = A048106(A001405(n)).

Offset 1, canonical program `A048244.P17897497883723303943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048244 (n : ℕ) : ℤ :=
  A048244.P17897497883723303943.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048740.P15296092853580222762

`A007955(A002808(n+1))`
-/

namespace A048740.P15296092853580222762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A002808 (n + 1)).toNat

end

end A048740.P15296092853580222762

noncomputable section

/-- A048740: Product of divisors of n-th composite number.

Offset 1, canonical program `A048740.P15296092853580222762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048740 (n : ℕ) : ℤ :=
  A048740.P15296092853580222762.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050435.P14006746801944486327

`A002808(A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050435.P14006746801944486327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (n + 1)).toNat

end

end A050435.P14006746801944486327

noncomputable section

/-- A050435: a(n) = composite(composite(n)), where composite = A002808, composite numbers.

Offset 1, canonical program `A050435.P14006746801944486327`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(A002808(n+1))` (program `A050435.P14006746801944486327`, by `A050435.P14006746801944486327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A050435 (n : ℕ) : ℤ :=
  A050435.P14006746801944486327.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(A002808(n+1))` (program `A050435.P14006746801944486327`, by `A050435.P14006746801944486327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A050435.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A050603.P12712608073834541420

`A007814(n+1)+A007814(n+2)`
-/

namespace A050603.P12712608073834541420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2)

end

end A050603.P12712608073834541420

noncomputable section

/-- A050603: A001511 with every term repeated.

Offset 0, canonical program `A050603.P12712608073834541420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050603 (n : ℕ) : ℤ :=
  A050603.P12712608073834541420.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050605.P11206776989193119858

`A007814(n+1)+A007814(n+2)-1`
-/

namespace A050605.P11206776989193119858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) - 1

end

end A050605.P11206776989193119858

noncomputable section

/-- A050605: Column/row 2 of A050602: a(n) = add3c(n,2).

Offset 0, canonical program `A050605.P11206776989193119858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050605 (n : ℕ) : ℤ :=
  A050605.P11206776989193119858.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051201.P10278196116176951271

`1/4*A000267(n+1)*A055086(n+1)+1/2*A006218(n+1)`
-/

namespace A051201.P10278196116176951271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000267 (n + 1) : ℚ) * (A055086 (n + 1) : ℚ) + (1 : ℚ) / 2 * (A006218 (n + 1) : ℚ)

end

end A051201.P10278196116176951271

noncomputable section

/-- A051201: Sum of elements of the set { [ n/k ] : 1 <= k <= n }.

Offset 1, canonical program `A051201.P10278196116176951271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051201 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051201.P10278196116176951271.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051272.P18037893678165894194

`A045763(A002110(n+1))`
-/

namespace A051272.P18037893678165894194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A002110 (n + 1)).toNat

end

end A051272.P18037893678165894194

noncomputable section

/-- A051272: Number of numbers neither relatively prime to nor divisors of primorial number(n).

Offset 1, canonical program `A051272.P18037893678165894194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051272 (n : ℕ) : ℤ :=
  A051272.P18037893678165894194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052343.P15911122501402458117

`ceil(A008441(n)/2)`
-/

namespace A052343.P15911122501402458117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008441 n : ℚ) / 2⌉

end

end A052343.P15911122501402458117

noncomputable section

/-- A052343: Number of ways to write n as the unordered sum of two triangular numbers (zero allowed).

Offset 0, canonical program `A052343.P15911122501402458117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052343 (n : ℕ) : ℤ :=
  A052343.P15911122501402458117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052511.P3876828905905718149

`A000040(n+1)-1-A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052511.P3876828905905718149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1 - A006218 (n + 1)

end

end A052511.P3876828905905718149

noncomputable section

/-- A052511: a(n) = prime(n) - 1 - A006218(n).

Offset 1, canonical program `A052511.P3876828905905718149`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1-A006218(n+1)` (program `A052511.P3876828905905718149`, by `A052511.P3876828905905718149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052511 (n : ℕ) : ℤ :=
  A052511.P3876828905905718149.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1-A006218(n+1)` (program `A052511.P3876828905905718149`, by `A052511.P3876828905905718149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053021.P11940680763512173238

`A000005(A027423(n+1))`
-/

namespace A053021.P11940680763512173238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027423 (n + 1)).toNat

end

end A053021.P11940680763512173238

noncomputable section

/-- A053021: Number of divisors function applied twice to n!.

Offset 1, canonical program `A053021.P11940680763512173238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053021 (n : ℕ) : ℤ :=
  A053021.P11940680763512173238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053574.P101121150819390308

`A007814(A000010(n+1))`
-/

namespace A053574.P101121150819390308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (n + 1)).toNat

end

end A053574.P101121150819390308

noncomputable section

/-- A053574: Exponent of 2 in phi(n) where phi(n) = A000010(n).

Offset 1, canonical program `A053574.P101121150819390308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053574 (n : ℕ) : ℤ :=
  A053574.P101121150819390308.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054272.P16500536369367462355

`A250474(n+1)-2`
-/

namespace A054272.P16500536369367462355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2

end

end A054272.P16500536369367462355

noncomputable section

/-- A054272: Number of primes in the interval [prime(n), prime(n)^2].

Offset 1, canonical program `A054272.P16500536369367462355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054272 (n : ℕ) : ℤ :=
  A054272.P16500536369367462355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054519.P3292618312068876157

`A006218(n)+1`
-/

namespace A054519.P3292618312068876157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + 1

end

end A054519.P3292618312068876157

noncomputable section

/-- A054519: Number of increasing arithmetic progressions of nonnegative integers ending in n, including those of length 1 or 2.

Offset 0, canonical program `A054519.P3292618312068876157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054519 (n : ℕ) : ℤ :=
  A054519.P3292618312068876157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055067.P4337884994625751527

`A000142(n+1)/A007955(n+1)`
-/

namespace A055067.P4337884994625751527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A055067.P4337884994625751527

noncomputable section

/-- A055067: Product of numbers < n which do not divide n (or 1 if no such numbers exist).

Offset 1, canonical program `A055067.P4337884994625751527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055067 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055067.P4337884994625751527.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055076.P11566696520778035390

`2^A162642(n+1)`
-/

namespace A055076.P11566696520778035390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162642 (n + 1) : ℤ)

end

end A055076.P11566696520778035390

noncomputable section

/-- A055076: Multiplicity of Max{gcd(d, n/d)} when d runs over divisors of n.

Offset 1, canonical program `A055076.P11566696520778035390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055076.P11566696520778035390.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055205.P13391514614413086589

`A048691(n+1)-A000005(n+1)`
-/

namespace A055205.P13391514614413086589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A000005 (n + 1)

end

end A055205.P13391514614413086589

noncomputable section

/-- A055205: Number of nonsquare divisors of n^2.

Offset 1, canonical program `A055205.P13391514614413086589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055205 (n : ℕ) : ℤ :=
  A055205.P13391514614413086589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055212.P14412881054625885538

`A033273(n+1)-1`
-/

namespace A055212.P14412881054625885538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - 1

end

end A055212.P14412881054625885538

noncomputable section

/-- A055212: Number of composite divisors of n.

Offset 1, canonical program `A055212.P14412881054625885538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055212 (n : ℕ) : ℤ :=
  A055212.P14412881054625885538.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055981.P9915863314307213301

`ceil(A000142(n+1)/A027423(n+1))`
-/

namespace A055981.P9915863314307213301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 (n + 1) : ℚ) / (A027423 (n + 1) : ℚ)⌉

end

end A055981.P9915863314307213301

noncomputable section

/-- A055981: a(n) = ceiling(n!/d(n!)).

Offset 1, canonical program `A055981.P9915863314307213301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055981 (n : ℕ) : ℤ :=
  A055981.P9915863314307213301.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056549.P512568632204534587

`A062550(n)-A006218(n)`
-/

namespace A056549.P512568632204534587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - A006218 n

end

end A056549.P512568632204534587

noncomputable section

/-- A056549: a(n) = Sum_{k>=1} round(n/k) where round(1/2)=1.

Offset 0, canonical program `A056549.P512568632204534587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056549 (n : ℕ) : ℤ :=
  A056549.P512568632204534587.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056595.P14242287842452137538

`A000005(n+1)-A046951(n+1)`
-/

namespace A056595.P14242287842452137538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A046951 (n + 1)

end

end A056595.P14242287842452137538

noncomputable section

/-- A056595: Number of nonsquare divisors of n.

Offset 1, canonical program `A056595.P14242287842452137538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056595 (n : ℕ) : ℤ :=
  A056595.P14242287842452137538.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056596.P5937118824382541668

`A027423(n+1)-A055993(n+1)`
-/

namespace A056596.P5937118824382541668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A055993 (n + 1)

end

end A056596.P5937118824382541668

noncomputable section

/-- A056596: Number of nonsquare divisors of n!.

Offset 1, canonical program `A056596.P5937118824382541668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056596 (n : ℕ) : ℤ :=
  A056596.P5937118824382541668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056626.P14476168144276018779

`A046951(n+1)-A056624(n+1)`
-/

namespace A056626.P14476168144276018779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A056624 (n + 1)

end

end A056626.P14476168144276018779

noncomputable section

/-- A056626: Number of non-unitary square divisors of n.

Offset 1, canonical program `A056626.P14476168144276018779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056626 (n : ℕ) : ℤ :=
  A056626.P14476168144276018779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056630.P5612160869139664206

`A055993(n+1)-A034444(A056627(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056630.P5612160869139664206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (n + 1) - A034444 (A056627 (n + 1)).toNat

end

end A056630.P5612160869139664206

noncomputable section

/-- A056630: a(n) = A055993(n) - A034444(A056627(n)).

Offset 1, canonical program `A056630.P5612160869139664206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056630 (n : ℕ) : ℤ :=
  A056630.P5612160869139664206.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056832.P3449662837231089589

`2-A035263(n+1)`
-/

namespace A056832.P3449662837231089589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035263 (n + 1)

end

end A056832.P3449662837231089589

noncomputable section

/-- A056832: All a(n) = 1 or 2; a(1) = 1; get next 2^k terms by repeating first 2^k terms and changing last element so sum of first 2^(k+1) terms is odd.

Offset 1, canonical program `A056832.P3449662837231089589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832 (n : ℕ) : ℤ :=
  A056832.P3449662837231089589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056925.P9728593941335423866

`(n+1)^A056924(n+1)`
-/

namespace A056925.P9728593941335423866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A056924 (n + 1) : ℤ)

end

end A056925.P9728593941335423866

noncomputable section

/-- A056925: Largest integer power of n which divides product of divisors of n.

Offset 1, canonical program `A056925.P9728593941335423866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056925.P9728593941335423866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057020.P17158263776737705447

`A000203(n+1)/A009205(n+1)`
-/

namespace A057020.P17158263776737705447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P17158263776737705447

noncomputable section

/-- A057020: Numerator of (sum of divisors of n / number of divisors of n).

Offset 1, canonical program `A057020.P17158263776737705447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057020 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057020.P17158263776737705447.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057021.P14859402968036356371

`A000005(n+1)/A009205(n+1)`
-/

namespace A057021.P14859402968036356371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057021.P14859402968036356371

noncomputable section

/-- A057021: Denominator of (sum of divisors of n / number of divisors of n).

Offset 1, canonical program `A057021.P14859402968036356371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057021.P14859402968036356371.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057022.P12449521830501119084

`(A000203(n+1)-A054025(n+1))/A000005(n+1)`
-/

namespace A057022.P12449521830501119084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A054025 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A057022.P12449521830501119084

noncomputable section

/-- A057022: a(n) = floor((sum of divisors of n) / (number of divisors of n)), or floor(sigma_1(n)/sigma_0(n)).

Offset 1, canonical program `A057022.P12449521830501119084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057022.P12449521830501119084.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057494.P2374338064675521297

`A006218(10^n)`
-/

namespace A057494.P2374338064675521297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (10 ^ n)

end

end A057494.P2374338064675521297

noncomputable section

/-- A057494: a(n) = Sum_{k = 1..10^n} d(k) where d(n) = number of divisors of n (A000005).

Offset 0, canonical program `A057494.P2374338064675521297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057494 (n : ℕ) : ℤ :=
  A057494.P2374338064675521297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059132.P10830951508121782954

`4+6*A007814(n+1)`
-/

namespace A059132.P10830951508121782954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 6 * A007814 (n + 1)

end

end A059132.P10830951508121782954

noncomputable section

/-- A059132: A hierarchical sequence (W2{2}c - see A059126).

Offset 0, canonical program `A059132.P10830951508121782954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059132 (n : ℕ) : ℤ :=
  A059132.P10830951508121782954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059139.P8007015464797935688

`4+3*A007814(n+1)`
-/

namespace A059139.P8007015464797935688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 3 * A007814 (n + 1)

end

end A059139.P8007015464797935688

noncomputable section

/-- A059139: A hierarchical sequence (W2{2}*c - see A059126).

Offset 0, canonical program `A059139.P8007015464797935688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059139 (n : ℕ) : ℤ :=
  A059139.P8007015464797935688.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059152.P1141809837012285539

`4*4^A007814(n+1)`
-/

namespace A059152.P1141809837012285539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (4 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059152.P1141809837012285539

noncomputable section

/-- A059152: A hierarchical sequence (W'2{2}c - see A059126).

Offset 0, canonical program `A059152.P1141809837012285539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059152.P1141809837012285539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059154.P4388372018061316421

`12*8^A007814(n+1)`
-/

namespace A059154.P4388372018061316421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * (8 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059154.P4388372018061316421

noncomputable section

/-- A059154: A hierarchical sequence (W'2{3}c - see A059126).

Offset 0, canonical program `A059154.P4388372018061316421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059154.P4388372018061316421.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059157.P6751361432800768077

`24*16^A007814(n+1)`
-/

namespace A059157.P6751361432800768077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * (16 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059157.P6751361432800768077

noncomputable section

/-- A059157: A hierarchical sequence (W'3{2,2}cc - see A059126).

Offset 0, canonical program `A059157.P6751361432800768077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059157 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059157.P6751361432800768077.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059292.P13391037705740320393

`A049820(n+1)+2`
-/

namespace A059292.P13391037705740320393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + 2

end

end A059292.P13391037705740320393

noncomputable section

/-- A059292: a(n) = n + 2 - (number of divisors of n).

Offset 1, canonical program `A059292.P13391037705740320393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059292 (n : ℕ) : ℤ :=
  A059292.P13391037705740320393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059499.P10680692764873962203

`∑{d}[n+1, A008683((n+1)/#)*A046801(#)]`
-/

namespace A059499.P10680692764873962203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A046801 d

end

end A059499.P10680692764873962203

noncomputable section

/-- A059499: a(n) = |{m : multiplicative order of 2 mod m = n}|.

Offset 1, canonical program `A059499.P10680692764873962203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059499 (n : ℕ) : ℤ :=
  A059499.P10680692764873962203.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061201.P4630286302384005822

`∑{#}[n, A006218(floor((n+1)/(#+1)))]`
-/

namespace A061201.P4630286302384005822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A006218 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A061201.P4630286302384005822

noncomputable section

/-- A061201: Partial sums of A007425: (tau<=)_3(n).

Offset 1, canonical program `A061201.P4630286302384005822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061201 (n : ℕ) : ℤ :=
  A061201.P4630286302384005822.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061538.P6238861604211954641

`(n+1)^(A048105(n+1)/2)`
-/

namespace A061538.P6238861604211954641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A048105 (n + 1) : ℚ) / 2 : ℝ)

end

end A061538.P6238861604211954641

noncomputable section

/-- A061538: Product of all divisors of n, divided by product of unitary divisors; or equivalently product of non-unitary divisors of n.

Offset 1, canonical program `A061538.P6238861604211954641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061538.P6238861604211954641.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061680.P8755189030702859138

`gcd(A048691(n+1), A000005(n+1))`
-/

namespace A061680.P8755189030702859138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048691 (n + 1)) (A000005 (n + 1))

end

end A061680.P8755189030702859138

noncomputable section

/-- A061680: a(n) = gcd(d(n^2), d(n)).

Offset 1, canonical program `A061680.P8755189030702859138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061680 (n : ℕ) : ℤ :=
  (A061680.P8755189030702859138.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062368.P16406164343542022122

`∑{d}[n+1, A007425(#²)]`
-/

namespace A062368.P16406164343542022122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 (d ^ 2)

end

end A062368.P16406164343542022122

noncomputable section

/-- A062368: Multiplicative with a(p^e) = (e+1)*(e+2)*(4*e+3)/6.

Offset 1, canonical program `A062368.P16406164343542022122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062368 (n : ℕ) : ℤ :=
  A062368.P16406164343542022122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062758.P10816466318006647829

`A007955(n+1)²`
-/

namespace A062758.P10816466318006647829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) ^ 2

end

end A062758.P10816466318006647829

noncomputable section

/-- A062758: Product of squares of divisors of n.

Offset 1, canonical program `A062758.P10816466318006647829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062758 (n : ℕ) : ℤ :=
  A062758.P10816466318006647829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062968.P12745258028289340812

`A049820(n+1)+1`
-/

namespace A062968.P12745258028289340812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + 1

end

end A062968.P12745258028289340812

noncomputable section

/-- A062968: a(n) = n + 1 - d(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A062968.P12745258028289340812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062968 (n : ℕ) : ℤ :=
  A062968.P12745258028289340812.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063088.P233869695303598364

`A002088(n+1)-A006218(n+1)`
-/

namespace A063088.P233869695303598364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A006218 (n + 1)

end

end A063088.P233869695303598364

noncomputable section

/-- A063088: a(n) = Sum_{k=1..n} phi(k) - Sum{k=1..n} d(k), where d() is the number of divisors function.

Offset 1, canonical program `A063088.P233869695303598364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063088 (n : ℕ) : ℤ :=
  A063088.P233869695303598364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063506.P8310104174550140496

`A062355(a(n-1))` with `a(0)=3`
-/

namespace A063506.P8310104174550140496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062355 (a (n - 1)).toNat

end

end A063506.P8310104174550140496

noncomputable section

/-- A063506: a(n) = phi(a(n-1)) * number of divisors of a(n-1), a(1)=3.

Offset 1, canonical program `A063506.P8310104174550140496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063506 (n : ℕ) : ℤ :=
  A063506.P8310104174550140496.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063716.P1979520704355205436

`(A048691(n+1)+A063715(n+1))/2`
-/

namespace A063716.P1979520704355205436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) + A063715 (n + 1) : ℚ) / 2

end

end A063716.P1979520704355205436

noncomputable section

/-- A063716: Number of solutions (r,u,s,t), s>=t, in positive integers to the system of equations 1/r+1/u=1/n, 1/s+1/t=1/u.

Offset 1, canonical program `A063716.P1979520704355205436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063716.P1979520704355205436.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063775.P4217061199488976379

`A046951(A000188(n+1))`
-/

namespace A063775.P4217061199488976379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000188 (n + 1)).toNat

end

end A063775.P4217061199488976379

noncomputable section

/-- A063775: Number of 4th powers dividing n.

Offset 1, canonical program `A063775.P4217061199488976379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063775 (n : ℕ) : ℤ :=
  A063775.P4217061199488976379.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064614.P2027219799619674142

`A065330(n+1)*2^A007949(n+1)*3^A007814(n+1)`
-/

namespace A064614.P2027219799619674142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065330 (n + 1) : ℚ) * (2 : ℚ) ^ (A007949 (n + 1) : ℤ) * (3 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A064614.P2027219799619674142

noncomputable section

/-- A064614: Exchange 2 and 3 in the prime factorization of n.

Offset 1, canonical program `A064614.P2027219799619674142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064614.P2027219799619674142.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064799.P13450618005534133469

`A000040(n+1)+A002808(n+1)`
-/

namespace A064799.P13450618005534133469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A002808 (n + 1)

end

end A064799.P13450618005534133469

noncomputable section

/-- A064799: Sum of n-th prime number and n-th composite number.

Offset 1, canonical program `A064799.P13450618005534133469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064799 (n : ℕ) : ℤ :=
  A064799.P13450618005534133469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064813.P8078473473580934433

`C(A002808(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064813.P8078473473580934433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 1)).toNat (n + 1)

end

end A064813.P8078473473580934433

noncomputable section

/-- A064813: a(n) = binomial(composite(n), n), where composite = A002808, composite numbers.

Offset 1, canonical program `A064813.P8078473473580934433`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A002808(n+1), n+1)` (program `A064813.P8078473473580934433`, by `A064813.P8078473473580934433.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064813 (n : ℕ) : ℤ :=
  (A064813.P8078473473580934433.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A002808(n+1), n+1)` (program `A064813.P8078473473580934433`, by `A064813.P8078473473580934433.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064813.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064814.P8119879285267834608

`gcd(n+1, A002808(n+1))`
-/

namespace A064814.P8119879285267834608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002808 (n + 1))

end

end A064814.P8119879285267834608

noncomputable section

/-- A064814: Greatest common divisor of n and the n-th composite number.

Offset 1, canonical program `A064814.P8119879285267834608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064814 (n : ℕ) : ℤ :=
  (A064814.P8119879285267834608.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065040.P314453470668768770

`A007814(A007318(n))`
-/

namespace A065040.P314453470668768770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007318 n).toNat

end

end A065040.P314453470668768770

noncomputable section

/-- A065040: Triangle read by rows: T(m,k) = exponent of the highest power of 2 dividing the binomial coefficient binomial(m,k).

Offset 0, canonical program `A065040.P314453470668768770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065040 (n : ℕ) : ℤ :=
  A065040.P314453470668768770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065334.P13791881819872043413

`A007814(n+1)*A065333(n+1)`
-/

namespace A065334.P13791881819872043413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A065333 (n + 1)

end

end A065334.P13791881819872043413

noncomputable section

/-- A065334: 2-exponents to represent 3-smooth numbers (A065332).

Offset 1, canonical program `A065334.P13791881819872043413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065334 (n : ℕ) : ℤ :=
  A065334.P13791881819872043413.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065524.P4182551559051557307

`A002808(5^n)`
-/

namespace A065524.P4182551559051557307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (5 ^ n)

end

end A065524.P4182551559051557307

noncomputable section

/-- A065524: The (5^n)-th composite number.

Offset 0, canonical program `A065524.P4182551559051557307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065524 (n : ℕ) : ℤ :=
  A065524.P4182551559051557307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065525.P5304963212479784431

`A002808(6^n)`
-/

namespace A065525.P5304963212479784431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (6 ^ n)

end

end A065525.P5304963212479784431

noncomputable section

/-- A065525: The (6^n)-th composite number.

Offset 0, canonical program `A065525.P5304963212479784431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065525 (n : ℕ) : ℤ :=
  A065525.P5304963212479784431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065605.P11398291683349746784

`A002808(3^n)`
-/

namespace A065605.P11398291683349746784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (3 ^ n)

end

end A065605.P11398291683349746784

noncomputable section

/-- A065605: The (3^n)-th composite number.

Offset 0, canonical program `A065605.P11398291683349746784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065605 (n : ℕ) : ℤ :=
  A065605.P11398291683349746784.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065606.P7826699758227426873

`A002808(7^n)`
-/

namespace A065606.P7826699758227426873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (7 ^ n)

end

end A065606.P7826699758227426873

noncomputable section

/-- A065606: The (7^n)-th composite number.

Offset 0, canonical program `A065606.P7826699758227426873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065606 (n : ℕ) : ℤ :=
  A065606.P7826699758227426873.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065856.P15714026655245255570

`A002808(2^n)`
-/

namespace A065856.P15714026655245255570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 ^ n)

end

end A065856.P15714026655245255570

noncomputable section

/-- A065856: The (2^n)-th composite number.

Offset 0, canonical program `A065856.P15714026655245255570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065856 (n : ℕ) : ℤ :=
  A065856.P15714026655245255570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065857.P15511301847593102298

`A002808(10^n)`
-/

namespace A065857.P15511301847593102298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (10 ^ n)

end

end A065857.P15511301847593102298

noncomputable section

/-- A065857: The (10^n)-th composite number.

Offset 0, canonical program `A065857.P15511301847593102298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065857 (n : ℕ) : ℤ :=
  A065857.P15511301847593102298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065858.P14612648944669410725

`A002808(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065858.P14612648944669410725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1)).toNat

end

end A065858.P14612648944669410725

noncomputable section

/-- A065858: m-th composite number c(m) = A002808(m), where m is the n-th prime number: a(n) = A002808(A000040(n)).

Offset 1, canonical program `A065858.P14612648944669410725`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(A000040(n+1))` (program `A065858.P14612648944669410725`, by `A065858.P14612648944669410725.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065858 (n : ℕ) : ℤ :=
  A065858.P14612648944669410725.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(A000040(n+1))` (program `A065858.P14612648944669410725`, by `A065858.P14612648944669410725.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065858.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065859.P11041658421309913817

`A000040(n+1)%A002808(n+1)`
-/

namespace A065859.P11041658421309913817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A002808 (n + 1))

end

end A065859.P11041658421309913817

noncomputable section

/-- A065859: Remainder when the n-th prime is divided by the n-th composite number.

Offset 1, canonical program `A065859.P11041658421309913817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065859 (n : ℕ) : ℤ :=
  A065859.P11041658421309913817.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065860.P1157239488686513098

`A002808(n+1)%(n+1)`
-/

namespace A065860.P1157239488686513098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (n + 1 : ℤ)

end

end A065860.P1157239488686513098

noncomputable section

/-- A065860: Remainder when the n-th composite number is divided by n.

Offset 1, canonical program `A065860.P1157239488686513098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065860 (n : ℕ) : ℤ :=
  A065860.P1157239488686513098.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065861.P13112295784115317579

`A002808(n+2)%A000720(n+2)`
-/

namespace A065861.P13112295784115317579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 2)) (A000720 (n + 2))

end

end A065861.P13112295784115317579

noncomputable section

/-- A065861: Remainder when the n-th composite number is divided by pi(n), the number of primes not exceeding n.

Offset 2, canonical program `A065861.P13112295784115317579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065861 (n : ℕ) : ℤ :=
  A065861.P13112295784115317579.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065862.P3406526789678622698

`A002808(n+1)%A062298(n+1)`
-/

namespace A065862.P3406526789678622698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A062298 (n + 1))

end

end A065862.P3406526789678622698

noncomputable section

/-- A065862: Remainder when n-th composite number is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065862.P3406526789678622698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065862 (n : ℕ) : ℤ :=
  A065862.P3406526789678622698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067563.P8241945958915333115

`A000040(n+1)*A002808(n+1)`
-/

namespace A067563.P8241945958915333115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002808 (n + 1)

end

end A067563.P8241945958915333115

noncomputable section

/-- A067563: Product of n-th prime number and n-th composite number.

Offset 1, canonical program `A067563.P8241945958915333115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067563 (n : ℕ) : ℤ :=
  A067563.P8241945958915333115.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067747.P14118183397394803050

`A000040(ceil((n+1)/2))*A000035(n+1)+A002808(ceil((n+1)/2))*A059841(n+1)`
-/

namespace A067747.P14118183397394803050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(n + 1 : ℚ) / 2⌉.toNat * A000035 (n + 1) + A002808 ⌈(n + 1 : ℚ) / 2⌉.toNat * A059841 (n + 1)

end

end A067747.P14118183397394803050

noncomputable section

/-- A067747: Primes interleaved between composite numbers: n-th prime followed by the n-th composite number.

Offset 1, canonical program `A067747.P14118183397394803050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067747 (n : ℕ) : ℤ :=
  A067747.P14118183397394803050.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069060.P14017391621502611727

`A007955(A000051(n+1))`
-/

namespace A069060.P14017391621502611727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000051 (n + 1)).toNat

end

end A069060.P14017391621502611727

noncomputable section

/-- A069060: Product of divisors of 2^n + 1.

Offset 1, canonical program `A069060.P14017391621502611727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069060 (n : ℕ) : ℤ :=
  A069060.P14017391621502611727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070046.P5794988103684771228

`A063124(n+1)-1`
-/

namespace A070046.P5794988103684771228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) - 1

end

end A070046.P5794988103684771228

noncomputable section

/-- A070046: Number of primes between prime(n) and 2*prime(n) exclusive.

Offset 1, canonical program `A070046.P5794988103684771228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070046 (n : ℕ) : ℤ :=
  A070046.P5794988103684771228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071228.P4535194681487630780

`(n+1)*A002808(n+1)`
-/

namespace A071228.P4535194681487630780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002808 (n + 1)

end

end A071228.P4535194681487630780

noncomputable section

/-- A071228: a(n) = n*(n-th composite number).

Offset 1, canonical program `A071228.P4535194681487630780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071228 (n : ℕ) : ℤ :=
  A071228.P4535194681487630780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071259.P17396136488218185286

`floor((A000040(n+1)+A002808(n+1))/2)`
-/

namespace A071259.P17396136488218185286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) + A002808 (n + 1) : ℚ) / 2⌋

end

end A071259.P17396136488218185286

noncomputable section

/-- A071259: Integer part of the arithmetic mean of the n-th prime p(n) and the n-th composite number C(n).

Offset 1, canonical program `A071259.P17396136488218185286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071259 (n : ℕ) : ℤ :=
  A071259.P17396136488218185286.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071325.P10142503002015730220

`A046951(n+1)-1`
-/

namespace A071325.P10142503002015730220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - 1

end

end A071325.P10142503002015730220

noncomputable section

/-- A071325: Number of squares > 1 dividing n.

Offset 1, canonical program `A071325.P10142503002015730220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071325 (n : ℕ) : ℤ :=
  A071325.P10142503002015730220.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072078.P15683580229449578343

`(A007814(n+1)+1)*(A007949(n+1)+1)`
-/

namespace A072078.P15683580229449578343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * (A007949 (n + 1) + 1)

end

end A072078.P15683580229449578343

noncomputable section

/-- A072078: Number of 3-smooth divisors of n.

Offset 1, canonical program `A072078.P15683580229449578343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072078 (n : ℕ) : ℤ :=
  A072078.P15683580229449578343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072668.P5648318357023435289

`A002808(n+1)-1`
-/

namespace A072668.P5648318357023435289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 1

end

end A072668.P5648318357023435289

noncomputable section

/-- A072668: Numbers one less than composite numbers.

Offset 1, canonical program `A072668.P5648318357023435289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072668 (n : ℕ) : ℤ :=
  A072668.P5648318357023435289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073167.P4925457120864864700

`A002808(A000142(n+1))`
-/

namespace A073167.P4925457120864864700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000142 (n + 1)).toNat

end

end A073167.P4925457120864864700

noncomputable section

/-- A073167: The (n!)-th composite number.

Offset 1, canonical program `A073167.P4925457120864864700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073167 (n : ℕ) : ℤ :=
  A073167.P4925457120864864700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073167.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073169.P14738260624206914448

`A002808(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073169.P14738260624206914448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (n + 1 : ℤ)

end

end A073169.P14738260624206914448

noncomputable section

/-- A073169: a(n)=A002808(n)-n, difference between n-th composite and n.

Offset 1, canonical program `A073169.P14738260624206914448`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(n+1)-(n+1)` (program `A073169.P14738260624206914448`, by `A073169.P14738260624206914448.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073169 (n : ℕ) : ℤ :=
  A073169.P14738260624206914448.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(n+1)-(n+1)` (program `A073169.P14738260624206914448`, by `A073169.P14738260624206914448.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073169.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073171.P16806449841852337076

`A002808((n+1)²)`
-/

namespace A073171.P16806449841852337076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((n + 1) ^ 2)

end

end A073171.P16806449841852337076

noncomputable section

/-- A073171: The (n^2)-th composite number.

Offset 1, canonical program `A073171.P16806449841852337076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073171 (n : ℕ) : ℤ :=
  A073171.P16806449841852337076.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073255.P11360122107156881549

`A000203(A002808(n+1))`
-/

namespace A073255.P11360122107156881549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002808 (n + 1)).toNat

end

end A073255.P11360122107156881549

noncomputable section

/-- A073255: Sum of divisors of n-th composite number.

Offset 1, canonical program `A073255.P11360122107156881549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073255 (n : ℕ) : ℤ :=
  A073255.P11360122107156881549.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073256.P16352019514888841460

`A000010(A002808(n+1))`
-/

namespace A073256.P16352019514888841460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002808 (n + 1)).toNat

end

end A073256.P16352019514888841460

noncomputable section

/-- A073256: a(n) = phi(n-th composite number).

Offset 1, canonical program `A073256.P16352019514888841460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073256 (n : ℕ) : ℤ :=
  A073256.P16352019514888841460.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073367.P4763750874448608159

`A002808(n+4)%A065855(n+4)`
-/

namespace A073367.P4763750874448608159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 4)) (A065855 (n + 4))

end

end A073367.P4763750874448608159

noncomputable section

/-- A073367: Remainder when n-th composite is divided by number of composites not exceeding n.

Offset 4, canonical program `A073367.P4763750874448608159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073367 (n : ℕ) : ℤ :=
  A073367.P4763750874448608159.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073458.P13611208984373621108

`floor(A000040(n+1)/A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073458.P13611208984373621108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A073458.P13611208984373621108

noncomputable section

/-- A073458: a(n) = floor(prime(n)/composite(n)).

Offset 1, canonical program `A073458.P13611208984373621108`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)/A002808(n+1))` (program `A073458.P13611208984373621108`, by `A073458.P13611208984373621108.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073458 (n : ℕ) : ℤ :=
  A073458.P13611208984373621108.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)/A002808(n+1))` (program `A073458.P13611208984373621108`, by `A073458.P13611208984373621108.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073718.P3252863766205308331

`A000079(A002808(n+1))`
-/

namespace A073718.P3252863766205308331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002808 (n + 1)).toNat

end

end A073718.P3252863766205308331

noncomputable section

/-- A073718: Powers of 2 with composite exponents.

Offset 1, canonical program `A073718.P3252863766205308331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073718 (n : ℕ) : ℤ :=
  A073718.P3252863766205308331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073765.P4906680144433019488

`C(A000040(n+1), A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073765.P4906680144433019488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A002808 (n + 1)).toNat

end

end A073765.P4906680144433019488

noncomputable section

/-- A073765: a(n) = binomial(prime(n), composite(n)).

Offset 1, canonical program `A073765.P4906680144433019488`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+1), A002808(n+1))` (program `A073765.P4906680144433019488`, by `A073765.P4906680144433019488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073765 (n : ℕ) : ℤ :=
  (A073765.P4906680144433019488.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+1), A002808(n+1))` (program `A073765.P4906680144433019488`, by `A073765.P4906680144433019488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073765.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073766.P4951963372302388660

`C(A002808(n+2), A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073766.P4951963372302388660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 2)).toNat (A002808 (n + 1)).toNat

end

end A073766.P4951963372302388660

noncomputable section

/-- A073766: a(n) = binomial(composite(n+1), composite(n)) = binomial(A002808(n+1), A002808(n)).

Offset 1, canonical program `A073766.P4951963372302388660`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A002808(n+2), A002808(n+1))` (program `A073766.P4951963372302388660`, by `A073766.P4951963372302388660.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073766 (n : ℕ) : ℤ :=
  (A073766.P4951963372302388660.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A002808(n+2), A002808(n+1))` (program `A073766.P4951963372302388660`, by `A073766.P4951963372302388660.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073766.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073783.P7345067272109289188

`A002808(n+2)-A002808(n+1)`
-/

namespace A073783.P7345067272109289188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) - A002808 (n + 1)

end

end A073783.P7345067272109289188

noncomputable section

/-- A073783: First differences of composite numbers.

Offset 1, canonical program `A073783.P7345067272109289188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073783 (n : ℕ) : ℤ :=
  A073783.P7345067272109289188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073784.P3477652611026414592

`A000720(A002808(n+2))-A000720(A002808(n+1))`
-/

namespace A073784.P3477652611026414592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 2)).toNat - A000720 (A002808 (n + 1)).toNat

end

end A073784.P3477652611026414592

noncomputable section

/-- A073784: Number of primes between successive composite numbers.

Offset 1, canonical program `A073784.P3477652611026414592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073784 (n : ℕ) : ℤ :=
  A073784.P3477652611026414592.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074740.P3277946273930303314

`A002866(n+1)/A066843(n+1)`
-/

namespace A074740.P3277946273930303314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002866 (n + 1) : ℚ) / (A066843 (n + 1) : ℚ)

end

end A074740.P3277946273930303314

noncomputable section

/-- A074740: a(n) = n!*2^(n-1)/Product_{k=1..n} tau(k) where tau = A000005.

Offset 1, canonical program `A074740.P3277946273930303314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074740.P3277946273930303314.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076360.P16775053655456500281

`A062068(n+1)-A062069(n+1)`
-/

namespace A076360.P16775053655456500281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A062069 (n + 1)

end

end A076360.P16775053655456500281

noncomputable section

/-- A076360: a(n) = d(sigma(n)) - sigma(d(n)), where d(n) is the number of divisors of n and sigma(n) is their sum.

Offset 1, canonical program `A076360.P16775053655456500281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076360 (n : ℕ) : ℤ :=
  A076360.P16775053655456500281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076984.P13104546406193990713

`A023645(n+1)+1`
-/

namespace A076984.P13104546406193990713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + 1

end

end A076984.P13104546406193990713

noncomputable section

/-- A076984: Number of Fibonacci numbers that are divisors of the n-th Fibonacci number.

Offset 1, canonical program `A076984.P13104546406193990713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076984 (n : ℕ) : ℤ :=
  A076984.P13104546406193990713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078157.P9337233492814694395

`A078152(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078157.P9337233492814694395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078152 (2 ^ (n + 1))

end

end A078157.P9337233492814694395

noncomputable section

/-- A078157: a(n) = A078152(2^n).

Offset 1, canonical program `A078157.P9337233492814694395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078157 (n : ℕ) : ℤ :=
  A078157.P9337233492814694395.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078734.P4094134609094270230

`1+A010872(A007814(n+1))`
-/

namespace A078734.P4094134609094270230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010872 (A007814 (n + 1)).toNat

end

end A078734.P4094134609094270230

noncomputable section

/-- A078734: Start with 1,2, concatenate 2^k previous terms and change last term as follows: 1->2, 2->3, 3->1.

Offset 1, canonical program `A078734.P4094134609094270230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078734 (n : ℕ) : ℤ :=
  A078734.P4094134609094270230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078782.P15257783046408188194

`A002808(A000040(n+1)-1)`
-/

namespace A078782.P15257783046408188194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1) - 1).toNat

end

end A078782.P15257783046408188194

noncomputable section

/-- A078782: Nonprimes (A018252) with prime (A000040) subscripts.

Offset 1, canonical program `A078782.P15257783046408188194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078782 (n : ℕ) : ℤ :=
  A078782.P15257783046408188194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079696.P2621453534582977077

`A002808(n+1)+1`
-/

namespace A079696.P2621453534582977077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + 1

end

end A079696.P2621453534582977077

noncomputable section

/-- A079696: Numbers one more than composite numbers.

Offset 1, canonical program `A079696.P2621453534582977077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079696 (n : ℕ) : ℤ :=
  A079696.P2621453534582977077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080791.P6131873509789506769

`a(n-1)+A007814(n)+A036987(n-1)-1` with `a(0)=0, a(1)=0`
-/

namespace A080791.P6131873509789506769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A007814 n + A036987 (n - 1) - 1

end

end A080791.P6131873509789506769

noncomputable section

/-- A080791: Number of nonleading 0's in binary expansion of n.

Offset 0, canonical program `A080791.P6131873509789506769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791 (n : ℕ) : ℤ :=
  A080791.P6131873509789506769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081400.P8046056568042130816

`A000005(n+1)-A001222(n+1)-A005361(n+1)`
-/

namespace A081400.P8046056568042130816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) - A005361 (n + 1)

end

end A081400.P8046056568042130816

noncomputable section

/-- A081400: a(n) = d(n) - bigomega(n) - A005361(n).

Offset 1, canonical program `A081400.P8046056568042130816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081400 (n : ℕ) : ℤ :=
  A081400.P8046056568042130816.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082091.P12026919801001082135

`1+a(A005361(n+1)-1)` with `a(0)=1`
-/

namespace A082091.P12026919801001082135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A005361 (n + 1) - 1).toNat

end

end A082091.P12026919801001082135

noncomputable section

/-- A082091: a(n) = one more than the number of iterations of A005361 needed to reach 1 from the starting value n.

Offset 1, canonical program `A082091.P12026919801001082135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082091 (n : ℕ) : ℤ :=
  (A082091.P12026919801001082135.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083245.P760659149355917661

`A073757(n+1)-A045763(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083245.P760659149355917661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A045763 (n + 1)

end

end A083245.P760659149355917661

noncomputable section

/-- A083245: Difference between numbers of related and numbers of unrelated numbers belonging to n: a(n) = A073757(n)-A045763(n) = (n-u(n))-u(n) = n-2*A045763(n) = 2*A073757(n)-n.

Offset 1, canonical program `A083245.P760659149355917661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083245 (n : ℕ) : ℤ :=
  A083245.P760659149355917661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083786.P13265857354035121476

`A002808(n+1)%10`
-/

namespace A083786.P13265857354035121476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) 10

end

end A083786.P13265857354035121476

noncomputable section

/-- A083786: Composite numbers mod 10.

Offset 1, canonical program `A083786.P13265857354035121476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083786 (n : ℕ) : ℤ :=
  A083786.P13265857354035121476.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084623.P2915288955471641731

`2^(n-A007814(n+1))`
-/

namespace A084623.P2915288955471641731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A007814 (n + 1) : ℤ)

end

end A084623.P2915288955471641731

noncomputable section

/-- A084623: Numerator of 2^(n-1)/n.

Offset 1, canonical program `A084623.P2915288955471641731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084623.P2915288955471641731.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085060.P3128455452568235012

`(3/2)^A085058(n)*(2*n+2)-3/2`
-/

namespace A085060.P3128455452568235012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ (A085058 n : ℤ) * (2 * n + 2 : ℚ) - (3 : ℚ) / 2

end

end A085060.P3128455452568235012

noncomputable section

/-- A085060: Integer reached in A085058.

Offset 0, canonical program `A085060.P3128455452568235012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085060.P3128455452568235012.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085296.P17068606846671607086

`(9*3^A007814(n+1)-1)/2-1`
-/

namespace A085296.P17068606846671607086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (3 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1) / 2 - 1

end

end A085296.P17068606846671607086

noncomputable section

/-- A085296: Runs of zeros in Catalan sequence modulo 3: consecutive occurrences of binomial(2*k,k)/(k+1) == 0 (mod 3).

Offset 1, canonical program `A085296.P17068606846671607086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085296.P17068606846671607086.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086165.P5862930239187378690

`(A070919(n+1)-3*A048691(n+1)+2)/6`
-/

namespace A086165.P5862930239187378690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070919 (n + 1) - 3 * A048691 (n + 1) + 2 : ℚ) / 6

end

end A086165.P5862930239187378690

noncomputable section

/-- A086165: a(n) = |{ (x,y,z) | x < y < z and lcm(x,y,z) = n}|.

Offset 1, canonical program `A086165.P5862930239187378690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086165.P5862930239187378690.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086650.P6036601122150280832

`A002808(n+1)^A000040(n+1)`
-/

namespace A086650.P6036601122150280832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A086650.P6036601122150280832

noncomputable section

/-- A086650: n-th composite number raised to the n-th prime number.

Offset 1, canonical program `A086650.P6036601122150280832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086650 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086650.P6036601122150280832.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086701.P1636778428891806570

`A000040(n+1)^A002808(n+1)`
-/

namespace A086701.P1636778428891806570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A002808 (n + 1) : ℤ)

end

end A086701.P1636778428891806570

noncomputable section

/-- A086701: n-th prime number raised to the n-th composite number.

Offset 1, canonical program `A086701.P1636778428891806570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086701.P1636778428891806570.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087229.P9926633542854857690

`A007814(A017569(n))`
-/

namespace A087229.P9926633542854857690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A017569 n).toNat

end

end A087229.P9926633542854857690

noncomputable section

/-- A087229: Exponent of p=2 in 12n+4 = 3(4n+1)+1.

Offset 0, canonical program `A087229.P9926633542854857690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087229 (n : ℕ) : ℤ :=
  A087229.P9926633542854857690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087230.P12877807738838144473

`A007814(A016957(n))`
-/

namespace A087230.P12877807738838144473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016957 n).toNat

end

end A087230.P12877807738838144473

noncomputable section

/-- A087230: a(n) is the 2-adic valuation of 6*n + 4.

Offset 0, canonical program `A087230.P12877807738838144473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087230 (n : ℕ) : ℤ :=
  A087230.P12877807738838144473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087436.P13287701826401831056

`A001222(n+1)-A007814(n+1)`
-/

namespace A087436.P13287701826401831056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A007814 (n + 1)

end

end A087436.P13287701826401831056

noncomputable section

/-- A087436: Number of odd prime factors of n, counted with repetitions.

Offset 1, canonical program `A087436.P13287701826401831056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087436 (n : ℕ) : ℤ :=
  A087436.P13287701826401831056.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087652.P15006884797631348990

`A007955(n+1)/A007947(n+1)`
-/

namespace A087652.P15006884797631348990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A087652.P15006884797631348990

noncomputable section

/-- A087652: Product of the nonprime divisors of n.

Offset 1, canonical program `A087652.P15006884797631348990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087652.P15006884797631348990.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088840.P2952349459098341905

`A213243(A007814(n+1)+1)`
-/

namespace A088840.P2952349459098341905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A007814 (n + 1) + 1).toNat

end

end A088840.P2952349459098341905

noncomputable section

/-- A088840: Denominator of sigma(4n)/sigma(n).

Offset 1, canonical program `A088840.P2952349459098341905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088840 (n : ℕ) : ℤ :=
  A088840.P2952349459098341905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088982.P4156197862445489170

`A000040(A002808(n+1))`
-/

namespace A088982.P4156197862445489170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002808 (n + 1)).toNat

end

end A088982.P4156197862445489170

noncomputable section

/-- A088982: Primes that are between consecutive prime-indexed primes.

Offset 1, canonical program `A088982.P4156197862445489170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088982 (n : ℕ) : ℤ :=
  A088982.P4156197862445489170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089265.P11891266049107648867

`A007814(n+1)+2*A025480(n)`
-/

namespace A089265.P11891266049107648867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 2 * A025480 n

end

end A089265.P11891266049107648867

noncomputable section

/-- A089265: a(1) = 0; thereafter a(2*n) = a(n) + 1, a(2*n+1) = 2*n.

Offset 1, canonical program `A089265.P11891266049107648867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089265 (n : ℕ) : ℤ :=
  A089265.P11891266049107648867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089608.P1685059396836438671

`5-4*A035263(n+1)`
-/

namespace A089608.P1685059396836438671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A035263 (n + 1)

end

end A089608.P1685059396836438671

noncomputable section

/-- A089608: a(n) = ((-1)^(n+1)*A002425(n)) modulo 6.

Offset 1, canonical program `A089608.P1685059396836438671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089608 (n : ℕ) : ℤ :=
  A089608.P1685059396836438671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090739.P11795774143711516918

`A007814(n+1)+3`
-/

namespace A090739.P11795774143711516918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 3

end

end A090739.P11795774143711516918

noncomputable section

/-- A090739: Exponent of 2 in 9^n - 1.

Offset 1, canonical program `A090739.P11795774143711516918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090739 (n : ℕ) : ℤ :=
  A090739.P11795774143711516918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090740.P6461673759266152283

`A007814(n+1)+A059841(n+1)+1`
-/

namespace A090740.P6461673759266152283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A059841 (n + 1) + 1

end

end A090740.P6461673759266152283

noncomputable section

/-- A090740: Exponent of 2 in 3^n - 1.

Offset 1, canonical program `A090740.P6461673759266152283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090740 (n : ℕ) : ℤ :=
  A090740.P6461673759266152283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091512.P12959083986982032109

`A069895(n+1)/2`
-/

namespace A091512.P12959083986982032109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069895 (n + 1) : ℚ) / 2

end

end A091512.P12959083986982032109

noncomputable section

/-- A091512: a(n) is the largest integer m such that 2^m divides (2*n)^n, i.e., the exponent of 2 in (2*n)^n.

Offset 1, canonical program `A091512.P12959083986982032109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091512.P12959083986982032109.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091627.P13368407397155401185

`A091626(n)-n-1`
-/

namespace A091627.P13368407397155401185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091626 n - (n : ℤ) - 1

end

end A091627.P13368407397155401185

noncomputable section

/-- A091627: Number of ordered integer pairs (b,c) with 1 <= b,c <= n such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A091627.P13368407397155401185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091627 (n : ℕ) : ℤ :=
  A091627.P13368407397155401185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092520.P5683000183497898863

`A046951((n+1)^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092520.P5683000183497898863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1) ^ 3)

end

end A092520.P5683000183497898863

noncomputable section

/-- A092520: Number of square divisors of n-th cube: a(n) = A046951(n^3).

Offset 1, canonical program `A092520.P5683000183497898863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092520 (n : ℕ) : ℤ :=
  A092520.P5683000183497898863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093861.P7181153501879587618

`floor(A002808(n+1)^(A002808(n+1)/(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093861.P7181153501879587618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002808 (n + 1) : ℝ) ^ ((A002808 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A093861.P7181153501879587618

noncomputable section

/-- A093861: a(n) = floor(composite(n)^(composite(n)/n)), composite(n) = A002808(n).

Offset 1, canonical program `A093861.P7181153501879587618`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A002808(n+1)^(A002808(n+1)/(n+1)))` (program `A093861.P7181153501879587618`, by `A093861.P7181153501879587618.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A093861 (n : ℕ) : ℤ :=
  A093861.P7181153501879587618.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A002808(n+1)^(A002808(n+1)/(n+1)))` (program `A093861.P7181153501879587618`, by `A093861.P7181153501879587618.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A093861.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A094471.P10880822235094612413

`A038040(n+1)-A000203(n+1)`
-/

namespace A094471.P10880822235094612413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A000203 (n + 1)

end

end A094471.P10880822235094612413

noncomputable section

/-- A094471: a(n) = Sum_{(n - k)|n, 0 <= k <= n} k.

Offset 1, canonical program `A094471.P10880822235094612413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094471 (n : ℕ) : ℤ :=
  A094471.P10880822235094612413.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095808.P3090164483403179767

`A078703(n+1)-1`
-/

namespace A095808.P3090164483403179767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1) - 1

end

end A095808.P3090164483403179767

noncomputable section

/-- A095808: Number of ways to write n in the form m + (m+1) + ... + (m+k-1) + (m+k) + (m+k-1) + ... + (m+1) + m with integers m>= 1, k>=1. Or, number of divisors d of 4n-1 with 0 < (d-1)^2 < 4n.

Offset 1, canonical program `A095808.P3090164483403179767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095808 (n : ℕ) : ℤ :=
  A095808.P3090164483403179767.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096268.P10327595005272142114

`1-A035263(n+1)`
-/

namespace A096268.P10327595005272142114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1)

end

end A096268.P10327595005272142114

noncomputable section

/-- A096268: Period-doubling sequence (or period-doubling word): fixed point of the morphism 0 -> 01, 1 -> 00.

Offset 0, canonical program `A096268.P10327595005272142114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268 (n : ℕ) : ℤ :=
  A096268.P10327595005272142114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096271.P6013698454028657699

`A007814(n+1)%3`
-/

namespace A096271.P6013698454028657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 3

end

end A096271.P6013698454028657699

noncomputable section

/-- A096271: Ternary sequence that is a fixed point of the morphism 0 -> 01, 1 -> 02, 2 -> 00.

Offset 0, canonical program `A096271.P6013698454028657699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096271 (n : ℕ) : ℤ :=
  A096271.P6013698454028657699.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097988.P8818768520283579158

`A007425(n+1)²`
-/

namespace A097988.P8818768520283579158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) ^ 2

end

end A097988.P8818768520283579158

noncomputable section

/-- A097988: a(n) = Sum_{d dividing n} tau(d)^3 = (Sum_{d dividing n} tau(d))^2.

Offset 1, canonical program `A097988.P8818768520283579158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097988 (n : ℕ) : ℤ :=
  A097988.P8818768520283579158.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098351.P12169775651702740969

`A002808(col(n)+1)*A002808(row(n)-col(n)+1)`
-/

namespace A098351.P12169775651702740969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.triCol n + 1) * A002808 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A098351.P12169775651702740969

noncomputable section

/-- A098351: Multiplication table of the composites read by antidiagonals.

Offset 1, canonical program `A098351.P12169775651702740969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098351 (n : ℕ) : ℤ :=
  A098351.P12169775651702740969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098798.P14244074542585348825

`A006218(n+1)-A000203(n+1)`
-/

namespace A098798.P14244074542585348825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A000203 (n + 1)

end

end A098798.P14244074542585348825

noncomputable section

/-- A098798: a(n) = Sum_{1<k<n and k not dividing n} floor(n/k).

Offset 1, canonical program `A098798.P14244074542585348825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098798 (n : ℕ) : ℤ :=
  A098798.P14244074542585348825.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106633.P11456217349808284816

`A005408(n)+A006218(n)`
-/

namespace A106633.P11456217349808284816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A006218 n

end

end A106633.P11456217349808284816

noncomputable section

/-- A106633: Number of ways to express n as k+l*m, with k, l, m all in the range [0..n].

Offset 0, canonical program `A106633.P11456217349808284816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106633 (n : ℕ) : ℤ :=
  A106633.P11456217349808284816.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107390.P7923518412452108324

`A002808(a(n-1)+a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A107390.P7923518412452108324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002808 (a (n - 1) + a (n - 2)).toNat

end

end A107390.P7923518412452108324

noncomputable section

/-- A107390: Composite Fibonacci sequence: each term is the composite with index equal to the sum of the previous two terms.

Offset 1, canonical program `A107390.P7923518412452108324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107390 (n : ℕ) : ℤ :=
  A107390.P7923518412452108324.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111397.P3791276779509558651

`A002808(n+1)%3`
-/

namespace A111397.P3791276779509558651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) 3

end

end A111397.P3791276779509558651

noncomputable section

/-- A111397: Composite numbers (modulo 3).

Offset 1, canonical program `A111397.P3791276779509558651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111397 (n : ℕ) : ℤ :=
  A111397.P3791276779509558651.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112342.P7013210857343809106

`A000720(A002808(n+1)²)-A000720((A002808(n+1)-1)²)`
-/

namespace A112342.P7013210857343809106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 1) ^ 2).toNat - A000720 ((A002808 (n + 1) - 1) ^ 2).toNat

end

end A112342.P7013210857343809106

noncomputable section

/-- A112342: Number of primes between (n-th composite - 1)^2 and (n-th composite)^2.

Offset 1, canonical program `A112342.P7013210857343809106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112342 (n : ℕ) : ℤ :=
  A112342.P7013210857343809106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112526.P14971334434262120700

`∑{d}[n+1, A005361(#)*A008683((n+1)/#)]`
-/

namespace A112526.P14971334434262120700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112526.P14971334434262120700

noncomputable section

/-- A112526: Characteristic function for powerful numbers.

Offset 1, canonical program `A112526.P14971334434262120700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112526 (n : ℕ) : ℤ :=
  A112526.P14971334434262120700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113407.P13871132972543493262

`A008441(2*n)`
-/

namespace A113407.P13871132972543493262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n)

end

end A113407.P13871132972543493262

noncomputable section

/-- A113407: Expansion of psi(x) * phi(x^2) in powers of x where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A113407.P13871132972543493262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113407 (n : ℕ) : ℤ :=
  A113407.P13871132972543493262.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118508.P5933305000914291636

`A002808(row(n)+1)%A002808(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118508.P5933305000914291636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.triRow n + 1)) (A002808 (SequenceMachineLib.triCol n + 1))

end

end A118508.P5933305000914291636

noncomputable section

/-- A118508: Triangle read by rows: R(n,k) = A002808(n) mod A002808(k), 0<k<=n.

Offset 1, canonical program `A118508.P5933305000914291636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(row(n)+1)%A002808(col(n)+1)` (program `A118508.P5933305000914291636`, by `A118508.P5933305000914291636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A118508 (n : ℕ) : ℤ :=
  A118508.P5933305000914291636.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(row(n)+1)%A002808(col(n)+1)` (program `A118508.P5933305000914291636`, by `A118508.P5933305000914291636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A118508.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000026.P14646158085172730513

`A005361(n+1)*A007947(n+1)`
-/

namespace A000026.P14646158085172730513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1)

end

end A000026.P14646158085172730513

noncomputable section

/-- A000026: Mosaic numbers or multiplicative projection of n: if n = Product (p_j^k_j) then a(n) = Product (p_j * k_j).

Offset 1, canonical program `A000026.P14646158085172730513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000026 (n : ℕ) : ℤ :=
  A000026.P14646158085172730513.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002175.P12639420198237532064

`A008441(3*n)`
-/

namespace A002175.P12639420198237532064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (3 * n)

end

end A002175.P12639420198237532064

noncomputable section

/-- A002175: Excess of number of divisors of 12n+1 of form 4k+1 over those of form 4k+3.

Offset 0, canonical program `A002175.P12639420198237532064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002175 (n : ℕ) : ℤ :=
  A002175.P12639420198237532064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002348.P14064672652104361444

`1/8*4^A007814(n+3)*A007434(A000265(n+3))`
-/

namespace A002348.P14064672652104361444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (4 : ℚ) ^ (A007814 (n + 3) : ℤ) * (A007434 (A000265 (n + 3)).toNat : ℚ)

end

end A002348.P14064672652104361444

noncomputable section

/-- A002348: Degree of rational Poncelet porism of n-gon.

Offset 3, canonical program `A002348.P14064672652104361444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002348.P14064672652104361444.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003484.P6209277204586873753

`A003485(A007814(n+1))`
-/

namespace A003484.P6209277204586873753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A007814 (n + 1)).toNat

end

end A003484.P6209277204586873753

noncomputable section

/-- A003484: Radon function, also called Hurwitz-Radon numbers.

Offset 1, canonical program `A003484.P6209277204586873753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003484 (n : ℕ) : ℤ :=
  A003484.P6209277204586873753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004020.P12808183263529079992

`2*A008441(n)`
-/

namespace A004020.P12808183263529079992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008441 n

end

end A004020.P12808183263529079992

noncomputable section

/-- A004020: Theta series of square lattice with respect to edge.

Offset 0, canonical program `A004020.P12808183263529079992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004020 (n : ℕ) : ℤ :=
  A004020.P12808183263529079992.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005883.P3734216093274140482

`4*A008441(n)`
-/

namespace A005883.P3734216093274140482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 n

end

end A005883.P3734216093274140482

noncomputable section

/-- A005883: Theta series of square lattice with respect to deep hole.

Offset 0, canonical program `A005883.P3734216093274140482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005883 (n : ℕ) : ℤ :=
  A005883.P3734216093274140482.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034714.P15425672651250517908

`(n+1)*A038040(n+1)`
-/

namespace A034714.P15425672651250517908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038040 (n + 1)

end

end A034714.P15425672651250517908

noncomputable section

/-- A034714: Dirichlet convolution of squares with themselves.

Offset 1, canonical program `A034714.P15425672651250517908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034714 (n : ℕ) : ℤ :=
  A034714.P15425672651250517908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034836.P5569050917274678762

`(2*A010057(n+1)+A007425(n+1)+3*A046951(n+1))/6`
-/

namespace A034836.P5569050917274678762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A010057 (n + 1) + A007425 (n + 1) + 3 * A046951 (n + 1) : ℚ) / 6

end

end A034836.P5569050917274678762

noncomputable section

/-- A034836: Number of ways to write n as n = x*y*z with 1 <= x <= y <= z.

Offset 1, canonical program `A034836.P5569050917274678762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034836.P5569050917274678762.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038548.P12593795823109361725

`A000005(n+1)-A056924(n+1)`
-/

namespace A038548.P12593795823109361725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A056924 (n + 1)

end

end A038548.P12593795823109361725

noncomputable section

/-- A038548: Number of divisors of n that are at most sqrt(n).

Offset 1, canonical program `A038548.P12593795823109361725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038548 (n : ℕ) : ℤ :=
  A038548.P12593795823109361725.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051336.P10619382866540462649

`n+1+A078567(n+1)`
-/

namespace A051336.P10619382866540462649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A078567 (n + 1)

end

end A051336.P10619382866540462649

noncomputable section

/-- A051336: Number of increasing arithmetic progressions in {1,2,3,...,n}, including trivial arithmetic progressions of lengths 1 and 2.

Offset 1, canonical program `A051336.P10619382866540462649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051336 (n : ℕ) : ℤ :=
  A051336.P10619382866540462649.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053866.P7754923131584660837

`A063524(A286357(n+1))`
-/

namespace A053866.P7754923131584660837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A286357 (n + 1)).toNat

end

end A053866.P7754923131584660837

noncomputable section

/-- A053866: Parity of A000203(n), the sum of the divisors of n; a(n) = 1 when n is a square or twice a square, 0 otherwise.

Offset 1, canonical program `A053866.P7754923131584660837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053866 (n : ℕ) : ℤ :=
  A053866.P7754923131584660837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063101.P351098770969771744

`A063440(n!)`
-/

namespace A063101.P351098770969771744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (Nat.factorial n)

end

end A063101.P351098770969771744

noncomputable section

/-- A063101: a(n) is the number of divisors of n!*(n! + 1)/2.

Offset 0, canonical program `A063101.P351098770969771744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063101 (n : ℕ) : ℤ :=
  A063101.P351098770969771744.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063123.P8123817947040067879

`A092517(n+1)/2`
-/

namespace A063123.P8123817947040067879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092517 (n + 1) : ℚ) / 2

end

end A063123.P8123817947040067879

noncomputable section

/-- A063123: Number of solutions (r,s), 0< r< s, to the equation 1/n = 1/r + 1/s + 1/(r*s).

Offset 1, canonical program `A063123.P8123817947040067879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063123.P8123817947040067879.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094572.P824634437400607663

`2*A112329(n+1)`
-/

namespace A094572.P824634437400607663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112329 (n + 1)

end

end A094572.P824634437400607663

noncomputable section

/-- A094572: Number of pairs of integers x, y (of either sign) with x^2 - y^2 = n.

Offset 1, canonical program `A094572.P824634437400607663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094572 (n : ℕ) : ℤ :=
  A094572.P824634437400607663.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095374.P12292882618606204966

`A099774(n+2)-1`
-/

namespace A095374.P12292882618606204966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 2) - 1

end

end A095374.P12292882618606204966

noncomputable section

/-- A095374: One less than the number of divisors of 2*n + 1.

Offset 1, canonical program `A095374.P12292882618606204966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095374 (n : ℕ) : ℤ :=
  A095374.P12292882618606204966.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002375.P12597412754433005688

`ceil(A002372(n+1)/2)`
-/

namespace A002375.P12597412754433005688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2⌉

end

end A002375.P12597412754433005688

noncomputable section

/-- A002375: From Goldbach conjecture: number of decompositions of 2n into an unordered sum of two odd primes.

Offset 1, canonical program `A002375.P12597412754433005688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002375 (n : ℕ) : ℤ :=
  A002375.P12597412754433005688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005239.P866751852362025790

`eq[A003434(A029579(n)), A070939(n)]`
-/

namespace A005239.P866751852362025790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005239.P866751852362025790

noncomputable section

/-- A005239: Irregular triangle of Section I numbers. Row n contains numbers k with 2^n < k < 2^(n+1) and phi^n(k) = 2, where phi^n means n iterations of Euler's totient function.

Offset 1, canonical program `A005239.P866751852362025790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A005239 (n : ℕ) : ℤ :=
  (A005239.P866751852362025790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A005239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005681.P11362584673414120459

`A268676(n)+A010060(n+1)`
-/

namespace A005681.P11362584673414120459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n + A010060 (n + 1)

end

end A005681.P11362584673414120459

noncomputable section

/-- A005681: A squarefree quaternary sequence.

Offset 1, canonical program `A005681.P11362584673414120459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005681 (n : ℕ) : ℤ :=
  A005681.P11362584673414120459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006287.P6441187741628273080

`2*A053735(n)-A007814(A006047(n))`
-/

namespace A006287.P6441187741628273080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A007814 (A006047 n).toNat

end

end A006287.P6441187741628273080

noncomputable section

/-- A006287: Sum of squares of digits of ternary representation of n.

Offset 0, canonical program `A006287.P6441187741628273080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006287 (n : ℕ) : ℤ :=
  A006287.P6441187741628273080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008495.P17411499091848740106

`∑[A008494(n)+A001287(n)]-A008494(n)`
-/

namespace A008495.P17411499091848740106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n + A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008494 n

end

end A008495.P17411499091848740106

noncomputable section

/-- A008495: Expansion of (1-x^13) / (1-x)^13.

Offset 0, canonical program `A008495.P17411499091848740106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495 (n : ℕ) : ℤ :=
  A008495.P17411499091848740106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011585.P5061405384106382312

`A062157(A070481(n)+A007814(2*n+1))`
-/

namespace A011585.P5061405384106382312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A070481 n + A007814 (2 * n + 1)).toNat

end

end A011585.P5061405384106382312

noncomputable section

/-- A011585: Legendre symbol (n,19).

Offset 0, canonical program `A011585.P5061405384106382312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011585 (n : ℕ) : ℤ :=
  A011585.P5061405384106382312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013917.P2257545791031421638

`A000040(A013916(n+1))`
-/

namespace A013917.P2257545791031421638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A013916 (n + 1)).toNat

end

end A013917.P2257545791031421638

noncomputable section

/-- A013917: a(n) is prime and sum of all primes <= a(n) is prime.

Offset 1, canonical program `A013917.P2257545791031421638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013917 (n : ℕ) : ℤ :=
  A013917.P2257545791031421638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013918.P18405346169258133439

`A007504(A013916(n+1))`
-/

namespace A013918.P18405346169258133439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A013916 (n + 1)).toNat

end

end A013918.P18405346169258133439

noncomputable section

/-- A013918: Primes equal to the sum of the first k primes for some k.

Offset 1, canonical program `A013918.P18405346169258133439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013918 (n : ℕ) : ℤ :=
  A013918.P18405346169258133439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013929.P16481699796765016237

`lt[1, A005361(n+1)]+1`
-/

namespace A013929.P16481699796765016237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013929.P16481699796765016237

noncomputable section

/-- A013929: Numbers that are not squarefree. Numbers that are divisible by a square greater than 1. The complement of A005117.

Offset 1, canonical program `A013929.P16481699796765016237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013929 (n : ℕ) : ℤ :=
  (A013929.P16481699796765016237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014082.P16446960074050354385

`A014081(and(n, 2*n))`
-/

namespace A014082.P16446960074050354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.land n (2 * n))

end

end A014082.P16446960074050354385

noncomputable section

/-- A014082: Number of occurrences of '111' in binary expansion of n.

Offset 0, canonical program `A014082.P16446960074050354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082 (n : ℕ) : ℤ :=
  A014082.P16446960074050354385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015633.P10478592312901122420

`∑[A007438(n+2)-(n+2)]`
-/

namespace A015633.P10478592312901122420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015633.P10478592312901122420

noncomputable section

/-- A015633: Number of ordered triples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015633.P10478592312901122420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5731 terms. -/
def A015633 (n : ℕ) : ℤ :=
  A015633.P10478592312901122420.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5731 terms. -/
def A015633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020641.P10934862193577514092

`A061568(A013916(n+1))`
-/

namespace A020641.P10934862193577514092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (A013916 (n + 1)).toNat

end

end A020641.P10934862193577514092

noncomputable section

/-- A020641: a(n)-th prime is sum of first k primes for some k.

Offset 1, canonical program `A020641.P10934862193577514092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A020641 (n : ℕ) : ℤ :=
  A020641.P10934862193577514092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A020641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020987.P9597873820712649968

`A014081(n)%2`
-/

namespace A020987.P9597873820712649968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014081 n) 2

end

end A020987.P9597873820712649968

noncomputable section

/-- A020987: Zero-one version of Golay-Rudin-Shapiro sequence (or word).

Offset 0, canonical program `A020987.P9597873820712649968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020987 (n : ℕ) : ℤ :=
  A020987.P9597873820712649968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022156.P8060597449158036699

`A276391(n+1)+A276391(n+2)-A115716(n)`
-/

namespace A022156.P8060597449158036699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1) + (A276391 (n + 2) - A115716 n)

end

end A022156.P8060597449158036699

noncomputable section

/-- A022156: Difference sequence of A020991.

Offset 0, canonical program `A022156.P8060597449158036699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A022156 (n : ℕ) : ℤ :=
  A022156.P8060597449158036699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A022156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022423.P3878848537184093492

`A374359(n+1)+A022421(n)`
-/

namespace A022423.P3878848537184093492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022421 n

end

end A022423.P3878848537184093492

noncomputable section

/-- A022423: Kim-sums: "Kimberling sums" K_n + K_12.

Offset 0, canonical program `A022423.P3878848537184093492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423 (n : ℕ) : ℤ :=
  A022423.P3878848537184093492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022821.P4749726610708956292

`∑[A092405(2*n+3)-2]`
-/

namespace A022821.P4749726610708956292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (2 * n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022821.P4749726610708956292

noncomputable section

/-- A022821: [ (n+1)/(n-1) ] + [ (n+2)/(n-2) ] + ... + [ (2n-1)/1 ].

Offset 2, canonical program `A022821.P4749726610708956292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022821 (n : ℕ) : ℤ :=
  A022821.P4749726610708956292.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023211.P15510924814259681776

`p?[n-A245838(n+2)²]`
-/

namespace A023211.P15510924814259681776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A245838 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P15510924814259681776

noncomputable section

/-- A023211: Primes p such that 3*p + 10 is also prime.

Offset 1, canonical program `A023211.P15510924814259681776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211 (n : ℕ) : ℤ :=
  A023211.P15510924814259681776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023222.P6978621992250826147

`p?[eq[1, A245838(2*(n+1))]]`
-/

namespace A023222.P6978621992250826147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023222.P6978621992250826147

noncomputable section

/-- A023222: Primes p such that 6*p + 7 is also prime.

Offset 1, canonical program `A023222.P6978621992250826147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222 (n : ℕ) : ℤ :=
  (A023222.P6978621992250826147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023247.P8495313482969675933

`p?[eq[A075743(n+1), A245838(3*n+5)]]`
-/

namespace A023247.P8495313482969675933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P8495313482969675933

noncomputable section

/-- A023247: Primes p such that 3*p + 4 and 9*p + 16 are also prime.

Offset 1, canonical program `A023247.P8495313482969675933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247 (n : ℕ) : ℤ :=
  (A023247.P8495313482969675933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023489.P10868598948325569583

`A023488(n)+Δ[A001911(n)]`
-/

namespace A023489.P10868598948325569583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + (f1 (n + 1) - f1 n)

end

end A023489.P10868598948325569583

noncomputable section

/-- A023489: Sum of n-th Lucas number greater than 3 and n-th number that is 1 or is not a Fibonacci number.

Offset 1, canonical program `A023489.P10868598948325569583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023489 (n : ℕ) : ℤ :=
  A023489.P10868598948325569583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023539.P1591536743945207454

`∑[∑[A002808(n+1)]]`
-/

namespace A023539.P1591536743945207454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P1591536743945207454

noncomputable section

/-- A023539: Convolution of natural numbers with composite numbers.

Offset 1, canonical program `A023539.P1591536743945207454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023539 (n : ℕ) : ℤ :=
  A023539.P1591536743945207454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023605.P7773840229532868551

`∑[A014306(n+1)]-A023566(n+1)`
-/

namespace A023605.P7773840229532868551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023566 (n + 1)

end

end A023605.P7773840229532868551

noncomputable section

/-- A023605: Convolution of A023532 and A014306.

Offset 1, canonical program `A023605.P7773840229532868551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023605 (n : ℕ) : ℤ :=
  A023605.P7773840229532868551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023609.P18385611758150687772

`A002808(n+1)+a(n-1)+a(n-2)` with `a(0)=4, a(1)=10`
-/

namespace A023609.P18385611758150687772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  A002808 (n + 1) + (a (n - 1) + a (n - 2))

end

end A023609.P18385611758150687772

noncomputable section

/-- A023609: Convolution of Fibonacci numbers and composite numbers.

Offset 0, canonical program `A023609.P18385611758150687772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023609 (n : ℕ) : ℤ :=
  A023609.P18385611758150687772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023648.P17060208949558049184

`∑{#}[n, A002808(#+1)*A002808(n-#+1)]`
-/

namespace A023648.P17060208949558049184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A002808 (k + 1) * A002808 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A023648.P17060208949558049184

noncomputable section

/-- A023648: Self-convolution of composite numbers.

Offset 1, canonical program `A023648.P17060208949558049184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A023648 (n : ℕ) : ℤ :=
  A023648.P17060208949558049184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A023648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023696.P1765320762815526595

`eq[5, A007814(A006047(n))]`
-/

namespace A023696.P1765320762815526595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P1765320762815526595

noncomputable section

/-- A023696: Numbers with exactly 5 1's in ternary expansion.

Offset 1, canonical program `A023696.P1765320762815526595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A023696 (n : ℕ) : ℤ :=
  (A023696.P1765320762815526595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A023696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023697.P3220481640824258587

`eq[6, A007814(A006047(n))]`
-/

namespace A023697.P3220481640824258587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023697.P3220481640824258587

noncomputable section

/-- A023697: Numbers with exactly 6 1's in their ternary expansion.

Offset 1, canonical program `A023697.P3220481640824258587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023697 (n : ℕ) : ℤ :=
  (A023697.P3220481640824258587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023839.P2652498098915009727

`A023838(n+2)-A001222(4*(n+2)+2)+A001222(n+1)`
-/

namespace A023839.P2652498098915009727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023838 (n + 2) - A001222 (4 * (n + 2) + 2) + A001222 (n + 1)

end

end A023839.P2652498098915009727

noncomputable section

/-- A023839: Sum of exponents in prime-power factorization of C(5n,n-2).

Offset 2, canonical program `A023839.P2652498098915009727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023839 (n : ℕ) : ℤ :=
  A023839.P2652498098915009727.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023844.P16963117519615248809

`A023843(n+1)+A001222(4*(n+1)-1)-A001222(n+3)`
-/

namespace A023844.P16963117519615248809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023843 (n + 1) + A001222 (4 * (n + 1) - 1) - A001222 (n + 3)

end

end A023844.P16963117519615248809

noncomputable section

/-- A023844: Sum of exponents in prime-power factorization of C(5n,n+2).

Offset 1, canonical program `A023844.P16963117519615248809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023844 (n : ℕ) : ℤ :=
  A023844.P16963117519615248809.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024449.P16431338297242596881

`∑[A000040(n+4)*A024448(n+1)]`
-/

namespace A024449.P16431338297242596881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) * A024448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024449.P16431338297242596881

noncomputable section

/-- A024449: 4th elementary symmetric function of the first n+3 primes.

Offset 1, canonical program `A024449.P16431338297242596881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449 (n : ℕ) : ℤ :=
  A024449.P16431338297242596881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024453.P7505489460028250605

`floor(A024448(n+1)/A007504(n+3))`
-/

namespace A024453.P7505489460028250605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A007504 (n + 3) : ℚ)⌋

end

end A024453.P7505489460028250605

noncomputable section

/-- A024453: a(n) = [ (3rd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024453.P7505489460028250605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024453 (n : ℕ) : ℤ :=
  A024453.P7505489460028250605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024455.P11382679767047507144

`floor(A024448(n+1)/A024447(n+3))`
-/

namespace A024455.P11382679767047507144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A024447 (n + 3) : ℚ)⌋

end

end A024455.P11382679767047507144

noncomputable section

/-- A024455: [ (3rd elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024455.P11382679767047507144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455 (n : ℕ) : ℤ :=
  A024455.P11382679767047507144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024523.P15062515241422550493

`∑[A024522(n+2)*A065091(n+1)]`
-/

namespace A024523.P15062515241422550493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024522 (n + 2) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P15062515241422550493

noncomputable section

/-- A024523: a(n) = 3rd elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 3, canonical program `A024523.P15062515241422550493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523 (n : ℕ) : ℤ :=
  A024523.P15062515241422550493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024531.P4098472389079834350

`floor(A024522(n+2)/A014284(n+2))`
-/

namespace A024531.P4098472389079834350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024522 (n + 2) : ℚ) / (A014284 (n + 2) : ℚ)⌋

end

end A024531.P4098472389079834350

noncomputable section

/-- A024531: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 2, canonical program `A024531.P4098472389079834350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024531 (n : ℕ) : ℤ :=
  A024531.P4098472389079834350.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024882.P12525272129196780909

`A024322(n+1)+2*A024318(n+1)`
-/

namespace A024882.P12525272129196780909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024322 (n + 1) + 2 * A024318 (n + 1)

end

end A024882.P12525272129196780909

noncomputable section

/-- A024882: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = (Lucas numbers).

Offset 2, canonical program `A024882.P12525272129196780909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A024882 (n : ℕ) : ℤ :=
  A024882.P12525272129196780909.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A024882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024885.P13775597593897222660

`A024322(n+1)+A024318(n+1)`
-/

namespace A024885.P13775597593897222660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024322 (n + 1) + A024318 (n + 1)

end

end A024885.P13775597593897222660

noncomputable section

/-- A024885: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = (F(2), F(3), F(4), ...).

Offset 2, canonical program `A024885.P13775597593897222660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A024885 (n : ℕ) : ℤ :=
  A024885.P13775597593897222660.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A024885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025071.P657631691525235069

`A024371(n+2)+A024367(n+1)`
-/

namespace A025071.P657631691525235069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024371 (n + 2) + A024367 (n + 1)

end

end A025071.P657631691525235069

noncomputable section

/-- A025071: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023532, t = (F(2), F(3), F(4), ...).

Offset 1, canonical program `A025071.P657631691525235069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A025071 (n : ℕ) : ℤ :=
  A025071.P657631691525235069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A025071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025104.P2698274401373587210

`∑{#}[floor((n+2)/2)-1, A002808(#+1)*(1+2*(n+1-#))]`
-/

namespace A025104.P2698274401373587210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A002808 (k + 1) * (1 + 2 * ((n + 1 : ℤ) - (k : ℤ)))

end

end A025104.P2698274401373587210

noncomputable section

/-- A025104: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (composite numbers), t = (odd natural numbers).

Offset 1, canonical program `A025104.P2698274401373587210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A025104 (n : ℕ) : ℤ :=
  A025104.P2698274401373587210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A025104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025543.P5462002278886021902

`lcm(a(n-1), A002808(n))` with `a(0)=1`
-/

namespace A025543.P5462002278886021902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A002808 n)

end

end A025543.P5462002278886021902

noncomputable section

/-- A025543: Least common multiple of the first n composite numbers.

Offset 0, canonical program `A025543.P5462002278886021902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A025543 (n : ℕ) : ℤ :=
  (A025543.P5462002278886021902.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A025543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026031.P15128004399576730173

`A026027(n+3)-A026030(n+2)`
-/

namespace A026031.P15128004399576730173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026027 (n + 3) - A026030 (n + 2)

end

end A026031.P15128004399576730173

noncomputable section

/-- A026031: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 7. Also a(n) = T(2n,n-2), where T is defined in A026022.

Offset 2, canonical program `A026031.P15128004399576730173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026031 (n : ℕ) : ℤ :=
  A026031.P15128004399576730173.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026235.P2955859054597217029

`abs(1-A026234(n+1)+n)`
-/

namespace A026235.P2955859054597217029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026234 (n + 1) + (n : ℤ)|

end

end A026235.P2955859054597217029

noncomputable section

/-- A026235: a(n) = |s(n) - n|, where s = A026234.

Offset 1, canonical program `A026235.P2955859054597217029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026235 (n : ℕ) : ℤ :=
  A026235.P2955859054597217029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026357.P9448903342911315199

`A026353(n+2)+n`
-/

namespace A026357.P9448903342911315199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2) + (n : ℤ)

end

end A026357.P9448903342911315199

noncomputable section

/-- A026357: a(n) = sum of the numbers between the two n's in A026354.

Offset 3, canonical program `A026357.P9448903342911315199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026357 (n : ℕ) : ℤ :=
  A026357.P9448903342911315199.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026734.P17377753573746690983

`∑[(A026733(n+1)+A026733(n))/2]`
-/

namespace A026734.P17377753573746690983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 (n + 1) + A026733 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026734.P17377753573746690983

noncomputable section

/-- A026734: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026725.

Offset 0, canonical program `A026734.P17377753573746690983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026734.P17377753573746690983.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026985.P17962102269186298352

`A026733(or(1, n))*A026741(n+2)`
-/

namespace A026985.P17962102269186298352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 (Nat.lor 1 n) * A026741 (n + 2)

end

end A026985.P17962102269186298352

noncomputable section

/-- A026985: a(n) = Sum_{k=0..n} (k+1) * A026670(n, k).

Offset 0, canonical program `A026985.P17962102269186298352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A026985 (n : ℕ) : ℤ :=
  A026985.P17962102269186298352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A026985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027744.P4838682014144095258

`A053287(A008486(n))/A028310(n)`
-/

namespace A027744.P4838682014144095258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A027744.P4838682014144095258

noncomputable section

/-- A027744: Number of primitive polynomials of degree n over GF(8).

Offset 0, canonical program `A027744.P4838682014144095258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A027744 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027744.P4838682014144095258.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A027744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027857.P14631129129120359686

`A027423(n+1)%(n+1)`
-/

namespace A027857.P14631129129120359686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027423 (n + 1)) (n + 1 : ℤ)

end

end A027857.P14631129129120359686

noncomputable section

/-- A027857: Number of positive divisors of n!, read mod n.

Offset 1, canonical program `A027857.P14631129129120359686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A027857 (n : ℕ) : ℤ :=
  A027857.P14631129129120359686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A027857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028949.P15011364157154069551

`A147809(abs(1-2*n))+A122553(n)`
-/

namespace A028949.P15011364157154069551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 |1 - (2 * n : ℤ)|.toNat + A122553 n

end

end A028949.P15011364157154069551

noncomputable section

/-- A028949: Write numbers from 1 to n(n+1)/2 in a left-justified lower triangular array (a) downwards and (b) across; a(n) is number of numbers in same position in both.

Offset 1, canonical program `A028949.P15011364157154069551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028949 (n : ℕ) : ℤ :=
  A028949.P15011364157154069551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029886.P17971381414606651862

`A108804(n)+∑[A268676(n)]`
-/

namespace A029886.P17971381414606651862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029886.P17971381414606651862

noncomputable section

/-- A029886: Convolution of Thue-Morse sequence A001285 with itself.

Offset 0, canonical program `A029886.P17971381414606651862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029886 (n : ℕ) : ℤ :=
  A029886.P17971381414606651862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030513.P1414838510973468407

`A007422(n+2)`
-/

namespace A030513.P1414838510973468407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

end

end A030513.P1414838510973468407

noncomputable section

/-- A030513: Numbers with 4 divisors.

Offset 1, canonical program `A030513.P1414838510973468407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030513 (n : ℕ) : ℤ :=
  A030513.P1414838510973468407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031451.P5833261908256610895

`eq[2, A124754(A003188(n))-2]`
-/

namespace A031451.P5833261908256610895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P5833261908256610895

noncomputable section

/-- A031451: Numbers whose base-2 representation has 4 fewer 0's than 1's.

Offset 1, canonical program `A031451.P5833261908256610895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. -/
def A031451 (n : ℕ) : ℤ :=
  (A031451.P5833261908256610895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. -/
def A031451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032283.P18044896153445888383

`A208668(n+1)-2`
-/

namespace A032283.P18044896153445888383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208668 (n + 1) - 2

end

end A032283.P18044896153445888383

noncomputable section

/-- A032283: "DIK" (bracelet, indistinct, unlabeled) transform of 2,2,2,2...

Offset 1, canonical program `A032283.P18044896153445888383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A032283 (n : ℕ) : ℤ :=
  A032283.P18044896153445888383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A032283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033831.P4343580932729545234

`A004526(A055086(n)-A078152(n+1))`
-/

namespace A033831.P4343580932729545234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055086 n - A078152 (n + 1)).toNat

end

end A033831.P4343580932729545234

noncomputable section

/-- A033831: Number of numbers d dividing n such that d >= 3 and n/d <= d-2.

Offset 1, canonical program `A033831.P4343580932729545234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033831 (n : ℕ) : ℤ :=
  A033831.P4343580932729545234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034448.P11229265544409245030

`∑{d}[n+1, A254503(#)]`
-/

namespace A034448.P11229265544409245030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d

end

end A034448.P11229265544409245030

noncomputable section

/-- A034448: usigma(n) = sum of unitary divisors of n (divisors d such that gcd(d, n/d)=1); also called UnitarySigma(n).

Offset 1, canonical program `A034448.P11229265544409245030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448 (n : ℕ) : ℤ :=
  A034448.P11229265544409245030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034973.P13506425649681590282

`A056175(n+1)+A056173(n+1)`
-/

namespace A034973.P13506425649681590282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1) + A056173 (n + 1)

end

end A034973.P13506425649681590282

noncomputable section

/-- A034973: Number of distinct prime factors in central binomial coefficients C(n, floor(n/2)), the terms of A001405.

Offset 1, canonical program `A034973.P13506425649681590282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034973 (n : ℕ) : ℤ :=
  A034973.P13506425649681590282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035182.P215545328454174601

`A001511(n+1)*A035162(n+1)`
-/

namespace A035182.P215545328454174601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A035162 (n + 1)

end

end A035182.P215545328454174601

noncomputable section

/-- A035182: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -7.

Offset 1, canonical program `A035182.P215545328454174601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035182 (n : ℕ) : ℤ :=
  A035182.P215545328454174601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035488.P7581911865808934078

`A007067(A035487(n+1))`
-/

namespace A035488.P7581911865808934078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A035487 (n + 1)).toNat

end

end A035488.P7581911865808934078

noncomputable section

/-- A035488: 3rd column of Stolarsky array.

Offset 0, canonical program `A035488.P7581911865808934078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035488 (n : ℕ) : ℤ :=
  A035488.P7581911865808934078.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035511.P16503924714337673631

`A004957(A035510(n))+1`
-/

namespace A035511.P16503924714337673631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A035510 n).toNat + 1

end

end A035511.P16503924714337673631

noncomputable section

/-- A035511: 3rd column of Inverse Stolarsky array.

Offset 0, canonical program `A035511.P16503924714337673631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A035511 (n : ℕ) : ℤ :=
  A035511.P16503924714337673631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A035511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035707.P923925604679129048

`∑[2*A035706(n)]-A035706(n)`
-/

namespace A035707.P923925604679129048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035706 n

end

end A035707.P923925604679129048

noncomputable section

/-- A035707: Coordination sequence for 12-dimensional cubic lattice.

Offset 0, canonical program `A035707.P923925604679129048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035707 (n : ℕ) : ℤ :=
  A035707.P923925604679129048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035708.P6521280316452753711

`A035706(n)+2*A035606(n)`
-/

namespace A035708.P6521280316452753711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 n + 2 * A035606 n

end

end A035708.P6521280316452753711

noncomputable section

/-- A035708: Coordination sequence for 13-dimensional cubic lattice.

Offset 0, canonical program `A035708.P6521280316452753711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035708 (n : ℕ) : ℤ :=
  A035708.P6521280316452753711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035715.P10092483258359964657

`∑[2*A035714(n)]-A035714(n)`
-/

namespace A035715.P10092483258359964657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035714 n

end

end A035715.P10092483258359964657

noncomputable section

/-- A035715: Coordination sequence for 20-dimensional cubic lattice.

Offset 0, canonical program `A035715.P10092483258359964657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035715 (n : ℕ) : ℤ :=
  A035715.P10092483258359964657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035733.P9446182256460121838

`∑{#}[n, A035714(#)*A035714(n-#)]`
-/

namespace A035733.P9446182256460121838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035714 k * A035714 (n - k)

end

end A035733.P9446182256460121838

noncomputable section

/-- A035733: Coordination sequence for 38-dimensional cubic lattice.

Offset 0, canonical program `A035733.P9446182256460121838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035733 (n : ℕ) : ℤ :=
  A035733.P9446182256460121838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035748.P7453906693344743949

`A035706(2*n)`
-/

namespace A035748.P7453906693344743949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 (2 * n)

end

end A035748.P7453906693344743949

noncomputable section

/-- A035748: Coordination sequence for C_11 lattice.

Offset 0, canonical program `A035748.P7453906693344743949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035748 (n : ℕ) : ℤ :=
  A035748.P7453906693344743949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035756.P17779012192531417427

`A035714(2*n)`
-/

namespace A035756.P17779012192531417427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035714 (2 * n)

end

end A035756.P17779012192531417427

noncomputable section

/-- A035756: Coordination sequence for C_19 lattice.

Offset 0, canonical program `A035756.P17779012192531417427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035756 (n : ℕ) : ℤ :=
  A035756.P17779012192531417427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035769.P5109967346019750825

`A035727(2*n)`
-/

namespace A035769.P5109967346019750825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035727 (2 * n)

end

end A035769.P5109967346019750825

noncomputable section

/-- A035769: Coordination sequence for C_32 lattice.

Offset 0, canonical program `A035769.P5109967346019750825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035769 (n : ℕ) : ℤ :=
  A035769.P5109967346019750825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035769.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035780.P14967840352560121909

`A035738(2*n)`
-/

namespace A035780.P14967840352560121909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035738 (2 * n)

end

end A035780.P14967840352560121909

noncomputable section

/-- A035780: Coordination sequence for C_43 lattice.

Offset 0, canonical program `A035780.P14967840352560121909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A035780 (n : ℕ) : ℤ :=
  A035780.P14967840352560121909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A035780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035781.P10698440791746424609

`A035739(2*n)`
-/

namespace A035781.P10698440791746424609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035739 (2 * n)

end

end A035781.P10698440791746424609

noncomputable section

/-- A035781: Coordination sequence for C_44 lattice.

Offset 0, canonical program `A035781.P10698440791746424609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. -/
def A035781 (n : ℕ) : ℤ :=
  A035781.P10698440791746424609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. -/
def A035781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035785.P17819441075964297936

`A035743(2*n)`
-/

namespace A035785.P17819441075964297936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035743 (2 * n)

end

end A035785.P17819441075964297936

noncomputable section

/-- A035785: Coordination sequence for C_48 lattice.

Offset 0, canonical program `A035785.P17819441075964297936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A035785 (n : ℕ) : ℤ :=
  A035785.P17819441075964297936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A035785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036266.P11903525488543457057

`Δ[A036265(n+1)]`
-/

namespace A036266.P11903525488543457057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P11903525488543457057

noncomputable section

/-- A036266: 5th differences of primes.

Offset 1, canonical program `A036266.P11903525488543457057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036266 (n : ℕ) : ℤ :=
  A036266.P11903525488543457057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036274.P11002584314295623650

`abs(Δ[A036273(n)])`
-/

namespace A036274.P11002584314295623650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036274.P11002584314295623650

noncomputable section

/-- A036274: Absolute values of differences of A036273.

Offset 0, canonical program `A036274.P11002584314295623650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036274 (n : ℕ) : ℤ :=
  A036274.P11002584314295623650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036453.P17495263989008753229

`A036450(A010553(n+1))`
-/

namespace A036453.P17495263989008753229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (A010553 (n + 1)).toNat

end

end A036453.P17495263989008753229

noncomputable section

/-- A036453: a(n) = d(d(d(d(d(n))))), the 5th iterate of the number-of-divisors function d = A000005, with initial value n.

Offset 1, canonical program `A036453.P17495263989008753229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036453 (n : ℕ) : ℤ :=
  A036453.P17495263989008753229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036457.P7190875582605610954

`eq[4, A036450(n+1)]+1`
-/

namespace A036457.P7190875582605610954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036457.P7190875582605610954

noncomputable section

/-- A036457: Numbers k for which exactly 5 applications of A000005 are needed to reach 2.

Offset 1, canonical program `A036457.P7190875582605610954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A036457 (n : ℕ) : ℤ :=
  (A036457.P7190875582605610954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A036457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036578.P17041184954175712032

`A005679(n+1)-1`
-/

namespace A036578.P17041184954175712032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (n + 1) - 1

end

end A036578.P17041184954175712032

noncomputable section

/-- A036578: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036578.P17041184954175712032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036578 (n : ℕ) : ℤ :=
  A036578.P17041184954175712032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036762.P9121888173223789821

`A033950(n+1)/A000005(A033950(n+1))`
-/

namespace A036762.P9121888173223789821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A000005 (A033950 (n + 1)).toNat : ℚ)

end

end A036762.P9121888173223789821

noncomputable section

/-- A036762: The integer values of x/d(x) in order of magnitude of x in A033950.

Offset 1, canonical program `A036762.P9121888173223789821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036762.P9121888173223789821.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038024.P2064224994306672514

`A000007(n)+Δ[A027423(n)]`
-/

namespace A038024.P2064224994306672514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A038024.P2064224994306672514

noncomputable section

/-- A038024: Number of k's such that A002034(k) = n.

Offset 1, canonical program `A038024.P2064224994306672514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A038024 (n : ℕ) : ℤ :=
  A038024.P2064224994306672514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A038024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038068.P14683916657712010267

`∑{d}[A055975(n+1), A038064((n+1)/#)]`
-/

namespace A038068.P14683916657712010267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A038064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038068.P14683916657712010267

noncomputable section

/-- A038068: Product_{k>=1}(1 + x^k)^a(k) = 1 + 3x.

Offset 1, canonical program `A038068.P14683916657712010267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A038068 (n : ℕ) : ℤ :=
  A038068.P14683916657712010267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A038068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038200.P8149415326934547372

`A001659(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A038200.P8149415326934547372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001659 (n + 1) - a (n - 1)

end

end A038200.P8149415326934547372

noncomputable section

/-- A038200: Row sums of triangle K(m, n), inverse to triangle T(m,n) in A020921.

Offset 1, canonical program `A038200.P8149415326934547372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A038200 (n : ℕ) : ℤ :=
  A038200.P8149415326934547372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A038200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038234.P3698139505430010627

`A038232(n)*A059268(n)`
-/

namespace A038234.P3698139505430010627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A059268 n

end

end A038234.P3698139505430010627

noncomputable section

/-- A038234: Triangle whose (n, k)-th entry is binomial(n, k)*4^(n - k)*4^k.

Offset 0, canonical program `A038234.P3698139505430010627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A038234 (n : ℕ) : ℤ :=
  A038234.P3698139505430010627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A038234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038250.P15038229439455009426

`A038246(n)*A059268(n)`
-/

namespace A038250.P15038229439455009426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038246 n * A059268 n

end

end A038250.P15038229439455009426

noncomputable section

/-- A038250: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*8^j.

Offset 0, canonical program `A038250.P15038229439455009426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. -/
def A038250 (n : ℕ) : ℤ :=
  A038250.P15038229439455009426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. -/
def A038250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038258.P18171415489042003972

`A038256(n)*A059268(n)`
-/

namespace A038258.P18171415489042003972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A059268 n

end

end A038258.P18171415489042003972

noncomputable section

/-- A038258: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*4^j.

Offset 0, canonical program `A038258.P18171415489042003972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. -/
def A038258 (n : ℕ) : ℤ :=
  A038258.P18171415489042003972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. -/
def A038258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038270.P14616798434417100428

`A038268(n)*A059268(n)`
-/

namespace A038270.P14616798434417100428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038268 n * A059268 n

end

end A038270.P14616798434417100428

noncomputable section

/-- A038270: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*4^j.

Offset 0, canonical program `A038270.P14616798434417100428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. -/
def A038270 (n : ℕ) : ℤ :=
  A038270.P14616798434417100428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. -/
def A038270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038278.P9937745698125142218

`A038272(n)*A059268(n)`
-/

namespace A038278.P9937745698125142218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038272 n * A059268 n

end

end A038278.P9937745698125142218

noncomputable section

/-- A038278: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*12^j.

Offset 0, canonical program `A038278.P9937745698125142218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A038278 (n : ℕ) : ℤ :=
  A038278.P9937745698125142218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A038278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038282.P9263401761127382137

`A038280(n)*A059268(n)`
-/

namespace A038282.P9263401761127382137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038280 n * A059268 n

end

end A038282.P9263401761127382137

noncomputable section

/-- A038282: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*4^j.

Offset 0, canonical program `A038282.P9263401761127382137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4491 terms. -/
def A038282 (n : ℕ) : ℤ :=
  A038282.P9263401761127382137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4491 terms. -/
def A038282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038294.P370950949061120703

`A038292(n)*A059268(n)`
-/

namespace A038294.P370950949061120703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038292 n * A059268 n

end

end A038294.P370950949061120703

noncomputable section

/-- A038294: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*4^j.

Offset 0, canonical program `A038294.P370950949061120703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. -/
def A038294 (n : ℕ) : ℤ :=
  A038294.P370950949061120703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. -/
def A038294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038310.P6116586220362870793

`A038306(n)*A059268(n)`
-/

namespace A038310.P6116586220362870793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038306 n * A059268 n

end

end A038310.P6116586220362870793

noncomputable section

/-- A038310: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*8^j.

Offset 0, canonical program `A038310.P6116586220362870793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A038310 (n : ℕ) : ℤ :=
  A038310.P6116586220362870793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A038310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038314.P15385511615733957854

`A036561(n)*A038246(n)`
-/

namespace A038314.P15385511615733957854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038246 n

end

end A038314.P15385511615733957854

noncomputable section

/-- A038314: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*12^j.

Offset 0, canonical program `A038314.P15385511615733957854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. -/
def A038314 (n : ℕ) : ℤ :=
  A038314.P15385511615733957854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. -/
def A038314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038318.P611432276331124910

`A038316(n)*A059268(n)`
-/

namespace A038318.P611432276331124910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038316 n * A059268 n

end

end A038318.P611432276331124910

noncomputable section

/-- A038318: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*4^j.

Offset 0, canonical program `A038318.P611432276331124910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. -/
def A038318 (n : ℕ) : ℤ :=
  A038318.P611432276331124910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. -/
def A038318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038330.P7312664792564112654

`A038328(n)*A059268(n)`
-/

namespace A038330.P7312664792564112654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038328 n * A059268 n

end

end A038330.P7312664792564112654

noncomputable section

/-- A038330: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*4^j.

Offset 0, canonical program `A038330.P7312664792564112654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. -/
def A038330 (n : ℕ) : ℤ :=
  A038330.P7312664792564112654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. -/
def A038330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038332.P474245065712382521

`A036561(n)*A038256(n)`
-/

namespace A038332.P474245065712382521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038256 n

end

end A038332.P474245065712382521

noncomputable section

/-- A038332: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*6^j.

Offset 0, canonical program `A038332.P474245065712382521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. -/
def A038332 (n : ℕ) : ℤ :=
  A038332.P474245065712382521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. -/
def A038332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038825.P9275625098868966113

`A038814(n+1)%A038814(A000038(n)+n)`
-/

namespace A038825.P9275625098868966113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038814 (n + 1)) (A038814 (A000038 n + (n : ℤ)).toNat)

end

end A038825.P9275625098868966113

noncomputable section

/-- A038825: Number of primes between n*100000 and (n+1)*100000.

Offset 0, canonical program `A038825.P9275625098868966113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038825 (n : ℕ) : ℤ :=
  A038825.P9275625098868966113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038994.P9699052350017523539

`∑{d}[n+1, #*A038993(#)]`
-/

namespace A038994.P9699052350017523539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038993 d

end

end A038994.P9699052350017523539

noncomputable section

/-- A038994: Number of sublattices of index n in generic 7-dimensional lattice.

Offset 1, canonical program `A038994.P9699052350017523539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038994 (n : ℕ) : ℤ :=
  A038994.P9699052350017523539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039000.P9830512540759238437

`eq[A007814(A006047(n)), A077267(n)]`
-/

namespace A039000.P9830512540759238437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P9830512540759238437

noncomputable section

/-- A039000: Numbers whose base-3 representation has the same number of 0's and 1's.

Offset 1, canonical program `A039000.P9830512540759238437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A039000 (n : ℕ) : ℤ :=
  (A039000.P9830512540759238437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A039000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039689.P1408456862018696373

`lt[A296079(n+1), 1]+1`
-/

namespace A039689.P1408456862018696373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296079 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A039689.P1408456862018696373

noncomputable section

/-- A039689: Numbers k such that phi(k) + 1 is not a prime.

Offset 1, canonical program `A039689.P1408456862018696373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039689 (n : ℕ) : ℤ :=
  (A039689.P1408456862018696373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039698.P6509222349320207306

`eq[1, A296079(n+1)]+1`
-/

namespace A039698.P6509222349320207306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P6509222349320207306

noncomputable section

/-- A039698: Numbers k such that phi(k) + 1 is prime.

Offset 1, canonical program `A039698.P6509222349320207306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039698 (n : ℕ) : ℤ :=
  (A039698.P6509222349320207306.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039819.P17715660467556399268

`A000005(A033950(n+1))`
-/

namespace A039819.P17715660467556399268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033950 (n + 1)).toNat

end

end A039819.P17715660467556399268

noncomputable section

/-- A039819: Number of divisors of n-th refactorable number (A033950(n)).

Offset 1, canonical program `A039819.P17715660467556399268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039819 (n : ℕ) : ℤ :=
  A039819.P17715660467556399268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043742.P8132510292686517253

`eq[gcd(2, n)², A037800(n)]`
-/

namespace A043742.P8132510292686517253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043742.P8132510292686517253

noncomputable section

/-- A043742: Numbers whose number of runs in the base-2 representation is congruent to 3 mod 7.

Offset 1, canonical program `A043742.P8132510292686517253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A043742 (n : ℕ) : ℤ :=
  (A043742.P8132510292686517253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A043742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043743.P2759769259195979953

`eq[A010695(n), A033264(n)]`
-/

namespace A043743.P2759769259195979953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P2759769259195979953

noncomputable section

/-- A043743: Numbers whose number of runs in the base-2 representation is congruent to 4 mod 7.

Offset 1, canonical program `A043743.P2759769259195979953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A043743 (n : ℕ) : ℤ :=
  (A043743.P2759769259195979953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A043743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043745.P764025745406504440

`eq[A037800(n), A040008(n+1)]`
-/

namespace A043745.P764025745406504440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P764025745406504440

noncomputable section

/-- A043745: Numbers whose number of runs in the base-2 representation is congruent to 6 mod 7.

Offset 1, canonical program `A043745.P764025745406504440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A043745 (n : ℕ) : ℤ :=
  (A043745.P764025745406504440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A043745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043766.P1478306292406326611

`∩[2*n+1, A043731(n+1)]`
-/

namespace A043766.P1478306292406326611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043766.P1478306292406326611

noncomputable section

/-- A043766: Numbers n such that number of runs in the base 2 representation of n is congruent to 3 mod 10.

Offset 1, canonical program `A043766.P1478306292406326611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A043766 (n : ℕ) : ℤ :=
  (A043766.P1478306292406326611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A043766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043769.P9022575970061504248

`∩[2*n, A043729(n+1)]`
-/

namespace A043769.P9022575970061504248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043769.P9022575970061504248

noncomputable section

/-- A043769: Numbers k such that number of runs in the base 2 representation of k is congruent to 6 mod 10.

Offset 1, canonical program `A043769.P9022575970061504248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6412 terms. -/
def A043769 (n : ℕ) : ℤ :=
  (A043769.P9022575970061504248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6412 terms. -/
def A043769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044951.P14342552118597486436

`∑[runs[A268289(n)]]`
-/

namespace A044951.P14342552118597486436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044951.P14342552118597486436

noncomputable section

/-- A044951: Numbers having a different number of ones and zeros in base 2.

Offset 1, canonical program `A044951.P14342552118597486436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044951 (n : ℕ) : ℤ :=
  (A044951.P14342552118597486436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045014.P9582674941711969825

`∩[A023705(n+1), A023710(n+1)]`
-/

namespace A045014.P9582674941711969825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045014.P9582674941711969825

noncomputable section

/-- A045014: Numbers whose base-4 representation contains no 0's and exactly one 1.

Offset 1, canonical program `A045014.P9582674941711969825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A045014 (n : ℕ) : ℤ :=
  (A045014.P9582674941711969825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A045014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045038.P652347557463449643

`∩[A023705(n+1), A023714(n+1)]`
-/

namespace A045038.P652347557463449643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045038.P652347557463449643

noncomputable section

/-- A045038: Numbers whose base-4 representation contains no 0's and exactly one 2.

Offset 1, canonical program `A045038.P652347557463449643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. -/
def A045038 (n : ℕ) : ℤ :=
  (A045038.P652347557463449643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. -/
def A045038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045039.P3937333405223488659

`∩[A023705(n+1), A023715(n+1)]`
-/

namespace A045039.P3937333405223488659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045039.P3937333405223488659

noncomputable section

/-- A045039: Numbers whose base-4 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A045039.P3937333405223488659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A045039 (n : ℕ) : ℤ :=
  (A045039.P3937333405223488659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A045039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045063.P8683003106930919168

`∩[A023705(n+1), A031467(n+1)]`
-/

namespace A045063.P8683003106930919168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045063.P8683003106930919168

noncomputable section

/-- A045063: Numbers whose base-4 representation contains no 0's and exactly two 3's.

Offset 1, canonical program `A045063.P8683003106930919168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045063 (n : ℕ) : ℤ :=
  (A045063.P8683003106930919168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045934.P16041711807266308001

`∩[A045933(n+1)-1, A045933(n+1)]`
-/

namespace A045934.P16041711807266308001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045934.P16041711807266308001

noncomputable section

/-- A045934: Numbers n such that n through n+5 have the same number of distinct prime factors.

Offset 1, canonical program `A045934.P16041711807266308001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A045934 (n : ℕ) : ℤ :=
  (A045934.P16041711807266308001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A045934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046062.P12626048693260367706

`p?[A005563(n)+2-A053650(n+1)]`
-/

namespace A046062.P12626048693260367706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (2 - A053650 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P12626048693260367706

noncomputable section

/-- A046062: Primes of the form n*phi(n)+1 where phi(n) is the Euler function.

Offset 1, canonical program `A046062.P12626048693260367706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A046062 (n : ℕ) : ℤ :=
  A046062.P12626048693260367706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A046062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046325.P13404196471714545955

`A000040(n+1)*A046324(n+2)`
-/

namespace A046325.P13404196471714545955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046324 (n + 2)

end

end A046325.P13404196471714545955

noncomputable section

/-- A046325: Product of 7 successive primes.

Offset 1, canonical program `A046325.P13404196471714545955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046325 (n : ℕ) : ℤ :=
  A046325.P13404196471714545955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046337.P8460392914178476196

`eq[1, A353557(n+1)]+1`
-/

namespace A046337.P8460392914178476196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046337.P8460392914178476196

noncomputable section

/-- A046337: Odd numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046337.P8460392914178476196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046337 (n : ℕ) : ℤ :=
  (A046337.P8460392914178476196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046642.P10673475992677074889

`eq[1, A009191(n+1)]+1`
-/

namespace A046642.P10673475992677074889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046642.P10673475992677074889

noncomputable section

/-- A046642: Numbers k such that k and number of divisors d(k) are relatively prime.

Offset 1, canonical program `A046642.P10673475992677074889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046642 (n : ℕ) : ℤ :=
  (A046642.P10673475992677074889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047886.P421857014311615150

`A047885(A245300(n))`
-/

namespace A047886.P421857014311615150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047885 (A245300 n).toNat

end

end A047886.P421857014311615150

noncomputable section

/-- A047886: Triangle read by rows: T(n,k) = pi(n+k) - pi(n) - pi(k), where pi() = A000720 (n >= 0, 0 <= k <= n).

Offset 0, canonical program `A047886.P421857014311615150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A047886 (n : ℕ) : ℤ :=
  A047886.P421857014311615150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A047886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048107.P6210159664874137761

`lt[A005361(n+1), 3]+1`
-/

namespace A048107.P6210159664874137761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048107.P6210159664874137761

noncomputable section

/-- A048107: Numbers k such that the number of unitary divisors of k (A034444) is larger than the number of non-unitary divisors of k (A048105).

Offset 1, canonical program `A048107.P6210159664874137761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048107 (n : ℕ) : ℤ :=
  (A048107.P6210159664874137761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048167.P12277590638734498144

`A048166(n+1)/A034444(A048166(n+1))`
-/

namespace A048167.P12277590638734498144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048166 (n + 1) : ℚ) / (A034444 (A048166 (n + 1)).toNat : ℚ)

end

end A048167.P12277590638734498144

noncomputable section

/-- A048167: Integer quotients of numbers k divisible by the number of unitary divisors of k (A034444).

Offset 1, canonical program `A048167.P12277590638734498144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048167.P12277590638734498144.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048657.P12251602765094748303

`A027423(n+1)-A048656(n+1)`
-/

namespace A048657.P12251602765094748303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A048656 (n + 1)

end

end A048657.P12251602765094748303

noncomputable section

/-- A048657: Number of non-unitary divisors of n!.

Offset 1, canonical program `A048657.P12251602765094748303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A048657 (n : ℕ) : ℤ :=
  A048657.P12251602765094748303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A048657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048864.P16915682539637834600

`A036997(n+1)+1`
-/

namespace A048864.P16915682539637834600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + 1

end

end A048864.P16915682539637834600

noncomputable section

/-- A048864: Number of nonprime numbers (composites and 1) in the reduced residue system of n.

Offset 1, canonical program `A048864.P16915682539637834600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048864 (n : ℕ) : ℤ :=
  A048864.P16915682539637834600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049502.P5742727287573319742

`A037800(n)+a(A004526(n))` with `a(0)=0`
-/

namespace A049502.P5742727287573319742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037800 n + a (A004526 n).toNat

end

end A049502.P5742727287573319742

noncomputable section

/-- A049502: Major index of n, 2nd definition.

Offset 0, canonical program `A049502.P5742727287573319742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049502 (n : ℕ) : ℤ :=
  A049502.P5742727287573319742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051951.P11397954646157849919

`Δ[A051950(A028310(n)+1)]`
-/

namespace A051951.P11397954646157849919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051951.P11397954646157849919

noncomputable section

/-- A051951: Second differences of tau(n).

Offset 0, canonical program `A051951.P11397954646157849919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051951 (n : ℕ) : ℤ :=
  A051951.P11397954646157849919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053398.P10674164959808445662

`A007814(A003986(n)+1)`
-/

namespace A053398.P10674164959808445662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003986 n + 1).toNat

end

end A053398.P10674164959808445662

noncomputable section

/-- A053398: Nim-values from game of Kopper's Nim.

Offset 1, canonical program `A053398.P10674164959808445662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053398 (n : ℕ) : ℤ :=
  A053398.P10674164959808445662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053470.P13253634805606382182

`∑{d}[∑{d}[n+1, A062790(#)], A062790(#)]`
-/

namespace A053470.P13253634805606382182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A062790 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A053470.P13253634805606382182

noncomputable section

/-- A053470: a(n) is the cototient of n (A051953) iterated twice.

Offset 1, canonical program `A053470.P13253634805606382182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053470 (n : ℕ) : ℤ :=
  A053470.P13253634805606382182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053571.P16325471731758362512

`A015613(n+1)+1-A053570(n+1)`
-/

namespace A053571.P16325471731758362512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (1 - A053570 (n + 1))

end

end A053571.P16325471731758362512

noncomputable section

/-- A053571: Sum of totient functions over arguments running through numbers unrelated to n.

Offset 1, canonical program `A053571.P16325471731758362512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053571 (n : ℕ) : ℤ :=
  A053571.P16325471731758362512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053603.P8228624408487937013

`A008441(n)-A046698(A198954(n))`
-/

namespace A053603.P8228624408487937013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - A046698 (A198954 n).toNat

end

end A053603.P8228624408487937013

noncomputable section

/-- A053603: Number of ways to write n as an ordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A053603.P8228624408487937013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603 (n : ℕ) : ℤ :=
  A053603.P8228624408487937013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054011.P15035796131631588098

`lt[0, A054009(n+2)]+2`
-/

namespace A054011.P15035796131631588098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A054011.P15035796131631588098

noncomputable section

/-- A054011: n is not divisible by the number of its proper divisors.

Offset 1, canonical program `A054011.P15035796131631588098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054011 (n : ℕ) : ℤ :=
  (A054011.P15035796131631588098.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054022.P4308669514195259819

`record[gcd(n+1, A123108(A160550(n+1)))]`
-/

namespace A054022.P4308669514195259819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A123108 (A160550 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054022.P4308669514195259819

noncomputable section

/-- A054022: Chowla function of n is divisible by the number of divisors of n.

Offset 1, canonical program `A054022.P4308669514195259819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4303 terms. -/
def A054022 (n : ℕ) : ℤ :=
  (A054022.P4308669514195259819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4303 terms. -/
def A054022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055008.P18081575249762395183

`record[(n+1)/A082055(n+1)]`
-/

namespace A055008.P18081575249762395183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082055 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055008.P18081575249762395183

noncomputable section

/-- A055008: Numbers k such that gcd(phi(k), sigma(k)) = 1 with phi = A000010, sigma = A000203.

Offset 1, canonical program `A055008.P18081575249762395183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A055008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055008.P18081575249762395183.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A055008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055678.P13434665025333706559

`record[A033950(n+1)%lcm(6, A033950(n+1))]`
-/

namespace A055678.P13434665025333706559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033950 (n + 1)) (Int.lcm 6 (A033950 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055678.P13434665025333706559

noncomputable section

/-- A055678: Integers not congruent to 0 (mod 6) that are divisible by the number of their divisors.

Offset 1, canonical program `A055678.P13434665025333706559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. -/
def A055678 (n : ℕ) : ℤ :=
  A055678.P13434665025333706559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. -/
def A055678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056339.P12728329773781981216

`A056334(n+1)-A056333(n+1)`
-/

namespace A056339.P12728329773781981216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) - A056333 (n + 1)

end

end A056339.P12728329773781981216

noncomputable section

/-- A056339: Number of primitive (aperiodic) reversible string structures with n beads using exactly five different colors.

Offset 1, canonical program `A056339.P12728329773781981216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056333, A056334, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056339 (n : ℕ) : ℤ :=
  A056339.P12728329773781981216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056333, A056334, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056560.P14693903049238240332

`A056557(n)-A056558(n)`
-/

namespace A056560.P14693903049238240332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n - A056558 n

end

end A056560.P14693903049238240332

noncomputable section

/-- A056560: Tetrahedron with T(t,n,k)=n-k; succession of growing finite triangles with increasing values towards bottom left.

Offset 0, canonical program `A056560.P14693903049238240332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056560 (n : ℕ) : ℤ :=
  A056560.P14693903049238240332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056761.P3347424074707073657

`record[A000265(A056757(n+2))]`
-/

namespace A056761.P3347424074707073657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A056757 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056761.P3347424074707073657

noncomputable section

/-- A056761: Odd numbers less than the cube of their number of divisors.

Offset 1, canonical program `A056761.P3347424074707073657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A056761 (n : ℕ) : ℤ :=
  A056761.P3347424074707073657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A056761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056980.P3532527099701014271

`A033264(and(n, 2*(n+1))+1)`
-/

namespace A056980.P3532527099701014271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (Nat.land n (2 * (n + 1)) + 1)

end

end A056980.P3532527099701014271

noncomputable section

/-- A056980: Number of blocks of {1, 1, 0} in binary expansion of n.

Offset 1, canonical program `A056980.P3532527099701014271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056980 (n : ℕ) : ℤ :=
  A056980.P3532527099701014271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057265.P17036607551991928888

`filter[A033950(n+1), A049240(#)]`
-/

namespace A057265.P17036607551991928888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A057265.P17036607551991928888

noncomputable section

/-- A057265: Even refactorable numbers (i.e., the number of divisors is itself a divisor and it is also even).

Offset 1, canonical program `A057265.P17036607551991928888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3537 terms. -/
def A057265 (n : ℕ) : ℤ :=
  A057265.P17036607551991928888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3537 terms. -/
def A057265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057656.P13929880755277153593

`∑[2*A008441(n)]`
-/

namespace A057656.P13929880755277153593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P13929880755277153593

noncomputable section

/-- A057656: Number of points (x,y) in square lattice with (x-1/2)^2+y^2 <= n.

Offset 0, canonical program `A057656.P13929880755277153593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057656 (n : ℕ) : ℤ :=
  A057656.P13929880755277153593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057849.P15598929921567403895

`A049202(A000040(1+n))`
-/

namespace A057849.P15598929921567403895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A000040 (1 + n)).toNat

end

end A057849.P15598929921567403895

noncomputable section

/-- A057849: Primes p whose order of primeness A078442(p) is at least 7.

Offset 1, canonical program `A057849.P15598929921567403895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849 (n : ℕ) : ℤ :=
  A057849.P15598929921567403895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059126.P15563603059737863123

`A131534(n)+2*A007814(A008620(n))`
-/

namespace A059126.P15563603059737863123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n + 2 * A007814 (A008620 n).toNat

end

end A059126.P15563603059737863123

noncomputable section

/-- A059126: A hierarchical sequence (W2{2} according to the description in the attached file - see link).

Offset 0, canonical program `A059126.P15563603059737863123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059126 (n : ℕ) : ℤ :=
  A059126.P15563603059737863123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059246.P1456171731783157114

`lcm(n+1, A006218(n+1))/(n+1)`
-/

namespace A059246.P1456171731783157114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006218 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A059246.P1456171731783157114

noncomputable section

/-- A059246: Numerator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

Offset 1, canonical program `A059246.P1456171731783157114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059246.P1456171731783157114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060609.P9088735267525131921

`A049116(A000040(n+1))`
-/

namespace A060609.P9088735267525131921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A000040 (n + 1)).toNat

end

end A060609.P9088735267525131921

noncomputable section

/-- A060609: Repeatedly apply Euler phi to n-th prime; a(n) = highest power of 2 that is seen.

Offset 1, canonical program `A060609.P9088735267525131921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060609 (n : ℕ) : ℤ :=
  A060609.P9088735267525131921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060687.P13266842757816177506

`eq[2, A005361(n+1)]+1`
-/

namespace A060687.P13266842757816177506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P13266842757816177506

noncomputable section

/-- A060687: Numbers k such that there exist exactly 2 Abelian groups of order k, i.e., A000688(k) = 2.

Offset 1, canonical program `A060687.P13266842757816177506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687 (n : ℕ) : ℤ :=
  (A060687.P13266842757816177506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061560.P18273919171880581863

`A005728(eq[0, A010051(A005728(n))])`
-/

namespace A061560.P18273919171880581863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061560.P18273919171880581863

noncomputable section

/-- A061560: Lengths of Farey-series (A005728) which are not primes.

Offset 1, canonical program `A061560.P18273919171880581863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061560 (n : ℕ) : ℤ :=
  A061560.P18273919171880581863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062771.P7382483284661769712

`A000034(n)*A345082(n+1)`
-/

namespace A062771.P7382483284661769712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A345082 (n + 1)

end

end A062771.P7382483284661769712

noncomputable section

/-- A062771: Order of automorphism group of the group C_n X C_2 (where C_n is the cyclic group with n elements).

Offset 1, canonical program `A062771.P7382483284661769712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062771 (n : ℕ) : ℤ :=
  A062771.P7382483284661769712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062787.P5490258356335580690

`A058210(n+2)-Δ[A005728(n+1)]`
-/

namespace A062787.P5490258356335580690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058210 (n + 2) - (f1 (n + 1) - f1 n)

end

end A062787.P5490258356335580690

noncomputable section

/-- A062787: a(n) = floor(exp(gamma) n log log n ) - phi(n), where gamma is Euler's constant (A001620).

Offset 2, canonical program `A062787.P5490258356335580690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062787 (n : ℕ) : ℤ :=
  A062787.P5490258356335580690.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063173.P15522695692086999954

`val(A002808(A004736(n+1)), A037126(n+1))`
-/

namespace A063173.P15522695692086999954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A004736 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A063173.P15522695692086999954

noncomputable section

/-- A063173: Prime-composite array T(m,n): highest power of the n-th prime that divides the m-th composite, read by antidiagonals.

Offset 1, canonical program `A063173.P15522695692086999954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063173 (n : ℕ) : ℤ :=
  (A063173.P15522695692086999954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063449.P15389851829037356267

`lt[A000005(n+1), A051950(n+2)]+1`
-/

namespace A063449.P15389851829037356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063449.P15389851829037356267

noncomputable section

/-- A063449: Numbers k for which d(k+1) > 2*d(k), where d(j) = A000005(j).

Offset 1, canonical program `A063449.P15389851829037356267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. -/
def A063449 (n : ℕ) : ℤ :=
  (A063449.P15389851829037356267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. -/
def A063449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063466.P11095662545612657757

`eq[n+9, A324048(n+1)]+1`
-/

namespace A063466.P11095662545612657757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063466.P11095662545612657757

noncomputable section

/-- A063466: Numbers k such that 2*phi(k) + 8 = sigma(k).

Offset 1, canonical program `A063466.P11095662545612657757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A063466 (n : ℕ) : ℤ :=
  (A063466.P11095662545612657757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A063466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064363.P10112196850495095681

`∑[∑[3*n²+2]-1]-A064276(n)`
-/

namespace A064363.P10112196850495095681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064276 n

end

end A064363.P10112196850495095681

noncomputable section

/-- A064363: Number of 2 X 2 regular integer matrices with elements from {0,...,n} up to row and column permutation.

Offset 0, canonical program `A064363.P10112196850495095681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A064363 (n : ℕ) : ℤ :=
  A064363.P10112196850495095681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A064363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064894.P11778441932188558359

`gcd(-a(and(n, n-1)), A007814(n))` with `a(0)=0`
-/

namespace A064894.P11778441932188558359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (-(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)) (A007814 n)

end

end A064894.P11778441932188558359

noncomputable section

/-- A064894: Binary dilution of n. GCD of exponents in binary expansion of n.

Offset 0, canonical program `A064894.P11778441932188558359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064894 (n : ℕ) : ℤ :=
  (A064894.P11778441932188558359.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065430.P4340305447279095873

`A000056(n+1)/A000034(n)`
-/

namespace A065430.P4340305447279095873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A065430.P4340305447279095873

noncomputable section

/-- A065430: Order of commutator subgroup of GL(2,Z_n) (invertible 2 X 2 matrices mod n: A000252).

Offset 1, canonical program `A065430.P4340305447279095873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065430.P4340305447279095873.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065449.P14389556538934521160

`A000045(n)-A278350(A028310(n))`
-/

namespace A065449.P14389556538934521160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A278350 (A028310 n).toNat

end

end A065449.P14389556538934521160

noncomputable section

/-- A065449: a(n) = phi(Fibonacci(n)).

Offset 0, canonical program `A065449.P14389556538934521160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A065449 (n : ℕ) : ℤ :=
  A065449.P14389556538934521160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A065449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065970.P13115613865623270676

`A065969(n+1)-2*A322078(n+1)`
-/

namespace A065970.P13115613865623270676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065969 (n + 1) - 2 * A322078 (n + 1)

end

end A065970.P13115613865623270676

noncomputable section

/-- A065970: a(n) = n^2 * Sum_{primes p dividing n} (1 - 1/p^2).

Offset 1, canonical program `A065970.P13115613865623270676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065970 (n : ℕ) : ℤ :=
  A065970.P13115613865623270676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066071.P14748689608797232704

`lt[A010051(n+1), A296079(n+1)]+1`
-/

namespace A066071.P14748689608797232704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066071.P14748689608797232704

noncomputable section

/-- A066071: Nonprime numbers k such that phi(k) + 1 is prime.

Offset 1, canonical program `A066071.P14748689608797232704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066071 (n : ℕ) : ℤ :=
  (A066071.P14748689608797232704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066248.P10612536354157230984

`A026238(n+2)*2-A066247(n+2)`
-/

namespace A066248.P10612536354157230984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) * 2 - A066247 (n + 2)

end

end A066248.P10612536354157230984

noncomputable section

/-- A066248: a(n) = if n+1 is prime then A049084(n+1)*2 else A066246(n+1)*2 - 1.

Offset 1, canonical program `A066248.P10612536354157230984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066248 (n : ℕ) : ℤ :=
  A066248.P10612536354157230984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066774.P15152739577050822243

`eq[4, A032741(n)+A023645(n+2)]`
-/

namespace A066774.P15152739577050822243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A023645 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P15152739577050822243

noncomputable section

/-- A066774: A066728(a(n))=3.

Offset 1, canonical program `A066774.P15152739577050822243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774 (n : ℕ) : ℤ :=
  (A066774.P15152739577050822243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067290.P124068687972599428

`lt[A000040(n+1), A038040(n+1)]+1`
-/

namespace A067290.P124068687972599428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067290.P124068687972599428

noncomputable section

/-- A067290: Numbers n such that prime(n)<n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067290.P124068687972599428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A067290 (n : ℕ) : ℤ :=
  (A067290.P124068687972599428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A067290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067291.P5863031356185478968

`lt[A038040(n+1), A000040(n+1)]+1`
-/

namespace A067291.P5863031356185478968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067291.P5863031356185478968

noncomputable section

/-- A067291: Numbers n such that prime(n)>n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067291.P5863031356185478968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A067291 (n : ℕ) : ℤ :=
  (A067291.P5863031356185478968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A067291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067350.P18314922694609519649

`eq[4, A067349(n+1)]+1`
-/

namespace A067350.P18314922694609519649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067350.P18314922694609519649

noncomputable section

/-- A067350: Numbers n such that sigma(n)+phi(n) has exactly 4 divisors.

Offset 1, canonical program `A067350.P18314922694609519649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A067350 (n : ℕ) : ℤ :=
  (A067350.P18314922694609519649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A067350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067434.P13929793644750032362

`A056175(2*(n+1))+A056173(2*(n+1))`
-/

namespace A067434.P13929793644750032362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1)) + A056173 (2 * (n + 1))

end

end A067434.P13929793644750032362

noncomputable section

/-- A067434: Number of distinct prime factors in binomial(2*n,n).

Offset 1, canonical program `A067434.P13929793644750032362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067434 (n : ℕ) : ℤ :=
  A067434.P13929793644750032362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067888.P402082068900506709

`A062832(1+n)+1`
-/

namespace A067888.P402082068900506709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (1 + n) + 1

end

end A067888.P402082068900506709

noncomputable section

/-- A067888: Numbers k such that tau(k+1) = tau(k-1) where tau(k) = A000005(k).

Offset 1, canonical program `A067888.P402082068900506709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067888 (n : ℕ) : ℤ :=
  A067888.P402082068900506709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068238.P5212387660254963000

`(n+1)²/gcd((n+1)², ∑[A258057(n)])`
-/

namespace A068238.P5212387660254963000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A068238.P5212387660254963000

noncomputable section

/-- A068238: Denominators of arithmetic derivative of 1/n: -A003415(n)/n^2.

Offset 1, canonical program `A068238.P5212387660254963000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068238.P5212387660254963000.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068350.P17751297019967877582

`lt[A000040(2*n+1), A038040(n+1)]+1`
-/

namespace A068350.P17751297019967877582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068350.P17751297019967877582

noncomputable section

/-- A068350: Numbers n such that n*tau(n) > prime(2*n) where tau(n) = A000005(n).

Offset 1, canonical program `A068350.P17751297019967877582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A068350 (n : ℕ) : ℤ :=
  (A068350.P17751297019967877582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A068350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068577.P762481586230944513

`A020725(lt[A279507(n+1), ∏{e}[n+1, #+1]])`
-/

namespace A068577.P762481586230944513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068577.P762481586230944513

noncomputable section

/-- A068577: Numbers k such that tau(k)^2 > phi(k).

Offset 1, canonical program `A068577.P762481586230944513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577 (n : ℕ) : ℤ :=
  A068577.P762481586230944513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068581.P4641258875104326582

`eq[A000005(n+1), A049100(n+1)]+1`
-/

namespace A068581.P4641258875104326582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068581.P4641258875104326582

noncomputable section

/-- A068581: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_4(k) = tau(k).

Offset 1, canonical program `A068581.P4641258875104326582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A068581 (n : ℕ) : ℤ :=
  (A068581.P4641258875104326582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A068581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069082.P1777789710719873366

`eq[A009278(n+1), A272027(n+1)]+1`
-/

namespace A069082.P1777789710719873366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069082.P1777789710719873366

noncomputable section

/-- A069082: Numbers n such that sigma(n)/tau(n) has denominator 3.

Offset 1, canonical program `A069082.P1777789710719873366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A069082 (n : ℕ) : ℤ :=
  (A069082.P1777789710719873366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A069082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069083.P18395257980087635032

`eq[A009278(n+1), A239050(n+1)]+1`
-/

namespace A069083.P18395257980087635032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069083.P18395257980087635032

noncomputable section

/-- A069083: Numbers n such that sigma(n)/tau(n) has denominator 4.

Offset 1, canonical program `A069083.P18395257980087635032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A069083 (n : ℕ) : ℤ :=
  (A069083.P18395257980087635032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A069083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069231.P1710982746878742749

`eq[3, A069230(n+1)]+1`
-/

namespace A069231.P1710982746878742749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069231.P1710982746878742749

noncomputable section

/-- A069231: Numbers n such that there are exactly 3 primes p satisfying the inequality n < p < n + tau(n)^2 where tau(n) = A000005(n).

Offset 1, canonical program `A069231.P1710982746878742749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A069231 (n : ℕ) : ℤ :=
  (A069231.P1710982746878742749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A069231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069232.P17517502900018142505

`eq[2, A069230(n+1)]+1`
-/

namespace A069232.P17517502900018142505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069232.P17517502900018142505

noncomputable section

/-- A069232: Numbers n such that there are exactly 2 primes p satisfying the inequality n < p < n + tau(n)^2 where tau(n) = A000005(n).

Offset 1, canonical program `A069232.P17517502900018142505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A069232 (n : ℕ) : ℤ :=
  (A069232.P17517502900018142505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A069232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069233.P13448844956543040906

`eq[1, A069230(n+1)]+1`
-/

namespace A069233.P13448844956543040906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069233.P13448844956543040906

noncomputable section

/-- A069233: Numbers k such that there is exactly 1 prime p satisfying the inequality k < p < k + tau(k)^2 where tau(k) = A000005(k).

Offset 1, canonical program `A069233.P13448844956543040906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. -/
def A069233 (n : ℕ) : ℤ :=
  (A069233.P13448844956543040906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. -/
def A069233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069237.P17398213092990108187

`filter[A020491(n+1), A066247(#)]`
-/

namespace A069237.P17398213092990108187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A069237.P17398213092990108187

noncomputable section

/-- A069237: Composite numbers k such that tau(k) divides phi(k), where tau(k) is the number of divisors of k and phi(k) the Euler totient function.

Offset 1, canonical program `A069237.P17398213092990108187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A069237 (n : ℕ) : ℤ :=
  A069237.P17398213092990108187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A069237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069626.P14114950081823336595

`∑{d}[n+1, A007427(#)*A347405((n+1)/#)]`
-/

namespace A069626.P14114950081823336595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A347405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069626.P14114950081823336595

noncomputable section

/-- A069626: Number of sets of integers larger than one whose least common multiple is n.

Offset 1, canonical program `A069626.P14114950081823336595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069626 (n : ℕ) : ℤ :=
  A069626.P14114950081823336595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069928.P1695334417311087564

`∑[A000007(A054025(n+1))]`
-/

namespace A069928.P1695334417311087564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P1695334417311087564

noncomputable section

/-- A069928: Number of integers k, 1<=k<=n, such that tau(k) divides sigma(k) where tau(k) is the number of divisors of k and sigma(k) the sum of divisors of k.

Offset 1, canonical program `A069928.P1695334417311087564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928 (n : ℕ) : ℤ :=
  A069928.P1695334417311087564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070301.P5123961195494698283

`A013916(2+n)/2`
-/

namespace A070301.P5123961195494698283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013916 (2 + n) : ℚ) / 2

end

end A070301.P5123961195494698283

noncomputable section

/-- A070301: Numbers n such that sum of first 2n primes is prime.

Offset 1, canonical program `A070301.P5123961195494698283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070301.P5123961195494698283.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070546.P6456143545485569330

`∑[A036987(A009191(n+1)²)]`
-/

namespace A070546.P6456143545485569330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A009191 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P6456143545485569330

noncomputable section

/-- A070546: a(n) = Card( k, 0<k<=n such that k is relatively prime to tau(k)=A000005(k)).

Offset 1, canonical program `A070546.P6456143545485569330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070546 (n : ℕ) : ℤ :=
  A070546.P6456143545485569330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070770.P9804462315160195560

`A056556(n)+A056557(n)+A056558(n)`
-/

namespace A070770.P9804462315160195560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + A056557 n + A056558 n

end

end A070770.P9804462315160195560

noncomputable section

/-- A070770: b + c + d where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A070770.P9804462315160195560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070770 (n : ℕ) : ℤ :=
  A070770.P9804462315160195560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071756.P14006536037210745974

`A071739(n)+Δ[A071738(n)]`
-/

namespace A071756.P14006536037210745974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 n + (f1 (n + 1) - f1 n)

end

end A071756.P14006536037210745974

noncomputable section

/-- A071756: Expansion of (1+x^4*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071756.P14006536037210745974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756 (n : ℕ) : ℤ :=
  A071756.P14006536037210745974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072114.P17969581037488263158

`∑[floor(A007814(∑{e}[n, #]+13)/4)]`
-/

namespace A072114.P17969581037488263158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007814 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 13) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P17969581037488263158

noncomputable section

/-- A072114: Number of 3-almost primes (A014612) <= n.

Offset 0, canonical program `A072114.P17969581037488263158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072114 (n : ℕ) : ℤ :=
  A072114.P17969581037488263158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072580.P18037671959808370065

`A000040(A072577(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072580.P18037671959808370065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072577 (n + 1)).toNat

end

end A072580.P18037671959808370065

noncomputable section

/-- A072580: a(n) = A000040(A072577(n)).

Offset 1, canonical program `A072580.P18037671959808370065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072580 (n : ℕ) : ℤ :=
  A072580.P18037671959808370065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072582.P8651059492277123430

`A000040(A072579(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072582.P8651059492277123430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072579 (n + 1)).toNat

end

end A072582.P8651059492277123430

noncomputable section

/-- A072582: a(n) = A000040(A072579(n)).

Offset 1, canonical program `A072582.P8651059492277123430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072582 (n : ℕ) : ℤ :=
  A072582.P8651059492277123430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072587.P801725359986616698

`lt[1, gcd(2, A005361(n+1))]+1`
-/

namespace A072587.P801725359986616698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072587.P801725359986616698

noncomputable section

/-- A072587: Numbers having at least one prime factor with an even exponent.

Offset 1, canonical program `A072587.P801725359986616698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587 (n : ℕ) : ℤ :=
  (A072587.P801725359986616698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072604.P7451887866366379934

`∩[10*n, A072589(n+1)]`
-/

namespace A072604.P7451887866366379934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P7451887866366379934

noncomputable section

/-- A072604: Last digit of n, phi(n) and sigma(n) is 0 in base 10.

Offset 1, canonical program `A072604.P7451887866366379934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. -/
def A072604 (n : ℕ) : ℤ :=
  (A072604.P7451887866366379934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. -/
def A072604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072748.P725762028645036703

`∑[val(eq[1, A005361(n+1)]+1, 3)]`
-/

namespace A072748.P725762028645036703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P725762028645036703

noncomputable section

/-- A072748: Counting factor 3 in the first n squarefree numbers.

Offset 1, canonical program `A072748.P725762028645036703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748 (n : ℕ) : ℤ :=
  (A072748.P725762028645036703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072749.P16362701567912148616

`∑[val(eq[1, A005361(n+1)]+1, 5)]`
-/

namespace A072749.P16362701567912148616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P16362701567912148616

noncomputable section

/-- A072749: Count of factors of 5 in the first n squarefree numbers.

Offset 1, canonical program `A072749.P16362701567912148616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749 (n : ℕ) : ℤ :=
  (A072749.P16362701567912148616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073022.P10904957160869023436

`or(1, A055499(n))`
-/

namespace A073022.P10904957160869023436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055499 n)

end

end A073022.P10904957160869023436

noncomputable section

/-- A073022: Each term is the smallest prime > the sum of the previous 2 terms.

Offset 0, canonical program `A073022.P10904957160869023436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A073022 (n : ℕ) : ℤ :=
  A073022.P10904957160869023436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A073022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073800.P4820594876694067768

`(2^(n+1))%A002808(n+1)`
-/

namespace A073800.P4820594876694067768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ (n + 1) : ℤ) (A002808 (n + 1))

end

end A073800.P4820594876694067768

noncomputable section

/-- A073800: Remainder of division 2^n/c(n), where c(n)=A002808(n), the n-th composite.

Offset 1, canonical program `A073800.P4820594876694067768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A073800 (n : ℕ) : ℤ :=
  A073800.P4820594876694067768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A073800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074215.P3734655287074817867

`eq[1, A083019(n+1)]+1`
-/

namespace A074215.P3734655287074817867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074215.P3734655287074817867

noncomputable section

/-- A074215: Numbers m such that m and F(m) are relatively prime, where F(m) denotes the m-th Fibonacci number.

Offset 1, canonical program `A074215.P3734655287074817867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6418 terms. -/
def A074215 (n : ℕ) : ℤ :=
  (A074215.P3734655287074817867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6418 terms. -/
def A074215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074696.P4846602148293109203

`lt[n, A046798(n)]`
-/

namespace A074696.P4846602148293109203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P4846602148293109203

noncomputable section

/-- A074696: Numbers k such that 2^k+1 has more than k divisors (k such that A000005(2^k+1) > k).

Offset 1, canonical program `A074696.P4846602148293109203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A074696 (n : ℕ) : ℤ :=
  (A074696.P4846602148293109203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A074696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074795.P6317890157846307861

`∑[C(2, A074943(n+1)+2)]`
-/

namespace A074795.P6317890157846307861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A074943 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P6317890157846307861

noncomputable section

/-- A074795: Number of numbers k <= n such that tau(k) == 0 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A074795.P6317890157846307861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074795 (n : ℕ) : ℤ :=
  (A074795.P6317890157846307861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076368.P2146344704707354385

`A054541(n+1)%(n+1)+1`
-/

namespace A076368.P2146344704707354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 1)) (n + 1 : ℤ) + 1

end

end A076368.P2146344704707354385

noncomputable section

/-- A076368: a(1) = 1; for n > 1, a(n) = prime(n) - prime(n-1) + 1.

Offset 1, canonical program `A076368.P2146344704707354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076368 (n : ℕ) : ℤ :=
  A076368.P2146344704707354385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077649.P3331464610391563116

`A000030(A002808(n+1))`
-/

namespace A077649.P3331464610391563116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A002808 (n + 1)).toNat

end

end A077649.P3331464610391563116

noncomputable section

/-- A077649: Initial digit of composite numbers.

Offset 1, canonical program `A077649.P3331464610391563116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077649 (n : ℕ) : ℤ :=
  A077649.P3331464610391563116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078155.P2137450689880317301

`A078160(n+1)-A027423(n+1)`
-/

namespace A078155.P2137450689880317301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078160 (n + 1) - A027423 (n + 1)

end

end A078155.P2137450689880317301

noncomputable section

/-- A078155: A078152(n!).

Offset 1, canonical program `A078155.P2137450689880317301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A078155 (n : ℕ) : ℤ :=
  A078155.P2137450689880317301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A078155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078285.P17863953192826726886

`A377565(A000040(n+1))`
-/

namespace A078285.P17863953192826726886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A000040 (n + 1)).toNat

end

end A078285.P17863953192826726886

noncomputable section

/-- A078285: Least nontrivial multiple of the n-th prime beginning with 1.

Offset 1, canonical program `A078285.P17863953192826726886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078285 (n : ℕ) : ℤ :=
  A078285.P17863953192826726886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079533.P15741439843851512584

`A079532(A002808(n+1))`
-/

namespace A079533.P15741439843851512584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (A002808 (n + 1)).toNat

end

end A079533.P15741439843851512584

noncomputable section

/-- A079533: Floor(k - sqrt(k)) - phi(k) as k runs through the composite numbers (A002808).

Offset 1, canonical program `A079533.P15741439843851512584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079533 (n : ℕ) : ℤ :=
  A079533.P15741439843851512584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079538.P11266938155067841056

`A001157(n+1)-(A127473(n+1)+A035116(n+1))`
-/

namespace A079538.P11266938155067841056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (A127473 (n + 1) + A035116 (n + 1))

end

end A079538.P11266938155067841056

noncomputable section

/-- A079538: a(n) = sigma[k](n) - phi(n)^k - d(n)^k for k=2.

Offset 1, canonical program `A079538.P11266938155067841056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079538 (n : ℕ) : ℤ :=
  A079538.P11266938155067841056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079702.P8447432609584050613

`A053177(n+1)-1`
-/

namespace A079702.P8447432609584050613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1) - 1

end

end A079702.P8447432609584050613

noncomputable section

/-- A079702: Numbers 2p where p is prime and 2p + 1 is composite.

Offset 1, canonical program `A079702.P8447432609584050613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079702 (n : ℕ) : ℤ :=
  A079702.P8447432609584050613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080345.P6999835387772028756

`∑{e}[A063375(p?[xor(1, n)+1]), #]`
-/

namespace A080345.P6999835387772028756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A080345.P6999835387772028756

noncomputable section

/-- A080345: a(n) is the number of prime factors in Fibonacci(prime(n)); that is, in the Fibonacci number whose index is the n-th prime.

Offset 1, canonical program `A080345.P6999835387772028756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A080345 (n : ℕ) : ℤ :=
  (A080345.P6999835387772028756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A080345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080650.P7881313728176217598

`eq[A000005(∑{d}[n+1, #]), A062821(n+1)]+1`
-/

namespace A080650.P7881313728176217598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A080650.P7881313728176217598

noncomputable section

/-- A080650: Numbers n such that phi(n) and sigma(n) have the same number of divisors.

Offset 1, canonical program `A080650.P7881313728176217598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A080650 (n : ℕ) : ℤ :=
  (A080650.P7881313728176217598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A080650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080737.P3206243844003316961

`A052928(A067240(n+1))`
-/

namespace A080737.P3206243844003316961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A067240 (n + 1)).toNat

end

end A080737.P3206243844003316961

noncomputable section

/-- A080737: a(1) = a(2) = 0; for n > 2, the least dimension of a lattice possessing a symmetry of order n.

Offset 1, canonical program `A080737.P3206243844003316961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080737 (n : ℕ) : ℤ :=
  A080737.P3206243844003316961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081386.P2869296504086485854

`A056173(2*(1+n))`
-/

namespace A081386.P2869296504086485854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (2 * (1 + n))

end

end A081386.P2869296504086485854

noncomputable section

/-- A081386: Number of unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of those prime factors in C(2n,n), whose exponent equals one.

Offset 1, canonical program `A081386.P2869296504086485854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386 (n : ℕ) : ℤ :=
  A081386.P2869296504086485854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082510.P15430433622704550580

`filter[A082509(n+1), A079978(#)]`
-/

namespace A082510.P15430433622704550580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A082510.P15430433622704550580

noncomputable section

/-- A082510: Differences of consecutive primes being divisible by 6 in order of their appearance in A001223: terms not divisible by 6 are omitted from A001223.

Offset 1, canonical program `A082510.P15430433622704550580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510 (n : ℕ) : ℤ :=
  A082510.P15430433622704550580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082550.P6841504247689330333

`A063776(n+1)-1`
-/

namespace A082550.P6841504247689330333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) - 1

end

end A082550.P6841504247689330333

noncomputable section

/-- A082550: Number of sets of distinct positive integers whose arithmetic mean is an integer, the largest integer of the set being n.

Offset 1, canonical program `A082550.P6841504247689330333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082550 (n : ℕ) : ℤ :=
  A082550.P6841504247689330333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082554.P5000201121721519481

`p?[A043757(n+1)]`
-/

namespace A082554.P5000201121721519481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P5000201121721519481

noncomputable section

/-- A082554: Primes whose base-2 representation is a block of 1's, followed by a block of 0's, followed by a block of 1's.

Offset 1, canonical program `A082554.P5000201121721519481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A082554 (n : ℕ) : ℤ :=
  A082554.P5000201121721519481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A082554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083243.P12650602988300709870

`lt[A045763(A028310(n)), n/2]`
-/

namespace A083243.P12650602988300709870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A083243.P12650602988300709870

noncomputable section

/-- A083243: Numbers k for which there are more divisors and coprimes than other numbers less than k: A045763(k) < A073757(k) or A045763(k) < k/2 or A073757(k) > k/2.

Offset 1, canonical program `A083243.P12650602988300709870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. -/
def A083243 (n : ℕ) : ℤ :=
  (A083243.P12650602988300709870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. -/
def A083243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083244.P7512416555689218093

`lt[A008619(n), A045763(n+1)]+1`
-/

namespace A083244.P7512416555689218093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A083244.P7512416555689218093

noncomputable section

/-- A083244: k is in the sequence iff the number of numbers unrelated to k is larger than that of related ones[=divisors and coprimes] to k: A045763(k) > A073757(k) or A045763(k) > k/2 or A073757(k) < k/2.

Offset 1, canonical program `A083244.P7512416555689218093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A083244 (n : ℕ) : ℤ :=
  (A083244.P7512416555689218093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A083244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083346.P12627612333518549643

`(n+1)/A085731(n+1)`
-/

namespace A083346.P12627612333518549643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083346.P12627612333518549643

noncomputable section

/-- A083346: Denominator of r(n) = Sum(e/p: n=Product(p^e)).

Offset 1, canonical program `A083346.P12627612333518549643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083346.P12627612333518549643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083347.P11201265759039233840

`lt[1, A369052(n)+n]`
-/

namespace A083347.P11201265759039233840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369052 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083347.P11201265759039233840

noncomputable section

/-- A083347: Numbers k such that Sum(e/p: k=Product(p^e)) < 1.

Offset 1, canonical program `A083347.P11201265759039233840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083347 (n : ℕ) : ℤ :=
  (A083347.P11201265759039233840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084089.P1213480133190906852

`filter[2*n+n+1, A035263(#)]`
-/

namespace A084089.P1213480133190906852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j) = 1) n)

end

end A084089.P1213480133190906852

noncomputable section

/-- A084089: Numbers k such that k == 1 (mod 3) and the exponent of the highest power of 2 dividing k is even.

Offset 1, canonical program `A084089.P1213480133190906852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084089 (n : ℕ) : ℤ :=
  (A084089.P1213480133190906852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085144.P12304076021569329000

`(A010060(n)-A124754(n))*A106400(n)`
-/

namespace A085144.P12304076021569329000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 n - A124754 n) * A106400 n

end

end A085144.P12304076021569329000

noncomputable section

/-- A085144: a(0)=0, a(2n) = a(n)+1, a(2n+1) = -a(n).

Offset 0, canonical program `A085144.P12304076021569329000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085144 (n : ℕ) : ℤ :=
  A085144.P12304076021569329000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085145.P15264563296604716477

`eq[A010060(n), A124754(n)]`
-/

namespace A085145.P15264563296604716477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085145.P15264563296604716477

noncomputable section

/-- A085145: Positions of 0 in A085144.

Offset 1, canonical program `A085145.P15264563296604716477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A085145 (n : ℕ) : ℤ :=
  (A085145.P15264563296604716477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A085145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085704.P554284013092023272

`p?[A054541(n+1)+A000040(n+1)]`
-/

namespace A085704.P554284013092023272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P554284013092023272

noncomputable section

/-- A085704: Primes of the form prime(k)*2 - prime(k-1), k>1.

Offset 1, canonical program `A085704.P554284013092023272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A085704 (n : ℕ) : ℤ :=
  A085704.P554284013092023272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A085704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085722.P4138878208806873837

`eq[4, A193432(n)]`
-/

namespace A085722.P4138878208806873837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085722.P4138878208806873837

noncomputable section

/-- A085722: Numbers k such that k^2 + 1 is a semiprime.

Offset 1, canonical program `A085722.P4138878208806873837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A085722 (n : ℕ) : ℤ :=
  (A085722.P4138878208806873837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A085722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085918.P16969546396319122276

`p?[Δ[A049688(n)]-2]`
-/

namespace A085918.P16969546396319122276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P16969546396319122276

noncomputable section

/-- A085918: Primes p such that for some k the number of terms > 0 and < 1 in the Farey sequence of order k is p.

Offset 1, canonical program `A085918.P16969546396319122276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A085918 (n : ℕ) : ℤ :=
  A085918.P16969546396319122276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A085918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086450.P12606238815758101308

`A085765(A025480(n))`
-/

namespace A086450.P12606238815758101308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (A025480 n).toNat

end

end A086450.P12606238815758101308

noncomputable section

/-- A086450: a(0) = 1, a(2n+1) = a(n), a(2n) = a(n) + a(n-1) + ... + a(n-m) + ... where a(n<0) = 0.

Offset 0, canonical program `A086450.P12606238815758101308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086450 (n : ℕ) : ℤ :=
  A086450.P12606238815758101308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086933.P4574553822298761829

`∑{d}[n+1, A111938(#)*A374367((n+1)/#)]`
-/

namespace A086933.P4574553822298761829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111938 d * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086933.P4574553822298761829

noncomputable section

/-- A086933: Number of solutions to x^2 + y^2 = 0 mod n.

Offset 1, canonical program `A086933.P4574553822298761829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933 (n : ℕ) : ℤ :=
  A086933.P4574553822298761829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087270.P2212235212749245519

`A002808(lt[1, gcd(n+1, A018252(n+1))])`
-/

namespace A087270.P2212235212749245519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087270.P2212235212749245519

noncomputable section

/-- A087270: Solutions to gcd(x,pi(x)) = gcd(x, A000720(x)) > 1. Numbers x such that x and pi(x) have common divisor larger than one.

Offset 1, canonical program `A087270.P2212235212749245519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7765 terms. -/
def A087270 (n : ℕ) : ℤ :=
  A087270.P2212235212749245519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7765 terms. -/
def A087270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088660.P2669219846437675816

`9-A070940(A220466(n+2))`
-/

namespace A088660.P2669219846437675816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A070940 (A220466 (n + 2)).toNat

end

end A088660.P2669219846437675816

noncomputable section

/-- A088660: A logarithmic scale Sierpinski self-similar sequence.

Offset 3, canonical program `A088660.P2669219846437675816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A088660 (n : ℕ) : ℤ :=
  A088660.P2669219846437675816.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A088660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088696.P11522645216660844429

`A072339(A006257(n+1))`
-/

namespace A088696.P11522645216660844429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A006257 (n + 1)).toNat

end

end A088696.P11522645216660844429

noncomputable section

/-- A088696: Triangle read by rows, giving number of partial quotients in continued fraction representation of terms in the left branch of the infinite Stern-Brocot tree.

Offset 1, canonical program `A088696.P11522645216660844429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088696 (n : ℕ) : ℤ :=
  A088696.P11522645216660844429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088764.P11806142455434414841

`(A087680(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088764.P11806142455434414841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087680 (n + 1) - 1 : ℚ) / 2

end

end A088764.P11806142455434414841

noncomputable section

/-- A088764: a(n) = (A087680(n)-1)/2.

Offset 1, canonical program `A088764.P11806142455434414841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088764.P11806142455434414841.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088899.P5292124785369287953

`2*A105673(A050873(n+1)²)`
-/

namespace A088899.P5292124785369287953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105673 (A050873 (n + 1) ^ 2).toNat

end

end A088899.P5292124785369287953

noncomputable section

/-- A088899: T(n, k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 = 1, 1 <= k <= n; triangular array, read by rows.

Offset 1, canonical program `A088899.P5292124785369287953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899 (n : ℕ) : ℤ :=
  A088899.P5292124785369287953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089269.P15934336637969450658

`eq[1-and(2, n), A005361(n+1)]+1`
-/

namespace A089269.P15934336637969450658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089269.P15934336637969450658

noncomputable section

/-- A089269: Squarefree numbers congruent to 1 or 2 mod 4.

Offset 1, canonical program `A089269.P15934336637969450658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089269 (n : ℕ) : ℤ :=
  (A089269.P15934336637969450658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090395.P17053832850949546132

`(n+1)/A009191(n+1)`
-/

namespace A090395.P17053832850949546132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090395.P17053832850949546132

noncomputable section

/-- A090395: Denominator of d(n)/n, where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A090395.P17053832850949546132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090395.P17053832850949546132.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090498.P16429585968713607720

`Δ[A006218(∑[n])]`
-/

namespace A090498.P16429585968713607720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P16429585968713607720

noncomputable section

/-- A090498: Number of divisors of all the numbers from (1/2)n(n-1)+1 to n(n+1)/2, i.e., tau(1), tau(2)+tau(3), tau(4)+tau(5)+tau(6), tau(7)+tau(8)+tau(9)+tau(10), ..., where tau(j) is the number of divisors of j.

Offset 1, canonical program `A090498.P16429585968713607720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A090498 (n : ℕ) : ℤ :=
  A090498.P16429585968713607720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A090498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090658.P13517223795634800117

`A087915(n+1)+A089257(n+1)`
-/

namespace A090658.P13517223795634800117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + A089257 (n + 1)

end

end A090658.P13517223795634800117

noncomputable section

/-- A090658: Numbers n such that n-1 is a prime of the form 4k+3.

Offset 1, canonical program `A090658.P13517223795634800117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090658 (n : ℕ) : ℤ :=
  A090658.P13517223795634800117.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091880.P8321771741329377910

`lt[1, A005361(A000040(n+1)+2)]+1`
-/

namespace A091880.P8321771741329377910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091880.P8321771741329377910

noncomputable section

/-- A091880: A049232 indexed by A000040.

Offset 1, canonical program `A091880.P8321771741329377910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A091880 (n : ℕ) : ℤ :=
  (A091880.P8321771741329377910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A091880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092779.P649632426038707152

`∑[A088705(A047587(n+1))]`
-/

namespace A092779.P649632426038707152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A047587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092779.P649632426038707152

noncomputable section

/-- A092779: Exponent of 2 in central fibonomial coefficient A003267.

Offset 0, canonical program `A092779.P649632426038707152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A092779 (n : ℕ) : ℤ :=
  A092779.P649632426038707152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A092779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095283.P2938136508596588952

`p?[n*(A035263(n+1)+1)]`
-/

namespace A095283.P2938136508596588952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035263 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095283.P2938136508596588952

noncomputable section

/-- A095283: Primes whose binary-expansion ends with an odd number of 1's.

Offset 1, canonical program `A095283.P2938136508596588952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A095283 (n : ℕ) : ℤ :=
  A095283.P2938136508596588952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A095283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096165.P5646365465445830634

`eq[A001221(n+1), A328958(A307409(n+1)+1)]+1`
-/

namespace A096165.P5646365465445830634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (A307409 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096165.P5646365465445830634

noncomputable section

/-- A096165: Prime powers with exponents that are themselves prime powers.

Offset 1, canonical program `A096165.P5646365465445830634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5210 terms. -/
def A096165 (n : ℕ) : ℤ :=
  (A096165.P5646365465445830634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5210 terms. -/
def A096165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097363.P9710379349819535628

`A097338(1+n)+1`
-/

namespace A097363.P9710379349819535628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (1 + n) + 1

end

end A097363.P9710379349819535628

noncomputable section

/-- A097363: Positive integers n such that 2n-13 is prime.

Offset 1, canonical program `A097363.P9710379349819535628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363 (n : ℕ) : ℤ :=
  A097363.P9710379349819535628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098235.P13701616657231446329

`A013928(n+1)-A294101(n+1)`
-/

namespace A098235.P13701616657231446329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A294101 (n + 1)

end

end A098235.P13701616657231446329

noncomputable section

/-- A098235: Number of ways to write n as a sum of two ordered positive squarefree numbers.

Offset 1, canonical program `A098235.P13701616657231446329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098235 (n : ℕ) : ℤ :=
  A098235.P13701616657231446329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098387.P16796846972825336619

`∑[A054541(n+1)]+floor(log2(n+1))`
-/

namespace A098387.P16796846972825336619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P16796846972825336619

noncomputable section

/-- A098387: Prime(n)+Log2(n), where Log2=A000523.

Offset 1, canonical program `A098387.P16796846972825336619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098387 (n : ℕ) : ℤ :=
  A098387.P16796846972825336619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099033.P12921075024038566039

`A005599(n+1)-(A293162(n+1)+A293162(n+1))`
-/

namespace A099033.P12921075024038566039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (n + 1) - (A293162 (n + 1) + A293162 (n + 1))

end

end A099033.P12921075024038566039

noncomputable section

/-- A099033: a(n) = Sum_{k=1..n} (-1)^A000120(3*k).

Offset 1, canonical program `A099033.P12921075024038566039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099033 (n : ℕ) : ℤ :=
  A099033.P12921075024038566039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099862.P2294575423816901583

`A002808(2*(1+n))`
-/

namespace A099862.P2294575423816901583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * (1 + n))

end

end A099862.P2294575423816901583

noncomputable section

/-- A099862: a(n) = (2*k)-th composite number; a bisection of A002808.

Offset 1, canonical program `A099862.P2294575423816901583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A099862 (n : ℕ) : ℤ :=
  A099862.P2294575423816901583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A099862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099958.P10152713407958475996

`A049690(n)+A002088(2*n+1)`
-/

namespace A099958.P10152713407958475996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n + A002088 (2 * n + 1)

end

end A099958.P10152713407958475996

noncomputable section

/-- A099958: (1/2)*number of distinct angular positions under which an observer positioned at the center of an edge of a square lattice can see the (2n)X(2n-1) points symmetrically surrounding his position.

Offset 1, canonical program `A099958.P10152713407958475996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099958 (n : ℕ) : ℤ :=
  A099958.P10152713407958475996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100363.P13811518360178267428

`∩[A063446(n+1)-1, A063446(n+1)]`
-/

namespace A100363.P13811518360178267428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100363.P13811518360178267428

noncomputable section

/-- A100363: Numbers n such that the numbers of divisors of n,n+1 and n+2 are k,2k,4k respectively for some k.

Offset 1, canonical program `A100363.P13811518360178267428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A100363 (n : ℕ) : ℤ :=
  (A100363.P13811518360178267428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A100363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100447.P15009877531804378152

`A063776(Δ[n²])`
-/

namespace A100447.P15009877531804378152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P15009877531804378152

noncomputable section

/-- A100447: Bisection of A000031.

Offset 0, canonical program `A100447.P15009877531804378152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447 (n : ℕ) : ℤ :=
  A100447.P15009877531804378152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100736.P2598773975484320310

`A000034(n)*A100472(A004526(n))`
-/

namespace A100736.P2598773975484320310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A100472 (A004526 n).toNat

end

end A100736.P2598773975484320310

noncomputable section

/-- A100736: Inverse modulo 2 binomial transform of 3^n.

Offset 0, canonical program `A100736.P2598773975484320310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A100736 (n : ℕ) : ℤ :=
  A100736.P2598773975484320310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A100736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101207.P6474118925145984398

`Δ[A056793(A028310(n))]^A001221(n+1)`
-/

namespace A101207.P6474118925145984398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A101207.P6474118925145984398

noncomputable section

/-- A101207: For each prime power n, a(n) is the number of positive integers that have n as their greatest prime power.

Offset 1, canonical program `A101207.P6474118925145984398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A101207 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101207.P6474118925145984398.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A101207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101294.P5526318434462091228

`A045933(n+1)+2`
-/

namespace A101294.P5526318434462091228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) + 2

end

end A101294.P5526318434462091228

noncomputable section

/-- A101294: Numbers n such that omega(n-2) = omega(n-1) = omega(n) = omega(n+1) = omega(n+2).

Offset 1, canonical program `A101294.P5526318434462091228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101294 (n : ℕ) : ℤ :=
  A101294.P5526318434462091228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102548.P7683038375054225144

`∑[A057427(A035184(n+1))]`
-/

namespace A102548.P7683038375054225144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P7683038375054225144

noncomputable section

/-- A102548: Number of positive integers <= n that are expressible in the form u^2+v^2, with u and v integers.

Offset 1, canonical program `A102548.P7683038375054225144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548 (n : ℕ) : ℤ :=
  A102548.P7683038375054225144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102722.P15212480551384616353

`A052488(n+1)-A006218(n+1)`
-/

namespace A102722.P15212480551384616353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - A006218 (n + 1)

end

end A102722.P15212480551384616353

noncomputable section

/-- A102722: Given n, sum all division remainders {n/k}, with k=1,...,n. The value a(n) is given by the floor of that sum. Note that {x}:=x-[x].

Offset 1, canonical program `A102722.P15212480551384616353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102722 (n : ℕ) : ℤ :=
  A102722.P15212480551384616353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103583.P14747149407642762519

`A000007(and(A002262(n), A057728(n+1)))`
-/

namespace A103583.P14747149407642762519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A002262 n) (A057728 (n + 1))).toNat

end

end A103583.P14747149407642762519

noncomputable section

/-- A103583: Same as A103582, but read antidiagonals in upward direction.

Offset 0, canonical program `A103583.P14747149407642762519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A103583 (n : ℕ) : ℤ :=
  A103583.P14747149407642762519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A103583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103665.P17680637823505638001

`A045319(lt[A008329(n+1), A008328(n+1)])`
-/

namespace A103665.P17680637823505638001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103665.P17680637823505638001

noncomputable section

/-- A103665: Primes p such that the number of divisors of p-1 is greater than the number of divisors of p+1.

Offset 1, canonical program `A103665.P17680637823505638001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4662 terms. -/
def A103665 (n : ℕ) : ℤ :=
  A103665.P17680637823505638001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4662 terms. -/
def A103665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103842.P14597058008389114036

`1-A083651(A061579(n))`
-/

namespace A103842.P14597058008389114036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A083651 (A061579 n).toNat

end

end A103842.P14597058008389114036

noncomputable section

/-- A103842: Triangle read by rows: row n is binary expansion of 2^n-n, n >= 1.

Offset 1, canonical program `A103842.P14597058008389114036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103842 (n : ℕ) : ℤ :=
  A103842.P14597058008389114036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104152.P12944910986790038608

`∩[10*n, A102611(n+5)]`
-/

namespace A104152.P12944910986790038608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102611 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104152.P12944910986790038608

noncomputable section

/-- A104152: Numbers n such that n77 is prime and n is a multiple of ten.

Offset 1, canonical program `A104152.P12944910986790038608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A104152 (n : ℕ) : ℤ :=
  (A104152.P12944910986790038608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A104152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104768.P16790131426723885557

`4*A008441(n²+1)`
-/

namespace A104768.P16790131426723885557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 (n ^ 2 + 1)

end

end A104768.P16790131426723885557

noncomputable section

/-- A104768: Number of matrices G with entries in Z satisfying G^2=G+1 and having the form 2G=[1+p q-2n | q+2n 1-p].

Offset 0, canonical program `A104768.P16790131426723885557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768 (n : ℕ) : ℤ :=
  A104768.P16790131426723885557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105307.P2294193602787503455

`A104117(A063375(1+n))-1`
-/

namespace A105307.P2294193602787503455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A063375 (1 + n)).toNat - 1

end

end A105307.P2294193602787503455

noncomputable section

/-- A105307: Base-2 logarithm of the number of divisors of Fibonacci(n) if that number is a power of 2, otherwise -1.

Offset 1, canonical program `A105307.P2294193602787503455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A105307 (n : ℕ) : ℤ :=
  A105307.P2294193602787503455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A105307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106477.P792080474902771144

`A092249(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A106477.P792080474902771144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092249 (n + 1) - a (n - 1)

end

end A106477.P792080474902771144

noncomputable section

/-- A106477: Diagonal sums of Euler phi function sequence array.

Offset 0, canonical program `A106477.P792080474902771144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106477 (n : ℕ) : ℤ :=
  A106477.P792080474902771144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106843.P9879990537790880483

`lt[A035191(n+2), 3]+2`
-/

namespace A106843.P9879990537790880483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106843.P9879990537790880483

noncomputable section

/-- A106843: Numbers of form 3^i * prime(j), i>=0, j>0.

Offset 1, canonical program `A106843.P9879990537790880483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843 (n : ℕ) : ℤ :=
  (A106843.P9879990537790880483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107345.P952422273759515519

`C(A023416(n), A087116(n))`
-/

namespace A107345.P952422273759515519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023416 n).toNat (A087116 n).toNat

end

end A107345.P952422273759515519

noncomputable section

/-- A107345: From the binary representation of n: binomial(number of zeros, number of blocks of contiguous zeros).

Offset 0, canonical program `A107345.P952422273759515519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107345 (n : ℕ) : ℤ :=
  (A107345.P952422273759515519.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107757.P253566223839065197

`or(1, A089118(1+n))`
-/

namespace A107757.P253566223839065197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089118 (1 + n))

end

end A107757.P253566223839065197

noncomputable section

/-- A107757: Numbers k such that Sum_{j=1..k} Catalan(j) == 2 (mod 3).

Offset 1, canonical program `A107757.P253566223839065197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757 (n : ℕ) : ℤ :=
  A107757.P253566223839065197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107782.P10954405074000137432

`A023416(n)-A087116(n)`
-/

namespace A107782.P10954405074000137432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A087116 n

end

end A107782.P10954405074000137432

noncomputable section

/-- A107782: In binary representation of n: (number of zeros) minus (number of blocks of contiguous zeros).

Offset 0, canonical program `A107782.P10954405074000137432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107782 (n : ℕ) : ℤ :=
  A107782.P10954405074000137432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109923.P355927586159164800

`A099795(n+2)/A006254(n+1)`
-/

namespace A109923.P355927586159164800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099795 (n + 2) : ℚ) / (A006254 (n + 1) : ℚ)

end

end A109923.P355927586159164800

noncomputable section

/-- A109923: a(n) = lcm(1,2,3,...,prime(n))/(1 + 2 + ... + prime(n)).

Offset 2, canonical program `A109923.P355927586159164800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109923.P355927586159164800.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110494.P773873789589695875

`or(1, A084921(1+n))`
-/

namespace A110494.P773873789589695875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084921 (1 + n))

end

end A110494.P773873789589695875

noncomputable section

/-- A110494: Least k such that prime(n)^2 divides binomial(2k,k).

Offset 1, canonical program `A110494.P773873789589695875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110494 (n : ℕ) : ℤ :=
  A110494.P773873789589695875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110650.P11710532808952762772

`A110009(A092486(n))`
-/

namespace A110650.P11710532808952762772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A092486 n).toNat

end

end A110650.P11710532808952762772

noncomputable section

/-- A110650: n^2 followed by n^4 followed by n followed by n^3.

Offset 1, canonical program `A110650.P11710532808952762772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110650 (n : ℕ) : ℤ :=
  A110650.P11710532808952762772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110653.P15905790512607003949

`A110009(xor(2, n)+1)`
-/

namespace A110653.P15905790512607003949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (Nat.xor 2 n + 1)

end

end A110653.P15905790512607003949

noncomputable section

/-- A110653: n^2 followed by n^3 followed by n followed by n^4.

Offset 1, canonical program `A110653.P15905790512607003949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653 (n : ℕ) : ℤ :=
  A110653.P15905790512607003949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110661.P15569028021835169260

`A006218(A002024(n+1))-A006218(A002262(n))`
-/

namespace A110661.P15569028021835169260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002024 (n + 1)).toNat - A006218 (A002262 n).toNat

end

end A110661.P15569028021835169260

noncomputable section

/-- A110661: Triangle read by rows: T(n,k) = total number of divisors of k, k+1, ..., n (1 <= k <= n).

Offset 1, canonical program `A110661.P15569028021835169260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110661 (n : ℕ) : ℤ :=
  A110661.P15569028021835169260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111398.P16875926661935331434

`∪[A030626(n+1), A016759(n)]`
-/

namespace A111398.P16875926661935331434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P16875926661935331434

noncomputable section

/-- A111398: Numbers which are the cube roots of the product of their proper divisors.

Offset 1, canonical program `A111398.P16875926661935331434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398 (n : ℕ) : ℤ :=
  (A111398.P16875926661935331434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111653.P11815218496113125647

`A002808(∑[char[∑[n]]])`
-/

namespace A111653.P11815218496113125647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111653.P11815218496113125647

noncomputable section

/-- A111653: n-th composite number appears n times.

Offset 1, canonical program `A111653.P11815218496113125647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111653 (n : ℕ) : ℤ :=
  A111653.P11815218496113125647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111655.P15410137681632435708

`A002808(A111654(n+1))`
-/

namespace A111655.P15410137681632435708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A111654 (n + 1)).toNat

end

end A111655.P15410137681632435708

noncomputable section

/-- A111655: n-th composite number appears n-th composite number times.

Offset 1, canonical program `A111655.P15410137681632435708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655 (n : ℕ) : ℤ :=
  A111655.P15410137681632435708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111657.P14274310389912407619

`A002808(A083375(n+1))`
-/

namespace A111657.P14274310389912407619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A083375 (n + 1)).toNat

end

end A111657.P14274310389912407619

noncomputable section

/-- A111657: n-th composite number appears n-th prime times.

Offset 1, canonical program `A111657.P14274310389912407619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657 (n : ℕ) : ℤ :=
  A111657.P14274310389912407619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113866.P4859233891628937342

`p?[A064491(n+1)]`
-/

namespace A113866.P4859233891628937342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113866.P4859233891628937342

noncomputable section

/-- A113866: Primes in the sequence A064491.

Offset 1, canonical program `A113866.P4859233891628937342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866 (n : ℕ) : ℤ :=
  A113866.P4859233891628937342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114306.P2446590887034808239

`lt[A000005(n+1), A063375(n+1)]+1`
-/

namespace A114306.P2446590887034808239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A114306.P2446590887034808239

noncomputable section

/-- A114306: Numbers k such that Fibonacci(k) has more divisors than k does.

Offset 1, canonical program `A114306.P2446590887034808239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114306 (n : ℕ) : ℤ :=
  (A114306.P2446590887034808239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114439.P10768737933069284621

`eq[4, A276678(n+1)]+1`
-/

namespace A114439.P10768737933069284621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114439.P10768737933069284621

noncomputable section

/-- A114439: Indices of semiprime pentagonal numbers.

Offset 1, canonical program `A114439.P10768737933069284621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439 (n : ℕ) : ℤ :=
  (A114439.P10768737933069284621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114517.P2047956437619684237

`eq[4, A276680(n+1)]+1`
-/

namespace A114517.P2047956437619684237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114517.P2047956437619684237

noncomputable section

/-- A114517: Numbers k such that the k-th heptagonal number is semiprime.

Offset 1, canonical program `A114517.P2047956437619684237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517 (n : ℕ) : ℤ :=
  (A114517.P2047956437619684237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114519.P13629279457260616244

`A008475(A114518(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114519.P13629279457260616244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A114518 (n + 1)).toNat

end

end A114519.P13629279457260616244

noncomputable section

/-- A114519: a(n) = A008475(A114518(n)).

Offset 1, canonical program `A114519.P13629279457260616244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114518, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114519 (n : ℕ) : ℤ :=
  A114519.P13629279457260616244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114518, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114520.P13451622057905116028

`filter[A114518(n+1), A005171(#)]`
-/

namespace A114520.P13451622057905116028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A114520.P13451622057905116028

noncomputable section

/-- A114520: Composites in sequence A114518.

Offset 1, canonical program `A114520.P13451622057905116028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520 (n : ℕ) : ℤ :=
  A114520.P13451622057905116028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115077.P12763444210255588654

`(n+1)^3-A115075(n+1)`
-/

namespace A115077.P12763444210255588654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A115075 (n + 1)

end

end A115077.P12763444210255588654

noncomputable section

/-- A115077: Number of 2 X 2 symmetric matrices over Z(n) having nonzero determinant.

Offset 1, canonical program `A115077.P12763444210255588654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115077 (n : ℕ) : ℤ :=
  A115077.P12763444210255588654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115638.P2858482046055591846

`A276391(n+2)-2*A115716(n)`
-/

namespace A115638.P2858482046055591846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 2) - 2 * A115716 n

end

end A115638.P2858482046055591846

noncomputable section

/-- A115638: A Jacobsthal-related divide-and-conquer sequence.

Offset 0, canonical program `A115638.P2858482046055591846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A115638 (n : ℕ) : ℤ :=
  A115638.P2858482046055591846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A115638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115733.P2511198496598610954

`A062298(A115732(n+1)-1)`
-/

namespace A115733.P2511198496598610954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A115732 (n + 1) - 1).toNat

end

end A115733.P2511198496598610954

noncomputable section

/-- A115733: prime(n)-n, repeated (prime(n)-n) times.

Offset 1, canonical program `A115733.P2511198496598610954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733 (n : ℕ) : ℤ :=
  A115733.P2511198496598610954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116619.P620027933566622110

`A071681(1+n)+1`
-/

namespace A116619.P620027933566622110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (1 + n) + 1

end

end A116619.P620027933566622110

noncomputable section

/-- A116619: a(n) = number of ways of representing 2*prime(n) as the unordered sum of two primes.

Offset 1, canonical program `A116619.P620027933566622110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116619 (n : ℕ) : ℤ :=
  A116619.P620027933566622110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118486.P5144178606512269279

`A094290(gcd(A007283(n), A336510(n+2)))`
-/

namespace A118486.P5144178606512269279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (Int.gcd (A007283 n) (A336510 (n + 2)))

end

end A118486.P5144178606512269279

noncomputable section

/-- A118486: a(n) is the smallest prime occurring in the prime factorization of n! to an odd power.

Offset 2, canonical program `A118486.P5144178606512269279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A118486 (n : ℕ) : ℤ :=
  A118486.P5144178606512269279.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A118486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001031.P17744933148912834767

`floor((A096139(n+1)+1)/2)`
-/

namespace A001031.P17744933148912834767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096139 (n + 1) + 1 : ℚ) / 2⌋

end

end A001031.P17744933148912834767

noncomputable section

/-- A001031: Goldbach conjecture: a(n) = number of decompositions of 2n into sum of two primes (counting 1 as a prime).

Offset 1, canonical program `A001031.P17744933148912834767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001031 (n : ℕ) : ℤ :=
  A001031.P17744933148912834767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001031.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004431.P13089136488273060828

`eq[1, A353814(n+1)]+1`
-/

namespace A004431.P13089136488273060828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004431.P13089136488273060828

noncomputable section

/-- A004431: Numbers that are the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004431.P13089136488273060828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431 (n : ℕ) : ℤ :=
  (A004431.P13089136488273060828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004612.P8021407294462197357

`filter[A088232(n+1), A014578(#)]`
-/

namespace A004612.P8021407294462197357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A004612.P8021407294462197357

noncomputable section

/-- A004612: Numbers that are divisible only by primes congruent to 2 mod 3.

Offset 1, canonical program `A004612.P8021407294462197357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7375 terms. -/
def A004612 (n : ℕ) : ℤ :=
  A004612.P8021407294462197357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7375 terms. -/
def A004612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004732.P14447255711085556585

`gcd(A004730(n), A126120(n+1))`
-/

namespace A004732.P14447255711085556585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004730 n) (A126120 (n + 1))

end

end A004732.P14447255711085556585

noncomputable section

/-- A004732: Numerator of n!!/(n+3)!!.

Offset 0, canonical program `A004732.P14447255711085556585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004732 (n : ℕ) : ℤ :=
  (A004732.P14447255711085556585.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004733.P5302531551978956282

`lcm(A004730(n+3), A004731(n+2))`
-/

namespace A004733.P5302531551978956282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004730 (n + 3)) (A004731 (n + 2))

end

end A004733.P5302531551978956282

noncomputable section

/-- A004733: Denominator of n!!/(n+3)!!.

Offset 0, canonical program `A004733.P5302531551978956282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A004733 (n : ℕ) : ℤ :=
  (A004733.P5302531551978956282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A004733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004734.P8169358669113051099

`A004730(n+1)*A010685(n)`
-/

namespace A004734.P8169358669113051099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (n + 1) * A010685 n

end

end A004734.P8169358669113051099

noncomputable section

/-- A004734: Numerator of average distance traveled by n-dimensional fly.

Offset 1, canonical program `A004734.P8169358669113051099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004734 (n : ℕ) : ℤ :=
  A004734.P8169358669113051099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005595.P9132776123884695998

`(A005594(n)+A001911(n)+1)/2`
-/

namespace A005595.P9132776123884695998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005594 n + (A001911 n + 1) : ℚ) / 2

end

end A005595.P9132776123884695998

noncomputable section

/-- A005595: States of a dynamic storage system.

Offset 0, canonical program `A005595.P9132776123884695998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A005595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005595.P9132776123884695998.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A005595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005819.P8576469674546640238

`A092249(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005819.P8576469674546640238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A092249 (n + 1) + a (n - 1)

end

end A005819.P8576469674546640238

noncomputable section

/-- A005819: Number of words of length n in a certain language.

Offset 1, canonical program `A005819.P8576469674546640238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005819 (n : ℕ) : ℤ :=
  A005819.P8576469674546640238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007304.P791479370589649772

`filter[A305800(n+1), A354926(#)]`
-/

namespace A007304.P791479370589649772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A007304.P791479370589649772

noncomputable section

/-- A007304: Sphenic numbers: products of 3 distinct primes.

Offset 1, canonical program `A007304.P791479370589649772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007304 (n : ℕ) : ℤ :=
  A007304.P791479370589649772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008366.P17453301044158756852

`eq[1, gcd(n, A046324(gcd(n, n+1)))]`
-/

namespace A008366.P17453301044158756852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046324 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008366.P17453301044158756852

noncomputable section

/-- A008366: Smallest prime factor is >= 17.

Offset 1, canonical program `A008366.P17453301044158756852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008366 (n : ℕ) : ℤ :=
  (A008366.P17453301044158756852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008377.P16559859115335658880

`∑[A008376(n)]`
-/

namespace A008377.P16559859115335658880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008377.P16559859115335658880

noncomputable section

/-- A008377: Crystal ball sequence for D_9 lattice.

Offset 0, canonical program `A008377.P16559859115335658880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008377 (n : ℕ) : ℤ :=
  A008377.P16559859115335658880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008378.P205600606006481001

`A035747(n)-10*A035603(n)`
-/

namespace A008378.P205600606006481001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n - 10 * A035603 n

end

end A008378.P205600606006481001

noncomputable section

/-- A008378: Coordination sequence for D_10 lattice.

Offset 0, canonical program `A008378.P205600606006481001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008378 (n : ℕ) : ℤ :=
  A008378.P205600606006481001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009087.P18076322764317860629

`filter[A089237(n+3), A355937(#)]`
-/

namespace A009087.P18076322764317860629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P18076322764317860629

noncomputable section

/-- A009087: Numbers whose number of divisors is prime (i.e., numbers of the form p^(q-1) for primes p,q).

Offset 1, canonical program `A009087.P18076322764317860629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A009087 (n : ℕ) : ℤ :=
  A009087.P18076322764317860629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A009087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013919.P4603668033826040602

`record[(n+1)%(A227314(n+1)+n)]`
-/

namespace A013919.P4603668033826040602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227314 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013919.P4603668033826040602

noncomputable section

/-- A013919: Numbers n such that sum of first n composites is composite.

Offset 1, canonical program `A013919.P4603668033826040602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A013919 (n : ℕ) : ℤ :=
  A013919.P4603668033826040602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A013919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014238.P784091901909873668

`A008578(n+1)-A002808(n+1)`
-/

namespace A014238.P784091901909873668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A002808 (n + 1)

end

end A014238.P784091901909873668

noncomputable section

/-- A014238: a(n) = (n-th number that is 1 or prime) - (n-th composite number).

Offset 1, canonical program `A014238.P784091901909873668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014238 (n : ℕ) : ℤ :=
  A014238.P784091901909873668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014311.P14315375804036944727

`2^A056558(n)+2^A194848(n)+2^A194847(n)`
-/

namespace A014311.P14315375804036944727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056558 n : ℤ) + (2 : ℚ) ^ (A194848 n : ℤ) + (2 : ℚ) ^ (A194847 n : ℤ)

end

end A014311.P14315375804036944727

noncomputable section

/-- A014311: Numbers with exactly 3 ones in binary expansion.

Offset 1, canonical program `A014311.P14315375804036944727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014311.P14315375804036944727.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015641.P988703046572257947

`A015640(n+2)-A000332(n+1)`
-/

namespace A015641.P988703046572257947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 2) - A000332 (n + 1)

end

end A015641.P988703046572257947

noncomputable section

/-- A015641: Number of 5-tuples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015641.P988703046572257947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A015641 (n : ℕ) : ℤ :=
  A015641.P988703046572257947.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A015641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015912.P6802983766881013673

`C(10, A326588(n))`
-/

namespace A015912.P6802983766881013673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (A326588 n).toNat

end

end A015912.P6802983766881013673

noncomputable section

/-- A015912: Inverse of 1903rd cyclotomic polynomial.

Offset 0, canonical program `A015912.P6802983766881013673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A015912 (n : ℕ) : ℤ :=
  (A015912.P6802983766881013673.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A015912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016258.P11854740299282781437

`floor(6/(31-A326588(n)))+1`
-/

namespace A016258.P11854740299282781437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / (31 - A326588 n : ℚ)⌋ + 1

end

end A016258.P11854740299282781437

noncomputable section

/-- A016258: Inverse of 2249th cyclotomic polynomial.

Offset 0, canonical program `A016258.P11854740299282781437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A016258 (n : ℕ) : ℤ :=
  A016258.P11854740299282781437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A016258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019465.P1486875116561325780

`A019464(n)+A065033(n)!`
-/

namespace A019465.P1486875116561325780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (Nat.factorial (A065033 n).toNat : ℤ)

end

end A019465.P1486875116561325780

noncomputable section

/-- A019465: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 2.

Offset 0, canonical program `A019465.P1486875116561325780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019465 (n : ℕ) : ℤ :=
  A019465.P1486875116561325780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019551.P12101301121661445223

`A248038(n+1)/3+2*(n+1)`
-/

namespace A019551.P12101301121661445223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248038 (n + 1) : ℚ) / 3 + (2 * (n + 1) : ℚ)

end

end A019551.P12101301121661445223

noncomputable section

/-- A019551: a(n) is the concatenation of n and 3n.

Offset 1, canonical program `A019551.P12101301121661445223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019551.P12101301121661445223.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022306.P10782893219587604583

`A022305(n)/2`
-/

namespace A022306.P10782893219587604583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022305 n : ℚ) / 2

end

end A022306.P10782893219587604583

noncomputable section

/-- A022306: Sequence A022305 divided by 2.

Offset 0, canonical program `A022306.P10782893219587604583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022306.P10782893219587604583.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022433.P5885580325791089761

`xor(n%2, A022429(n))`
-/

namespace A022433.P5885580325791089761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A022429 n)

end

end A022433.P5885580325791089761

noncomputable section

/-- A022433: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

Offset 0, canonical program `A022433.P5885580325791089761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022433 (n : ℕ) : ℤ :=
  A022433.P5885580325791089761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022449.P12153620208137609378

`A002808(A008578(n+1))`
-/

namespace A022449.P12153620208137609378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A008578 (n + 1)).toNat

end

end A022449.P12153620208137609378

noncomputable section

/-- A022449: c(p(n)) where p(k) is k-th prime including p(1)=1 and c(k) is k-th composite number.

Offset 1, canonical program `A022449.P12153620208137609378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022449 (n : ℕ) : ℤ :=
  A022449.P12153620208137609378.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022798.P9273272214686499992

`A002808(n+1)+A008578(n+1)`
-/

namespace A022798.P9273272214686499992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A008578 (n + 1)

end

end A022798.P9273272214686499992

noncomputable section

/-- A022798: a(n) = P(n) + c(n), where P(1) = 1, P(n) = (n-1)-st prime for n >= 2, c(n) = n-th number not in sequence P.

Offset 1, canonical program `A022798.P9273272214686499992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022798 (n : ℕ) : ℤ :=
  A022798.P9273272214686499992.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022888.P5027841816580517114

`eq[A054541(n+1), A054541(n+5)]`
-/

namespace A022888.P5027841816580517114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022888.P5027841816580517114

noncomputable section

/-- A022888: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

Offset 1, canonical program `A022888.P5027841816580517114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022888 (n : ℕ) : ℤ :=
  (A022888.P5027841816580517114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022891.P5018532674174448617

`A000040(A022890(n+1))`
-/

namespace A022891.P5018532674174448617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022890 (n + 1)).toNat

end

end A022891.P5018532674174448617

noncomputable section

/-- A022891: n-th prime p(k) such that p(k) + p(k+6) = p(k+2) + p(k+4).

Offset 1, canonical program `A022891.P5018532674174448617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022891 (n : ℕ) : ℤ :=
  A022891.P5018532674174448617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023134.P11930322177379065047

`∑{d}[3^A073189(n), A007814(2*#)]`
-/

namespace A023134.P11930322177379065047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A073189 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007814 (2 * d)

end

end A023134.P11930322177379065047

noncomputable section

/-- A023134: Signature sequence of 1/Pi (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

Offset 1, canonical program `A023134.P11930322177379065047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A023134 (n : ℕ) : ℤ :=
  A023134.P11930322177379065047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A023134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023243.P12383526651012503609

`p?[A323161(A023205(n+1))-5]`
-/

namespace A023243.P12383526651012503609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A023205 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023243.P12383526651012503609

noncomputable section

/-- A023243: Primes that remain prime through 2 iterations of the function f(x) = 2x + 5.

Offset 1, canonical program `A023243.P12383526651012503609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A023243 (n : ℕ) : ℤ :=
  A023243.P12383526651012503609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A023243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023281.P8211061823659445661

`∩[A023250(n+1), A127580(n+1)]`
-/

namespace A023281.P8211061823659445661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023281.P8211061823659445661

noncomputable section

/-- A023281: Primes that remain prime through 3 iterations of function f(x) = 4x + 3.

Offset 1, canonical program `A023281.P8211061823659445661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023281 (n : ℕ) : ℤ :=
  (A023281.P8211061823659445661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023520.P5755508264215607282

`A007814(A023515(n+2))`
-/

namespace A023520.P5755508264215607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A023515 (n + 2)).toNat

end

end A023520.P5755508264215607282

noncomputable section

/-- A023520: Exponent of 2 in prime factorization of prime(n)*prime(n-1) - 1.

Offset 2, canonical program `A023520.P5755508264215607282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023520 (n : ℕ) : ℤ :=
  A023520.P5755508264215607282.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023524.P17182310907286821232

`∑{e}[A023523(n+1), gcd(11, #)]`
-/

namespace A023524.P17182310907286821232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 11 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P17182310907286821232

noncomputable section

/-- A023524: Number of distinct prime divisors of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023524.P17182310907286821232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023524 (n : ℕ) : ℤ :=
  (A023524.P17182310907286821232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023526.P14062918007433988301

`A051903(A023523(n+1))`
-/

namespace A023526.P14062918007433988301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A023523 (n + 1)).toNat

end

end A023526.P14062918007433988301

noncomputable section

/-- A023526: Greatest exponent in prime-power factorization of prime(n)*prime(n-1) + 1; a(1) = 1.

Offset 1, canonical program `A023526.P14062918007433988301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023526 (n : ℕ) : ℤ :=
  A023526.P14062918007433988301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023528.P14073637690515097702

`A007814(A023523(n+1))`
-/

namespace A023528.P14073637690515097702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A023523 (n + 1)).toNat

end

end A023528.P14073637690515097702

noncomputable section

/-- A023528: Exponent of 2 in prime factorization of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023528.P14073637690515097702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023528 (n : ℕ) : ℤ :=
  A023528.P14073637690515097702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023529.P12403804853711803308

`∑{p}[A023523(n+1), #]`
-/

namespace A023529.P12403804853711803308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P12403804853711803308

noncomputable section

/-- A023529: Sum of distinct prime divisors of p(n)*p(n-1) + 1.

Offset 1, canonical program `A023529.P12403804853711803308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023529 (n : ℕ) : ℤ :=
  (A023529.P12403804853711803308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023530.P7217981549202812787

`A001222(A023523(n+1))`
-/

namespace A023530.P7217981549202812787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A023523 (n + 1)).toNat

end

end A023530.P7217981549202812787

noncomputable section

/-- A023530: Sum of exponents in prime-power factorization of prime(n)*prime(n-1) + 1; a(1) = 1.

Offset 1, canonical program `A023530.P7217981549202812787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023530 (n : ℕ) : ℤ :=
  A023530.P7217981549202812787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023656.P10014209409590040833

`A023614(n+1)-A014306(n+2)`
-/

namespace A023656.P10014209409590040833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023614 (n + 1) - A014306 (n + 2)

end

end A023656.P10014209409590040833

noncomputable section

/-- A023656: Convolution of (F(2), F(3), F(4), ...) and A014306.

Offset 1, canonical program `A023656.P10014209409590040833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023656 (n : ℕ) : ℤ :=
  A023656.P10014209409590040833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023730.P4010073991563025299

`eq[0, A007432(A194459(n))]`
-/

namespace A023730.P4010073991563025299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007432 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P4010073991563025299

noncomputable section

/-- A023730: Numbers with a single 2 in their base 5 expansion.

Offset 1, canonical program `A023730.P4010073991563025299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. -/
def A023730 (n : ℕ) : ℤ :=
  (A023730.P4010073991563025299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. -/
def A023730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023758.P2175844917401416234

`A057728(n)+a(n-1)` with `a(0)=0`
-/

namespace A023758.P2175844917401416234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057728 n + a (n - 1)

end

end A023758.P2175844917401416234

noncomputable section

/-- A023758: Numbers of the form 2^i - 2^j with i >= j.

Offset 1, canonical program `A023758.P2175844917401416234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023758 (n : ℕ) : ℤ :=
  A023758.P2175844917401416234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024695.P2689897845449477592

`ceil(A023673(n+1)/2)`
-/

namespace A024695.P2689897845449477592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023673 (n + 1) : ℚ) / 2⌉

end

end A024695.P2689897845449477592

noncomputable section

/-- A024695: s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = A014306.

Offset 1, canonical program `A024695.P2689897845449477592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024695 (n : ℕ) : ℤ :=
  A024695.P2689897845449477592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024718.P9617034669250128048

`1/2*(1+A006134(n))`
-/

namespace A024718.P9617034669250128048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A006134 n : ℚ)

end

end A024718.P9617034669250128048

noncomputable section

/-- A024718: a(n) = (1/2)*(1 + Sum_{k=0..n} binomial(2*k, k)).

Offset 0, canonical program `A024718.P9617034669250128048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024718.P9617034669250128048.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025128.P10130047593084904901

`floor(A023673(2+n)/2)`
-/

namespace A025128.P10130047593084904901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023673 (2 + n) : ℚ) / 2⌋

end

end A025128.P10130047593084904901

noncomputable section

/-- A025128: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A014306.

Offset 1, canonical program `A025128.P10130047593084904901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025128 (n : ℕ) : ℤ :=
  A025128.P10130047593084904901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026086.P5314015387268716224

`Δ[A026070(n+3)]`
-/

namespace A026086.P5314015387268716224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026086.P5314015387268716224

noncomputable section

/-- A026086: Number of (s(0), s(1), ..., s(n)) such that s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 3; also a(n) = T(n,n-3), where T is the array defined in A026082.

Offset 4, canonical program `A026086.P5314015387268716224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086 (n : ℕ) : ℤ :=
  A026086.P5314015387268716224.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026124.P5705506064951519193

`Δ[A026123(n+2)-A026107(n+2)]`
-/

namespace A026124.P5705506064951519193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2) - A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026124.P5705506064951519193

noncomputable section

/-- A026124: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 3, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-2), where T is the array in A026120.

Offset 2, canonical program `A026124.P5705506064951519193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124 (n : ℕ) : ℤ :=
  A026124.P5705506064951519193.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026610.P12474859572976114036

`2-A026608(n+1)`
-/

namespace A026610.P12474859572976114036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026608 (n + 1)

end

end A026610.P12474859572976114036

noncomputable section

/-- A026610: a(n) = number of 1's between n-th 2 and (n+1)st 2 in A026600.

Offset 1, canonical program `A026610.P12474859572976114036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026610 (n : ℕ) : ℤ :=
  A026610.P12474859572976114036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026610.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026673.P7228674661456513878

`record[A165201(n)-A000245(n)]`
-/

namespace A026673.P7228674661456513878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026673.P7228674661456513878

noncomputable section

/-- A026673: a(n) = T(2n,n-2), T given by A026670.

Offset 2, canonical program `A026673.P7228674661456513878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026673 (n : ℕ) : ℤ :=
  A026673.P7228674661456513878.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026732.P6139381397905138302

`A026733(n)+Δ[A026733(n)/2]`
-/

namespace A026732.P6139381397905138302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A026732.P6139381397905138302

noncomputable section

/-- A026732: a(n) = Sum_{k=0..n} T(n,k), T given by A026725.

Offset 0, canonical program `A026732.P6139381397905138302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026732.P6139381397905138302.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026852.P15042434369598910668

`2*A026842(n+3)-A026844(n+4)`
-/

namespace A026852.P15042434369598910668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026842 (n + 3) - A026844 (n + 4)

end

end A026852.P15042434369598910668

noncomputable section

/-- A026852: a(n) = T(2n,n+3), T given by A026736.

Offset 3, canonical program `A026852.P15042434369598910668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026852 (n : ℕ) : ℤ :=
  A026852.P15042434369598910668.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026856.P17826378625329172233

`A026851(n+3)-A026855(n+2)`
-/

namespace A026856.P17826378625329172233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026851 (n + 3) - A026855 (n + 2)

end

end A026856.P17826378625329172233

noncomputable section

/-- A026856: a(n) = T(2n+1,n+3), T given by A026736.

Offset 2, canonical program `A026856.P17826378625329172233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026856 (n : ℕ) : ℤ :=
  A026856.P17826378625329172233.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027260.P16526017121427228600

`A026070(2*(n+3))`
-/

namespace A027260.P16526017121427228600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (2 * (n + 3))

end

end A027260.P16526017121427228600

noncomputable section

/-- A027260: a(n) = Sum_{k=0..2n-3} T(n,k) * T(n,k+3), with T given by A025177.

Offset 3, canonical program `A027260.P16526017121427228600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260 (n : ℕ) : ℤ :=
  A027260.P16526017121427228600.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027699.P13565929154440483330

`p?[A093688(n+1)]`
-/

namespace A027699.P13565929154440483330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027699.P13565929154440483330

noncomputable section

/-- A027699: Evil primes: primes with even number of 1's in their binary expansion.

Offset 1, canonical program `A027699.P13565929154440483330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. -/
def A027699 (n : ℕ) : ℤ :=
  A027699.P13565929154440483330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. -/
def A027699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027707.P15810114307957499977

`A000040(A027708(n))`
-/

namespace A027707.P15810114307957499977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027708 n).toNat

end

end A027707.P15810114307957499977

noncomputable section

/-- A027707: Primes with odd number of 1's in binary expansion such that next prime also has odd number of 1's.

Offset 0, canonical program `A027707.P15810114307957499977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A027707 (n : ℕ) : ℤ :=
  A027707.P15810114307957499977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A027707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027861.P1880857397688890924

`(A002731(n+1)-1)/2`
-/

namespace A027861.P1880857397688890924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002731 (n + 1) - 1 : ℚ) / 2

end

end A027861.P1880857397688890924

noncomputable section

/-- A027861: Numbers k such that k^2 + (k+1)^2 is prime.

Offset 1, canonical program `A027861.P1880857397688890924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027861.P1880857397688890924.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027862.P15112400691824553338

`(A002731(n+1)²+1)/2`
-/

namespace A027862.P15112400691824553338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002731 (n + 1) ^ 2 + 1 : ℚ) / 2

end

end A027862.P15112400691824553338

noncomputable section

/-- A027862: Primes of the form j^2 + (j+1)^2.

Offset 1, canonical program `A027862.P15112400691824553338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027862.P15112400691824553338.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028264.P3210421839007678457

`A028262(eq[1, A028262(n)%2])`
-/

namespace A028264.P3210421839007678457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028262 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P3210421839007678457

noncomputable section

/-- A028264: Odd elements in 3-Pascal triangle A028262 (by row).

Offset 0, canonical program `A028264.P3210421839007678457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3214 terms. -/
def A028264 (n : ℕ) : ℤ :=
  A028264.P3210421839007678457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3214 terms. -/
def A028264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028271.P5697614823521881732

`A028262(eq[0, A152815(n)])`
-/

namespace A028271.P5697614823521881732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P5697614823521881732

noncomputable section

/-- A028271: Elements to right of central elements in 3-Pascal triangle A028262.

Offset 0, canonical program `A028271.P5697614823521881732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A028271 (n : ℕ) : ℤ :=
  A028271.P5697614823521881732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A028271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028278.P8792746108487648138

`A028277(lt[1, A028277(n)])`
-/

namespace A028278.P8792746108487648138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028278.P8792746108487648138

noncomputable section

/-- A028278: Odd elements in 4-Pascal triangle A028275 (by row) that are not 1.

Offset 0, canonical program `A028278.P8792746108487648138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9162 terms. -/
def A028278 (n : ℕ) : ℤ :=
  A028278.P8792746108487648138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9162 terms. -/
def A028278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028287.P12035701407687927913

`A028277(lt[A028277(n+1), A028277(n)])`
-/

namespace A028287.P12035701407687927913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028287.P12035701407687927913

noncomputable section

/-- A028287: Odd elements (greater than 1) to right of central elements in 4-Pascal triangle A028275.

Offset 0, canonical program `A028287.P12035701407687927913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. -/
def A028287 (n : ℕ) : ℤ :=
  A028287.P12035701407687927913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. -/
def A028287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028315.P11191738613000279177

`A028313(eq[1, A028313(n)%2])`
-/

namespace A028315.P11191738613000279177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028313 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028315.P11191738613000279177

noncomputable section

/-- A028315: Odd elements in the 5-Pascal triangle A028313.

Offset 0, canonical program `A028315.P11191738613000279177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A028315 (n : ℕ) : ℤ :=
  A028315.P11191738613000279177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A028315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028954.P10015280007482825137

`lt[A007814(A211422(n)), A028609(n)]`
-/

namespace A028954.P10015280007482825137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A211422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P10015280007482825137

noncomputable section

/-- A028954: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 6 ]. (divided by 2).

Offset 1, canonical program `A028954.P10015280007482825137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A028954 (n : ℕ) : ℤ :=
  (A028954.P10015280007482825137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A028954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029235.P12349426323057609679

`A025827(n)+A029202(n)-A029213(n)`
-/

namespace A029235.P12349426323057609679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n + (A029202 n - A029213 n)

end

end A029235.P12349426323057609679

noncomputable section

/-- A029235: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029235.P12349426323057609679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029235 (n : ℕ) : ℤ :=
  A029235.P12349426323057609679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029446.P13331593502067792089

`A029411(n)+∑[A029428(n)-A029411(n)]`
-/

namespace A029446.P13331593502067792089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n - A029411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029446.P13331593502067792089

noncomputable section

/-- A029446: Expansion of 1/((1-x^9)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029446.P13331593502067792089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446 (n : ℕ) : ℤ :=
  A029446.P13331593502067792089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029632.P1805722220011820677

`A029621(lt[A029621(n), A029620(n)])`
-/

namespace A029632.P1805722220011820677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029632.P1805722220011820677

noncomputable section

/-- A029632: Numbers to right of central elements of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029632.P1805722220011820677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A029632 (n : ℕ) : ℤ :=
  A029632.P1805722220011820677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A029632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029657.P10201678815065626017

`A029669(lt[1, A029669(n)])`
-/

namespace A029657.P10201678815065626017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029657.P10201678815065626017

noncomputable section

/-- A029657: Odd numbers in (2,1)-Pascal triangle A029653 that are different from 1.

Offset 0, canonical program `A029657.P10201678815065626017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029657 (n : ℕ) : ℤ :=
  A029657.P10201678815065626017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031925.P10904826335426229622

`A031924(n+1)+6`
-/

namespace A031925.P10904826335426229622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) + 6

end

end A031925.P10904826335426229622

noncomputable section

/-- A031925: Upper prime of a difference of 6 between consecutive primes.

Offset 1, canonical program `A031925.P10904826335426229622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031925 (n : ℕ) : ℤ :=
  A031925.P10904826335426229622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031948.P11177612134455942008

`eq[A290825(n)+A088917(n), A189820(n+1)]`
-/

namespace A031948.P11177612134455942008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n + A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031948.P11177612134455942008

noncomputable section

/-- A031948: Numbers with exactly two distinct base-3 digits.

Offset 1, canonical program `A031948.P11177612134455942008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948 (n : ℕ) : ℤ :=
  (A031948.P11177612134455942008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032939.P14752265326544919997

`record[A123108(abs(A320283(n)))]`
-/

namespace A032939.P14752265326544919997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 |A320283 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P14752265326544919997

noncomputable section

/-- A032939: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032939.P14752265326544919997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A032939 (n : ℕ) : ℤ :=
  A032939.P14752265326544919997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A032939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033157.P10781485780208723287

`A185256(n+1)+1`
-/

namespace A033157.P10781485780208723287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + 1

end

end A033157.P10781485780208723287

noncomputable section

/-- A033157: Begins with (1, 4); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033157.P10781485780208723287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033157 (n : ℕ) : ℤ :=
  A033157.P10781485780208723287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033549.P17073948200287688934

`∩[A154313(n+1), A258876(n+1)]`
-/

namespace A033549.P17073948200287688934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033549.P17073948200287688934

noncomputable section

/-- A033549: Numbers k such that sum of digits of k-th prime equals sum of digits of k.

Offset 1, canonical program `A033549.P17073948200287688934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A033549 (n : ℕ) : ℤ :=
  (A033549.P17073948200287688934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A033549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033559.P14899625176266701569

`A001281(A013633(n+4))`
-/

namespace A033559.P14899625176266701569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A013633 (n + 4)).toNat

end

end A033559.P14899625176266701569

noncomputable section

/-- A033559: a(n) = (q - p)/2, where p is the largest prime < n and q is the smallest prime > n.

Offset 4, canonical program `A033559.P14899625176266701569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033559 (n : ℕ) : ℤ :=
  A033559.P14899625176266701569.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033597.P3717635916819908974

`ceil(sqrt(A013638(n+4)))`
-/

namespace A033597.P3717635916819908974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A013638 (n + 4) : ℝ)⌉

end

end A033597.P3717635916819908974

noncomputable section

/-- A033597: (nextprime(n)+prevprime(n))/2.

Offset 4, canonical program `A033597.P3717635916819908974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033597 (n : ℕ) : ℤ :=
  A033597.P3717635916819908974.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033873.P18414686977204439608

`A003617(n+1)-10^n`
-/

namespace A033873.P18414686977204439608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) - (10 ^ n : ℤ)

end

end A033873.P18414686977204439608

noncomputable section

/-- A033873: Difference between first prime > 10^n (A003617) and 10^n.

Offset 0, canonical program `A033873.P18414686977204439608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033873 (n : ℕ) : ℤ :=
  A033873.P18414686977204439608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033946.P5008854941610242731

`lt[A048050(n+1), A054541(xor(1, n)+1)]+1`
-/

namespace A033946.P5008854941610242731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033946.P5008854941610242731

noncomputable section

/-- A033946: Values of n corresponding to A033945.

Offset 1, canonical program `A033946.P5008854941610242731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A033946 (n : ℕ) : ℤ :=
  (A033946.P5008854941610242731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A033946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033992.P9984028461934439090

`A214195(n+2)`
-/

namespace A033992.P9984028461934439090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2)

end

end A033992.P9984028461934439090

noncomputable section

/-- A033992: Numbers that are divisible by exactly three different primes.

Offset 1, canonical program `A033992.P9984028461934439090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033992 (n : ℕ) : ℤ :=
  A033992.P9984028461934439090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035181.P2688111840695593634

`∑{d}[n+1, A035184(#)*A154272((n+1)/#)]`
-/

namespace A035181.P2688111840695593634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035184 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035181.P2688111840695593634

noncomputable section

/-- A035181: a(n) = Sum_{d|n} Kronecker(-9, d).

Offset 1, canonical program `A035181.P2688111840695593634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035181 (n : ℕ) : ℤ :=
  A035181.P2688111840695593634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035210.P6951438946819583816

`A035189(A000265(n+1))`
-/

namespace A035210.P6951438946819583816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A000265 (n + 1)).toNat

end

end A035210.P6951438946819583816

noncomputable section

/-- A035210: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 28.

Offset 1, canonical program `A035210.P6951438946819583816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035210 (n : ℕ) : ℤ :=
  A035210.P6951438946819583816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035252.P13797268032333054032

`lt[0, A035186(n+1)]+1`
-/

namespace A035252.P13797268032333054032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035252.P13797268032333054032

noncomputable section

/-- A035252: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 3.

Offset 1, canonical program `A035252.P13797268032333054032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A035252 (n : ℕ) : ℤ :=
  (A035252.P13797268032333054032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A035252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036069.P1575067081743271746

`gcd(2, n+1)*A004730(abs(A024000(n)))`
-/

namespace A036069.P1575067081743271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A004730 |A024000 n|.toNat

end

end A036069.P1575067081743271746

noncomputable section

/-- A036069: Denominator of rational part of Haar measure on Grassmannian space G(n,1).

Offset 0, canonical program `A036069.P1575067081743271746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069 (n : ℕ) : ℤ :=
  A036069.P1575067081743271746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036537.P3717985819955807243

`eq[1, A359473(n+1)]+1`
-/

namespace A036537.P3717985819955807243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036537.P3717985819955807243

noncomputable section

/-- A036537: Numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A036537.P3717985819955807243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036537 (n : ℕ) : ℤ :=
  (A036537.P3717985819955807243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037888.P3332479234474473082

`A000120(A370427(n+1))`
-/

namespace A037888.P3332479234474473082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A370427 (n + 1)).toNat

end

end A037888.P3332479234474473082

noncomputable section

/-- A037888: a(n) = (1/2)*Sum_{i} |d(i) - e(i)| where Sum_{i} d(i)*2^i is the base-2 representation of n and e(i) are digits d(i) in reverse order.

Offset 1, canonical program `A037888.P3332479234474473082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037888 (n : ℕ) : ℤ :=
  A037888.P3332479234474473082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037897.P13729740448367622146

`A190592(n)-A290825(n)`
-/

namespace A037897.P13729740448367622146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n - A290825 n

end

end A037897.P13729740448367622146

noncomputable section

/-- A037897: a(n) = (Greatest base 3 digit of n) - (least base 3 digit of n).

Offset 0, canonical program `A037897.P13729740448367622146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190592, A290825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037897 (n : ℕ) : ℤ :=
  A037897.P13729740448367622146.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190592, A290825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037958.P1538083685878928086

`A037954(n+1)-A037957(n)`
-/

namespace A037958.P1538083685878928086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) - A037957 n

end

end A037958.P1538083685878928086

noncomputable section

/-- A037958: a(n) = binomial(n, floor((n-8)/2)).

Offset 0, canonical program `A037958.P1538083685878928086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958 (n : ℕ) : ℤ :=
  A037958.P1538083685878928086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038302.P8800221940297156874

`A038296(n)*A059268(n)`
-/

namespace A038302.P8800221940297156874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038296 n * A059268 n

end

end A038302.P8800221940297156874

noncomputable section

/-- A038302: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*12^j.

Offset 0, canonical program `A038302.P8800221940297156874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A038302 (n : ℕ) : ℤ :=
  A038302.P8800221940297156874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A038302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038512.P8659192709119909117

`∩[A008365(n+1), A038510(n+1)]`
-/

namespace A038512.P8659192709119909117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P8659192709119909117

noncomputable section

/-- A038512: Nonprime numbers with smallest prime factor >= 13.

Offset 1, canonical program `A038512.P8659192709119909117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5048 terms. -/
def A038512 (n : ℕ) : ℤ :=
  (A038512.P8659192709119909117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5048 terms. -/
def A038512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039276.P4466623649426209317

`∩[A031452(n+1), A081605(n+1)]`
-/

namespace A039276.P4466623649426209317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039276.P4466623649426209317

noncomputable section

/-- A039276: Numbers whose base-3 representation has the same nonzero number of 0's and 2's.

Offset 1, canonical program `A039276.P4466623649426209317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276 (n : ℕ) : ℤ :=
  (A039276.P4466623649426209317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039571.P14324908586718389656

`∩[A039011(n+1), A039012(n+1)]`
-/

namespace A039571.P14324908586718389656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039571.P14324908586718389656

noncomputable section

/-- A039571: Numbers whose base-5 representation has the same number of 1's, 3's and 4's.

Offset 1, canonical program `A039571.P14324908586718389656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2776 terms. -/
def A039571 (n : ℕ) : ℤ :=
  (A039571.P14324908586718389656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2776 terms. -/
def A039571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039739.P9876725710224219756

`2*A039734(n+2)-A000040(n+2)`
-/

namespace A039739.P9876725710224219756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - A000040 (n + 2)

end

end A039739.P9876725710224219756

noncomputable section

/-- A039739: a(n) = 2*q-prime(n), where q is the prime < prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039739.P9876725710224219756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039734, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039739 (n : ℕ) : ℤ :=
  A039739.P9876725710224219756.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039734, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039739.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039787.P16450846264916428948

`p?[A049196(n+1)]`
-/

namespace A039787.P16450846264916428948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039787.P16450846264916428948

noncomputable section

/-- A039787: Primes p such that p-1 is squarefree.

Offset 1, canonical program `A039787.P16450846264916428948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6520 terms. -/
def A039787 (n : ℕ) : ℤ :=
  A039787.P16450846264916428948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6520 terms. -/
def A039787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043575.P18156973941041410115

`filter[A043740(n+2), A354034(#)]`
-/

namespace A043575.P18156973941041410115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A043575.P18156973941041410115

noncomputable section

/-- A043575: Numbers whose base-2 representation has exactly 8 runs.

Offset 1, canonical program `A043575.P18156973941041410115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A043575 (n : ℕ) : ℤ :=
  A043575.P18156973941041410115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A043575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043707.P15463448008099908181

`eq[1, A043556(n+1)%2]+1`
-/

namespace A043707.P15463448008099908181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043707.P15463448008099908181

noncomputable section

/-- A043707: Numbers whose base-4 representation has an odd number of runs.

Offset 1, canonical program `A043707.P15463448008099908181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. -/
def A043707 (n : ℕ) : ℤ :=
  (A043707.P15463448008099908181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. -/
def A043707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043749.P7887940350391377613

`record[A000265(A043750(n+1))]`
-/

namespace A043749.P7887940350391377613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043749.P7887940350391377613

noncomputable section

/-- A043749: Numbers n such that number of runs in the base 2 representation of n is congruent to 3 mod 8.

Offset 1, canonical program `A043749.P7887940350391377613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3854 terms. -/
def A043749 (n : ℕ) : ℤ :=
  A043749.P7887940350391377613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3854 terms. -/
def A043749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043827.P12446963303425026454

`lt[1, A043556(n)%3]`
-/

namespace A043827.P12446963303425026454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043827.P12446963303425026454

noncomputable section

/-- A043827: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 3.

Offset 1, canonical program `A043827.P12446963303425026454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A043827 (n : ℕ) : ℤ :=
  (A043827.P12446963303425026454.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A043827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043828.P14695401919045554271

`eq[4, A043556(n)]`
-/

namespace A043828.P14695401919045554271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043828.P14695401919045554271

noncomputable section

/-- A043828: Number of runs in the base 4 representation of n is congruent to 0 mod 4.

Offset 1, canonical program `A043828.P14695401919045554271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A043828 (n : ℕ) : ℤ :=
  (A043828.P14695401919045554271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A043828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043830.P1846640742485076920

`eq[2, A043556(n)%4]`
-/

namespace A043830.P1846640742485076920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043830.P1846640742485076920

noncomputable section

/-- A043830: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 4.

Offset 1, canonical program `A043830.P1846640742485076920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. -/
def A043830 (n : ℕ) : ℤ :=
  (A043830.P1846640742485076920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. -/
def A043830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043831.P10100822430041794463

`lt[2, A043556(n)%4]`
-/

namespace A043831.P10100822430041794463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043831.P10100822430041794463

noncomputable section

/-- A043831: Numbers k such that number of runs in the base 4 representation of k is congruent to 3 mod 4.

Offset 1, canonical program `A043831.P10100822430041794463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. -/
def A043831 (n : ℕ) : ℤ :=
  (A043831.P10100822430041794463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. -/
def A043831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043835.P7473383101920435064

`eq[3, A043556(n)]`
-/

namespace A043835.P7473383101920435064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043835.P7473383101920435064

noncomputable section

/-- A043835: Numbers k such that number of runs in the base 4 representation of k is congruent to 3 mod 5.

Offset 1, canonical program `A043835.P7473383101920435064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. -/
def A043835 (n : ℕ) : ℤ :=
  (A043835.P7473383101920435064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. -/
def A043835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045023.P5595946791580993158

`∩[A023707(n+1), A023709(n+1)]`
-/

namespace A045023.P5595946791580993158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045023.P5595946791580993158

noncomputable section

/-- A045023: Numbers whose base-4 representation contains exactly two 0's and no 1's.

Offset 1, canonical program `A045023.P5595946791580993158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. -/
def A045023 (n : ℕ) : ℤ :=
  (A045023.P5595946791580993158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. -/
def A045023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045024.P844426884358783869

`∩[A023707(n+1), A023710(n+1)]`
-/

namespace A045024.P844426884358783869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045024.P844426884358783869

noncomputable section

/-- A045024: Numbers whose base-4 representation contains exactly two 0's and one 1.

Offset 1, canonical program `A045024.P844426884358783869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A045024 (n : ℕ) : ℤ :=
  (A045024.P844426884358783869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A045024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045043.P7689654534827955149

`∩[A023714(n+1), A043333(n+1)]`
-/

namespace A045043.P7689654534827955149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P7689654534827955149

noncomputable section

/-- A045043: Numbers whose base-4 representation contains exactly one 0 and one 2.

Offset 1, canonical program `A045043.P7689654534827955149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. -/
def A045043 (n : ℕ) : ℤ :=
  (A045043.P7689654534827955149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. -/
def A045043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045047.P1732137570799864261

`∩[A023707(n+1), A023713(n+1)]`
-/

namespace A045047.P1732137570799864261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045047.P1732137570799864261

noncomputable section

/-- A045047: Numbers whose base-4 representation contains exactly two 0's and no 2's.

Offset 1, canonical program `A045047.P1732137570799864261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A045047 (n : ℕ) : ℤ :=
  (A045047.P1732137570799864261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A045047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045048.P8487223918955922511

`∩[A023707(n+1), A023714(n+1)]`
-/

namespace A045048.P8487223918955922511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045048.P8487223918955922511

noncomputable section

/-- A045048: Numbers whose base-4 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045048.P8487223918955922511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A045048 (n : ℕ) : ℤ :=
  (A045048.P8487223918955922511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A045048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045049.P13394764454737454766

`∩[A023707(n+1), A023715(n+1)]`
-/

namespace A045049.P13394764454737454766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P13394764454737454766

noncomputable section

/-- A045049: Numbers whose base-4 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045049.P13394764454737454766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A045049 (n : ℕ) : ℤ :=
  (A045049.P13394764454737454766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A045049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045062.P7454481286317021680

`∩[A023705(n+1), A031466(n+1)]`
-/

namespace A045062.P7454481286317021680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045062.P7454481286317021680

noncomputable section

/-- A045062: Numbers whose base-4 representation contains no 0's and exactly one 3.

Offset 1, canonical program `A045062.P7454481286317021680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A045062 (n : ℕ) : ℤ :=
  (A045062.P7454481286317021680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A045062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045072.P10813795932210976576

`∩[A023707(n+1), A031462(n+1)]`
-/

namespace A045072.P10813795932210976576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045072.P10813795932210976576

noncomputable section

/-- A045072: Numbers whose base-4 representation contains exactly two 0's and one 3.

Offset 1, canonical program `A045072.P10813795932210976576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A045072 (n : ℕ) : ℤ :=
  (A045072.P10813795932210976576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A045072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045073.P1760494440290000566

`∩[A023707(n+1), A023719(n+1)]`
-/

namespace A045073.P1760494440290000566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P1760494440290000566

noncomputable section

/-- A045073: Numbers whose base-4 representation contains exactly two 0's and two 3's.

Offset 1, canonical program `A045073.P1760494440290000566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A045073 (n : ℕ) : ℤ :=
  (A045073.P1760494440290000566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A045073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045074.P14332834374997068054

`∩[A023707(n+1), A031466(n+1)]`
-/

namespace A045074.P14332834374997068054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045074.P14332834374997068054

noncomputable section

/-- A045074: Numbers whose base-4 representation contains exactly two 0's and three 3's.

Offset 1, canonical program `A045074.P14332834374997068054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. -/
def A045074 (n : ℕ) : ℤ :=
  (A045074.P14332834374997068054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. -/
def A045074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045154.P2972587594266397419

`eq[48, A338854(n)]`
-/

namespace A045154.P2972587594266397419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045154.P2972587594266397419

noncomputable section

/-- A045154: Numbers whose base-4 representation contains exactly four 2's and one 3.

Offset 1, canonical program `A045154.P2972587594266397419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A045154 (n : ℕ) : ℤ :=
  (A045154.P2972587594266397419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A045154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045166.P14364888551667959188

`∩[A023723(n+1), A023726(n+1)]`
-/

namespace A045166.P14364888551667959188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045166.P14364888551667959188

noncomputable section

/-- A045166: Numbers whose base-5 representation contains exactly two 0's and one 1.

Offset 1, canonical program `A045166.P14364888551667959188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045166 (n : ℕ) : ℤ :=
  (A045166.P14364888551667959188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045182.P1485399016686548528

`∩[A023723(n+1), A023731(n+1)]`
-/

namespace A045182.P1485399016686548528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P1485399016686548528

noncomputable section

/-- A045182: Numbers whose base-5 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045182.P1485399016686548528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A045182 (n : ℕ) : ℤ :=
  (A045182.P1485399016686548528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A045182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045196.P16747927741256463631

`∩[A023723(n+1), A023734(n+1)]`
-/

namespace A045196.P16747927741256463631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045196.P16747927741256463631

noncomputable section

/-- A045196: Numbers whose base-5 representation contains exactly two 0's and one 3.

Offset 1, canonical program `A045196.P16747927741256463631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A045196 (n : ℕ) : ℤ :=
  (A045196.P16747927741256463631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A045196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045211.P7222316058856117847

`∩[A023723(n+1), A023738(n+1)]`
-/

namespace A045211.P7222316058856117847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045211.P7222316058856117847

noncomputable section

/-- A045211: Numbers whose base-5 representation contains exactly two 0's and one 4.

Offset 1, canonical program `A045211.P7222316058856117847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A045211 (n : ℕ) : ℤ :=
  (A045211.P7222316058856117847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A045211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045212.P3245334097446540218

`∩[A023723(n+1), A023739(n+1)]`
-/

namespace A045212.P3245334097446540218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P3245334097446540218

noncomputable section

/-- A045212: Numbers whose base-5 representation contains exactly two 0's and two 4's.

Offset 1, canonical program `A045212.P3245334097446540218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. -/
def A045212 (n : ℕ) : ℤ :=
  (A045212.P3245334097446540218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. -/
def A045212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045257.P11675950162780075674

`∩[A023739(n+1), A039012(n+1)]`
-/

namespace A045257.P11675950162780075674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045257.P11675950162780075674

noncomputable section

/-- A045257: Numbers whose base-5 representation contains exactly two 1's and two 4's.

Offset 1, canonical program `A045257.P11675950162780075674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A045257 (n : ℕ) : ℤ :=
  (A045257.P11675950162780075674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A045257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046791.P4309065801860843159

`A038387(A046790(n+1))`
-/

namespace A046791.P4309065801860843159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A046790 (n + 1)).toNat

end

end A046791.P4309065801860843159

noncomputable section

/-- A046791: A046790 has several definitions, one of which is: "Numbers i such that there is a smaller positive number j such that (i+j)/2 and sqrt(i*j) are integers". The present sequence gives the smallest choice for j.

Offset 1, canonical program `A046791.P4309065801860843159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. -/
def A046791 (n : ℕ) : ℤ :=
  A046791.P4309065801860843159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. -/
def A046791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046841.P16270392437407762220

`eq[A000005(A000203(n+1)), A073809(n+1)]+1`
-/

namespace A046841.P16270392437407762220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046841.P16270392437407762220

noncomputable section

/-- A046841: Numbers whose sum of divisors divides their sum of cubes of divisors.

Offset 1, canonical program `A046841.P16270392437407762220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046841 (n : ℕ) : ℤ :=
  (A046841.P16270392437407762220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048702.P3727629024629284360

`A048701(n)/3`
-/

namespace A048702.P3727629024629284360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048701 n : ℚ) / 3

end

end A048702.P3727629024629284360

noncomputable section

/-- A048702: Binary palindromes of even length divided by 3.

Offset 0, canonical program `A048702.P3727629024629284360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048702 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048702.P3727629024629284360.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048702.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049080.P2111203104462640786

`A000040(A049079(n+1))`
-/

namespace A049080.P2111203104462640786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049079 (n + 1)).toNat

end

end A049080.P2111203104462640786

noncomputable section

/-- A049080: Primes prime(k) for which A049076(k) = 4.

Offset 1, canonical program `A049080.P2111203104462640786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049080 (n : ℕ) : ℤ :=
  A049080.P2111203104462640786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049401.P120854376069459975

`∑{#}[n, C(n, #)*A138349(#)]`
-/

namespace A049401.P120854376069459975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A138349 k

end

end A049401.P120854376069459975

noncomputable section

/-- A049401: Number of Young tableaux of height <= 5.

Offset 0, canonical program `A049401.P120854376069459975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A049401 (n : ℕ) : ℤ :=
  A049401.P120854376069459975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A049401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049641.P593643033419943837

`Δ[A049688(n%A008619(n))]`
-/

namespace A049641.P593643033419943837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 (Int.tmod (n : ℤ) (A008619 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049641.P593643033419943837

noncomputable section

/-- A049641: a(n) = Sum_{i=0..n} ((-1)^i)*T(i,n-i), array T as in A049639.

Offset 0, canonical program `A049641.P593643033419943837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A049641 (n : ℕ) : ℤ :=
  A049641.P593643033419943837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A049641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049648.P396275532436959907

`(n+1)²+n-A049621(n)`
-/

namespace A049648.P396275532436959907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n : ℤ) - A049621 n)

end

end A049648.P396275532436959907

noncomputable section

/-- A049648: T(n,n+1), array T as in A049687 and T(2n,2n+2), array T given by A049639.

Offset 0, canonical program `A049648.P396275532436959907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A049648 (n : ℕ) : ℤ :=
  A049648.P396275532436959907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A049648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050146.P3244852620839180404

`A028310(n)*A155069(n)`
-/

namespace A050146.P3244852620839180404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A155069 n

end

end A050146.P3244852620839180404

noncomputable section

/-- A050146: a(n) = T(n,n), array T as in A050143.

Offset 0, canonical program `A050146.P3244852620839180404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A050146 (n : ℕ) : ℤ :=
  A050146.P3244852620839180404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A050146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050207.P7324394721812478698

`p?[A050200(n)]`
-/

namespace A050207.P7324394721812478698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050207.P7324394721812478698

noncomputable section

/-- A050207: Primes of the form p + (smallest prime >= p+1) + (smallest prime >= p+3) where p is a prime.

Offset 1, canonical program `A050207.P7324394721812478698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A050207 (n : ℕ) : ℤ :=
  A050207.P7324394721812478698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A050207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050459.P9123758851676713191

`A050451(n+1)-A050454(n+1)`
-/

namespace A050459.P9123758851676713191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050451 (n + 1) - A050454 (n + 1)

end

end A050459.P9123758851676713191

noncomputable section

/-- A050459: a(n) = Sum_{d|n, d==1 mod 4} d^3 - Sum_{d|n, d==3 mod 4} d^3.

Offset 1, canonical program `A050459.P9123758851676713191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050451, A050454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050459 (n : ℕ) : ℤ :=
  A050459.P9123758851676713191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050451, A050454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050608.P3304430570906467242

`eq[1, gcd(7, A292441(n))]`
-/

namespace A050608.P3304430570906467242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A292441 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050608.P3304430570906467242

noncomputable section

/-- A050608: Numbers k such that base 7 expansion matches (0|1|2|3)*((0|1|2)(4|5|6))?(0|1|2|3)*.

Offset 1, canonical program `A050608.P3304430570906467242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A050608 (n : ℕ) : ℤ :=
  (A050608.P3304430570906467242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A050608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051358.P15468894680895557215

`A028279(n)/2`
-/

namespace A051358.P15468894680895557215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028279 n : ℚ) / 2

end

end A051358.P15468894680895557215

noncomputable section

/-- A051358: (Terms in A028279)/2.

Offset 0, canonical program `A051358.P15468894680895557215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051358 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051358.P15468894680895557215.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051429.P11525553807131597753

`A029659(n)/2`
-/

namespace A051429.P11525553807131597753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029659 n : ℚ) / 2

end

end A051429.P11525553807131597753

noncomputable section

/-- A051429: (Terms in A029659)/2.

Offset 0, canonical program `A051429.P11525553807131597753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051429.P11525553807131597753.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051838.P6178273382808269284

`eq[1, A121755(n+1)]+1`
-/

namespace A051838.P6178273382808269284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051838.P6178273382808269284

noncomputable section

/-- A051838: Numbers k such that sum of first k primes divides product of first k primes.

Offset 1, canonical program `A051838.P6178273382808269284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A051838 (n : ℕ) : ℤ :=
  (A051838.P6178273382808269284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A051838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052158.P11227404252294711369

`p?[A031924(n+1)%3*A031924(n+1)]`
-/

namespace A052158.P11227404252294711369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031924 (n + 1)) 3 * A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052158.P11227404252294711369

noncomputable section

/-- A052158: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+1 form.

Offset 1, canonical program `A052158.P11227404252294711369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. -/
def A052158 (n : ℕ) : ℤ :=
  A052158.P11227404252294711369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. -/
def A052158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052159.P16139146045707292468

`∩[A015914(n+1), A121762(n+1)]`
-/

namespace A052159.P16139146045707292468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P16139146045707292468

noncomputable section

/-- A052159: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+5 form.

Offset 1, canonical program `A052159.P16139146045707292468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A052159 (n : ℕ) : ℤ :=
  (A052159.P16139146045707292468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A052159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052217.P2954763341326095250

`10^A056556(n)+10^A056557(n)+10^A056558(n)`
-/

namespace A052217.P2954763341326095250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A056556 n : ℤ) + (10 : ℚ) ^ (A056557 n : ℤ) + (10 : ℚ) ^ (A056558 n : ℤ)

end

end A052217.P2954763341326095250

noncomputable section

/-- A052217: Numbers whose sum of digits is 3.

Offset 1, canonical program `A052217.P2954763341326095250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052217.P2954763341326095250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053207.P15737369054491189776

`A051598(n)-A007318(n)`
-/

namespace A053207.P15737369054491189776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051598 n - A007318 n

end

end A053207.P15737369054491189776

noncomputable section

/-- A053207: Rows of triangle formed using Pascal's rule except begin n-th row with n and end it with n+1.

Offset 0, canonical program `A053207.P15737369054491189776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053207 (n : ℕ) : ℤ :=
  A053207.P15737369054491189776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053321.P5461639541515570763

`Δ[A031924(1+n)]`
-/

namespace A053321.P5461639541515570763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P5461639541515570763

noncomputable section

/-- A053321: First differences of A031924.

Offset 1, canonical program `A053321.P5461639541515570763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321 (n : ℕ) : ℤ :=
  A053321.P5461639541515570763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053323.P4529439221988552431

`Δ[A031929(n)]`
-/

namespace A053323.P4529439221988552431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P4529439221988552431

noncomputable section

/-- A053323: First differences of A031928.

Offset 1, canonical program `A053323.P4529439221988552431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053323 (n : ℕ) : ℤ :=
  A053323.P4529439221988552431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053656.P15777476116109761211

`A000029(n+1)-A016116(n)`
-/

namespace A053656.P15777476116109761211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A016116 n

end

end A053656.P15777476116109761211

noncomputable section

/-- A053656: Number of cyclic graphs with oriented edges on n nodes (up to symmetry of dihedral group).

Offset 1, canonical program `A053656.P15777476116109761211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A053656 (n : ℕ) : ℤ :=
  A053656.P15777476116109761211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A053656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053694.P6109795769144306558

`∑{d}[n+1, A035207(#)*A275966((n+1)/#)]`
-/

namespace A053694.P6109795769144306558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035207 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053694.P6109795769144306558

noncomputable section

/-- A053694: Number of self-conjugate 5-core partitions of n.

Offset 0, canonical program `A053694.P6109795769144306558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053694 (n : ℕ) : ℤ :=
  A053694.P6109795769144306558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053997.P5947380031336642127

`Δ[A109724(A004273(n))]`
-/

namespace A053997.P5947380031336642127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P5947380031336642127

noncomputable section

/-- A053997: Sum of primes in n-th shell of prime spiral.

Offset 0, canonical program `A053997.P5947380031336642127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. -/
def A053997 (n : ℕ) : ℤ :=
  A053997.P5947380031336642127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. -/
def A053997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054155.P7253950207557350807

`∑{d}[n+1, A000029(#-1)]`
-/

namespace A054155.P7253950207557350807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000029 (d - 1)

end

end A054155.P7253950207557350807

noncomputable section

/-- A054155: Inverse Moebius transform of A000029 (starting at term 0).

Offset 0, canonical program `A054155.P7253950207557350807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054155 (n : ℕ) : ℤ :=
  A054155.P7253950207557350807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054156.P13461329148621851711

`∑{d}[n+1, A000029(#-1)*A008683((n+1)/#)]`
-/

namespace A054156.P13461329148621851711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000029 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054156.P13461329148621851711

noncomputable section

/-- A054156: Moebius transform of A000029 (starting at term 0).

Offset 0, canonical program `A054156.P13461329148621851711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054156 (n : ℕ) : ℤ :=
  A054156.P13461329148621851711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054192.P11548444923901900807

`∑{#}[n, C(n, #)*A000029(#)]`
-/

namespace A054192.P11548444923901900807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000029 k

end

end A054192.P11548444923901900807

noncomputable section

/-- A054192: Binomial transform of A000029.

Offset 0, canonical program `A054192.P11548444923901900807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A054192 (n : ℕ) : ℤ :=
  A054192.P11548444923901900807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A054192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054398.P13802336251738312636

`A276391(A057716(n+1))`
-/

namespace A054398.P13802336251738312636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A057716 (n + 1)).toNat

end

end A054398.P13802336251738312636

noncomputable section

/-- A054398: Define a sequence of 2^n X 2^n squares as follows: S_0 = [1], S_1 = [1,2; 3,4]; S_2 = [1,2,5,6; 3,4,7,8; 9,10,13,14; 11,12,15,16], etc.; sequence gives triangular array whose n-th row gives differences between successive columns of n-th square.

Offset 1, canonical program `A054398.P13802336251738312636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054398 (n : ℕ) : ℤ :=
  A054398.P13802336251738312636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054403.P10855021196834469793

`∪[A042988(n), A070884(n)]`
-/

namespace A054403.P10855021196834469793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P10855021196834469793

noncomputable section

/-- A054403: Result of third stage of sieve of Eratosthenes (after eliminating multiples of 2, 3 and 5).

Offset 1, canonical program `A054403.P10855021196834469793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054403 (n : ℕ) : ℤ :=
  (A054403.P10855021196834469793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054523.P592142950605229816

`A130207(A286158(n+1))`
-/

namespace A054523.P592142950605229816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130207 (A286158 (n + 1)).toNat

end

end A054523.P592142950605229816

noncomputable section

/-- A054523: Triangle read by rows: T(n,k) = phi(n/k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054523.P592142950605229816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054523 (n : ℕ) : ℤ :=
  A054523.P592142950605229816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055435.P11643938149336222448

`(A053061(n+1)-A055436(n+1))/18`
-/

namespace A055435.P11643938149336222448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053061 (n + 1) - A055436 (n + 1) : ℚ) / 18

end

end A055435.P11643938149336222448

noncomputable section

/-- A055435: (1/18)*Difference between concatenation of n and n^2 and concatenation of n^2 and n.

Offset 1, canonical program `A055435.P11643938149336222448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055435.P11643938149336222448.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055636.P15468858473462785345

`∑[A144494(n+1)]`
-/

namespace A055636.P15468858473462785345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P15468858473462785345

noncomputable section

/-- A055636: Partial sums of A144494.

Offset 1, canonical program `A055636.P15468858473462785345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055636 (n : ℕ) : ℤ :=
  A055636.P15468858473462785345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055825.P5370810076605827676

`Δ[A002002(n)]+n*A155069(n)`
-/

namespace A055825.P5370810076605827676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A155069 n

end

end A055825.P5370810076605827676

noncomputable section

/-- A055825: a(n) = T(2n+1,n), array T as in A055818.

Offset 0, canonical program `A055825.P5370810076605827676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A055825 (n : ℕ) : ℤ :=
  A055825.P5370810076605827676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A055825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056140.P5331885712081055835

`A000290(n+3)-A013638(n+3)`
-/

namespace A056140.P5331885712081055835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 3) - A013638 (n + 3)

end

end A056140.P5331885712081055835

noncomputable section

/-- A056140: a(n) = n^2 - previousprime(n)*nextprime(n), for n>2.

Offset 3, canonical program `A056140.P5331885712081055835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056140 (n : ℕ) : ℤ :=
  A056140.P5331885712081055835.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056142.P638140004868031470

`A059995(A275238(n))`
-/

namespace A056142.P638140004868031470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A275238 n).toNat

end

end A056142.P638140004868031470

noncomputable section

/-- A056142: Concatenate n, floor[n/10], floor[n/100] ... (but do not continue if floor[.]=0).

Offset 0, canonical program `A056142.P638140004868031470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142 (n : ℕ) : ℤ :=
  A056142.P638140004868031470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056342.P16520513500978853199

`A000029(n+1)-2`
-/

namespace A056342.P16520513500978853199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - 2

end

end A056342.P16520513500978853199

noncomputable section

/-- A056342: Number of bracelets of length n using exactly two different colored beads.

Offset 1, canonical program `A056342.P16520513500978853199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056342 (n : ℕ) : ℤ :=
  A056342.P16520513500978853199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056349.P11554127501764149273

`∑{d}[n+1, A008683(#)*A056343((n+1)/#)]`
-/

namespace A056349.P11554127501764149273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056349.P11554127501764149273

noncomputable section

/-- A056349: Number of primitive (period n) bracelets using exactly three different colored beads.

Offset 1, canonical program `A056349.P11554127501764149273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A056349 (n : ℕ) : ℤ :=
  A056349.P11554127501764149273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A056349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056466.P15122684330933352600

`∑{d}[n+1, A008683(#)*A056456((n+1)/#)]`
-/

namespace A056466.P15122684330933352600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056456 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056466.P15122684330933352600

noncomputable section

/-- A056466: Number of primitive (aperiodic) palindromes using exactly five different symbols.

Offset 1, canonical program `A056466.P15122684330933352600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056466 (n : ℕ) : ℤ :=
  A056466.P15122684330933352600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056478.P4496359852495478390

`A056483(A028310(n))+A056477(n)`
-/

namespace A056478.P4496359852495478390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056483 (A028310 n).toNat + A056477 n

end

end A056478.P4496359852495478390

noncomputable section

/-- A056478: Number of primitive (aperiodic) palindromic structures using a maximum of four different symbols.

Offset 0, canonical program `A056478.P4496359852495478390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A056478 (n : ℕ) : ℤ :=
  A056478.P4496359852495478390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A056478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056491.P17370004641162359766

`(A056456(n+2)+A056456(n+1))/2`
-/

namespace A056491.P17370004641162359766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056456 (n + 2) + A056456 (n + 1) : ℚ) / 2

end

end A056491.P17370004641162359766

noncomputable section

/-- A056491: Number of periodic palindromes using exactly five different symbols.

Offset 1, canonical program `A056491.P17370004641162359766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A056491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056491.P17370004641162359766.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A056491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056818.P10951133536727049415

`record[gcd(n+2, A334628(n+2))]`
-/

namespace A056818.P10951133536727049415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A334628 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056818.P10951133536727049415

noncomputable section

/-- A056818: A number n is included if n^2 divides n-th term of A056855.

Offset 1, canonical program `A056818.P10951133536727049415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A056818 (n : ℕ) : ℤ :=
  (A056818.P10951133536727049415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A056818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056917.P1491636041550893469

`lt[A249307(A000203(n+1)-A000010(n+1)), 2]+1`
-/

namespace A056917.P1491636041550893469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249307 (A000203 (n + 1) - A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056917.P1491636041550893469

noncomputable section

/-- A056917: Numbers n such that sigma(n)-phi(n) is a perfect square.

Offset 1, canonical program `A056917.P1491636041550893469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A056917 (n : ℕ) : ℤ :=
  (A056917.P1491636041550893469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A056917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056931.P7289546216197052146

`A002378(n+2)-A056930(n+2)`
-/

namespace A056931.P7289546216197052146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 2) - A056930 (n + 2)

end

end A056931.P7289546216197052146

noncomputable section

/-- A056931: Difference between n-th oblong (promic) number, n(n+1), and the average of the smallest prime greater than n^2 and the largest prime less than (n+1)^2.

Offset 2, canonical program `A056931.P7289546216197052146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056931 (n : ℕ) : ℤ :=
  A056931.P7289546216197052146.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057028.P8117438138446753169

`A056023(n+1)+A092543(n+1)-A209279(n+1)`
-/

namespace A057028.P8117438138446753169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A209279 (n + 1))

end

end A057028.P8117438138446753169

noncomputable section

/-- A057028: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form a decreasing sequence and the others an increasing sequence.

Offset 1, canonical program `A057028.P8117438138446753169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028 (n : ℕ) : ℤ :=
  A057028.P8117438138446753169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057847.P14928123273098948202

`A057851(A000040(n+1))`
-/

namespace A057847.P14928123273098948202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A000040 (n + 1)).toNat

end

end A057847.P14928123273098948202

noncomputable section

/-- A057847: Primes p whose order of primeness A078442(p) is at least 10.

Offset 1, canonical program `A057847.P14928123273098948202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057847 (n : ℕ) : ℤ :=
  A057847.P14928123273098948202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058249.P13656201722121013867

`A092131(n+1)+A013603(n+1)`
-/

namespace A058249.P13656201722121013867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (n + 1) + A013603 (n + 1)

end

end A058249.P13656201722121013867

noncomputable section

/-- A058249: (Smallest prime >= 2^n) - (largest prime <= 2^n).

Offset 1, canonical program `A058249.P13656201722121013867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A058249 (n : ℕ) : ℤ :=
  A058249.P13656201722121013867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A058249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058296.P817858334841788841

`A162800(A004277(n))`
-/

namespace A058296.P817858334841788841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (A004277 n).toNat

end

end A058296.P817858334841788841

noncomputable section

/-- A058296: Average of consecutive primes.

Offset 1, canonical program `A058296.P817858334841788841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A058296 (n : ℕ) : ℤ :=
  A058296.P817858334841788841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A058296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059065.P10050382383288575344

`A214080(n)²*A059064(n)`
-/

namespace A059065.P10050382383288575344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 n ^ 2 * A059064 n

end

end A059065.P10050382383288575344

noncomputable section

/-- A059065: Card-matching numbers (Dinner-Diner matching numbers).

Offset 0, canonical program `A059065.P10050382383288575344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A059065 (n : ℕ) : ℤ :=
  A059065.P10050382383288575344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A059065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059399.P9766970929742721937

`A057944(n)+A057059(n+1)`
-/

namespace A059399.P9766970929742721937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A057059 (n + 1)

end

end A059399.P9766970929742721937

noncomputable section

/-- A059399: Triangular hopscotch.

Offset 1, canonical program `A059399.P9766970929742721937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059399 (n : ℕ) : ℤ :=
  A059399.P9766970929742721937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059431.P6495478415143848348

`A059432(A056023(n+1)-1)`
-/

namespace A059431.P6495478415143848348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059432 (A056023 (n + 1) - 1).toNat

end

end A059431.P6495478415143848348

noncomputable section

/-- A059431: Triangle formed when cumulative boustrophedon transform is applied to 1, 0, 0, 0, ..., read by rows from left to right.

Offset 0, canonical program `A059431.P6495478415143848348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A059431 (n : ℕ) : ℤ :=
  A059431.P6495478415143848348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A059431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059789.P9702671069679894887

`A060271(n+1)-A059787(n+1)`
-/

namespace A059789.P9702671069679894887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060271 (n + 1) - A059787 (n + 1)

end

end A059789.P9702671069679894887

noncomputable section

/-- A059789: Distance of 2*prime(n) from previous prime.

Offset 0, canonical program `A059789.P9702671069679894887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059789 (n : ℕ) : ℤ :=
  A059789.P9702671069679894887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059894.P11516963689868861872

`A049773(n+1)+A036044(n+1)`
-/

namespace A059894.P11516963689868861872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (n + 1) + A036044 (n + 1)

end

end A059894.P11516963689868861872

noncomputable section

/-- A059894: Complement and reverse the order of all but the most significant bit in binary expansion of n. n = 1ab..yz -> 1ZY..BA = a(n), where A = 1-a, B = 1-b, ... .

Offset 1, canonical program `A059894.P11516963689868861872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059894 (n : ℕ) : ℤ :=
  A059894.P11516963689868861872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060361.P4009678370881410838

`A060357(n)-A003418(n)`
-/

namespace A060361.P4009678370881410838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A003418 n

end

end A060361.P4009678370881410838

noncomputable section

/-- A060361: a(n) = { Smallest prime > k } - k, where k = lcm(1..n).

Offset 0, canonical program `A060361.P4009678370881410838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A060361 (n : ℕ) : ℤ :=
  A060361.P4009678370881410838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A060361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061091.P11020865434902996413

`a(n-1)+A297086(n+1)` with `a(0)=1`
-/

namespace A061091.P11020865434902996413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A297086 (n + 1)

end

end A061091.P11020865434902996413

noncomputable section

/-- A061091: Number of k with 1 <= k <= n relatively prime to phi(k).

Offset 1, canonical program `A061091.P11020865434902996413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061091 (n : ℕ) : ℤ :=
  A061091.P11020865434902996413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061303.P10070890560532717022

`p?[A145190(n+1)+1]`
-/

namespace A061303.P10070890560532717022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061303.P10070890560532717022

noncomputable section

/-- A061303: Given a prime p, let s(p,0)=p and let s(p,n+1) be the smallest prime == 1 (mod s(p,n)). Let S(p) be the sequence {s(p,n): n=0,1,...}. Let a(0)=2 and let a(n+1) be the smallest prime not in any of the sequences S(a(0)), ..., S(a(n)).

Offset 0, canonical program `A061303.P10070890560532717022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A061303 (n : ℕ) : ℤ :=
  A061303.P10070890560532717022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A061303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062046.P5666097150901793030

`(A162800(n+1)-A000040(n+1))*A162735(n+1)`
-/

namespace A062046.P5666097150901793030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162800 (n + 1) - A000040 (n + 1)) * A162735 (n + 1)

end

end A062046.P5666097150901793030

noncomputable section

/-- A062046: Sum of even numbers between consecutive primes.

Offset 1, canonical program `A062046.P5666097150901793030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062046 (n : ℕ) : ℤ :=
  A062046.P5666097150901793030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062773.P16388033772693534914

`A000720(A062772(n+1))`
-/

namespace A062773.P16388033772693534914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062772 (n + 1)).toNat

end

end A062773.P16388033772693534914

noncomputable section

/-- A062773: Index of the smallest prime which follows square of n-th prime.

Offset 1, canonical program `A062773.P16388033772693534914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062773 (n : ℕ) : ℤ :=
  A062773.P16388033772693534914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063112.P7730830427237507199

`A007089(A063113(n+1))`
-/

namespace A063112.P7730830427237507199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A063113 (n + 1)).toNat

end

end A063112.P7730830427237507199

noncomputable section

/-- A063112: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. Display sequence in base 3.

Offset 1, canonical program `A063112.P7730830427237507199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A063112 (n : ℕ) : ℤ :=
  A063112.P7730830427237507199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A063112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063647.P10388026275025770888

`A018892(n+1)-1`
-/

namespace A063647.P10388026275025770888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - 1

end

end A063647.P10388026275025770888

noncomputable section

/-- A063647: Number of ways to write 1/n as a difference of exactly 2 unit fractions.

Offset 1, canonical program `A063647.P10388026275025770888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063647 (n : ℕ) : ℤ :=
  A063647.P10388026275025770888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063752.P3558507756577169673

`eq[1, A325321(n+1)]+1`
-/

namespace A063752.P3558507756577169673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063752.P3558507756577169673

noncomputable section

/-- A063752: Numbers k such that cototient(k) is a square.

Offset 1, canonical program `A063752.P3558507756577169673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5581 terms. -/
def A063752 (n : ℕ) : ℤ :=
  (A063752.P3558507756577169673.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5581 terms. -/
def A063752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064490.P14069633521972832065

`A003617(A000040(n+1))`
-/

namespace A064490.P14069633521972832065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000040 (n + 1)).toNat

end

end A064490.P14069633521972832065

noncomputable section

/-- A064490: Smallest prime with prime(n) decimal digits.

Offset 1, canonical program `A064490.P14069633521972832065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064490 (n : ℕ) : ℤ :=
  A064490.P14069633521972832065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065117.P11982239824885181912

`∩[A065059(n+1), A065060(n+1)]`
-/

namespace A065117.P11982239824885181912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065117.P11982239824885181912

noncomputable section

/-- A065117: Primes such that prime(p) +- pi(p) are simultaneously prime.

Offset 1, canonical program `A065117.P11982239824885181912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. -/
def A065117 (n : ℕ) : ℤ :=
  (A065117.P11982239824885181912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. -/
def A065117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066039.P1848661495712138601

`A202301(n+1)-A001223(A061568(n+1))`
-/

namespace A066039.P1848661495712138601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (n + 1) - A001223 (A061568 (n + 1)).toNat

end

end A066039.P1848661495712138601

noncomputable section

/-- A066039: Largest prime less than or equal to the sum of first n primes (A007504).

Offset 1, canonical program `A066039.P1848661495712138601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A066039 (n : ℕ) : ℤ :=
  A066039.P1848661495712138601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A066039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066208.P16602124900019423257

`eq[1, A353372(2*(n+1))]+1`
-/

namespace A066208.P16602124900019423257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P16602124900019423257

noncomputable section

/-- A066208: All primes that divide n are of the form prime(2k-1), where prime(k) is k-th prime.

Offset 1, canonical program `A066208.P16602124900019423257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7387 terms. -/
def A066208 (n : ℕ) : ℤ :=
  (A066208.P16602124900019423257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7387 terms. -/
def A066208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066796.P3261242548129466086

`A006134(n+1)-1`
-/

namespace A066796.P3261242548129466086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - 1

end

end A066796.P3261242548129466086

noncomputable section

/-- A066796: a(n) = Sum_{i=1..n} binomial(2*i,i).

Offset 1, canonical program `A066796.P3261242548129466086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066796 (n : ℕ) : ℤ :=
  A066796.P3261242548129466086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066796.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066994.P5597610892535735044

`eq[0, (n+1)%A289412(n+1)]+1`
-/

namespace A066994.P5597610892535735044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A289412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066994.P5597610892535735044

noncomputable section

/-- A066994: Numbers k such that phi(k) divides k*sigma(k).

Offset 1, canonical program `A066994.P5597610892535735044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A066994 (n : ℕ) : ℤ :=
  (A066994.P5597610892535735044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A066994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067197.P14256898239862614097

`∪[A046790(n+1)-1, A046790(n+1)]`
-/

namespace A067197.P14256898239862614097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067197.P14256898239862614097

noncomputable section

/-- A067197: Numbers k such that k*(k+1)/2 is not squarefree.

Offset 1, canonical program `A067197.P14256898239862614097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067197 (n : ℕ) : ℤ :=
  (A067197.P14256898239862614097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068361.P16417839117735108684

`eq[A077063(n+1), A162800(n)]`
-/

namespace A068361.P16417839117735108684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068361.P16417839117735108684

noncomputable section

/-- A068361: Numbers n such that the number of squarefree numbers between prime(n) and prime(n+1) = prime(n+1)-prime(n)-1.

Offset 1, canonical program `A068361.P16417839117735108684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068361 (n : ℕ) : ℤ :=
  (A068361.P16417839117735108684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068512.P3368672071714361374

`ceil(A168036(A103517(n))/A000034(n)²)`
-/

namespace A068512.P3368672071714361374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 (A103517 n).toNat : ℚ) / (A000034 n ^ 2 : ℚ)⌉

end

end A068512.P3368672071714361374

noncomputable section

/-- A068512: Numerators of arithmetic derivative of n/2: A003415(n)/2 - n/4; denominators: A010685.

Offset 1, canonical program `A068512.P3368672071714361374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068512 (n : ℕ) : ℤ :=
  A068512.P3368672071714361374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068544.P4052281466746777693

`lt[2*A008578(n+1), A038040(A028310(n))]`
-/

namespace A068544.P4052281466746777693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068544.P4052281466746777693

noncomputable section

/-- A068544: Numbers k such that k*tau(k) > 2*prime(k).

Offset 1, canonical program `A068544.P4052281466746777693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. -/
def A068544 (n : ℕ) : ℤ :=
  (A068544.P4052281466746777693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. -/
def A068544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069171.P16058303323936119467

`A002808(eq[3, A260626(n+1)])`
-/

namespace A069171.P16058303323936119467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P16058303323936119467

noncomputable section

/-- A069171: Numbers k such that gcd(k, 2^k-1) = 3.

Offset 1, canonical program `A069171.P16058303323936119467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A069171 (n : ℕ) : ℤ :=
  A069171.P16058303323936119467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A069171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070325.P13243483116864497321

`∩[A067720(n+1), A279480(n+1)]`
-/

namespace A070325.P13243483116864497321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P13243483116864497321

noncomputable section

/-- A070325: Numbers k such that k+1, k^2+1 and k^4+1 are primes.

Offset 1, canonical program `A070325.P13243483116864497321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 835 terms. -/
def A070325 (n : ℕ) : ℤ :=
  (A070325.P13243483116864497321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 835 terms. -/
def A070325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070802.P9494168428163023846

`A070801(n+2)-A070800(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070802.P9494168428163023846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A070800 (n + 2)

end

end A070802.P9494168428163023846

noncomputable section

/-- A070802: a(n)=prevprime[sigma(n)]-nextprime[phi(n)]=A070801(n)-A070800(n).

Offset 2, canonical program `A070802.P9494168428163023846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, A070801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070802 (n : ℕ) : ℤ :=
  A070802.P9494168428163023846.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, A070801, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071050.P979392285191769002

`Δ[A267369(abs(1-n))]`
-/

namespace A071050.P979392285191769002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267369 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071050.P979392285191769002

noncomputable section

/-- A071050: Number of 0's in n-th row of triangle in A071035.

Offset 0, canonical program `A071050.P979392285191769002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071050 (n : ℕ) : ℤ :=
  A071050.P979392285191769002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071124.P14915334261569632399

`∩[A071320(n+1)-1, A071320(n+1)]`
-/

namespace A071124.P14915334261569632399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071124.P14915334261569632399

noncomputable section

/-- A071124: Least of five consecutive numbers which are cubefree and not squarefree, i.e., {k, k+1, k+2, k+3, k+4} are in A067259.

Offset 1, canonical program `A071124.P14915334261569632399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124 (n : ℕ) : ℤ :=
  (A071124.P14915334261569632399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071752.P8387973522157513646

`A071751(1+n)-A071731(n)`
-/

namespace A071752.P8387973522157513646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (1 + n) - A071731 n

end

end A071752.P8387973522157513646

noncomputable section

/-- A071752: Expansion of (1+x^4*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071752.P8387973522157513646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752 (n : ℕ) : ℤ :=
  A071752.P8387973522157513646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071960.P16235659411092393557

`A064778(n+1)-(n+1)`
-/

namespace A071960.P16235659411092393557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (n + 1) - (n + 1 : ℤ)

end

end A071960.P16235659411092393557

noncomputable section

/-- A071960: Largest k >= 0 such that Product_{i=0..k} (n+i) divides n!.

Offset 1, canonical program `A071960.P16235659411092393557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071960 (n : ℕ) : ℤ :=
  A071960.P16235659411092393557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072573.P18363549771299084168

`filter[A162800(n), A354354(#)]`
-/

namespace A072573.P18363549771299084168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A072573.P18363549771299084168

noncomputable section

/-- A072573: Odd interprimes not divisible by 3.

Offset 1, canonical program `A072573.P18363549771299084168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A072573 (n : ℕ) : ℤ :=
  A072573.P18363549771299084168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A072573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072700.P6551211295468152979

`A072698(n+1)/A072699(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072700.P6551211295468152979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072698 (n + 1) : ℚ) / (A072699 (n + 1) : ℚ)

end

end A072700.P6551211295468152979

noncomputable section

/-- A072700: A072698(n) / A072699(n).

Offset 1, canonical program `A072700.P6551211295468152979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072698, A072699, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072700.P6551211295468152979.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072698, A072699, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072756.P6856512345765162209

`comp[A072757(n)]`
-/

namespace A072756.P6856512345765162209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072756.P6856512345765162209

noncomputable section

/-- A072756: a(n) = least nonnegative integer not a(k) and not a(k)+floor(a(k)/2) for k<n.

Offset 0, canonical program `A072756.P6856512345765162209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072756 (n : ℕ) : ℤ :=
  (A072756.P6856512345765162209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072903.P14263052383570687834

`∪[A119413(n+1), A335437(n+1)]`
-/

namespace A072903.P14263052383570687834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072903.P14263052383570687834

noncomputable section

/-- A072903: Numbers m such that the discriminant of the quadratic field Q(sqrt(m)) < m.

Offset 1, canonical program `A072903.P14263052383570687834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072903 (n : ℕ) : ℤ :=
  (A072903.P14263052383570687834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073627.P13490953195107515830

`A062042(n-a(C(2, n)))` with `a(0)=1, a(1)=1`
-/

namespace A073627.P13490953195107515830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062042 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A073627.P13490953195107515830

noncomputable section

/-- A073627: a(1)=a(2)=1; for n > 2, a(n) is the smallest integer such that a(n) > a(n-1) and a(n)+a(n-1) is prime.

Offset 1, canonical program `A073627.P13490953195107515830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073627 (n : ℕ) : ℤ :=
  A073627.P13490953195107515830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073725.P8229638889903388732

`A065896(A062948(n+1))`
-/

namespace A073725.P8229638889903388732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A062948 (n + 1)).toNat

end

end A073725.P8229638889903388732

noncomputable section

/-- A073725: a(n)-th composite number = phi(n-th composite number); a(1)=a(2)=0.

Offset 1, canonical program `A073725.P8229638889903388732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073725 (n : ℕ) : ℤ :=
  A073725.P8229638889903388732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073791.P4489210871171678278

`-(A320283(2*n)/2)`
-/

namespace A073791.P4489210871171678278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A320283 (2 * n) : ℚ) / 2)

end

end A073791.P4489210871171678278

noncomputable section

/-- A073791: Replace 4^k with (-4)^k in base 4 expansion of n.

Offset 0, canonical program `A073791.P4489210871171678278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073791 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073791.P4489210871171678278.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073862.P499738449627114144

`A003618(n+1)-A003617(n+1)`
-/

namespace A073862.P499738449627114144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A003617 (n + 1)

end

end A073862.P499738449627114144

noncomputable section

/-- A073862: Difference between the largest and the smallest n-digit prime.

Offset 1, canonical program `A073862.P499738449627114144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073862 (n : ℕ) : ℤ :=
  A073862.P499738449627114144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074928.P1039295149223078673

`A391804(n+1)-A006094(n+1)`
-/

namespace A074928.P1039295149223078673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391804 (n + 1) - A006094 (n + 1)

end

end A074928.P1039295149223078673

noncomputable section

/-- A074928: a(n) is the least k>0 such that prime(n)*prime(n+1) + k is prime.

Offset 1, canonical program `A074928.P1039295149223078673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074928 (n : ℕ) : ℤ :=
  A074928.P1039295149223078673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075039.P15668940356083047975

`∩[A006073(n+1), A073251(n+1)]`
-/

namespace A075039.P15668940356083047975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P15668940356083047975

noncomputable section

/-- A075039: Smallest of three consecutive squarefree numbers having equal numbers of prime factors.

Offset 1, canonical program `A075039.P15668940356083047975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A075039 (n : ℕ) : ℤ :=
  (A075039.P15668940356083047975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A075039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075285.P9659011496630236086

`∩[A072568(n+1), A142342(n+1)]`
-/

namespace A075285.P9659011496630236086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P9659011496630236086

noncomputable section

/-- A075285: Interprimes which are of the form s*prime, s=10.

Offset 1, canonical program `A075285.P9659011496630236086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A075285 (n : ℕ) : ℤ :=
  (A075285.P9659011496630236086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A075285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075295.P568193268372435100

`∩[2*A142342(n+1), A072568(n+1)]`
-/

namespace A075295.P568193268372435100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075295.P568193268372435100

noncomputable section

/-- A075295: Interprimes which are of the form s*prime, s=20.

Offset 1, canonical program `A075295.P568193268372435100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A075295 (n : ℕ) : ℤ :=
  (A075295.P568193268372435100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A075295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075402.P18374629178123736612

`col(A065383(n+1))`
-/

namespace A075402.P18374629178123736612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A065383 (n + 1)).toNat

end

end A075402.P18374629178123736612

noncomputable section

/-- A075402: Smallest number such that a(n) + T(n) is a prime, where T(n) is the n-th triangular number.

Offset 1, canonical program `A075402.P18374629178123736612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402 (n : ℕ) : ℤ :=
  (A075402.P18374629178123736612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075798.P15243013555383215055

`(A005843(A007318(n))-A028262(n))*A318274(n)`
-/

namespace A075798.P15243013555383215055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (A007318 n).toNat - A028262 n) * A318274 n

end

end A075798.P15243013555383215055

noncomputable section

/-- A075798: Triangle T(n,k) = f(n,k,n-1), n >= 0, 0 <= k <= n, where f is given below.

Offset 1, canonical program `A075798.P15243013555383215055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A075798 (n : ℕ) : ℤ :=
  A075798.P15243013555383215055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A075798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076488.P10336001382820436641

`record[A105570(A076487(n+4))]`
-/

namespace A076488.P10336001382820436641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A076487 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076488.P10336001382820436641

noncomputable section

/-- A076488: Nonsquarefree solutions to gcd(sigma(x), phi(x)) = gcd(sigma(core(x)), Phi(core(x))), i.e., when A009223(x) = A066086(x) or if A066087(x)=0 and mu(x)=0.

Offset 1, canonical program `A076488.P10336001382820436641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A076488 (n : ℕ) : ℤ :=
  A076488.P10336001382820436641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A076488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077070.P6224506992872465520

`A007814(A144816(n))`
-/

namespace A077070.P6224506992872465520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A144816 n).toNat

end

end A077070.P6224506992872465520

noncomputable section

/-- A077070: Triangle read by rows: T(n,k) is the power of 2 in denominator of coefficients of Legendre polynomials, where n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A077070.P6224506992872465520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077070 (n : ℕ) : ℤ :=
  A077070.P6224506992872465520.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078334.P18056598420346971869

`A002088(A055201(n+1))+1`
-/

namespace A078334.P18056598420346971869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A055201 (n + 1)).toNat + 1

end

end A078334.P18056598420346971869

noncomputable section

/-- A078334: Primes in A005728, which counts the terms in the Farey sequence of order n.

Offset 1, canonical program `A078334.P18056598420346971869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. -/
def A078334 (n : ℕ) : ℤ :=
  A078334.P18056598420346971869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. -/
def A078334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078494.P14448011269337969638

`A218255(eq[1, A038800(n)])`
-/

namespace A078494.P14448011269337969638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078494.P14448011269337969638

noncomputable section

/-- A078494: Primes occurring only once in their decade.

Offset 1, canonical program `A078494.P14448011269337969638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494 (n : ℕ) : ℤ :=
  A078494.P14448011269337969638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078892.P5098149290762617717

`eq[4, A323161(A000010(C(n, n²)+n))]`
-/

namespace A078892.P5098149290762617717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A000010 (Nat.choose n (n ^ 2) + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078892.P5098149290762617717

noncomputable section

/-- A078892: Numbers n such that phi(n) - 1 is prime, where phi is Euler's totient function (A000010).

Offset 1, canonical program `A078892.P5098149290762617717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078892 (n : ℕ) : ℤ :=
  (A078892.P5098149290762617717.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079082.P9463845105595939532

`A023523(n+2)/A079080(n+1)`
-/

namespace A079082.P9463845105595939532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023523 (n + 2) : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P9463845105595939532

noncomputable section

/-- A079082: Denominator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

Offset 1, canonical program `A079082.P9463845105595939532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079082.P9463845105595939532.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079409.P10018844493359524927

`C(A053616(A056023(n+1)), A002262(n))`
-/

namespace A079409.P10018844493359524927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053616 (A056023 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A079409.P10018844493359524927

noncomputable section

/-- A079409: Array T(m,n) (m>=0, n>=0) read by antidiagonals: T(0, 0) = 1, T(0, n) = 0 if n > 0, T(m, n) = T(m-1, n - T(m-1, n)) + T(m-1, n - T(m-1, n-1)) if m > 0.

Offset 0, canonical program `A079409.P10018844493359524927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A079409 (n : ℕ) : ℤ :=
  (A079409.P10018844493359524927.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A079409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079953.P12791131789649481837

`A039734((2*n)%(n+1)+2)`
-/

namespace A079953.P12791131789649481837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (2 * n % (n + 1) + 2)

end

end A079953.P12791131789649481837

noncomputable section

/-- A079953: Smallest prime p such that prime(n) mod 2*p = prime(n).

Offset 1, canonical program `A079953.P12791131789649481837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079953 (n : ℕ) : ℤ :=
  A079953.P12791131789649481837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080307.P12348856722776114523

`lt[0, A356241(n+1)]+1`
-/

namespace A080307.P12348856722776114523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080307.P12348856722776114523

noncomputable section

/-- A080307: Multiples of the Fermat numbers 2^(2^n)+1.

Offset 1, canonical program `A080307.P12348856722776114523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080307 (n : ℕ) : ℤ :=
  (A080307.P12348856722776114523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080584.P17484479246964496310

`A079944(A002264(n))`
-/

namespace A080584.P17484479246964496310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A002264 n).toNat

end

end A080584.P17484479246964496310

noncomputable section

/-- A080584: A run of 3*2^n 0's followed by a run of 3*2^n 1's, for n=0, 1, 2, ...

Offset 0, canonical program `A080584.P17484479246964496310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080584 (n : ℕ) : ℤ :=
  A080584.P17484479246964496310.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080586.P1986153064841671641

`1+A079944(A002264(n))`
-/

namespace A080586.P1986153064841671641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A079944 (A002264 n).toNat

end

end A080586.P1986153064841671641

noncomputable section

/-- A080586: A run of 3*2^n 1's followed by a run of 3*2^n 2's, for n=0, 1, 2, ...

Offset 0, canonical program `A080586.P1986153064841671641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080586 (n : ℕ) : ℤ :=
  A080586.P1986153064841671641.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082233.P3094481268705208207

`A094727(A056023(n+1))`
-/

namespace A082233.P3094481268705208207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A056023 (n + 1)).toNat

end

end A082233.P3094481268705208207

noncomputable section

/-- A082233: Square array T(n,k) = 2*n + k, read by antidiagonals in a zigzag fashion, n >= 0 and k >= 1.

Offset 0, canonical program `A082233.P3094481268705208207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082233 (n : ℕ) : ℤ :=
  A082233.P3094481268705208207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082234.P13338439830342871460

`A036561(A056023(n+1)-1)`
-/

namespace A082234.P13338439830342871460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A056023 (n + 1) - 1).toNat

end

end A082234.P13338439830342871460

noncomputable section

/-- A082234: In the following square array numbers are entered like this A(1,1), A(1,2), A(2,1), A(3,1), A(2,2), A(1,3), A(1,4), A(2,3), A(3,2), A(4,1), A(5,1), A(4,2), ... such that every entry is the geometric mean of the two diametrically opposite neighbors (wherever a pair exists).

Offset 1, canonical program `A082234.P13338439830342871460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082234 (n : ℕ) : ℤ :=
  A082234.P13338439830342871460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082555.P269021292616838060

`p?[A371239(n+1)]`
-/

namespace A082555.P269021292616838060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082555.P269021292616838060

noncomputable section

/-- A082555: Primes whose base-3 representation does not contain a 0.

Offset 1, canonical program `A082555.P269021292616838060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A082555 (n : ℕ) : ℤ :=
  A082555.P269021292616838060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A082555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082853.P1640668448501088657

`n-A082852(n)`
-/

namespace A082853.P1640668448501088657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082852 n

end

end A082853.P1640668448501088657

noncomputable section

/-- A082853: Integers 0 to Catalan(n)-1 followed by integers 0 to Catalan(n+1)-1 etc.

Offset 0, canonical program `A082853.P1640668448501088657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853 (n : ℕ) : ℤ :=
  A082853.P1640668448501088657.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084682.P5210259654388311984

`filter[A179082(n+1), A254651(#)]`
-/

namespace A084682.P5210259654388311984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A084682.P5210259654388311984

noncomputable section

/-- A084682: Even evil numbers with an even digital sum.

Offset 1, canonical program `A084682.P5210259654388311984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A084682 (n : ℕ) : ℤ :=
  A084682.P5210259654388311984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A084682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085122.P1768509895098590735

`A230980(A051612(n+1))-A085343(n+1)`
-/

namespace A085122.P1768509895098590735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A051612 (n + 1)).toNat - A085343 (n + 1)

end

end A085122.P1768509895098590735

noncomputable section

/-- A085122: a(n) = PrimePi(sigma(n)-phi(n)) - (PrimePi(sigma(n)) - PrimePi(phi(n))), where PrimePi = A000720, sigma = A000203 and phi = A000010.

Offset 1, canonical program `A085122.P1768509895098590735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A085122 (n : ℕ) : ℤ :=
  A085122.P1768509895098590735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A085122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085412.P5357625299025834806

`A000720(A085413(n+1))`
-/

namespace A085412.P5357625299025834806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A085413 (n + 1)).toNat

end

end A085412.P5357625299025834806

noncomputable section

/-- A085412: Numbers n such that concatenation of prime[n] and first digit of prime[n] is prime.

Offset 1, canonical program `A085412.P5357625299025834806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A085412 (n : ℕ) : ℤ :=
  A085412.P5357625299025834806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A085412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085691.P17951583978947504204

`C(A185914(n+1), 2)+abs(A122432(n))`
-/

namespace A085691.P17951583978947504204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A185914 (n + 1)).toNat 2 : ℤ) + |A122432 n|

end

end A085691.P17951583978947504204

noncomputable section

/-- A085691: Triangle read by rows: T(n,k) is the number of triangles of side k in triangular matchstick arrangement of side n; n>=1 and k>=1.

Offset 1, canonical program `A085691.P17951583978947504204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085691 (n : ℕ) : ℤ :=
  A085691.P17951583978947504204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085712.P6030904731041959429

`2*p?[A002731(n+1)]`
-/

namespace A085712.P6030904731041959429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085712.P6030904731041959429

noncomputable section

/-- A085712: Semiprimes k such that gpf(k)^lpf(k)+1 is also semiprime, where gpf = A006530 and lpf = A020639.

Offset 1, canonical program `A085712.P6030904731041959429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A085712 (n : ℕ) : ℤ :=
  A085712.P6030904731041959429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A085712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086227.P5243369785632214675

`(-1)^(n+3)*A079458(n+2)/A140434(n+2)`
-/

namespace A086227.P5243369785632214675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 3) * A079458 (n + 2) : ℚ) / (A140434 (n + 2) : ℚ)

end

end A086227.P5243369785632214675

noncomputable section

/-- A086227: a(n) = Sum_{1<=k<=4*n, gcd(k,n)=1} (i^k*tan(k*Pi/(4*n)))/(4*i), where i is the imaginary unit.

Offset 2, canonical program `A086227.P5243369785632214675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086227.P5243369785632214675.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086767.P14820350050543062152

`A004731(n+1)/A004730(n)`
-/

namespace A086767.P14820350050543062152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 1) : ℚ) / (A004730 n : ℚ)

end

end A086767.P14820350050543062152

noncomputable section

/-- A086767: Last coefficient of the last term in the numerator of the simplified expansion of the solutions of FLT for n=2 for FLT n=1,2,3,..

Offset 0, canonical program `A086767.P14820350050543062152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086767 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086767.P14820350050543062152.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087011.P18029174612393828854

`A035250(n+1)-A087010(n+1)^round(atan(n)/2)`
-/

namespace A087011.P18029174612393828854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035250 (n + 1) : ℚ) - (A087010 (n + 1) : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2) : ℤ)

end

end A087011.P18029174612393828854

noncomputable section

/-- A087011: Number of primes of form 4*k+3 between n and 2n (inclusive).

Offset 1, canonical program `A087011.P18029174612393828854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087011.P18029174612393828854.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087506.P14667531462698864031

`p?[A087461(n+2)]`
-/

namespace A087506.P14667531462698864031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087506.P14667531462698864031

noncomputable section

/-- A087506: Primes in A087461.

Offset 1, canonical program `A087506.P14667531462698864031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A087506 (n : ℕ) : ℤ :=
  A087506.P14667531462698864031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A087506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088208.P4118432922678346086

`A049773(A233280(n+1))`
-/

namespace A088208.P4118432922678346086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A233280 (n + 1)).toNat

end

end A088208.P4118432922678346086

noncomputable section

/-- A088208: Table read by rows where T(0,0)=1; n-th row has 2^n terms T(n,j),j=0 to 2^n-1. For j==0 mod 2, T(n+1,2j)=T(n,j) and T(n+1,2j+1)=T(n,j)+2^n. For j==1 mod 2, T(n+1,2j+1)=T(n,j) and T(n+1,2j)=T(n,j)+2^n.

Offset 0, canonical program `A088208.P4118432922678346086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088208 (n : ℕ) : ℤ :=
  A088208.P4118432922678346086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088709.P16139510648427696938

`filter[A007422(n+1), A296211(#)]`
-/

namespace A088709.P16139510648427696938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P16139510648427696938

noncomputable section

/-- A088709: Numbers m that are a product of two primes j and k such that m+j+k is prime.

Offset 1, canonical program `A088709.P16139510648427696938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709 (n : ℕ) : ℤ :=
  A088709.P16139510648427696938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088738.P15299027887312375454

`A076290(A002808(n+1))`
-/

namespace A088738.P15299027887312375454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A002808 (n + 1)).toNat

end

end A088738.P15299027887312375454

noncomputable section

/-- A088738: Sum of semiprime divisors of n-th composite number.

Offset 1, canonical program `A088738.P15299027887312375454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088738 (n : ℕ) : ℤ :=
  A088738.P15299027887312375454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089233.P13957741673571392928

`A018892(n+1)-A000005(n+1)`
-/

namespace A089233.P13957741673571392928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - A000005 (n + 1)

end

end A089233.P13957741673571392928

noncomputable section

/-- A089233: Number of coprime pairs of divisors > 1 of n.

Offset 1, canonical program `A089233.P13957741673571392928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089233 (n : ℕ) : ℤ :=
  A089233.P13957741673571392928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089252.P6506231424234606079

`2^n*n!*A006134(n)`
-/

namespace A089252.P6506231424234606079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A006134 n

end

end A089252.P6506231424234606079

noncomputable section

/-- A089252: a(n) = ((2*n-1)!!/sqrt(3))*(integral_{x=0..sqrt(3/4)} 1/(1-x^2)^(n+1/2) dx).

Offset 1, canonical program `A089252.P6506231424234606079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089252 (n : ℕ) : ℤ :=
  A089252.P6506231424234606079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089270.P4568996701270986282

`eq[1, gcd(n+1, A087781(n+1))]+1`
-/

namespace A089270.P4568996701270986282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A087781 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089270.P4568996701270986282

noncomputable section

/-- A089270: Positive numbers represented by the integer binary quadratic form x^2 + x*y - y^2 with x and y relatively prime.

Offset 1, canonical program `A089270.P4568996701270986282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089270 (n : ℕ) : ℤ :=
  (A089270.P4568996701270986282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089894.P1296047987516773958

`record[A000040(A093178(A213650(n+1)))]`
-/

namespace A089894.P1296047987516773958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A093178 (A213650 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089894.P1296047987516773958

noncomputable section

/-- A089894: Sum of primes <= p is even and sum is twice a prime.

Offset 0, canonical program `A089894.P1296047987516773958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A089894 (n : ℕ) : ℤ :=
  A089894.P1296047987516773958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A089894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091237.P6770545350464896014

`Δ[eq[0, A088705(A181346(n))]]`
-/

namespace A091237.P6770545350464896014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A181346 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091237.P6770545350464896014

noncomputable section

/-- A091237: Lengths of runs in A039702.

Offset 1, canonical program `A091237.P6770545350464896014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. -/
def A091237 (n : ℕ) : ℤ :=
  A091237.P6770545350464896014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. -/
def A091237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091366.P2947392388403710140

`p?[A225534(n+1)]`
-/

namespace A091366.P2947392388403710140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091366.P2947392388403710140

noncomputable section

/-- A091366: Primes p such that the sum of the cubes of the digits of p is prime.

Offset 1, canonical program `A091366.P2947392388403710140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091366 (n : ℕ) : ℤ :=
  A091366.P2947392388403710140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091397.P12586463803707334574

`A035186(∏{p}[n+1, #])`
-/

namespace A091397.P12586463803707334574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091397.P12586463803707334574

noncomputable section

/-- A091397: a(n) = Product_{ p | n } (1 + Legendre(3,p) ).

Offset 1, canonical program `A091397.P12586463803707334574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091397 (n : ℕ) : ℤ :=
  A091397.P12586463803707334574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091666.P2525373801874084828

`A062772(n+1)-A001248(n+1)`
-/

namespace A091666.P2525373801874084828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062772 (n + 1) - A001248 (n + 1)

end

end A091666.P2525373801874084828

noncomputable section

/-- A091666: Difference between prime(n)^2 and the next prime.

Offset 1, canonical program `A091666.P2525373801874084828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091666 (n : ℕ) : ℤ :=
  A091666.P2525373801874084828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092542.P8192969525571053860

`A002260(A056023(n+1))`
-/

namespace A092542.P8192969525571053860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056023 (n + 1)).toNat

end

end A092542.P8192969525571053860

noncomputable section

/-- A092542: Table whose n-th row is constant and equal to n, read by antidiagonals alternately upwards and downwards.

Offset 1, canonical program `A092542.P8192969525571053860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A092542 (n : ℕ) : ℤ :=
  A092542.P8192969525571053860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A092542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092633.P7450104256530509530

`eq[A257890(A055672(n)), A276729(n)]`
-/

namespace A092633.P7450104256530509530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 (A055672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092633.P7450104256530509530

noncomputable section

/-- A092633: Nonprime numbers with exactly three nonprime digits.

Offset 1, canonical program `A092633.P7450104256530509530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. -/
def A092633 (n : ℕ) : ℤ :=
  (A092633.P7450104256530509530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. -/
def A092633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093373.P5396455180272052482

`eq[0, A344438(n+1)]+1`
-/

namespace A093373.P5396455180272052482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093373.P5396455180272052482

noncomputable section

/-- A093373: Numbers that are not the product of factorials.

Offset 1, canonical program `A093373.P5396455180272052482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093373 (n : ℕ) : ℤ :=
  (A093373.P5396455180272052482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093818.P17790798542643971304

`gcd(∑[1/(n+1)]*A002805(n+1), A027457(n+1))`
-/

namespace A093818.P17790798542643971304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ))) (A027457 (n + 1))

end

end A093818.P17790798542643971304

noncomputable section

/-- A093818: a(n) = gcd(A001008(n), n!).

Offset 1, canonical program `A093818.P17790798542643971304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A093818 (n : ℕ) : ℤ :=
  (A093818.P17790798542643971304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A093818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094083.P6425279865042461791

`A004730(abs(1-n))²`
-/

namespace A094083.P6425279865042461791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |1 - (n : ℤ)|.toNat ^ 2

end

end A094083.P6425279865042461791

noncomputable section

/-- A094083: Numerators of ratio of sides of n-th triple of rectangles of unit area sum around a triangle.

Offset 1, canonical program `A094083.P6425279865042461791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A094083 (n : ℕ) : ℤ :=
  A094083.P6425279865042461791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A094083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095071.P691342850235203050

`∪[A095072(n+1), A095317(n+1)]`
-/

namespace A095071.P691342850235203050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P691342850235203050

noncomputable section

/-- A095071: Zero-bit dominant primes, i.e., primes whose binary expansion contains more 0's than 1's.

Offset 1, canonical program `A095071.P691342850235203050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095071 (n : ℕ) : ℤ :=
  (A095071.P691342850235203050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095743.P808282831159510369

`p?[A051244(n+1)]`
-/

namespace A095743.P808282831159510369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095743.P808282831159510369

noncomputable section

/-- A095743: Primes p for which A037888(p) = 1, i.e., primes whose binary expansion is almost symmetric, needing just a one-bit flip to become palindrome.

Offset 1, canonical program `A095743.P808282831159510369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A095743 (n : ℕ) : ℤ :=
  A095743.P808282831159510369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A095743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095744.P12869582977298875679

`p?[A051247(n+1)]`
-/

namespace A095744.P12869582977298875679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095744.P12869582977298875679

noncomputable section

/-- A095744: Primes p for which A037888(p) = 2, i.e., primes whose binary expansion needs flips of just two bits to become palindrome.

Offset 1, canonical program `A095744.P12869582977298875679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A095744 (n : ℕ) : ℤ :=
  A095744.P12869582977298875679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A095744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096465.P10552782439252086750

`A091491(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A096465.P10552782439252086750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A096465.P10552782439252086750

noncomputable section

/-- A096465: Triangle (read by rows) formed by setting all entries in the first column and in the main diagonal ((i,i) entries) to 1 and the rest of the entries by the recursion T(n, k) = T(n-1, k) + T(n, k-1).

Offset 0, canonical program `A096465.P10552782439252086750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096465 (n : ℕ) : ℤ :=
  A096465.P10552782439252086750.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097070.P7474886704666409265

`A002740(n+1)+A097613(n+1)`
-/

namespace A097070.P7474886704666409265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 1) + A097613 (n + 1)

end

end A097070.P7474886704666409265

noncomputable section

/-- A097070: Consider all compositions (ordered partitions) of n into n parts, allowing zeros. E.g., for n = 3 we get 300, 030, 003, 210, 120, 201, 102, 021, 012, 111. Then a(n) is the total number of 1's.

Offset 1, canonical program `A097070.P7474886704666409265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097070 (n : ℕ) : ℤ :=
  A097070.P7474886704666409265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097515.P6846238364351390918

`A003618(n+1)+A003617(n+2)`
-/

namespace A097515.P6846238364351390918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) + A003617 (n + 2)

end

end A097515.P6846238364351390918

noncomputable section

/-- A097515: a(n) = (largest prime < 10^n) + (smallest prime > 10^n).

Offset 1, canonical program `A097515.P6846238364351390918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097515 (n : ℕ) : ℤ :=
  A097515.P6846238364351390918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098013.P2344816386387271385

`A151800(A058620(n+1))-A058620(n+1)`
-/

namespace A098013.P2344816386387271385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A058620 (n + 1)).toNat - A058620 (n + 1)

end

end A098013.P2344816386387271385

noncomputable section

/-- A098013: Differences between consecutive primes that are twice primes.

Offset 1, canonical program `A098013.P2344816386387271385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058620, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098013 (n : ℕ) : ℤ :=
  A098013.P2344816386387271385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058620, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098029.P12425777026168091225

`p?[A052288(n+2)+A024675(n+1)]`
-/

namespace A098029.P12425777026168091225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (n + 2) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P12425777026168091225

noncomputable section

/-- A098029: Primes of the form (prime(k)+ prime(k+3))/2.

Offset 1, canonical program `A098029.P12425777026168091225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A098029 (n : ℕ) : ℤ :=
  A098029.P12425777026168091225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A098029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098592.P11030886862082510298

`Δ[A000720(A218255(3*n))]`
-/

namespace A098592.P11030886862082510298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P11030886862082510298

noncomputable section

/-- A098592: Number of primes between n*30 and (n+1)*30.

Offset 0, canonical program `A098592.P11030886862082510298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A098592 (n : ℕ) : ℤ :=
  A098592.P11030886862082510298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A098592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099047.P83096896092586081

`comp[A045718(n)-1]+1`
-/

namespace A099047.P83096896092586081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A099047.P83096896092586081

noncomputable section

/-- A099047: Numbers n such that n-1 and n+1 are both composite.

Offset 1, canonical program `A099047.P83096896092586081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099047 (n : ℕ) : ℤ :=
  (A099047.P83096896092586081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099056.P6861540062732746160

`A099774(n+1)+A099055(n)`
-/

namespace A099056.P6861540062732746160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) + A099055 n

end

end A099056.P6861540062732746160

noncomputable section

/-- A099056: A bisection of A054519.

Offset 0, canonical program `A099056.P6861540062732746160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099056 (n : ℕ) : ℤ :=
  A099056.P6861540062732746160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100299.P6607277383001077956

`Δ[ceil(A104858(n)/2)]`
-/

namespace A100299.P6607277383001077956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104858 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100299.P6607277383001077956

noncomputable section

/-- A100299: Number of dissections of a convex n-gon by nonintersecting diagonals into an even number of regions.

Offset 3, canonical program `A100299.P6607277383001077956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100299 (n : ℕ) : ℤ :=
  A100299.P6607277383001077956.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101403.P5867421329775423614

`A246439(n+1)-record[n*A164349(n)]`
-/

namespace A101403.P5867421329775423614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101403.P5867421329775423614

noncomputable section

/-- A101403: Number of times that n occurs in A101402.

Offset 0, canonical program `A101403.P5867421329775423614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A101403 (n : ℕ) : ℤ :=
  A101403.P5867421329775423614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A101403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101592.P1905157166639343571

`∪[A003617(n+1), A003618(n+1)]`
-/

namespace A101592.P1905157166639343571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101592.P1905157166639343571

noncomputable section

/-- A101592: Smallest and largest of the n-digit primes.

Offset 1, canonical program `A101592.P1905157166639343571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A101592 (n : ℕ) : ℤ :=
  (A101592.P1905157166639343571.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A101592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102863.P11458162008794449909

`ceil(A105783(n+1)/7)`
-/

namespace A102863.P11458162008794449909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105783 (n + 1) : ℚ) / 7⌉

end

end A102863.P11458162008794449909

noncomputable section

/-- A102863: a(n)=1 if at least one of the first n primes is a divisor of the sum of the first n primes; otherwise a(n)=0.

Offset 1, canonical program `A102863.P11458162008794449909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102863 (n : ℕ) : ℤ :=
  A102863.P11458162008794449909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102885.P15050759352946611380

`abs(A086936(n+1)-A055672(n))`
-/

namespace A102885.P15050759352946611380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086936 (n + 1) - A055672 n|

end

end A102885.P15050759352946611380

noncomputable section

/-- A102885: Index of n in the primes A000040 or nonprimes A141468.

Offset 0, canonical program `A102885.P15050759352946611380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A102885 (n : ℕ) : ℤ :=
  A102885.P15050759352946611380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A102885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103536.P11022459025891584662

`(A005594(n+3)+A001911(n)+1)/2`
-/

namespace A103536.P11022459025891584662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005594 (n + 3) + (A001911 n + 1) : ℚ) / 2

end

end A103536.P11022459025891584662

noncomputable section

/-- A103536: Number of geometrically distinct edge-unfoldings of a regular n-gonal pyramid.

Offset 3, canonical program `A103536.P11022459025891584662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A103536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103536.P11022459025891584662.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A103536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104211.P8119416011438240202

`eq[0, A055672(∑{digits}[n+1, #])]+1`
-/

namespace A104211.P8119416011438240202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104211.P8119416011438240202

noncomputable section

/-- A104211: Integers n such that the sum of the digits of n is not prime.

Offset 1, canonical program `A104211.P8119416011438240202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. -/
def A104211 (n : ℕ) : ℤ :=
  (A104211.P8119416011438240202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. -/
def A104211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105728.P9423552014688535179

`A115068(n+1)+A112857(n)-A038207(n)`
-/

namespace A105728.P9423552014688535179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A112857 n - A038207 n)

end

end A105728.P9423552014688535179

noncomputable section

/-- A105728: Triangle read by rows: T(n,1) = 1, T(n,n) = n and for 1 < k < n: T(n,k) = T(n-1,k-1) + 2*T(n-1,k).

Offset 1, canonical program `A105728.P9423552014688535179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105728 (n : ℕ) : ℤ :=
  A105728.P9423552014688535179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106102.P3375998700621158916

`p?[A084373(n+1)]`
-/

namespace A106102.P3375998700621158916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106102.P3375998700621158916

noncomputable section

/-- A106102: Primes with smallest digit 2.

Offset 1, canonical program `A106102.P3375998700621158916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102 (n : ℕ) : ℤ :=
  A106102.P3375998700621158916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106844.P3344673447551020478

`A007814(A093641(n+1))`
-/

namespace A106844.P3344673447551020478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A093641 (n + 1)).toNat

end

end A106844.P3344673447551020478

noncomputable section

/-- A106844: Exponent of 2 in the prime factorization of A093641(n).

Offset 1, canonical program `A106844.P3344673447551020478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106844 (n : ℕ) : ℤ :=
  A106844.P3344673447551020478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107789.P13357853948593390734

`p?[7-(A268272(n+2)-A268272(n))]`
-/

namespace A107789.P13357853948593390734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A268272 (n + 2) - A268272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107789.P13357853948593390734

noncomputable section

/-- A107789: Trajectory of 2 under evenly many applications of the morphism 1 -> 2, 2 -> 114, 3 -> 4, 4 -> 233.

Offset 0, canonical program `A107789.P13357853948593390734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. -/
def A107789 (n : ℕ) : ℤ :=
  A107789.P13357853948593390734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. -/
def A107789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107817.P13758543603320578681

`A062042(n-a(C(2, n)))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A107817.P13758543603320578681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  A062042 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A107817.P13758543603320578681

noncomputable section

/-- A107817: Slowest increasing sequence where 2 consecutive integers sum up to a prime.

Offset 0, canonical program `A107817.P13758543603320578681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107817 (n : ℕ) : ℤ :=
  A107817.P13758543603320578681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107978.P3263671017790150072

`filter[A057948(n+1), A005171(#)]`
-/

namespace A107978.P3263671017790150072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107978.P3263671017790150072

noncomputable section

/-- A107978: Products of two primes of the form 4n+3 (A002145).

Offset 1, canonical program `A107978.P3263671017790150072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107978 (n : ℕ) : ℤ :=
  A107978.P3263671017790150072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108936.P10845759939433094965

`A105773(n+12)-74`
-/

namespace A108936.P10845759939433094965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105773 (n + 12) - 74

end

end A108936.P10845759939433094965

noncomputable section

/-- A108936: Numbers n such that 11*n + 911 is prime.

Offset 1, canonical program `A108936.P10845759939433094965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A108936 (n : ℕ) : ℤ :=
  A108936.P10845759939433094965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A108936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109187.P2341051230272957120

`A097610(n)*A115514(n+1)`
-/

namespace A109187.P2341051230272957120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A115514 (n + 1)

end

end A109187.P2341051230272957120

noncomputable section

/-- A109187: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k (1,0)-steps.

Offset 0, canonical program `A109187.P2341051230272957120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109187 (n : ℕ) : ℤ :=
  A109187.P2341051230272957120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109771.P3414303503878766770

`A112478(A028310(n))-A103137(n)`
-/

namespace A109771.P3414303503878766770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112478 (A028310 n).toNat - A103137 n

end

end A109771.P3414303503878766770

noncomputable section

/-- A109771: Expansion of g.f.: sqrt(1+6*x+x^2).

Offset 0, canonical program `A109771.P3414303503878766770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A109771 (n : ℕ) : ℤ :=
  A109771.P3414303503878766770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A109771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110318.P1312850071085990587

`A110239(n+5)-A089737(n+2)`
-/

namespace A110318.P1312850071085990587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110239 (n + 5) - A089737 (n + 2)

end

end A110318.P1312850071085990587

noncomputable section

/-- A110318: Number of arcs covered by other arcs in all RNA secondary structures of size n+5 (i.e., with n+5 nodes).

Offset 0, canonical program `A110318.P1312850071085990587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A110318 (n : ℕ) : ℤ :=
  A110318.P1312850071085990587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A110318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110324.P17338203710823644534

`A104762(n+1)*A110314(n)`
-/

namespace A110324.P17338203710823644534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A110314 n

end

end A110324.P17338203710823644534

noncomputable section

/-- A110324: Inverse of a number triangle related to the Jacobsthal numbers.

Offset 0, canonical program `A110324.P17338203710823644534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110324 (n : ℕ) : ℤ :=
  A110324.P17338203710823644534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110330.P12777464114074436010

`A110314(n)-A132440(n)`
-/

namespace A110330.P12777464114074436010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n - A132440 n

end

end A110330.P12777464114074436010

noncomputable section

/-- A110330: Inverse of a number triangle related to the Pell numbers.

Offset 0, canonical program `A110330.P12777464114074436010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110330 (n : ℕ) : ℤ :=
  A110330.P12777464114074436010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111248.P8740398258723781091

`A001617(n+1)+A001616(n+1)-1`
-/

namespace A111248.P8740398258723781091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1) + A001616 (n + 1) - 1

end

end A111248.P8740398258723781091

noncomputable section

/-- A111248: Dimension of the space of weight 2 modular forms for Gamma_0(n).

Offset 1, canonical program `A111248.P8740398258723781091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111248 (n : ℕ) : ℤ :=
  A111248.P8740398258723781091.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111318.P8066523825878989134

`eq[2, A038698(n+1)%4]+1`
-/

namespace A111318.P8066523825878989134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038698 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111318.P8066523825878989134

noncomputable section

/-- A111318: Numbers k such that 4 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111318.P8066523825878989134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A111318 (n : ℕ) : ℤ :=
  (A111318.P8066523825878989134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A111318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111701.P4209804534032475599

`(n+1)/(n+1-A276151(n+1))`
-/

namespace A111701.P4209804534032475599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A276151 (n + 1) : ℚ)

end

end A111701.P4209804534032475599

noncomputable section

/-- A111701: Least integer obtained when n is divided by prime(1), then by prime(2), then by prime(3), ..., stopping as soon as one of the primes does not divide it. In particular, a(2n-1) = 2n-1.

Offset 1, canonical program `A111701.P4209804534032475599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111701.P4209804534032475599.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111735.P13841724041236737776

`A370009(n+1)-A001748(n+1)`
-/

namespace A111735.P13841724041236737776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370009 (n + 1) - A001748 (n + 1)

end

end A111735.P13841724041236737776

noncomputable section

/-- A111735: Distance between k*(n-th prime) and next prime, k=3 case.

Offset 1, canonical program `A111735.P13841724041236737776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111735 (n : ℕ) : ℤ :=
  A111735.P13841724041236737776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111738.P5078444431760926607

`A060266(3*p?[abs(xor(n, -2))])`
-/

namespace A111738.P5078444431760926607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111738.P5078444431760926607

noncomputable section

/-- A111738: Distance between k*(n-th prime) and next prime, k=6 case.

Offset 1, canonical program `A111738.P5078444431760926607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A111738 (n : ℕ) : ℤ :=
  A111738.P5078444431760926607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A111738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111740.P10235014839868050827

`A060266(4*p?[round(8*n/7)])`
-/

namespace A111740.P10235014839868050827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111740.P10235014839868050827

noncomputable section

/-- A111740: Distance between k*(n-th prime) and next prime, k=8 case.

Offset 1, canonical program `A111740.P10235014839868050827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A111740 (n : ℕ) : ℤ :=
  A111740.P10235014839868050827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A111740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111742.P15922268779302674466

`A060266(5*p?[abs(xor(n, -2))])`
-/

namespace A111742.P15922268779302674466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111742.P15922268779302674466

noncomputable section

/-- A111742: Distance between k*(n-th prime) and next prime, k=10 case.

Offset 1, canonical program `A111742.P15922268779302674466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111742 (n : ℕ) : ℤ :=
  A111742.P15922268779302674466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111949.P10964253214955943244

`∑{d}[n+1, A035187(#)*A275966((n+1)/#)]`
-/

namespace A111949.P10964253214955943244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111949.P10964253214955943244

noncomputable section

/-- A111949: Expansion of eta(q) * eta(q^2) * eta(q^10) * eta(q^20) / (eta(q^4) * eta(q^5)) in powers of q.

Offset 1, canonical program `A111949.P10964253214955943244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111949 (n : ℕ) : ℤ :=
  A111949.P10964253214955943244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112559.P1469957549597084680

`floor(A113601(n+1)/4)`
-/

namespace A112559.P1469957549597084680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113601 (n + 1) : ℚ) / 4⌋

end

end A112559.P1469957549597084680

noncomputable section

/-- A112559: Numbers k such that both k and 4k + 1 are in A005098.

Offset 1, canonical program `A112559.P1469957549597084680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A112559 (n : ℕ) : ℤ :=
  A112559.P1469957549597084680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A112559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112928.P14420708112015201937

`p?[A112926(n+1)]`
-/

namespace A112928.P14420708112015201937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112928.P14420708112015201937

noncomputable section

/-- A112928: Primes in sequence A112926.

Offset 1, canonical program `A112928.P14420708112015201937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A112928 (n : ℕ) : ℤ :=
  A112928.P14420708112015201937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A112928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113421.P13774597701108961501

`∑{d}[n+1, A275966(#)*A326503((n+1)/#)]`
-/

namespace A113421.P13774597701108961501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275966 d * A326503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113421.P13774597701108961501

noncomputable section

/-- A113421: Expansion of eta(q)^2 * eta(q^4) * eta(q^6)^2 * eta(q^12) / eta(q^3)^2 in powers of q.

Offset 1, canonical program `A113421.P13774597701108961501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113421 (n : ℕ) : ℤ :=
  A113421.P13774597701108961501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113502.P1834460873008757009

`A088723(n+1)/2`
-/

namespace A113502.P1834460873008757009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088723 (n + 1) : ℚ) / 2

end

end A113502.P1834460873008757009

noncomputable section

/-- A113502: A number n is included if at least one of its divisors > 1 is a triangular number (i.e., is of the form m(m+1)/2, m >= 2).

Offset 1, canonical program `A113502.P1834460873008757009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113502.P1834460873008757009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114643.P3385208476335884825

`and(A050361(n+1), A063659(n+1))`
-/

namespace A114643.P3385208476335884825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050361 (n + 1)) (A063659 (n + 1))

end

end A114643.P3385208476335884825

noncomputable section

/-- A114643: Number of real primitive Dirichlet characters modulo n.

Offset 1, canonical program `A114643.P3385208476335884825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114643 (n : ℕ) : ℤ :=
  A114643.P3385208476335884825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115299.P3852664111616169034

`∑{digits}[A073730(n+1), #]`
-/

namespace A115299.P3852664111616169034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A115299.P3852664111616169034

noncomputable section

/-- A115299: Greatest digit of n + least digit of n. Different from A088133.

Offset 1, canonical program `A115299.P3852664111616169034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115299 (n : ℕ) : ℤ :=
  (A115299.P3852664111616169034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115606.P15732138880714301943

`A102540(n)+a(n-1)` with `a(0)=0`
-/

namespace A115606.P15732138880714301943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A102540 n + a (n - 1)

end

end A115606.P15732138880714301943

noncomputable section

/-- A115606: Partial sums of A102540 (primes that are not Chen primes).

Offset 0, canonical program `A115606.P15732138880714301943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115606 (n : ℕ) : ℤ :=
  A115606.P15732138880714301943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116563.P2597294203523295225

`A001617(A000040(n+1))`
-/

namespace A116563.P2597294203523295225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A000040 (n + 1)).toNat

end

end A116563.P2597294203523295225

noncomputable section

/-- A116563: a(n) is the genus of the modular curve X_0(p) for p = prime(n).

Offset 1, canonical program `A116563.P2597294203523295225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116563 (n : ℕ) : ℤ :=
  A116563.P2597294203523295225.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117096.P17502464881523089586

`eq[2, ceil(A060264(n)/A007918(n))]`
-/

namespace A117096.P17502464881523089586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060264 n : ℚ) / (A007918 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117096.P17502464881523089586

noncomputable section

/-- A117096: Numbers n such that nextprime(2*n)<2*nextprime(n) (if p is prime then nextprime(p)=p).

Offset 1, canonical program `A117096.P17502464881523089586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. -/
def A117096 (n : ℕ) : ℤ :=
  (A117096.P17502464881523089586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. -/
def A117096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117179.P14608184751527958313

`A111526(n)*A117568(n)`
-/

namespace A117179.P14608184751527958313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A117568 n

end

end A117179.P14608184751527958313

noncomputable section

/-- A117179: Riordan array ((1-x^2)/(1+x^2)^2,x/(1+x^2)).

Offset 0, canonical program `A117179.P14608184751527958313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117179 (n : ℕ) : ℤ :=
  A117179.P14608184751527958313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117304.P10783132350936566897

`∩[A019550(n+1), A019550(n+1)%A235497(n+1)]`
-/

namespace A117304.P10783132350936566897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019550 (n + 1)) (A235497 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117304.P10783132350936566897

noncomputable section

/-- A117304: Numbers with an even number of digits such that the second half is twice the first half.

Offset 1, canonical program `A117304.P10783132350936566897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A117304 (n : ℕ) : ℤ :=
  (A117304.P10783132350936566897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A117304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117815.P4799667150114690771

`filter[A118950(n+1), A005171(#)]`
-/

namespace A117815.P4799667150114690771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117815.P4799667150114690771

noncomputable section

/-- A117815: Composite numbers at least one of whose decimal digits is prime.

Offset 1, canonical program `A117815.P4799667150114690771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. -/
def A117815 (n : ℕ) : ℤ :=
  A117815.P4799667150114690771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. -/
def A117815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118360.P8984286927158600420

`A057889(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P8984286927158600420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057889 (a (n - 1)).toNat + 2

end

end A118360.P8984286927158600420

noncomputable section

/-- A118360: Start with 1; repeatedly reverse the digits when the number is written in binary and add 2 to get the next term.

Offset 1, canonical program `A118360.P8984286927158600420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A118360 (n : ℕ) : ℤ :=
  A118360.P8984286927158600420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A118360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000443.P2477946098226311991

`eq[3, A000161(n)]`
-/

namespace A000443.P2477946098226311991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P2477946098226311991

noncomputable section

/-- A000443: Numbers that are the sum of 2 squares in exactly 3 ways.

Offset 1, canonical program `A000443.P2477946098226311991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A000443 (n : ℕ) : ℤ :=
  (A000443.P2477946098226311991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A000443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000742.P13490306228597101565

`Δ[A015627(n+3)+∑[∑[n]]]`
-/

namespace A000742.P13490306228597101565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000742.P13490306228597101565

noncomputable section

/-- A000742: Number of compositions of n into 4 ordered relatively prime parts.

Offset 4, canonical program `A000742.P13490306228597101565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742 (n : ℕ) : ℤ :=
  A000742.P13490306228597101565.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000743.P6553726784885921065

`Δ[A015640(n+4)]`
-/

namespace A000743.P6553726784885921065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P6553726784885921065

noncomputable section

/-- A000743: Number of compositions of n into 5 ordered relatively prime parts.

Offset 5, canonical program `A000743.P6553726784885921065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743 (n : ℕ) : ℤ :=
  A000743.P6553726784885921065.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001089.P12328376090641490040

`A071741(n)-A071729(n)`
-/

namespace A001089.P12328376090641490040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - A071729 n

end

end A001089.P12328376090641490040

noncomputable section

/-- A001089: Number of permutations of [n] containing exactly 2 increasing subsequences of length 3.

Offset 0, canonical program `A001089.P12328376090641490040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089 (n : ℕ) : ℤ :=
  A001089.P12328376090641490040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001319.P149822166048016087

`A000007(n)+Δ[A057537(A000194((1-n)²))]`
-/

namespace A001319.P149822166048016087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000194 ((1 - (n : ℤ)) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A001319.P149822166048016087

noncomputable section

/-- A001319: Number of (unordered) ways of making change for n cents using coins of 2, 5, 10, 20, 50 cents.

Offset 0, canonical program `A001319.P149822166048016087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A001319 (n : ℕ) : ℤ :=
  A001319.P149822166048016087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A001319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001729.P5595440240656319040

`eq[n, n-A064532(n)]`
-/

namespace A001729.P5595440240656319040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P5595440240656319040

noncomputable section

/-- A001729: List of numbers whose digits contain no loops (version 1).

Offset 1, canonical program `A001729.P5595440240656319040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. -/
def A001729 (n : ℕ) : ℤ :=
  (A001729.P5595440240656319040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. -/
def A001729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001746.P1259921048174230123

`lt[n-A064532(n), n]`
-/

namespace A001746.P1259921048174230123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064532 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001746.P1259921048174230123

noncomputable section

/-- A001746: At least one digit contains a loop (version 1).

Offset 1, canonical program `A001746.P1259921048174230123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001746 (n : ℕ) : ℤ :=
  (A001746.P1259921048174230123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006078.P3851421618705836682

`A126120(n+2)+A050182(n)`
-/

namespace A006078.P3851421618705836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) + A050182 n

end

end A006078.P3851421618705836682

noncomputable section

/-- A006078: Number of triangulated (n+2)-gons rooted at an exterior edge.

Offset 2, canonical program `A006078.P3851421618705836682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078 (n : ℕ) : ℤ :=
  A006078.P3851421618705836682.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006876.P13042802876446333329

`∑{d}[n+1, A024000(#-1)*A296302((n+1)/#)]`
-/

namespace A006876.P13042802876446333329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024000 (d - 1) * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006876.P13042802876446333329

noncomputable section

/-- A006876: Mu-molecules in Mandelbrot set whose seeds have period n.

Offset 1, canonical program `A006876.P13042802876446333329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876 (n : ℕ) : ℤ :=
  A006876.P13042802876446333329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007875.P17107468277189144993

`∑{d}[n+1, A008683(#)*A018892((n+1)/#)]`
-/

namespace A007875.P17107468277189144993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A018892 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007875.P17107468277189144993

noncomputable section

/-- A007875: Number of ways of writing n as p*q, with p <= q, gcd(p, q) = 1.

Offset 1, canonical program `A007875.P17107468277189144993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007875 (n : ℕ) : ℤ :=
  A007875.P17107468277189144993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008280.P18220888390811515843

`A008281(A056023(n+1)-1)`
-/

namespace A008280.P18220888390811515843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A056023 (n + 1) - 1).toNat

end

end A008280.P18220888390811515843

noncomputable section

/-- A008280: Boustrophedon version of triangle of Euler-Bernoulli or Entringer numbers read by rows.

Offset 0, canonical program `A008280.P18220888390811515843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A008280 (n : ℕ) : ℤ :=
  A008280.P18220888390811515843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A008280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011534.P15152361579944605440

`lt[A064532(n), A064692(n)]`
-/

namespace A011534.P15152361579944605440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011534.P15152361579944605440

noncomputable section

/-- A011534: Numbers that contain a 4.

Offset 1, canonical program `A011534.P15152361579944605440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534 (n : ℕ) : ℤ :=
  (A011534.P15152361579944605440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011710.P7560889195647409268

`A011708(A017617(n)+2*n+1)`
-/

namespace A011710.P7560889195647409268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011708 (A017617 n + (2 * n + 1 : ℤ)).toNat

end

end A011710.P7560889195647409268

noncomputable section

/-- A011710: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x+1.

Offset 0, canonical program `A011710.P7560889195647409268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A011710 (n : ℕ) : ℤ :=
  A011710.P7560889195647409268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A011710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011946.P13849652241662667985

`∑{d}[n+1, A001511(#)*A296302((n+1)/#)]`
-/

namespace A011946.P13849652241662667985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P13849652241662667985

noncomputable section

/-- A011946: Number of Barlow packings with group P63/mmc(S) that repeat after 4n layers.

Offset 1, canonical program `A011946.P13849652241662667985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946 (n : ℕ) : ℤ :=
  A011946.P13849652241662667985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013598.P2424592840134159747

`A014211(n)-3^n`
-/

namespace A013598.P2424592840134159747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - (3 ^ n : ℤ)

end

end A013598.P2424592840134159747

noncomputable section

/-- A013598: a(n) = nextprime(3^n)-3^n.

Offset 0, canonical program `A013598.P2424592840134159747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A013598 (n : ℕ) : ℤ :=
  A013598.P2424592840134159747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A013598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013932.P4612329393337214925

`A005117(A020643(n+1))`
-/

namespace A013932.P4612329393337214925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A020643 (n + 1)).toNat

end

end A013932.P4612329393337214925

noncomputable section

/-- A013932: Integers that are squarefree and also the sum of first k squarefrees for some k.

Offset 1, canonical program `A013932.P4612329393337214925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013932 (n : ℕ) : ℤ :=
  A013932.P4612329393337214925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014300.P6272885527061733046

`A333564(n+1)/2^(n+1)`
-/

namespace A014300.P6272885527061733046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333564 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A014300.P6272885527061733046

noncomputable section

/-- A014300: Number of nodes of odd outdegree in all ordered rooted (planar) trees with n edges.

Offset 1, canonical program `A014300.P6272885527061733046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014300 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014300.P6272885527061733046.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014725.P11893219493432893868

`A014414(n+1)²`
-/

namespace A014725.P11893219493432893868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014414 (n + 1) ^ 2

end

end A014725.P11893219493432893868

noncomputable section

/-- A014725: Squares of odd elements in Pascal triangle that are not 1.

Offset 1, canonical program `A014725.P11893219493432893868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014725 (n : ℕ) : ℤ :=
  A014725.P11893219493432893868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014963.P5975177236000282614

`A166140(n+1)/A166142(n+1)`
-/

namespace A014963.P5975177236000282614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166140 (n + 1) : ℚ) / (A166142 (n + 1) : ℚ)

end

end A014963.P5975177236000282614

noncomputable section

/-- A014963: Exponential of Mangoldt function M(n): a(n) = 1 unless n is a prime or prime power, in which case a(n) = that prime.

Offset 1, canonical program `A014963.P5975177236000282614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166140, A166142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014963 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014963.P5975177236000282614.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166140, A166142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024363.P18199515356215548539

`A024361(n+1)+A024362(n+1)`
-/

namespace A024363.P18199515356215548539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + A024362 (n + 1)

end

end A024363.P18199515356215548539

noncomputable section

/-- A024363: Number of primitive Pythagorean triangles with side n.

Offset 1, canonical program `A024363.P18199515356215548539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363 (n : ℕ) : ℤ :=
  A024363.P18199515356215548539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025181.P6813046550114564119

`∑[A026070(n+3)]`
-/

namespace A025181.P6813046550114564119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025181.P6813046550114564119

noncomputable section

/-- A025181: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A025177.

Offset 3, canonical program `A025181.P6813046550114564119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181 (n : ℕ) : ℤ :=
  A025181.P6813046550114564119.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025435.P3024463487466648612

`A000161(n)-A010052(2*n)`
-/

namespace A025435.P3024463487466648612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A010052 (2 * n)

end

end A025435.P3024463487466648612

noncomputable section

/-- A025435: Number of partitions of n into 2 distinct squares.

Offset 0, canonical program `A025435.P3024463487466648612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025435 (n : ℕ) : ℤ :=
  A025435.P3024463487466648612.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025441.P2356104381513953852

`A000161(n)-A093709(n)`
-/

namespace A025441.P2356104381513953852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A093709 n

end

end A025441.P2356104381513953852

noncomputable section

/-- A025441: Number of partitions of n into 2 distinct nonzero squares.

Offset 0, canonical program `A025441.P2356104381513953852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025441 (n : ℕ) : ℤ :=
  A025441.P2356104381513953852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025925.P1140353279712905302

`A029114(n)+A029411(n)-A029102(n)`
-/

namespace A025925.P1140353279712905302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029411 n - A029102 n)

end

end A025925.P1140353279712905302

noncomputable section

/-- A025925: Expansion of 1/((1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025925.P1140353279712905302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925 (n : ℕ) : ℤ :=
  A025925.P1140353279712905302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026181.P4658866943006320217

`a(A049321(n+1))` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A026181.P4658866943006320217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  a (A049321 (n + 1)).toNat

end

end A026181.P4658866943006320217

noncomputable section

/-- A026181: a(n) = (1/2)*(s(n) - s(n-1)), where s = A026180.

Offset 3, canonical program `A026181.P4658866943006320217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026181 (n : ℕ) : ℤ :=
  (A026181.P4658866943006320217.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026270.P10877256987493377450

`Δ[A026269(n+2)]`
-/

namespace A026270.P10877256987493377450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026270.P10877256987493377450

noncomputable section

/-- A026270: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1 = s(n), |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-1), where T is the array in A026268.

Offset 2, canonical program `A026270.P10877256987493377450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026270 (n : ℕ) : ℤ :=
  A026270.P10877256987493377450.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026362.P625232870546419862

`val(∏[A284751(2*(n+1))+2], Δ[A079255(n+1)])`
-/

namespace A026362.P625232870546419862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (f2 (n + 1) - f2 n).toNat

end

end A026362.P625232870546419862

noncomputable section

/-- A026362: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m-1, else a(n) = least positive integer that has not yet occurred.

Offset 1, canonical program `A026362.P625232870546419862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A026362 (n : ℕ) : ℤ :=
  (A026362.P625232870546419862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A026362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026818.P14528478807317566553

`eq[2, A000005(A073730(n+1))]+1`
-/

namespace A026818.P14528478807317566553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073730 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026818.P14528478807317566553

noncomputable section

/-- A026818: Largest digit of n concatenated with smallest digit of n is prime.

Offset 1, canonical program `A026818.P14528478807317566553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A026818 (n : ℕ) : ℤ :=
  (A026818.P14528478807317566553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A026818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026841.P10685944870334291418

`A026843(n+4)-A000588(n+4)`
-/

namespace A026841.P10685944870334291418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026843 (n + 4) - A000588 (n + 4)

end

end A026841.P10685944870334291418

noncomputable section

/-- A026841: a(n) = T(2n,n-4), T given by A026725.

Offset 4, canonical program `A026841.P10685944870334291418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026841 (n : ℕ) : ℤ :=
  A026841.P10685944870334291418.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027705.P11345454911343154343

`A045319(A057428(n)+A027706(n+1))`
-/

namespace A027705.P11345454911343154343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A057428 n + A027706 (n + 1)).toNat

end

end A027705.P11345454911343154343

noncomputable section

/-- A027705: Primes with odd number of 1's in binary expansion such that next prime has even number of 1's.

Offset 1, canonical program `A027705.P11345454911343154343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A027705 (n : ℕ) : ℤ :=
  A027705.P11345454911343154343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A027705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029105.P17542753174349569294

`A029213(abs(1-n))+A029213(n)`
-/

namespace A029105.P17542753174349569294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 |1 - (n : ℤ)|.toNat + A029213 n

end

end A029105.P17542753174349569294

noncomputable section

/-- A029105: Expansion of 1/((1-x)(1-x^5)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029105.P17542753174349569294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029105 (n : ℕ) : ℤ :=
  A029105.P17542753174349569294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029233.P3941505614629625210

`A029183(n)+A029224(n)-A029180(n)`
-/

namespace A029233.P3941505614629625210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 n + (A029224 n - A029180 n)

end

end A029233.P3941505614629625210

noncomputable section

/-- A029233: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029233.P3941505614629625210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029233 (n : ℕ) : ℤ :=
  A029233.P3941505614629625210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029244.P8059623005878958167

`A029213(n)+∑[A029224(n)-A029213(n)]`
-/

namespace A029244.P8059623005878958167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n - A029213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029244.P8059623005878958167

noncomputable section

/-- A029244: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029244.P8059623005878958167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244 (n : ℕ) : ℤ :=
  A029244.P8059623005878958167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029431.P15634929436894288519

`A025907(n)+A029224(n)-A029225(n)`
-/

namespace A029431.P15634929436894288519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n + (A029224 n - A029225 n)

end

end A029431.P15634929436894288519

noncomputable section

/-- A029431: Expansion of 1/((1-x^6)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029431.P15634929436894288519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431 (n : ℕ) : ℤ :=
  A029431.P15634929436894288519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030661.P3495447614067155114

`A151800(n+1)*A101300(n+1)`
-/

namespace A030661.P3495447614067155114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) * A101300 (n + 1)

end

end A030661.P3495447614067155114

noncomputable section

/-- A030661: Product of next 2 primes after n.

Offset 1, canonical program `A030661.P3495447614067155114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A030661 (n : ℕ) : ℤ :=
  A030661.P3495447614067155114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A030661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032818.P11687481509006464414

`2*(3*A032927(n+1)-A032806(n+1))-A032927(n+1)`
-/

namespace A032818.P11687481509006464414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A032927 (n + 1) - A032806 (n + 1)) - A032927 (n + 1)

end

end A032818.P11687481509006464414

noncomputable section

/-- A032818: Numbers whose set of base-6 digits is {1,4}.

Offset 1, canonical program `A032818.P11687481509006464414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032818 (n : ℕ) : ℤ :=
  A032818.P11687481509006464414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032830.P14599917088282478471

`2*A032806(n+1)-A032927(n+1)`
-/

namespace A032830.P14599917088282478471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032806 (n + 1) - A032927 (n + 1)

end

end A032830.P14599917088282478471

noncomputable section

/-- A032830: Numbers whose set of base-6 digits is {3,4}.

Offset 1, canonical program `A032830.P14599917088282478471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032830 (n : ℕ) : ℤ :=
  A032830.P14599917088282478471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032834.P5670912099542955886

`A032810(n+1)+A256077(n+1)`
-/

namespace A032834.P5670912099542955886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + A256077 (n + 1)

end

end A032834.P5670912099542955886

noncomputable section

/-- A032834: Numbers with digits 3 and 4 only.

Offset 1, canonical program `A032834.P5670912099542955886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032834 (n : ℕ) : ℤ :=
  A032834.P5670912099542955886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032913.P14296521150570778594

`3*A032927(n+1)-A032806(n+1)`
-/

namespace A032913.P14296521150570778594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032927 (n + 1) - A032806 (n + 1)

end

end A032913.P14296521150570778594

noncomputable section

/-- A032913: Numbers whose set of base-6 digits is {1,3}.

Offset 1, canonical program `A032913.P14296521150570778594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032913 (n : ℕ) : ℤ :=
  A032913.P14296521150570778594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032917.P11895141288278399977

`A284921(n+1)-A032822(n+1)`
-/

namespace A032917.P11895141288278399977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A032822 (n + 1)

end

end A032917.P11895141288278399977

noncomputable section

/-- A032917: Numbers having only digits 1 and 3 in their decimal representation.

Offset 1, canonical program `A032917.P11895141288278399977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032917 (n : ℕ) : ℤ :=
  A032917.P11895141288278399977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033215.P2128816261524133754

`∩[A008846(n+1), A139492(n+1)]`
-/

namespace A033215.P2128816261524133754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P2128816261524133754

noncomputable section

/-- A033215: Primes of form x^2+21*y^2.

Offset 1, canonical program `A033215.P2128816261524133754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A033215 (n : ℕ) : ℤ :=
  (A033215.P2128816261524133754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A033215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034956.P16124176413780656926

`(A034960(n+1)+A000040(n+1))/2`
-/

namespace A034956.P16124176413780656926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) + A000040 (n + 1) : ℚ) / 2

end

end A034956.P16124176413780656926

noncomputable section

/-- A034956: Divide natural numbers in groups with prime(n) elements and add together.

Offset 1, canonical program `A034956.P16124176413780656926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034956.P16124176413780656926.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036660.P2237359148755878033

`(A007504(A014688(n+1))-A007504(n+1))*A000040(n+1)`
-/

namespace A036660.P2237359148755878033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (A014688 (n + 1)).toNat - A007504 (n + 1)) * A000040 (n + 1)

end

end A036660.P2237359148755878033

noncomputable section

/-- A036660: Product of prime p with sum of next p consecutive primes.

Offset 1, canonical program `A036660.P2237359148755878033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A036660 (n : ℕ) : ℤ :=
  A036660.P2237359148755878033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A036660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037128.P2879077099965106880

`A014211(n)-A014210(n)`
-/

namespace A037128.P2879077099965106880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - A014210 n

end

end A037128.P2879077099965106880

noncomputable section

/-- A037128: a(n) = nextprime(3^n) - nextprime(2^n).

Offset 0, canonical program `A037128.P2879077099965106880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037128 (n : ℕ) : ℤ :=
  A037128.P2879077099965106880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037131.P15693349067059617684

`A037130(n)/2`
-/

namespace A037131.P15693349067059617684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037130 n : ℚ) / 2

end

end A037131.P15693349067059617684

noncomputable section

/-- A037131: a(n) = (nextprime(4^n) - nextprime(2^n))/2.

Offset 0, canonical program `A037131.P15693349067059617684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037131.P15693349067059617684.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038587.P18029741549322607791

`∑[A005882(n)]`
-/

namespace A038587.P18029741549322607791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P18029741549322607791

noncomputable section

/-- A038587: Sizes of successive clusters in hexagonal lattice A_2 centered at deep hole.

Offset 0, canonical program `A038587.P18029741549322607791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038587 (n : ℕ) : ℤ :=
  A038587.P18029741549322607791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039285.P4990860470344623038

`∩[A039009(n+1), A382415(n+1)]`
-/

namespace A039285.P4990860470344623038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039285.P4990860470344623038

noncomputable section

/-- A039285: Numbers whose base-5 representation has the same nonzero number of 0's and 3's.

Offset 1, canonical program `A039285.P4990860470344623038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3096 terms. -/
def A039285 (n : ℕ) : ℤ :=
  (A039285.P4990860470344623038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3096 terms. -/
def A039285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039731.P13748971199648184030

`A065091(n+1)-A039734(n+2)`
-/

namespace A039731.P13748971199648184030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A039734 (n + 2)

end

end A039731.P13748971199648184030

noncomputable section

/-- A039731: a(n) = max{prime(n) mod q, where prime q < prime(n) = n-th prime}.

Offset 2, canonical program `A039731.P13748971199648184030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039731 (n : ℕ) : ℤ :=
  A039731.P13748971199648184030.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040115.P18270072698268688053

`A037904(A000007(n²)+n)`
-/

namespace A040115.P18270072698268688053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A040115.P18270072698268688053

noncomputable section

/-- A040115: Concatenate absolute values of differences between adjacent digits of n.

Offset 0, canonical program `A040115.P18270072698268688053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A040115 (n : ℕ) : ℤ :=
  A040115.P18270072698268688053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A040115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043505.P9579580581361236781

`eq[A064532(n)+1, A064692(n)]`
-/

namespace A043505.P9579580581361236781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P9579580581361236781

noncomputable section

/-- A043505: Numbers having one 4 in base 10.

Offset 1, canonical program `A043505.P9579580581361236781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043505 (n : ℕ) : ℤ :=
  (A043505.P9579580581361236781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043555.P11372978209662436476

`A043556(A023717(n))`
-/

namespace A043555.P11372978209662436476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A023717 n).toNat

end

end A043555.P11372978209662436476

noncomputable section

/-- A043555: Number of runs in base-3 representation of n.

Offset 0, canonical program `A043555.P11372978209662436476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A043555 (n : ℕ) : ℤ :=
  A043555.P11372978209662436476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A043555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043677.P9553240289971708016

`A043675(n+1)+A262616(A056000(n)+6)²`
-/

namespace A043677.P9553240289971708016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 1) + A262616 (A056000 n + 6).toNat ^ 2

end

end A043677.P9553240289971708016

noncomputable section

/-- A043677: Numbers whose base-16 representation has exactly 4 runs.

Offset 1, canonical program `A043677.P9553240289971708016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A043677 (n : ℕ) : ℤ :=
  A043677.P9553240289971708016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A043677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045028.P3838657998605660470

`∩[A023708(n+1), A023709(n+1)]`
-/

namespace A045028.P3838657998605660470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045028.P3838657998605660470

noncomputable section

/-- A045028: Numbers whose base-4 representation contains exactly three 0's and no 1's.

Offset 1, canonical program `A045028.P3838657998605660470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A045028 (n : ℕ) : ℤ :=
  (A045028.P3838657998605660470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A045028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045029.P11329580478478810861

`∩[A023708(n+1), A023710(n+1)]`
-/

namespace A045029.P11329580478478810861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045029.P11329580478478810861

noncomputable section

/-- A045029: Numbers whose base-4 representation contains exactly three 0's and one 1.

Offset 1, canonical program `A045029.P11329580478478810861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A045029 (n : ℕ) : ℤ :=
  (A045029.P11329580478478810861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A045029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045033.P13537132083446231086

`∩[A023709(n+1), A043336(n+1)]`
-/

namespace A045033.P13537132083446231086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045033.P13537132083446231086

noncomputable section

/-- A045033: Numbers whose base-4 representation contains exactly four 0's and no 1's.

Offset 1, canonical program `A045033.P13537132083446231086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A045033 (n : ℕ) : ℤ :=
  (A045033.P13537132083446231086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A045033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045053.P13165953604625975418

`∩[A023708(n+1), A023714(n+1)]`
-/

namespace A045053.P13165953604625975418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045053.P13165953604625975418

noncomputable section

/-- A045053: Numbers whose base-4 representation contains exactly three 0's and one 2.

Offset 1, canonical program `A045053.P13165953604625975418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A045053 (n : ℕ) : ℤ :=
  (A045053.P13165953604625975418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A045053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045054.P5102495377277292480

`∩[A023708(n+1), A023715(n+1)]`
-/

namespace A045054.P5102495377277292480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045054.P5102495377277292480

noncomputable section

/-- A045054: Numbers whose base-4 representation contains exactly three 0's and two 2's.

Offset 1, canonical program `A045054.P5102495377277292480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A045054 (n : ℕ) : ℤ :=
  (A045054.P5102495377277292480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A045054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045058.P4738524423599092731

`filter[A043336(n+1), A064990(A338854(#))]`
-/

namespace A045058.P4738524423599092731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064990 (A338854 (f1 j).toNat).toNat = 1) n)

end

end A045058.P4738524423599092731

noncomputable section

/-- A045058: Numbers whose base-4 representation contains exactly four 0's and one 2.

Offset 1, canonical program `A045058.P4738524423599092731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A045058 (n : ℕ) : ℤ :=
  A045058.P4738524423599092731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A045058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045077.P18224216252546591222

`∩[A023708(n+1), A023718(n+1)]`
-/

namespace A045077.P18224216252546591222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045077.P18224216252546591222

noncomputable section

/-- A045077: Numbers whose base-4 representation contains exactly three 0's and one 3.

Offset 1, canonical program `A045077.P18224216252546591222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A045077 (n : ℕ) : ℤ :=
  (A045077.P18224216252546591222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A045077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045078.P1198269860631317732

`∩[A023708(n+1), A031462(n+1)]`
-/

namespace A045078.P1198269860631317732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045078.P1198269860631317732

noncomputable section

/-- A045078: Numbers whose base-4 representation contains exactly three 0's and two 3's.

Offset 1, canonical program `A045078.P1198269860631317732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A045078 (n : ℕ) : ℤ :=
  (A045078.P1198269860631317732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A045078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045082.P11121397618110216211

`∩[A031464(n+1), A043336(n+1)]`
-/

namespace A045082.P11121397618110216211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045082.P11121397618110216211

noncomputable section

/-- A045082: Numbers whose base-4 representation contains exactly four 0's and one 3.

Offset 1, canonical program `A045082.P11121397618110216211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A045082 (n : ℕ) : ℤ :=
  (A045082.P11121397618110216211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A045082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046159.P12915748056577816484

`A270248(n+2)-1`
-/

namespace A046159.P12915748056577816484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 2) - 1

end

end A046159.P12915748056577816484

noncomputable section

/-- A046159: Bends of spheres in the plane of Soddy's bowl of integers.

Offset 1, canonical program `A046159.P12915748056577816484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046159 (n : ℕ) : ℤ :=
  A046159.P12915748056577816484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046389.P14226479357517666807

`filter[A046316(n+1), A359590(#)]`
-/

namespace A046389.P14226479357517666807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A046389.P14226479357517666807

noncomputable section

/-- A046389: Products of exactly three distinct odd primes.

Offset 1, canonical program `A046389.P14226479357517666807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7793 terms. -/
def A046389 (n : ℕ) : ℤ :=
  A046389.P14226479357517666807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7793 terms. -/
def A046389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049093.P5208280421691418711

`eq[1, A272334(n+1)]+1`
-/

namespace A049093.P5208280421691418711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049093.P5208280421691418711

noncomputable section

/-- A049093: Numbers n such that 2^n - 1 is squarefree.

Offset 1, canonical program `A049093.P5208280421691418711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A049093 (n : ℕ) : ℤ :=
  (A049093.P5208280421691418711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A049093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049640.P11900036197294698839

`∑[ceil(A049644(n)/2)]`
-/

namespace A049640.P11900036197294698839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049644 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P11900036197294698839

noncomputable section

/-- A049640: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049639.

Offset 0, canonical program `A049640.P11900036197294698839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A049640 (n : ℕ) : ℤ :=
  A049640.P11900036197294698839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A049640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050433.P14682806207402057435

`A399787(A007091(n+1))`
-/

namespace A050433.P14682806207402057435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A007091 (n + 1)).toNat

end

end A050433.P14682806207402057435

noncomputable section

/-- A050433: Length of longest palindromic subword of (n base 5).

Offset 1, canonical program `A050433.P14682806207402057435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A050433 (n : ℕ) : ℤ :=
  A050433.P14682806207402057435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A050433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052406.P11983566337862836048

`eq[A064532(n), A064692(n)]`
-/

namespace A052406.P11983566337862836048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P11983566337862836048

noncomputable section

/-- A052406: Numbers without 4 as a digit.

Offset 1, canonical program `A052406.P11983566337862836048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052406 (n : ℕ) : ℤ :=
  (A052406.P11983566337862836048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052424.P2266078276954226597

`A055398(A028310(n))-A000007(n)`
-/

namespace A052424.P2266078276954226597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A000007 n

end

end A052424.P2266078276954226597

noncomputable section

/-- A052424: Numbers k with no single-digit factors (apart from 1 and k).

Offset 1, canonical program `A052424.P2266078276954226597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052424 (n : ℕ) : ℤ :=
  A052424.P2266078276954226597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052785.P11887550374541330113

`n*A056456(A004281(n))`
-/

namespace A052785.P11887550374541330113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056456 (A004281 n).toNat

end

end A052785.P11887550374541330113

noncomputable section

/-- A052785: a(n) = 5!*n*Stirling2(n-1, 5).

Offset 0, canonical program `A052785.P11887550374541330113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A052785 (n : ℕ) : ℤ :=
  A052785.P11887550374541330113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A052785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053231.P17318792137440536864

`A053230(A053232(n+1))`
-/

namespace A053231.P17318792137440536864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A053232 (n + 1)).toNat

end

end A053231.P17318792137440536864

noncomputable section

/-- A053231: First differences between n for which sigma(n) < sigma(n+1), which are not 2.

Offset 1, canonical program `A053231.P17318792137440536864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053230, A053232, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053231 (n : ℕ) : ℤ :=
  A053231.P17318792137440536864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053230, A053232, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053242.P8865335897655039445

`A053240(lt[A053239(n+1), 2]+1)`
-/

namespace A053242.P8865335897655039445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053242.P8865335897655039445

noncomputable section

/-- A053242: Numbers k such that A053238(k) = 1.

Offset 1, canonical program `A053242.P8865335897655039445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. -/
def A053242 (n : ℕ) : ℤ :=
  A053242.P8865335897655039445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. -/
def A053242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053244.P10580565334014799152

`A053240(lt[3, A053239(n+1)]+1)`
-/

namespace A053244.P10580565334014799152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053244.P10580565334014799152

noncomputable section

/-- A053244: Numbers k such that A053238(k) = 4.

Offset 1, canonical program `A053244.P10580565334014799152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A053244 (n : ℕ) : ℤ :=
  A053244.P10580565334014799152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A053244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053415.P11839026962097623203

`4*A349609(n)`
-/

namespace A053415.P11839026962097623203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A349609 n

end

end A053415.P11839026962097623203

noncomputable section

/-- A053415: Circle numbers (version 3): a(n) = number of points (i,j), i,j integers, contained in a circle of diameter n, centered at (1/2, 1/2).

Offset 0, canonical program `A053415.P11839026962097623203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A053415 (n : ℕ) : ℤ :=
  A053415.P11839026962097623203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A053415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055035.P11736500335197539708

`A093819(2*(n+1))`
-/

namespace A055035.P11736500335197539708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (2 * (n + 1))

end

end A055035.P11736500335197539708

noncomputable section

/-- A055035: Degree of minimal polynomial of sin(Pi/n) over the rationals.

Offset 1, canonical program `A055035.P11736500335197539708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055035 (n : ℕ) : ℤ :=
  A055035.P11736500335197539708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055403.P1314852680772873316

`A224213(n²)`
-/

namespace A055403.P1314852680772873316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224213 (n ^ 2)

end

end A055403.P1314852680772873316

noncomputable section

/-- A055403: Number of points in N^4 of norm <= n.

Offset 0, canonical program `A055403.P1314852680772873316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A055403 (n : ℕ) : ℤ :=
  A055403.P1314852680772873316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A055403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055671.P14398958328813777781

`24*A055672(n)`
-/

namespace A055671.P14398958328813777781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A055672 n

end

end A055671.P14398958328813777781

noncomputable section

/-- A055671: Number of prime Hurwitz quaternions of norm n.

Offset 0, canonical program `A055671.P14398958328813777781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055671 (n : ℕ) : ℤ :=
  A055671.P14398958328813777781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056139.P2026426973506976792

`(n+2)²-A030664(n+2)`
-/

namespace A056139.P2026426973506976792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A030664 (n + 2)

end

end A056139.P2026426973506976792

noncomputable section

/-- A056139: a(n) = n^2 - primefloor(n)*primeceiling(n).

Offset 2, canonical program `A056139.P2026426973506976792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056139 (n : ℕ) : ℤ :=
  A056139.P2026426973506976792.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056285.P5189115388311217004

`∑{d}[n+1, A056290(#)]`
-/

namespace A056285.P5189115388311217004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056290 d

end

end A056285.P5189115388311217004

noncomputable section

/-- A056285: Number of n-bead necklaces with exactly five different colored beads.

Offset 1, canonical program `A056285.P5189115388311217004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056285 (n : ℕ) : ℤ :=
  A056285.P5189115388311217004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057811.P15232790486680947768

`a(n-1)+A096500(a(n-1))+1` with `a(0)=1`
-/

namespace A057811.P15232790486680947768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057811.P15232790486680947768

noncomputable section

/-- A057811: Numbers k such that pi(k) is even.

Offset 1, canonical program `A057811.P15232790486680947768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811 (n : ℕ) : ℤ :=
  A057811.P15232790486680947768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057812.P4262350410008531703

`a(n-1)+A096500(a(n-1))+1` with `a(0)=2`
-/

namespace A057812.P4262350410008531703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057812.P4262350410008531703

noncomputable section

/-- A057812: Numbers k such that pi(k) is odd.

Offset 1, canonical program `A057812.P4262350410008531703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812 (n : ℕ) : ℤ :=
  A057812.P4262350410008531703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057891.P12237480807863623377

`lt[0, A175919(xor(n, A175919(n)))]`
-/

namespace A057891.P12237480807863623377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (Int.xor (n : ℤ) (A175919 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P12237480807863623377

noncomputable section

/-- A057891: In base 2, neither a palindrome nor becomes a palindrome if trailing 0's are omitted.

Offset 1, canonical program `A057891.P12237480807863623377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057891 (n : ℕ) : ℤ :=
  (A057891.P12237480807863623377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062729.P4043378866416344569

`lt[A284599(n+1), 1]+1`
-/

namespace A062729.P4043378866416344569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A062729.P4043378866416344569

noncomputable section

/-- A062729: Numbers that are not divisible by any prime=p, where either p-2 or p+2 is prime.

Offset 1, canonical program `A062729.P4043378866416344569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A062729 (n : ℕ) : ℤ :=
  (A062729.P4043378866416344569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A062729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063014.P2435970929241132637

`A000161(n²)`
-/

namespace A063014.P2435970929241132637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (n ^ 2)

end

end A063014.P2435970929241132637

noncomputable section

/-- A063014: Number of solutions to n^2 = b^2 + c^2 (with c >= b >= 0).

Offset 0, canonical program `A063014.P2435970929241132637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063014 (n : ℕ) : ℤ :=
  A063014.P2435970929241132637.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065364.P12653479554998272928

`∑[A009001(A163746(A047789(n)))]`
-/

namespace A065364.P12653479554998272928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A163746 (A047789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P12653479554998272928

noncomputable section

/-- A065364: Alternating sum of balanced ternary digits in n. Replace 3^k with (-1)^k in balanced ternary expansion of n.

Offset 1, canonical program `A065364.P12653479554998272928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065364 (n : ℕ) : ℤ :=
  A065364.P12653479554998272928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065683.P16875126102504137122

`∑[A316865(A137589(n+1))]`
-/

namespace A065683.P16875126102504137122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A137589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P16875126102504137122

noncomputable section

/-- A065683: Number of primes <= prime(n) which begin with a 4.

Offset 1, canonical program `A065683.P16875126102504137122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065683 (n : ℕ) : ℤ :=
  A065683.P16875126102504137122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066197.P11231834716890673726

`A007947(A033286(n+1)*A014688(n+1))`
-/

namespace A066197.P11231834716890673726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033286 (n + 1) * A014688 (n + 1)).toNat

end

end A066197.P11231834716890673726

noncomputable section

/-- A066197: Squarefree kernel of (n*prime(n))*(n+prime(n)).

Offset 1, canonical program `A066197.P11231834716890673726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066197 (n : ℕ) : ℤ :=
  A066197.P11231834716890673726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067536.P16574597786974655747

`∩[A067544(n+1)+1, A067544(n+1)]`
-/

namespace A067536.P16574597786974655747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067544 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067536.P16574597786974655747

noncomputable section

/-- A067536: Numbers k such that phi(k*(k+1)*(k+2)/3)/phi(k) is not an integer where phi(k) is the Euler totient function A000010(k).

Offset 1, canonical program `A067536.P16574597786974655747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A067536 (n : ℕ) : ℤ :=
  (A067536.P16574597786974655747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A067536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068014.P14499668269044334980

`filter[A066073(n+1), A296079(#)]`
-/

namespace A068014.P14499668269044334980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A068014.P14499668269044334980

noncomputable section

/-- A068014: Nonprimes n such that 1+phi(n) and -1 + sigma(n) are prime numbers.

Offset 1, canonical program `A068014.P14499668269044334980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A068014 (n : ℕ) : ℤ :=
  A068014.P14499668269044334980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A068014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068017.P16214505298946191943

`filter[A066073(n+1), A296212(#)]`
-/

namespace A068017.P16214505298946191943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A068017.P16214505298946191943

noncomputable section

/-- A068017: Composite n such that sigma(n) - 1 and sigma(n) + 1 are twin primes.

Offset 1, canonical program `A068017.P16214505298946191943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A068017 (n : ℕ) : ℤ :=
  A068017.P16214505298946191943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A068017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068140.P16002895801053887860

`∩[A046099(n+1)-1, A046099(n+1)]`
-/

namespace A068140.P16002895801053887860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068140.P16002895801053887860

noncomputable section

/-- A068140: Smaller of two consecutive numbers each divisible by a cube greater than one.

Offset 1, canonical program `A068140.P16002895801053887860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A068140 (n : ℕ) : ℤ :=
  (A068140.P16002895801053887860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A068140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068822.P12092756705496627243

`gcd(n+1, A089186(n+1))`
-/

namespace A068822.P12092756705496627243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A089186 (n + 1))

end

end A068822.P12092756705496627243

noncomputable section

/-- A068822: a(n) = gcd(n,c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068822.P12092756705496627243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068822 (n : ℕ) : ℤ :=
  (A068822.P12092756705496627243.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071329.P5834183981238197590

`A000040(A000720(A014688(n+1)))`
-/

namespace A071329.P5834183981238197590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A014688 (n + 1)).toNat).toNat

end

end A071329.P5834183981238197590

noncomputable section

/-- A071329: Largest prime q such that q - prime(n) <= n.

Offset 1, canonical program `A071329.P5834183981238197590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071329 (n : ℕ) : ℤ :=
  A071329.P5834183981238197590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071585.P327096867554570626

`A093875(2*n+1)`
-/

namespace A071585.P327096867554570626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * n + 1)

end

end A071585.P327096867554570626

noncomputable section

/-- A071585: Numerator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4*n, with the exponents of 2 being listed in descending order.

Offset 0, canonical program `A071585.P327096867554570626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585 (n : ℕ) : ℤ :=
  A071585.P327096867554570626.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071680.P13360749277261399360

`A000040(eq[1, A087032(A000040(n+1))]+2)`
-/

namespace A071680.P13360749277261399360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087032 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A071680.P13360749277261399360

noncomputable section

/-- A071680: Primes that are the arithmetic mean of their prime predecessor and another prime.

Offset 1, canonical program `A071680.P13360749277261399360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680 (n : ℕ) : ℤ :=
  A071680.P13360749277261399360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072902.P12422950838438587847

`filter[A003658(n+1), A005171(#)]`
-/

namespace A072902.P12422950838438587847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A072902.P12422950838438587847

noncomputable section

/-- A072902: Nonprime numbers m such that the discriminant of the quadratic field Q(sqrt(m)) equals m.

Offset 1, canonical program `A072902.P12422950838438587847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8249 terms. -/
def A072902 (n : ℕ) : ℤ :=
  A072902.P12422950838438587847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8249 terms. -/
def A072902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073092.P2540697640197989039

`∑[A000161(n)]`
-/

namespace A073092.P2540697640197989039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P2540697640197989039

noncomputable section

/-- A073092: Number of numbers of the form x^2 + y^2 (0 <= x <= y) less than or equal to n.

Offset 0, canonical program `A073092.P2540697640197989039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073092 (n : ℕ) : ℤ :=
  A073092.P2540697640197989039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073248.P6563719464096944215

`∩[A053806(n+1)-2, A072284(n+1)]`
-/

namespace A073248.P6563719464096944215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P6563719464096944215

noncomputable section

/-- A073248: Squarefree numbers k such that k+1 is also squarefree, but k-1 and k+2 are not.

Offset 1, canonical program `A073248.P6563719464096944215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248 (n : ℕ) : ℤ :=
  (A073248.P6563719464096944215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074451.P6339124675814349987

`∩[A007412(n+1), A046099(n+1)]`
-/

namespace A074451.P6339124675814349987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074451.P6339124675814349987

noncomputable section

/-- A074451: Non-cubefree noncubes.

Offset 1, canonical program `A074451.P6339124675814349987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A074451 (n : ℕ) : ℤ :=
  (A074451.P6339124675814349987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A074451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075439.P4067390105220631629

`(1-A262855(n))^n`
-/

namespace A075439.P4067390105220631629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A262855 n) ^ n

end

end A075439.P4067390105220631629

noncomputable section

/-- A075439: Triangle read by rows giving successive iterations of the Rule 102 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

Offset 0, canonical program `A075439.P4067390105220631629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075439 (n : ℕ) : ℤ :=
  A075439.P4067390105220631629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077128.P6236648735543472976

`A097050(n+1)`
-/

namespace A077128.P6236648735543472976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097050 (n + 1)

end

end A077128.P6236648735543472976

noncomputable section

/-- A077128: Smallest number greater than the previous term which is relatively prime to each of the group of the next n numbers.

Offset 1, canonical program `A077128.P6236648735543472976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A077128 (n : ℕ) : ℤ :=
  A077128.P6236648735543472976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A077128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077766.P11012053615394286176

`Δ[A348196(1+n)]`
-/

namespace A077766.P11012053615394286176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P11012053615394286176

noncomputable section

/-- A077766: Number of primes of form 4k+1 between n^2 and (n+1)^2.

Offset 1, canonical program `A077766.P11012053615394286176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077766 (n : ℕ) : ℤ :=
  A077766.P11012053615394286176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079715.P16991803801828527791

`A056812(n+1)+1`
-/

namespace A079715.P16991803801828527791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (n + 1) + 1

end

end A079715.P16991803801828527791

noncomputable section

/-- A079715: a(n) = pi(n) - pi(sqrt(n)) + 1.

Offset 1, canonical program `A079715.P16991803801828527791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079715 (n : ℕ) : ℤ :=
  A079715.P16991803801828527791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080903.P12103839465626112779

`A086398(n+1)-2*A284751(n+1)`
-/

namespace A080903.P12103839465626112779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - 2 * A284751 (n + 1)

end

end A080903.P12103839465626112779

noncomputable section

/-- A080903: a(1)=1; for n>1, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

Offset 1, canonical program `A080903.P12103839465626112779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080903 (n : ℕ) : ℤ :=
  A080903.P12103839465626112779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081241.P18283941350862078452

`(A145341(n+3)-3)/2`
-/

namespace A081241.P18283941350862078452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 3) - 3 : ℚ) / 2

end

end A081241.P18283941350862078452

noncomputable section

/-- A081241: Position in B of reversal of n-th term of B, where B is the logic-binary sequence, A007931.

Offset 1, canonical program `A081241.P18283941350862078452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081241 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081241.P18283941350862078452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083855.P6196543086430157343

`A007913(A083854(n+1))`
-/

namespace A083855.P6196543086430157343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A083854 (n + 1)).toNat

end

end A083855.P6196543086430157343

noncomputable section

/-- A083855: Multiplicands in the list of numbers which are squares, twice squares, three times squares, or six times squares (A083854).

Offset 1, canonical program `A083855.P6196543086430157343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083855 (n : ℕ) : ℤ :=
  A083855.P6196543086430157343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086581.P8583732597742217760

`A188464(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A086581.P8583732597742217760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A188464 (n - 2) + a (n - 1)

end

end A086581.P8583732597742217760

noncomputable section

/-- A086581: Number of Dyck paths of semilength n with no DDUU.

Offset 0, canonical program `A086581.P8583732597742217760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A086581 (n : ℕ) : ℤ :=
  A086581.P8583732597742217760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A086581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087031.P17529191149633832265

`record[(n+1)*A087032(n+1)]`
-/

namespace A087031.P17529191149633832265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087031.P17529191149633832265

noncomputable section

/-- A087031: Numbers n such that 2p-n is prime, p is the smallest prime > n.

Offset 1, canonical program `A087031.P17529191149633832265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031 (n : ℕ) : ℤ :=
  A087031.P17529191149633832265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087207.P12536008426233777954

`A048675(A007947(n+1))`
-/

namespace A087207.P12536008426233777954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (n + 1)).toNat

end

end A087207.P12536008426233777954

noncomputable section

/-- A087207: A binary representation of the primes that divide a number, shown in decimal.

Offset 1, canonical program `A087207.P12536008426233777954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087207 (n : ℕ) : ℤ :=
  A087207.P12536008426233777954.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089200.P17182532322328293413

`p?[A046099(n+1)+1]`
-/

namespace A089200.P17182532322328293413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P17182532322328293413

noncomputable section

/-- A089200: Primes p such that p-1 is divisible by a cube.

Offset 1, canonical program `A089200.P17182532322328293413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. -/
def A089200 (n : ℕ) : ℤ :=
  A089200.P17182532322328293413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. -/
def A089200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094178.P10442744756588594346

`floor(A008846(n+1)/4)`
-/

namespace A094178.P10442744756588594346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008846 (n + 1) : ℚ) / 4⌋

end

end A094178.P10442744756588594346

noncomputable section

/-- A094178: Numbers n such that 4n+1 is divisible only by primes of form 4m+1 (i.e., by the Pythagorean primes A002144).

Offset 1, canonical program `A094178.P10442744756588594346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178 (n : ℕ) : ℤ :=
  A094178.P10442744756588594346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096445.P14489248109655328566

`∑{d}[n+1, A120630(#)*A145392((n+1)/#)]`
-/

namespace A096445.P14489248109655328566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A145392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096445.P14489248109655328566

noncomputable section

/-- A096445: Number of reduced primitive positive definite binary quadratic forms of determinant n^2.

Offset 1, canonical program `A096445.P14489248109655328566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445 (n : ℕ) : ℤ :=
  A096445.P14489248109655328566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096458.P15713165605853716230

`A210882(round(n/(n+1))*A210882(n+2)+1)`
-/

namespace A096458.P15713165605853716230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) * A210882 (n + 2) + 1).toNat

end

end A096458.P15713165605853716230

noncomputable section

/-- A096458: If n is prime, the next prime after the next prime after n. otherwise n.

Offset 1, canonical program `A096458.P15713165605853716230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096458 (n : ℕ) : ℤ :=
  A096458.P15713165605853716230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099184.P11748216234505321066

`A059456(n+3)`
-/

namespace A099184.P11748216234505321066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 3)

end

end A099184.P11748216234505321066

noncomputable section

/-- A099184: Heavy primes: primes p such that p-1 has more than 2 divisors with multiplicity.

Offset 2, canonical program `A099184.P11748216234505321066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A099184 (n : ℕ) : ℤ :=
  A099184.P11748216234505321066.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A099184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100810.P14849954687641833243

`1-A062301(n+2)`
-/

namespace A100810.P14849954687641833243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062301 (n + 2)

end

end A100810.P14849954687641833243

noncomputable section

/-- A100810: a(n) = 0 if prime(n) + 2 = prime(n+1), otherwise 1.

Offset 1, canonical program `A100810.P14849954687641833243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100810 (n : ℕ) : ℤ :=
  A100810.P14849954687641833243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100821.P8316936517107752978

`A062301(n+2)`
-/

namespace A100821.P8316936517107752978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

end

end A100821.P8316936517107752978

noncomputable section

/-- A100821: a(n) = 1 if prime(n) + 2 = prime(n+1), otherwise 0.

Offset 1, canonical program `A100821.P8316936517107752978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100821 (n : ℕ) : ℤ :=
  A100821.P8316936517107752978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104163.P9304541644358022485

`(3*A158708(n+2)-1)/2`
-/

namespace A104163.P9304541644358022485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A158708 (n + 2) - 1 : ℚ) / 2

end

end A104163.P9304541644358022485

noncomputable section

/-- A104163: Primes p such that (2p+1)/3 is prime.

Offset 1, canonical program `A104163.P9304541644358022485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104163.P9304541644358022485.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104477.P14182491758873467040

`and(1, n+1)*A104481(A008619(n))`
-/

namespace A104477.P14182491758873467040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) * A104481 (A008619 n).toNat

end

end A104477.P14182491758873467040

noncomputable section

/-- A104477: Number of successive squarefree intervals between primes.

Offset 1, canonical program `A104477.P14182491758873467040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104477 (n : ℕ) : ℤ :=
  A104477.P14182491758873467040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104897.P16686351449696100309

`A104860(n+1)-A014688(n+1)`
-/

namespace A104897.P16686351449696100309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104860 (n + 1) - A014688 (n + 1)

end

end A104897.P16686351449696100309

noncomputable section

/-- A104897: Difference between (n+prime(n)) and next prime.

Offset 1, canonical program `A104897.P16686351449696100309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104897 (n : ℕ) : ℤ :=
  A104897.P16686351449696100309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106077.P8883552310742186102

`∩[A023205(n+1), A023217(n+1)]`
-/

namespace A106077.P8883552310742186102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P8883552310742186102

noncomputable section

/-- A106077: Primes p such that 5*p + 2 and 2*p + 5 are primes.

Offset 1, canonical program `A106077.P8883552310742186102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A106077 (n : ℕ) : ℤ :=
  (A106077.P8883552310742186102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A106077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106103.P12542325979256717480

`p?[A284064(n+1)]`
-/

namespace A106103.P12542325979256717480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106103.P12542325979256717480

noncomputable section

/-- A106103: Primes with minimal digit = 3.

Offset 1, canonical program `A106103.P12542325979256717480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103 (n : ℕ) : ℤ :=
  A106103.P12542325979256717480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107695.P2417400497827237596

`∩[A034056(n+1), A245382(n+1)]`
-/

namespace A107695.P2417400497827237596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107695.P2417400497827237596

noncomputable section

/-- A107695: Primes with digital product = 9.

Offset 1, canonical program `A107695.P2417400497827237596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A107695 (n : ℕ) : ℤ :=
  (A107695.P2417400497827237596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A107695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107965.P6077412395707171614

`A107916(n)+A107941(n)-A107942(n)`
-/

namespace A107965.P6077412395707171614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107916 n + (A107941 n - A107942 n)

end

end A107965.P6077412395707171614

noncomputable section

/-- A107965: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(11n^4 + 110n^3 + 439n^2 + 820n + 600)/86400.

Offset 0, canonical program `A107965.P6077412395707171614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965 (n : ℕ) : ℤ :=
  A107965.P6077412395707171614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108154.P5474788176503657523

`char[eq[1, A289356(n)]]*A182047(n)`
-/

namespace A108154.P5474788176503657523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A182047 n

end

end A108154.P5474788176503657523

noncomputable section

/-- A108154: a(n) = n^2 - n + 1 if prime else 0.

Offset 1, canonical program `A108154.P5474788176503657523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108154 (n : ℕ) : ℤ :=
  A108154.P5474788176503657523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109091.P7060246415763713748

`A284097(n+1)+A284103(n+1)-A284280(n+1)-A284281(n+1)`
-/

namespace A109091.P7060246415763713748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + A284103 (n + 1) - A284280 (n + 1) - A284281 (n + 1)

end

end A109091.P7060246415763713748

noncomputable section

/-- A109091: Expansion of (1 - eta(q)^5 / eta(q^5)) / 5 in powers of q.

Offset 1, canonical program `A109091.P7060246415763713748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109091 (n : ℕ) : ℤ :=
  A109091.P7060246415763713748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113545.P13162396840576441610

`record[A007913(n+1)/A279497(n+1)]`
-/

namespace A113545.P13162396840576441610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P13162396840576441610

noncomputable section

/-- A113545: Numbers both pentagon-free and squarefree.

Offset 1, canonical program `A113545.P13162396840576441610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113545 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113545.P13162396840576441610.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115178.P12397006831980375298

`A007477(n)-a(n-1)` with `a(0)=1`
-/

namespace A115178.P12397006831980375298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007477 n - a (n - 1)

end

end A115178.P12397006831980375298

noncomputable section

/-- A115178: Expansion of c(x^2+x^3), c(x) the g.f. of A000108.

Offset 0, canonical program `A115178.P12397006831980375298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A115178 (n : ℕ) : ℤ :=
  A115178.P12397006831980375298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A115178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118093.P12063885949380815492

`A115194(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A118093.P12063885949380815492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115194 n + 8 * a (n - 1)

end

end A118093.P12063885949380815492

noncomputable section

/-- A118093: Numbers of rooted hypermaps on the torus with n darts (darts are semi-edges in the particular case of ordinary maps).

Offset 3, canonical program `A118093.P12063885949380815492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093 (n : ℕ) : ℤ :=
  A118093.P12063885949380815492.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118271.P15667360513198469418

`2*A224225(n)-A224225(A005843(n))`
-/

namespace A118271.P15667360513198469418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224225 n - A224225 (A005843 n).toNat

end

end A118271.P15667360513198469418

noncomputable section

/-- A118271: Expansion of (9 * theta_4(q^3)^4 - theta_4(q)^4) / 8 in powers of q.

Offset 0, canonical program `A118271.P15667360513198469418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A118271 (n : ℕ) : ℤ :=
  A118271.P15667360513198469418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A118271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002479.P5051516851553002121

`∪[A154777(n+1), A083854(n)]`
-/

namespace A002479.P5051516851553002121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P5051516851553002121

noncomputable section

/-- A002479: Numbers of the form x^2 + 2*y^2.

Offset 1, canonical program `A002479.P5051516851553002121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479 (n : ℕ) : ℤ :=
  (A002479.P5051516851553002121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004613.P9700504550633713822

`A008846(C(n, a(A057427(n)-1)))` with `a(0)=1`
-/

namespace A004613.P9700504550633713822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008846 (Nat.choose n (a (A057427 n - 1).toNat).toNat)

end

end A004613.P9700504550633713822

noncomputable section

/-- A004613: Numbers that are divisible only by primes congruent to 1 mod 4.

Offset 1, canonical program `A004613.P9700504550633713822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613 (n : ℕ) : ℤ :=
  A004613.P9700504550633713822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008306.P6698299053316655818

`A106828(A049068(n+1))`
-/

namespace A008306.P6698299053316655818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (A049068 (n + 1)).toNat

end

end A008306.P6698299053316655818

noncomputable section

/-- A008306: Triangle T(n,k) read by rows: associated Stirling numbers of first kind (n >= 2, 1 <= k <= floor(n/2)).

Offset 2, canonical program `A008306.P6698299053316655818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A008306 (n : ℕ) : ℤ :=
  A008306.P6698299053316655818.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A008306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011677.P7686249500510810447

`A011681(A016789(n)+85)`
-/

namespace A011677.P7686249500510810447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (A016789 n + 85).toNat

end

end A011677.P7686249500510810447

noncomputable section

/-- A011677: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^2+x+1.

Offset 0, canonical program `A011677.P7686249500510810447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A011677 (n : ℕ) : ℤ :=
  A011677.P7686249500510810447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A011677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011678.P7294615667966746558

`A011681(7*(n+2))`
-/

namespace A011678.P7294615667966746558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (7 * (n + 2))

end

end A011678.P7294615667966746558

noncomputable section

/-- A011678: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^3+x+1.

Offset 0, canonical program `A011678.P7294615667966746558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A011678 (n : ℕ) : ℤ :=
  A011678.P7294615667966746558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A011678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014720.P13939622138793062824

`A014411(n+1)²`
-/

namespace A014720.P13939622138793062824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (n + 1) ^ 2

end

end A014720.P13939622138793062824

noncomputable section

/-- A014720: Squares of elements to right of central element in Pascal triangle (by row) that are not 1.

Offset 1, canonical program `A014720.P13939622138793062824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014720 (n : ℕ) : ℤ :=
  A014720.P13939622138793062824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028272.P16658782118669179364

`A014413(n+1)+A014411(n+1)`
-/

namespace A028272.P16658782118669179364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + A014411 (n + 1)

end

end A028272.P16658782118669179364

noncomputable section

/-- A028272: Elements to right of central elements in 3-Pascal triangle A028262 that are not 1.

Offset 0, canonical program `A028272.P16658782118669179364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028272 (n : ℕ) : ℤ :=
  A028272.P16658782118669179364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028331.P79324678744647748

`2*A014411(n+1)`
-/

namespace A028331.P79324678744647748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014411 (n + 1)

end

end A028331.P79324678744647748

noncomputable section

/-- A028331: Elements to the right of the central elements of the even-Pascal triangle A028326 that are not 2.

Offset 0, canonical program `A028331.P79324678744647748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331 (n : ℕ) : ℤ :=
  A028331.P79324678744647748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029612.P8705984013740246466

`A029611(eq[1, A029611(n)%2])`
-/

namespace A029612.P8705984013740246466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029611 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029612.P8705984013740246466

noncomputable section

/-- A029612: Odd numbers to the left of the central elements of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029612.P8705984013740246466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A029612 (n : ℕ) : ℤ :=
  A029612.P8705984013740246466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A029612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029613.P17038310175041813873

`A029611(eq[0, and(1, A029611(n))])`
-/

namespace A029613.P17038310175041813873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029613.P17038310175041813873

noncomputable section

/-- A029613: Even numbers (not equal to 2) to the left of the central elements of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029613.P17038310175041813873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. -/
def A029613 (n : ℕ) : ℤ :=
  A029613.P17038310175041813873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. -/
def A029613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029645.P11204956944610452439

`A029611(n)-A014463(n+1)`
-/

namespace A029645.P11204956944610452439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 n - A014463 (n + 1)

end

end A029645.P11204956944610452439

noncomputable section

/-- A029645: Numbers to the left of the central elements of the (1,2)-Pascal triangle A029635 that are different from 1.

Offset 0, canonical program `A029645.P11204956944610452439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029645 (n : ℕ) : ℤ :=
  A029645.P11204956944610452439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037903.P7439451824534172886

`A037904(A007095(n)+floor(1/(n+1)))`
-/

namespace A037903.P7439451824534172886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A007095 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A037903.P7439451824534172886

noncomputable section

/-- A037903: a(n) = (greatest base 9 digit of n) - (least base 9 digit of n).

Offset 0, canonical program `A037903.P7439451824534172886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037903 (n : ℕ) : ℤ :=
  A037903.P7439451824534172886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043669.P5034070191189732616

`eq[2, A043567(n)]`
-/

namespace A043669.P5034070191189732616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043669.P5034070191189732616

noncomputable section

/-- A043669: Numbers whose base-15 representation has exactly 2 runs.

Offset 1, canonical program `A043669.P5034070191189732616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A043669 (n : ℕ) : ℤ :=
  (A043669.P5034070191189732616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1146 terms. -/
def A043669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043670.P9012970799851750223

`eq[3, A043567(n)]`
-/

namespace A043670.P9012970799851750223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043670.P9012970799851750223

noncomputable section

/-- A043670: Numbers whose base-15 representation has exactly 3 runs.

Offset 1, canonical program `A043670.P9012970799851750223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043670 (n : ℕ) : ℤ :=
  (A043670.P9012970799851750223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043718.P4898407202628480874

`record[(n+1)*A043567(n+1)%2]`
-/

namespace A043718.P4898407202628480874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A043567 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043718.P4898407202628480874

noncomputable section

/-- A043718: Numbers whose base-15 representation has an odd number of runs.

Offset 1, canonical program `A043718.P4898407202628480874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043718 (n : ℕ) : ℤ :=
  A043718.P4898407202628480874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049715.P11687973096568825329

`A176562(n)+A057427(n)`
-/

namespace A049715.P11687973096568825329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A057427 n

end

end A049715.P11687973096568825329

noncomputable section

/-- A049715: a(n)=T(n,0), array T as in A049747.

Offset 0, canonical program `A049715.P11687973096568825329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A049715 (n : ℕ) : ℤ :=
  A049715.P11687973096568825329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A049715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059453.P3518453852902920616

`filter[A059456(n+1), A101264(#)]`
-/

namespace A059453.P3518453852902920616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A059453.P3518453852902920616

noncomputable section

/-- A059453: Sophie Germain primes (A005384) that are not safe primes (A005385).

Offset 1, canonical program `A059453.P3518453852902920616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A059453 (n : ℕ) : ℤ :=
  A059453.P3518453852902920616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A059453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059743.P10200141128620482655

`A175341(n)+1`
-/

namespace A059743.P10200141128620482655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175341 n + 1

end

end A059743.P10200141128620482655

noncomputable section

/-- A059743: Number of points of norm^2 <= n^2 in the square lattice that are visible from the origin.

Offset 0, canonical program `A059743.P10200141128620482655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. -/
def A059743 (n : ℕ) : ℤ :=
  A059743.P10200141128620482655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. -/
def A059743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060921.P13002934786105782215

`A128100(A064801(n+1))`
-/

namespace A060921.P13002934786105782215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A064801 (n + 1)).toNat

end

end A060921.P13002934786105782215

noncomputable section

/-- A060921: Bisection of Fibonacci triangle A037027: odd-indexed members of column sequences of A037027 (not counting leading zeros).

Offset 0, canonical program `A060921.P13002934786105782215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A060921 (n : ℕ) : ℤ :=
  A060921.P13002934786105782215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A060921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067459.P11641626775103324224

`A072516((n+1)²)`
-/

namespace A067459.P11641626775103324224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072516 ((n + 1) ^ 2)

end

end A067459.P11641626775103324224

noncomputable section

/-- A067459: Sum of the remainders when n^2 is divided by squares less than n.

Offset 1, canonical program `A067459.P11641626775103324224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067459 (n : ℕ) : ℤ :=
  A067459.P11641626775103324224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070320.P11262190443383820073

`A096501(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A070320.P11262190443383820073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A096501 (n + 1) + a (n - 1)

end

end A070320.P11262190443383820073

noncomputable section

/-- A070320: a(n) = Max( phi(k) : k=1..n ).

Offset 1, canonical program `A070320.P11262190443383820073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320 (n : ℕ) : ℤ :=
  A070320.P11262190443383820073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073412.P17420791294768471329

`∩[A274555(n+1)-1, A274555(n+1)]`
-/

namespace A073412.P17420791294768471329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073412.P17420791294768471329

noncomputable section

/-- A073412: Lesser of three consecutive nonsquare integers each of which is the sum of two squares.

Offset 1, canonical program `A073412.P17420791294768471329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A073412 (n : ℕ) : ℤ :=
  (A073412.P17420791294768471329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A073412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080242.P6426782860955634572

`A035317(∑[A068344(n)²])`
-/

namespace A080242.P6426782860955634572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080242.P6426782860955634572

noncomputable section

/-- A080242: Table of coefficients of polynomials P(n,x) defined by the relation P(n,x) = (1+x)*P(n-1,x) + (-x)^(n+1).

Offset 0, canonical program `A080242.P6426782860955634572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080242 (n : ℕ) : ℤ :=
  A080242.P6426782860955634572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080821.P11448847452303854669

`p?[A181132(n)+A001855(n+1)]`
-/

namespace A080821.P11448847452303854669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 n + A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P11448847452303854669

noncomputable section

/-- A080821: Primes in the accumulated tally of steps in the x+1 problem: Repeat until 1 is reached: if x is even divide by 2, otherwise add 1.

Offset 1, canonical program `A080821.P11448847452303854669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A080821 (n : ℕ) : ℤ :=
  A080821.P11448847452303854669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A080821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092058.P2002091925840857297

`A000720(sqrt((A092057(n+1)+1)/2))`
-/

namespace A092058.P2002091925840857297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt ((A092057 (n + 1) + 1 : ℚ) / 2 : ℝ))).toNat

end

end A092058.P2002091925840857297

noncomputable section

/-- A092058: Numbers n such that 2*prime(n)^2 - 1 is prime.

Offset 1, canonical program `A092058.P2002091925840857297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092058 (n : ℕ) : ℤ :=
  A092058.P2002091925840857297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096677.P7170319488795108881

`A099801(A096784(n+1))`
-/

namespace A096677.P7170319488795108881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A096784 (n + 1)).toNat

end

end A096677.P7170319488795108881

noncomputable section

/-- A096677: A060254 indexed by A000040.

Offset 1, canonical program `A096677.P7170319488795108881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A096677 (n : ℕ) : ℤ :=
  A096677.P7170319488795108881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A096677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112609.P8066156262677695015

`A071045(1-A262726(2*n+1))`
-/

namespace A112609.P8066156262677695015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (1 - A262726 (2 * n + 1)).toNat

end

end A112609.P8066156262677695015

noncomputable section

/-- A112609: Number of representations of n as a sum of three times a triangular number and four times a triangular number.

Offset 0, canonical program `A112609.P8066156262677695015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A112609 (n : ℕ) : ℤ :=
  A112609.P8066156262677695015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A112609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037989.P17212813168095980197

`eq[2, A043281(1+n)]+1`
-/

namespace A037989.P17212813168095980197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037989.P17212813168095980197

noncomputable section

/-- A037989: Numbers whose maximal base-7 run length is 2.

Offset 1, canonical program `A037989.P17212813168095980197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989 (n : ℕ) : ℤ :=
  (A037989.P17212813168095980197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037990.P11351931847742958778

`eq[3, A043281(A028310(n))]`
-/

namespace A037990.P11351931847742958778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037990.P11351931847742958778

noncomputable section

/-- A037990: Numbers whose maximal base 7 run length is 3.

Offset 1, canonical program `A037990.P11351931847742958778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A037990 (n : ℕ) : ℤ :=
  (A037990.P11351931847742958778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A037990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037993.P5476900089345289950

`eq[2, A043282(n+1)]+1`
-/

namespace A037993.P5476900089345289950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037993.P5476900089345289950

noncomputable section

/-- A037993: Numbers whose maximal base-8 run length is 2.

Offset 1, canonical program `A037993.P5476900089345289950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A037993 (n : ℕ) : ℤ :=
  (A037993.P5476900089345289950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A037993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043093.P7626507007390763176

`eq[1, A043281(A028310(n))]`
-/

namespace A043093.P7626507007390763176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P7626507007390763176

noncomputable section

/-- A043093: Every string of 2 consecutive base 7 digits contains exactly 2 distinct numbers.

Offset 0, canonical program `A043093.P7626507007390763176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. -/
def A043093 (n : ℕ) : ℤ :=
  (A043093.P7626507007390763176.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. -/
def A043093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043094.P264421878189047004

`eq[1, A043282(A028310(n))]`
-/

namespace A043094.P264421878189047004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P264421878189047004

noncomputable section

/-- A043094: Every string of 2 consecutive base 8 digits contains exactly 2 distinct numbers.

Offset 0, canonical program `A043094.P264421878189047004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A043094 (n : ℕ) : ℤ :=
  (A043094.P264421878189047004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A043094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005277.P10634562769707838481

`eq[1, A355451(n+1)]+1`
-/

namespace A005277.P10634562769707838481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005277.P10634562769707838481

noncomputable section

/-- A005277: Nontotients: even numbers k such that phi(m) = k has no solution.

Offset 1, canonical program `A005277.P10634562769707838481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005277 (n : ℕ) : ℤ :=
  (A005277.P10634562769707838481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014198.P2354480518814049901

`a(n-1)+2*A105673(n)` with `a(0)=0`
-/

namespace A014198.P2354480518814049901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A105673 n

end

end A014198.P2354480518814049901

noncomputable section

/-- A014198: Number of integer solutions to x^2 + y^2 <= n excluding (0,0).

Offset 0, canonical program `A014198.P2354480518814049901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198 (n : ℕ) : ℤ :=
  A014198.P2354480518814049901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048983.P9613162556933275470

`A036997(Δ[A053767(n)])`
-/

namespace A048983.P9613162556933275470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (f1 (n + 1) - f1 n).toNat

end

end A048983.P9613162556933275470

noncomputable section

/-- A048983: As n runs through composite numbers, a(n) = number of composite d < n such that gcd(d,n) = 1.

Offset 1, canonical program `A048983.P9613162556933275470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A048983 (n : ℕ) : ℤ :=
  A048983.P9613162556933275470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A048983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055047.P16912633908431000685

`A055041(n+1)/3`
-/

namespace A055047.P16912633908431000685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055041 (n + 1) : ℚ) / 3

end

end A055047.P16912633908431000685

noncomputable section

/-- A055047: Numbers of the form 9^i*(3*j+1).

Offset 1, canonical program `A055047.P16912633908431000685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055047.P16912633908431000685.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059893.P16024368139843891037

`A030109(n+1)+A053644(n+1)`
-/

namespace A059893.P16024368139843891037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + A053644 (n + 1)

end

end A059893.P16024368139843891037

noncomputable section

/-- A059893: Reverse the order of all but the most significant bit in binary expansion of n: if n = 1ab..yz then a(n) = 1zy..ba.

Offset 1, canonical program `A059893.P16024368139843891037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059893 (n : ℕ) : ℤ :=
  A059893.P16024368139843891037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063932.P6079798275063522306

`(A119257(n+2)+n+2)/2`
-/

namespace A063932.P6079798275063522306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119257 (n + 2) + (n + 2 : ℤ) : ℚ) / 2

end

end A063932.P6079798275063522306

noncomputable section

/-- A063932: Average of largest prime less than or equal to n and smallest prime greater than or equal to n.

Offset 2, canonical program `A063932.P6079798275063522306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063932.P6079798275063522306.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066692.P15153014828628836343

`filter[A062832(n+1), A379952(#)]`
-/

namespace A066692.P15153014828628836343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A066692.P15153014828628836343

noncomputable section

/-- A066692: Odd numbers k such that tau(k) = tau(k+2), where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A066692.P15153014828628836343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7561 terms. -/
def A066692 (n : ℕ) : ℤ :=
  A066692.P15153014828628836343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7561 terms. -/
def A066692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085986.P3066413001146269465

`A006881(n+1)²`
-/

namespace A085986.P3066413001146269465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 2

end

end A085986.P3066413001146269465

noncomputable section

/-- A085986: Squares of the squarefree semiprimes (p^2*q^2).

Offset 1, canonical program `A085986.P3066413001146269465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085986 (n : ℕ) : ℤ :=
  A085986.P3066413001146269465.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087695.P4000952237766351123

`A046117(n+1)-3`
-/

namespace A087695.P4000952237766351123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 3

end

end A087695.P4000952237766351123

noncomputable section

/-- A087695: Numbers n such that n + 3 and n - 3 are both prime.

Offset 1, canonical program `A087695.P4000952237766351123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087695 (n : ℕ) : ℤ :=
  A087695.P4000952237766351123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091871.P8902696831286629578

`A049084(A091633(n+1))`
-/

namespace A091871.P8902696831286629578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091633 (n + 1)).toNat

end

end A091871.P8902696831286629578

noncomputable section

/-- A091871: A091633 indexed by A000040.

Offset 1, canonical program `A091871.P8902696831286629578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091871 (n : ℕ) : ℤ :=
  A091871.P8902696831286629578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092782.P12994304615251165252

`2-A317198(n)`
-/

namespace A092782.P12994304615251165252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

end

end A092782.P12994304615251165252

noncomputable section

/-- A092782: The ternary tribonacci word; also a Rauzy fractal sequence: fixed point of the morphism 1 -> 12, 2 -> 13, 3 -> 1, starting from a(1) = 1.

Offset 1, canonical program `A092782.P12994304615251165252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092782 (n : ℕ) : ℤ :=
  A092782.P12994304615251165252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100613.P7468063633472476903

`2*A063985(n+1)-n`
-/

namespace A100613.P7468063633472476903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063985 (n + 1) - (n : ℤ)

end

end A100613.P7468063633472476903

noncomputable section

/-- A100613: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y) > 1}.

Offset 1, canonical program `A100613.P7468063633472476903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100613 (n : ℕ) : ℤ :=
  A100613.P7468063633472476903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106008.P17304472629844807330

`p?[A093013(n+1)]`
-/

namespace A106008.P17304472629844807330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106008.P17304472629844807330

noncomputable section

/-- A106008: Primes p such that 10*p - 3 and 10*p + 3 are both primes.

Offset 1, canonical program `A106008.P17304472629844807330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A106008 (n : ℕ) : ℤ :=
  A106008.P17304472629844807330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A106008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106010.P9959243350932176156

`∩[A001749(n+1), A093013(n+1)]/4`
-/

namespace A106010.P9959243350932176156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 4

end

end A106010.P9959243350932176156

noncomputable section

/-- A106010: Primes p such that 40*p - 3 and 40*p + 3 are both primes.

Offset 1, canonical program `A106010.P9959243350932176156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A106010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106010.P9959243350932176156.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A106010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111192.P5696730422318890961

`A023201(n+1)*A046117(n+1)`
-/

namespace A111192.P5696730422318890961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) * A046117 (n + 1)

end

end A111192.P5696730422318890961

noncomputable section

/-- A111192: Product of the n-th sexy prime pair.

Offset 1, canonical program `A111192.P5696730422318890961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111192 (n : ℕ) : ℤ :=
  A111192.P5696730422318890961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112301.P15026904141317085207

`A113652(n+1)*A130731(n)`
-/

namespace A112301.P15026904141317085207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (n + 1) * A130731 n

end

end A112301.P15026904141317085207

noncomputable section

/-- A112301: Expansion of (eta(q) * eta(q^16))^2 / (eta(q^2) * eta(q^8)) in powers of q.

Offset 1, canonical program `A112301.P15026904141317085207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112301 (n : ℕ) : ℤ :=
  A112301.P15026904141317085207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113543.P2223141436279316752

`filter[A112886(n+1), A008966(#)]`
-/

namespace A113543.P2223141436279316752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A113543.P2223141436279316752

noncomputable section

/-- A113543: Numbers both squarefree and triangle-free.

Offset 1, canonical program `A113543.P2223141436279316752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113543 (n : ℕ) : ℤ :=
  A113543.P2223141436279316752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002325.P14825616568919519912

`A188169(n+1)+A188170(n+1)-A188171(n+1)-A188172(n+1)`
-/

namespace A002325.P14825616568919519912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) + A188170 (n + 1) - A188171 (n + 1) - A188172 (n + 1)

end

end A002325.P14825616568919519912

noncomputable section

/-- A002325: Glaisher's J numbers.

Offset 1, canonical program `A002325.P14825616568919519912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002325 (n : ℕ) : ℤ :=
  A002325.P14825616568919519912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003602.P7612175048291952394

`A110963(2*n+1)`
-/

namespace A003602.P7612175048291952394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1)

end

end A003602.P7612175048291952394

noncomputable section

/-- A003602: Kimberling's paraphrase of the binary number system: if n = (2k-1)*2^m then a(n) = k.

Offset 1, canonical program `A003602.P7612175048291952394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602 (n : ℕ) : ℤ :=
  A003602.P7612175048291952394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003967.P17708187664325612051

`∑{d}[n+1, A003958(#)]`
-/

namespace A003967.P17708187664325612051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d

end

end A003967.P17708187664325612051

noncomputable section

/-- A003967: Inverse Möbius transform of A003958.

Offset 1, canonical program `A003967.P17708187664325612051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003967 (n : ℕ) : ℤ :=
  A003967.P17708187664325612051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006282.P14916949899284549395

`∑[A083742(n)]`
-/

namespace A006282.P14916949899284549395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006282.P14916949899284549395

noncomputable section

/-- A006282: Sorting numbers: number of comparisons in Batcher's parallel sort.

Offset 1, canonical program `A006282.P14916949899284549395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006282 (n : ℕ) : ℤ :=
  A006282.P14916949899284549395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008834.P8690349651579721460

`(n+1)/A050985(n+1)`
-/

namespace A008834.P8690349651579721460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A050985 (n + 1) : ℚ)

end

end A008834.P8690349651579721460

noncomputable section

/-- A008834: Largest cube dividing n.

Offset 1, canonical program `A008834.P8690349651579721460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008834.P8690349651579721460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044069.P11354972915602530706

`and(A044450(n+1)+1, A044450(n+1))`
-/

namespace A044069.P11354972915602530706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044450 (n + 1) + 1) (A044450 (n + 1))

end

end A044069.P11354972915602530706

noncomputable section

/-- A044069: Numbers n such that string 2,0 occurs in the base 4 representation of n but not of n-1.

Offset 1, canonical program `A044069.P11354972915602530706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044069 (n : ℕ) : ℤ :=
  A044069.P11354972915602530706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048798.P11871248388947828360

`A011262(A050985(n+1))`
-/

namespace A048798.P11871248388947828360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A050985 (n + 1)).toNat

end

end A048798.P11871248388947828360

noncomputable section

/-- A048798: Smallest k > 0 such that n*k is a perfect cube.

Offset 1, canonical program `A048798.P11871248388947828360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798 (n : ℕ) : ℤ :=
  A048798.P11871248388947828360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054753.P14709416938439353488

`filter[A081619(n+1), A359475(#)]`
-/

namespace A054753.P14709416938439353488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A054753.P14709416938439353488

noncomputable section

/-- A054753: Numbers which are the product of a prime and the square of a different prime (p^2 * q).

Offset 1, canonical program `A054753.P14709416938439353488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A054753 (n : ℕ) : ℤ :=
  A054753.P14709416938439353488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A054753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064522.P867871108322155119

`lt[(n+1)%A003958(n+1), 1]+1`
-/

namespace A064522.P867871108322155119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A003958 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064522.P867871108322155119

noncomputable section

/-- A064522: For an integer n with prime factorization p1*p2*p3* ... *pn let n* = (p1-1)*(p2-1)*(p3-1)* ... *(pn-1) (A003958); sequence gives n such that n is divisible by n*.

Offset 1, canonical program `A064522.P867871108322155119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A064522 (n : ℕ) : ℤ :=
  (A064522.P867871108322155119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A064522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066489.P4410920429026512829

`A007088(A035928(n+1))`
-/

namespace A066489.P4410920429026512829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035928 (n + 1)).toNat

end

end A066489.P4410920429026512829

noncomputable section

/-- A066489: Binary expansion of n followed by its reverse complement.

Offset 1, canonical program `A066489.P4410920429026512829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A066489 (n : ℕ) : ℤ :=
  A066489.P4410920429026512829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A066489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072062.P12729312681891732768

`abs(xor(1, -A064786(n+1)))`
-/

namespace A072062.P12729312681891732768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A064786 (n + 1))|

end

end A072062.P12729312681891732768

noncomputable section

/-- A072062: Inverse permutation to A072061.

Offset 1, canonical program `A072062.P12729312681891732768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072062 (n : ℕ) : ℤ :=
  A072062.P12729312681891732768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072666.P4852007313916300024

`A000720(A072667(n+1))`
-/

namespace A072666.P4852007313916300024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072667 (n + 1)).toNat

end

end A072666.P4852007313916300024

noncomputable section

/-- A072666: Numbers n such that prime(n) + prime(n+1) - 1 is prime.

Offset 1, canonical program `A072666.P4852007313916300024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072666 (n : ℕ) : ℤ :=
  A072666.P4852007313916300024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075493.P5582353736651150310

`lt[0, A075491(n+1)]+1`
-/

namespace A075493.P5582353736651150310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A075493.P5582353736651150310

noncomputable section

/-- A075493: Numbers k such that (sum of digits of k) > (number of divisors of k).

Offset 1, canonical program `A075493.P5582353736651150310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. -/
def A075493 (n : ℕ) : ℤ :=
  (A075493.P5582353736651150310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. -/
def A075493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078656.P2820646494609425011

`A006450(A049511(n+1))`
-/

namespace A078656.P2820646494609425011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A049511 (n + 1)).toNat

end

end A078656.P2820646494609425011

noncomputable section

/-- A078656: a(n) = prime(k) where k = n-th prime congruent to 1 mod 10.

Offset 1, canonical program `A078656.P2820646494609425011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656 (n : ℕ) : ℤ :=
  A078656.P2820646494609425011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079579.P7960359697621555488

`(n+1)*A003958(n+1)`
-/

namespace A079579.P7960359697621555488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (n + 1)

end

end A079579.P7960359697621555488

noncomputable section

/-- A079579: Totally multiplicative with p -> (p-1)*p, p prime.

Offset 1, canonical program `A079579.P7960359697621555488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079579 (n : ℕ) : ℤ :=
  A079579.P7960359697621555488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079579.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080101.P17293988866175764959

`A366833(n+1)-1`
-/

namespace A080101.P17293988866175764959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1) - 1

end

end A080101.P17293988866175764959

noncomputable section

/-- A080101: Number of prime powers in all composite numbers between n-th prime and next prime.

Offset 1, canonical program `A080101.P17293988866175764959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101 (n : ℕ) : ℤ :=
  A080101.P17293988866175764959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082386.P6793526931661714868

`A000982(A182105(n+1))`
-/

namespace A082386.P6793526931661714868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A182105 (n + 1)).toNat

end

end A082386.P6793526931661714868

noncomputable section

/-- A082386: Let S(0) = {1} and for k >= 1, let S(k) = {S(k-1), S(k-1), 2T}, where T = sum of terms in S(k-1). Sequence is S(infinity).

Offset 0, canonical program `A082386.P6793526931661714868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082386 (n : ℕ) : ℤ :=
  A082386.P6793526931661714868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084424.P7395927992122097873

`∩[A179085(n+1), A381218(n+1)]`
-/

namespace A084424.P7395927992122097873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084424.P7395927992122097873

noncomputable section

/-- A084424: Odd numbers having odd numbers of prime factors, odd sums of prime factors and odd sums of decimal digits.

Offset 1, canonical program `A084424.P7395927992122097873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A084424 (n : ℕ) : ℤ :=
  (A084424.P7395927992122097873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A084424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087346.P12336224984943542324

`A088116(100+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087346.P12336224984943542324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088116 (100 + (n + 1))

end

end A087346.P12336224984943542324

noncomputable section

/-- A087346: a(n) = A088116(100+n).

Offset 1, canonical program `A087346.P12336224984943542324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087346 (n : ℕ) : ℤ :=
  A087346.P12336224984943542324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090605.P9514351185827622327

`∩[A049511(n+1), A160594(n+1)]`
-/

namespace A090605.P9514351185827622327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090605.P9514351185827622327

noncomputable section

/-- A090605: Numbers m such that m-th prime is of the form 60*k+1.

Offset 1, canonical program `A090605.P9514351185827622327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A090605 (n : ℕ) : ℤ :=
  (A090605.P9514351185827622327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A090605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093705.P7271058534406243467

`lt[(n+1)%A093653(n+1), 1]+1`
-/

namespace A093705.P7271058534406243467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A093653 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093705.P7271058534406243467

noncomputable section

/-- A093705: Numbers that are divisible by the total number of 1's in the binary expansions of all their divisors.

Offset 1, canonical program `A093705.P7271058534406243467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A093705 (n : ℕ) : ℤ :=
  (A093705.P7271058534406243467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A093705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104145.P5989850272366258385

`1-A137412(n+1)`
-/

namespace A104145.P5989850272366258385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137412 (n + 1)

end

end A104145.P5989850272366258385

noncomputable section

/-- A104145: a(1) = 1; let A(k) = sequence of first 2^(k-1) terms; then A(k+1) is concatenation of A(k) and (A(k)-1) if a(k) is odd, or concatenation of A(k) and (A(k)+1) if a(k) is even.

Offset 1, canonical program `A104145.P5989850272366258385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104145 (n : ℕ) : ℤ :=
  A104145.P5989850272366258385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108119.P18242225102554614006

`∩[A049511(n+1), A107730(n+1)]`
-/

namespace A108119.P18242225102554614006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108119.P18242225102554614006

noncomputable section

/-- A108119: Numbers k such that prime(k) and prime(k+1) are congruent to 1 (mod 10).

Offset 1, canonical program `A108119.P18242225102554614006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A108119 (n : ℕ) : ℤ :=
  (A108119.P18242225102554614006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A108119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108926.P13113658268164556802

`∩[A231089(n+1)-2, A231089(n+1)]`
-/

namespace A108926.P13113658268164556802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108926.P13113658268164556802

noncomputable section

/-- A108926: Initial members of abundant quintuplets, i.e., values of k such that (k, k+2, k+4, k+6, k+8) are all abundant numbers.

Offset 1, canonical program `A108926.P13113658268164556802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A108926 (n : ℕ) : ℤ :=
  (A108926.P13113658268164556802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A108926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110962.P12597645411815953892

`A110963(1+n)-1`
-/

namespace A110962.P12597645411815953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (1 + n) - 1

end

end A110962.P12597645411815953892

noncomputable section

/-- A110962: Fractalization of A025480, zero-based version of Kimberling's paraphrase of the binary number system.

Offset 0, canonical program `A110962.P12597645411815953892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110962 (n : ℕ) : ℤ :=
  A110962.P12597645411815953892.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115454.P7778183975533024959

`A007088(A002808(n+1))`
-/

namespace A115454.P7778183975533024959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002808 (n + 1)).toNat

end

end A115454.P7778183975533024959

noncomputable section

/-- A115454: Composite positive integers written in base 2.

Offset 1, canonical program `A115454.P7778183975533024959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115454 (n : ℕ) : ℤ :=
  A115454.P7778183975533024959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115944.P14075242755931929840

`floor(1/A343504(n))`
-/

namespace A115944.P14075242755931929840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A343504 n : ℚ)⌋

end

end A115944.P14075242755931929840

noncomputable section

/-- A115944: Number of partitions of n into distinct factorials.

Offset 0, canonical program `A115944.P14075242755931929840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115944 (n : ℕ) : ℤ :=
  A115944.P14075242755931929840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117725.P10630623760424057360

`∩[A028840(n+1), A028890(n+1)]`
-/

namespace A117725.P10630623760424057360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117725.P10630623760424057360

noncomputable section

/-- A117725: Zeroless numbers for which the sum of the digits and the product of the digits are both Fibonacci numbers.

Offset 1, canonical program `A117725.P10630623760424057360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A117725 (n : ℕ) : ℤ :=
  (A117725.P10630623760424057360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A117725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117968.P3978926257275224810

`∑[1+Δ[A117967(n)]]`
-/

namespace A117968.P3978926257275224810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117968.P3978926257275224810

noncomputable section

/-- A117968: Negative part of inverse of A117966; write -n in balanced ternary and then replace (-1)'s with 2's.

Offset 1, canonical program `A117968.P3978926257275224810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968 (n : ℕ) : ℤ :=
  A117968.P3978926257275224810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118363.P17308598929900215827

`record[gcd(n+1, (n+1)%A034968(n+1))]`
-/

namespace A118363.P17308598929900215827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A034968 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118363.P17308598929900215827

noncomputable section

/-- A118363: Factorial base Niven (or Harshad) numbers: numbers that are divisible by the sum of their factorial base digits.

Offset 1, canonical program `A118363.P17308598929900215827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A118363 (n : ℕ) : ℤ :=
  (A118363.P17308598929900215827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A118363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000548.P7784828733208022638

`(lt[A005080(n+1), 1]+1)²`
-/

namespace A000548.P7784828733208022638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P7784828733208022638

noncomputable section

/-- A000548: Squares that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A000548.P7784828733208022638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548 (n : ℕ) : ℤ :=
  (A000548.P7784828733208022638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003252.P10872519119112551421

`∑[A001468(A026272(n+1)+n)+1]`
-/

namespace A003252.P10872519119112551421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A026272 (n + 1) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P10872519119112551421

noncomputable section

/-- A003252: The number m such that A003251(m) = A003231(n).

Offset 1, canonical program `A003252.P10872519119112551421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252 (n : ℕ) : ℤ :=
  A003252.P10872519119112551421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003714.P565032106299634425

`a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` with `a(0)=0`
-/

namespace A003714.P565032106299634425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (A193564 (n + 1)).toNat * (2 : ℚ) ^ (A003849 n + 1 : ℤ) + (A003849 n : ℚ)

end

end A003714.P565032106299634425

noncomputable section

/-- A003714: Fibbinary numbers: if n = F(i1) + F(i2) + ... + F(ik) is the Zeckendorf representation of n (i.e., write n in Fibonacci number system) then a(n) = 2^(i1 - 2) + 2^(i2 - 2) + ... + 2^(ik - 2). Also numbers whose binary representation contains no two adjacent 1's.

Offset 0, canonical program `A003714.P565032106299634425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003714.P565032106299634425.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019506.P15594823480605419391

`record[A191558(A095405(n+9))]`
-/

namespace A019506.P15594823480605419391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A095405 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019506.P15594823480605419391

noncomputable section

/-- A019506: Hoax numbers: composite numbers whose digit-sum equals the sum of the digit-sums of its distinct prime factors.

Offset 1, canonical program `A019506.P15594823480605419391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A019506 (n : ℕ) : ℤ :=
  A019506.P15594823480605419391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A019506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024707.P1654818595505930273

`∪[A049510(n+1), A049511(n+1)]`
-/

namespace A024707.P1654818595505930273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024707.P1654818595505930273

noncomputable section

/-- A024707: Positions of multiples of 5 in A024702.

Offset 1, canonical program `A024707.P1654818595505930273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024707 (n : ℕ) : ℤ :=
  (A024707.P1654818595505930273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036350.P4117456355186403580

`∪[A036348(n+1), A046340(n+1)]`
-/

namespace A036350.P4117456355186403580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P4117456355186403580

noncomputable section

/-- A036350: Composite numbers such that the sum of the prime factors is odd (counted with multiplicity).

Offset 1, canonical program `A036350.P4117456355186403580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036350 (n : ℕ) : ℤ :=
  (A036350.P4117456355186403580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043576.P9157064947003419788

`∩[A043736(n+1), A043741(n+1)]`
-/

namespace A043576.P9157064947003419788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P9157064947003419788

noncomputable section

/-- A043576: Numbers whose base-2 representation has exactly 9 runs.

Offset 1, canonical program `A043576.P9157064947003419788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. -/
def A043576 (n : ℕ) : ℤ :=
  (A043576.P9157064947003419788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. -/
def A043576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060372.P4864824408191301632

`A117967(n)-A300222(A117967(n))`
-/

namespace A060372.P4864824408191301632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - A300222 (A117967 n).toNat

end

end A060372.P4864824408191301632

noncomputable section

/-- A060372: p(n), positive part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

Offset 0, canonical program `A060372.P4864824408191301632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A060372 (n : ℕ) : ℤ :=
  A060372.P4864824408191301632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A060372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061385.P4395846907397159520

`A061383(eq[2, A285093(n)])`
-/

namespace A061385.P4395846907397159520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061385.P4395846907397159520

noncomputable section

/-- A061385: Numbers n such that sum of digits = twice number of digits.

Offset 1, canonical program `A061385.P4395846907397159520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A061385 (n : ℕ) : ℤ :=
  A061385.P4395846907397159520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A061385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061386.P9883862173632192436

`A061383(eq[3, A285093(n)])`
-/

namespace A061386.P9883862173632192436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061386.P9883862173632192436

noncomputable section

/-- A061386: Sum of digits = 3 times number of digits.

Offset 1, canonical program `A061386.P9883862173632192436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A061386 (n : ℕ) : ℤ :=
  A061386.P9883862173632192436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A061386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061387.P13792558151730477015

`A061383(eq[4, A285093(n)])`
-/

namespace A061387.P13792558151730477015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061387.P13792558151730477015

noncomputable section

/-- A061387: Sum of digits = 4 times number of digits.

Offset 1, canonical program `A061387.P13792558151730477015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A061387 (n : ℕ) : ℤ :=
  A061387.P13792558151730477015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A061387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061388.P12309060482662442082

`A061383(eq[5, A285093(n)])`
-/

namespace A061388.P12309060482662442082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061388.P12309060482662442082

noncomputable section

/-- A061388: Sum of digits = 5 times number of digits.

Offset 1, canonical program `A061388.P12309060482662442082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A061388 (n : ℕ) : ℤ :=
  A061388.P12309060482662442082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A061388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064579.P6357362564671584677

`A064786(A054082(A064786(n+1)))`
-/

namespace A064579.P6357362564671584677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (A054082 (A064786 (n + 1)).toNat).toNat

end

end A064579.P6357362564671584677

noncomputable section

/-- A064579: Inverse permutation to A054082.

Offset 1, canonical program `A064579.P6357362564671584677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. -/
def A064579 (n : ℕ) : ℤ :=
  A064579.P6357362564671584677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. -/
def A064579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074278.P1830901965938384071

`A022304(3*n)+4`
-/

namespace A074278.P1830901965938384071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (3 * n) + 4

end

end A074278.P1830901965938384071

noncomputable section

/-- A074278: Positions in the Kolakoski sequence A000002 when there are a multiple of 3 1's and the current term is 1.

Offset 1, canonical program `A074278.P1830901965938384071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A074278 (n : ℕ) : ℤ :=
  A074278.P1830901965938384071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A074278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095083.P9414976609862842338

`record[and(1, A182535(n+1))*A000040(n+1)]`
-/

namespace A095083.P9414976609862842338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182535 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095083.P9414976609862842338

noncomputable section

/-- A095083: Fibodious primes, i.e., primes p whose Zeckendorf-expansion A014417(p) contains an odd number of 1-fibits.

Offset 1, canonical program `A095083.P9414976609862842338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A095083 (n : ℕ) : ℤ :=
  A095083.P9414976609862842338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A095083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104324.P1859779613873930843

`A007895(n)+A213911(n)`
-/

namespace A104324.P1859779613873930843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + A213911 n

end

end A104324.P1859779613873930843

noncomputable section

/-- A104324: The Fibonacci word over the nonnegative integers; or, the number of runs of identical bits in the binary Zeckendorf representation of n.

Offset 0, canonical program `A104324.P1859779613873930843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104324 (n : ℕ) : ℤ :=
  A104324.P1859779613873930843.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106711.P16595419804593489169

`A000040(∩[A075177(n+1)-1, A075177(n+1)])`
-/

namespace A106711.P16595419804593489169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106711.P16595419804593489169

noncomputable section

/-- A106711: Smaller prime of the set of two consecutive primes each of whose sum of digits is prime.

Offset 1, canonical program `A106711.P16595419804593489169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1622 terms. -/
def A106711 (n : ℕ) : ℤ :=
  A106711.P16595419804593489169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1622 terms. -/
def A106711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106712.P6872278606906120104

`A000040(∩[A075177(n+1)+1, A075177(n+1)])`
-/

namespace A106712.P6872278606906120104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106712.P6872278606906120104

noncomputable section

/-- A106712: Larger prime of the set of two consecutive primes the sum of the digits of each of which is prime.

Offset 1, canonical program `A106712.P6872278606906120104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A106712 (n : ℕ) : ℤ :=
  A106712.P6872278606906120104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A106712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106761.P9151467794573401177

`∩[A061239(n+1), A306510(n+1)]`
-/

namespace A106761.P9151467794573401177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106761.P9151467794573401177

noncomputable section

/-- A106761: Primes with digit sum = 22.

Offset 1, canonical program `A106761.P9151467794573401177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A106761 (n : ℕ) : ℤ :=
  (A106761.P9151467794573401177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A106761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106770.P17983658334318701957

`∩[A062336(n+1), A062340(n+1)]`
-/

namespace A106770.P17983658334318701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106770.P17983658334318701957

noncomputable section

/-- A106770: Primes with digit sum = 35.

Offset 1, canonical program `A106770.P17983658334318701957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A106770 (n : ℕ) : ℤ :=
  (A106770.P17983658334318701957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A106770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107890.P9207094795219345944

`∪[3*A007645(n+1), A108164(n+1)]`
-/

namespace A107890.P9207094795219345944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P9207094795219345944

noncomputable section

/-- A107890: Semiprimes that are the product of two members of A007645.

Offset 1, canonical program `A107890.P9207094795219345944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107890 (n : ℕ) : ℤ :=
  (A107890.P9207094795219345944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109982.P7731114705280804703

`∩[A006450(n+1), A109981(n+1)]`
-/

namespace A109982.P7731114705280804703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P7731114705280804703

noncomputable section

/-- A109982: Primes p such that index of p, the sum of p's digits and the number of p's digits are all primes.

Offset 1, canonical program `A109982.P7731114705280804703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109982 (n : ℕ) : ℤ :=
  (A109982.P7731114705280804703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A109982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111171.P4309389729909289048

`filter[A114441(n+1), A359370(#)]`
-/

namespace A111171.P4309389729909289048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A111171.P4309389729909289048

noncomputable section

/-- A111171: Semiprimes S such that 3*S - 1 is also a semiprime.

Offset 1, canonical program `A111171.P4309389729909289048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111171 (n : ℕ) : ℤ :=
  A111171.P4309389729909289048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112310.P5733942079183269524

`A200648(n+2)-1`
-/

namespace A112310.P5733942079183269524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 2) - 1

end

end A112310.P5733942079183269524

noncomputable section

/-- A112310: Number of terms in lazy Fibonacci representation of n.

Offset 0, canonical program `A112310.P5733942079183269524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112310 (n : ℕ) : ℤ :=
  A112310.P5733942079183269524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115363.P10062065464569452837

`A115361(n)*A129264(n+1)`
-/

namespace A115363.P10062065464569452837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A129264 (n + 1)

end

end A115363.P10062065464569452837

noncomputable section

/-- A115363: ((1,x)-(x,x^2))^(-2) (using Riordan array notation).

Offset 0, canonical program `A115363.P10062065464569452837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115363 (n : ℕ) : ℤ :=
  A115363.P10062065464569452837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115975.P17265388920896280111

`record[n/a(A318464(n))]` with `a(0)=1`
-/

namespace A115975.P17265388920896280111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A318464 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115975.P17265388920896280111

noncomputable section

/-- A115975: Numbers of the form p^k, where p is a prime and k is a Fibonacci number.

Offset 1, canonical program `A115975.P17265388920896280111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. -/
def A115975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115975.P17265388920896280111.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. -/
def A115975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116543.P12066350740739985589

`A213911(∑[A284749(n+2)]-1)`
-/

namespace A116543.P12066350740739985589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A116543.P12066350740739985589

noncomputable section

/-- A116543: Number of terms in greedy representation of n in terms of the Lucas numbers.

Offset 0, canonical program `A116543.P12066350740739985589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. -/
def A116543 (n : ℕ) : ℤ :=
  A116543.P12066350740739985589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. -/
def A116543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118734.P5567306300113816848

`∩[A118730(n+1), A118733(n+1)]`
-/

namespace A118734.P5567306300113816848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118734.P5567306300113816848

noncomputable section

/-- A118734: Numbers k such that 2^k and 3^k have even digit sum.

Offset 1, canonical program `A118734.P5567306300113816848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. -/
def A118734 (n : ℕ) : ℤ :=
  (A118734.P5567306300113816848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. -/
def A118734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044441.P9775668103846057135

`eq[A300222(n+1), A338242(A300222(n+5))]`
-/

namespace A044441.P9775668103846057135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (A300222 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P9775668103846057135

noncomputable section

/-- A044441: Numbers n such that string 2,2 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044441.P9775668103846057135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A044441 (n : ℕ) : ℤ :=
  (A044441.P9775668103846057135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A044441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048517.P16047989077348899026

`∩[A062336(n+1), A117674(n+1)]`
-/

namespace A048517.P16047989077348899026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P16047989077348899026

noncomputable section

/-- A048517: Primes whose sum of digits is the perfect number 28.

Offset 1, canonical program `A048517.P16047989077348899026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A048517 (n : ℕ) : ℤ :=
  (A048517.P16047989077348899026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A048517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055931.P16098682155717244574

`∩[A055933(n+1), A254621(n+1)]`
-/

namespace A055931.P16098682155717244574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055931.P16098682155717244574

noncomputable section

/-- A055931: Product of the digits of n divides the sum of the digits of n.

Offset 1, canonical program `A055931.P16098682155717244574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A055931 (n : ℕ) : ℤ :=
  (A055931.P16098682155717244574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A055931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111967.P13674875290881375490

`Δ[A000523(A002024(n+1))-A115361(n)]`
-/

namespace A111967.P13674875290881375490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A002024 (n + 1)).toNat - A115361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111967.P13674875290881375490

noncomputable section

/-- A111967: Inverse of number triangle A101688.

Offset 0, canonical program `A111967.P13674875290881375490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111967 (n : ℕ) : ℤ :=
  A111967.P13674875290881375490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111967.provenance : SequenceMachineLib.Provenance := .conjectured

