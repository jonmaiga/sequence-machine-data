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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A113100: Number of 4-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 3 and t_i = 3 (mod 3) and t_{i+1} <= 4*t_i for 1

The programs for A113100, there is no canonical definition to state claims against.
-/

/-! ## A113100.P859899604587422558

`A113099(∑[n])`
-/

namespace A113100.P859899604587422558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113099 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113100.P859899604587422558

/-! ## A113100.P11706831695784898126

`record[A113099(A001971(n))]`
-/

namespace A113100.P11706831695784898126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113099 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113100.P11706831695784898126

/-! ## A113100.P13503869273105589176

`record[A113099(A055264(n))]`
-/

namespace A113100.P13503869273105589176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113099 (A055264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113100.P13503869273105589176

/-! ## A113100.P16464093680382245254

`record[A113099(A072765(n))]`
-/

namespace A113100.P16464093680382245254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113099 (A072765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113100.P16464093680382245254

/-!
# A113102: Column 1 of triangle A113101.

The programs for A113102, there is no canonical definition to state claims against.
-/

/-! ## A113102.P6323021699661984819

`record[A113101(comp[∑[n]])]`
-/

namespace A113102.P6323021699661984819
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113101 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113102.P6323021699661984819

/-! ## A113102.P15464839257261120625

`A113101(∑[n+1]+1)`
-/

namespace A113102.P15464839257261120625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113102.P15464839257261120625

/-! ## A113102.P8846013394815371074

`record[A072233(n)*A113101(n)]`
-/

namespace A113102.P8846013394815371074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A113101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113102.P8846013394815371074

/-!
# A113103: Square table T, read by antidiagonals, where T(n,k) gives the number of n-th generation descendents of a node labeled (k) in the tree of 5-tournament sequences.

The programs for A113103, there is no canonical definition to state claims against.
-/

/-! ## A113103.P2423689665139133674

`A001057(A184962(n)^A040476(n))`
-/

namespace A113103.P2423689665139133674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway ((A184962 n : ℚ) ^ (A040476 n : ℤ))).toNat

end

end A113103.P2423689665139133674

/-! ## A113103.P8536227460040846090

`A001057(A184962(n)^A120880(n))`
-/

namespace A113103.P8536227460040846090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway ((A184962 n : ℚ) ^ (A120880 n : ℤ))).toNat

end

end A113103.P8536227460040846090

/-! ## A113103.P9784522539690184338

`A001057(A265608(n)^A040476(n))`
-/

namespace A113103.P9784522539690184338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway ((A265608 n : ℚ) ^ (A040476 n : ℤ))).toNat

end

end A113103.P9784522539690184338

/-! ## A113103.P2491607285000680969

`A090079(A111106(n)^A122651(n))`
-/

namespace A113103.P2491607285000680969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (SequenceMachineLib.roundAway ((A111106 n : ℚ) ^ (A122651 n : ℤ))).toNat

end

end A113103.P2491607285000680969

/-!
# A113104: Main diagonal of square table A113103; also, a(n) equals the n-th term in column 0 of the matrix n-th power of triangle A113106.

The programs for A113104, there is no canonical definition to state claims against.
-/

/-! ## A113104.P10483522848496949641

`A113103(∑[4*n])`
-/

namespace A113104.P10483522848496949641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113103 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113104.P10483522848496949641

/-!
# A113106: Triangle T, read by rows, that satisfies the recurrence: T(n,k) = [T^5](n-1,k-1) + [T^5](n-1,k) for n>k>=0, with T(n,n)=1 for n>=0, where T^5 is the matrix 5th power of T.

The programs for A113106, there is no canonical definition to state claims against.
-/

/-! ## A113106.P15636308038523983193

`A080053(A197180(n+1)^A096810(n))`
-/

namespace A113106.P15636308038523983193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080053 (SequenceMachineLib.roundAway ((A197180 (n + 1) : ℚ) ^ (A096810 n : ℤ))).toNat

end

end A113106.P15636308038523983193

/-!
# A113107: Number of 5-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 1 and t_i = 1 (mod 4) and t_{i+1} <= 5*t_i for 1

The programs for A113107, there is no canonical definition to state claims against.
-/

/-! ## A113107.P3083729349711295546

`A113114(C(n, 2))`
-/

namespace A113107.P3083729349711295546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113114 (Nat.choose n 2)

end

end A113107.P3083729349711295546

/-! ## A113107.P6485223623202601722

`A113114(∑[n]-n)`
-/

namespace A113107.P6485223623202601722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113114 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A113107.P6485223623202601722

/-! ## A113107.P8450652091517618485

`abs(record[Δ[A113103(n)]])`
-/

namespace A113107.P8450652091517618485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113103 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A113107.P8450652091517618485

/-! ## A113107.P3377983814908365615

`A113103(∑[n+1]+1)`
-/

namespace A113107.P3377983814908365615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113103 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113107.P3377983814908365615

/-! ## A113107.P12022162730480934151

`or(1, record[A113103(n+1)])`
-/

namespace A113107.P12022162730480934151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A113107.P12022162730480934151

/-!
# A113108: Triangle T, read by rows, equal to the matrix square of triangle A113106, which satisfies the recurrence: A113106(n,k) = [A113106^5](n-1,k-1) + [A113106^5](n-1,k).

The programs for A113108, there is no canonical definition to state claims against.
-/

/-! ## A113108.P15326130475260017297

`A039599(n)*A082499(A205850(n+1))`
-/

namespace A113108.P15326130475260017297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n * A082499 (A205850 (n + 1)).toNat

end

end A113108.P15326130475260017297

/-!
# A113109: Number of 5-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 2 and t_i = 2 (mod 4) and t_{i+1} <= 5*t_i for 1

The programs for A113109, there is no canonical definition to state claims against.
-/

/-! ## A113109.P12402992930226088673

`A113108(∑[n])`
-/

namespace A113109.P12402992930226088673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113109.P12402992930226088673

/-! ## A113109.P16020451862385341739

`record[A113108(A001971(n))]`
-/

namespace A113109.P16020451862385341739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113108 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113109.P16020451862385341739

/-! ## A113109.P333210894229871349

`record[A113108(A072765(n))]`
-/

namespace A113109.P333210894229871349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113108 (A072765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113109.P333210894229871349

/-! ## A113109.P8737495755230370651

`record[A113108(A091018(n))]`
-/

namespace A113109.P8737495755230370651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113108 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113109.P8737495755230370651

/-!
# A113111: Number of 5-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 3 and t_i = 3 (mod 4) and t_{i+1} <= 5*t_i for 1

The programs for A113111, there is no canonical definition to state claims against.
-/

/-! ## A113111.P6326396220226120856

`A113110(∑[n])`
-/

namespace A113111.P6326396220226120856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113111.P6326396220226120856

/-! ## A113111.P152055407440514704

`or(1, A113110(C(n+1, 2)))`
-/

namespace A113111.P152055407440514704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113110 (Nat.choose (n + 1) 2))

end

end A113111.P152055407440514704

/-! ## A113111.P17155700354646454621

`record[ratio[A113110(floor(2*n/5))]]`
-/

namespace A113111.P17155700354646454621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113110 ⌊2 * ((n : ℚ) / 5)⌋.toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113111.P17155700354646454621

/-! ## A113111.P18194287734219637781

`record[A113110(A001971(n))]`
-/

namespace A113111.P18194287734219637781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113110 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113111.P18194287734219637781

/-!
# A113113: Number of 5-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 4 and t_i = 4 (mod 4) and t_{i+1} <= 5*t_i for 1

The programs for A113113, there is no canonical definition to state claims against.
-/

/-! ## A113113.P1706354606598510636

`A113112(∑[n])`
-/

namespace A113113.P1706354606598510636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113113.P1706354606598510636

/-! ## A113113.P10235529964942505405

`record[A113112(n)]`
-/

namespace A113113.P10235529964942505405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113113.P10235529964942505405

/-! ## A113113.P10323418181360557460

`A113112(A000217(n))+A025444(n)`
-/

namespace A113113.P10323418181360557460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113112 (A000217 n).toNat + A025444 n

end

end A113113.P10323418181360557460

/-! ## A113113.P377315292260823852

`A113112(A000217(n))+A059995(n)`
-/

namespace A113113.P377315292260823852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113112 (A000217 n).toNat + A059995 n

end

end A113113.P377315292260823852

/-!
# A113115: Primes p such that 17*p + 2 is also prime.

The programs for A113115, the canonical program `A113115.P10396370869397378492` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113115 has offset 1).

The definition of A113115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113115.P10396370869397378492

`p?[A113487(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113115

/-- `p?[A113487(n+1)]` -/
def P10396370869397378492.Spec : Prop :=
  ∀ n, P10396370869397378492.a n = A113115 (n + 1)

theorem P10396370869397378492.correct : P10396370869397378492.Spec := by
  intro n
  simp only [A113115, Nat.add_sub_cancel]

end A113115

/-! ## A113115.P6673778268104834999

`p?[A108976(n+1)+1]`
-/

namespace A113115.P6673778268104834999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108976 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113115.P6673778268104834999

namespace A113115

/-- `p?[A108976(n+1)+1]` -/
def P6673778268104834999.Spec : Prop :=
  ∀ n, P6673778268104834999.a n = A113115 (n + 1)

end A113115

/-! ## A113115.P2148857259012818953

`∩[A113487(n+1), A042990(n)]`
-/

namespace A113115.P2148857259012818953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P2148857259012818953

namespace A113115

/-- `∩[A113487(n+1), A042990(n)]` -/
def P2148857259012818953.Spec : Prop :=
  ∀ n, (P2148857259012818953.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P16325282277860182571

`∩[A007645(n+1), A113487(n+1)]`
-/

namespace A113115.P16325282277860182571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P16325282277860182571

namespace A113115

/-- `∩[A007645(n+1), A113487(n+1)]` -/
def P16325282277860182571.Spec : Prop :=
  ∀ n, (P16325282277860182571.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P18098575174782112385

`∩[A040116(n+1), A113487(n+1)]`
-/

namespace A113115.P18098575174782112385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P18098575174782112385

namespace A113115

/-- `∩[A040116(n+1), A113487(n+1)]` -/
def P18098575174782112385.Spec : Prop :=
  ∀ n, (P18098575174782112385.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P8178358264583415786

`∩[A042986(n+1), A113487(n+1)]`
-/

namespace A113115.P8178358264583415786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P8178358264583415786

namespace A113115

/-- `∩[A042986(n+1), A113487(n+1)]` -/
def P8178358264583415786.Spec : Prop :=
  ∀ n, (P8178358264583415786.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P8853086496393650452

`∩[A045311(n+1), A113487(n+1)]`
-/

namespace A113115.P8853086496393650452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P8853086496393650452

namespace A113115

/-- `∩[A045311(n+1), A113487(n+1)]` -/
def P8853086496393650452.Spec : Prop :=
  ∀ n, (P8853086496393650452.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P17315848108622432774

`∩[A045321(n+1), A113487(n+1)]`
-/

namespace A113115.P17315848108622432774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P17315848108622432774

namespace A113115

/-- `∩[A045321(n+1), A113487(n+1)]` -/
def P17315848108622432774.Spec : Prop :=
  ∀ n, (P17315848108622432774.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P3081541178904152661

`∩[A045331(n+1), A113487(n+1)]`
-/

namespace A113115.P3081541178904152661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P3081541178904152661

namespace A113115

/-- `∩[A045331(n+1), A113487(n+1)]` -/
def P3081541178904152661.Spec : Prop :=
  ∀ n, (P3081541178904152661.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P511484067341562336

`∩[A113487(n+1), A279815(n+1)]`
-/

namespace A113115.P511484067341562336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P511484067341562336

namespace A113115

/-- `∩[A113487(n+1), A279815(n+1)]` -/
def P511484067341562336.Spec : Prop :=
  ∀ n, (P511484067341562336.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P6641026083135757727

`∩[A113487(n+1), A325143(n+1)]`
-/

namespace A113115.P6641026083135757727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P6641026083135757727

namespace A113115

/-- `∩[A113487(n+1), A325143(n+1)]` -/
def P6641026083135757727.Spec : Prop :=
  ∀ n, (P6641026083135757727.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P9231443102827063171

`∩[A059456(n+1), A113487(n+1)]`
-/

namespace A113115.P9231443102827063171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P9231443102827063171

namespace A113115

/-- `∩[A059456(n+1), A113487(n+1)]` -/
def P9231443102827063171.Spec : Prop :=
  ∀ n, (P9231443102827063171.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P10019774857720504533

`∩[A049551(n+1), A113487(n+1)]`
-/

namespace A113115.P10019774857720504533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P10019774857720504533

namespace A113115

/-- `∩[A049551(n+1), A113487(n+1)]` -/
def P10019774857720504533.Spec : Prop :=
  ∀ n, (P10019774857720504533.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P18146103219710866247

`∩[A004139(n+1), A113487(n+1)]`
-/

namespace A113115.P18146103219710866247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P18146103219710866247

namespace A113115

/-- `∩[A004139(n+1), A113487(n+1)]` -/
def P18146103219710866247.Spec : Prop :=
  ∀ n, (P18146103219710866247.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P12823469306223428372

`∩[A045319(n+1), A113487(n+1)]`
-/

namespace A113115.P12823469306223428372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P12823469306223428372

namespace A113115

/-- `∩[A045319(n+1), A113487(n+1)]` -/
def P12823469306223428372.Spec : Prop :=
  ∀ n, (P12823469306223428372.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P10783041780256258135

`∩[A065091(n+1), A113487(n+1)]`
-/

namespace A113115.P10783041780256258135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P10783041780256258135

namespace A113115

/-- `∩[A065091(n+1), A113487(n+1)]` -/
def P10783041780256258135.Spec : Prop :=
  ∀ n, (P10783041780256258135.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P14675658522723230613

`∩[A000040(n+1), A113487(n+1)]`
-/

namespace A113115.P14675658522723230613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P14675658522723230613

namespace A113115

/-- `∩[A000040(n+1), A113487(n+1)]` -/
def P14675658522723230613.Spec : Prop :=
  ∀ n, (P14675658522723230613.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P14970562875935854697

`∩[A051948(n+1), A113487(n+1)]`
-/

namespace A113115.P14970562875935854697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P14970562875935854697

namespace A113115

/-- `∩[A051948(n+1), A113487(n+1)]` -/
def P14970562875935854697.Spec : Prop :=
  ∀ n, (P14970562875935854697.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P3789925321137042658

`∩[A053813(n+1), A113487(n+1)]`
-/

namespace A113115.P3789925321137042658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P3789925321137042658

namespace A113115

/-- `∩[A053813(n+1), A113487(n+1)]` -/
def P3789925321137042658.Spec : Prop :=
  ∀ n, (P3789925321137042658.a n : ℤ) = A113115 (n + 1)

end A113115

/-! ## A113115.P14009510466745757105

`∩[A113487(n+1), A116974(n+1)]`
-/

namespace A113115.P14009510466745757105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113115.P14009510466745757105

namespace A113115

/-- `∩[A113487(n+1), A116974(n+1)]` -/
def P14009510466745757105.Spec : Prop :=
  ∀ n, (P14009510466745757105.a n : ℤ) = A113115 (n + 1)

end A113115

/-!
# A113117: a(1) = 2; for n>1, a(n) is the smallest integer > a(n-1) such that all primes <= a(n-1) divide at least one integer k for a(n-1) < k <= a(n).

The programs for A113117, there is no canonical definition to state claims against.
-/

/-! ## A113117.P2768113845447965584

`A113118(n+1)+char[4]`
-/

namespace A113117.P2768113845447965584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113118 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113117.P2768113845447965584

/-! ## A113117.P2861598345172974825

`char[4]+2*A185231(n)`
-/

namespace A113117.P2861598345172974825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A185231 n

end

end A113117.P2861598345172974825

/-! ## A113117.P12859173212463253440

`A185014(n)+A113118(n+1)`
-/

namespace A113117.P12859173212463253440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 n + A113118 (n + 1)

end

end A113117.P12859173212463253440

/-! ## A113117.P10000377233998603215

`or(2*A185231(n), A185014(n))`
-/

namespace A113117.P10000377233998603215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A185231 n) (A185014 n)

end

end A113117.P10000377233998603215

/-! ## A113117.P687720450224260940

`A322437(A172000(2*n+3)+4)+A113118(n+1)`
-/

namespace A113117.P687720450224260940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A172000 (2 * n + 3) + 4).toNat + A113118 (n + 1)

end

end A113117.P687720450224260940

/-!
# A113118: a(1) = 2. a(n) is smallest integer > a(n-1) which is a multiple of the largest prime <= a(n-1).

The programs for A113118, there is no canonical definition to state claims against.
-/

/-! ## A113118.P16142882006609711615

`2*A185231(n)`
-/

namespace A113118.P16142882006609711615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185231 n

end

end A113118.P16142882006609711615

/-! ## A113118.P2147966318502850778

`A185231(xor(1, xor(1, n)))+A185231(n)`
-/

namespace A113118.P2147966318502850778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 (Nat.xor 1 (Nat.xor 1 n)) + A185231 n

end

end A113118.P2147966318502850778

/-! ## A113118.P16463404038563455028

`(A057427(n)+1)*A006992(A028310(n))`
-/

namespace A113118.P16463404038563455028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A006992 (A028310 n).toNat

end

end A113118.P16463404038563455028

/-! ## A113118.P1141517686796482555

`(2-A000007(n))*A006992(A028310(n))`
-/

namespace A113118.P1141517686796482555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A006992 (A028310 n).toNat

end

end A113118.P1141517686796482555

/-! ## A113118.P1930241559160821339

`A185231(A005843(n)/2)+A185231(n)`
-/

namespace A113118.P1930241559160821339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A185231 n

end

end A113118.P1930241559160821339

/-! ## A113118.P18020795159420605018

`2*A006992(A028310(n))/A054977(n)`
-/

namespace A113118.P18020795159420605018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A006992 (A028310 n).toNat : ℚ) / (A054977 n : ℚ))

end

end A113118.P18020795159420605018

/-! ## A113118.P14865139636982076090

`A185231(A004526(n+n))+A185231(n)`
-/

namespace A113118.P14865139636982076090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 (A004526 (n + n)).toNat + A185231 n

end

end A113118.P14865139636982076090

/-! ## A113118.P10080804548113131561

`A185231(A005843(n)-n)+A185231(n)`
-/

namespace A113118.P10080804548113131561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 (A005843 n - (n : ℤ)).toNat + A185231 n

end

end A113118.P10080804548113131561

/-! ## A113118.P16677600404186778536

`A185231(n)+A185231(n%A185231(n))`
-/

namespace A113118.P16677600404186778536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 n + A185231 (Int.tmod (n : ℤ) (A185231 n)).toNat

end

end A113118.P16677600404186778536

/-! ## A113118.P5443553458865353339

`A185231(or(n, A000035(n)))+A185231(n)`
-/

namespace A113118.P5443553458865353339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 (Int.lor (n : ℤ) (A000035 n)).toNat + A185231 n

end

end A113118.P5443553458865353339

/-! ## A113118.P3004358174412020286

`A006992(n+1)+A185231(n)-Δ[A185231(n)]`
-/

namespace A113118.P3004358174412020286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (n + 1) + (A185231 n - (f1 (n + 1) - f1 n))

end

end A113118.P3004358174412020286

/-!
# A113119: Total number of digits in all n-digit nonnegative integers.

The programs for A113119, there is no canonical definition to state claims against.
-/

/-! ## A113119.P4679035419718289150

`(n+1)*Δ[or(1, 10^n)]`
-/

namespace A113119.P4679035419718289150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A113119.P4679035419718289150

/-! ## A113119.P12489041396585098300

`(n+1)*Δ[and(-2, 10^n)]`
-/

namespace A113119.P12489041396585098300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A113119.P12489041396585098300

/-! ## A113119.P12521303023898594516

`(n+1)*Δ[round(tanh(n)+10^n)]`
-/

namespace A113119.P12521303023898594516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (n : ℝ) + (10 ^ n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A113119.P12521303023898594516

/-! ## A113119.P9937033355915658087

`floor(acot(n)+(n+1)*Δ[10^n])`
-/

namespace A113119.P9937033355915658087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℝ)⌋

end

end A113119.P9937033355915658087

/-! ## A113119.P17298668403869923657

`2*(n+1)*Δ[floor(10^n/2)]`
-/

namespace A113119.P17298668403869923657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (f1 (n + 1) - f1 n))

end

end A113119.P17298668403869923657

/-! ## A113119.P9783887996350939202

`Δ[or(1, A033714(n+1))]`
-/

namespace A113119.P9783887996350939202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033714 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113119.P9783887996350939202

/-! ## A113119.P4885777622465712769

`Δ[A033713(n+1)+ceil(sin(n)²)]`
-/

namespace A113119.P4885777622465712769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033713 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113119.P4885777622465712769

/-! ## A113119.P17041791769648443021

`Δ[A033714(n+1)%A072290(n)]`
-/

namespace A113119.P17041791769648443021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033714 (n + 1)) (A072290 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113119.P17041791769648443021

/-! ## A113119.P18393478112973658908

`A212704(n+1)+A008683((n+1)²)`
-/

namespace A113119.P18393478112973658908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212704 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A113119.P18393478112973658908

/-! ## A113119.P3903131706769809859

`A212704(n+1)+val(A000040(n+1), 2)`
-/

namespace A113119.P3903131706769809859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212704 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A113119.P3903131706769809859

/-!
# A113122: a(n) = Sum_{i=1..n} F(i)^F(n-i+1).

The programs for A113122, there is no canonical definition to state claims against.
-/

/-! ## A113122.P5281260174099357551

`A121528(a(n-1))+n` with `a(0)=1`
-/

namespace A113122.P5281260174099357551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121528 (a (n - 1)).toNat + (n : ℤ)

end

end A113122.P5281260174099357551

/-! ## A113122.P6429619747475269769

`A023799(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A113122.P6429619747475269769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A023799 (a (n - 1)).toNat + a (n - 1)

end

end A113122.P6429619747475269769

/-! ## A113122.P3306682817932445377

`A332110(A103480(n))`
-/

namespace A113122.P3306682817932445377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332110 (A103480 n).toNat

end

end A113122.P3306682817932445377

/-!
# A113125: A simple tridiagonal matrix.

The programs for A113125, the canonical program `A113125.P11831813501655205056` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113125 has offset 0).

