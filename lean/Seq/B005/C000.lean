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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C013
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
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003

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

/-! ## A122411.P10607431199644283672

`A390608(n+1)+A116512(n+1)`
-/

namespace A122411.P10607431199644283672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390608 (n + 1) + A116512 (n + 1)

end

end A122411.P10607431199644283672

noncomputable section

/-- A122411: a(n) is the sum of primes p for those k's, 2 <= k <= n, where gcd(k,n) = p^j > 1. (a(1) = 0.)

Offset 1, canonical program `A122411.P10607431199644283672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122411 (n : ℕ) : ℤ :=
  A122411.P10607431199644283672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130107.P11745405778003538938

`∑{d}[n+1, A008683((n+1)/#)*A063659(#)]`
-/

namespace A130107.P11745405778003538938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A063659 d

end

end A130107.P11745405778003538938

noncomputable section

/-- A130107: Möbius transform of A063659.

Offset 1, canonical program `A130107.P11745405778003538938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130107 (n : ℕ) : ℤ :=
  A130107.P11745405778003538938.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131233.P6976848366218910666

`A116512(n+1)+A000010(n+1)`
-/

namespace A131233.P6976848366218910666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + A000010 (n + 1)

end

end A131233.P6976848366218910666

noncomputable section

/-- A131233: a(n) is the number of positive integers <= n that do not have 2 or more distinct prime divisors in common with n.

Offset 1, canonical program `A131233.P6976848366218910666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131233 (n : ℕ) : ℤ :=
  A131233.P6976848366218910666.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131233.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A132189.P8063069834652726525

`2*A132345(n+1)`
-/

namespace A132189.P8063069834652726525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132345 (n + 1)

end

end A132189.P8063069834652726525

noncomputable section

/-- A132189: Number of non-constant 3-term geometric progressions with no term exceeding n.

Offset 1, canonical program `A132189.P8063069834652726525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132189 (n : ℕ) : ℤ :=
  A132189.P8063069834652726525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139107.P14608379276421399089

`A139102(2*n+1)`
-/

namespace A139107.P14608379276421399089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139102 (2 * n + 1)

end

end A139107.P14608379276421399089

noncomputable section

/-- A139107: Bisection of A139102.

Offset 1, canonical program `A139107.P14608379276421399089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139107 (n : ℕ) : ℤ :=
  A139107.P14608379276421399089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139108.P8819243163543541878

`A139102(2*(n+1))`
-/

namespace A139108.P8819243163543541878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139102 (2 * (n + 1))

end

end A139108.P8819243163543541878

noncomputable section

/-- A139108: Bisection of A139102.

Offset 1, canonical program `A139108.P8819243163543541878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139108 (n : ℕ) : ℤ :=
  A139108.P8819243163543541878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139108.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A119674.P4521212800816503129

`A000265(n+1)+A007814(n+1)`
-/

namespace A119674.P4521212800816503129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + A007814 (n + 1)

end

end A119674.P4521212800816503129

noncomputable section

/-- A119674: Number of states of the minimal deterministic finite automaton that accepts binary strings that represent numbers that are divisible by n.

Offset 1, canonical program `A119674.P4521212800816503129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119674 (n : ℕ) : ℤ :=
  A119674.P4521212800816503129.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125079.P1710399594586959767

`A035154(2*n+1)`
-/

namespace A125079.P1710399594586959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (2 * n + 1)

end

end A125079.P1710399594586959767

noncomputable section

/-- A125079: Excess of number of divisors of 2n+1 of form 12k+1, 12k+5 over those of form 12k+7, 12k+11.

Offset 0, canonical program `A125079.P1710399594586959767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125079 (n : ℕ) : ℤ :=
  A125079.P1710399594586959767.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128474.P6134518486314641698

`A007814(n+3)+A011371(n)`
-/

namespace A128474.P6134518486314641698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 3) + A011371 n

end

end A128474.P6134518486314641698

noncomputable section

/-- A128474: Largest number k such that 2^k divides n*(n-3)!.

Offset 3, canonical program `A128474.P6134518486314641698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128474 (n : ℕ) : ℤ :=
  A128474.P6134518486314641698.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129628.P17919949017180811330

`A115364(n+1)*A001227(n+1)`
-/

namespace A129628.P17919949017180811330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (n + 1) * A001227 (n + 1)

end

end A129628.P17919949017180811330

noncomputable section

/-- A129628: Inverse Moebius transform of A001511.

Offset 1, canonical program `A129628.P17919949017180811330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129628 (n : ℕ) : ℤ :=
  A129628.P17919949017180811330.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132004.P16065052976772229410

`(-1)^n*A035154(n+1)`
-/

namespace A132004.P16065052976772229410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035154 (n + 1)

end

end A132004.P16065052976772229410

noncomputable section

/-- A132004: Expansion of (1 - phi(q^3) / phi(q) * phi(-q^2) * phi(-q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A132004.P16065052976772229410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132004 (n : ℕ) : ℤ :=
  A132004.P16065052976772229410.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132741.P5410821295142061741

`2^A007814(n+1)*5^A112765(n+1)`
-/

namespace A132741.P5410821295142061741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A132741.P5410821295142061741

noncomputable section

/-- A132741: Largest divisor of n having the form 2^i*5^j.

Offset 1, canonical program `A132741.P5410821295142061741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132741.P5410821295142061741.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133539.P3067376241285040569

`A133525(n+1)+A030078(n+5)`
-/

namespace A133539.P3067376241285040569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) + A030078 (n + 5)

end

end A133539.P3067376241285040569

noncomputable section

/-- A133539: Sum of third powers of five consecutive primes.

Offset 1, canonical program `A133539.P3067376241285040569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133539 (n : ℕ) : ℤ :=
  A133539.P3067376241285040569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133540.P13751763277394668418

`A133526(n+1)+A030514(n+5)`
-/

namespace A133540.P13751763277394668418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) + A030514 (n + 5)

end

end A133540.P13751763277394668418

noncomputable section

/-- A133540: Sum of fourth powers of five consecutive primes.

Offset 1, canonical program `A133540.P13751763277394668418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133540 (n : ℕ) : ℤ :=
  A133540.P13751763277394668418.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133541.P18226434130076836402

`A133527(n+1)+A050997(n+5)`
-/

namespace A133541.P18226434130076836402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133527 (n + 1) + A050997 (n + 5)

end

end A133541.P18226434130076836402

noncomputable section

/-- A133541: Sum of fifth powers of five consecutive primes.

Offset 1, canonical program `A133541.P18226434130076836402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133541 (n : ℕ) : ℤ :=
  A133541.P18226434130076836402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133542.P11638819903937518053

`A133528(n+1)+A030516(n+5)`
-/

namespace A133542.P11638819903937518053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 1) + A030516 (n + 5)

end

end A133542.P11638819903937518053

noncomputable section

/-- A133542: Sum of sixth powers of five consecutive primes.

Offset 1, canonical program `A133542.P11638819903937518053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133542 (n : ℕ) : ℤ :=
  A133542.P11638819903937518053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134343.P11380617863790759177

`(-1)^n*A008441(n)`
-/

namespace A134343.P11380617863790759177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008441 n

end

end A134343.P11380617863790759177

noncomputable section

/-- A134343: Expansion of psi(-x)^2 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A134343.P11380617863790759177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134343 (n : ℕ) : ℤ :=
  A134343.P11380617863790759177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135560.P7118035102855316106

`A007814(n+1)+A036987(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135560.P7118035102855316106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A036987 n + 1

end

end A135560.P7118035102855316106

noncomputable section

/-- A135560: a(n) = A007814(n) + A036987(n-1) + 1.

Offset 1, canonical program `A135560.P7118035102855316106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135560 (n : ℕ) : ℤ :=
  A135560.P7118035102855316106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138342.P15743762624797914969

`A059482(A007814(n+1))`
-/

namespace A138342.P15743762624797914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (A007814 (n + 1)).toNat

end

end A138342.P15743762624797914969

noncomputable section

/-- A138342: First differences of A007088.

Offset 1, canonical program `A138342.P15743762624797914969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138342 (n : ℕ) : ℤ :=
  A138342.P15743762624797914969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143520.P7922226448334733284

`(n+1)*A112329(n+1)`
-/

namespace A143520.P7922226448334733284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112329 (n + 1)

end

end A143520.P7922226448334733284

noncomputable section

/-- A143520: a(n) is n times number of divisors of n if n is odd, zero if n is twice odd, n times number of divisors of n/4 if n is divisible by 4.

Offset 1, canonical program `A143520.P7922226448334733284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143520 (n : ℕ) : ℤ :=
  A143520.P7922226448334733284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143520.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A038743.P9627818471373104012

`∑[A038735(n+6)]`
-/

namespace A038743.P9627818471373104012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038735 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038743.P9627818471373104012

noncomputable section

/-- A038743: T(n,n-6), array T as in A038738.

Offset 6, canonical program `A038743.P9627818471373104012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038743 (n : ℕ) : ℤ :=
  A038743.P9627818471373104012.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038743.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057849.P12722118216804034040

`A049202(A000040(n+1))`
-/

namespace A057849.P12722118216804034040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A000040 (n + 1)).toNat

end

end A057849.P12722118216804034040

noncomputable section

/-- A057849: Primes p whose order of primeness A078442(p) is at least 7.

Offset 1, canonical program `A057849.P12722118216804034040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849 (n : ℕ) : ℤ :=
  A057849.P12722118216804034040.a (n - 1)

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

/-! ## A070301.P14203331873817111761

`A013916(n+2)/2`
-/

namespace A070301.P14203331873817111761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013916 (n + 2) : ℚ) / 2

end

end A070301.P14203331873817111761

noncomputable section

/-- A070301: Numbers n such that sum of first 2n primes is prime.

Offset 1, canonical program `A070301.P14203331873817111761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070301.P14203331873817111761.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070301.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072589.P6703439860602350751

`∩[A072566(n+1), A072585(n+1)]`
-/

namespace A072589.P6703439860602350751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072589.P6703439860602350751

noncomputable section

/-- A072589: n, phi(n) and sigma(n) end with the same digit.

Offset 1, canonical program `A072589.P6703439860602350751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A072589 (n : ℕ) : ℤ :=
  (A072589.P6703439860602350751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A072589.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081386.P11376049931011802170

`A056173(2*(n+1))`
-/

namespace A081386.P11376049931011802170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (2 * (n + 1))

end

end A081386.P11376049931011802170

noncomputable section

/-- A081386: Number of unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of those prime factors in C(2n,n), whose exponent equals one.

Offset 1, canonical program `A081386.P11376049931011802170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386 (n : ℕ) : ℤ :=
  A081386.P11376049931011802170.a (n - 1)

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

/-! ## A097363.P9324045915537457052

`A097338(n+1)+1`
-/

namespace A097363.P9324045915537457052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 1

end

end A097363.P9324045915537457052

noncomputable section

/-- A097363: Positive integers n such that 2n-13 is prime.

Offset 1, canonical program `A097363.P9324045915537457052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363 (n : ℕ) : ℤ :=
  A097363.P9324045915537457052.a (n - 1)

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

/-! ## A107757.P7873322615201436145

`or(1, A089118(n+1))`
-/

namespace A107757.P7873322615201436145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089118 (n + 1))

end

end A107757.P7873322615201436145

noncomputable section

/-- A107757: Numbers k such that Sum_{j=1..k} Catalan(j) == 2 (mod 3).

Offset 1, canonical program `A107757.P7873322615201436145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757 (n : ℕ) : ℤ :=
  A107757.P7873322615201436145.a (n - 1)

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

/-! ## A110494.P10384537411605052210

`or(1, A084921(n+1))`
-/

namespace A110494.P10384537411605052210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084921 (n + 1))

end

end A110494.P10384537411605052210

noncomputable section

/-- A110494: Least k such that prime(n)^2 divides binomial(2k,k).

Offset 1, canonical program `A110494.P10384537411605052210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110494 (n : ℕ) : ℤ :=
  A110494.P10384537411605052210.a (n - 1)

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

/-! ## A118824.P16499052940195568067

`-A118821(n+1)`
-/

namespace A118824.P16499052940195568067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118821 (n + 1)

end

end A118824.P16499052940195568067

noncomputable section

/-- A118824: 2-adic continued fraction of zero, where a(n) = -2 if n is odd, A006519(n/2) otherwise.

Offset 1, canonical program `A118824.P16499052940195568067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118824 (n : ℕ) : ℤ :=
  A118824.P16499052940195568067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120263.P6050525716603868642

`A096617(n+1)/A001008(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120263.P6050525716603868642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A120263.P6050525716603868642

noncomputable section

/-- A120263: Ratio of the numerator of n*HarmonicNumber[n] to the numerator of HarmonicNumber[n]: A096617(n)/A001008(n).

Offset 1, canonical program `A120263.P6050525716603868642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120263.P6050525716603868642.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121363.P18122927571743324693

`A008441(n)*A049347(n)`
-/

namespace A121363.P18122927571743324693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A049347 n

end

end A121363.P18122927571743324693

noncomputable section

/-- A121363: Expansion of q^(-1/4)(eta(q)*eta(q^6)*eta(q^9)/eta(q^3))^2/(eta(q^2)eta(q^18)) in powers of q.

Offset 0, canonical program `A121363.P18122927571743324693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121363 (n : ℕ) : ℤ :=
  A121363.P18122927571743324693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121454.P16119568103753494855

`(-1)^(n+2)*A035162(n+1)`
-/

namespace A121454.P16119568103753494855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A035162 (n + 1)

end

end A121454.P16119568103753494855

noncomputable section

/-- A121454: Expansion of q * psi(-q) * psi(-q^7) in powers of q where psi(q) is a Ramanujan theta function.

Offset 1, canonical program `A121454.P16119568103753494855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121454 (n : ℕ) : ℤ :=
  A121454.P16119568103753494855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121763.P355992002445267932

`ceil(A121762(n+1)/6)`
-/

namespace A121763.P355992002445267932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121762 (n + 1) : ℚ) / 6⌉

end

end A121763.P355992002445267932

noncomputable section

/-- A121763: Numbers k such that 6*k-1 is prime while 6*k+1 is composite.

Offset 1, canonical program `A121763.P355992002445267932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121763 (n : ℕ) : ℤ :=
  A121763.P355992002445267932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121765.P17102494836504524144

`floor(A121764(n+1)/6)`
-/

namespace A121765.P17102494836504524144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121764 (n + 1) : ℚ) / 6⌋

end

end A121765.P17102494836504524144

noncomputable section

/-- A121765: Numbers k such that 6*k-1 is composite while 6*k+1 is prime.

Offset 1, canonical program `A121765.P17102494836504524144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121765 (n : ℕ) : ℤ :=
  A121765.P17102494836504524144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122258.P2851884273537307678

`∑[A122257(n+1)]`
-/

namespace A122258.P2851884273537307678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P2851884273537307678

noncomputable section

/-- A122258: Number of Pierpont primes <= n.

Offset 1, canonical program `A122258.P2851884273537307678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122258 (n : ℕ) : ℤ :=
  A122258.P2851884273537307678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122698.P18060644383630824103

`A000108(A014081(n))*A036987(n)`
-/

namespace A122698.P18060644383630824103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A014081 n).toNat * A036987 n

end

end A122698.P18060644383630824103

noncomputable section

/-- A122698: a(1)=a(2)=1 then a(n) = Sum_{d|n, 1<d<n} a(d)*a(n/d).

Offset 1, canonical program `A122698.P18060644383630824103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122698 (n : ℕ) : ℤ :=
  A122698.P18060644383630824103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122930.P328468433382286565

`A106345(A089633(n))*A193588(n)`
-/

namespace A122930.P328468433382286565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A089633 n).toNat * A193588 n

end

end A122930.P328468433382286565

noncomputable section

/-- A122930: Triangular array read by rows, based on the Zeckendorf expansion of n and containing the golden rectangle sequence A001629.

Offset 1, canonical program `A122930.P328468433382286565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A122930 (n : ℕ) : ℤ :=
  A122930.P328468433382286565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A122930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123477.P8743366837065388473

`A035263(n+1)*A112848(n+1)`
-/

namespace A123477.P8743366837065388473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A112848 (n + 1)

end

end A123477.P8743366837065388473

noncomputable section

/-- A123477: Expansion of (1 - b(q)) / 3 in powers of q where b(q) is a cubic AGM theta function.

