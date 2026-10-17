import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C005
import Seq.B000.C020
import Seq.B001.C000
import Seq.B001.C010
import Seq.B005.C000
import Seq.Opaque.C008

/-!
# A398709: a(n) = floor(((5 + sqrt(17))/2)^n).

The programs for A398709, the canonical program `A398709.P7989658470484696830` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398709 has offset 1).

The definition of A398709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398709.P7989658470484696830

`A159289(n)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A398709

/-- `A159289(n)-1` -/
def P7989658470484696830.Spec : Prop :=
  ∀ n, P7989658470484696830.a n = A398709 (n + 1)

theorem P7989658470484696830.correct : P7989658470484696830.Spec := by
  intro n
  simp only [A398709, Nat.add_sub_cancel]

end A398709

/-! ## A398709.P13466083646449612754

`xor(A000035(2*n+3), A159289(n))`
-/

namespace A398709.P13466083646449612754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 3)) (A159289 n)

end

end A398709.P13466083646449612754

namespace A398709

/-- `xor(A000035(2*n+3), A159289(n))` -/
def P13466083646449612754.Spec : Prop :=
  ∀ n, P13466083646449612754.a n = A398709 (n + 1)

end A398709

/-! ## A398709.P17713860072636135185

`floor(sqrt(A159289(2*n+1)))`
-/

namespace A398709.P17713860072636135185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A159289 (2 * n + 1))

end

end A398709.P17713860072636135185

namespace A398709

/-- `floor(sqrt(A159289(2*n+1)))` -/
def P17713860072636135185.Spec : Prop :=
  ∀ n, P17713860072636135185.a n = A398709 (n + 1)

end A398709

/-!
# A398724: Number of partitions of n into parts congruent to 2, 3 or 7 (mod 8).

The programs for A398724, there is no canonical definition to state claims against.
-/

/-! ## A398724.P7449594002804020973

`abs(A131795(n))`
-/

namespace A398724.P7449594002804020973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131795 n|

end

end A398724.P7449594002804020973

/-! ## A398724.P10649434862079059275

`A033999(n)*A131795(n)`
-/

namespace A398724.P10649434862079059275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131795 n

end

end A398724.P10649434862079059275

/-! ## A398724.P1467551869042539424

`gcd(A000038(n), A131795(n))`
-/

namespace A398724.P1467551869042539424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A131795 n)

end

end A398724.P1467551869042539424

/-! ## A398724.P7488887514779304696

`lcm(A020985(n), A131795(n))`
-/

namespace A398724.P7488887514779304696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A131795 n)

end

end A398724.P7488887514779304696