The definition of A113125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113125.P17983718614765225506

`C(1-C(∑[char[∑[n]]], 2)+n, A007318(∑[char[comp[∑[n+1]]]]))`
-/

namespace A113125.P17983718614765225506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A007318 (∑ j ∈ Finset.range (n + 1), f4 j)).toNat

end

end A113125.P17983718614765225506

namespace A113125

/-- `C(1-C(∑[char[∑[n]]], 2)+n, A007318(∑[char[comp[∑[n+1]]]]))` -/
def P17983718614765225506.Spec : Prop :=
  ∀ n, (P17983718614765225506.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P15073249856808936848

`lcm(A113126(n), A147768(n))`
-/

namespace A113125.P15073249856808936848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113126 n) (A147768 n)

end

end A113125.P15073249856808936848

namespace A113125

/-- `lcm(A113126(n), A147768(n))` -/
def P15073249856808936848.Spec : Prop :=
  ∀ n, (P15073249856808936848.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P11831813501655205056

`gcd(A127648(n), A153869(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113125

/-- `gcd(A127648(n), A153869(n+1))` -/
def P11831813501655205056.Spec : Prop :=
  ∀ n, (P11831813501655205056.a n : ℤ) = A113125 n

theorem P11831813501655205056.correct : P11831813501655205056.Spec := by
  intro n
  simp only [A113125]

end A113125

/-! ## A113125.P2826103117949227005

`abs(A141679(n+1))*A113126(n)`
-/

namespace A113125.P2826103117949227005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141679 (n + 1)| * A113126 n

end

end A113125.P2826103117949227005

namespace A113125

/-- `abs(A141679(n+1))*A113126(n)` -/
def P2826103117949227005.Spec : Prop :=
  ∀ n, P2826103117949227005.a n = A113125 n

end A113125

/-! ## A113125.P3141094668305234827

`lcm(A002260(n+1), A141679(n+1))`
-/

namespace A113125.P3141094668305234827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A141679 (n + 1))

end

end A113125.P3141094668305234827

namespace A113125

/-- `lcm(A002260(n+1), A141679(n+1))` -/
def P3141094668305234827.Spec : Prop :=
  ∀ n, (P3141094668305234827.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P2174363421622927474

`C(1-C(∑[char[∑[n]]], 2)+n, A046854(n+1))`
-/

namespace A113125.P2174363421622927474
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A046854 (n + 1)).toNat

end

end A113125.P2174363421622927474

namespace A113125

/-- `C(1-C(∑[char[∑[n]]], 2)+n, A046854(n+1))` -/
def P2174363421622927474.Spec : Prop :=
  ∀ n, (P2174363421622927474.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P16918008467196504077

`C(1-C(∑[char[∑[n]]], 2)+n, A037306(n+2)²)`
-/

namespace A113125.P16918008467196504077
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A037306 (n + 2) ^ 2).toNat

end

end A113125.P16918008467196504077

namespace A113125

/-- `C(1-C(∑[char[∑[n]]], 2)+n, A037306(n+2)²)` -/
def P16918008467196504077.Spec : Prop :=
  ∀ n, (P16918008467196504077.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P2420543980367321425

`A113126(A007401(n+1))`
-/

namespace A113125.P2420543980367321425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113126 (A007401 (n + 1)).toNat

end

end A113125.P2420543980367321425

namespace A113125

/-- `A113126(A007401(n+1))` -/
def P2420543980367321425.Spec : Prop :=
  ∀ n, P2420543980367321425.a n = A113125 n

end A113125

/-! ## A113125.P16573401879924411780

`C(A113126(n), A173747(n))`
-/

namespace A113125.P16573401879924411780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113126 n).toNat (A173747 n).toNat

end

end A113125.P16573401879924411780

namespace A113125

/-- `C(A113126(n), A173747(n))` -/
def P16573401879924411780.Spec : Prop :=
  ∀ n, (P16573401879924411780.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P11491399692387546809

`C(A113126(n), A173749(n))`
-/

namespace A113125.P11491399692387546809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113126 n).toNat (A173749 n).toNat

end

end A113125.P11491399692387546809

namespace A113125

/-- `C(A113126(n), A173749(n))` -/
def P11491399692387546809.Spec : Prop :=
  ∀ n, (P11491399692387546809.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P10961508841055318590

`C(A002260(n+1), A173747(n))`
-/

namespace A113125.P10961508841055318590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A173747 n).toNat

end

end A113125.P10961508841055318590

namespace A113125

/-- `C(A002260(n+1), A173747(n))` -/
def P10961508841055318590.Spec : Prop :=
  ∀ n, (P10961508841055318590.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P11700569854528077267

`floor(A002260(n+1)/A173749(n))`
-/

namespace A113125.P11700569854528077267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A173749 n : ℚ)⌋

end

end A113125.P11700569854528077267

namespace A113125

/-- `floor(A002260(n+1)/A173749(n))` -/
def P11700569854528077267.Spec : Prop :=
  ∀ n, P11700569854528077267.a n = A113125 n

end A113125

/-! ## A113125.P578855506754866850

`C(1-C(∑[char[∑[n]]], 2)+n, A220632(n+2))`
-/

namespace A113125.P578855506754866850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A220632 (n + 2)).toNat

end

end A113125.P578855506754866850

namespace A113125

/-- `C(1-C(∑[char[∑[n]]], 2)+n, A220632(n+2))` -/
def P578855506754866850.Spec : Prop :=
  ∀ n, (P578855506754866850.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P9602752051170809529

`C(1-C(∑[char[∑[n]]], 2)+n, A135218(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A113125.P9602752051170809529
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat (A135218 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A113125.P9602752051170809529

namespace A113125

/-- `C(1-C(∑[char[∑[n]]], 2)+n, A135218(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P9602752051170809529.Spec : Prop :=
  ∀ n, (P9602752051170809529.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P15518697778027576319

`C(A000005(A059268(n)), A173747(n))`
-/

namespace A113125.P15518697778027576319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A059268 n).toNat).toNat (A173747 n).toNat

end

end A113125.P15518697778027576319

namespace A113125

/-- `C(A000005(A059268(n)), A173747(n))` -/
def P15518697778027576319.Spec : Prop :=
  ∀ n, (P15518697778027576319.a n : ℤ) = A113125 n

end A113125

/-! ## A113125.P16947496788124153822

`C(A000005(A059268(n)), A173749(n))`
-/

namespace A113125.P16947496788124153822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A059268 n).toNat).toNat (A173749 n).toNat

end

end A113125.P16947496788124153822

namespace A113125

/-- `C(A000005(A059268(n)), A173749(n))` -/
def P16947496788124153822.Spec : Prop :=
  ∀ n, (P16947496788124153822.a n : ℤ) = A113125 n

end A113125

/-!
# A113126: A simple 4-diagonal matrix.

The programs for A113126, the canonical program `A113126.P12357649058000027626` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113126 has offset 0).

The definition of A113126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113126.P9775319200984479698

`C(A002260(n+1), A213211(n+1))`
-/

namespace A113126.P9775319200984479698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A213211 (n + 1)).toNat

end

end A113126.P9775319200984479698

namespace A113126

/-- `C(A002260(n+1), A213211(n+1))` -/
def P9775319200984479698.Spec : Prop :=
  ∀ n, (P9775319200984479698.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P16209995552761025943

`and(1, A122431(n))*A002260(n+1)`
-/

namespace A113126.P16209995552761025943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122431 n) * A002260 (n + 1)

end

end A113126.P16209995552761025943

namespace A113126

/-- `and(1, A122431(n))*A002260(n+1)` -/
def P16209995552761025943.Spec : Prop :=
  ∀ n, P16209995552761025943.a n = A113126 n

end A113126

/-! ## A113126.P12357649058000027626

`and(1, C(3, A004202(n+1)%(n+1)))*A002260(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113126

/-- `and(1, C(3, A004202(n+1)%(n+1)))*A002260(n+1)` -/
def P12357649058000027626.Spec : Prop :=
  ∀ n, P12357649058000027626.a n = A113126 n

theorem P12357649058000027626.correct : P12357649058000027626.Spec := by
  intro n
  simp only [A113126]

end A113126

/-! ## A113126.P3120222709751649322

`A113125(A134402(n)+A083920(n))`
-/

namespace A113126.P3120222709751649322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 (A134402 n + A083920 n).toNat

end

end A113126.P3120222709751649322

namespace A113126

/-- `A113125(A134402(n)+A083920(n))` -/
def P3120222709751649322.Spec : Prop :=
  ∀ n, P3120222709751649322.a n = A113126 n

end A113126

/-! ## A113126.P7495424028665513930

`A113125(A002262(n)+∑[A132440(n)])`
-/

namespace A113126.P7495424028665513930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 (A002262 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113126.P7495424028665513930

namespace A113126

/-- `A113125(A002262(n)+∑[A132440(n)])` -/
def P7495424028665513930.Spec : Prop :=
  ∀ n, P7495424028665513930.a n = A113126 n

end A113126

/-! ## A113126.P2682336939571912597

`C(A002260(n+1), A119326(n+2))`
-/

namespace A113126.P2682336939571912597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A119326 (n + 2)).toNat

end

end A113126.P2682336939571912597

namespace A113126

/-- `C(A002260(n+1), A119326(n+2))` -/
def P2682336939571912597.Spec : Prop :=
  ∀ n, (P2682336939571912597.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P12464579167595253632

`A095833(n+1)%A002024(n+5)`
-/

namespace A113126.P12464579167595253632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095833 (n + 1)) (A002024 (n + 5))

end

end A113126.P12464579167595253632

namespace A113126

/-- `A095833(n+1)%A002024(n+5)` -/
def P12464579167595253632.Spec : Prop :=
  ∀ n, P12464579167595253632.a n = A113126 n

end A113126

/-! ## A113126.P15763623215696888518

`C(A002260(n+1), A242784(n+2))`
-/

namespace A113126.P15763623215696888518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A242784 (n + 2)).toNat

end

end A113126.P15763623215696888518

namespace A113126

/-- `C(A002260(n+1), A242784(n+2))` -/
def P15763623215696888518.Spec : Prop :=
  ∀ n, (P15763623215696888518.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P4965877864463074844

`A002260(n+1)*A004530(A116598(n))`
-/

namespace A113126.P4965877864463074844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004530 (A116598 n).toNat

end

end A113126.P4965877864463074844

namespace A113126

/-- `A002260(n+1)*A004530(A116598(n))` -/
def P4965877864463074844.Spec : Prop :=
  ∀ n, P4965877864463074844.a n = A113126 n

end A113126

/-! ## A113126.P5642593151856688578

`C(A002260(n+1), A208673(n+2))`
-/

namespace A113126.P5642593151856688578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A208673 (n + 2)).toNat

end

end A113126.P5642593151856688578

namespace A113126

/-- `C(A002260(n+1), A208673(n+2))` -/
def P5642593151856688578.Spec : Prop :=
  ∀ n, (P5642593151856688578.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P17128996963181419142

`C(A002260(n+1), A219924(n+2))`
-/

namespace A113126.P17128996963181419142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A219924 (n + 2)).toNat

end

end A113126.P17128996963181419142

namespace A113126

/-- `C(A002260(n+1), A219924(n+2))` -/
def P17128996963181419142.Spec : Prop :=
  ∀ n, (P17128996963181419142.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P16687657045112899976

`A002260(n+1)%A004011(A235706(n))`
-/

namespace A113126.P16687657045112899976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A004011 (A235706 n).toNat)

end

end A113126.P16687657045112899976

namespace A113126

/-- `A002260(n+1)%A004011(A235706(n))` -/
def P16687657045112899976.Spec : Prop :=
  ∀ n, P16687657045112899976.a n = A113126 n

end A113126

/-! ## A113126.P16027579887307386346

`A002260(n+1)*A187036(A129713(n))`
-/

namespace A113126.P16027579887307386346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A187036 (A129713 n).toNat

end

end A113126.P16027579887307386346

namespace A113126

/-- `A002260(n+1)*A187036(A129713(n))` -/
def P16027579887307386346.Spec : Prop :=
  ∀ n, P16027579887307386346.a n = A113126 n

end A113126

/-! ## A113126.P15147042021385722533

`lcm(A000005(A059268(n)), A172090(n+2))`
-/

namespace A113126.P15147042021385722533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A059268 n).toNat) (A172090 (n + 2))

end

end A113126.P15147042021385722533

namespace A113126

/-- `lcm(A000005(A059268(n)), A172090(n+2))` -/
def P15147042021385722533.Spec : Prop :=
  ∀ n, (P15147042021385722533.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P10708356185938527378

`C(A000005(A059268(n)), A208673(n+2))`
-/

namespace A113126.P10708356185938527378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A059268 n).toNat).toNat (A208673 (n + 2)).toNat

end

end A113126.P10708356185938527378

namespace A113126

/-- `C(A000005(A059268(n)), A208673(n+2))` -/
def P10708356185938527378.Spec : Prop :=
  ∀ n, (P10708356185938527378.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P13093599054443174400

`C(A000005(A059268(n)), A291709(n+3))`
-/

namespace A113126.P13093599054443174400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A059268 n).toNat).toNat (A291709 (n + 3)).toNat