Offset 1, canonical program `A123477.P8743366837065388473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A123477 (n : ℕ) : ℤ :=
  A123477.P8743366837065388473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A123477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123575.P4742146334013980851

`∑[A056558(abs(1-n))]`
-/

namespace A123575.P4742146334013980851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123575.P4742146334013980851

noncomputable section

/-- A123575: The Kruskal-Macaulay function L_3(n).

Offset 0, canonical program `A123575.P4742146334013980851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123575 (n : ℕ) : ℤ :=
  A123575.P4742146334013980851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124585.P9964939614639913661

`A000040(lt[10, A054541(n+1)])`
-/

namespace A124585.P9964939614639913661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P9964939614639913661

noncomputable section

/-- A124585: Primes p such that q-p >= 12, where q is the next prime after p.

Offset 1, canonical program `A124585.P9964939614639913661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A124585 (n : ℕ) : ℤ :=
  A124585.P9964939614639913661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A124585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124849.P5182331567433130283

`record[A089033(n+1)/A245838(A033868(n+1))]`
-/

namespace A124849.P5182331567433130283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089033 (n + 1) : ℚ) / (A245838 (A033868 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124849.P5182331567433130283

noncomputable section

/-- A124849: Numbers k such that 7k + 3 and 3k + 7 are primes.

Offset 1, canonical program `A124849.P5182331567433130283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124849.P5182331567433130283.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125185.P11360573012885096283

`A115068(n+1)+A119468(n)-A038207(n)`
-/

namespace A125185.P11360573012885096283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A119468 n - A038207 n)

end

end A125185.P11360573012885096283

noncomputable section

/-- A125185: Triangle read by rows: T(n,k) is the coefficient of t^k in the polynomial S(n,t)=[(1+t)(2+t)^n+(1-t)t^n]/2 (0<=k<=n).

Offset 0, canonical program `A125185.P11360573012885096283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125185 (n : ℕ) : ℤ :=
  A125185.P11360573012885096283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125203.P7914855552444812704

`round(A293513(4*n+5)/2)`
-/

namespace A125203.P7914855552444812704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293513 (4 * n + 5) : ℚ) / 2)

end

end A125203.P7914855552444812704

noncomputable section

/-- A125203: Number of ways to write n as 4*x*y - x - y with 1<=x<=y.

Offset 1, canonical program `A125203.P7914855552444812704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203 (n : ℕ) : ℤ :=
  A125203.P7914855552444812704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125266.P13168429370287137297

`A054541(n+1)+C(2, n+2)`
-/

namespace A125266.P13168429370287137297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A125266.P13168429370287137297

noncomputable section

/-- A125266: Number of repetitions in A007918.

Offset 1, canonical program `A125266.P13168429370287137297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125266 (n : ℕ) : ℤ :=
  A125266.P13168429370287137297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125866.P959070150198838405

`record[A000265(A051913(n+1))]`
-/

namespace A125866.P959070150198838405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A051913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125866.P959070150198838405

noncomputable section

/-- A125866: Odd numbers k such that cos(2*Pi/k) is an algebraic number of a 3-smooth degree, but not 2-smooth.

Offset 1, canonical program `A125866.P959070150198838405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A125866 (n : ℕ) : ℤ :=
  A125866.P959070150198838405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A125866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126096.P4702891818207861137

`p?[A102655(n+1)]`
-/

namespace A126096.P4702891818207861137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126096.P4702891818207861137

noncomputable section

/-- A126096: Primes that are the arithmetic mean of four successive primes.

Offset 1, canonical program `A126096.P4702891818207861137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A126096 (n : ℕ) : ℤ :=
  A126096.P4702891818207861137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A126096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127248.P15964659858522200929

`A127243(n)*A130777(n)`
-/

namespace A127248.P15964659858522200929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127243 n * A130777 n

end

end A127248.P15964659858522200929

noncomputable section

/-- A127248: Triangle whose k-th column is generated by (1-A010060(1+k)*x)*x^k.

Offset 0, canonical program `A127248.P15964659858522200929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127248 (n : ℕ) : ℤ :=
  A127248.P15964659858522200929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127335.P9630767717206448625

`A127334(n+2)+A000040(n+1)`
-/

namespace A127335.P9630767717206448625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + A000040 (n + 1)

end

end A127335.P9630767717206448625

noncomputable section

/-- A127335: Numbers that are the sum of 8 successive primes.

Offset 1, canonical program `A127335.P9630767717206448625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127335 (n : ℕ) : ℤ :=
  A127335.P9630767717206448625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127439.P6533677718592646859

`A054541(A002260(n+1))`
-/

namespace A127439.P6533677718592646859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A002260 (n + 1)).toNat

end

end A127439.P6533677718592646859

noncomputable section

/-- A127439: Triangle read by rows, in which row n consists of first n terms of A054541.

Offset 1, canonical program `A127439.P6533677718592646859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127439 (n : ℕ) : ℤ :=
  A127439.P6533677718592646859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128078.P385746566403988126

`A127733(n+1)-A048151(n+1)`
-/

namespace A128078.P385746566403988126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127733 (n + 1) - A048151 (n + 1)

end

end A128078.P385746566403988126

noncomputable section

/-- A128078: A002260 * A128064.

Offset 1, canonical program `A128078.P385746566403988126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078 (n : ℕ) : ℤ :=
  A128078.P385746566403988126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128307.P14549488108935088319

`Δ[floor((A089633(n)+1)/2)]`
-/

namespace A128307.P14549488108935088319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089633 n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128307.P14549488108935088319

noncomputable section

/-- A128307: Triangle, (1, 0, 1, 2, 4, 8, ...) in every column.

Offset 1, canonical program `A128307.P14549488108935088319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128307 (n : ℕ) : ℤ :=
  A128307.P14549488108935088319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128708.P6544148237693271811

`A000188(gcd(A000082(n+1), A065958(n+1)))`
-/

namespace A128708.P6544148237693271811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.gcd (A000082 (n + 1)) (A065958 (n + 1)))

end

end A128708.P6544148237693271811

noncomputable section

/-- A128708: Let j(n) be the Jacobsthal function, A048669. Then a(n) is the number of times that the gap j(n) appears between consecutive numbers <= n+1 and coprime to n.

Offset 1, canonical program `A128708.P6544148237693271811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A128708 (n : ℕ) : ℤ :=
  A128708.P6544148237693271811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A128708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128975.P3355518548198694362

`A079318(∑[n]%(n+1))-1`
-/

namespace A128975.P3355518548198694362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079318 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) - 1

end

end A128975.P3355518548198694362

noncomputable section

/-- A128975: a(n) = the number of unordered triples of integers (a,b,c) with a+b+c=n, whose bitwise XOR is zero. Equivalently, the number of three-heap nim games with n stones which are in a losing position for the first player.

Offset 1, canonical program `A128975.P3355518548198694362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128975 (n : ℕ) : ℤ :=
  A128975.P3355518548198694362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130106.P5653707462542104831

`A051731(n+1)*A063659(A002260(n+1))`
-/

namespace A130106.P5653707462542104831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A002260 (n + 1)).toNat

end

end A130106.P5653707462542104831

noncomputable section

/-- A130106: A051731 * diagonalized matrix of A063659.

Offset 1, canonical program `A130106.P5653707462542104831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130106 (n : ℕ) : ℤ :=
  A130106.P5653707462542104831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130123.P13186316548061333637

`ceil(A131436(n+1)/2)`
-/

namespace A130123.P13186316548061333637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131436 (n + 1) : ℚ) / 2⌉

end

end A130123.P13186316548061333637

noncomputable section

/-- A130123: Infinite lower triangular matrix with 2^k in the right diagonal and the rest zeros. Triangle, T(n,k), n zeros followed by the term 2^k. Triangle by columns, (2^k, 0, 0, 0, ...).

Offset 0, canonical program `A130123.P13186316548061333637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130123 (n : ℕ) : ℤ :=
  A130123.P13186316548061333637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130654.P16019514325048993052

`A007814(A092505(n+1))`
-/

namespace A130654.P16019514325048993052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A092505 (n + 1)).toNat

end

end A130654.P16019514325048993052

noncomputable section

/-- A130654: Exponent m such that 2^m = A092505(n) = A002430(n) / A046990(n).

Offset 1, canonical program `A130654.P16019514325048993052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130654 (n : ℕ) : ℤ :=
  A130654.P16019514325048993052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131821.P13312494062197045656

`val(A131816(n), 2)+1`
-/

namespace A131821.P13312494062197045656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2 + 1

end

end A131821.P13312494062197045656

noncomputable section

/-- A131821: Triangle read by rows: row n consists of n followed by (n-2) ones then n.

Offset 1, canonical program `A131821.P13312494062197045656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821 (n : ℕ) : ℤ :=
  (A131821.P13312494062197045656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131889.P15177915861031452150

`A000244(A343754(n))`
-/

namespace A131889.P15177915861031452150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A343754 n).toNat

end

end A131889.P15177915861031452150

noncomputable section

/-- A131889: a(n) is the number of shapes of balanced trees with constant branching factor 3 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

Offset 0, canonical program `A131889.P15177915861031452150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A131889 (n : ℕ) : ℤ :=
  A131889.P15177915861031452150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A131889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131953.P6052148491130598522

`A131816(n)+1-A097807(n)`
-/

namespace A131953.P6052148491130598522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A097807 n)

end

end A131953.P6052148491130598522

noncomputable section

/-- A131953: A130321 + A059268 - A000012(signed).

Offset 0, canonical program `A131953.P6052148491130598522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131953 (n : ℕ) : ℤ :=
  A131953.P6052148491130598522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132248.P9030196148284508513

`∩[A121764(n+1), A128470(n)]`
-/

namespace A132248.P9030196148284508513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P9030196148284508513

noncomputable section

/-- A132248: Isolated primes congruent to 1 (mod 30).

Offset 1, canonical program `A132248.P9030196148284508513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132248 (n : ℕ) : ℤ :=
  (A132248.P9030196148284508513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132252.P10549027381406986059

`∩[30*n+19, A121764(n+1)]`
-/

namespace A132252.P10549027381406986059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P10549027381406986059

noncomputable section

/-- A132252: Isolated primes congruent to 19 (mod 30).

Offset 1, canonical program `A132252.P10549027381406986059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132252 (n : ℕ) : ℤ :=
  (A132252.P10549027381406986059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133545.P7259488329024112066

`A131415(n)+A014473(n)`
-/

namespace A133545.P7259488329024112066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131415 n + A014473 n

end

end A133545.P7259488329024112066

noncomputable section

/-- A133545: (A000012 * A007318 - A007318 * A000012) - A000012.

Offset 1, canonical program `A133545.P7259488329024112066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133545 (n : ℕ) : ℤ :=
  A133545.P7259488329024112066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133562.P2922805213875527912

`A131686(n+3)+A069484(n+1)`
-/

namespace A133562.P2922805213875527912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 3) + A069484 (n + 1)

end

end A133562.P2922805213875527912

noncomputable section

/-- A133562: Numbers which are the sum of the squares of seven consecutive primes.

Offset 1, canonical program `A133562.P2922805213875527912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562 (n : ℕ) : ℤ :=
  A133562.P2922805213875527912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133827.P13919680985496141564

`A035162(2*n+1)`
-/

namespace A133827.P13919680985496141564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (2 * n + 1)

end

end A133827.P13919680985496141564

noncomputable section

/-- A133827: Number of solutions to x + 7 * y = 2 * n in triangular numbers.

Offset 0, canonical program `A133827.P13919680985496141564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133827 (n : ℕ) : ℤ :=
  A133827.P13919680985496141564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134015.P8862688659031297198

`(-1)^n*A113406(n+1)`
-/

namespace A134015.P8862688659031297198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113406 (n + 1)

end

end A134015.P8862688659031297198

noncomputable section

/-- A134015: Expansion of (1 - phi(-q) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A134015.P8862688659031297198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134015 (n : ℕ) : ℤ :=
  A134015.P8862688659031297198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134566.P16325399016545697471

`A000045(A085058(record[A048724(n)+1]))`
-/

namespace A134566.P16325399016545697471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A134566.P16325399016545697471

noncomputable section

/-- A134566: a(n) = least m such that {-m*tau} > {n*tau}, where { } denotes fractional part and tau = (1 + sqrt(5))/2.

Offset 1, canonical program `A134566.P16325399016545697471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134566 (n : ℕ) : ℤ :=
  A134566.P16325399016545697471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135764.P14448543870011279856

`A075302(n)+1`
-/

namespace A135764.P14448543870011279856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 n + 1

end

end A135764.P14448543870011279856

noncomputable section

/-- A135764: Distribute the natural numbers in columns based on the occurrence of "2" in each prime factorization; square array A(row,col) = 2^(row-1) * ((2*col)-1), read by descending antidiagonals.

Offset 1, canonical program `A135764.P14448543870011279856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764 (n : ℕ) : ℤ :=
  A135764.P14448543870011279856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138454.P7090914024500942586

`A138442(n+1)-A138419(n+1)`
-/

namespace A138454.P7090914024500942586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138419 (n + 1)

end

end A138454.P7090914024500942586

noncomputable section

/-- A138454: a(n) = ((n-th prime)^6-(n-th prime)^4)/3.

Offset 1, canonical program `A138454.P7090914024500942586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138454 (n : ℕ) : ℤ :=
  A138454.P7090914024500942586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138455.P8102202229354700522

`A138443(n+1)-A138420(n+1)`
-/

namespace A138455.P8102202229354700522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138420 (n + 1)

end

end A138455.P8102202229354700522

noncomputable section

/-- A138455: a(n) = ((n-th prime)^6-(n-th prime)^4)/4.

Offset 1, canonical program `A138455.P8102202229354700522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138455 (n : ℕ) : ℤ :=
  A138455.P8102202229354700522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138456.P16217539803196154374

`A138445(n+1)-A138421(n+1)`
-/

namespace A138456.P16217539803196154374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A138421 (n + 1)

end

end A138456.P16217539803196154374

noncomputable section

/-- A138456: a(n) = ((n-th prime)^6-(n-th prime)^4)/6.

Offset 1, canonical program `A138456.P16217539803196154374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138456 (n : ℕ) : ℤ :=
  A138456.P16217539803196154374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139532.P2108094528252457204

`eq[1, A245838(2*A004767(n))]`
-/

namespace A139532.P2108094528252457204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P2108094528252457204

noncomputable section

/-- A139532: Numbers k such that 24*k + 19 is prime.

Offset 1, canonical program `A139532.P2108094528252457204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532 (n : ℕ) : ℤ :=
  (A139532.P2108094528252457204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141561.P7283071268337444597

`p?[∑[7-A054541(n+1)]]`
-/

namespace A141561.P7283071268337444597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P7283071268337444597

noncomputable section

/-- A141561: Primes of the form 7*k - prime(k) (terms can be repeated).

Offset 1, canonical program `A141561.P7283071268337444597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A141561 (n : ℕ) : ℤ :=
  A141561.P7283071268337444597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A141561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141612.P959685703486808005

`A014081(A073122(n+1)-A033999(n))`
-/

namespace A141612.P959685703486808005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A073122 (n + 1) - A033999 n).toNat

end

end A141612.P959685703486808005

noncomputable section

/-- A141612: Write down 0,1,2,3,...n each in binary. Total up the number of 1's in each bit-position (total number of 1's in 1's position, total number of 1's in 2's position, total number of 1's in 4's position, etc.). a(n) = the number of such totals that each do not equal any other such total.