end

end A113126.P13093599054443174400

namespace A113126

/-- `C(A000005(A059268(n)), A291709(n+3))` -/
def P13093599054443174400.Spec : Prop :=
  ∀ n, (P13093599054443174400.a n : ℤ) = A113126 n

end A113126

/-! ## A113126.P16832160600257763187

`A002260(n+1)*A131364(A130321(n))`
-/

namespace A113126.P16832160600257763187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A131364 (A130321 n).toNat

end

end A113126.P16832160600257763187

namespace A113126

/-- `A002260(n+1)*A131364(A130321(n))` -/
def P16832160600257763187.Spec : Prop :=
  ∀ n, P16832160600257763187.a n = A113126 n

end A113126

/-! ## A113126.P3841595442742076387

`A002260(n+1)*A102460(A258709(n))`
-/

namespace A113126.P3841595442742076387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A102460 (A258709 n).toNat

end

end A113126.P3841595442742076387

namespace A113126

/-- `A002260(n+1)*A102460(A258709(n))` -/
def P3841595442742076387.Spec : Prop :=
  ∀ n, P3841595442742076387.a n = A113126 n

end A113126

/-!
# A113127: Expansion of (1 + x + x^2 + x^3)/(1-x)^2.

The programs for A113127, the canonical program `A113127.P3379258629479526919` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113127 has offset 0).

The definition of A113127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113127.P3379258629479526919

`a(n-1)+4` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A113127

/-- `a(n-1)+4` -/
def P3379258629479526919.Spec : Prop :=
  ∀ n, (P3379258629479526919.a n : ℤ) = A113127 n

theorem P3379258629479526919.correct : P3379258629479526919.Spec := by
  intro n
  simp only [A113127]

end A113127

/-!
# A113128: A simple 4-diagonal matrix based on (1+x)^3.

The programs for A113128, the canonical program `A113128.P8538014037179517587` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113128 has offset 0).

The definition of A113128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113128.P13383101964903052011

`(1-C(∑[char[∑[n]]], 2)+n)*A122431(n)`
-/

namespace A113128.P13383101964903052011
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A122431 n

end

end A113128.P13383101964903052011

namespace A113128

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A122431(n)` -/
def P13383101964903052011.Spec : Prop :=
  ∀ n, P13383101964903052011.a n = A113128 n

end A113128

/-! ## A113128.P17606178253965548944

`A113126(n)*A122431(n)`
-/

namespace A113128.P17606178253965548944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113126 n * A122431 n

end

end A113128.P17606178253965548944

namespace A113128

/-- `A113126(n)*A122431(n)` -/
def P17606178253965548944.Spec : Prop :=
  ∀ n, P17606178253965548944.a n = A113128 n

end A113128

/-! ## A113128.P6157669813218873868

`A002260(n+1)*A122431(n)`
-/

namespace A113128.P6157669813218873868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A122431 n

end

end A113128.P6157669813218873868

namespace A113128

/-- `A002260(n+1)*A122431(n)` -/
def P6157669813218873868.Spec : Prop :=
  ∀ n, P6157669813218873868.a n = A113128 n

end A113128

/-! ## A113128.P5888422551115917180

`(A002262(n)+1)*A122431(n)`
-/

namespace A113128.P5888422551115917180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A122431 n

end

end A113128.P5888422551115917180

namespace A113128

/-- `(A002262(n)+1)*A122431(n)` -/
def P5888422551115917180.Spec : Prop :=
  ∀ n, P5888422551115917180.a n = A113128 n

end A113128

/-! ## A113128.P17295110337328427558

`abs(A140756(n+1))*A122431(n)`
-/

namespace A113128.P17295110337328427558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * A122431 n

end

end A113128.P17295110337328427558

namespace A113128

/-- `abs(A140756(n+1))*A122431(n)` -/
def P17295110337328427558.Spec : Prop :=
  ∀ n, P17295110337328427558.a n = A113128 n

end A113128

/-! ## A113128.P8538014037179517587

`C(3, A025581(n))*A002260(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113128

/-- `C(3, A025581(n))*A002260(n+1)` -/
def P8538014037179517587.Spec : Prop :=
  ∀ n, P8538014037179517587.a n = A113128 n

theorem P8538014037179517587.correct : P8538014037179517587.Spec := by
  intro n
  simp only [A113128]

end A113128

/-! ## A113128.P11639600986025136314

`A002260(n+1)*A034188(A099375(n))`
-/

namespace A113128.P11639600986025136314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A034188 (A099375 n).toNat

end

end A113128.P11639600986025136314

namespace A113128

/-- `A002260(n+1)*A034188(A099375(n))` -/
def P11639600986025136314.Spec : Prop :=
  ∀ n, P11639600986025136314.a n = A113128 n

end A113128

/-! ## A113128.P18224232350988475973

`A097285(2*n+1)*A122431(n)`
-/

namespace A113128.P18224232350988475973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * n + 1) * A122431 n

end

end A113128.P18224232350988475973

namespace A113128

/-- `A097285(2*n+1)*A122431(n)` -/
def P18224232350988475973.Spec : Prop :=
  ∀ n, P18224232350988475973.a n = A113128 n

end A113128

/-! ## A113128.P1319631298076761922

`A000005(A059268(n))*A122431(n)`
-/

namespace A113128.P1319631298076761922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A122431 n

end

end A113128.P1319631298076761922

namespace A113128

/-- `A000005(A059268(n))*A122431(n)` -/
def P1319631298076761922.Spec : Prop :=
  ∀ n, P1319631298076761922.a n = A113128 n

end A113128

/-! ## A113128.P947863415678265388

`A001222(A078840(n+1))*A122431(n)`
-/

namespace A113128.P947863415678265388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078840 (n + 1)).toNat * A122431 n

end

end A113128.P947863415678265388

namespace A113128

/-- `A001222(A078840(n+1))*A122431(n)` -/
def P947863415678265388.Spec : Prop :=
  ∀ n, P947863415678265388.a n = A113128 n

end A113128

/-!
# A113129: Triangle T(n,k), 0<=k<=n, of coefficients of polynomials P_n(x) related to convolution of the k-fold factorials.

The programs for A113129, there is no canonical definition to state claims against.
-/

/-! ## A113129.P3743541269195199956

`C(A227550(n), A303954(A322384(n+1)))`
-/

namespace A113129.P3743541269195199956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A227550 n).toNat (A303954 (A322384 (n + 1)).toNat).toNat

end

end A113129.P3743541269195199956

/-! ## A113129.P5051768586309695261

`A325678(A369321(n)²)`
-/

namespace A113129.P5051768586309695261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A369321 n ^ 2).toNat

end

end A113129.P5051768586309695261

/-! ## A113129.P3090299401086303690

`A115064(n)*A182114(n)`
-/

namespace A113129.P3090299401086303690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115064 n * A182114 n

end

end A113129.P3090299401086303690

/-! ## A113129.P4185890769026319943

`A326031(A122950(n)^((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A113129.P4185890769026319943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (SequenceMachineLib.roundAway ((A122950 n : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ))).toNat

end

end A113129.P4185890769026319943

/-! ## A113129.P16068220540288202521

`A125005(A000124(n))+A122890(n)`
-/

namespace A113129.P16068220540288202521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A000124 n).toNat + A122890 n

end

end A113129.P16068220540288202521

/-!
# A113130: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 3.

The programs for A113130, there is no canonical definition to state claims against.
-/

/-! ## A113130.P17393155959727237929

`A326041(A084358(n)+A051731(n+1))`
-/

namespace A113130.P17393155959727237929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 (A084358 n + A051731 (n + 1)).toNat

end

end A113130.P17393155959727237929

/-! ## A113130.P6285309013740651796

`A326041(A084358(n)+A065333(n+1))`
-/

namespace A113130.P6285309013740651796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 (A084358 n + A065333 (n + 1)).toNat

end

end A113130.P6285309013740651796

/-!
# A113131: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 4.

The programs for A113131, there is no canonical definition to state claims against.
-/

/-! ## A113131.P9021675194031401945

`A132881(A001147(n))*A233436(n)`
-/

namespace A113131.P9021675194031401945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A001147 n).toNat * A233436 n

end

end A113131.P9021675194031401945

/-! ## A113131.P11057823146178757935

`and(A000203(A188406(n)), A193421(n))`
-/

namespace A113131.P11057823146178757935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A188406 n).toNat) (A193421 n)

end

end A113131.P11057823146178757935

/-!
# A113132: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 5.

The programs for A113132, there is no canonical definition to state claims against.
-/

/-! ## A113132.P6641672870464326297

`A000001(ceil(6^n/3))`
-/

namespace A113132.P6641672870464326297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 ⌈(6 ^ n : ℚ) / 3⌉.toNat

end

end A113132.P6641672870464326297

/-!
# A113133: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 6.

The programs for A113133, there is no canonical definition to state claims against.
-/

/-! ## A113133.P2109678770067340803

`A216762(A077365(n))`
-/

namespace A113133.P2109678770067340803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216762 (A077365 n).toNat

end

end A113133.P2109678770067340803

/-!
# A113134: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 7.

The programs for A113134, there is no canonical definition to state claims against.
-/

/-! ## A113134.P18362468707293521750

`A256618(n*floor(14*a(n-1)/5)+1)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=98`
-/

namespace A113134.P18362468707293521750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 98] fun n a =>
  A256618 ((n : ℤ) * ⌊(14 * a (n - 1) : ℚ) / 5⌋ + 1).toNat

end

end A113134.P18362468707293521750

/-!
# A113135: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 8.

The programs for A113135, there is no canonical definition to state claims against.
-/

/-! ## A113135.P14537359291127203566

`4*A007607((n-1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A113135.P14537359291127203566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * A007607 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A113135.P14537359291127203566

/-!
# A113139: Number triangle, equal to half of Delannoy square array A008288.

The programs for A113139, there is no canonical definition to state claims against.
-/

/-! ## A113139.P1897386762553808606

`A008288(A245300(A061579(n)))`
-/

namespace A113139.P1897386762553808606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A245300 (A061579 n).toNat).toNat

end

end A113139.P1897386762553808606

/-! ## A113139.P10454661934208319107

`A050328(A036561(n)*A140303(n))`
-/

namespace A113139.P10454661934208319107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A036561 n * A140303 n).toNat

end

end A113139.P10454661934208319107

/-! ## A113139.P3958441736564698333

`A050328(A098355(n)*A130321(n))`
-/

namespace A113139.P3958441736564698333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A098355 n * A130321 n).toNat

end

end A113139.P3958441736564698333

/-! ## A113139.P8123675898685676689

`A050328(A137688(n)*A140303(n))`
-/

namespace A113139.P8123675898685676689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A137688 n * A140303 n).toNat

end

end A113139.P8123675898685676689

/-! ## A113139.P13638245858715059133

`A050328(lcm(A036561(n), A098355(n)))`
-/

namespace A113139.P13638245858715059133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (Int.lcm (A036561 n) (A098355 n))

end

end A113139.P13638245858715059133

/-!
# A113140: Diagonal sums of a Delannoy related triangle.

The programs for A113140, there is no canonical definition to state claims against.
-/

/-! ## A113140.P15740595481275690877

`A347690(A001181(n)*A061854(n+1))`
-/

namespace A113140.P15740595481275690877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347690 (A001181 n * A061854 (n + 1)).toNat

end

end A113140.P15740595481275690877

/-!
# A113142: Expansion of x(1-3x+x^2+x^3)/(1+x)^2.

The programs for A113142, the canonical program `A113142.P14929086156183231685` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113142 has offset 0).

The definition of A113142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113142.P11241585489213794125

`A263013(n)-A161718(n)`
-/

namespace A113142.P11241585489213794125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n - A161718 n

end

end A113142.P11241585489213794125

namespace A113142

/-- `A263013(n)-A161718(n)` -/
def P11241585489213794125.Spec : Prop :=
  ∀ n, P11241585489213794125.a n = A113142 n

end A113142

/-! ## A113142.P14929086156183231685