Offset 0, canonical program `A141612.P959685703486808005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A141612 (n : ℕ) : ℤ :=
  A141612.P959685703486808005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A141612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141846.P12023117412264450593

`∑{d}[A127093(n+1), A062790(#)]`
-/

namespace A141846.P12023117412264450593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A141846.P12023117412264450593

noncomputable section

/-- A141846: Triangle read by rows: A051731 * A051953^(n-k) * 0^(n-k), 1 <= k <= n.

Offset 1, canonical program `A141846.P12023117412264450593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141846 (n : ℕ) : ℤ :=
  A141846.P12023117412264450593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142405.P7484043141253208572

`∩[A134517(n+1), A141194(n+1)]`
-/

namespace A142405.P7484043141253208572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P7484043141253208572

noncomputable section

/-- A142405: Primes congruent to 23 mod 48.

Offset 1, canonical program `A142405.P7484043141253208572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142405 (n : ℕ) : ℤ :=
  (A142405.P7484043141253208572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142413.P5132067326325250209

`∩[A127576(n+1), A134517(n+1)]`
-/

namespace A142413.P5132067326325250209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P5132067326325250209

noncomputable section

/-- A142413: Primes congruent to 47 mod 48.

Offset 1, canonical program `A142413.P5132067326325250209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A142413 (n : ℕ) : ℤ :=
  (A142413.P5132067326325250209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A142413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143310.P10710681991950682703

`A002260(n+1)*A128489(n+1)`
-/

namespace A143310.P10710681991950682703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128489 (n + 1)

end

end A143310.P10710681991950682703

noncomputable section

/-- A143310: Triangle read by rows, A000012 * A127446, 1 <= k <= n.

Offset 1, canonical program `A143310.P10710681991950682703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143310 (n : ℕ) : ℤ :=
  A143310.P10710681991950682703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144217.P17527769007908988650

`val(A131816(n), 2)`
-/

namespace A144217.P17527769007908988650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2

end

end A144217.P17527769007908988650

noncomputable section

/-- A144217: Weight array of A144216: a rectangular array by antidiagonals.

Offset 1, canonical program `A144217.P17527769007908988650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217 (n : ℕ) : ℤ :=
  (A144217.P17527769007908988650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144972.P15925471554680666026

`record[A073353(n+1)-A015052(n+1)]`
-/

namespace A144972.P15925471554680666026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144972.P15925471554680666026

noncomputable section

/-- A144972: Power-6-free numbers: numbers whose exponents in their prime factorization are all less than 6.

Offset 1, canonical program `A144972.P15925471554680666026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9831 terms. -/
def A144972 (n : ℕ) : ℤ :=
  A144972.P15925471554680666026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9831 terms. -/
def A144972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145398.P13757038828564537059

`A007429(n+1)+A145378(n+1)-A327096(n+1)`
-/

namespace A145398.P13757038828564537059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A145378 (n + 1) - A327096 (n + 1))

end

end A145398.P13757038828564537059

noncomputable section

/-- A145398: a(n) = Sum_{d|n} sigma(d) - Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

Offset 1, canonical program `A145398.P13757038828564537059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145398 (n : ℕ) : ℤ :=
  A145398.P13757038828564537059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145479.P5146856284210812585

`p?[A053177(n+1)-32]`
-/

namespace A145479.P5146856284210812585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P5146856284210812585

noncomputable section

/-- A145479: Primes p such that (31+p)/2 is prime.

Offset 1, canonical program `A145479.P5146856284210812585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A145479 (n : ℕ) : ℤ :=
  A145479.P5146856284210812585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A145479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145738.P10793220673153802030

`A145609(n+1)/A145737(n+1)²`
-/

namespace A145738.P10793220673153802030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145609 (n + 1) : ℚ) / (A145737 (n + 1) ^ 2 : ℚ)

end

end A145738.P10793220673153802030

noncomputable section

/-- A145738: a(n) = squarefree part of A145609(n).

Offset 1, canonical program `A145738.P10793220673153802030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145738 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145738.P10793220673153802030.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146211.P16283296004998596846

`A046211(A000040(n+3))`
-/

namespace A146211.P16283296004998596846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046211 (A000040 (n + 3)).toNat

end

end A146211.P16283296004998596846

noncomputable section

/-- A146211: Fermat quotient of the n-th prime with base 3.

Offset 3, canonical program `A146211.P16283296004998596846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A146211 (n : ℕ) : ℤ :=
  A146211.P16283296004998596846.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A146211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153051.P15552689692595928018

`A153049(n+1)+2`
-/

namespace A153051.P15552689692595928018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) + 2

end

end A153051.P15552689692595928018

noncomputable section

/-- A153051: Numbers n>=9 such that 2*n-17 is not a prime.

Offset 1, canonical program `A153051.P15552689692595928018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153051 (n : ℕ) : ℤ :=
  A153051.P15552689692595928018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153086.P1539337215457405017

`A095277(n+1)-1`
-/

namespace A153086.P1539337215457405017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095277 (n + 1) - 1

end

end A153086.P1539337215457405017

noncomputable section

/-- A153086: Numbers n such that 4*n+7 is not prime.

Offset 1, canonical program `A153086.P1539337215457405017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153086 (n : ℕ) : ℤ :=
  A153086.P1539337215457405017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153218.P3785772997736358194

`eq[1, A245838(2*(n+1))]`
-/

namespace A153218.P3785772997736358194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153218.P3785772997736358194

noncomputable section

/-- A153218: Numbers k such that 6k + 7 is prime.

Offset 1, canonical program `A153218.P3785772997736358194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218 (n : ℕ) : ℤ :=
  (A153218.P3785772997736358194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155054.P1451719256099670011

`p?[A000720(A154386(n+1))]`
-/

namespace A155054.P1451719256099670011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155054.P1451719256099670011

noncomputable section

/-- A155054: Primes p such that (number of prime digits of prime(p)) < (number of nonprime digits of prime(p)).

Offset 1, canonical program `A155054.P1451719256099670011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A155054 (n : ℕ) : ℤ :=
  A155054.P1451719256099670011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A155054.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007932.P4019058118128328590

`A007090(A023705(n+1))`
-/

namespace A007932.P4019058118128328590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023705 (n + 1)).toNat

end

end A007932.P4019058118128328590

noncomputable section

/-- A007932: Numbers that contain only 1's, 2's and 3's.

Offset 1, canonical program `A007932.P4019058118128328590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A007932 (n : ℕ) : ℤ :=
  A007932.P4019058118128328590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A007932.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025128.P5188632509607220510

`floor(A023673(n+2)/2)`
-/

namespace A025128.P5188632509607220510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023673 (n + 2) : ℚ) / 2⌋

end

end A025128.P5188632509607220510

noncomputable section

/-- A025128: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A014306.

Offset 1, canonical program `A025128.P5188632509607220510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025128 (n : ℕ) : ℤ :=
  A025128.P5188632509607220510.a (n - 1)

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

/-! ## A026325.P12326969144217981572

`2*A026134(n+1)-A005322(n+2)`
-/

namespace A026325.P12326969144217981572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026134 (n + 1) - A005322 (n + 2)

end

end A026325.P12326969144217981572

noncomputable section

/-- A026325: Number of paths in the plane x >= 0 and y >= -2, from (0,0) to (n,0), and consisting of steps U = (1,1), D = (1,-1) and H = (1,0).

Offset 0, canonical program `A026325.P12326969144217981572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325 (n : ℕ) : ℤ :=
  A026325.P12326969144217981572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050438.P7936861514397192088

`A002808(A050436(n+1))`
-/

namespace A050438.P7936861514397192088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050436 (n + 1)).toNat

end

end A050438.P7936861514397192088

noncomputable section

/-- A050438: Fourth-order composites.

Offset 1, canonical program `A050438.P7936861514397192088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050438 (n : ℕ) : ℤ :=
  A050438.P7936861514397192088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050438.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050615.P3198622266931088097

`a(A004526(n))*A050614(n)` with `a(0)=1`
-/

namespace A050615.P3198622266931088097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A050614 n

end

end A050615.P3198622266931088097

noncomputable section

/-- A050615: Products of distinct terms of Fibonacci(2^(i+2)): a(n) = Product_{i=0..floor(log_2(n+1))} F(2^(i+2))^bit(n,i).