`(A336705(n)-2)*A062157(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113142

/-- `(A336705(n)-2)*A062157(n)` -/
def P14929086156183231685.Spec : Prop :=
  ∀ n, P14929086156183231685.a n = A113142 n

theorem P14929086156183231685.correct : P14929086156183231685.Spec := by
  intro n
  simp only [A113142]

end A113142

/-! ## A113142.P12308204776471250232

`Δ[Δ[A019425(n)+char[2]]]`
-/

namespace A113142.P12308204776471250232
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113142.P12308204776471250232

namespace A113142

/-- `Δ[Δ[A019425(n)+char[2]]]` -/
def P12308204776471250232.Spec : Prop :=
  ∀ n, P12308204776471250232.a n = A113142 n

end A113142

/-! ## A113142.P12397535834032229073

`A062157(n)*A289207(A336705(n))`
-/

namespace A113142.P12397535834032229073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A289207 (A336705 n).toNat

end

end A113142.P12397535834032229073

namespace A113142

/-- `A062157(n)*A289207(A336705(n))` -/
def P12397535834032229073.Spec : Prop :=
  ∀ n, P12397535834032229073.a n = A113142 n

end A113142

/-! ## A113142.P6763599534840142261

`A033999(n+1)*A289207(A336705(n))`
-/

namespace A113142.P6763599534840142261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A289207 (A336705 n).toNat

end

end A113142.P6763599534840142261

namespace A113142

/-- `A033999(n+1)*A289207(A336705(n))` -/
def P6763599534840142261.Spec : Prop :=
  ∀ n, P6763599534840142261.a n = A113142 n

end A113142

/-! ## A113142.P12393216611815448331

`A141679(A052905(n))-A161718(n)`
-/

namespace A113142.P12393216611815448331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141679 (A052905 n).toNat - A161718 n

end

end A113142.P12393216611815448331

namespace A113142

/-- `A141679(A052905(n))-A161718(n)` -/
def P12393216611815448331.Spec : Prop :=
  ∀ n, P12393216611815448331.a n = A113142 n

end A113142

/-! ## A113142.P13852113613493416958

`A154269(A101278(n))-A161718(n)`
-/

namespace A113142.P13852113613493416958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A101278 n).toNat - A161718 n

end

end A113142.P13852113613493416958

namespace A113142

/-- `A154269(A101278(n))-A161718(n)` -/
def P13852113613493416958.Spec : Prop :=
  ∀ n, P13852113613493416958.a n = A113142 n

end A113142

/-! ## A113142.P11544634117563947477

`Δ[A340945(A004275(n)²-n)]`
-/

namespace A113142.P11544634117563947477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340945 (A004275 n ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113142.P11544634117563947477

namespace A113142

/-- `Δ[A340945(A004275(n)²-n)]` -/
def P11544634117563947477.Spec : Prop :=
  ∀ n, P11544634117563947477.a n = A113142 n

end A113142

/-!
# A113143: Table T(n,k), n >= 0 and k >= 0, read by antidiagonals, related to A111146.

The programs for A113143, there is no canonical definition to state claims against.
-/

/-! ## A113143.P13488842728612584594

`A382152(A381369(n))`
-/

namespace A113143.P13488842728612584594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A381369 n).toNat

end

end A113143.P13488842728612584594

/-! ## A113143.P229731281185455065

`A001222(2^A381369(n))`
-/

namespace A113143.P229731281185455065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381369 n : ℤ))).toNat

end

end A113143.P229731281185455065

/-! ## A113143.P15213564629512793429

`A051903(2^A381369(n))`
-/

namespace A113143.P15213564629512793429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381369 n : ℤ))).toNat

end

end A113143.P15213564629512793429

/-! ## A113143.P7488912029761571127

`A373370(2^A381369(n))`
-/

namespace A113143.P7488912029761571127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373370 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381369 n : ℤ))).toNat

end

end A113143.P7488912029761571127

/-! ## A113143.P10202917471824443684

`A381369(n)%A117065(n+1)`
-/

namespace A113143.P10202917471824443684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381369 n) (A117065 (n + 1))

end

end A113143.P10202917471824443684

/-!
# A113144: Row 3 of table A113143; equal to INVERT of triple (or 3-fold) factorials shifted one place right.

The programs for A113144, there is no canonical definition to state claims against.
-/

/-! ## A113144.P6372119777965109284

`A113143(A174116(n)+A052905(n+1))`
-/

namespace A113144.P6372119777965109284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (A174116 n + A052905 (n + 1)).toNat

end

end A113144.P6372119777965109284

/-! ## A113144.P3699440072000584469

`A113143(lt[A291978(n+3), A072781(n)])`
-/

namespace A113144.P3699440072000584469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291978 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113144.P3699440072000584469

/-! ## A113144.P2809633298438086549

`A113143(lt[A133643(n+5), A025581(n)])`
-/

namespace A113144.P2809633298438086549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133643 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113144.P2809633298438086549

/-!
# A113145: Row 4 of table A113143; equal to INVERT of quartic (or 4-fold) factorials shifted one place right.

The programs for A113145, there is no canonical definition to state claims against.
-/

/-! ## A113145.P14470548274418936591

`A113143(C(n+5, 2)+n)`
-/

namespace A113145.P14470548274418936591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (Nat.choose (n + 5) 2 + n)

end

end A113145.P14470548274418936591

/-! ## A113145.P16891384977062887824

`A113143(2*n+∑[n+3]+7)`
-/

namespace A113145.P16891384977062887824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A113145.P16891384977062887824

/-! ## A113145.P7819975950101337207

`A113143(A052905(n+2))%A125490(n+1)`
-/

namespace A113145.P7819975950101337207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113143 (A052905 (n + 2)).toNat) (A125490 (n + 1))

end

end A113145.P7819975950101337207

/-!
# A113146: Row 5 of table A113143; equal to INVERT of quintic (or 5-fold) factorials shifted one place right.

The programs for A113146, there is no canonical definition to state claims against.
-/

/-! ## A113146.P11168171106577307644

`A113143(A055999(n+3))`
-/

namespace A113146.P11168171106577307644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (A055999 (n + 3)).toNat

end

end A113146.P11168171106577307644

/-! ## A113146.P14350644226327549317

`A113143(eq[2, A117274(n)])`
-/

namespace A113146.P14350644226327549317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113146.P14350644226327549317

/-!
# A113147: Row 6 of table A113143; equal to INVERT of 6-fold factorials shifted one place right.

The programs for A113147, there is no canonical definition to state claims against.
-/

/-! ## A113147.P18182978955449492066

`A343754(A001035(n))+1`
-/

namespace A113147.P18182978955449492066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343754 (A001035 n).toNat + 1

end

end A113147.P18182978955449492066

/-! ## A113147.P6448745128721388491

`A008621(A135749(n)+A001833(n))`
-/

namespace A113147.P6448745128721388491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A135749 n + A001833 n).toNat

end

end A113147.P6448745128721388491

/-!
# A113148: Row 7 of table A113143; equal to INVERT of 7-fold factorials shifted one place right.

The programs for A113148, there is no canonical definition to state claims against.
-/

/-! ## A113148.P9804818315665763775

`A194920(A351019(n)+A000332(n))`
-/

namespace A113148.P9804818315665763775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A351019 n + A000332 n).toNat

end

end A113148.P9804818315665763775

/-!
# A113149: Row 8 of table A113143; equal to INVERT of 8-fold factorials shifted one place right.

The programs for A113149, there is no canonical definition to state claims against.
-/

/-! ## A113149.P4588605891817198542

`A228354(n!)`
-/

namespace A113149.P4588605891817198542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (Nat.factorial n)

end

end A113149.P4588605891817198542

/-!
# A113151: Primes p such that 19*p + 2 is also prime.

The programs for A113151, the canonical program `A113151.P9338455062429795251` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113151 has offset 1).

The definition of A113151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113151.P9338455062429795251

`p?[A113488(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113151

/-- `p?[A113488(n+1)]` -/
def P9338455062429795251.Spec : Prop :=
  ∀ n, P9338455062429795251.a n = A113151 (n + 1)

theorem P9338455062429795251.correct : P9338455062429795251.Spec := by
  intro n
  simp only [A113151, Nat.add_sub_cancel]

end A113151

/-! ## A113151.P7115916985140893305

`∩[A040028(n+1), A113488(n+1)]`
-/

namespace A113151.P7115916985140893305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P7115916985140893305

namespace A113151

/-- `∩[A040028(n+1), A113488(n+1)]` -/
def P7115916985140893305.Spec : Prop :=
  ∀ n, (P7115916985140893305.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P14124514533695326846

`∩[A040036(n+1), A113488(n+1)]`
-/

namespace A113151.P14124514533695326846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P14124514533695326846

namespace A113151

/-- `∩[A040036(n+1), A113488(n+1)]` -/
def P14124514533695326846.Spec : Prop :=
  ∀ n, (P14124514533695326846.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P11825432424235608463

`∩[A040044(n+1), A113488(n+1)]`
-/

namespace A113151.P11825432424235608463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P11825432424235608463

namespace A113151

/-- `∩[A040044(n+1), A113488(n+1)]` -/
def P11825432424235608463.Spec : Prop :=
  ∀ n, (P11825432424235608463.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P7282742346803028916

`∩[A040046(n+1), A113488(n+1)]`
-/

namespace A113151.P7282742346803028916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P7282742346803028916

namespace A113151

/-- `∩[A040046(n+1), A113488(n+1)]` -/
def P7282742346803028916.Spec : Prop :=
  ∀ n, (P7282742346803028916.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P6548950536369133572

`∩[A040049(n+1), A113488(n+1)]`
-/

namespace A113151.P6548950536369133572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P6548950536369133572

namespace A113151

/-- `∩[A040049(n+1), A113488(n+1)]` -/
def P6548950536369133572.Spec : Prop :=
  ∀ n, (P6548950536369133572.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P11370548749435662338

`∩[A040054(n+1), A113488(n+1)]`
-/

namespace A113151.P11370548749435662338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P11370548749435662338

namespace A113151

/-- `∩[A040054(n+1), A113488(n+1)]` -/
def P11370548749435662338.Spec : Prop :=
  ∀ n, (P11370548749435662338.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P13411975749017264744

`∩[A040060(n+1), A113488(n+1)]`
-/

namespace A113151.P13411975749017264744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P13411975749017264744

namespace A113151

/-- `∩[A040060(n+1), A113488(n+1)]` -/
def P13411975749017264744.Spec : Prop :=
  ∀ n, (P13411975749017264744.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P15871860620581837816

`∩[A040062(n+1), A113488(n+1)]`
-/

namespace A113151.P15871860620581837816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P15871860620581837816

namespace A113151

/-- `∩[A040062(n+1), A113488(n+1)]` -/
def P15871860620581837816.Spec : Prop :=
  ∀ n, (P15871860620581837816.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P13149368944810451821

`∩[A040065(n+1), A113488(n+1)]`
-/

namespace A113151.P13149368944810451821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P13149368944810451821

namespace A113151

/-- `∩[A040065(n+1), A113488(n+1)]` -/
def P13149368944810451821.Spec : Prop :=
  ∀ n, (P13149368944810451821.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P13343180973675313998

`∩[A040078(n+1), A113488(n+1)]`
-/

namespace A113151.P13343180973675313998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P13343180973675313998

namespace A113151

/-- `∩[A040078(n+1), A113488(n+1)]` -/
def P13343180973675313998.Spec : Prop :=
  ∀ n, (P13343180973675313998.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P764451887123622608

`∩[A040083(n+1), A113488(n+1)]`
-/

namespace A113151.P764451887123622608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P764451887123622608

namespace A113151

/-- `∩[A040083(n+1), A113488(n+1)]` -/
def P764451887123622608.Spec : Prop :=
  ∀ n, (P764451887123622608.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P14287370622704245824

`∩[A040085(n+1), A113488(n+1)]`
-/

namespace A113151.P14287370622704245824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P14287370622704245824

namespace A113151

/-- `∩[A040085(n+1), A113488(n+1)]` -/
def P14287370622704245824.Spec : Prop :=
  ∀ n, (P14287370622704245824.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P14670291281633500066

`∩[A040087(n+1), A113488(n+1)]`
-/

namespace A113151.P14670291281633500066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P14670291281633500066

namespace A113151

/-- `∩[A040087(n+1), A113488(n+1)]` -/
def P14670291281633500066.Spec : Prop :=
  ∀ n, (P14670291281633500066.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P1760065345106297059

`∩[A040089(n+1), A113488(n+1)]`
-/

namespace A113151.P1760065345106297059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P1760065345106297059

namespace A113151

/-- `∩[A040089(n+1), A113488(n+1)]` -/
def P1760065345106297059.Spec : Prop :=
  ∀ n, (P1760065345106297059.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P3154098331158313851

`∩[A040095(n+1), A113488(n+1)]`
-/

namespace A113151.P3154098331158313851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P3154098331158313851

namespace A113151

/-- `∩[A040095(n+1), A113488(n+1)]` -/
def P3154098331158313851.Spec : Prop :=
  ∀ n, (P3154098331158313851.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P8335635865684387032

`∩[A045309(n+1), A113488(n+1)]`
-/

namespace A113151.P8335635865684387032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P8335635865684387032

namespace A113151

/-- `∩[A045309(n+1), A113488(n+1)]` -/
def P8335635865684387032.Spec : Prop :=
  ∀ n, (P8335635865684387032.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P9610031758677194660

`∩[A045405(n+1), A113488(n+1)]`
-/

namespace A113151.P9610031758677194660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P9610031758677194660

namespace A113151

/-- `∩[A045405(n+1), A113488(n+1)]` -/
def P9610031758677194660.Spec : Prop :=
  ∀ n, (P9610031758677194660.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P4978723470222088360

`∩[A049596(n+1), A113488(n+1)]`
-/

namespace A113151.P4978723470222088360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P4978723470222088360

namespace A113151

/-- `∩[A049596(n+1), A113488(n+1)]` -/
def P4978723470222088360.Spec : Prop :=
  ∀ n, (P4978723470222088360.a n : ℤ) = A113151 (n + 1)

end A113151

/-! ## A113151.P241593435921100830

`∩[A042997(n+1), A113488(n+1)]`
-/

namespace A113151.P241593435921100830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113151.P241593435921100830

namespace A113151

/-- `∩[A042997(n+1), A113488(n+1)]` -/
def P241593435921100830.Spec : Prop :=
  ∀ n, (P241593435921100830.a n : ℤ) = A113151 (n + 1)

end A113151

/-!
# A113153: Sum of the first n nonzero tribonacci numbers, in ascending order, as bases, with the same, in descending order, as exponents.

The programs for A113153, there is no canonical definition to state claims against.
-/

/-! ## A113153.P13179189089872818780

`A360243(A027423(n))+A049820(2*(n+1))`
-/

namespace A113153.P13179189089872818780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360243 (A027423 n).toNat + A049820 (2 * (n + 1))

end

end A113153.P13179189089872818780

/-!
# A113161: a(1) = 1; for n > 1, a(n) = largest prime <= a(n-1) + n - 1.

The programs for A113161, the canonical program `A113161.P7234913530930346429` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113161 has offset 1).

The definition of A113161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113161.P7234913530930346429

`A000040(A000720(a(n-1)+n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113161

/-- `A000040(A000720(a(n-1)+n))` -/
def P7234913530930346429.Spec : Prop :=
  ∀ n, P7234913530930346429.a n = A113161 (n + 1)

theorem P7234913530930346429.correct : P7234913530930346429.Spec := by
  intro n
  simp only [A113161, Nat.add_sub_cancel]

end A113161

/-! ## A113161.P5109734114234798138

`A007917(a(n-1)+n)` with `a(0)=1`
-/

namespace A113161.P5109734114234798138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007917 (a (n - 1) + (n : ℤ)).toNat

end

end A113161.P5109734114234798138

namespace A113161

/-- `A007917(a(n-1)+n)` -/
def P5109734114234798138.Spec : Prop :=
  ∀ n, P5109734114234798138.a n = A113161 (n + 1)

end A113161

/-! ## A113161.P18301792565278383560

`A000040(A230980(a(n-1)+n))` with `a(0)=1`
-/

namespace A113161.P18301792565278383560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A230980 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A113161.P18301792565278383560

namespace A113161

/-- `A000040(A230980(a(n-1)+n))` -/
def P18301792565278383560.Spec : Prop :=
  ∀ n, P18301792565278383560.a n = A113161 (n + 1)

end A113161

/-! ## A113161.P8237271027720236140

`A136548(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A113161.P8237271027720236140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136548 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A113161.P8237271027720236140

namespace A113161

/-- `A136548(a(n-1)+1+n)` -/
def P8237271027720236140.Spec : Prop :=
  ∀ n, P8237271027720236140.a n = A113161 (n + 1)

end A113161

/-! ## A113161.P14753930539552956195

`A136548(a(n-1)-xor(n, -1))` with `a(0)=1`
-/

namespace A113161.P14753930539552956195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136548 (a (n - 1) - Int.xor (n : ℤ) (-1)).toNat

end

end A113161.P14753930539552956195

namespace A113161

/-- `A136548(a(n-1)-xor(n, -1))` -/
def P14753930539552956195.Spec : Prop :=
  ∀ n, P14753930539552956195.a n = A113161 (n + 1)

end A113161

/-!
# A113165: Numbers that divide primorial numbers plus one (p#+1).

The programs for A113165, there is no canonical definition to state claims against.
-/

/-! ## A113165.P4575521753910777063

`eq[n, A028310(A327663(n+1))]+1`
-/

namespace A113165.P4575521753910777063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A327663 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A113165.P4575521753910777063

/-! ## A113165.P15706909835088580622

`record[gcd(A327663(n+2)+1, A319626(n+2))]`
-/

namespace A113165.P15706909835088580622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327663 (n + 2) + 1) (A319626 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113165.P15706909835088580622

/-! ## A113165.P10832933194371147975

`A319626(record[(n+1)*(A327663(n+2)-n)]+1)`
-/

namespace A113165.P10832933194371147975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A327663 (n + 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A113165.P10832933194371147975

/-! ## A113165.P3432293207310228833

`A020725(eq[A028310(n), A327663(n+1)])`
-/

namespace A113165.P3432293207310228833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A113165.P3432293207310228833

/-! ## A113165.P7864619651047475081

`A000040(A279097(n+1))+A000038(A003215(n))`
-/

namespace A113165.P7864619651047475081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A279097 (n + 1)).toNat + A000038 (A003215 n).toNat

end

end A113165.P7864619651047475081

/-! ## A113165.P10119622838887073059

`A000007(A092098(n+1))+A000040(A279097(n+1))`
-/

namespace A113165.P10119622838887073059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A092098 (n + 1)).toNat + A000040 (A279097 (n + 1)).toNat

end

end A113165.P10119622838887073059

/-!
# A113166: a(n) = Sum_{d|n} A000010(n/d) * A000045(d-1).

The programs for A113166, the canonical program `A113166.P13206333978101695091` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113166 has offset 1).

The definition of A113166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113166.P13206333978101695091

`∑{d}[n+1, #*A381936((n+1)/#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A113166

/-- `∑{d}[n+1, #*A381936((n+1)/#)]` -/
def P13206333978101695091.Spec : Prop :=
  ∀ n, P13206333978101695091.a n = A113166 (n + 1)

theorem P13206333978101695091.correct : P13206333978101695091.Spec := by
  intro n
  simp only [A113166, Nat.add_sub_cancel]

end A113166

/-! ## A113166.P3598090868711970747

`A113486(n+1)+A000045(n)`
-/

namespace A113166.P3598090868711970747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + A000045 n

end

end A113166.P3598090868711970747

namespace A113166

/-- `A113486(n+1)+A000045(n)` -/
def P3598090868711970747.Spec : Prop :=
  ∀ n, P3598090868711970747.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P12617340901586975547

`A113486(n+1)+abs(A236191(n))`
-/

namespace A113166.P12617340901586975547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + |A236191 n|

end

end A113166.P12617340901586975547

namespace A113166

/-- `A113486(n+1)+abs(A236191(n))` -/
def P12617340901586975547.Spec : Prop :=
  ∀ n, P12617340901586975547.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P3337693207187771353

`A113486(n+1)+A001611(n)-1`
-/

namespace A113166.P3337693207187771353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + (A001611 n - 1)

end

end A113166.P3337693207187771353

namespace A113166

/-- `A113486(n+1)+A001611(n)-1` -/
def P3337693207187771353.Spec : Prop :=
  ∀ n, P3337693207187771353.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P15877313770927068002

`A113486(n+1)+A103609(2*n)`
-/

namespace A113166.P15877313770927068002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + A103609 (2 * n)

end

end A113166.P15877313770927068002

namespace A113166

/-- `A113486(n+1)+A103609(2*n)` -/
def P15877313770927068002.Spec : Prop :=
  ∀ n, P15877313770927068002.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P2946061318301250550

`∑{d}[n+1, A000045(#-1)*A000010((n+1)/#)]`
-/

namespace A113166.P2946061318301250550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (d - 1) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113166.P2946061318301250550

namespace A113166

/-- `∑{d}[n+1, A000045(#-1)*A000010((n+1)/#)]` -/
def P2946061318301250550.Spec : Prop :=
  ∀ n, P2946061318301250550.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P16266266632785118653

`A113486(n+1)+A053602(2*n)`
-/

namespace A113166.P16266266632785118653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + A053602 (2 * n)

end

end A113166.P16266266632785118653

namespace A113166

/-- `A113486(n+1)+A053602(2*n)` -/
def P16266266632785118653.Spec : Prop :=
  ∀ n, P16266266632785118653.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P10181469780707447117

`A113486(n+1)+Δ[A000071(n+1)]`
-/

namespace A113166.P10181469780707447117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + (f1 (n + 1) - f1 n)

end

end A113166.P10181469780707447117

namespace A113166

/-- `A113486(n+1)+Δ[A000071(n+1)]` -/
def P10181469780707447117.Spec : Prop :=
  ∀ n, P10181469780707447117.a n = A113166 (n + 1)

end A113166

/-! ## A113166.P6527899550593860048

`A113486(n+1)+A039913(∑[n])`
-/

namespace A113166.P6527899550593860048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113486 (n + 1) + A039913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113166.P6527899550593860048

namespace A113166

/-- `A113486(n+1)+A039913(∑[n])` -/
def P6527899550593860048.Spec : Prop :=
  ∀ n, P6527899550593860048.a n = A113166 (n + 1)

end A113166

/-!
# A113168: a(n) is the sum of digits of the first n palindromes.

The programs for A113168, there is no canonical definition to state claims against.
-/

/-! ## A113168.P17015380811483989129

`∑[A043269(n+1)]`
-/

namespace A113168.P17015380811483989129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P17015380811483989129

/-! ## A113168.P15697289993383363431

`∑[∑{digits}[A002113(n+1), #]]`
-/

namespace A113168.P15697289993383363431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P15697289993383363431

/-! ## A113168.P16132896189510876529

`∑[∑{digits}[A014187(n)^(1/3), #]]`
-/

namespace A113168.P16132896189510876529
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f2 n)).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P16132896189510876529

/-! ## A113168.P616526556024621886

`∑[∑{digits}[eq[0, A261424(n)], #]]`
-/

namespace A113168.P616526556024621886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P616526556024621886

/-! ## A113168.P12052897785443523365

`∑[∑{digits}[record[A047813(n)], #]]`
-/

namespace A113168.P12052897785443523365
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P12052897785443523365

/-! ## A113168.P14222771367445063585

`∑[∑{digits}[record[A262087(n)], #]]`
-/

namespace A113168.P14222771367445063585
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P14222771367445063585

/-! ## A113168.P2175863635739074014

`∑[∑{digits}[record[A265525(n)], #]]`
-/

namespace A113168.P2175863635739074014
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P2175863635739074014

/-! ## A113168.P4420704858832526010

`∑[∑{digits}[record[A331472(n)], #]]`
-/

namespace A113168.P4420704858832526010
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P4420704858832526010

/-! ## A113168.P8058453205570893727

`∑[∑{digits}[eq[0, A319387(n)], #]]`
-/

namespace A113168.P8058453205570893727
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P8058453205570893727

/-! ## A113168.P16700452085077356074

`∑[∑{digits}[lt[A241173(n), 1], #]]`
-/

namespace A113168.P16700452085077356074
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P16700452085077356074

/-! ## A113168.P4088693014356099544

`∑[∑{digits}[lt[A262257(n), 1], #]]`
-/

namespace A113168.P4088693014356099544
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P4088693014356099544

/-! ## A113168.P353410011617886420

`∑[∑{digits}[lt[A338827(n), 1], #]]`
-/

namespace A113168.P353410011617886420
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113168.P353410011617886420

/-!
# A113169: Primes p such that 13*p + 2 is also prime.

The programs for A113169, the canonical program `A113169.P5794704079807078136` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113169 has offset 1).

The definition of A113169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113169.P5794704079807078136

`p?[floor(A141858(n+1)/13)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113169

/-- `p?[floor(A141858(n+1)/13)]` -/
def P5794704079807078136.Spec : Prop :=
  ∀ n, P5794704079807078136.a n = A113169 (n + 1)

theorem P5794704079807078136.correct : P5794704079807078136.Spec := by
  intro n
  simp only [A113169, Nat.add_sub_cancel]

end A113169

/-! ## A113169.P14386535201027013592

`∩[A000040(n+1), floor(A141858(n+1)/13)]`
-/

namespace A113169.P14386535201027013592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141858 (n + 1) : ℚ) / 13⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113169.P14386535201027013592

namespace A113169

/-- `∩[A000040(n+1), floor(A141858(n+1)/13)]` -/
def P14386535201027013592.Spec : Prop :=
  ∀ n, (P14386535201027013592.a n : ℤ) = A113169 (n + 1)

end A113169

/-! ## A113169.P1415988282137534231

`∩[A008578(n+2), floor(A141858(n+1)/13)]`
-/

namespace A113169.P1415988282137534231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141858 (n + 1) : ℚ) / 13⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113169.P1415988282137534231

namespace A113169

/-- `∩[A008578(n+2), floor(A141858(n+1)/13)]` -/
def P1415988282137534231.Spec : Prop :=
  ∀ n, (P1415988282137534231.a n : ℤ) = A113169 (n + 1)

end A113169

/-! ## A113169.P13765101814491821900

`p?[round(A215391(n+1)/13)]`
-/

namespace A113169.P13765101814491821900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A215391 (n + 1) : ℚ) / 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113169.P13765101814491821900

namespace A113169

/-- `p?[round(A215391(n+1)/13)]` -/
def P13765101814491821900.Spec : Prop :=
  ∀ n, P13765101814491821900.a n = A113169 (n + 1)

end A113169

/-! ## A113169.P13454389956551874787

`record[A006530(round(A215391(n+2)/13))]`
-/

namespace A113169.P13454389956551874787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A215391 (n + 2) : ℚ) / 13)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113169.P13454389956551874787

namespace A113169

/-- `record[A006530(round(A215391(n+2)/13))]` -/
def P13454389956551874787.Spec : Prop :=
  ∀ n, P13454389956551874787.a n = A113169 (n + 1)

end A113169

/-! ## A113169.P13391597258583274785

`A028310(p?[round(A141858(n+1)/13)])`
-/

namespace A113169.P13391597258583274785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141858 (n + 1) : ℚ) / 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113169.P13391597258583274785

namespace A113169

/-- `A028310(p?[round(A141858(n+1)/13)])` -/
def P13391597258583274785.Spec : Prop :=
  ∀ n, P13391597258583274785.a n = A113169 (n + 1)

end A113169

/-! ## A113169.P4212078115837623538

`p?[lt[n, A020639(13*n+2)]]`
-/

namespace A113169.P4212078115837623538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (13 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113169.P4212078115837623538

namespace A113169

/-- `p?[lt[n, A020639(13*n+2)]]` -/
def P4212078115837623538.Spec : Prop :=
  ∀ n, (P4212078115837623538.a n : ℤ) = A113169 (n + 1)

end A113169

/-! ## A113169.P15048615022060878177

`p?[lt[A001222(A016945(2*n)+n-1), 2]]`
-/

namespace A113169.P15048615022060878177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016945 (2 * n) + ((n : ℤ) - 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113169.P15048615022060878177

namespace A113169

/-- `p?[lt[A001222(A016945(2*n)+n-1), 2]]` -/
def P15048615022060878177.Spec : Prop :=
  ∀ n, (P15048615022060878177.a n : ℤ) = A113169 (n + 1)

end A113169

/-!
# A113170: Ascending descending base exponent transform of odd numbers A005408.

The programs for A113170, there is no canonical definition to state claims against.
-/

/-! ## A113170.P13440069939569392835

`A026898(2*n+1)-A353016(2*(n+1))`
-/

namespace A113170.P13440069939569392835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (2 * n + 1) - A353016 (2 * (n + 1))

end

end A113170.P13440069939569392835

/-! ## A113170.P17185231915885302817

`(A349852(2*n+1)+A003101(2*n+1))/2`
-/

namespace A113170.P17185231915885302817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349852 (2 * n + 1) + A003101 (2 * n + 1) : ℚ) / 2

end

end A113170.P17185231915885302817

/-! ## A113170.P1721260571737399712

`(A062810(2*(n+1))-A062811(2*(n+1)))/2`
-/

namespace A113170.P1721260571737399712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062810 (2 * (n + 1)) - A062811 (2 * (n + 1)) : ℚ) / 2

end

end A113170.P1721260571737399712

/-!
# A113171: Short legs 'A' of exactly 7 primitive Pythagorean triangles.

The programs for A113171, there is no canonical definition to state claims against.
-/

/-! ## A113171.P1141796934768674853

`eq[7, A024359(A028310(n))]`
-/

namespace A113171.P1141796934768674853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113171.P1141796934768674853

/-! ## A113171.P10279016723596712560

`A153152(eq[7, A024359(n+1)])`
-/

namespace A113171.P10279016723596712560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113171.P10279016723596712560

/-!
# A113174: Number of fixed 3D piled polyominoes: polycubes with fixed orientation, with no cubes "sitting on air".

The programs for A113174, there is no canonical definition to state claims against.
-/

/-! ## A113174.P10988252590422710595

`∑[A343208(n+1)]/(n+1)`
-/

namespace A113174.P10988252590422710595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343208 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A113174.P10988252590422710595

/-! ## A113174.P8357357674756534184

`A014682(A083881(n)+A007052(n))`
-/

namespace A113174.P8357357674756534184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A083881 n + A007052 n).toNat

end

end A113174.P8357357674756534184

/-! ## A113174.P7025724007508696421

`A004526(A109033(n+2))`
-/

namespace A113174.P7025724007508696421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A109033 (n + 2)).toNat

end

end A113174.P7025724007508696421

/-!
# A113175: Replace each prime p in prime-factorization of n with p-th Fibonacci number.

The programs for A113175, the canonical program `A113175.P16870130656088268305` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113175 has offset 1).

The definition of A113175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113175.P5754660203160524670

`∏{p}[n+1, A000045(#)^val(n+1, #)]`
-/

namespace A113175.P5754660203160524670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000045 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A113175.P5754660203160524670

namespace A113175

/-- `∏{p}[n+1, A000045(#)^val(n+1, #)]` -/
def P5754660203160524670.Spec : Prop :=
  ∀ n, P5754660203160524670.a n = A113175 (n + 1)

end A113175

/-! ## A113175.P16870130656088268305

`∏{d}[n+1, A000045(A014963(#))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113175

/-- `∏{d}[n+1, A000045(A014963(#))]` -/
def P16870130656088268305.Spec : Prop :=
  ∀ n, P16870130656088268305.a n = A113175 (n + 1)

theorem P16870130656088268305.correct : P16870130656088268305.Spec := by
  intro n
  simp only [A113175, Nat.add_sub_cancel]

end A113175

/-! ## A113175.P16361208906347255794

`∏{d}[n+1, A000045(gcd(A006530(#), A020639(#)))]`
-/

namespace A113175.P16361208906347255794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000045 (Int.gcd (A006530 d) (A020639 d))

end

end A113175.P16361208906347255794

namespace A113175

/-- `∏{d}[n+1, A000045(gcd(A006530(#), A020639(#)))]` -/
def P16361208906347255794.Spec : Prop :=
  ∀ n, P16361208906347255794.a n = A113175 (n + 1)

end A113175

/-! ## A113175.P8583983842312092982

`∏{e}[A181821(n+1), A000045(A000040(#))]`
-/

namespace A113175.P8583983842312092982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A113175.P8583983842312092982

namespace A113175

/-- `∏{e}[A181821(n+1), A000045(A000040(#))]` -/
def P8583983842312092982.Spec : Prop :=
  ∀ n, P8583983842312092982.a n = A113175 (n + 1)

end A113175

/-! ## A113175.P11158717084911425731

`∏{e}[A074736(n+1), A000045(#)]`
-/

namespace A113175.P11158717084911425731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A113175.P11158717084911425731

namespace A113175

/-- `∏{e}[A074736(n+1), A000045(#)]` -/
def P11158717084911425731.Spec : Prop :=
  ∀ n, P11158717084911425731.a n = A113175 (n + 1)

end A113175

/-!
# A113176: Product_{p|n} F(p), where F(p) is the p-th Fibonacci number and where the product is over the distinct prime divisors of n.

The programs for A113176, the canonical program `A113176.P13024036530350340049` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113176 has offset 1).

The definition of A113176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113176.P13024036530350340049

`∏{p}[n+1, A000045(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113176

/-- `∏{p}[n+1, A000045(#)]` -/
def P13024036530350340049.Spec : Prop :=
  ∀ n, P13024036530350340049.a n = A113176 (n + 1)

theorem P13024036530350340049.correct : P13024036530350340049.Spec := by
  intro n
  simp only [A113176, Nat.add_sub_cancel]

end A113176

/-! ## A113176.P8455290259700648221

`∏{p}[n+1, A061446(#)]`
-/

namespace A113176.P8455290259700648221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A061446 p

end

end A113176.P8455290259700648221

namespace A113176

/-- `∏{p}[n+1, A061446(#)]` -/
def P8455290259700648221.Spec : Prop :=
  ∀ n, P8455290259700648221.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P9350653485000343835

`∏{p}[n+1, A069110(#)]`
-/

namespace A113176.P9350653485000343835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A069110 p

end

end A113176.P9350653485000343835

namespace A113176

/-- `∏{p}[n+1, A069110(#)]` -/
def P9350653485000343835.Spec : Prop :=
  ∀ n, P9350653485000343835.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P2842122876435949320

`A113175(∏{p}[n+1, #])`
-/

namespace A113176.P2842122876435949320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113175 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A113176.P2842122876435949320

namespace A113176

/-- `A113175(∏{p}[n+1, #])` -/
def P2842122876435949320.Spec : Prop :=
  ∀ n, P2842122876435949320.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P3705081258023045793

`∏{p}[n+1, A113177(#)]`
-/

namespace A113176.P3705081258023045793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A113177 p

end

end A113176.P3705081258023045793

namespace A113176

/-- `∏{p}[n+1, A113177(#)]` -/
def P3705081258023045793.Spec : Prop :=
  ∀ n, P3705081258023045793.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P8796388284037745138

`∏{p}[n+1, A113178(#)]`
-/

namespace A113176.P8796388284037745138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A113178 p

end

end A113176.P8796388284037745138

namespace A113176

/-- `∏{p}[n+1, A113178(#)]` -/
def P8796388284037745138.Spec : Prop :=
  ∀ n, P8796388284037745138.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P16767011413832925566

`A113195(∏{p}[n+1, #])`
-/

namespace A113176.P16767011413832925566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113195 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A113176.P16767011413832925566

namespace A113176

/-- `A113195(∏{p}[n+1, #])` -/
def P16767011413832925566.Spec : Prop :=
  ∀ n, P16767011413832925566.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P1491925952448714269

`∏{p}[n+1, A113222(#)]`
-/

namespace A113176.P1491925952448714269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A113222 p

end

end A113176.P1491925952448714269

namespace A113176

/-- `∏{p}[n+1, A113222(#)]` -/
def P1491925952448714269.Spec : Prop :=
  ∀ n, P1491925952448714269.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P9434043731689017440

`∏{p}[n+1, A152192(#)]`
-/

namespace A113176.P9434043731689017440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A152192 p

end

end A113176.P9434043731689017440

namespace A113176

/-- `∏{p}[n+1, A152192(#)]` -/
def P9434043731689017440.Spec : Prop :=
  ∀ n, P9434043731689017440.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P4327957375243593728

`∏{p}[n+1, A167816(#)]`
-/

namespace A113176.P4327957375243593728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A167816 p

end

end A113176.P4327957375243593728

namespace A113176

/-- `∏{p}[n+1, A167816(#)]` -/
def P4327957375243593728.Spec : Prop :=
  ∀ n, P4327957375243593728.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P15945353046537867341

`∏{p}[n+1, A178763(#)]`
-/

namespace A113176.P15945353046537867341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A178763 p

end

end A113176.P15945353046537867341

namespace A113176

/-- `∏{p}[n+1, A178763(#)]` -/
def P15945353046537867341.Spec : Prop :=
  ∀ n, P15945353046537867341.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P495669647429793304

`∏{p}[n+1, A238684(#)]`
-/

namespace A113176.P495669647429793304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A238684 p

end

end A113176.P495669647429793304

namespace A113176

/-- `∏{p}[n+1, A238684(#)]` -/
def P495669647429793304.Spec : Prop :=
  ∀ n, P495669647429793304.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P14119626921833749765

`∏{p}[n+1, A264800(#)]`
-/

namespace A113176.P14119626921833749765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A264800 p

end

end A113176.P14119626921833749765

namespace A113176

/-- `∏{p}[n+1, A264800(#)]` -/
def P14119626921833749765.Spec : Prop :=
  ∀ n, P14119626921833749765.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P6217106721287925169

`∏{p}[n+1, A280690(#)]`
-/

namespace A113176.P6217106721287925169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A280690 p

end

end A113176.P6217106721287925169

namespace A113176

/-- `∏{p}[n+1, A280690(#)]` -/
def P6217106721287925169.Spec : Prop :=
  ∀ n, P6217106721287925169.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P9565457591820191494

`∏{p}[n+1, A292412(#)]`
-/

namespace A113176.P9565457591820191494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A292412 p

end

end A113176.P9565457591820191494

namespace A113176

/-- `∏{p}[n+1, A292412(#)]` -/
def P9565457591820191494.Spec : Prop :=
  ∀ n, P9565457591820191494.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P12662013700579218576

`∏{p}[n+1, A328845(#)]`
-/

namespace A113176.P12662013700579218576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A328845 p

end

end A113176.P12662013700579218576

namespace A113176

/-- `∏{p}[n+1, A328845(#)]` -/
def P12662013700579218576.Spec : Prop :=
  ∀ n, P12662013700579218576.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P15134213081155612936

`∏{p}[n+1, A374106(#)]`
-/

namespace A113176.P15134213081155612936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A374106 p

end

end A113176.P15134213081155612936

namespace A113176

/-- `∏{p}[n+1, A374106(#)]` -/
def P15134213081155612936.Spec : Prop :=
  ∀ n, P15134213081155612936.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P11427805864968565848

`∏{p}[n+1, A001611(#)-1]`
-/

namespace A113176.P11427805864968565848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001611 p - 1)

end

end A113176.P11427805864968565848

namespace A113176

/-- `∏{p}[n+1, A001611(#)-1]` -/
def P11427805864968565848.Spec : Prop :=
  ∀ n, P11427805864968565848.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P14128603935968195047

`A113175(A007947(n+1))`
-/

namespace A113176.P14128603935968195047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113175 (A007947 (n + 1)).toNat

end

end A113176.P14128603935968195047

namespace A113176

/-- `A113175(A007947(n+1))` -/
def P14128603935968195047.Spec : Prop :=
  ∀ n, P14128603935968195047.a n = A113176 (n + 1)

end A113176

/-! ## A113176.P7689890742425932289

`A113175(A015052(n+1))`
-/

namespace A113176.P7689890742425932289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113175 (A015052 (n + 1)).toNat

end

end A113176.P7689890742425932289

namespace A113176

/-- `A113175(A015052(n+1))` -/
def P7689890742425932289.Spec : Prop :=
  ∀ n, P7689890742425932289.a n = A113176 (n + 1)

end A113176

/-!
# A113177: Fully additive with a(p) = Fibonacci(p); If, for p prime, p^(m_{n,p}) is the highest power of p dividing n with m>=0, then a(n) = Sum_{p prime} F(p)*(m_{n,p}), where F(p) = p-th Fibonacci number.

The programs for A113177, the canonical program `A113177.P7455112070587647153` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113177 has offset 1).

The definition of A113177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113177.P7455112070587647153

`∑{p}[n+1, val(n+1, #)*A000045(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113177

/-- `∑{p}[n+1, val(n+1, #)*A000045(#)]` -/
def P7455112070587647153.Spec : Prop :=
  ∀ n, P7455112070587647153.a n = A113177 (n + 1)

theorem P7455112070587647153.correct : P7455112070587647153.Spec := by
  intro n
  simp only [A113177, Nat.add_sub_cancel]

end A113177

/-! ## A113177.P945372541936469140

`∑{d}[n+1, A000045(A120007(#))]`
-/

namespace A113177.P945372541936469140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (A120007 d).toNat

end

end A113177.P945372541936469140

namespace A113177

/-- `∑{d}[n+1, A000045(A120007(#))]` -/
def P945372541936469140.Spec : Prop :=
  ∀ n, P945372541936469140.a n = A113177 (n + 1)

end A113177

/-! ## A113177.P3437539780962896065

`∑{d}[A131738(n), A113178(A014963(#))]`
-/

namespace A113177.P3437539780962896065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A113178 (A014963 d).toNat

end

end A113177.P3437539780962896065

namespace A113177

/-- `∑{d}[A131738(n), A113178(A014963(#))]` -/
def P3437539780962896065.Spec : Prop :=
  ∀ n, P3437539780962896065.a n = A113177 (n + 1)

end A113177

/-! ## A113177.P13689382315224544208

`∑{d}[n+1, A000045(A000203(A014963(#))-1)]`
-/

namespace A113177.P13689382315224544208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (A000203 (A014963 d).toNat - 1).toNat

end

end A113177.P13689382315224544208

namespace A113177

/-- `∑{d}[n+1, A000045(A000203(A014963(#))-1)]` -/
def P13689382315224544208.Spec : Prop :=
  ∀ n, P13689382315224544208.a n = A113177 (n + 1)

end A113177

/-! ## A113177.P16545201530208231837

`∑{d}[n+1, A000045(A020639(#)%A014963(#)²)]`
-/

namespace A113177.P16545201530208231837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (Int.tmod (A020639 d) (A014963 d ^ 2)).toNat

end

end A113177.P16545201530208231837

namespace A113177

/-- `∑{d}[n+1, A000045(A020639(#)%A014963(#)²)]` -/
def P16545201530208231837.Spec : Prop :=
  ∀ n, P16545201530208231837.a n = A113177 (n + 1)

end A113177

/-! ## A113177.P9883180419055245424

`∑{e}[A181821(n+1), A030426(#)]`
-/

namespace A113177.P9883180419055245424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A030426 (Nat.factorization (f1 n).natAbs p)

end

end A113177.P9883180419055245424

namespace A113177

/-- `∑{e}[A181821(n+1), A030426(#)]` -/
def P9883180419055245424.Spec : Prop :=
  ∀ n, P9883180419055245424.a n = A113177 (n + 1)

end A113177

/-! ## A113177.P1998977558254748407

`∑{e}[A181821(n+1), A000045(A000040(#))]`
-/

namespace A113177.P1998977558254748407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A113177.P1998977558254748407

namespace A113177

/-- `∑{e}[A181821(n+1), A000045(A000040(#))]` -/
def P1998977558254748407.Spec : Prop :=
  ∀ n, P1998977558254748407.a n = A113177 (n + 1)

end A113177

/-!
# A113178: a(n) = Sum_{p|n} F(p), where F(p) is the p-th Fibonacci number and where the sum is over the distinct prime divisors of n.

The programs for A113178, the canonical program `A113178.P11479393303320467576` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113178 has offset 1).

The definition of A113178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113178.P11479393303320467576

`∑{p}[n+1, A000045(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113178

/-- `∑{p}[n+1, A000045(#)]` -/
def P11479393303320467576.Spec : Prop :=
  ∀ n, P11479393303320467576.a n = A113178 (n + 1)

theorem P11479393303320467576.correct : P11479393303320467576.Spec := by
  intro n
  simp only [A113178, Nat.add_sub_cancel]

end A113178

/-! ## A113178.P7823690523325962355

`∑{p}[n+1, A061446(#)]`
-/

namespace A113178.P7823690523325962355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061446 p

end

end A113178.P7823690523325962355

namespace A113178

/-- `∑{p}[n+1, A061446(#)]` -/
def P7823690523325962355.Spec : Prop :=
  ∀ n, P7823690523325962355.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P5027671338845319140

`∑{p}[n+1, A069110(#)]`
-/

namespace A113178.P5027671338845319140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A069110 p

end

end A113178.P5027671338845319140

namespace A113178

/-- `∑{p}[n+1, A069110(#)]` -/
def P5027671338845319140.Spec : Prop :=
  ∀ n, P5027671338845319140.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P14942392613633257920

`∑{p}[n+1, A113175(#)]`
-/

namespace A113178.P14942392613633257920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A113175 p

end

end A113178.P14942392613633257920

namespace A113178

/-- `∑{p}[n+1, A113175(#)]` -/
def P14942392613633257920.Spec : Prop :=
  ∀ n, P14942392613633257920.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P13120657674405918021

`∑{p}[n+1, A113176(#)]`
-/

namespace A113178.P13120657674405918021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A113176 p

end

end A113178.P13120657674405918021

namespace A113178

/-- `∑{p}[n+1, A113176(#)]` -/
def P13120657674405918021.Spec : Prop :=
  ∀ n, P13120657674405918021.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P10620267975756406457

`∑{p}[n+1, A113177(#)]`
-/

namespace A113178.P10620267975756406457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A113177 p

end

end A113178.P10620267975756406457

namespace A113178

/-- `∑{p}[n+1, A113177(#)]` -/
def P10620267975756406457.Spec : Prop :=
  ∀ n, P10620267975756406457.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P10868970797628982516

`∑{p}[n+1, A113195(#)]`
-/

namespace A113178.P10868970797628982516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A113195 p

end

end A113178.P10868970797628982516

namespace A113178

/-- `∑{p}[n+1, A113195(#)]` -/
def P10868970797628982516.Spec : Prop :=
  ∀ n, P10868970797628982516.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P14718093141376693583

`∑{p}[n+1, A113222(#)]`
-/

namespace A113178.P14718093141376693583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A113222 p

end

end A113178.P14718093141376693583

namespace A113178

/-- `∑{p}[n+1, A113222(#)]` -/
def P14718093141376693583.Spec : Prop :=
  ∀ n, P14718093141376693583.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P3348290543630283082

`∑{p}[n+1, A152192(#)]`
-/

namespace A113178.P3348290543630283082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A152192 p

end

end A113178.P3348290543630283082

namespace A113178

/-- `∑{p}[n+1, A152192(#)]` -/
def P3348290543630283082.Spec : Prop :=
  ∀ n, P3348290543630283082.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P5516534236794195624

`∑{p}[n+1, A167816(#)]`
-/

namespace A113178.P5516534236794195624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A167816 p

end

end A113178.P5516534236794195624

namespace A113178

/-- `∑{p}[n+1, A167816(#)]` -/
def P5516534236794195624.Spec : Prop :=
  ∀ n, P5516534236794195624.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P15477643248736968698

`∑{p}[n+1, A178763(#)]`
-/

namespace A113178.P15477643248736968698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A178763 p

end

end A113178.P15477643248736968698

namespace A113178

/-- `∑{p}[n+1, A178763(#)]` -/
def P15477643248736968698.Spec : Prop :=
  ∀ n, P15477643248736968698.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P6806578994514255188

`∑{p}[n+1, A238684(#)]`
-/

namespace A113178.P6806578994514255188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A238684 p

end

end A113178.P6806578994514255188

namespace A113178

/-- `∑{p}[n+1, A238684(#)]` -/
def P6806578994514255188.Spec : Prop :=
  ∀ n, P6806578994514255188.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P9642411692289610654

`∑{p}[n+1, A264800(#)]`
-/

namespace A113178.P9642411692289610654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A264800 p

end

end A113178.P9642411692289610654

namespace A113178

/-- `∑{p}[n+1, A264800(#)]` -/
def P9642411692289610654.Spec : Prop :=
  ∀ n, P9642411692289610654.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P1490299719843769800

`∑{p}[n+1, A280690(#)]`
-/

namespace A113178.P1490299719843769800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A280690 p

end

end A113178.P1490299719843769800

namespace A113178

/-- `∑{p}[n+1, A280690(#)]` -/
def P1490299719843769800.Spec : Prop :=
  ∀ n, P1490299719843769800.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P17587698712530757028

`∑{p}[n+1, A292412(#)]`
-/

namespace A113178.P17587698712530757028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A292412 p

end

end A113178.P17587698712530757028

namespace A113178

/-- `∑{p}[n+1, A292412(#)]` -/
def P17587698712530757028.Spec : Prop :=
  ∀ n, P17587698712530757028.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P4422519824094003026

`∑{p}[n+1, A328845(#)]`
-/

namespace A113178.P4422519824094003026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A328845 p

end

end A113178.P4422519824094003026

namespace A113178

/-- `∑{p}[n+1, A328845(#)]` -/
def P4422519824094003026.Spec : Prop :=
  ∀ n, P4422519824094003026.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P6917618172385831151

`∑{p}[n+1, A374106(#)]`
-/

namespace A113178.P6917618172385831151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A374106 p

end

end A113178.P6917618172385831151

namespace A113178

/-- `∑{p}[n+1, A374106(#)]` -/
def P6917618172385831151.Spec : Prop :=
  ∀ n, P6917618172385831151.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P4437503457376280895

`A113177(∏{p}[n+1, #])`
-/

namespace A113178.P4437503457376280895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A113178.P4437503457376280895

namespace A113178

/-- `A113177(∏{p}[n+1, #])` -/
def P4437503457376280895.Spec : Prop :=
  ∀ n, P4437503457376280895.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P13683451358013463084

`∑{p}[n+1, A001611(#)-1]`
-/

namespace A113178.P13683451358013463084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A001611 p - 1)

end

end A113178.P13683451358013463084

namespace A113178

/-- `∑{p}[n+1, A001611(#)-1]` -/
def P13683451358013463084.Spec : Prop :=
  ∀ n, P13683451358013463084.a n = A113178 (n + 1)

end A113178

/-! ## A113178.P13734984486947601416

`A113177(A007947(n+1))`
-/

namespace A113178.P13734984486947601416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (A007947 (n + 1)).toNat

end

end A113178.P13734984486947601416

namespace A113178

/-- `A113177(A007947(n+1))` -/
def P13734984486947601416.Spec : Prop :=
  ∀ n, P13734984486947601416.a n = A113178 (n + 1)

end A113178

/-!
# A113179: Expansion of 1/sqrt((1-2x)^2-8x^3).

The programs for A113179, there is no canonical definition to state claims against.
-/

/-! ## A113179.P4959791082935123262

`A342790(A174439(n))`
-/

namespace A113179.P4959791082935123262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (A174439 n).toNat

end

end A113179.P4959791082935123262

/-! ## A113179.P17595115878420850090

`A342790(∑[A001523(n)])`
-/

namespace A113179.P17595115878420850090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113179.P17595115878420850090

/-! ## A113179.P10605642682955735692

`∑[A290259(A291930(n))]`
-/

namespace A113179.P10605642682955735692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290259 (A291930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113179.P10605642682955735692

/-!
# A113180: Expansion of 1/sqrt((1-2*x)^2-8*x^4).

The programs for A113180, there is no canonical definition to state claims against.
-/

/-! ## A113180.P12663198788802458834

`record[gcd(A004009(3*n), A096154(n+1))]`
-/

namespace A113180.P12663198788802458834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004009 (3 * n)) (A096154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113180.P12663198788802458834

/-! ## A113180.P4734641199461361297

`2*A276878(a(n-1))` with `a(0)=1`
-/

namespace A113180.P4734641199461361297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A276878 (a (n - 1)).toNat

end

end A113180.P4734641199461361297

/-! ## A113180.P15016404217514620083

`A123064(3*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A113180.P15016404217514620083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A123064 (3 * a (n - 2)).toNat

end

end A113180.P15016404217514620083

/-!
# A113181: Number of unrooted two-vertex (or, dually, two-face) regular planar maps of even valency 2n considered up to orientation-preserving homeomorphism.

The programs for A113181, there is no canonical definition to state claims against.
-/

/-! ## A113181.P5593660113564994277

`A113182(2*(n+1))`
-/

namespace A113181.P5593660113564994277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 (2 * (n + 1))

end

end A113181.P5593660113564994277

/-! ## A113181.P14679644129264564299

`record[A113182(abs(xor(n, -2)))]`
-/

namespace A113181.P14679644129264564299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113181.P14679644129264564299

/-! ## A113181.P14797560003753727654

`record[A113182(xor(1, n+1)+1)]`
-/

namespace A113181.P14797560003753727654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 (Nat.xor 1 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113181.P14797560003753727654

/-! ## A113181.P6290839629137695424

`record[A113182(n+1)^(n%2)]`
-/

namespace A113181.P6290839629137695424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113181.P6290839629137695424

/-!
# A113182: Number of unrooted two-vertex (or, dually, two-face) regular planar maps of valency n considered up to orientation-preserving homeomorphism.

The programs for A113182, there is no canonical definition to state claims against.
-/

/-! ## A113182.P7276172604953740408

`(A113183(n+1)+A001405(n))/2`
-/

namespace A113182.P7276172604953740408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113183 (n + 1) + A001405 n : ℚ) / 2

end

end A113182.P7276172604953740408

/-! ## A113182.P7706617629559414691

`A302042(A113183(n+1)+C(n, floor(n/2)))`
-/

namespace A113182.P7706617629559414691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A113183 (n + 1) + (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ)).toNat

end

end A113182.P7706617629559414691

/-! ## A113182.P17869318181390346461

`A302043(A113183(n+1)+C(n, floor(n/2)))`
-/

namespace A113182.P17869318181390346461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A113183 (n + 1) + (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ)).toNat

end

end A113182.P17869318181390346461

/-! ## A113182.P11456565231669909012

`A302042(A113183(n+1)+A001405(n))`
-/

namespace A113182.P11456565231669909012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A113183 (n + 1) + A001405 n).toNat

end

end A113182.P11456565231669909012

/-! ## A113182.P1804514531164782441

`A302043(A113183(n+1)+A001405(n))`
-/

namespace A113182.P1804514531164782441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A113183 (n + 1) + A001405 n).toNat

end

end A113182.P1804514531164782441

/-!
# A113183: Number of unrooted two-face maps in the plane (considered up to orientation-preserving homeomorphism) with the faces of equal degree n: planar maps with a distinguished outside face.

The programs for A113183, there is no canonical definition to state claims against.
-/

/-! ## A113183.P11391422197092966490

`2*A113182(n+1)-A001405(n)`
-/

namespace A113183.P11391422197092966490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113182 (n + 1) - A001405 n

end

end A113183.P11391422197092966490

/-! ## A113183.P5330633869628606364

`2*A113182(n+1)-sqrt(A018224(n))`
-/

namespace A113183.P5330633869628606364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A113182 (n + 1) : ℝ) - Real.sqrt (A018224 n : ℝ)

end

end A113183.P5330633869628606364

/-! ## A113183.P15231455048862922825

`2*A113182(n+1)-A063886(n+1)/2`
-/

namespace A113183.P15231455048862922825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A113182 (n + 1) : ℚ) - (A063886 (n + 1) : ℚ) / 2

end

end A113183.P15231455048862922825

/-! ## A113183.P13036391387267306787

`A004277(A113182(n+1))-A001405(n)`
-/

namespace A113183.P13036391387267306787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A113182 (n + 1)).toNat - A001405 n

end

end A113183.P13036391387267306787

/-! ## A113183.P7688710662942585065

`A004277(A113182(n+1))-A007318(ceil(n²/2)+n)`
-/

namespace A113183.P7688710662942585065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A113182 (n + 1)).toNat - A007318 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A113183.P7688710662942585065

/-!
# A113184: Absolute difference between sum of odd divisors of n and sum of even divisors of n.

The programs for A113184, the canonical program `A113184.P18058107093625804020` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113184 has offset 1).

The definition of A113184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113184.P201915956103544403

`abs(A002129(n+1))`
-/

namespace A113184.P201915956103544403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002129 (n + 1)|

end

end A113184.P201915956103544403

namespace A113184

/-- `abs(A002129(n+1))` -/
def P201915956103544403.Spec : Prop :=
  ∀ n, P201915956103544403.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P17430046260428718390

`abs(A122858(n+1)/8)`
-/

namespace A113184.P17430046260428718390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A122858 (n + 1) : ℚ) / 8|

end

end A113184.P17430046260428718390

namespace A113184

/-- `abs(A122858(n+1)/8)` -/
def P17430046260428718390.Spec : Prop :=
  ∀ n, P17430046260428718390.a n = (A113184 (n + 1) : ℚ)

end A113184

/-! ## A113184.P18058107093625804020

`∑{d}[n+1, #*A152822(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113184

/-- `∑{d}[n+1, #*A152822(#)]` -/
def P18058107093625804020.Spec : Prop :=
  ∀ n, P18058107093625804020.a n = A113184 (n + 1)

theorem P18058107093625804020.correct : P18058107093625804020.Spec := by
  intro n
  simp only [A113184, Nat.add_sub_cancel]

end A113184

/-! ## A113184.P16442364990216287944

`A215947(gcd(∑[6*n-1], ∑[n]))`
-/

namespace A113184.P16442364990216287944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A113184.P16442364990216287944

namespace A113184

/-- `A215947(gcd(∑[6*n-1], ∑[n]))` -/
def P16442364990216287944.Spec : Prop :=
  ∀ n, P16442364990216287944.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P888274893247583387

`abs(∑{d}[n+1, #*A033999(#-1)])`
-/

namespace A113184.P888274893247583387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A033999 (d - 1)|

end

end A113184.P888274893247583387

namespace A113184

/-- `abs(∑{d}[n+1, #*A033999(#-1)])` -/
def P888274893247583387.Spec : Prop :=
  ∀ n, P888274893247583387.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P10993282806304494477

`A326238(n+1)/∑[(2*n+1)*(1-4/2)^n]`
-/

namespace A113184.P10993282806304494477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326238 (n + 1) : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113184.P10993282806304494477

namespace A113184

/-- `A326238(n+1)/∑[(2*n+1)*(1-4/2)^n]` -/
def P10993282806304494477.Spec : Prop :=
  ∀ n, P10993282806304494477.a n = (A113184 (n + 1) : ℚ)

end A113184

/-! ## A113184.P10580106568323442599

`A215947(A026741(n+1))`
-/

namespace A113184.P10580106568323442599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A026741 (n + 1)).toNat

end

end A113184.P10580106568323442599

namespace A113184

/-- `A215947(A026741(n+1))` -/
def P10580106568323442599.Spec : Prop :=
  ∀ n, P10580106568323442599.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P3223203240834357638

`A002129(n+1)*A033999(n)`
-/

namespace A113184.P3223203240834357638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) * A033999 n

end

end A113184.P3223203240834357638

namespace A113184

/-- `A002129(n+1)*A033999(n)` -/
def P3223203240834357638.Spec : Prop :=
  ∀ n, P3223203240834357638.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P17314501684980962649

`gcd(A000038(n), A002129(n+1))`
-/

namespace A113184.P17314501684980962649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002129 (n + 1))

end

end A113184.P17314501684980962649

namespace A113184

/-- `gcd(A000038(n), A002129(n+1))` -/
def P17314501684980962649.Spec : Prop :=
  ∀ n, (P17314501684980962649.a n : ℤ) = A113184 (n + 1)

end A113184

/-! ## A113184.P8514755625848577988

`lcm(A002129(n+1), A014709(n))`
-/

namespace A113184.P8514755625848577988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002129 (n + 1)) (A014709 n)

end

end A113184.P8514755625848577988

namespace A113184

/-- `lcm(A002129(n+1), A014709(n))` -/
def P8514755625848577988.Spec : Prop :=
  ∀ n, (P8514755625848577988.a n : ℤ) = A113184 (n + 1)

end A113184

/-! ## A113184.P1394898740123780881

`∑{d}[A026741(n+1), A022998(#)]`
-/

namespace A113184.P1394898740123780881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A022998 d

end

end A113184.P1394898740123780881

namespace A113184

/-- `∑{d}[A026741(n+1), A022998(#)]` -/
def P1394898740123780881.Spec : Prop :=
  ∀ n, P1394898740123780881.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P2225475837102244281

`A146076(n+1)+A115607(n+1)`
-/

namespace A113184.P2225475837102244281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A115607 (n + 1)

end

end A113184.P2225475837102244281

namespace A113184

/-- `A146076(n+1)+A115607(n+1)` -/
def P2225475837102244281.Spec : Prop :=
  ∀ n, P2225475837102244281.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P1057952392219210822

`A054785(n+1)-A046897(n+1)`
-/

namespace A113184.P1057952392219210822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A046897 (n + 1)

end

end A113184.P1057952392219210822

namespace A113184

/-- `A054785(n+1)-A046897(n+1)` -/
def P1057952392219210822.Spec : Prop :=
  ∀ n, P1057952392219210822.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P3247667352628049302

`A080278(n+1)*A113262(n+1)`
-/

namespace A113184.P3247667352628049302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (n + 1) * A113262 (n + 1)

end

end A113184.P3247667352628049302

namespace A113184

/-- `A080278(n+1)*A113262(n+1)` -/
def P3247667352628049302.Spec : Prop :=
  ∀ n, P3247667352628049302.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P684300952333954273

`A162419(n+1)/A000203(n+1)`
-/

namespace A113184.P684300952333954273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162419 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A113184.P684300952333954273

namespace A113184

/-- `A162419(n+1)/A000203(n+1)` -/
def P684300952333954273.Spec : Prop :=
  ∀ n, P684300952333954273.a n = (A113184 (n + 1) : ℚ)

end A113184

/-! ## A113184.P15188987591755453935

`A215947((n+1)/A040001(n+1))`
-/

namespace A113184.P15188987591755453935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A040001 (n + 1) : ℚ))).toNat

end

end A113184.P15188987591755453935

namespace A113184

/-- `A215947((n+1)/A040001(n+1))` -/
def P15188987591755453935.Spec : Prop :=
  ∀ n, P15188987591755453935.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P1763105551733115134

`A215947(n+1)%A054785(n+1)`
-/

namespace A113184.P1763105551733115134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215947 (n + 1)) (A054785 (n + 1))

end

end A113184.P1763105551733115134

namespace A113184

/-- `A215947(n+1)%A054785(n+1)` -/
def P1763105551733115134.Spec : Prop :=
  ∀ n, P1763105551733115134.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P7162847082436340457

`A272027(n+1)%A054785(n+1)`
-/

namespace A113184.P7162847082436340457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272027 (n + 1)) (A054785 (n + 1))

end

end A113184.P7162847082436340457

namespace A113184

/-- `A272027(n+1)%A054785(n+1)` -/
def P7162847082436340457.Spec : Prop :=
  ∀ n, P7162847082436340457.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P13930152538832049570

`abs(A000593(n+1)-A146076(n+1))`
-/

namespace A113184.P13930152538832049570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000593 (n + 1) - A146076 (n + 1)|

end

end A113184.P13930152538832049570

namespace A113184

/-- `abs(A000593(n+1)-A146076(n+1))` -/
def P13930152538832049570.Spec : Prop :=
  ∀ n, P13930152538832049570.a n = A113184 (n + 1)

end A113184

/-! ## A113184.P714986969371933353

`A143348(n+1)+2*A146076(n+1)`
-/

namespace A113184.P714986969371933353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) + 2 * A146076 (n + 1)

end

end A113184.P714986969371933353

namespace A113184

/-- `A143348(n+1)+2*A146076(n+1)` -/
def P714986969371933353.Spec : Prop :=
  ∀ n, P714986969371933353.a n = A113184 (n + 1)

end A113184

/-!
# A113185: Expansion of (5*phi(q)*phi^3(q^5) - phi^3(q)*phi(q^5))/4 in powers of q where phi(q) is a Ramanujan theta function.

The programs for A113185, there is no canonical definition to state claims against.
-/

/-! ## A113185.P3654124481310171195

`(-1)^n*A132069(n)`
-/

namespace A113185.P3654124481310171195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132069 n

end

end A113185.P3654124481310171195

/-! ## A113185.P4937612637304752826

`A132069(n)*A299912(Δ[A047336(n+1)])`
-/

namespace A113185.P4937612637304752826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132069 n * A299912 (f1 (n + 1) - f1 n).toNat

end

end A113185.P4937612637304752826

/-! ## A113185.P6311068764533129879

`A132069(lcm(n, A174571(n)))`
-/

namespace A113185.P6311068764533129879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132069 (Int.lcm (n : ℤ) (A174571 n))

end

end A113185.P6311068764533129879

/-! ## A113185.P6470236449735018503

`A132069(n*A000034(n)²)`
-/

namespace A113185.P6470236449735018503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132069 ((n : ℤ) * A000034 n ^ 2).toNat

end

end A113185.P6470236449735018503

/-! ## A113185.P3188209250720612789

`A132069(n*A000034(n)*A000034(n))`
-/

namespace A113185.P3188209250720612789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132069 ((n : ℤ) * A000034 n * A000034 n).toNat

end

end A113185.P3188209250720612789

/-! ## A113185.P9029238305301615480

`A132069(n*(gcd(2, n)+3))`
-/

namespace A113185.P9029238305301615480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132069 (n * (Nat.gcd 2 n + 3))

end

end A113185.P9029238305301615480

/-! ## A113185.P3685689306658559663

`A132069(n*Δ[A047336(n+1)]²)`
-/

namespace A113185.P3685689306658559663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132069 ((n : ℤ) * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A113185.P3685689306658559663

/-!
# A113186: Expansion of (25phi(q)phi^3(q^5)-phi^5(q)/phi(q^5)-24)/40 in powers of q where phi(q) is a Ramanujan theta function.

The programs for A113186, the canonical program `A113186.P10213787310287371192` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113186 has offset 1).

The definition of A113186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113186.P12031561430381478929

`(-1)^n*A109091((n+1)/2^val(n+1, 2))`
-/

namespace A113186.P12031561430381478929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A113186.P12031561430381478929

namespace A113186

/-- `(-1)^n*A109091((n+1)/2^val(n+1, 2))` -/
def P12031561430381478929.Spec : Prop :=
  ∀ n, P12031561430381478929.a n = A113186 (n + 1)

end A113186

/-! ## A113186.P10213787310287371192

`A109091(A259445(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A113186

/-- `A109091(A259445(n+1))` -/
def P10213787310287371192.Spec : Prop :=
  ∀ n, P10213787310287371192.a n = A113186 (n + 1)

theorem P10213787310287371192.correct : P10213787310287371192.Spec := by
  intro n
  simp only [A113186, Nat.add_sub_cancel]

end A113186

/-! ## A113186.P10965297743201469953

`A109091((n+1)/A160467(n+1))`
-/

namespace A113186.P10965297743201469953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A160467 (n + 1) : ℚ))).toNat

end

end A113186.P10965297743201469953

namespace A113186

/-- `A109091((n+1)/A160467(n+1))` -/
def P10965297743201469953.Spec : Prop :=
  ∀ n, P10965297743201469953.a n = A113186 (n + 1)

end A113186

/-! ## A113186.P10436248010994836670

`A109091(A000034(n)*A000265(n+1))`
-/

namespace A113186.P10436248010994836670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (A000034 n * A000265 (n + 1)).toNat

end

end A113186.P10436248010994836670

namespace A113186

/-- `A109091(A000034(n)*A000265(n+1))` -/
def P10436248010994836670.Spec : Prop :=
  ∀ n, P10436248010994836670.a n = A113186 (n + 1)

end A113186

/-! ## A113186.P4011176418579701340

`A033999(n)*A111580(A000265(n+1))`
-/

namespace A113186.P4011176418579701340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A111580 (A000265 (n + 1)).toNat

end

end A113186.P4011176418579701340

namespace A113186

/-- `A033999(n)*A111580(A000265(n+1))` -/
def P4011176418579701340.Spec : Prop :=
  ∀ n, P4011176418579701340.a n = A113186 (n + 1)

end A113186

/-! ## A113186.P13629734685520667869

`A109091(A000265(n+1)*A134451(n+1))`
-/

namespace A113186.P13629734685520667869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (A000265 (n + 1) * A134451 (n + 1)).toNat

end

end A113186.P13629734685520667869

namespace A113186

/-- `A109091(A000265(n+1)*A134451(n+1))` -/
def P13629734685520667869.Spec : Prop :=
  ∀ n, P13629734685520667869.a n = A113186 (n + 1)

end A113186

/-! ## A113186.P544938320830060701

`A109091(lcm(A000265(n+1), A007947(n+1)))`
-/

namespace A113186.P544938320830060701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (Int.lcm (A000265 (n + 1)) (A007947 (n + 1)))

end

end A113186.P544938320830060701

namespace A113186

/-- `A109091(lcm(A000265(n+1), A007947(n+1)))` -/
def P544938320830060701.Spec : Prop :=
  ∀ n, P544938320830060701.a n = A113186 (n + 1)

end A113186

/-!
# A113187: Inverse of twin-prime related triangle A111125.

The programs for A113187, the canonical program `A113187.P3659463238577821774` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113187 has offset 0).

The definition of A113187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113187.P3659463238577821774

`A097807(n)*A111418(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A113187

/-- `A097807(n)*A111418(n)` -/
def P3659463238577821774.Spec : Prop :=
  ∀ n, P3659463238577821774.a n = A113187 n

theorem P3659463238577821774.correct : P3659463238577821774.Spec := by
  intro n
  simp only [A113187]

end A113187

/-! ## A113187.P5458259935268123570

`A033999(A025581(n))*A111418(n)`
-/

namespace A113187.P5458259935268123570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A111418 n

end

end A113187.P5458259935268123570

namespace A113187

/-- `A033999(A025581(n))*A111418(n)` -/
def P5458259935268123570.Spec : Prop :=
  ∀ n, P5458259935268123570.a n = A113187 n

end A113187

/-! ## A113187.P17871267804273279090

`A033999(A051162(n))*A111418(n)`
-/

namespace A113187.P17871267804273279090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A111418 n

end

end A113187.P17871267804273279090

namespace A113187

/-- `A033999(A051162(n))*A111418(n)` -/
def P17871267804273279090.Spec : Prop :=
  ∀ n, P17871267804273279090.a n = A113187 n

end A113187

/-! ## A113187.P1319365834041174423

`A009531(A099375(n))*A111418(n)`
-/

namespace A113187.P1319365834041174423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A111418 n

end

end A113187.P1319365834041174423

namespace A113187

/-- `A009531(A099375(n))*A111418(n)` -/
def P1319365834041174423.Spec : Prop :=
  ∀ n, P1319365834041174423.a n = A113187 n

end A113187

/-! ## A113187.P5709869486954452371

`A097807(n)*A122366(A061579(n))`
-/

namespace A113187.P5709869486954452371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A122366 (A061579 n).toNat

end

end A113187.P5709869486954452371

namespace A113187

/-- `A097807(n)*A122366(A061579(n))` -/
def P5709869486954452371.Spec : Prop :=
  ∀ n, P5709869486954452371.a n = A113187 n

end A113187

/-! ## A113187.P13519046127224505007

`A091917(A185869(n+1)+A025581(n))`
-/

namespace A113187.P13519046127224505007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 (A185869 (n + 1) + A025581 n).toNat

end

end A113187.P13519046127224505007

namespace A113187

/-- `A091917(A185869(n+1)+A025581(n))` -/
def P13519046127224505007.Spec : Prop :=
  ∀ n, P13519046127224505007.a n = A113187 n

end A113187

/-! ## A113187.P1686917941976320497

`A130595(A185869(n+1)+A025581(n))`
-/

namespace A113187.P1686917941976320497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A185869 (n + 1) + A025581 n).toNat

end

end A113187.P1686917941976320497

namespace A113187

/-- `A130595(A185869(n+1)+A025581(n))` -/
def P1686917941976320497.Spec : Prop :=
  ∀ n, P1686917941976320497.a n = A113187 n

end A113187

/-!
# A113188: Primes that are the difference of two Fibonacci numbers; primes in A007298.

The programs for A113188, there is no canonical definition to state claims against.
-/

/-! ## A113188.P8547286735919042571

`p?[A007298(n+1)]`
-/

namespace A113188.P8547286735919042571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113188.P8547286735919042571

/-! ## A113188.P17253749256410722347

`p?[record[A143061(n+1)]]`
-/

namespace A113188.P17253749256410722347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113188.P17253749256410722347

/-! ## A113188.P17672718452872701052

`p?[record[A171729(n+1)]]`
-/

namespace A113188.P17672718452872701052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113188.P17672718452872701052

/-! ## A113188.P12730217281672461320

`record[p?[round(A094585(n+1)/ϕ)]]`
-/

namespace A113188.P12730217281672461320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094585 (n + 1) : ℝ) / Real.goldenRatio)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113188.P12730217281672461320

/-! ## A113188.P16815558841370685209

`p?[A143061(A080036(n))]`
-/

namespace A113188.P16815558841370685209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113188.P16815558841370685209

/-!
# A113189: Number of times that Fibonacci(n)-Fibonacci(i) is prime for i=0..n-3.

The programs for A113189, there is no canonical definition to state claims against.
-/

/-! ## A113189.P12178633966888914736

`A284203(A007935(n+2)+1)`
-/

namespace A113189.P12178633966888914736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A007935 (n + 2) + 1).toNat

end

end A113189.P12178633966888914736

/-! ## A113189.P1284907274476368501

`A001227(A131613(n+2))%4`
-/

namespace A113189.P1284907274476368501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (A131613 (n + 2)).toNat) 4

end

end A113189.P1284907274476368501

/-! ## A113189.P4507008508065238317

`(∑[∑[A079323(A109090(n))]]+2)%3`
-/

namespace A113189.P4507008508065238317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079323 (A109090 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3

end

end A113189.P4507008508065238317

/-! ## A113189.P15169325138403191304

`(A126841(n+1)+A018966(n+2))%3`
-/

namespace A113189.P15169325138403191304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126841 (n + 1) + A018966 (n + 2)) 3

end

end A113189.P15169325138403191304

/-! ## A113189.P13482584642216860594

`A060990(A033718(A123707(n+1)))`
-/

namespace A113189.P13482584642216860594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A033718 (A123707 (n + 1)).toNat).toNat

end

end A113189.P13482584642216860594

/-!
# A113190: Numbers n such that Fibonacci(n)-Fibonacci(i) is composite for all i=0..n-3.

The programs for A113190, there is no canonical definition to state claims against.
-/

/-! ## A113190.P16223314552556383365

`eq[0, A113189(n+3)]+3`
-/

namespace A113190.P16223314552556383365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113189 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A113190.P16223314552556383365

/-! ## A113190.P12383679921424054707

`A055495(eq[0, A113189(n+3)])`
-/

namespace A113190.P12383679921424054707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113189 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113190.P12383679921424054707

/-! ## A113190.P7250584059635719278

`A074764(eq[0, A113189(n+3)])`
-/

namespace A113190.P7250584059635719278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113189 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113190.P7250584059635719278

/-! ## A113190.P8771137112143329433

`A055495(lt[A113189(n+3), 1])`
-/

namespace A113190.P8771137112143329433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113189 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A113190.P8771137112143329433

/-!
# A113192: Primes that are the difference of two Lucas numbers; primes in A113191.

The programs for A113192, there is no canonical definition to state claims against.
-/

/-! ## A113192.P18090750090925310385

`p?[A113191(n+1)]`
-/

namespace A113192.P18090750090925310385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113192.P18090750090925310385

/-! ## A113192.P16435577878784158011

`p?[record[A113191(A133310(n))]]`
-/

namespace A113192.P16435577878784158011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113191 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113192.P16435577878784158011

/-! ## A113192.P12123128051930676839

`p?[record[A113191(A324346(n))]]`
-/

namespace A113192.P12123128051930676839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113191 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113192.P12123128051930676839

/-! ## A113192.P16824906064802900893

`p?[record[A113191(A341440(n))]]`
-/

namespace A113192.P16824906064802900893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113191 (A341440 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113192.P16824906064802900893

/-! ## A113192.P6720145959174303419

`record[A006530(A113191(n+3))]`
-/

namespace A113192.P6720145959174303419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113191 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113192.P6720145959174303419

/-!
# A113193: Number of times that Lucas(n)-Lucas(i) is prime for i=0..n-3.

The programs for A113193, there is no canonical definition to state claims against.
-/

/-! ## A113193.P17248752152250408176

`A036577(∑[A015935(2*(n+1))])`
-/

namespace A113193.P17248752152250408176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113193.P17248752152250408176

/-! ## A113193.P3562965637602896221

`A335294(A217047(n+1)+A068911(n))`
-/

namespace A113193.P3562965637602896221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A217047 (n + 1) + A068911 n).toNat

end

end A113193.P3562965637602896221

/-! ## A113193.P10597421685661005045

`A257490(n+1)%A339749(A058520(n))`
-/

namespace A113193.P10597421685661005045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257490 (n + 1)) (A339749 (A058520 n).toNat)

end

end A113193.P10597421685661005045

/-! ## A113193.P983300701011395622

`A052343(A207269(n+1)*A209745(n+1))`
-/

namespace A113193.P983300701011395622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A207269 (n + 1) * A209745 (n + 1)).toNat

end

end A113193.P983300701011395622

/-! ## A113193.P2123757094543302353

`A285936(A285967(2*n+5)+A285956(n))`
-/

namespace A113193.P2123757094543302353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285936 ((A285967 (2 * n + 5) + A285956 n).toNat + 10)

end

end A113193.P2123757094543302353

/-!
# A113194: Numbers k such that Lucas(k) - Lucas(i) is composite for i=0..k-3.

The programs for A113194, there is no canonical definition to state claims against.
-/

/-! ## A113194.P5927109922870690099

`eq[0, A113193(n+3)]+3`
-/

namespace A113194.P5927109922870690099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113193 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A113194.P5927109922870690099

/-! ## A113194.P12289146795520870688

`A080425(A077168(n+3))+A001969(2*n+2)`
-/

namespace A113194.P12289146795520870688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A077168 (n + 3)).toNat + A001969 (2 * n + 2)

end

end A113194.P12289146795520870688

/-! ## A113194.P11333145467468143994

`A141213(eq[0, A113193(n+3)])`
-/

namespace A113194.P11333145467468143994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113193 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113194.P11333145467468143994

/-! ## A113194.P11016920321036791846

`A141213(lt[A113193(n+3), 1])`
-/

namespace A113194.P11016920321036791846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113193 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A113194.P11016920321036791846

/-! ## A113194.P15153323311517309237

`A141213(A231624(n+1)+A089559(n+1))`
-/

namespace A113194.P15153323311517309237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A231624 (n + 1) + A089559 (n + 1)).toNat

end

end A113194.P15153323311517309237

/-!
# A113195: a(n) = Product_{p primes} F(p^(m_{n,p})), where p^(m_{n,p}) is highest power of p dividing n, m = nonnegative integer and F(k) is the k-th Fibonacci number.

The programs for A113195, the canonical program `A113195.P16463248062575638555` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113195 has offset 1).

The definition of A113195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113195.P16463248062575638555

`∏{p}[n+1, A000045(#^val(n+1, #))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113195

/-- `∏{p}[n+1, A000045(#^val(n+1, #))]` -/
def P16463248062575638555.Spec : Prop :=
  ∀ n, P16463248062575638555.a n = A113195 (n + 1)

theorem P16463248062575638555.correct : P16463248062575638555.Spec := by
  intro n
  simp only [A113195, Nat.add_sub_cancel]

end A113195

/-! ## A113195.P9168946652132734208

`A053538(∑[n])/A113196(n+1)`
-/

namespace A113195.P9168946652132734208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053538 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A113196 (n + 1) : ℚ)

end

end A113195.P9168946652132734208

namespace A113195

/-- `A053538(∑[n])/A113196(n+1)` -/
def P9168946652132734208.Spec : Prop :=
  ∀ n, P9168946652132734208.a n = (A113195 (n + 1) : ℚ)

end A113195

/-! ## A113195.P11857295805196232215

`A058071(∑[n])/A113196(n+1)`
-/

namespace A113195.P11857295805196232215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058071 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A113196 (n + 1) : ℚ)

end

end A113195.P11857295805196232215

namespace A113195

/-- `A058071(∑[n])/A113196(n+1)` -/
def P11857295805196232215.Spec : Prop :=
  ∀ n, P11857295805196232215.a n = (A113195 (n + 1) : ℚ)

end A113195

/-! ## A113195.P7648158451266683468

`A000045(n+1)/A113196(n+1)`
-/

namespace A113195.P7648158451266683468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113196 (n + 1) : ℚ)

end

end A113195.P7648158451266683468

namespace A113195

/-- `A000045(n+1)/A113196(n+1)` -/
def P7648158451266683468.Spec : Prop :=
  ∀ n, P7648158451266683468.a n = (A113195 (n + 1) : ℚ)

end A113195

/-! ## A113195.P9627199566461013767

`A079977(2*n)/A113196(n+1)`
-/

namespace A113195.P9627199566461013767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079977 (2 * n) : ℚ) / (A113196 (n + 1) : ℚ)

end

end A113195.P9627199566461013767

namespace A113195

/-- `A079977(2*n)/A113196(n+1)` -/
def P9627199566461013767.Spec : Prop :=
  ∀ n, P9627199566461013767.a n = (A113195 (n + 1) : ℚ)

end A113195

/-!
# A113196: a(n) = F(n)/Product_{p=primes} F(p^(m_{n,p})), where p^(m_{n,p}) is highest power of p dividing n, m= nonnegative integer and F(k) is the k-th Fibonacci number.

The programs for A113196, there is no canonical definition to state claims against.
-/

/-! ## A113196.P12152122203618967822

`A053538(∑[n])/A113195(n+1)`
-/

namespace A113196.P12152122203618967822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053538 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A113195 (n + 1) : ℚ)