Offset 0, canonical program `A050615.P3198622266931088097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615 (n : ℕ) : ℤ :=
  A050615.P3198622266931088097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050875.P12568345992198848513

`eq[1, A001316(A175920(n))/A040002(n)^3]`
-/

namespace A050875.P12568345992198848513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A175920 n).toNat : ℚ) / (A040002 n ^ 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A050875.P12568345992198848513

noncomputable section

/-- A050875: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but 6 values of i.

Offset 1, canonical program `A050875.P12568345992198848513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3076 terms. -/
def A050875 (n : ℕ) : ℤ :=
  (A050875.P12568345992198848513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3076 terms. -/
def A050875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051245.P6180974543807549376

`eq[A001316(A175920(n)), A040002(n)]`
-/

namespace A051245.P6180974543807549376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051245.P6180974543807549376

noncomputable section

/-- A051245: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but two values of i.

Offset 1, canonical program `A051245.P6180974543807549376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A051245 (n : ℕ) : ℤ :=
  (A051245.P6180974543807549376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A051245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051246.P4317919909643210972

`eq[A001316(A175920(n)), A040056(n)]`
-/

namespace A051246.P4317919909643210972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P4317919909643210972

noncomputable section

/-- A051246: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but 4 values of i.

Offset 1, canonical program `A051246.P4317919909643210972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2046 terms. -/
def A051246 (n : ℕ) : ℤ :=
  (A051246.P4317919909643210972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2046 terms. -/
def A051246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051456.P8737044778690682288

`A029625(n)/2`
-/

namespace A051456.P8737044778690682288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029625 n : ℚ) / 2

end

end A051456.P8737044778690682288

noncomputable section

/-- A051456: (Terms in A029625)/2.

Offset 0, canonical program `A051456.P8737044778690682288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051456 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051456.P8737044778690682288.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051456.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053118.P15405571042866260593

`A053117(A061579(n))`
-/

namespace A053118.P15405571042866260593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (A061579 n).toNat

end

end A053118.P15405571042866260593

noncomputable section

/-- A053118: Triangle of coefficients of Chebyshev's U(n,x) polynomials (exponents in decreasing order).

Offset 0, canonical program `A053118.P15405571042866260593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A053118 (n : ℕ) : ℤ :=
  A053118.P15405571042866260593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A053118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053321.P8026973044884624945

`Δ[A031924(n+1)]`
-/

namespace A053321.P8026973044884624945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P8026973044884624945

noncomputable section

/-- A053321: First differences of A031924.

Offset 1, canonical program `A053321.P8026973044884624945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321 (n : ℕ) : ℤ :=
  A053321.P8026973044884624945.a (n - 1)

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

/-! ## A054805.P10064582825251295720

`∩[A051634(n+1), A147812(n+1)]`
-/

namespace A054805.P10064582825251295720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054805.P10064582825251295720

noncomputable section

/-- A054805: Second term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054805.P10064582825251295720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054805 (n : ℕ) : ℤ :=
  (A054805.P10064582825251295720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054805.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061203.P11645560286396087614

`∑{#}[n, A061202(floor((n+1)/(#+1)))]`
-/

namespace A061203.P11645560286396087614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A061202 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A061203.P11645560286396087614

noncomputable section

/-- A061203: (tau<=)_5(n).

Offset 1, canonical program `A061203.P11645560286396087614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061203 (n : ℕ) : ℤ :=
  A061203.P11645560286396087614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061203.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A065568.P13955747062724788231

`∑[A034738(n+1)]`
-/

namespace A065568.P13955747062724788231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P13955747062724788231

noncomputable section

/-- A065568: Sum over all subsets of {1,..,n} of the GCD of the subset.

Offset 1, canonical program `A065568.P13955747062724788231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A065568 (n : ℕ) : ℤ :=
  A065568.P13955747062724788231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A065568.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069588.P13160061826596831233

`A003617(A028310(n)+1)`
-/

namespace A069588.P13160061826596831233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A028310 n + 1).toNat

end

end A069588.P13160061826596831233

noncomputable section

/-- A069588: Smallest prime in which the n-th significant digit is a 1.

Offset 1, canonical program `A069588.P13160061826596831233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588 (n : ℕ) : ℤ :=
  A069588.P13160061826596831233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071752.P14853445562846689292

`A071751(n+1)-A071731(n)`
-/

namespace A071752.P14853445562846689292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071731 n

end

end A071752.P14853445562846689292

noncomputable section

/-- A071752: Expansion of (1+x^4*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071752.P14853445562846689292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752 (n : ℕ) : ℤ :=
  A071752.P14853445562846689292.a n

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

/-! ## A074998.P15115508449651615481

`filter[A074997(n+1), A005171(#)]`
-/

namespace A074998.P15115508449651615481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A074998.P15115508449651615481

noncomputable section

/-- A074998: Composite numbers which are sandwiched between two numbers having the same unordered canonical form.

Offset 1, canonical program `A074998.P15115508449651615481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. -/
def A074998 (n : ℕ) : ℤ :=
  A074998.P15115508449651615481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. -/
def A074998.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A075402.P300143287191139796

`A065383(n+1)-∑[n+1]`
-/

namespace A075402.P300143287191139796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075402.P300143287191139796

noncomputable section

/-- A075402: Smallest number such that a(n) + T(n) is a prime, where T(n) is the n-th triangular number.

Offset 1, canonical program `A075402.P300143287191139796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402 (n : ℕ) : ℤ :=
  A075402.P300143287191139796.a (n - 1)

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

/-! ## A076238.P18351837479544488770

`A050436(n+1)%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076238.P18351837479544488770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (A002808 (n + 1))

end

end A076238.P18351837479544488770

noncomputable section

/-- A076238: a(n) = A050436(n) mod A002808(n).

Offset 1, canonical program `A076238.P18351837479544488770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076238 (n : ℕ) : ℤ :=
  A076238.P18351837479544488770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076239.P17511644699145666000

`A050436(n+1)%(n+1)`
-/

namespace A076239.P17511644699145666000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (n + 1 : ℤ)

end

end A076239.P17511644699145666000

noncomputable section

/-- A076239: Remainder when 3rd-order composite ccc(n) = A050436(n) is divided by n.

Offset 1, canonical program `A076239.P17511644699145666000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076239 (n : ℕ) : ℤ :=
  A076239.P17511644699145666000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076239.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076619.P16719581789657697159

`A076333(n+1)+1`
-/

namespace A076619.P16719581789657697159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1) + 1

end

end A076619.P16719581789657697159

noncomputable section

/-- A076619: Least x>1 such that x^d == 1 (mod d) for each divisor d of n, for all nonsquarefree numbers n (cf. A013929).

Offset 1, canonical program `A076619.P16719581789657697159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076619 (n : ℕ) : ℤ :=
  A076619.P16719581789657697159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076619.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078156.P15055870167675829401

`A078153((n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078156.P15055870167675829401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (Nat.factorial (n + 1))

end

end A078156.P15055870167675829401

noncomputable section

/-- A078156: A078153(n!).

Offset 1, canonical program `A078156.P15055870167675829401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078156 (n : ℕ) : ℤ :=
  A078156.P15055870167675829401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078158.P4884813077665942233

`A078153(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078158.P4884813077665942233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (2 ^ (n + 1))

end

end A078158.P4884813077665942233

noncomputable section

/-- A078158: a(n) = A078153(2^n).

Offset 1, canonical program `A078158.P4884813077665942233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078158 (n : ℕ) : ℤ :=
  A078158.P4884813077665942233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078158.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A083251.P14965405990869838222

`eq[2, abs(A083245(n+1))]+1`
-/

namespace A083251.P14965405990869838222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083245 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083251.P14965405990869838222

noncomputable section

/-- A083251: Numbers m such that abs(A045763(m) - A073757(m)) = 2, i.e., signed difference of size of related and unrelated sets to n equals either 2 or -2.

Offset 1, canonical program `A083251.P14965405990869838222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A083251 (n : ℕ) : ℤ :=
  (A083251.P14965405990869838222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A083251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091399.P5118793221224160837

`A035189(∏{p}[n+1, #])`
-/

namespace A091399.P5118793221224160837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091399.P5118793221224160837

noncomputable section

/-- A091399: a(n) = Product_{ p | n } (1 + Legendre(7,p) ).

Offset 1, canonical program `A091399.P5118793221224160837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091399 (n : ℕ) : ℤ :=
  A091399.P5118793221224160837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115322.P1474604407657052441

`abs(A053117(n))`
-/

namespace A115322.P1474604407657052441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053117 n|

end

end A115322.P1474604407657052441

noncomputable section

/-- A115322: Triangle of coefficients of Pell polynomials.

Offset 1, canonical program `A115322.P1474604407657052441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115322 (n : ℕ) : ℤ :=
  A115322.P1474604407657052441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115322.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120278.P15344238521992007135

`∑[A054114(n)]+1`
-/

namespace A120278.P15344238521992007135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120278.P15344238521992007135

noncomputable section

/-- A120278: a(n) = Sum_{m=1..n} Sum_{k=1..m} C(2*k,k), where C(2*k,k) = (2*k)!/(k!)^2 = A000984(k).

Offset 1, canonical program `A120278.P15344238521992007135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278 (n : ℕ) : ℤ :=
  A120278.P15344238521992007135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120360.P8400398089451663641

`∩[A057265(n+1), A181794(n+1)]`
-/

namespace A120360.P8400398089451663641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P8400398089451663641

noncomputable section

/-- A120360: Even refactorable numbers k such that the number of odd divisors of k and the number of even divisors of k are both even divisors of k.

Offset 1, canonical program `A120360.P8400398089451663641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A120360 (n : ℕ) : ℤ :=
  (A120360.P8400398089451663641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A120360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121448.P24632900459623264

`A059268(n)*A097610(n)`
-/

namespace A121448.P24632900459623264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A097610 n

end

end A121448.P24632900459623264

noncomputable section

/-- A121448: Triangle read by rows: T(n,k) is the number of binary trees with n edges and having k vertices of outdegree 1 (n>=0, k>=0). A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

Offset 0, canonical program `A121448.P24632900459623264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121448 (n : ℕ) : ℤ :=
  A121448.P24632900459623264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122497.P1099217958447741762

`A059448(n+1)+1`
-/

namespace A122497.P1099217958447741762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 1) + 1

end

end A122497.P1099217958447741762

noncomputable section

/-- A122497: Let f(S) denote the interchange of 1's and 2's in S. Let S_0 = 1, S_{N+1} = f(S_N).S_N, where the dot indicates concatenation. Sequence gives S_0.S_1.S_2.S_3....

Offset 1, canonical program `A122497.P1099217958447741762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122497 (n : ℕ) : ℤ :=
  A122497.P1099217958447741762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124626.P17806241570464093679

`filter[A125494(n+2), A378550(#)]`
-/

namespace A124626.P17806241570464093679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A124626.P17806241570464093679

noncomputable section

/-- A124626: Abundant evil numbers. (Abundant numbers that have an even number of ones in their binary representation).

Offset 1, canonical program `A124626.P17806241570464093679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. -/
def A124626 (n : ℕ) : ℤ :=
  A124626.P17806241570464093679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. -/
def A124626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124741.P16805278600356101561

`A038566(A092249(n+2)-1)`
-/

namespace A124741.P16805278600356101561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A092249 (n + 2) - 1).toNat

end

end A124741.P16805278600356101561

noncomputable section

/-- A124741: a(n) = largest of those positive integers which are coprime to both n and n+1 and which are <= n.

Offset 1, canonical program `A124741.P16805278600356101561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A124741 (n : ℕ) : ℤ :=
  A124741.P16805278600356101561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A124741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126867.P8640075110133158416

`2*A000040(∑[A105149(n+1)])`
-/

namespace A126867.P8640075110133158416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126867.P8640075110133158416

noncomputable section

/-- A126867: Largest even semiprime <= n^2.

Offset 2, canonical program `A126867.P8640075110133158416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A126867 (n : ℕ) : ℤ :=
  A126867.P8640075110133158416.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A126867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127627.P12845971405644131649

`A054525(n+1)*A127626(n+1)`
-/

namespace A127627.P12845971405644131649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127626 (n + 1)

end

end A127627.P12845971405644131649

noncomputable section

/-- A127627: Triangle T(n,k) = A054525(n,k)*A018804(k), read by rows 1<=k<=n.

Offset 1, canonical program `A127627.P12845971405644131649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127627 (n : ℕ) : ℤ :=
  A127627.P12845971405644131649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127788.P5184033610480325738

`∑{d}[n+1, A001617(#)*A007427((n+1)/#)]`
-/

namespace A127788.P5184033610480325738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001617 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127788.P5184033610480325738

noncomputable section

/-- A127788: Dimension of the space of newforms of weight 2 and level n.

Offset 1, canonical program `A127788.P5184033610480325738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127788 (n : ℕ) : ℤ :=
  A127788.P5184033610480325738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128180.P1090560833171990757

`A001057(A131307(n+1))`
-/

namespace A128180.P1090560833171990757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A131307 (n + 1)).toNat

end

end A128180.P1090560833171990757

noncomputable section

/-- A128180: Triangle read by rows: A002260 * A097807 as infinite lower triangular matrices.

Offset 1, canonical program `A128180.P1090560833171990757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180 (n : ℕ) : ℤ :=
  A128180.P1090560833171990757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128185.P11494409003865491844

`A113704(n+1)+A051731(n+1)`
-/

namespace A128185.P11494409003865491844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 (n + 1) + A051731 (n + 1)

end

end A128185.P11494409003865491844

noncomputable section

/-- A128185: A097806 * A051731.

Offset 1, canonical program `A128185.P11494409003865491844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128185 (n : ℕ) : ℤ :=
  A128185.P11494409003865491844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128258.P4012319948261339764

`A127448(n+2)-Δ[A054525(n+1)]`
-/

namespace A128258.P4012319948261339764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128258.P4012319948261339764

noncomputable section

/-- A128258: Moebius transform of A128229.

Offset 1, canonical program `A128258.P4012319948261339764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128258 (n : ℕ) : ℤ :=
  A128258.P4012319948261339764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128896.P15378370626665157583

`∩[A061304(n+1), A075875(n+1)]`
-/

namespace A128896.P15378370626665157583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128896.P15378370626665157583

noncomputable section

/-- A128896: Triangular numbers that are products of three distinct primes.

Offset 1, canonical program `A128896.P15378370626665157583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128896 (n : ℕ) : ℤ :=
  (A128896.P15378370626665157583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129523.P10195343047113366737

`∪[A048645(n+1), A175332(n+1)]`
-/

namespace A129523.P10195343047113366737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P10195343047113366737

noncomputable section

/-- A129523: Numbers of the form 2^j +- 2^i for 0 <= i < j, in ascending order.

Offset 1, canonical program `A129523.P10195343047113366737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129523 (n : ℕ) : ℤ :=
  (A129523.P10195343047113366737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130201.P3817983863840821354

`2*A130202(n+1)`
-/

namespace A130201.P3817983863840821354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130202 (n + 1)

end

end A130201.P3817983863840821354

noncomputable section

/-- A130201: Odious oblong (promic) numbers.

Offset 1, canonical program `A130201.P3817983863840821354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130201 (n : ℕ) : ℤ :=
  A130201.P3817983863840821354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130217.P16012042862340202128

`A003617(A000032(n))`
-/

namespace A130217.P16012042862340202128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000032 n).toNat

end

end A130217.P16012042862340202128

noncomputable section

/-- A130217: Smallest prime with number of digits equal to n-th Lucas number A000032(n).

Offset 0, canonical program `A130217.P16012042862340202128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130217 (n : ℕ) : ℤ :=
  A130217.P16012042862340202128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131963.P6830822417454376484

`A260942(3*n+1)`
-/

namespace A131963.P6830822417454376484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260942 (3 * n + 1)

end

end A131963.P6830822417454376484

noncomputable section

/-- A131963: Expansion of f(x, x^2) * f(x^4, x^12) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131963.P6830822417454376484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A131963 (n : ℕ) : ℤ :=
  A131963.P6830822417454376484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A131963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132352.P352406761875659028

`∑[A132351(n+1)]`
-/

namespace A132352.P352406761875659028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P352406761875659028

noncomputable section

/-- A132352: Partial sums of A132351.

Offset 1, canonical program `A132352.P352406761875659028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352 (n : ℕ) : ℤ :=
  A132352.P352406761875659028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133450.P13159197385161977339

`A056929(2*(n+1))`
-/

namespace A133450.P13159197385161977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (2 * (n + 1))

end

end A133450.P13159197385161977339

noncomputable section

/-- A133450: Difference between 4*n^2 and the average of the two prime numbers which bracket this number.

Offset 1, canonical program `A133450.P13159197385161977339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133450 (n : ℕ) : ℤ :=
  A133450.P13159197385161977339.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133670.P186027561368392954

`∑[A063776(A233583(n+1))/2]`
-/

namespace A133670.P186027561368392954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (A233583 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P186027561368392954

noncomputable section

/-- A133670: Partial sums of A000016.

Offset 0, canonical program `A133670.P186027561368392954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133670.P186027561368392954.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134453.P14282000105266514445

`lt[A134452(n), 0]`
-/

namespace A134453.P14282000105266514445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134453.P14282000105266514445

noncomputable section

/-- A134453: Numbers m such that the digital root in balanced ternary representation equals -1.

Offset 1, canonical program `A134453.P14282000105266514445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134453 (n : ℕ) : ℤ :=
  (A134453.P14282000105266514445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134454.P11482993315645850512

`lt[0, A134452(n)]`
-/

namespace A134454.P11482993315645850512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134454.P11482993315645850512

noncomputable section

/-- A134454: Numbers m such that the digital root in balanced ternary representation equals +1.

Offset 1, canonical program `A134454.P11482993315645850512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134454 (n : ℕ) : ℤ :=
  (A134454.P11482993315645850512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134673.P11906740047459928108

`A051731(n+1)+A127448(n+1)-A023531(n)`
-/

namespace A134673.P11906740047459928108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A127448 (n + 1) - A023531 n

end

end A134673.P11906740047459928108

noncomputable section

/-- A134673: A051731 + A127448 - I where I is the Identity matrix (A023531).

Offset 1, canonical program `A134673.P11906740047459928108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134673 (n : ℕ) : ℤ :=
  A134673.P11906740047459928108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135855.P16850139679087986239

`2*A110813(n)-A131085(n)`
-/

namespace A135855.P16850139679087986239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A131085 n

end

end A135855.P16850139679087986239

noncomputable section

/-- A135855: A007318 * a tridiagonal matrix with (1, 4, 1, 0, 0, 0, ...) in every column.

Offset 0, canonical program `A135855.P16850139679087986239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855 (n : ℕ) : ℤ :=
  A135855.P16850139679087986239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136160.P16715669744293891579

`A053117(n)*A128222(n+1)`
-/

namespace A136160.P16715669744293891579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A128222 (n + 1)

end

end A136160.P16715669744293891579

noncomputable section

/-- A136160: Triangle T(n,k) = k*A053120(n,k).

Offset 1, canonical program `A136160.P16715669744293891579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136160 (n : ℕ) : ℤ :=
  A136160.P16715669744293891579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136691.P18423899121827454363

`A065882(A136702(n))`
-/

namespace A136691.P18423899121827454363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (A136702 n).toNat

end

end A136691.P18423899121827454363

noncomputable section

/-- A136691: Final nonzero digit of n! in base 4.

Offset 0, canonical program `A136691.P18423899121827454363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3755 terms. -/
def A136691 (n : ℕ) : ℤ :=
  A136691.P18423899121827454363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3755 terms. -/
def A136691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138351.P8934172581703761651

`∑{#}[n, C(n, #)*A138350(#)]`
-/

namespace A138351.P8934172581703761651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A138350 k

end

end A138351.P8934172581703761651

noncomputable section

/-- A138351: Central moment sequence of tr(A^2) in USp(4).

Offset 0, canonical program `A138351.P8934172581703761651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138351 (n : ℕ) : ℤ :=
  A138351.P8934172581703761651.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138610.P14114159251167345094

`filter[A053850(n+1), A373979(#)]`
-/

namespace A138610.P14114159251167345094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P14114159251167345094

noncomputable section

/-- A138610: Nonsquarefree numbers congruent to 3 mod 4.

Offset 1, canonical program `A138610.P14114159251167345094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. -/
def A138610 (n : ℕ) : ℤ :=
  A138610.P14114159251167345094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. -/
def A138610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138746.P8217027100382283565

`-A138745(n+1)`
-/

namespace A138746.P8217027100382283565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138745 (n + 1)

end

end A138746.P8217027100382283565

noncomputable section

/-- A138746: Expansion of 1 - eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

Offset 1, canonical program `A138746.P8217027100382283565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138746 (n : ℕ) : ℤ :=
  A138746.P8217027100382283565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139038.P10853332724780471891

`A134816(A004197(n)+2)`
-/

namespace A139038.P10853332724780471891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A004197 n + 2).toNat

end

end A139038.P10853332724780471891

noncomputable section

/-- A139038: Triangle read by rows: T(n,m) = A000931(m+6) if m <= floor(n/2), A000931(n+6-m) otherwise, for 0 <= m <= n.

Offset 0, canonical program `A139038.P10853332724780471891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139038 (n : ℕ) : ℤ :=
  A139038.P10853332724780471891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139495.P6736765847276065234

`∩[A033205(n+1), A106881(n+1)]`
-/

namespace A139495.P6736765847276065234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P6736765847276065234

noncomputable section

/-- A139495: Primes of the form x^2 + 12x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139495.P6736765847276065234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A139495 (n : ℕ) : ℤ :=
  (A139495.P6736765847276065234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A139495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139503.P5463424210265189612

`∩[A033212(n+1), A106881(n+1)]`
-/

namespace A139503.P5463424210265189612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P5463424210265189612

noncomputable section

/-- A139503: Primes of the form x^2 + 23x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139503.P5463424210265189612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4958 terms. -/
def A139503 (n : ℕ) : ℤ :=
  (A139503.P5463424210265189612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4958 terms. -/
def A139503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139912.P2269059861818370027

`∩[A038917(n+1), A102273(n+1)]`
-/

namespace A139912.P2269059861818370027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P2269059861818370027

noncomputable section

/-- A139912: Primes of the form 14x^2+14xy+23y^2.

Offset 1, canonical program `A139912.P2269059861818370027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A139912 (n : ℕ) : ℤ :=
  (A139912.P2269059861818370027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A139912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139991.P14427523625073511135

`∩[A107148(n+1), A139850(n+1)]`
-/

namespace A139991.P14427523625073511135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P14427523625073511135

noncomputable section

/-- A139991: Primes of the form 15x^2+56y^2.

Offset 1, canonical program `A139991.P14427523625073511135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139991 (n : ℕ) : ℤ :=
  (A139991.P14427523625073511135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140015.P16441771883213652872

`∩[A038917(n+1), A139845(n+1)]`
-/

namespace A140015.P16441771883213652872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P16441771883213652872

noncomputable section

/-- A140015: Primes of the form 3x^2+455y^2.

Offset 1, canonical program `A140015.P16441771883213652872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A140015 (n : ℕ) : ℤ :=
  (A140015.P16441771883213652872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A140015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140256.P6339651880868965640

`∑{d}[A126988(n+1), A140254(#)]`
-/

namespace A140256.P6339651880868965640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A140254 d

end

end A140256.P6339651880868965640

noncomputable section

/-- A140256: Triangle read by columns: Column k is A014963 aerated with groups of (k-1) zeros.

Offset 1, canonical program `A140256.P6339651880868965640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140256 (n : ℕ) : ℤ :=
  A140256.P6339651880868965640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140584.P2555590282461382423

`∑{d}[n+1, #*A140254((n+1)/#)]`
-/

namespace A140584.P2555590282461382423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140584.P2555590282461382423

noncomputable section

/-- A140584: Row sums of A140583.

Offset 1, canonical program `A140584.P2555590282461382423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140584 (n : ℕ) : ℤ :=
  A140584.P2555590282461382423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140630.P13312013450007682947

`∩[A139987(n+1), A140028(n+1)]`
-/

namespace A140630.P13312013450007682947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P13312013450007682947

noncomputable section

/-- A140630: Primes of the form 88x^2+32xy+127y^2.

Offset 1, canonical program `A140630.P13312013450007682947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A140630 (n : ℕ) : ℤ :=
  (A140630.P13312013450007682947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A140630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140705.P9027791330258946632

`A061202(A010766(n+1))`
-/

namespace A140705.P9027791330258946632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061202 (A010766 (n + 1)).toNat

end

end A140705.P9027791330258946632

noncomputable section

/-- A140705: A000012 * A051731^4.

Offset 1, canonical program `A140705.P9027791330258946632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140705 (n : ℕ) : ℤ :=
  A140705.P9027791330258946632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141026.P13833280663866125837

`∩[A015915(n+1), A332674(n+1)]`
-/

namespace A141026.P13833280663866125837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P13833280663866125837

noncomputable section

/-- A141026: Numbers k such that (k,k+8) forms a pair of consecutive primes ending respectively in 1 and 9.

Offset 1, canonical program `A141026.P13833280663866125837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141026 (n : ℕ) : ℤ :=
  (A141026.P13833280663866125837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141100.P10527061438519986607

`A141099(n+1)-A005171(2*n+1)`
-/

namespace A141100.P10527061438519986607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141099 (n + 1) - A005171 (2 * n + 1)

end

end A141100.P10527061438519986607

noncomputable section

/-- A141100: Number of unordered pairs of odd composite numbers that sum to 2n.

Offset 1, canonical program `A141100.P10527061438519986607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141100 (n : ℕ) : ℤ :=
  A141100.P10527061438519986607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142085.P16460279008080382848

`∪[A140841(n+1), A141570(n+1)]`
-/

namespace A142085.P16460279008080382848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P16460279008080382848

noncomputable section

/-- A142085: Primes congruent to 13 mod 35.

Offset 1, canonical program `A142085.P16460279008080382848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142085 (n : ℕ) : ℤ :=
  (A142085.P16460279008080382848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142339.P3986988199601511842

`p?[A087461(n+2)-A000040(n+2)]`
-/

namespace A142339.P3986988199601511842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P3986988199601511842

noncomputable section

/-- A142339: Primes of the form (p(2*n)-p(n))/2, where p(n)=n-th prime.

Offset 1, canonical program `A142339.P3986988199601511842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339 (n : ℕ) : ℤ :=
  A142339.P3986988199601511842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143064.P13024267726719583527

`-A290739(n)`
-/

namespace A143064.P13024267726719583527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A290739 n

end

end A143064.P13024267726719583527

noncomputable section

/-- A143064: Expansion of a Ramanujan false theta series variation of A089801 in powers of x.

Offset 0, canonical program `A143064.P13024267726719583527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143064 (n : ℕ) : ℤ :=
  A143064.P13024267726719583527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143086.P9163126404409703882

`A126646(A004197(n))`
-/

namespace A143086.P9163126404409703882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A004197 n).toNat

end

end A143086.P9163126404409703882

noncomputable section

/-- A143086: Triangle read by rows: T(n,k) = 2^(k + 1) - 1 if k < = floor(n/2), otherwise 2^(n - k + 1) - 1, for 0 <= k <= n.

Offset 0, canonical program `A143086.P9163126404409703882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143086 (n : ℕ) : ℤ :=
  A143086.P9163126404409703882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143110.P1100247901521213873

`A143425(n+1)%3`
-/

namespace A143110.P1100247901521213873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143425 (n + 1)) 3

end

end A143110.P1100247901521213873

noncomputable section

/-- A143110: Triangle read by rows, A051731 * A000034 * 0^(n-k), 1<=k<=n.

Offset 1, canonical program `A143110.P1100247901521213873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110 (n : ℕ) : ℤ :=
  A143110.P1100247901521213873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143187.P15464511713782995700

`A028310(lcm(2, A004197(n)))`
-/

namespace A143187.P15464511713782995700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm 2 (A004197 n))

end

end A143187.P15464511713782995700

noncomputable section

/-- A143187: Triangle read by rows: T(n, k) = f(k) for 1 <= k <= floor(n/2), T(n, k) = f(n-k) for floor(n/2) < k <= n-1, with T(n, 0) = 1, T(n, n) = 1, and f(k) = (1/2)*(3 - (-1)^k)*k.

Offset 0, canonical program `A143187.P15464511713782995700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143187 (n : ℕ) : ℤ :=
  A143187.P15464511713782995700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143199.P5401882570097877984

`A143198(A057944(n)+A004197(n))`
-/

namespace A143199.P5401882570097877984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143198 (A057944 n + A004197 n).toNat

end

end A143199.P5401882570097877984

noncomputable section

/-- A143199: Triangle read by rows: T(n, k) = (n+1)*A000096(k-1) + n if k <= floor(n/2), otherwise T(n, k) = (n+1)*A000096(n-k-1) + n.

Offset 0, canonical program `A143199.P5401882570097877984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143199 (n : ℕ) : ℤ :=
  A143199.P5401882570097877984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143275.P7811182970154624071

`∑{d}[n+1, #*A007432((n+1)/#)]`
-/

namespace A143275.P7811182970154624071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P7811182970154624071

noncomputable section

/-- A143275: A054525 * A029935.

Offset 1, canonical program `A143275.P7811182970154624071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143275 (n : ℕ) : ℤ :=
  A143275.P7811182970154624071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143276.P14600609899696088407

`∑{d}[A126988(n+1), A007432(#)]`
-/

namespace A143276.P14600609899696088407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007432 d

end

end A143276.P14600609899696088407

noncomputable section

/-- A143276: Triangle read by rows: A054525 * A054523 as infinite lower triangular matrices.

Offset 1, canonical program `A143276.P14600609899696088407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143276 (n : ℕ) : ℤ :=
  A143276.P14600609899696088407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143517.P992737143855787768

`A122414(n+1)*A127448(n+1)`
-/

namespace A143517.P992737143855787768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122414 (n + 1) * A127448 (n + 1)

end

end A143517.P992737143855787768

noncomputable section

/-- A143517: Triangle read by rows, A054525 * (A061397 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143517.P992737143855787768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143517 (n : ℕ) : ℤ :=
  A143517.P992737143855787768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143593.P13769069135629193761

`A022998(A143956(n+1))`
-/

namespace A143593.P13769069135629193761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A143956 (n + 1)).toNat

end

end A143593.P13769069135629193761

noncomputable section

/-- A143593: Triangle read by rows, square of A238303 (an infinite lower triangular matrix with 1's in the first column and the rest 2's).

Offset 1, canonical program `A143593.P13769069135629193761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593 (n : ℕ) : ℤ :=
  A143593.P13769069135629193761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143728.P7047325683167744552

`A128227(n)*A128431(n+1)`
-/

namespace A143728.P7047325683167744552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A128431 (n + 1)

end

end A143728.P7047325683167744552

noncomputable section

/-- A143728: Triangle read by rows: termwise product of mu(n) and n-th row of A127368.

Offset 1, canonical program `A143728.P7047325683167744552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143728 (n : ℕ) : ℤ :=
  A143728.P7047325683167744552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144464.P14632589415150791803

`2^A004197(n)`
-/

namespace A144464.P14632589415150791803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004197 n : ℤ)

end

end A144464.P14632589415150791803

noncomputable section

/-- A144464: Triangle T(n,m) read by rows: T(n,m) = 2^min(m,n-m).

Offset 0, canonical program `A144464.P14632589415150791803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144464.P14632589415150791803.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145342.P11180459690303212781

`(A145341(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145342.P11180459690303212781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 1) + 1 : ℚ) / 2

end

end A145342.P11180459690303212781

noncomputable section

/-- A145342: a(n) = (A145341(n) + 1)/2.

Offset 1, canonical program `A145342.P11180459690303212781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145342.P11180459690303212781.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145989.P5652111938556337468

`A091318(lt[1, A091318(n+1)]+1)`
-/

namespace A145989.P5652111938556337468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A145989.P5652111938556337468

noncomputable section

/-- A145989: Run lengths of consecutive primes == 1 (mod 4) where the run length is at least 2.

Offset 1, canonical program `A145989.P5652111938556337468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145989 (n : ℕ) : ℤ :=
  A145989.P5652111938556337468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145992.P5369397507907685557

`A091267(lt[1, A091267(n+1)]+1)`
-/

namespace A145992.P5369397507907685557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A145992.P5369397507907685557

noncomputable section

/-- A145992: Run lengths of 2 or more consecutive primes of the form 4k+3.

Offset 1, canonical program `A145992.P5369397507907685557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145992 (n : ℕ) : ℤ :=
  A145992.P5369397507907685557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147813.P1679973090657813842

`A000040(A333230(n+1))`
-/

namespace A147813.P1679973090657813842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333230 (n + 1)).toNat

end

end A147813.P1679973090657813842

noncomputable section

/-- A147813: Primes prime(n) such that (-prime(n) + 2*prime(n+1) - prime(n+2))/((1 - prime(n) + prime(n+1))^(3/2)) < 0.

Offset 1, canonical program `A147813.P1679973090657813842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A147813 (n : ℕ) : ℤ :=
  A147813.P1679973090657813842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A147813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152714.P9266182527036570793

`3^A004197(n)`
-/

namespace A152714.P9266182527036570793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004197 n : ℤ)

end

end A152714.P9266182527036570793

noncomputable section

/-- A152714: Triangle read by rows: T(n,k) = 3^min(k, n-k).

Offset 0, canonical program `A152714.P9266182527036570793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152714.P9266182527036570793.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152716.P634610165933584230

`4^A004197(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152716.P634610165933584230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004197 n : ℤ)

end

end A152716.P634610165933584230

noncomputable section

/-- A152716: Triangle T(n,k) read by rows: T(n,k) = 4^min(k, n-k) = 4^A004197(n,k).

Offset 0, canonical program `A152716.P634610165933584230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152716.P634610165933584230.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152717.P11772506304295409247

`5^A004197(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152717.P11772506304295409247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A004197 n : ℤ)

end

end A152717.P11772506304295409247

noncomputable section

/-- A152717: Triangle T(n,k) read by rows: T(n,k) = 5^min(k, n-k) = 5^A004197(n,k).

Offset 0, canonical program `A152717.P11772506304295409247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152717.P11772506304295409247.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153047.P13374081325406904535

`A153045(n+1)+2`
-/

namespace A153047.P13374081325406904535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) + 2

end

end A153047.P13374081325406904535

noncomputable section

/-- A153047: Numbers n such that 2*n-15 is not a prime.

Offset 1, canonical program `A153047.P13374081325406904535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153047 (n : ℕ) : ℤ :=
  A153047.P13374081325406904535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153210.P15842624019466504602

`p?[2*A049098(n+1)+1]`
-/

namespace A153210.P15842624019466504602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049098 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P15842624019466504602

noncomputable section

/-- A153210: Primes of the form 2*p+1 where p is prime and p+1 is not squarefree.

Offset 1, canonical program `A153210.P15842624019466504602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A153210 (n : ℕ) : ℤ :=
  A153210.P15842624019466504602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A153210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154783.P331574167308494148

`A154784(n+1)+n+1`
-/

namespace A154783.P331574167308494148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154784 (n + 1) + (n + 1 : ℤ)

end

end A154783.P331574167308494148

noncomputable section

/-- A154783: Row sums of triangle in A154720.

Offset 1, canonical program `A154783.P331574167308494148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A154784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154783 (n : ℕ) : ℤ :=
  A154783.P331574167308494148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A154784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154783.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003642.P17689838161850936728

`2^(A001221(A191483(n+1))-1)`
-/

namespace A003642.P17689838161850936728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (A191483 (n + 1)).toNat - 1 : ℤ)

end

end A003642.P17689838161850936728

noncomputable section

/-- A003642: Number of genera of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A003642.P17689838161850936728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003642 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003642.P17689838161850936728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003657.P3243846555462678354

`∪[A039957(n+1), A191483(n+1)]`
-/

namespace A003657.P3243846555462678354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003657.P3243846555462678354

noncomputable section

/-- A003657: Discriminants of imaginary quadratic fields, negated.

Offset 1, canonical program `A003657.P3243846555462678354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003657 (n : ℕ) : ℤ :=
  (A003657.P3243846555462678354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005237.P9029700576997496255

`filter[A140128(n+1), A361022(#)]`
-/

namespace A005237.P9029700576997496255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A005237.P9029700576997496255

noncomputable section

/-- A005237: Numbers k such that k and k+1 have the same number of divisors.

Offset 1, canonical program `A005237.P9029700576997496255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237 (n : ℕ) : ℤ :=
  A005237.P9029700576997496255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007971.P3280594718535611421

`A168055(n)%(3*(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A007971.P3280594718535611421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (A168055 n) (3 * (a (n - 1) + a (n - 2)))

end

end A007971.P3280594718535611421

noncomputable section

/-- A007971: INVERTi transform of central trinomial coefficients (A002426).

Offset 0, canonical program `A007971.P3280594718535611421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971 (n : ℕ) : ℤ :=
  A007971.P3280594718535611421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008312.P3158500406307596981

`A053117(record[1-abs(A049310(n))+n])`
-/

namespace A008312.P3158500406307596981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A049310 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008312.P3158500406307596981

noncomputable section

/-- A008312: Triangle of coefficients of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008312.P3158500406307596981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A008312 (n : ℕ) : ℤ :=
  A008312.P3158500406307596981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A008312.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013633.P11598438572516579541

`A096500(n+2)+A001223(A000720(n+2))`
-/

namespace A013633.P11598438572516579541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 2) + A001223 (A000720 (n + 2)).toNat

end

end A013633.P11598438572516579541

noncomputable section

/-- A013633: a(n) = nextprime(n) - prevprime(n).

Offset 3, canonical program `A013633.P11598438572516579541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013633 (n : ℕ) : ℤ :=
  A013633.P11598438572516579541.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013633.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020653.P13896194492571762582

`A038567(n+1)-A020652(n+1)`
-/

namespace A020653.P13896194492571762582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A020652 (n + 1)

end

end A020653.P13896194492571762582

noncomputable section

/-- A020653: Denominators in a certain bijection from positive integers to positive rationals.

Offset 1, canonical program `A020653.P13896194492571762582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653 (n : ℕ) : ℤ :=
  A020653.P13896194492571762582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023618.P16496442946416001020

`A023649(n+1)+A023649(n+1)-A023609(n)`
-/

namespace A023618.P16496442946416001020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023649 (n + 1) + (A023649 (n + 1) - A023609 n)

end

end A023618.P16496442946416001020

noncomputable section

/-- A023618: Convolution of Lucas numbers and composite numbers.

Offset 1, canonical program `A023618.P16496442946416001020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023618 (n : ℕ) : ℤ :=
  A023618.P16496442946416001020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026236.P6357686734265225565

`A000720(p?[A067747(A026234(n+1))])`
-/

namespace A026236.P6357686734265225565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A026234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026236.P6357686734265225565

noncomputable section

/-- A026236: a(n) = (s(n) + 1)/2, where s(n) is the n-th odd number in A026234.

Offset 1, canonical program `A026236.P6357686734265225565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A026236 (n : ℕ) : ℤ :=
  A026236.P6357686734265225565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A026236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035253.P11915159649385761388

`A035254(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A035253.P11915159649385761388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A035254 (n - 1) + a (n - 1)

end

end A035253.P11915159649385761388

noncomputable section

/-- A035253: Second differences are 2,2,1,2,1,1,2,1,1,1,2,1,1,1,1,2,1,1,1,1,1,2,.. (A035214).

Offset 0, canonical program `A035253.P11915159649385761388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035253 (n : ℕ) : ℤ :=
  A035253.P11915159649385761388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035253.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039734.P6650041505053879589

`A000040(A039733(n+2))`
-/

namespace A039734.P6650041505053879589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A039733 (n + 2)).toNat

end

end A039734.P6650041505053879589

noncomputable section

/-- A039734: a(n)=the prime q<prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039734.P6650041505053879589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734 (n : ℕ) : ℤ :=
  A039734.P6650041505053879589.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050800.P2900740559299843920

`1+A050796(n+1)²`
-/

namespace A050800.P2900740559299843920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A050796 (n + 1) ^ 2

end

end A050800.P2900740559299843920

noncomputable section

/-- A050800: Values of n^2 + 1 resulting from A050796.

Offset 1, canonical program `A050800.P2900740559299843920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050800 (n : ℕ) : ℤ :=
  A050800.P2900740559299843920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050800.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057922.P11387328956576665709

`eq[1, A361022(n+1)]+1`
-/

namespace A057922.P11387328956576665709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057922.P11387328956576665709

noncomputable section

/-- A057922: Numbers k such that d(k) divides d(k+1), where d(k) is number of positive divisors of k.

Offset 1, canonical program `A057922.P11387328956576665709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922 (n : ℕ) : ℤ :=
  (A057922.P11387328956576665709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059343.P8688508278763230459

`A060821(eq[A049310(n+1), A053117(n+1)])`
-/

namespace A059343.P8688508278763230459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A059343.P8688508278763230459

noncomputable section

/-- A059343: Triangle of nonzero coefficients of Hermite polynomials H_n(x) in increasing powers of x.

Offset 0, canonical program `A059343.P8688508278763230459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A059343 (n : ℕ) : ℤ :=
  A059343.P8688508278763230459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A059343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066074.P14598573141439101236

`p?[A163871(n+1)]`
-/

namespace A066074.P14598573141439101236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14598573141439101236

noncomputable section

/-- A066074: Primes arising in A066073.

Offset 1, canonical program `A066074.P14598573141439101236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074 (n : ℕ) : ℤ :=
  A066074.P14598573141439101236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066253.P2942854054370966981

`A066249(A066249(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066253.P2942854054370966981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A066249 (n + 1)).toNat

end

end A066253.P2942854054370966981

noncomputable section

/-- A066253: a(n) = A066249(A066249(n)).

Offset 1, canonical program `A066253.P2942854054370966981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066253 (n : ℕ) : ℤ :=
  A066253.P2942854054370966981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066255.P15448090258535731696

`A066251(A066251(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066255.P15448090258535731696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A066251 (n + 1)).toNat

end

end A066255.P15448090258535731696

noncomputable section

/-- A066255: a(n) = A066251(A066251(n)).

Offset 1, canonical program `A066255.P15448090258535731696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066255 (n : ℕ) : ℤ :=
  A066255.P15448090258535731696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067236.P11489592581938594514

`eq[1, A306682(A000203(n+1))]+1`
-/

namespace A067236.P11489592581938594514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067236.P11489592581938594514

noncomputable section

/-- A067236: Numbers n such that gcd(sigma(n), sigma(sigma(n)))=1.

Offset 1, canonical program `A067236.P11489592581938594514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A067236 (n : ℕ) : ℤ :=
  (A067236.P11489592581938594514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A067236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072910.P14948569435881856669

`A000203(A023883(n+1))/A000005(A023883(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072910.P14948569435881856669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A023883 (n + 1)).toNat : ℚ) / (A000005 (A023883 (n + 1)).toNat : ℚ)

end

end A072910.P14948569435881856669

noncomputable section

/-- A072910: a(n) = sigma(A023883(n)) / tau(A023883(n)).

Offset 1, canonical program `A072910.P14948569435881856669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072910.P14948569435881856669.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072910.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074315.P17848923822781647351

`record[A000217(n+8)%A152989(n+8)]`
-/

namespace A074315.P17848923822781647351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 8)) (A152989 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074315.P17848923822781647351

noncomputable section

/-- A074315: Abundant triangular numbers.

Offset 1, canonical program `A074315.P17848923822781647351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315 (n : ℕ) : ℤ :=
  A074315.P17848923822781647351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074460.P5778782226648806911

`∩[A067889(n+1), A115103(n+1)]`
-/

namespace A074460.P5778782226648806911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P5778782226648806911

noncomputable section

/-- A074460: Primes which are sandwiched between two numbers having the same unordered canonical form.

Offset 1, canonical program `A074460.P5778782226648806911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1647 terms. -/
def A074460 (n : ℕ) : ℤ :=
  (A074460.P5778782226648806911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1647 terms. -/
def A074460.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076413.P1846709335750729345

`A076078(n+1)/2-2^(A000005(n+1)-2)`
-/

namespace A076413.P1846709335750729345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / 2 - (2 : ℚ) ^ (A000005 (n + 1) - 2 : ℤ)

end

end A076413.P1846709335750729345

noncomputable section

/-- A076413: Number of ways n is expressible as the least common multiple of a nonempty set of positive integers not containing either 1 or n.

Offset 1, canonical program `A076413.P1846709335750729345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076413 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076413.P1846709335750729345.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076731.P8521825755543901738

`A060475(comp[∑[n]])`
-/

namespace A076731.P8521825755543901738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076731.P8521825755543901738

noncomputable section

/-- A076731: Table T(n,k) giving number of ways of obtaining exactly 0 correct answers on an (n,k)-matching problem (1 <= k <= n).

Offset 1, canonical program `A076731.P8521825755543901738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A076731 (n : ℕ) : ℤ :=
  A076731.P8521825755543901738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A076731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076732.P16550410793954375042

`A002260(n+1)*A060475(n)`
-/

namespace A076732.P16550410793954375042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A060475 n

end

end A076732.P16550410793954375042

noncomputable section

/-- A076732: Table T(n,k) giving number of ways of obtaining exactly one correct answer on an (n,k)-matching problem (1 <= k <= n).

Offset 1, canonical program `A076732.P16550410793954375042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A076732 (n : ℕ) : ℤ :=
  A076732.P16550410793954375042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A076732.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077766.P5589840088024766026

`Δ[A348196(n+1)]`
-/

namespace A077766.P5589840088024766026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P5589840088024766026

noncomputable section

/-- A077766: Number of primes of form 4k+1 between n^2 and (n+1)^2.

Offset 1, canonical program `A077766.P5589840088024766026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077766 (n : ℕ) : ℤ :=
  A077766.P5589840088024766026.a (n - 1)

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

/-! ## A083356.P17116603988832538437

`A060872(n)+a(n-1)` with `a(0)=0`
-/

namespace A083356.P17116603988832538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A060872 n + a (n - 1)

end

end A083356.P17116603988832538437

noncomputable section

/-- A083356: Total area of all incongruent integer-sided rectangles of area <= n.

Offset 0, canonical program `A083356.P17116603988832538437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356 (n : ℕ) : ℤ :=
  A083356.P17116603988832538437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088758.P8129966983555977646

`eq[2, A160651(A016813(n))]`
-/

namespace A088758.P8129966983555977646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P8129966983555977646

noncomputable section

/-- A088758: Numbers k such that (4*k + 1)^2 + (4*k + 2)^2 is prime.

Offset 1, canonical program `A088758.P8129966983555977646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758 (n : ℕ) : ℤ :=
  (A088758.P8129966983555977646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090735.P3181232905764454533

`∑[char[A020893(n+2)-1]]`
-/

namespace A090735.P3181232905764454533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090735.P3181232905764454533

noncomputable section

/-- A090735: Number of positive squarefree numbers <= n that can be expressed as a sum of 2 squares > 0.

Offset 1, canonical program `A090735.P3181232905764454533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090735 (n : ℕ) : ℤ :=
  (A090735.P3181232905764454533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090735.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095738.P13403971810010986481

`eq[1, A355816(n+1)]+1`
-/

namespace A095738.P13403971810010986481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095738.P13403971810010986481

noncomputable section

/-- A095738: Numbers that are coprime to sigma but are not prime powers.

Offset 1, canonical program `A095738.P13403971810010986481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095738 (n : ℕ) : ℤ :=
  (A095738.P13403971810010986481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096079.P11427664201264587869

`∪[A050795(n+1), A050796(n+2)]`
-/

namespace A096079.P11427664201264587869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096079.P11427664201264587869

noncomputable section

/-- A096079: Near hypotenuse numbers, i.e., n such that n^2 -+ 1 = a^2 + b^2, with a, b > 1.

Offset 1, canonical program `A096079.P11427664201264587869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096079 (n : ℕ) : ℤ :=
  (A096079.P11427664201264587869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096079.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102187.P12263003264488117383

`A000203(A003601(n+1))/A000005(A003601(n+1))`
-/

namespace A102187.P12263003264488117383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003601 (n + 1)).toNat : ℚ) / (A000005 (A003601 (n + 1)).toNat : ℚ)

end

end A102187.P12263003264488117383

noncomputable section

/-- A102187: Arithmetic means of divisors of arithmetic numbers (arithmetic numbers, A003601, are those for which the average of the divisors is an integer).

Offset 1, canonical program `A102187.P12263003264488117383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102187.P12263003264488117383.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102187.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A110085.P1056097740182562448

`lt[0, A353276(n+1)]+1`
-/

namespace A110085.P1056097740182562448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110085.P1056097740182562448

noncomputable section

/-- A110085: Numbers k such that sigma(k) - phi(k) < tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110085.P1056097740182562448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A110085 (n : ℕ) : ℤ :=
  (A110085.P1056097740182562448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A110085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110086.P3945987733214712058

`lt[-1, A353276(n+1)]+1`
-/

namespace A110086.P3945987733214712058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A110086.P3945987733214712058

noncomputable section

/-- A110086: Numbers k such that sigma(k) - phi(k) <= tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110086.P3945987733214712058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A110086 (n : ℕ) : ℤ :=
  (A110086.P3945987733214712058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A110086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110087.P11443064098674198962

`lt[A353276(n+2), 0]+2`
-/

namespace A110087.P11443064098674198962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A110087.P11443064098674198962

noncomputable section

/-- A110087: Numbers k such that sigma(k) - phi(k) > tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110087.P11443064098674198962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. -/
def A110087 (n : ℕ) : ℤ :=
  (A110087.P11443064098674198962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. -/
def A110087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112352.P14257770990694265222

`A000217(lt[3, A160651(n)])`
-/

namespace A112352.P14257770990694265222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P14257770990694265222

noncomputable section

/-- A112352: Triangular numbers that are the sum of two distinct positive triangular numbers.

Offset 1, canonical program `A112352.P14257770990694265222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352 (n : ℕ) : ℤ :=
  A112352.P14257770990694265222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112400.P2366853602604330834

`∑{e}[n+1, A219009(#)]`
-/

namespace A112400.P2366853602604330834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A219009 (Nat.factorization (f1 n) p)

end

end A112400.P2366853602604330834

noncomputable section

/-- A112400: a(n) = Sum_{p|n, p prime} mu(b(p,n)), where mu(k) = A008683(k) (the Moebius function) and p^b(p,n) is the highest power of the prime p dividing n.

Offset 1, canonical program `A112400.P2366853602604330834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112400 (n : ℕ) : ℤ :=
  A112400.P2366853602604330834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112479.P11671366610514428700

`A000079(∑[A010051(n+1)])-A087207(n+1)`
-/

namespace A112479.P11671366610514428700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A087207 (n + 1)

end

end A112479.P11671366610514428700

noncomputable section

/-- A112479: a(n) = 1 + sum{p=primes<n, p does not divide n} a(p).

Offset 1, canonical program `A112479.P11671366610514428700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479 (n : ℕ) : ℤ :=
  A112479.P11671366610514428700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112484.P6804898479430279805

`p?[A020652(n+1)]`
-/

namespace A112484.P6804898479430279805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P6804898479430279805

noncomputable section

/-- A112484: Array where n-th row contains the primes < n and coprime to n.

Offset 3, canonical program `A112484.P6804898479430279805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112484 (n : ℕ) : ℤ :=
  A112484.P6804898479430279805.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112484.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117002.P6800759195163310479

`A000203(n+1)+3*A079667(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117002.P6800759195163310479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 3 * A079667 (n + 1)

end

end A117002.P6800759195163310479

noncomputable section

/-- A117002: a(n) = sigma(n) + 3*A079667(n).

Offset 1, canonical program `A117002.P6800759195163310479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117002 (n : ℕ) : ℤ :=
  A117002.P6800759195163310479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117003.P17752190121858811071

`A000203(n+1)+A079667(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117003.P17752190121858811071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A079667 (n + 1)

end

end A117003.P17752190121858811071

noncomputable section

/-- A117003: a(n) = sigma(n) + A079667(n).

Offset 1, canonical program `A117003.P17752190121858811071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117003 (n : ℕ) : ℤ :=
  A117003.P17752190121858811071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117004.P4665019715661931704

`A000203(n+1)-A079667(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117004.P4665019715661931704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A079667 (n + 1)

end

end A117004.P4665019715661931704

noncomputable section

/-- A117004: a(n) = sigma(n) - A079667(n).

Offset 1, canonical program `A117004.P4665019715661931704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117004 (n : ℕ) : ℤ :=
  A117004.P4665019715661931704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117411.P2575899155432081916

`A117435(A185180(n+1)-1)`
-/

namespace A117411.P2575899155432081916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117435 (A185180 (n + 1) - 1).toNat

end

end A117411.P2575899155432081916

noncomputable section

/-- A117411: Skew triangle associated to the Euler numbers.

Offset 0, canonical program `A117411.P2575899155432081916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117411 (n : ℕ) : ℤ :=
  A117411.P2575899155432081916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117411.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119847.P2369807592707394206

`∪[A119899(n+1), A120944(n+1)]`
-/

namespace A119847.P2369807592707394206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119847.P2369807592707394206

noncomputable section

/-- A119847: Positions where A119842 is zero.

Offset 1, canonical program `A119847.P2369807592707394206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. -/
def A119847 (n : ℕ) : ℤ :=
  (A119847.P2369807592707394206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. -/
def A119847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119848.P16621179210956495199

`∩[A344609(n+1), A363597(n+1)]`
-/

namespace A119848.P16621179210956495199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119848.P16621179210956495199

noncomputable section

/-- A119848: Positions where A119842 is not zero.

Offset 1, canonical program `A119848.P16621179210956495199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3323 terms. -/
def A119848 (n : ℕ) : ℤ :=
  (A119848.P16621179210956495199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3323 terms. -/
def A119848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120960.P7319328844607267652

`filter[A008846(n+1), A069513(#)]`
-/

namespace A120960.P7319328844607267652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A120960.P7319328844607267652

noncomputable section

/-- A120960: Pythagorean prime powers.

Offset 1, canonical program `A120960.P7319328844607267652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960 (n : ℕ) : ℤ :=
  A120960.P7319328844607267652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120992.P11139390425260994503

`A053806(n+1)-A072284(n+1)`
-/

namespace A120992.P11139390425260994503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A072284 (n + 1)

end

end A120992.P11139390425260994503

noncomputable section

/-- A120992: Number of integers in n-th run of squarefree positive integers.

Offset 1, canonical program `A120992.P11139390425260994503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992 (n : ℕ) : ℤ :=
  A120992.P11139390425260994503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121326.P7190985811209929169

`A054964(A009005(n+1))`
-/

namespace A121326.P7190985811209929169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (A009005 (n + 1)).toNat

end

end A121326.P7190985811209929169

noncomputable section

/-- A121326: Primes of the form 4*k^2 + 1.

Offset 1, canonical program `A121326.P7190985811209929169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A121326 (n : ℕ) : ℤ :=
  A121326.P7190985811209929169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A121326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124057.P16684972214532472139

`∩[A113789(n+2)-1, A113789(n+2)]`
-/

namespace A124057.P16684972214532472139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P16684972214532472139

noncomputable section

/-- A124057: Numbers n such that n, n+1, n+2 and n+3 are products of exactly 3 primes.

Offset 1, canonical program `A124057.P16684972214532472139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1741 terms. -/
def A124057 (n : ℕ) : ℤ :=
  (A124057.P16684972214532472139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1741 terms. -/
def A124057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124333.P12394758588652907739

`A020652(A002088(n)+n%A000010(n+1)+1)`
-/

namespace A124333.P12394758588652907739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A002088 n + Int.tmod (n : ℤ) (A000010 (n + 1)) + 1).toNat

end

end A124333.P12394758588652907739

noncomputable section

/-- A124333: a(n) = ((n mod phi(n)) +1)th positive integer which is coprime to n, where phi(n) is number of positive integers which are <= n and are coprime to n.

Offset 1, canonical program `A124333.P12394758588652907739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A124333 (n : ℕ) : ℤ :=
  A124333.P12394758588652907739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A124333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125018.P5997483759388454450

`∩[2*n+1, A143575(n+1)]`
-/

namespace A125018.P5997483759388454450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P5997483759388454450

noncomputable section

/-- A125018: Numbers == 1 (mod 4) with a unique partition as a sum of 2 squares x^2 + y^2.

Offset 1, canonical program `A125018.P5997483759388454450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018 (n : ℕ) : ℤ :=
  (A125018.P5997483759388454450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128189.P4693228251088959264

`A134540(char[1]+n)-a(n-1)` with `a(0)=1`
-/

namespace A128189.P4693228251088959264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134540 ((if ∃ j, f1 j = n then 1 else 0) + n) - a (n - 1)

end

end A128189.P4693228251088959264

noncomputable section

/-- A128189: Moebius transform of A128174.

Offset 1, canonical program `A128189.P4693228251088959264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128189 (n : ℕ) : ℤ :=
  A128189.P4693228251088959264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129131.P6943603048357520983

`A066249(n+1)+1`
-/

namespace A129131.P6943603048357520983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (n + 1) + 1

end

end A129131.P6943603048357520983

noncomputable section

/-- A129131: Alternately write composite and prime numbers.

Offset 1, canonical program `A129131.P6943603048357520983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129131 (n : ℕ) : ℤ :=
  A129131.P6943603048357520983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131053.P3177050464718823727

`A128176(A128621(n+1)+1+n)`
-/

namespace A131053.P3177050464718823727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (A128621 (n + 1) + 1 + (n : ℤ)).toNat

end

end A131053.P3177050464718823727

noncomputable section

/-- A131053: A000012 * A131047.

Offset 1, canonical program `A131053.P3177050464718823727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A131053 (n : ℕ) : ℤ :=
  A131053.P3177050464718823727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A131053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131695.P15556977045309994606

`A098726(n+1)-2`
-/

namespace A131695.P15556977045309994606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098726 (n + 1) - 2

end

end A131695.P15556977045309994606

noncomputable section

/-- A131695: a(n) = 0 iff 2*prime(n+1) = prime(n) + prime(n+2), otherwise a(n) = 1.

Offset 1, canonical program `A131695.P15556977045309994606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131695 (n : ℕ) : ℤ :=
  A131695.P15556977045309994606.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131789.P1774439132879897327

`Δ[A083794(n+1)]`
-/

namespace A131789.P1774439132879897327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131789.P1774439132879897327

noncomputable section

/-- A131789: The length of the n-th run of identical consecutive values in the sequence A000005, where A000005(k) is the number of divisors of k.

Offset 1, canonical program `A131789.P1774439132879897327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131789 (n : ℕ) : ℤ :=
  A131789.P1774439132879897327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132340.P16481803046900762293

`A284120(A258746(n+2))-1`
-/

namespace A132340.P16481803046900762293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A258746 (n + 2)).toNat - 1

end

end A132340.P16481803046900762293

noncomputable section

/-- A132340: a(n+1) = if {a(k):1<=k<=n} is a permutation of [1:n] then 2*a(n) else a(n)-1.

Offset 1, canonical program `A132340.P16481803046900762293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132340 (n : ℕ) : ℤ :=
  A132340.P16481803046900762293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133639.P11234321483746663322

`∑{d}[n+1, A326415(#)*A365210((n+1)/#)]`
-/

namespace A133639.P11234321483746663322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A365210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133639.P11234321483746663322

noncomputable section

/-- A133639: Mobius transform of b(n) where b(8n + 1) = A080995(n).

Offset 1, canonical program `A133639.P11234321483746663322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639 (n : ℕ) : ℤ :=
  A133639.P11234321483746663322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133659.P14094302548948468611

`∩[A034962(n+1), A390613(n+1)]`
-/

namespace A133659.P14094302548948468611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P14094302548948468611

noncomputable section

/-- A133659: Primes that are the sum of three consecutive primes as well as the sum of three consecutive composite numbers.

Offset 1, canonical program `A133659.P14094302548948468611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A133659 (n : ℕ) : ℤ :=
  (A133659.P14094302548948468611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A133659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133994.P15079085757915823484

`A002260(eq[1, A304571(n+1)+1]+1)`
-/

namespace A133994.P15079085757915823484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A133994.P15079085757915823484

noncomputable section

/-- A133994: Irregular array read by rows: n-th row contains (in numerical order) both the positive integers <= n that are divisors of n and those that are coprime to n.

Offset 1, canonical program `A133994.P15079085757915823484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A133994 (n : ℕ) : ℤ :=
  A133994.P15079085757915823484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A133994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138026.P17911807186670300887

`lt[2, A121561(n+1)]+1`
-/

namespace A138026.P17911807186670300887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A138026.P17911807186670300887

noncomputable section

/-- A138026: Numbers k where A121561(k) = 3.

Offset 1, canonical program `A138026.P17911807186670300887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. -/
def A138026 (n : ℕ) : ℤ :=
  (A138026.P17911807186670300887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. -/
def A138026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139354.P2060834989768873161

`∑[∑{e}[xor(n, -n), 2-#]]-A139355(n)`
-/

namespace A139354.P2060834989768873161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139355 n

end

end A139354.P2060834989768873161

noncomputable section

/-- A139354: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives min{e(n), o(n)}.

Offset 0, canonical program `A139354.P2060834989768873161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139354 (n : ℕ) : ℤ :=
  A139354.P2060834989768873161.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139890.P459811890116219402

`∪[A139994(n+1), A139995(n+1)]`
-/

namespace A139890.P459811890116219402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P459811890116219402

noncomputable section

/-- A139890: Primes of the form 6x^2+35y^2.

Offset 1, canonical program `A139890.P459811890116219402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139890 (n : ℕ) : ℤ :=
  (A139890.P459811890116219402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139891.P13905630513339276774

`∪[A139987(n+1), A139996(n+1)]`
-/

namespace A139891.P13905630513339276774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139891.P13905630513339276774

noncomputable section

/-- A139891: Primes of the form 7x^2+30y^2.

Offset 1, canonical program `A139891.P13905630513339276774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139891 (n : ℕ) : ℤ :=
  (A139891.P13905630513339276774.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139933.P14771844273237704820

`∪[A140004(n+1), A140013(n+1)]`
-/

namespace A139933.P14771844273237704820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139933.P14771844273237704820

noncomputable section

/-- A139933: Primes of the form 11x^2+30y^2.

Offset 1, canonical program `A139933.P14771844273237704820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139933 (n : ℕ) : ℤ :=
  (A139933.P14771844273237704820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141614.P7621870366066753165

`A008846(n+2)-A008846(n+1)`
-/

namespace A141614.P7621870366066753165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 2) - A008846 (n + 1)

end

end A141614.P7621870366066753165

noncomputable section

/-- A141614: First differences of A008846.

Offset 1, canonical program `A141614.P7621870366066753165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141614 (n : ℕ) : ℤ :=
  A141614.P7621870366066753165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143444.P8311283723443882101

`A030013(n+1)-round(1/∏{e}[n+1, -#²])`
-/

namespace A143444.P8311283723443882101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) - SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A143444.P8311283723443882101

noncomputable section

/-- A143444: A054525 * the primes prefaced by 0.

Offset 1, canonical program `A143444.P8311283723443882101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143444 (n : ℕ) : ℤ :=
  A143444.P8311283723443882101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145390.P15585800402733348238

`A112329(n+1)+A183063(n+1)`
-/

namespace A145390.P15585800402733348238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) + A183063 (n + 1)

end

end A145390.P15585800402733348238

noncomputable section

/-- A145390: Number of sublattices of index n of a centered rectangular lattice fixed by a reflection.

Offset 1, canonical program `A145390.P15585800402733348238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145390 (n : ℕ) : ℤ :=
  A145390.P15585800402733348238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145551.P800159444026911314

`lt[2*n, A306682(n+1)]+1`
-/

namespace A145551.P800159444026911314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A145551.P800159444026911314

noncomputable section

/-- A145551: Numbers k such that product of divisors of k / sum of divisors of k is an integer.

Offset 1, canonical program `A145551.P800159444026911314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A145551 (n : ℕ) : ℤ :=
  (A145551.P800159444026911314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A145551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146975.P6518762066543505355

`A061043(5*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146975.P6518762066543505355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061043 (5 * (n + 1))

end

end A146975.P6518762066543505355

noncomputable section

/-- A146975: First quintisection of A061043: A061043(5n).

Offset 0, canonical program `A146975.P6518762066543505355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A146975 (n : ℕ) : ℤ :=
  A146975.P6518762066543505355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A146975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147562.P880216132473412622

`A323650(2*n)/3`
-/

namespace A147562.P880216132473412622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323650 (2 * n) : ℚ) / 3

end

end A147562.P880216132473412622

noncomputable section

/-- A147562: Number of "ON" cells at n-th stage in the "Ulam-Warburton" two-dimensional cellular automaton.

Offset 0, canonical program `A147562.P880216132473412622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147562.P880216132473412622.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147693.P9391154294968701023

`A249728(n+2)%A000040(A249727(n+2))`
-/

namespace A147693.P9391154294968701023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249728 (n + 2)) (A000040 (A249727 (n + 2)).toNat)

end

end A147693.P9391154294968701023

noncomputable section

/-- A147693: Irregular triangle read by rows: T(n, k) = n mod prime(k), n >= 2, 1 <= k <= PrimePi(n), where PrimePi(n) = A000720(n).

Offset 2, canonical program `A147693.P9391154294968701023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147693 (n : ℕ) : ℤ :=
  A147693.P9391154294968701023.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152313.P10045116747263746088

`p?[A202268(n+1)]`
-/

namespace A152313.P10045116747263746088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152313.P10045116747263746088

noncomputable section

/-- A152313: Primes without 0's or primes in their decimal expansion.

Offset 1, canonical program `A152313.P10045116747263746088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A152313 (n : ℕ) : ℤ :=
  A152313.P10045116747263746088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A152313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153083.P10624664622328952784

`A396571(n+1)-A153045(n+1)`
-/

namespace A153083.P10624664622328952784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1) - A153045 (n + 1)

end

end A153083.P10624664622328952784

noncomputable section

/-- A153083: Numbers such that 2*n + 11 is not prime.

Offset 1, canonical program `A153083.P10624664622328952784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153083 (n : ℕ) : ℤ :=
  A153083.P10624664622328952784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153083.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003624.P11850390878674121676

`filter[A014567(n+1), A066247(#)]`
-/

namespace A003624.P11850390878674121676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A003624.P11850390878674121676

noncomputable section

/-- A003624: Duffinian numbers: composite numbers k relatively prime to sigma(k).

Offset 1, canonical program `A003624.P11850390878674121676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. -/
def A003624 (n : ℕ) : ℤ :=
  A003624.P11850390878674121676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. -/
def A003624.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013635.P13704112913376471262

`∑[A096501(n+2)+1]`
-/

namespace A013635.P13704112913376471262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013635.P13704112913376471262

noncomputable section

/-- A013635: a(n) = prevprime(n) + n.

Offset 3, canonical program `A013635.P13704112913376471262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013635 (n : ℕ) : ℤ :=
  A013635.P13704112913376471262.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027386.P13022936192587829036

`∑{digits}[n, A332813(A033484(#))]`
-/

namespace A027386.P13022936192587829036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A332813 (A033484 x).toNat).sum

end

end A027386.P13022936192587829036

noncomputable section

/-- A027386: Write digits for n, count endpoints (version 1).

Offset 0, canonical program `A027386.P13022936192587829036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386 (n : ℕ) : ℤ :=
  A027386.P13022936192587829036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035317.P15945536660630351488

`A128176(A038722(n+1))`
-/

namespace A035317.P15945536660630351488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (A038722 (n + 1)).toNat

end

end A035317.P15945536660630351488

noncomputable section

/-- A035317: Pascal-like triangle associated with A000670.

Offset 0, canonical program `A035317.P15945536660630351488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A035317 (n : ℕ) : ℤ :=
  A035317.P15945536660630351488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A035317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046799.P14243968354502214682

`A322812(2*A000040(n+1))`
-/

namespace A046799.P14243968354502214682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (n + 1)).toNat

end

end A046799.P14243968354502214682

noncomputable section

/-- A046799: Number of distinct prime factors of 2^n+1.

Offset 0, canonical program `A046799.P14243968354502214682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799 (n : ℕ) : ℤ :=
  A046799.P14243968354502214682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048672.P15831279191570922518

`A087207(A005117(n+1))`
-/

namespace A048672.P15831279191570922518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A005117 (n + 1)).toNat

end

end A048672.P15831279191570922518

noncomputable section

/-- A048672: Binary encoding of squarefree numbers (A005117): A048640(n)/2.

Offset 1, canonical program `A048672.P15831279191570922518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048672 (n : ℕ) : ℤ :=
  A048672.P15831279191570922518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048751.P4042417737620018600

`A120736(n+3)`
-/

namespace A048751.P4042417737620018600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 3)

end

end A048751.P4042417737620018600

noncomputable section

/-- A048751: Composites k whose product of divisors divided by number of divisors is an integer.

Offset 1, canonical program `A048751.P4042417737620018600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A048751 (n : ℕ) : ℤ :=
  A048751.P4042417737620018600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A048751.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060265.P16861797515286908946

`2*(n+2)-A049653(n+2)`
-/

namespace A060265.P16861797515286908946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A049653 (n + 2)

end

end A060265.P16861797515286908946

noncomputable section

/-- A060265: Largest prime less than 2n.

Offset 2, canonical program `A060265.P16861797515286908946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060265 (n : ℕ) : ℤ :=
  A060265.P16861797515286908946.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060920.P14875864634409715620

`A128100(A061885(n))`
-/

namespace A060920.P14875864634409715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A061885 n).toNat

end

end A060920.P14875864634409715620

noncomputable section

/-- A060920: Bisection of Fibonacci triangle A037027: even-indexed members of column sequences of A037027 (not counting leading zeros).

Offset 0, canonical program `A060920.P14875864634409715620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060920 (n : ℕ) : ℤ :=
  A060920.P14875864634409715620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060920.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061395.P8431317036300486107

`A029837(A087207(n+1)+1)`
-/

namespace A061395.P8431317036300486107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A087207 (n + 1) + 1).toNat

end

end A061395.P8431317036300486107

noncomputable section

/-- A061395: Let p be the largest prime factor of n; if p is the k-th prime then set a(n) = k; a(1) = 0 by convention.

Offset 1, canonical program `A061395.P8431317036300486107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395 (n : ℕ) : ℤ :=
  A061395.P8431317036300486107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067390.P7852969546694532174

`A322812(A138636(n+2))`
-/

namespace A067390.P7852969546694532174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A138636 (n + 2)).toNat

end

end A067390.P7852969546694532174

noncomputable section

/-- A067390: Number of distinct prime factors in 2^n + 3.

Offset 1, canonical program `A067390.P7852969546694532174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390 (n : ℕ) : ℤ :=
  A067390.P7852969546694532174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069734.P4700367911549090281

`(A000203(n+1)+A069735(n+1))/2`
-/

namespace A069734.P4700367911549090281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A069735 (n + 1) : ℚ) / 2

end

end A069734.P4700367911549090281

noncomputable section

/-- A069734: Number of pairs (p,q), 0<=p<=q, such that p+q divides n.

Offset 1, canonical program `A069734.P4700367911549090281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069734.P4700367911549090281.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070038.P10485026428736281518

`(A079667(n+1)+A060866(n+1))/2`
-/

namespace A070038.P10485026428736281518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079667 (n + 1) + A060866 (n + 1) : ℚ) / 2

end

end A070038.P10485026428736281518

noncomputable section

/-- A070038: a(n) = sum of divisors of n that are at least sqrt(n).

Offset 1, canonical program `A070038.P10485026428736281518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070038 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070038.P10485026428736281518.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070038.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082092.P6243506660087546577

`filter[A073803(n+1), A005171(#)]`
-/

namespace A082092.P6243506660087546577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A082092.P6243506660087546577

noncomputable section

/-- A082092: Composite k such that d(k) < d(sigma(k)), i.e., A000005(k) < A000005(A000203(k)).

Offset 1, canonical program `A082092.P6243506660087546577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092 (n : ℕ) : ℤ :=
  A082092.P6243506660087546577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085683.P13122087082313265397

`∑[A139140(n)]-1`
-/

namespace A085683.P13122087082313265397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085683.P13122087082313265397

noncomputable section

/-- A085683: a(n) = Sum_{k = 1..N-1} floor(N/k) where N is the n-th prime.

Offset 1, canonical program `A085683.P13122087082313265397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085683 (n : ℕ) : ℤ :=
  A085683.P13122087082313265397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085683.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111159.P278081500121415465

`eq[A087507(n), A235872(n+1)]+1`
-/

namespace A111159.P278081500121415465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111159.P278081500121415465

noncomputable section

/-- A111159: Numbers k such that A111075(k) is odd.

Offset 1, canonical program `A111159.P278081500121415465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A111159 (n : ℕ) : ℤ :=
  (A111159.P278081500121415465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A111159.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122854.P10160800689135839717

`abs(A138502(n))`
-/

namespace A122854.P10160800689135839717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138502 n|

end

end A122854.P10160800689135839717

noncomputable section

/-- A122854: Expansion of phi(q)^2*psi(q)^4 in powers of q where phi(),psi() are Ramanujan theta functions.

Offset 0, canonical program `A122854.P10160800689135839717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122854 (n : ℕ) : ℤ :=
  A122854.P10160800689135839717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133636.P3030038643792088709

`∩[A053795(n+1), A074232(n+1)]`
-/

namespace A133636.P3030038643792088709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133636.P3030038643792088709

noncomputable section

/-- A133636: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=6.

Offset 1, canonical program `A133636.P3030038643792088709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133636 (n : ℕ) : ℤ :=
  (A133636.P3030038643792088709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133760.P9145176976057239686

`A139140(n+1)-2`
-/

namespace A133760.P9145176976057239686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 (n + 1) - 2

end

end A133760.P9145176976057239686

noncomputable section

/-- A133760: Sum of the number of divisors of the numbers between prime(n) and prime(n+1).

Offset 1, canonical program `A133760.P9145176976057239686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760 (n : ℕ) : ℤ :=
  A133760.P9145176976057239686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139889.P4754066223454395904

`∪[A139986(n+1), A139992(n+1)]`
-/

namespace A139889.P4754066223454395904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P4754066223454395904

noncomputable section

/-- A139889: Primes of the form 5x^2+42y^2.

Offset 1, canonical program `A139889.P4754066223454395904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139889 (n : ℕ) : ℤ :=
  (A139889.P4754066223454395904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140009.P3846978172525219397

`∩[A139898(n+1), A140615(n+1)]`
-/

namespace A140009.P3846978172525219397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P3846978172525219397

noncomputable section

/-- A140009: Primes of the form 24x^2+24xy+61y^2.

Offset 1, canonical program `A140009.P3846978172525219397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A140009 (n : ℕ) : ℤ :=
  (A140009.P3846978172525219397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A140009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140036.P16395373774773885940

`∩[A139851(n+1), A140615(n+1)]`
-/

namespace A140036.P16395373774773885940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P16395373774773885940

noncomputable section

/-- A140036: Primes of the form 21x^2+88y^2.

Offset 1, canonical program `A140036.P16395373774773885940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A140036 (n : ℕ) : ℤ :=
  (A140036.P16395373774773885940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A140036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143061.P12994917075269842013

`A171729(A014132(n+1))`
-/

namespace A143061.P12994917075269842013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (A014132 (n + 1)).toNat

end

end A143061.P12994917075269842013

noncomputable section

/-- A143061: Triangle read by rows, A000012 * A127647 * A000012.

Offset 1, canonical program `A143061.P12994917075269842013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143061 (n : ℕ) : ℤ :=
  A143061.P12994917075269842013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143157.P1478917444832126743

`A000217(n)+A249152(n)`
-/

namespace A143157.P1478917444832126743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A249152 n

end

end A143157.P1478917444832126743

noncomputable section

/-- A143157: Partial sums of A091512.

Offset 0, canonical program `A143157.P1478917444832126743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143157 (n : ℕ) : ℤ :=
  A143157.P1478917444832126743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153275.P3519607136667469352

`(A053178(n+1)-1)/10`
-/

namespace A153275.P3519607136667469352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053178 (n + 1) - 1 : ℚ) / 10

end

end A153275.P3519607136667469352

noncomputable section

/-- A153275: Numbers n such that 10*n+1 is not prime.

Offset 1, canonical program `A153275.P3519607136667469352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153275.P3519607136667469352.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037989.P17780582745811707290

`eq[2, A043281(n+1)]+1`
-/

namespace A037989.P17780582745811707290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037989.P17780582745811707290

noncomputable section

/-- A037989: Numbers whose maximal base-7 run length is 2.

Offset 1, canonical program `A037989.P17780582745811707290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989 (n : ℕ) : ℤ :=
  (A037989.P17780582745811707290.a (n - 1) : ℤ)

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

/-! ## A049613.P6165397218719363825

`A049653(n+2)+2`
-/

namespace A049613.P6165397218719363825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2) + 2

end

end A049613.P6165397218719363825

noncomputable section

/-- A049613: a(n) = 2n - (largest prime < 2n-2).

Offset 3, canonical program `A049613.P6165397218719363825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049613 (n : ℕ) : ℤ :=
  A049613.P6165397218719363825.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049613.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049773.P11655978421668356086

`A030109(n+1)+1`
-/

namespace A049773.P11655978421668356086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + 1

end

end A049773.P11655978421668356086

noncomputable section

/-- A049773: Triangular array T read by rows: if row n is r(1),...,r(m), then row n+1 is 2r(1)-1,...,2r(m)-1,2r(1),...,2r(m).

Offset 1, canonical program `A049773.P11655978421668356086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049773 (n : ℕ) : ℤ :=
  A049773.P11655978421668356086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049773.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127435.P10299367039698529313

`A070689(n+1)+1`
-/

namespace A127435.P10299367039698529313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1) + 1

end

end A127435.P10299367039698529313

noncomputable section

/-- A127435: Primes p such that (p-1)^2 + 1 is prime.

Offset 1, canonical program `A127435.P10299367039698529313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127435 (n : ℕ) : ℤ :=
  A127435.P10299367039698529313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129782.P7810012710438629702

`A096479(n+1)+2`
-/

namespace A129782.P7810012710438629702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096479 (n + 1) + 2

end

end A129782.P7810012710438629702

noncomputable section

/-- A129782: The upper twin prime whose lower member has a prime index.

Offset 1, canonical program `A129782.P7810012710438629702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782 (n : ℕ) : ℤ :=
  A129782.P7810012710438629702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130200.P5098395854931110605

`A130199(n+1)/2`
-/

namespace A130200.P5098395854931110605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130199 (n + 1) : ℚ) / 2

end

end A130200.P5098395854931110605

noncomputable section

/-- A130200: Evil triangular numbers.

Offset 1, canonical program `A130200.P5098395854931110605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130200.P5098395854931110605.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131961.P4236361226721680594

`A123484(24*n+1)`
-/

namespace A131961.P4236361226721680594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123484 (24 * n + 1)

end

end A131961.P4236361226721680594

noncomputable section

/-- A131961: Expansion of f(x, x^2) * f(x^2, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131961.P4236361226721680594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131961 (n : ℕ) : ℤ :=
  A131961.P4236361226721680594.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132895.P15394333494377494833

`2*A112886(n+1)`
-/

namespace A132895.P15394333494377494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112886 (n + 1)

end

end A132895.P15394333494377494833

noncomputable section

/-- A132895: Even numbers for which all divisors, with the exception of 1 and 2, are isolated. A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

Offset 1, canonical program `A132895.P15394333494377494833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132895 (n : ℕ) : ℤ :=
  A132895.P15394333494377494833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136207.P3473183565243102023

`∪[A023201(n+1), A046117(n+1)]`
-/

namespace A136207.P3473183565243102023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P3473183565243102023

noncomputable section

/-- A136207: Primes p such that p-6 or p+6 is prime.

Offset 1, canonical program `A136207.P3473183565243102023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136207 (n : ℕ) : ℤ :=
  (A136207.P3473183565243102023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145199.P16128091297052967479

`A049092(n+1)-1`
-/

namespace A145199.P16128091297052967479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1) - 1

end

end A145199.P16128091297052967479

noncomputable section

/-- A145199: Nonsquarefree numbers k such that k+1 is prime.

Offset 1, canonical program `A145199.P16128091297052967479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145199 (n : ℕ) : ℤ :=
  A145199.P16128091297052967479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145642.P7677048617916036936

`A050985(A000142(n+1))`
-/

namespace A145642.P7677048617916036936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A000142 (n + 1)).toNat

end

end A145642.P7677048617916036936

noncomputable section

/-- A145642: Cubefree part of n!.

Offset 1, canonical program `A145642.P7677048617916036936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145642 (n : ℕ) : ℤ :=
  A145642.P7677048617916036936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145643.P5565039089606067867

`A050985(A006882(n+1))`
-/

namespace A145643.P5565039089606067867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A006882 (n + 1)).toNat

end

end A145643.P5565039089606067867

noncomputable section

/-- A145643: Cubefree part of n!!.

Offset 1, canonical program `A145643.P5565039089606067867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145643 (n : ℕ) : ℤ :=
  A145643.P5565039089606067867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145643.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A022297.P13831019223360445474

`A057428(n)+A013947(n+1)`
-/

namespace A022297.P13831019223360445474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013947 (n + 1)

end

end A022297.P13831019223360445474

noncomputable section

/-- A022297: Index of n-th 1 in A006928.

Offset 1, canonical program `A022297.P13831019223360445474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297 (n : ℕ) : ℤ :=
  A022297.P13831019223360445474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066519.P9115414614718271380

`abs(Δ[A190276(abs(1-n)+1)])`
-/

namespace A066519.P9115414614718271380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066519.P9115414614718271380

noncomputable section

/-- A066519: Gaps between successive numbers with an anti-divisor class sum of zero.

Offset 1, canonical program `A066519.P9115414614718271380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519 (n : ℕ) : ℤ :=
  A066519.P9115414614718271380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074262.P11865346292723131209

`A156242(lt[1, A100428(n+1)])+1`
-/

namespace A074262.P11865346292723131209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A074262.P11865346292723131209

noncomputable section

/-- A074262: Positions of '11' in Kolakoski sequence A000002.

Offset 1, canonical program `A074262.P11865346292723131209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262 (n : ℕ) : ℤ :=
  A074262.P11865346292723131209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074273.P3483261039541089389

`A013947(2*(n+1))`
-/

namespace A074273.P3483261039541089389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 1))

end

end A074273.P3483261039541089389

noncomputable section

/-- A074273: Positions in the Kolakoski sequence (A000002) where there are an even number of 1's and the current term is 1.

Offset 1, canonical program `A074273.P3483261039541089389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273 (n : ℕ) : ℤ :=
  A074273.P3483261039541089389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074276.P923500997283116459

`A156242(lt[A100429(n+1), A100428(n+1)])`
-/

namespace A074276.P923500997283116459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P923500997283116459

noncomputable section

/-- A074276: Positions of occurrences of 2,1,1,2,1 in the Kolakoski sequence A000002.

Offset 1, canonical program `A074276.P923500997283116459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276 (n : ℕ) : ℤ :=
  A074276.P923500997283116459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078649.P18369770188371927822

`comp[A013947(n+1)-1]+1+n`
-/

namespace A078649.P18369770188371927822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A078649.P18369770188371927822

noncomputable section

/-- A078649: Numbers n such that A000002(n)=A000002(n+1) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078649.P18369770188371927822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649 (n : ℕ) : ℤ :=
  (A078649.P18369770188371927822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117968.P13461600208668365295

`∑[Δ[A117967(n)]+1]`
-/

namespace A117968.P13461600208668365295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117968.P13461600208668365295

noncomputable section

/-- A117968: Negative part of inverse of A117966; write -n in balanced ternary and then replace (-1)'s with 2's.

Offset 1, canonical program `A117968.P13461600208668365295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968 (n : ℕ) : ℤ :=
  A117968.P13461600208668365295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121361.P14605367141512656592

`floor(A097195(record[xor(1, n)])/2)`
-/

namespace A121361.P14605367141512656592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2⌋

end

end A121361.P14605367141512656592

noncomputable section

/-- A121361: Expansion of f(x^1, x^5) * psi(x^2) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A121361.P14605367141512656592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A121361 (n : ℕ) : ℤ :=
  A121361.P14605367141512656592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A121361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121362.P4931692809741161158

`A128616(n+1)-A128617(n+1)`
-/

namespace A121362.P4931692809741161158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (n + 1) - A128617 (n + 1)

end

end A121362.P4931692809741161158

noncomputable section

/-- A121362: Expansion of eta(q)*eta(q^6)*eta(q^10)*eta(q^15)/(eta(q^3)*eta(q^5)) in powers of q.

Offset 1, canonical program `A121362.P4931692809741161158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121362 (n : ℕ) : ℤ :=
  A121362.P4931692809741161158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122163.P1463123120263770295

`(12*n+1)*A002107(n)`
-/

namespace A122163.P1463123120263770295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 1 : ℤ) * A002107 n

end

end A122163.P1463123120263770295

noncomputable section

/-- A122163: Expansion of f(-q)^2*P(q) in powers of q.

Offset 0, canonical program `A122163.P1463123120263770295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A122163 (n : ℕ) : ℤ :=
  A122163.P1463123120263770295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A122163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125499.P3818410254327152959

`filter[A232745(n+1), A294934(#)]`
-/

namespace A125499.P3818410254327152959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P3818410254327152959

noncomputable section

/-- A125499: Deficient even numbers.

Offset 1, canonical program `A125499.P3818410254327152959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125499 (n : ℕ) : ℤ :=
  A125499.P3818410254327152959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130446.P13627366910175115370

`A111123(C(floor((n+1)/2), 64))+n`
-/

namespace A130446.P13627366910175115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 (Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 64) + (n : ℤ)

end

end A130446.P13627366910175115370

noncomputable section

/-- A130446: Integers in [1, 425] expressible as a difference of the terms of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130446.P13627366910175115370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446 (n : ℕ) : ℤ :=
  A130446.P13627366910175115370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134024.P16444693290474803119

`A134022(n)+A065363(n)`
-/

namespace A134024.P16444693290474803119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n + A065363 n

end

end A134024.P16444693290474803119

noncomputable section

/-- A134024: Number of positive trits in balanced ternary representation of n.

Offset 0, canonical program `A134024.P16444693290474803119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024 (n : ℕ) : ℤ :=
  A134024.P16444693290474803119.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137711.P17738351747178437954

`2^(n+1)-A152537(n+1)`
-/

namespace A137711.P17738351747178437954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A152537 (n + 1)

end

end A137711.P17738351747178437954

noncomputable section

/-- A137711: Row sums of triangle A137710.

Offset 1, canonical program `A137711.P17738351747178437954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A137711 (n : ℕ) : ℤ :=
  A137711.P17738351747178437954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A137711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140263.P6663385585559439803

`A142150(n)+A117967(A110654(n))`
-/

namespace A140263.P6663385585559439803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A117967 (A110654 n).toNat

end

end A140263.P6663385585559439803

noncomputable section

/-- A140263: Permutation of nonnegative integers obtained by interleaving A117967 and A117968.

Offset 0, canonical program `A140263.P6663385585559439803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A140263 (n : ℕ) : ℤ :=
  A140263.P6663385585559439803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A140263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143513.P17585744667518437941

`record[(n+1)/A003958(A003958(n+1))]`
-/

namespace A143513.P17585744667518437941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003958 (A003958 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143513.P17585744667518437941

noncomputable section

/-- A143513: Numbers of the form 2^a * 3^b * 5^c * 17^d * 257^e * 65537^f; products of 2 and the Fermat primes.

Offset 1, canonical program `A143513.P17585744667518437941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. -/
def A143513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143513.P17585744667518437941.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. -/
def A143513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155560.P3033731189565993518

`filter[A092572(n+1), A353814(#)]`
-/

namespace A155560.P3033731189565993518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155560.P3033731189565993518

noncomputable section

/-- A155560: Intersection of A000404 and A092572: N = a^2 + b^2 = c^2 + 3d^2 with a,b,c,d>0.

Offset 1, canonical program `A155560.P3033731189565993518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. -/
def A155560 (n : ℕ) : ℤ :=
  A155560.P3033731189565993518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. -/
def A155560.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027909.P7770673729257654986

`(n+1)*A143927(n)`
-/

namespace A027909.P7770673729257654986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143927 n

end

end A027909.P7770673729257654986

noncomputable section

/-- A027909: T(2n,n-1), T given by A027907.

Offset 0, canonical program `A027909.P7770673729257654986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027909 (n : ℕ) : ℤ :=
  A027909.P7770673729257654986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027909.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048108.P13981504203127248285

`∪[A046099(n+1), A048111(n+1)]`
-/

namespace A048108.P13981504203127248285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048108.P13981504203127248285

noncomputable section

/-- A048108: Numbers with at least as many non-unitary divisors (A048105) as unitary divisors (A034444).

Offset 1, canonical program `A048108.P13981504203127248285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048108 (n : ℕ) : ℤ :=
  (A048108.P13981504203127248285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048108.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061911.P12840697510039333381

`sqrt(A004159(A061910(n+1)))`
-/

namespace A061911.P12840697510039333381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A004159 (A061910 (n + 1)).toNat : ℝ)

end

end A061911.P12840697510039333381

noncomputable section

/-- A061911: Square root of the sum of the digits of k^2 when this sum is a square.

Offset 1, canonical program `A061911.P12840697510039333381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061911.P12840697510039333381.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061911.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129633.P6237499131116269407

`A000040(A058049(n+1))`
-/

namespace A129633.P6237499131116269407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058049 (n + 1)).toNat

end

end A129633.P6237499131116269407

noncomputable section

/-- A129633: The sum of the decimal digits of all primes up to and including the primes listed equals a prime.

Offset 1, canonical program `A129633.P6237499131116269407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A129633 (n : ℕ) : ℤ :=
  A129633.P6237499131116269407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A129633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138122.P10225849521028141504

`∪[A289353(n+1)+4, A289353(n+1)]`
-/

namespace A138122.P10225849521028141504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289353 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138122.P10225849521028141504

noncomputable section

/-- A138122: Cousin primes, the lower of which is 7 (mod 10).

Offset 1, canonical program `A138122.P10225849521028141504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138122 (n : ℕ) : ℤ :=
  (A138122.P10225849521028141504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140264.P15141776931122807942

`A140266(n+1)-1`
-/

namespace A140264.P15141776931122807942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140266 (n + 1) - 1

end

end A140264.P15141776931122807942

noncomputable section

/-- A140264: Inverse permutation to A140263.

Offset 0, canonical program `A140264.P15141776931122807942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140264 (n : ℕ) : ℤ :=
  A140264.P15141776931122807942.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140264.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A119450.P10853588733666764449

`A000040(A200260(n+1))`
-/

namespace A119450.P10853588733666764449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A200260 (n + 1)).toNat

end

end A119450.P10853588733666764449

noncomputable section

/-- A119450: Primes with odd digit sum.

Offset 1, canonical program `A119450.P10853588733666764449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119450 (n : ℕ) : ℤ :=
  A119450.P10853588733666764449.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119450.provenance : SequenceMachineLib.Provenance := .conditional