end

end A113196.P12152122203618967822

/-! ## A113196.P6654641601427652297

`A058071(∑[n])/A113195(n+1)`
-/

namespace A113196.P6654641601427652297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058071 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A113195 (n + 1) : ℚ)

end

end A113196.P6654641601427652297

/-! ## A113196.P6465091413485621677

`∑[A212804(n)]/A113195(n+1)`
-/

namespace A113196.P6465091413485621677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A113195 (n + 1) : ℚ)

end

end A113196.P6465091413485621677

/-! ## A113196.P10602640479657975478

`A000045(n+1)/A113195(n+1)`
-/

namespace A113196.P10602640479657975478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113195 (n + 1) : ℚ)

end

end A113196.P10602640479657975478

/-! ## A113196.P10753648982610496435

`A000045(n+1)/∏{p}[∑[n], A000045(gcd(n+1, #^7))]`
-/

namespace A113196.P10753648982610496435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.gcd (n + 1) (p ^ 7)) : ℤ) : ℚ)

end

end A113196.P10753648982610496435

/-! ## A113196.P733072799618304721

`A000045(n+1)/∏{p}[n+1, A000045(#^val(n+1, #))]`
-/

namespace A113196.P733072799618304721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A000045 (p ^ SequenceMachineLib.valuation (n + 1) p) : ℤ) : ℚ)

end

end A113196.P733072799618304721

/-!
# A113197: Positive integers sorted by rote weight, rote height and rote quench.

The programs for A113197, there is no canonical definition to state claims against.
-/

/-! ## A113197.P9101532377125451424

`A113199(n+1)%p?[floor((2/acot(2*n))²)-n²]`
-/

namespace A113197.P9101532377125451424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113199 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A113197.P9101532377125451424

/-! ## A113197.P9196023962024931634

`A113199(n+1)%A332366(n+2)`
-/

namespace A113197.P9196023962024931634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113199 (n + 1)) (A332366 (n + 2))

end

end A113197.P9196023962024931634

/-! ## A113197.P14460212517360422232

`A163961(2*n+3)²*A113199(n+1)`
-/

namespace A113197.P14460212517360422232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (2 * n + 3) ^ 2 * A113199 (n + 1)

end

end A113197.P14460212517360422232

/-! ## A113197.P8051411934026171505

`A113199(n+1)^A133687(A133687(n))`
-/

namespace A113197.P8051411934026171505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113199 (n + 1) : ℚ) ^ (A133687 (A133687 n).toNat : ℤ)

end

end A113197.P8051411934026171505

/-! ## A113197.P3242770374852351555

`A113199(n+1)%A002762(n)`
-/

namespace A113197.P3242770374852351555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113199 (n + 1)) (A002762 n)

end

end A113197.P3242770374852351555

