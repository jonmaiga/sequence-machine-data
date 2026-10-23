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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
# A179200: E.g.f. equals the real part of the i-th iteration of (x + x^2), where i=sqrt(-1).

The programs for A179200, there is no canonical definition to state claims against.
-/

/-! ## A179200.P4668076611917464033

`∑[n]*A105847(∑[floor(n*2^(n-3))])`
-/

namespace A179200.P4668076611917464033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A105847 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A179200.P4668076611917464033

/-!
# A179201: E.g.f. equals the imaginary part of the i-th iteration of (x + x^2), where i=sqrt(-1).

The programs for A179201, there is no canonical definition to state claims against.
-/

/-! ## A179201.P605853266872974843

`A132007(n)*A296030(A209884(n))`
-/

namespace A179201.P605853266872974843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132007 n * A296030 (A209884 n).toNat

end

end A179201.P605853266872974843

/-! ## A179201.P16987897391108566786

`A000085(n+2)-A001316(A363104(n))`
-/

namespace A179201.P16987897391108566786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 2) - A001316 (A363104 n).toNat

end

end A179201.P16987897391108566786

/-!
# A179202: Numbers n such that phi(n) = phi(n+8), with Euler's totient function phi=A000010.

The programs for A179202, there is no canonical definition to state claims against.
-/

/-! ## A179202.P3074176672698189913

`eq[A000010(n+8), A000010(A028310(n))]`
-/

namespace A179202.P3074176672698189913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179202.P3074176672698189913

/-! ## A179202.P9222806608138192248

`eq[A000010(n+8), A000010(A000007(n)+n)]`
-/

namespace A179202.P9222806608138192248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179202.P9222806608138192248

/-! ## A179202.P15243154411889067110

`eq[A000010(A233583(n+1)), A000010(n+8)]`
-/

namespace A179202.P15243154411889067110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179202.P15243154411889067110

/-! ## A179202.P12033895087055094155

`eq[A000010(n+8), A225530(n)]`
-/

namespace A179202.P12033895087055094155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179202.P12033895087055094155

/-! ## A179202.P1925027623136888089

`eq[A225530(A020722(n)), A225530(n)]`
-/

namespace A179202.P1925027623136888089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A020722 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179202.P1925027623136888089

/-!
# A179204: a(1)=11. For n>1, a(n) is LCM of a(n-1) and largest integer <= sqrt(a(n-1)).

The programs for A179204, there is no canonical definition to state claims against.
-/

/-! ## A179204.P9735317273898188597

`A241083(a(n-1))` with `a(0)=11`
-/

namespace A179204.P9735317273898188597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A241083 (a (n - 1)).toNat

end

end A179204.P9735317273898188597

/-! ## A179204.P17865082738711489896

`lcm(a(n-1), A000196(a(n-1)))` with `a(0)=11`
-/

namespace A179204.P17865082738711489896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000196 (a (n - 1)))

end

end A179204.P17865082738711489896

/-!
# A179207: a(n) = n - 1 + ceiling((-3 + n^2)/2) if n > 1 with a(1)=1, complement of A182835.

The programs for A179207, the canonical program `A179207.P15584879885345690253` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179207 has offset 1).

The definition of A179207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179207.P15584879885345690253

`a(n-2)+2*(n+1)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179207

/-- `a(n-2)+2*(n+1)` -/
def P15584879885345690253.Spec : Prop :=
  ∀ n, (P15584879885345690253.a n : ℤ) = A179207 (n + 1)

theorem P15584879885345690253.correct : P15584879885345690253.Spec := by
  intro n
  simp only [A179207, Nat.add_sub_cancel]

end A179207

/-! ## A179207.P564328780009934961

`abs(∑[or(1, n+1)]-2)`
-/

namespace A179207.P564328780009934961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2|

end

end A179207.P564328780009934961

namespace A179207

/-- `abs(∑[or(1, n+1)]-2)` -/
def P564328780009934961.Spec : Prop :=
  ∀ n, P564328780009934961.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P5568305279390509670

`∑[or(1, 1-char[1]+n)]`
-/

namespace A179207.P5568305279390509670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179207.P5568305279390509670

namespace A179207

/-- `∑[or(1, 1-char[1]+n)]` -/
def P5568305279390509670.Spec : Prop :=
  ∀ n, P5568305279390509670.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P11631348654356170701

`ceil(abs(3-(n+2)²/2))`
-/

namespace A179207.P11631348654356170701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|3 - ((n + 2) ^ 2 : ℚ) / 2|⌉

end

end A179207.P11631348654356170701

namespace A179207

/-- `ceil(abs(3-(n+2)²/2))` -/
def P11631348654356170701.Spec : Prop :=
  ∀ n, P11631348654356170701.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P6225922426596692676

`∑[(n-2)%2+1+n]`
-/

namespace A179207.P6225922426596692676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 2 + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179207.P6225922426596692676

namespace A179207

/-- `∑[(n-2)%2+1+n]` -/
def P6225922426596692676.Spec : Prop :=
  ∀ n, P6225922426596692676.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P939206745828939450

`∑[a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A179207.P939206745828939450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179207.P939206745828939450

namespace A179207

/-- `∑[a(n-2)+2]` -/
def P939206745828939450.Spec : Prop :=
  ∀ n, (P939206745828939450.a n : ℤ) = A179207 (n + 1)

end A179207

/-! ## A179207.P4092311703949278964

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A179207.P4092311703949278964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179207.P4092311703949278964

namespace A179207

/-- `∑[∑[2-a(n-1)]]` -/
def P4092311703949278964.Spec : Prop :=
  ∀ n, P4092311703949278964.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P7287916402345748000

`or(1, a(n-1)+1)+n` with `a(0)=1, a(1)=2`
-/

namespace A179207.P7287916402345748000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (a (n - 1) + 1) + n

end

end A179207.P7287916402345748000

namespace A179207

/-- `or(1, a(n-1)+1)+n` -/
def P7287916402345748000.Spec : Prop :=
  ∀ n, (P7287916402345748000.a n : ℤ) = A179207 (n + 1)

end A179207

/-! ## A179207.P6073801212414122392

`n+2+a(n-2)+n` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A179207.P6073801212414122392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  n + 2 + (a (n - 2) + n)

end

end A179207.P6073801212414122392

namespace A179207

/-- `n+2+a(n-2)+n` -/
def P6073801212414122392.Spec : Prop :=
  ∀ n, (P6073801212414122392.a n : ℤ) = A179207 (n + 1)

end A179207

/-! ## A179207.P7064607031710084749

`3-(gcd(2, n)-a(n-1)-n)` with `a(0)=1, a(1)=2`
-/

namespace A179207.P7064607031710084749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - ((Nat.gcd 2 n : ℤ) - a (n - 1) - (n : ℤ))

end

end A179207.P7064607031710084749

namespace A179207

/-- `3-(gcd(2, n)-a(n-1)-n)` -/
def P7064607031710084749.Spec : Prop :=
  ∀ n, P7064607031710084749.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P14522076782573232665

`∑[gcd((n+1)%2, 2%(n+1))+n]`
-/

namespace A179207.P14522076782573232665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) % 2) (2 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179207.P14522076782573232665

namespace A179207

/-- `∑[gcd((n+1)%2, 2%(n+1))+n]` -/
def P14522076782573232665.Spec : Prop :=
  ∀ n, (P14522076782573232665.a n : ℤ) = A179207 (n + 1)

end A179207

/-! ## A179207.P3728279306650650969

`1-((2-n)%2-a(n-1)-n)` with `a(0)=1`
-/

namespace A179207.P3728279306650650969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 1) - (n : ℤ))

end

end A179207.P3728279306650650969

namespace A179207

/-- `1-((2-n)%2-a(n-1)-n)` -/
def P3728279306650650969.Spec : Prop :=
  ∀ n, P3728279306650650969.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P174096858922660175

`floor(n*(2-(1/a(n-1)-n)/2))` with `a(0)=1`
-/

namespace A179207.P174096858922660175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) * (2 - (1 / (a (n - 1) : ℚ) - (n : ℚ)) / 2)⌋

end

end A179207.P174096858922660175

namespace A179207

/-- `floor(n*(2-(1/a(n-1)-n)/2))` -/
def P174096858922660175.Spec : Prop :=
  ∀ n, P174096858922660175.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P781062463741688618

`∑[n+2-and(n+1, floor((n+3)/(n+1)))]`
-/

namespace A179207.P781062463741688618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.land (n + 1 : ℤ) ⌊(n + 3 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179207.P781062463741688618

namespace A179207

/-- `∑[n+2-and(n+1, floor((n+3)/(n+1)))]` -/
def P781062463741688618.Spec : Prop :=
  ∀ n, P781062463741688618.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P4966818298232042755

`A267461(n)+1-n`
-/

namespace A179207.P4966818298232042755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267461 n + (1 - (n : ℤ))

end

end A179207.P4966818298232042755

namespace A179207

/-- `A267461(n)+1-n` -/
def P4966818298232042755.Spec : Prop :=
  ∀ n, P4966818298232042755.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P12241913452484251168

`abs(2-A074148(n+1))`
-/

namespace A179207.P12241913452484251168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074148 (n + 1)|

end

end A179207.P12241913452484251168

namespace A179207

/-- `abs(2-A074148(n+1))` -/
def P12241913452484251168.Spec : Prop :=
  ∀ n, P12241913452484251168.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P3156276147547223273

`∑[A267460(n)-1]+2`
-/

namespace A179207.P3156276147547223273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267460 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A179207.P3156276147547223273

namespace A179207

/-- `∑[A267460(n)-1]+2` -/
def P3156276147547223273.Spec : Prop :=
  ∀ n, P3156276147547223273.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P11339507824722259561

`abs(A188653(n+1))+n`
-/

namespace A179207.P11339507824722259561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188653 (n + 1)| + (n : ℤ)

end

end A179207.P11339507824722259561

namespace A179207

/-- `abs(A188653(n+1))+n` -/
def P11339507824722259561.Spec : Prop :=
  ∀ n, P11339507824722259561.a n = A179207 (n + 1)

end A179207

/-! ## A179207.P3789412755688040186

`2*A184674(n+1)-(n+1)`
-/

namespace A179207.P3789412755688040186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184674 (n + 1) - (n + 1 : ℤ)

end

end A179207.P3789412755688040186

namespace A179207

/-- `2*A184674(n+1)-(n+1)` -/
def P3789412755688040186.Spec : Prop :=
  ∀ n, P3789412755688040186.a n = A179207 (n + 1)

end A179207

/-!
# A179208: Primes prime(k) such that 2*prime(k) = prime(k-2) + prime(k+2).

The programs for A179208, the canonical program `A179208.P3750333226307364201` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179208 has offset 1).

The definition of A179208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179208.P7925080828470022675

`A000040(A066876(n+1))`
-/

namespace A179208.P7925080828470022675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066876 (n + 1)).toNat

end

end A179208.P7925080828470022675

namespace A179208

/-- `A000040(A066876(n+1))` -/
def P7925080828470022675.Spec : Prop :=
  ∀ n, P7925080828470022675.a n = A179208 (n + 1)

end A179208

/-! ## A179208.P14217917454753399370

`A008578(A066876(n+1)+1)`
-/

namespace A179208.P14217917454753399370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A066876 (n + 1) + 1).toNat

end

end A179208.P14217917454753399370

namespace A179208

/-- `A008578(A066876(n+1)+1)` -/
def P14217917454753399370.Spec : Prop :=
  ∀ n, P14217917454753399370.a n = A179208 (n + 1)

end A179208

/-! ## A179208.P12576506838090403423

`A045344(A066876(n+1)-1)`
-/

namespace A179208.P12576506838090403423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A066876 (n + 1) - 1).toNat

end

end A179208.P12576506838090403423

namespace A179208

/-- `A045344(A066876(n+1)-1)` -/
def P12576506838090403423.Spec : Prop :=
  ∀ n, P12576506838090403423.a n = A179208 (n + 1)

end A179208

/-! ## A179208.P14854652342467296448

`A065091(A066876(n+1)-1)`
-/

namespace A179208.P14854652342467296448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A066876 (n + 1) - 1).toNat

end

end A179208.P14854652342467296448

namespace A179208

/-- `A065091(A066876(n+1)-1)` -/
def P14854652342467296448.Spec : Prop :=
  ∀ n, P14854652342467296448.a n = A179208 (n + 1)

end A179208

/-! ## A179208.P9086028349368154941

`p?[gcd(A000040(n+1), A048449(n))]`
-/

namespace A179208.P9086028349368154941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A048449 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179208.P9086028349368154941

namespace A179208

/-- `p?[gcd(A000040(n+1), A048449(n))]` -/
def P9086028349368154941.Spec : Prop :=
  ∀ n, (P9086028349368154941.a n : ℤ) = A179208 (n + 1)

end A179208

/-! ## A179208.P10838696804917620722

`A090178(A066876(n+1)+1)-(A066876(n+1)+1)`
-/

namespace A179208.P10838696804917620722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (A066876 (n + 1) + 1).toNat - (A066876 (n + 1) + 1)

end

end A179208.P10838696804917620722

namespace A179208

/-- `A090178(A066876(n+1)+1)-(A066876(n+1)+1)` -/
def P10838696804917620722.Spec : Prop :=
  ∀ n, P10838696804917620722.a n = A179208 (n + 1)

end A179208

/-! ## A179208.P14580953114655536109

`A164931(A066876(n+1)+1)/(A066876(n+1)+1)`
-/

namespace A179208.P14580953114655536109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164931 (A066876 (n + 1) + 1).toNat : ℚ) / (A066876 (n + 1) + 1 : ℚ)

end

end A179208.P14580953114655536109

namespace A179208

/-- `A164931(A066876(n+1)+1)/(A066876(n+1)+1)` -/
def P14580953114655536109.Spec : Prop :=
  ∀ n, P14580953114655536109.a n = (A179208 (n + 1) : ℚ)

end A179208

/-! ## A179208.P3750333226307364201

`A000040(eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179208

/-- `A000040(eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1)` -/
def P3750333226307364201.Spec : Prop :=
  ∀ n, P3750333226307364201.a n = A179208 (n + 1)

theorem P3750333226307364201.correct : P3750333226307364201.Spec := by
  intro n
  simp only [A179208, Nat.add_sub_cancel]

end A179208

/-!
# A179209: Numbers k such that 2^(2*k-1) mod (2*k+1) = 2.

The programs for A179209, there is no canonical definition to state claims against.
-/

/-! ## A179209.P12612083223401161415

`ceil(A081765(n+1)/2)`
-/

namespace A179209.P12612083223401161415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081765 (n + 1) : ℚ) / 2⌉

end

end A179209.P12612083223401161415

/-! ## A179209.P6023524424257806180

`floor(A276967(n+2)/2)`
-/

namespace A179209.P6023524424257806180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276967 (n + 2) : ℚ) / 2⌋

end

end A179209.P6023524424257806180

/-! ## A179209.P12969681703706068134

`∑[Δ[A276967(n+1)]/2]`
-/

namespace A179209.P12969681703706068134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179209.P12969681703706068134

/-! ## A179209.P13225659183912152614

`∑[A302032(Δ[A276967(n+1)])]`
-/

namespace A179209.P13225659183912152614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179209.P13225659183912152614

/-! ## A179209.P17769813507499236324

`A302032(A276967(n+2)-1)`
-/

namespace A179209.P17769813507499236324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A276967 (n + 2) - 1).toNat

end

end A179209.P17769813507499236324

/-! ## A179209.P1651641482139536597

`eq[2, A178970(n+1)]+1`
-/

namespace A179209.P1651641482139536597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179209.P1651641482139536597

/-! ## A179209.P3830045210342488768

`eq[2, A213859(2*n+1)]+1`
-/

namespace A179209.P3830045210342488768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213859 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179209.P3830045210342488768

/-! ## A179209.P16887437512919004674

`eq[2, A341844(2*n+1)]+1`
-/

namespace A179209.P16887437512919004674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341844 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179209.P16887437512919004674

/-! ## A179209.P15532601221043274078

`eq[2, A341889(2*n+1)]+1`
-/

namespace A179209.P15532601221043274078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341889 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179209.P15532601221043274078

/-! ## A179209.P6067904672327179250

`eq[2*n+1, A213381(2*n+1)]+1`
-/

namespace A179209.P6067904672327179250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179209.P6067904672327179250

/-! ## A179209.P11215555456341911944

`A000463(A081765(n+1))`
-/

namespace A179209.P11215555456341911944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A081765 (n + 1)).toNat

end

end A179209.P11215555456341911944

/-! ## A179209.P15583310507589630979

`A004524(A276967(n+2))`
-/

namespace A179209.P15583310507589630979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A276967 (n + 2)).toNat

end

end A179209.P15583310507589630979

/-! ## A179209.P14019532338104812674

`A001281(A081765(n+1)+1)`
-/

namespace A179209.P14019532338104812674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A081765 (n + 1) + 1).toNat

end

end A179209.P14019532338104812674

/-! ## A179209.P10788397885142826240

`A004525(A081765(n+1)+1)`
-/

namespace A179209.P10788397885142826240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A081765 (n + 1) + 1).toNat

end

end A179209.P10788397885142826240

/-! ## A179209.P3377548894832257744

`record[A213381(A213381(2*n+1))-n]`
-/

namespace A179209.P3377548894832257744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 (A213381 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179209.P3377548894832257744

/-! ## A179209.P17557046810900918037

`A026741(eq[n, A213381(A026741(n))]+1)`
-/

namespace A179209.P17557046810900918037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179209.P17557046810900918037

/-!
# A179210: a(n) is the smallest prime q such that (r-q)/(q-p) = n, where p

The programs for A179210, there is no canonical definition to state claims against.
-/

/-! ## A179210.P16762821679949482937

`A279066(A005728(n))`
-/

namespace A179210.P16762821679949482937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279066 (A005728 n).toNat

end

end A179210.P16762821679949482937

/-! ## A179210.P15240464664964965203

`A279066(A002088(n)+1)`
-/

namespace A179210.P15240464664964965203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279066 (A002088 n + 1).toNat

end

end A179210.P15240464664964965203

/-! ## A179210.P3231409345302866098

`A279066(∑[A000010(A028310(n))])`
-/

namespace A179210.P3231409345302866098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279066 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179210.P3231409345302866098

/-! ## A179210.P5837460349525524534

`A279066(∑[A238453(A000124(n))])`
-/

namespace A179210.P5837460349525524534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238453 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279066 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179210.P5837460349525524534

/-! ## A179210.P15063351214042455412

`A001748(A078563(n+1))/3`
-/

namespace A179210.P15063351214042455412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A078563 (n + 1)).toNat : ℚ) / 3

end

end A179210.P15063351214042455412

/-!
# A179211: Number of squarefree numbers between n and 2*n (inclusive).

The programs for A179211, the canonical program `A179211.P7410535593365144243` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179211 has offset 1).

The definition of A179211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179211.P7410535593365144243

`A013928(2*(n+1)+1)-A013928(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179211

/-- `A013928(2*(n+1)+1)-A013928(n+1)` -/
def P7410535593365144243.Spec : Prop :=
  ∀ n, P7410535593365144243.a n = A179211 (n + 1)

theorem P7410535593365144243.correct : P7410535593365144243.Spec := by
  intro n
  simp only [A179211, Nat.add_sub_cancel]

end A179211

/-! ## A179211.P5522972200596716889

`A179212(n)+a(n-1)` with `a(0)=2`
-/

namespace A179211.P5522972200596716889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A179212 n + a (n - 1)

end

end A179211.P5522972200596716889

namespace A179211

/-- `A179212(n)+a(n-1)` -/
def P5522972200596716889.Spec : Prop :=
  ∀ n, P5522972200596716889.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P16715671065704304185

`A077641(n+1)+A008966(2*(n+1))`
-/

namespace A179211.P16715671065704304185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (n + 1) + A008966 (2 * (n + 1))

end

end A179211.P16715671065704304185

namespace A179211

/-- `A077641(n+1)+A008966(2*(n+1))` -/
def P16715671065704304185.Spec : Prop :=
  ∀ n, P16715671065704304185.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P17057352530121442543

`A107079(2*n+3)-A107079(n+1)`
-/

namespace A179211.P17057352530121442543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (2 * n + 3) - A107079 (n + 1)

end

end A179211.P17057352530121442543

namespace A179211

/-- `A107079(2*n+3)-A107079(n+1)` -/
def P17057352530121442543.Spec : Prop :=
  ∀ n, P17057352530121442543.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P4524616097909948342

`∑[A179212(n+1)]+2-A179212(n+1)`
-/

namespace A179211.P4524616097909948342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A179212 (n + 1))

end

end A179211.P4524616097909948342

namespace A179211

/-- `∑[A179212(n+1)]+2-A179212(n+1)` -/
def P4524616097909948342.Spec : Prop :=
  ∀ n, P4524616097909948342.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P13771363648580745030

`A262868(2*(n+1))+A091069(n+1)²`
-/

namespace A179211.P13771363648580745030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) + A091069 (n + 1) ^ 2

end

end A179211.P13771363648580745030

namespace A179211

/-- `A262868(2*(n+1))+A091069(n+1)²` -/
def P13771363648580745030.Spec : Prop :=
  ∀ n, P13771363648580745030.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P15783530829856013452

`A262868(2*(n+1))+A008966(2*(n+1))`
-/

namespace A179211.P15783530829856013452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) + A008966 (2 * (n + 1))

end

end A179211.P15783530829856013452

namespace A179211

/-- `A262868(2*(n+1))+A008966(2*(n+1))` -/
def P15783530829856013452.Spec : Prop :=
  ∀ n, P15783530829856013452.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P1395305673713311381

`A262868(2*(n+1))+abs(A008683(2*(n+1)))`
-/

namespace A179211.P1395305673713311381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) + |A008683 (2 * (n + 1))|

end

end A179211.P1395305673713311381

namespace A179211

/-- `A262868(2*(n+1))+abs(A008683(2*(n+1)))` -/
def P1395305673713311381.Spec : Prop :=
  ∀ n, P1395305673713311381.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P7021803411365955822

`A262868(2*n+1)+Δ[A013928(2*n+1)]`
-/

namespace A179211.P7021803411365955822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A179211.P7021803411365955822

namespace A179211

/-- `A262868(2*n+1)+Δ[A013928(2*n+1)]` -/
def P7021803411365955822.Spec : Prop :=
  ∀ n, P7021803411365955822.a n = A179211 (n + 1)

end A179211

/-! ## A179211.P1715333739147985193

`A262869(4*(n+1))-A262869(2*n+1)`
-/

namespace A179211.P1715333739147985193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (4 * (n + 1)) - A262869 (2 * n + 1)

end

end A179211.P1715333739147985193

namespace A179211

/-- `A262869(4*(n+1))-A262869(2*n+1)` -/
def P1715333739147985193.Spec : Prop :=
  ∀ n, P1715333739147985193.a n = A179211 (n + 1)

end A179211

/-!
# A179212: First differences of A179211.

The programs for A179212, the canonical program `A179212.P17559837832965239992` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179212 has offset 1).

The definition of A179212 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179212.P17559837832965239992

`A008966(2*(n+1)+2)+A008966(2*(n+1)+1)-A008966(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179212

/-- `A008966(2*(n+1)+2)+A008966(2*(n+1)+1)-A008966(n+1)` -/
def P17559837832965239992.Spec : Prop :=
  ∀ n, P17559837832965239992.a n = A179212 (n + 1)

theorem P17559837832965239992.correct : P17559837832965239992.Spec := by
  intro n
  simp only [A179212, Nat.add_sub_cancel]

end A179212

/-! ## A179212.P13476407862920451549

`Δ[A013928(2*n+3)]-A008966(n+1)`
-/

namespace A179212.P13476407862920451549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008966 (n + 1)

end

end A179212.P13476407862920451549

namespace A179212

/-- `Δ[A013928(2*n+3)]-A008966(n+1)` -/
def P13476407862920451549.Spec : Prop :=
  ∀ n, P13476407862920451549.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P15038004616722745978

`Δ[A013928(2*n+3)-A013928(n+1)]`
-/

namespace A179212.P15038004616722745978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * n + 3) - A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P15038004616722745978

namespace A179212

/-- `Δ[A013928(2*n+3)-A013928(n+1)]` -/
def P15038004616722745978.Spec : Prop :=
  ∀ n, P15038004616722745978.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P10707619146979620942

`Δ[A107079(2*n+3)-A107079(n+1)]`
-/

namespace A179212.P10707619146979620942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (2 * n + 3) - A107079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P10707619146979620942

namespace A179212

/-- `Δ[A107079(2*n+3)-A107079(n+1)]` -/
def P10707619146979620942.Spec : Prop :=
  ∀ n, P10707619146979620942.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P14800065424142740463

`Δ[A179211(n+1)]`
-/

namespace A179212.P14800065424142740463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P14800065424142740463

namespace A179212

/-- `Δ[A179211(n+1)]` -/
def P14800065424142740463.Spec : Prop :=
  ∀ n, P14800065424142740463.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P16900670669830066952

`A179211(n+2)-A179211(n+1)`
-/

namespace A179212.P16900670669830066952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179211 (n + 2) - A179211 (n + 1)

end

end A179212.P16900670669830066952

namespace A179212

/-- `A179211(n+2)-A179211(n+1)` -/
def P16900670669830066952.Spec : Prop :=
  ∀ n, P16900670669830066952.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P12216264838223104854

`Δ[A262868(2*(n+1))+A008966(2*(n+1))]`
-/

namespace A179212.P12216264838223104854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) + A008966 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P12216264838223104854

namespace A179212

/-- `Δ[A262868(2*(n+1))+A008966(2*(n+1))]` -/
def P12216264838223104854.Spec : Prop :=
  ∀ n, P12216264838223104854.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P14748827023220681349

`Δ[A262868(2*n+1)+Δ[A013928(2*n+1)]]`
-/

namespace A179212.P14748827023220681349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P14748827023220681349

namespace A179212

/-- `Δ[A262868(2*n+1)+Δ[A013928(2*n+1)]]` -/
def P14748827023220681349.Spec : Prop :=
  ∀ n, P14748827023220681349.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P7614809858556785507

`Δ[A262868(2*n+3)+abs(A008683(n+1))]`
-/

namespace A179212.P7614809858556785507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 3) + |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P7614809858556785507

namespace A179212

/-- `Δ[A262868(2*n+3)+abs(A008683(n+1))]` -/
def P7614809858556785507.Spec : Prop :=
  ∀ n, P7614809858556785507.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P1498533103707899967

`Δ[A262868(2*n+3)+A008683(lcm(2, n+1))²]`
-/

namespace A179212.P1498533103707899967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 3) + A008683 (Nat.lcm 2 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P1498533103707899967

namespace A179212

/-- `Δ[A262868(2*n+3)+A008683(lcm(2, n+1))²]` -/
def P1498533103707899967.Spec : Prop :=
  ∀ n, P1498533103707899967.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P9631535034510149737

`Δ[A262868(2*n+3)+A008683(C(n+1, n))²]`
-/

namespace A179212.P9631535034510149737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 3) + A008683 (Nat.choose (n + 1) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P9631535034510149737

namespace A179212

/-- `Δ[A262868(2*n+3)+A008683(C(n+1, n))²]` -/
def P9631535034510149737.Spec : Prop :=
  ∀ n, P9631535034510149737.a n = A179212 (n + 1)

end A179212

/-! ## A179212.P17519068988754050723

`Δ[A262868(2*n+3)+A008683(-xor(n, -1))²]`
-/

namespace A179212.P17519068988754050723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 3) + A008683 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P17519068988754050723

namespace A179212

/-- `Δ[A262868(2*n+3)+A008683(-xor(n, -1))²]` -/
def P17519068988754050723.Spec : Prop :=
  ∀ n, P17519068988754050723.a n = A179212 (n + 1)

end A179212

/-!
# A179213: Sum of squarefree numbers between n and 2*n (inclusive).

The programs for A179213, the canonical program `A179213.P7252465980634489640` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179213 has offset 1).

The definition of A179213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179213.P7252465980634489640

`A066779(2*(n+1))-A262871(2*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179213

/-- `A066779(2*(n+1))-A262871(2*n+1)` -/
def P7252465980634489640.Spec : Prop :=
  ∀ n, P7252465980634489640.a n = A179213 (n + 1)

theorem P7252465980634489640.correct : P7252465980634489640.Spec := by
  intro n
  simp only [A179213, Nat.add_sub_cancel]

end A179213

/-! ## A179213.P8748460118066534094

`A066779(2*(n+1))+A262870(2*(n+1))-A066779(2*n+1)`
-/

namespace A179213.P8748460118066534094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (2 * (n + 1)) + (A262870 (2 * (n + 1)) - A066779 (2 * n + 1))

end

end A179213.P8748460118066534094

namespace A179213

/-- `A066779(2*(n+1))+A262870(2*(n+1))-A066779(2*n+1)` -/
def P8748460118066534094.Spec : Prop :=
  ∀ n, P8748460118066534094.a n = A179213 (n + 1)

end A179213

/-! ## A179213.P4141417371299064544

`A262992(2*n+3)-A262871(2*n+1)`
-/

namespace A179213.P4141417371299064544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (2 * n + 3) - A262871 (2 * n + 1)

end

end A179213.P4141417371299064544

namespace A179213

/-- `A262992(2*n+3)-A262871(2*n+1)` -/
def P4141417371299064544.Spec : Prop :=
  ∀ n, P4141417371299064544.a n = A179213 (n + 1)

end A179213

/-! ## A179213.P10902579885449484181

`A262870(2*n+1)+Δ[A262992(2*n+1)]`
-/

namespace A179213.P10902579885449484181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A179213.P10902579885449484181

namespace A179213

/-- `A262870(2*n+1)+Δ[A262992(2*n+1)]` -/
def P10902579885449484181.Spec : Prop :=
  ∀ n, P10902579885449484181.a n = A179213 (n + 1)

end A179213

/-! ## A179213.P5977469417564441287

`A294285(2*n+1)+Δ[A262992(2*n+1)]`
-/

namespace A179213.P5977469417564441287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A179213.P5977469417564441287

namespace A179213

/-- `A294285(2*n+1)+Δ[A262992(2*n+1)]` -/
def P5977469417564441287.Spec : Prop :=
  ∀ n, P5977469417564441287.a n = A179213 (n + 1)

end A179213

/-!
# A179214: Product of squarefree numbers between n and 2*n (inclusive).

The programs for A179214, the canonical program `A179214.P16221757055703750119` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179214 has offset 1).

The definition of A179214 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179215, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179214.P16221757055703750119

`A179215(2*(n+1))/A179215(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179214

/-- `A179215(2*(n+1))/A179215(n)` -/
def P16221757055703750119.Spec : Prop :=
  ∀ n, P16221757055703750119.a n = (A179214 (n + 1) : ℚ)

end A179214

/-! ## A179214.P3896489126135727964

`A028310(A147783(n+4)*A182863(2*n+1))`
-/

namespace A179214.P3896489126135727964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147783 (n + 4) * A182863 (2 * n + 1)).toNat

end

end A179214.P3896489126135727964

namespace A179214

/-- `A028310(A147783(n+4)*A182863(2*n+1))` -/
def P3896489126135727964.Spec : Prop :=
  ∀ n, P3896489126135727964.a n = A179214 (n + 1)

end A179214

/-!
# A179215: Product of squarefree numbers less than n+1.

The programs for A179215, the canonical program `A179215.P1587544281057178083` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179215 has offset 0).

The definition of A179215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179215.P17335088462940383693

`∏[n^and(1, A074206(n))]`
-/

namespace A179215.P17335088462940383693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A074206 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179215.P17335088462940383693

namespace A179215

/-- `∏[n^and(1, A074206(n))]` -/
def P17335088462940383693.Spec : Prop :=
  ∀ n, P17335088462940383693.a n = (A179215 n : ℚ)

end A179215

/-! ## A179215.P12926515059179969207

`a(n-1)*A385212(n)` with `a(0)=1`
-/

namespace A179215.P12926515059179969207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A385212 n

end

end A179215.P12926515059179969207

namespace A179215

/-- `a(n-1)*A385212(n)` -/
def P12926515059179969207.Spec : Prop :=
  ∀ n, P12926515059179969207.a n = A179215 n

end A179215

/-! ## A179215.P6053839894198233738

`a(n-1)*A349630(n²)` with `a(0)=1`
-/

namespace A179215.P6053839894198233738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A349630 (n ^ 2)

end

end A179215.P6053839894198233738

namespace A179215

/-- `a(n-1)*A349630(n²)` -/
def P6053839894198233738.Spec : Prop :=
  ∀ n, P6053839894198233738.a n = A179215 n

end A179215

/-! ## A179215.P16173116399085625264

`∏[gcd(n, 1-char[A007913(n+1)])]`
-/

namespace A179215.P16173116399085625264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179215.P16173116399085625264

namespace A179215

/-- `∏[gcd(n, 1-char[A007913(n+1)])]` -/
def P16173116399085625264.Spec : Prop :=
  ∀ n, (P16173116399085625264.a n : ℤ) = A179215 n

end A179215

/-! ## A179215.P1587544281057178083

`∏[C(n, n-char[A005117(n+1)])]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A179215

/-- `∏[C(n, n-char[A005117(n+1)])]` -/
def P1587544281057178083.Spec : Prop :=
  ∀ n, (P1587544281057178083.a n : ℤ) = A179215 n

theorem P1587544281057178083.correct : P1587544281057178083.Spec := by
  intro n
  simp only [A179215]

end A179215

/-! ## A179215.P1804623374028646835

`n^abs(A008683(n))*a(n-1)` with `a(0)=1`
-/

namespace A179215.P1804623374028646835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ (|A008683 n| : ℤ) * a (n - 1)

end

end A179215.P1804623374028646835

namespace A179215

/-- `n^abs(A008683(n))*a(n-1)` -/
def P1804623374028646835.Spec : Prop :=
  ∀ n, P1804623374028646835.a n = (A179215 n : ℚ)

end A179215

/-! ## A179215.P5879594520596167705

`∏[sqrt(n)^A002483(A255326(n))]`
-/

namespace A179215.P5879594520596167705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (A002483 (A255326 n).toNat : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179215.P5879594520596167705

namespace A179215

/-- `∏[sqrt(n)^A002483(A255326(n))]` -/
def P5879594520596167705.Spec : Prop :=
  ∀ n, P5879594520596167705.a n = (A179215 n : ℝ)

end A179215

/-!
# A179216: Permutation of triangular array of numbers (greater than 1) arranged by prime signature.

The programs for A179216, there is no canonical definition to state claims against.
-/

/-! ## A179216.P17359884191489612290

`A095904(∑[2*n]%comp[∑[n]])`
-/

namespace A179216.P17359884191489612290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095904 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A179216.P17359884191489612290

/-! ## A179216.P16574763537984029183

`A095904(∑[char[∑[n]]]²-(n+1))`
-/

namespace A179216.P16574763537984029183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095904 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A179216.P16574763537984029183

/-! ## A179216.P11319730487004715413

`and(-1, A095904(A061579(n)))`
-/

namespace A179216.P11319730487004715413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A095904 (A061579 n).toNat)

end

end A179216.P11319730487004715413

/-! ## A179216.P16812939885248029908

`A095904(A061579(n))%A001538(n)`
-/

namespace A179216.P16812939885248029908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095904 (A061579 n).toNat) (A001538 n)

end

end A179216.P16812939885248029908

/-! ## A179216.P2735268886121409503

`gcd(A000038(n), A095904(A061579(n)))`
-/

namespace A179216.P2735268886121409503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A095904 (A061579 n).toNat)

end

end A179216.P2735268886121409503

/-! ## A179216.P15910454416896042129

`lcm(A095904(A061579(n)), A130151(n))`
-/

namespace A179216.P15910454416896042129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A095904 (A061579 n).toNat) (A130151 n)

end

end A179216.P15910454416896042129

/-! ## A179216.P674951267848150830

`∑{d}[A095904(A061579(n)), A000010(#)]`
-/

namespace A179216.P674951267848150830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095904 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A179216.P674951267848150830

/-! ## A179216.P2922271618744879644

`A007318(∑[n])*A095904(A061579(n))`
-/

namespace A179216.P2922271618744879644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A095904 (A061579 n).toNat

end

end A179216.P2922271618744879644

/-! ## A179216.P8380054804897278578

`A007318(C(2, n))+A095904(A061579(n))-1`
-/

namespace A179216.P8380054804897278578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A095904 (A061579 n).toNat - 1)

end

end A179216.P8380054804897278578

/-!
# A179217: Inverse function to A095904.

The programs for A179217, there is no canonical definition to state claims against.
-/

/-! ## A179217.P18103008841850374886

`A061579(A179218(n+2))`
-/

namespace A179217.P18103008841850374886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A179218 (n + 2)).toNat

end

end A179217.P18103008841850374886

/-! ## A179217.P2439655466665683028

`A038722(A179218(n+2)+1)-1`
-/

namespace A179217.P2439655466665683028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A179218 (n + 2) + 1).toNat - 1

end

end A179217.P2439655466665683028

/-!
# A179218: Inverse function to A179216.

The programs for A179218, there is no canonical definition to state claims against.
-/

/-! ## A179218.P8719722649775271798

`A061579(A179217(n+2))`
-/

namespace A179218.P8719722649775271798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A179217 (n + 2)).toNat

end

end A179218.P8719722649775271798

/-! ## A179218.P5438497656045951015

`A038722(A179217(n+2)+1)-1`
-/

namespace A179218.P5438497656045951015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A179217 (n + 2) + 1).toNat - 1

end

end A179218.P5438497656045951015

/-! ## A179218.P12729687512362086659

`A057428(n+1)+A038722(A179217(n+2)+1)`
-/

namespace A179218.P12729687512362086659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A038722 (A179217 (n + 2) + 1).toNat

end

end A179218.P12729687512362086659

/-!
# A179219: Iterative mapping: a(1)=0, a(n)=A095904(a(n-1)).

The programs for A179219, there is no canonical definition to state claims against.
-/

/-! ## A179219.P1932285823547855533

`A095904(a(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179219.P1932285823547855533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095904 (a (n - 1)).toNat

end

end A179219.P1932285823547855533

/-! ## A179219.P7467237861450523149

`A179216(A061579(a(n-1)))` with `a(0)=0`
-/

namespace A179219.P7467237861450523149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A179216 (A061579 (a (n - 1)).toNat).toNat

end

end A179219.P7467237861450523149

/-!
# A179220: Iterative mapping: a(1)=1, a(n)=A095904(a(n-1)).

The programs for A179220, there is no canonical definition to state claims against.
-/

/-! ## A179220.P16109283766956566609

`A095904(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179220.P16109283766956566609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095904 (a (n - 1)).toNat

end

end A179220.P16109283766956566609

/-! ## A179220.P5703008175470276921

`A179216(A061579(a(n-1)))` with `a(0)=1`
-/

namespace A179220.P5703008175470276921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179216 (A061579 (a (n - 1)).toNat).toNat

end

end A179220.P5703008175470276921

/-!
# A179221: Iterative mapping: a(1)=0, a(n)=A179216(a(n-1)).

The programs for A179221, there is no canonical definition to state claims against.
-/

/-! ## A179221.P3347754504771929074

`A179216(a(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179221.P3347754504771929074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A179216 (a (n - 1)).toNat

end

end A179221.P3347754504771929074

/-! ## A179221.P18435450500307839486

`A095904(A061579(a(n-1)))` with `a(0)=0`
-/

namespace A179221.P18435450500307839486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095904 (A061579 (a (n - 1)).toNat).toNat

end

end A179221.P18435450500307839486

/-!
# A179222: Iterative mapping: a(1)=1, a(n)=A179216(a(n-1)).

The programs for A179222, there is no canonical definition to state claims against.
-/

/-! ## A179222.P7641702940959642923

`A179216(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179222.P7641702940959642923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179216 (a (n - 1)).toNat

end

end A179222.P7641702940959642923

/-! ## A179222.P3448293157650250273

`A095904(A061579(a(n-1)))` with `a(0)=1`
-/

namespace A179222.P3448293157650250273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095904 (A061579 (a (n - 1)).toNat).toNat

end

end A179222.P3448293157650250273

/-! ## A179222.P15080843438542869040

`A096153(A038722(a(n-1)+1))` with `a(0)=1`
-/

namespace A179222.P15080843438542869040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096153 (A038722 (a (n - 1) + 1).toNat).toNat

end

end A179222.P15080843438542869040

/-!
# A179223: Iterative mapping with offset: a(1)=1, a(n)=A095904(a(n-1)-1).

The programs for A179223, there is no canonical definition to state claims against.
-/

/-! ## A179223.P13901132800166117128

`A095904(a(n-1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179223.P13901132800166117128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095904 (a (n - 1) - 1).toNat

end

end A179223.P13901132800166117128

/-! ## A179223.P17470595360890852249

`A096153(a(n-1))` with `a(0)=1`
-/

namespace A179223.P17470595360890852249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096153 (a (n - 1)).toNat

end

end A179223.P17470595360890852249

/-! ## A179223.P8151886035737082192

`A095904(A023443(a(n-1)))` with `a(0)=1`
-/

namespace A179223.P8151886035737082192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095904 (A023443 (a (n - 1)).toNat).toNat

end

end A179223.P8151886035737082192

/-! ## A179223.P7786130196886179590

`A095904(A175427(a(n-1)))` with `a(0)=1`
-/

namespace A179223.P7786130196886179590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095904 (A175427 (a (n - 1)).toNat).toNat

end

end A179223.P7786130196886179590

/-! ## A179223.P3105231649792479400

`A095904(A272159(a(n-1)))` with `a(0)=1`
-/

namespace A179223.P3105231649792479400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095904 (A272159 (a (n - 1)).toNat).toNat

end

end A179223.P3105231649792479400

/-!
# A179225: Iterative mapping with offset: a(1)=1, a(n)=A179216(a(n-1)-1).

The programs for A179225, there is no canonical definition to state claims against.
-/

/-! ## A179225.P17798951083332429040

`A179216(a(n-1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179225.P17798951083332429040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179216 (a (n - 1) - 1).toNat

end

end A179225.P17798951083332429040

/-! ## A179225.P16792162371318972997

`A096153(A038722(a(n-1)))` with `a(0)=1`
-/

namespace A179225.P16792162371318972997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096153 (A038722 (a (n - 1)).toNat).toNat

end

end A179225.P16792162371318972997

/-! ## A179225.P768396259707858485

`A179216(A023443(a(n-1)))` with `a(0)=1`
-/

namespace A179225.P768396259707858485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179216 (A023443 (a (n - 1)).toNat).toNat

end

end A179225.P768396259707858485

/-! ## A179225.P17893203608263051233

`A020725(A246275(a(n-1)))` with `a(0)=1`
-/

namespace A179225.P17893203608263051233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020725 (A246275 (a (n - 1)).toNat).toNat

end

end A179225.P17893203608263051233

/-!
# A179229: a(n) = number of Abelian groups of order 2*n which are not isomorphic to the group of units of the ring Z/kZ for any k.

The programs for A179229, there is no canonical definition to state claims against.
-/

/-! ## A179229.P8224614312604655580

`A394390(2*(n+1))`
-/

namespace A179229.P8224614312604655580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394390 (2 * (n + 1))

end

end A179229.P8224614312604655580

/-! ## A179229.P13090865296130535980

`A101872(n+1)-A197366(n+1)`
-/

namespace A179229.P13090865296130535980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (n + 1) - A197366 (n + 1)

end

end A179229.P13090865296130535980

/-! ## A179229.P4331784112380404277

`A000688(2*(n+1))-A197366(n+1)`
-/

namespace A179229.P4331784112380404277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * (n + 1)) - A197366 (n + 1)

end

end A179229.P4331784112380404277

/-! ## A179229.P11780513312380652972

`A000688(2*(n+1))-A380578(2*(n+1))`
-/

namespace A179229.P11780513312380652972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * (n + 1)) - A380578 (2 * (n + 1))

end

end A179229.P11780513312380652972

/-! ## A179229.P15646873166130539340

`A373968(lcm(6, n+1))`
-/

namespace A179229.P15646873166130539340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373968 (Nat.lcm 6 (n + 1))

end

end A179229.P15646873166130539340

/-!
# A179230: n-th derivative of x^(x^x) at x=1.

The programs for A179230, there is no canonical definition to state claims against.
-/

/-! ## A179230.P10310562959054967853

`A028310(n)*A295103(A028310(n))`
-/

namespace A179230.P10310562959054967853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295103 (A028310 n).toNat

end

end A179230.P10310562959054967853

/-! ## A179230.P9499852631158804616

`A215703(∑[n+3]+n+3)`
-/

namespace A179230.P9499852631158804616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A179230.P9499852631158804616

/-! ## A179230.P613722753068910696

`A215703(eq[3, A025581(n)])+A000035(2*n)`
-/

namespace A179230.P613722753068910696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000035 (2 * n)

end

end A179230.P613722753068910696

/-! ## A179230.P5831968220935530892

`A028310(n)*A295028(A034856(n+1))`
-/

namespace A179230.P5831968220935530892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295028 (A034856 (n + 1)).toNat

end

end A179230.P5831968220935530892

/-! ## A179230.P14362544862942755763

`A277537(∑[n+4]+2)`
-/

namespace A179230.P14362544862942755763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A179230.P14362544862942755763

/-!
# A179231: Primes of the form 250n + 1.

The programs for A179231, the canonical program `A179231.P2213014331744151429` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179231 has offset 1).

The definition of A179231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179231.P2213014331744151429

`p?[5*25*n+1]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179231

/-- `p?[5*25*n+1]` -/
def P2213014331744151429.Spec : Prop :=
  ∀ n, (P2213014331744151429.a n : ℤ) = A179231 (n + 1)

theorem P2213014331744151429.correct : P2213014331744151429.Spec := by
  intro n
  simp only [A179231, Nat.add_sub_cancel]

end A179231

/-! ## A179231.P4949716678103401023

`or(1, p?[A154379(n+1)-9])`
-/

namespace A179231.P4949716678103401023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A179231.P4949716678103401023

namespace A179231

/-- `or(1, p?[A154379(n+1)-9])` -/
def P4949716678103401023.Spec : Prop :=
  ∀ n, P4949716678103401023.a n = A179231 (n + 1)

end A179231

/-! ## A179231.P13763862711781172328

`lcm(p?[A154379(n+1)-9], A112865(n))`
-/

namespace A179231.P13763862711781172328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A112865 n)

end

end A179231.P13763862711781172328

namespace A179231

/-- `lcm(p?[A154379(n+1)-9], A112865(n))` -/
def P13763862711781172328.Spec : Prop :=
  ∀ n, (P13763862711781172328.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P4121457327060419728

`A000038(n+1)+p?[A154379(n+1)-9]`
-/

namespace A179231.P4121457327060419728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179231.P4121457327060419728

namespace A179231

/-- `A000038(n+1)+p?[A154379(n+1)-9]` -/
def P4121457327060419728.Spec : Prop :=
  ∀ n, P4121457327060419728.a n = A179231 (n + 1)

end A179231

/-! ## A179231.P783905243411923897

`p?[A154379(n+1)-9]%A282872(n+1)`
-/

namespace A179231.P783905243411923897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A282872 (n + 1))

end

end A179231.P783905243411923897

namespace A179231

/-- `p?[A154379(n+1)-9]%A282872(n+1)` -/
def P783905243411923897.Spec : Prop :=
  ∀ n, P783905243411923897.a n = A179231 (n + 1)

end A179231

/-! ## A179231.P16486053051325858598

`p?[A154379(n+1)-9]/A001221(A054643(n+1))`
-/

namespace A179231.P16486053051325858598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001221 (A054643 (n + 1)).toNat : ℚ)

end

end A179231.P16486053051325858598

namespace A179231

/-- `p?[A154379(n+1)-9]/A001221(A054643(n+1))` -/
def P16486053051325858598.Spec : Prop :=
  ∀ n, P16486053051325858598.a n = (A179231 (n + 1) : ℚ)

end A179231

/-! ## A179231.P5719215091881060941

`A010051(A211437(n+1))+p?[A154379(n+1)-9]`
-/

namespace A179231.P5719215091881060941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A211437 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179231.P5719215091881060941

namespace A179231

/-- `A010051(A211437(n+1))+p?[A154379(n+1)-9]` -/
def P5719215091881060941.Spec : Prop :=
  ∀ n, P5719215091881060941.a n = A179231 (n + 1)

end A179231

/-! ## A179231.P6046141592845138334

`∩[A030430(n+1), A376538(n+1)]`
-/

namespace A179231.P6046141592845138334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P6046141592845138334

namespace A179231

/-- `∩[A030430(n+1), A376538(n+1)]` -/
def P6046141592845138334.Spec : Prop :=
  ∀ n, (P6046141592845138334.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P3195493418350542130

`∩[A141927(n+1), A376538(n+1)]`
-/

namespace A179231.P3195493418350542130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P3195493418350542130

namespace A179231

/-- `∩[A141927(n+1), A376538(n+1)]` -/
def P3195493418350542130.Spec : Prop :=
  ∀ n, (P3195493418350542130.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P14185468653057379256

`∩[A179446(n+1), A376538(n+1)]`
-/

namespace A179231.P14185468653057379256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P14185468653057379256

namespace A179231

/-- `∩[A179446(n+1), A376538(n+1)]` -/
def P14185468653057379256.Spec : Prop :=
  ∀ n, (P14185468653057379256.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P2273833985437871983

`A000027(p?[A154379(n+1)-9])`
-/

namespace A179231.P2273833985437871983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154379 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179231.P2273833985437871983

namespace A179231

/-- `A000027(p?[A154379(n+1)-9])` -/
def P2273833985437871983.Spec : Prop :=
  ∀ n, P2273833985437871983.a n = A179231 (n + 1)

end A179231

/-! ## A179231.P590199653284867280

`∩[A045453(n+1), A376538(n+1)]`
-/

namespace A179231.P590199653284867280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P590199653284867280

namespace A179231

/-- `∩[A045453(n+1), A376538(n+1)]` -/
def P590199653284867280.Spec : Prop :=
  ∀ n, (P590199653284867280.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P17966518328810756906

`∩[A030430(n+1), A056082(n+1)]`
-/

namespace A179231.P17966518328810756906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P17966518328810756906

namespace A179231

/-- `∩[A030430(n+1), A056082(n+1)]` -/
def P17966518328810756906.Spec : Prop :=
  ∀ n, (P17966518328810756906.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P8188656024268549720

`∩[A045453(n+1), A056082(n+1)]`
-/

namespace A179231.P8188656024268549720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P8188656024268549720

namespace A179231

/-- `∩[A045453(n+1), A056082(n+1)]` -/
def P8188656024268549720.Spec : Prop :=
  ∀ n, (P8188656024268549720.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P11410499253499465408

`∩[A056082(n+1), A141927(n+1)]`
-/

namespace A179231.P11410499253499465408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P11410499253499465408

namespace A179231

/-- `∩[A056082(n+1), A141927(n+1)]` -/
def P11410499253499465408.Spec : Prop :=
  ∀ n, (P11410499253499465408.a n : ℤ) = A179231 (n + 1)

end A179231

/-! ## A179231.P3994995493388267914

`∩[A056082(n+1), A179446(n+1)]`
-/

namespace A179231.P3994995493388267914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179231.P3994995493388267914

namespace A179231

/-- `∩[A056082(n+1), A179446(n+1)]` -/
def P3994995493388267914.Spec : Prop :=
  ∀ n, (P3994995493388267914.a n : ℤ) = A179231 (n + 1)

end A179231

/-!
# A179232: Numbers in A075728 which are not one less than some prime.

The programs for A179232, there is no canonical definition to state claims against.
-/

/-! ## A179232.P9132380071849857238

`∩[A075728(n+1), A112277(n+1)]`
-/

namespace A179232.P9132380071849857238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179232.P9132380071849857238

/-!
# A179233: Irregular triangle T(n,k) = A049019(n,k)/A096162(n,k), read by rows, 1<=k <= A000041(n).

The programs for A179233, there is no canonical definition to state claims against.
-/

/-! ## A179233.P13313194358717332162

`A179236(n)/A036042(n)!`
-/

namespace A179233.P13313194358717332162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (Nat.factorial (A036042 n).toNat : ℚ)

end

end A179233.P13313194358717332162

/-! ## A179233.P6451363370094239733

`A049009(n)/(A096162(n)*A098546(n))`
-/

namespace A179233.P6451363370094239733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A096162 n * A098546 n : ℚ)

end

end A179233.P6451363370094239733

/-! ## A179233.P10157513496946299482

`A179236(n)/A178801(n)`
-/

namespace A179233.P10157513496946299482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A178801 n : ℚ)

end

end A179233.P10157513496946299482

/-!
# A179234: a(n) is the smallest prime q such that, for the previous prime p and the following prime r, the fraction (r-q)/(q-p) has denominator n in lowest terms.

The programs for A179234, there is no canonical definition to state claims against.
-/

/-! ## A179234.P18327224140268215484

`A000040(A123883(A067603(n+1)))`
-/

namespace A179234.P18327224140268215484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123883 (A067603 (n + 1)).toNat).toNat

end

end A179234.P18327224140268215484

/-!
# A179235: Row sums of the irregular triangle A179236.

The programs for A179235, there is no canonical definition to state claims against.
-/

/-! ## A179235.P15455560828594344664

`n!*A120774(n)`
-/

namespace A179235.P15455560828594344664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A120774 n

end

end A179235.P15455560828594344664

/-! ## A179235.P14564258125362469885

`A000142(n)*A120774(n)`
-/

namespace A179235.P14564258125362469885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A120774 n

end

end A179235.P14564258125362469885

/-! ## A179235.P11163643708201188199

`abs(A120774(n)*A133942(n))`
-/

namespace A179235.P11163643708201188199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120774 n * A133942 n|

end

end A179235.P11163643708201188199

/-!
# A179236: Irregular triangle T(n,k) = A096162(n,k) * A036040(n,k) * A048996(n,k) * A098546(n,k) * A178886(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A179236, there is no canonical definition to state claims against.
-/

/-! ## A179236.P221147282970119155

`A048996(n)*A178882(n)`
-/

namespace A179236.P221147282970119155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A178882 n

end

end A179236.P221147282970119155

/-! ## A179236.P9095846571659434040

`A049009(n)*A178886(n)`
-/

namespace A179236.P9095846571659434040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049009 n * A178886 n

end

end A179236.P9095846571659434040

/-! ## A179236.P5180777765028626776

`A122454(n)*A178883(n)`
-/

namespace A179236.P5180777765028626776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122454 n * A178883 n

end

end A179236.P5180777765028626776

/-! ## A179236.P9787551973501559653

`A096162(n)*A130561(n)*A179233(n)`
-/

namespace A179236.P9787551973501559653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096162 n * A130561 n * A179233 n

end

end A179236.P9787551973501559653

/-! ## A179236.P1124699985774237280

`A178801(n)*A179233(n)`
-/

namespace A179236.P1124699985774237280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178801 n * A179233 n

end

end A179236.P1124699985774237280

/-! ## A179236.P11348660212745878571

`A178802(n)/A178801(n)*A178882(n)`
-/

namespace A179236.P11348660212745878571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A178801 n : ℚ) * (A178882 n : ℚ)

end

end A179236.P11348660212745878571

/-!
# A179237: a(0) = 1, a(1) = 2; a(n+1) = 6*a(n) + a(n-1) for n>1.

The programs for A179237, the canonical program `A179237.P6821180634810169376` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179237 has offset 0).

The definition of A179237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179237.P6821180634810169376

`A005668(n)+A015451(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179237

/-- `A005668(n)+A015451(n)` -/
def P6821180634810169376.Spec : Prop :=
  ∀ n, P6821180634810169376.a n = A179237 n

theorem P6821180634810169376.correct : P6821180634810169376.Spec := by
  intro n
  simp only [A179237]

end A179237

/-! ## A179237.P4014448617401025501

`A005668(n+1)-4*A005668(n)`
-/

namespace A179237.P4014448617401025501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 1) - 4 * A005668 n

end

end A179237.P4014448617401025501

namespace A179237

/-- `A005668(n+1)-4*A005668(n)` -/
def P4014448617401025501.Spec : Prop :=
  ∀ n, P4014448617401025501.a n = A179237 n

end A179237

/-! ## A179237.P15331419380174964986

`ogf((-1+4x)/(-1+6x+x^2))`
-/

namespace A179237.P15331419380174964986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -6, -1] n

end

end A179237.P15331419380174964986

namespace A179237

/-- `ogf((-1+4x)/(-1+6x+x^2))` -/
def P15331419380174964986.Spec : Prop :=
  ∀ n, P15331419380174964986.a n = A179237 n

end A179237

/-! ## A179237.P15363700698483895504

`6*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A179237.P15363700698483895504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * a (n - 1) + a (n - 2)

end

end A179237.P15363700698483895504

namespace A179237

/-- `6*a(n-1)+a(n-2)` -/
def P15363700698483895504.Spec : Prop :=
  ∀ n, (P15363700698483895504.a n : ℤ) = A179237 n

end A179237

/-! ## A179237.P12278755423605450255

`7*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A179237.P12278755423605450255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A179237.P12278755423605450255

namespace A179237

/-- `7*a(n-1)-(a(n-1)-a(n-2))` -/
def P12278755423605450255.Spec : Prop :=
  ∀ n, P12278755423605450255.a n = A179237 n

end A179237

/-! ## A179237.P14463100225073884394

`A179238(abs(1-2*n)+n)`
-/

namespace A179237.P14463100225073884394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179238 (|1 - (2 * n : ℤ)| + (n : ℤ)).toNat

end

end A179237.P14463100225073884394

namespace A179237

/-- `A179238(abs(1-2*n)+n)` -/
def P14463100225073884394.Spec : Prop :=
  ∀ n, P14463100225073884394.a n = A179237 n

end A179237

/-! ## A179237.P6110147569212507218

`A005667(n)-A005668(n)`
-/

namespace A179237.P6110147569212507218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005667 n - A005668 n

end

end A179237.P6110147569212507218

namespace A179237

/-- `A005667(n)-A005668(n)` -/
def P6110147569212507218.Spec : Prop :=
  ∀ n, P6110147569212507218.a n = A179237 n

end A179237

/-! ## A179237.P15616078569235312058

`A015451(n)+∑[A078469(n)-A015451(n)]`
-/

namespace A179237.P15616078569235312058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078469 n - A015451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015451 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179237.P15616078569235312058

namespace A179237

/-- `A015451(n)+∑[A078469(n)-A015451(n)]` -/
def P15616078569235312058.Spec : Prop :=
  ∀ n, P15616078569235312058.a n = A179237 n

end A179237

/-! ## A179237.P16524635709594784412

`(A015451(n)+A005667(n))/2`
-/

namespace A179237.P16524635709594784412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015451 n + A005667 n : ℚ) / 2

end

end A179237.P16524635709594784412

namespace A179237

/-- `(A015451(n)+A005667(n))/2` -/
def P16524635709594784412.Spec : Prop :=
  ∀ n, P16524635709594784412.a n = (A179237 n : ℚ)

end A179237

/-! ## A179237.P15219192565734919368

`A085447(n)/2-A005668(n)`
-/

namespace A179237.P15219192565734919368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085447 n : ℚ) / 2 - (A005668 n : ℚ)

end

end A179237.P15219192565734919368

namespace A179237

/-- `A085447(n)/2-A005668(n)` -/
def P15219192565734919368.Spec : Prop :=
  ∀ n, P15219192565734919368.a n = (A179237 n : ℚ)

end A179237

/-! ## A179237.P5541104536387681785

`A116559(A016921(n))-A005668(n)`
-/

namespace A179237.P5541104536387681785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A016921 n).toNat - A005668 n

end

end A179237.P5541104536387681785

namespace A179237

/-- `A116559(A016921(n))-A005668(n)` -/
def P5541104536387681785.Spec : Prop :=
  ∀ n, P5541104536387681785.a n = A179237 n

end A179237

/-! ## A179237.P8566277735753678409

`Δ[A228469(2*n)]%A228469(2*n)`
-/

namespace A179237.P8566277735753678409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A228469 (2 * n))

end

end A179237.P8566277735753678409

namespace A179237

/-- `Δ[A228469(2*n)]%A228469(2*n)` -/
def P8566277735753678409.Spec : Prop :=
  ∀ n, P8566277735753678409.a n = A179237 n

end A179237

/-!
# A179238: Numerators in convergents to infinitely repeating period 3 palindromic continued fraction [1,2,1,...].

The programs for A179238, the canonical program `A179238.P14118110578251641252` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179238 has offset 1).

The definition of A179238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179238.P14118110578251641252

`6*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=13, a(5)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179238

/-- `6*a(n-3)+a(n-6)` -/
def P14118110578251641252.Spec : Prop :=
  ∀ n, (P14118110578251641252.a n : ℤ) = A179238 (n + 1)

theorem P14118110578251641252.correct : P14118110578251641252.Spec := by
  intro n
  simp only [A179238, Nat.add_sub_cancel]

end A179238

/-! ## A179238.P2953985920808682035

`a(n-2)+lcm(3-n%3, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A179238.P2953985920808682035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.lcm (3 - ((n % 3 : ℕ) : ℤ)) (a (n - 1) : ℤ)

end

end A179238.P2953985920808682035

namespace A179238

/-- `a(n-2)+lcm(3-n%3, a(n-1))` -/
def P2953985920808682035.Spec : Prop :=
  ∀ n, (P2953985920808682035.a n : ℤ) = A179238 (n + 1)

end A179238

/-! ## A179238.P11636478492737989328

`A295334(n+2)-A093611(n+2)`
-/

namespace A179238.P11636478492737989328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (n + 2) - A093611 (n + 2)

end

end A179238.P11636478492737989328

namespace A179238

/-- `A295334(n+2)-A093611(n+2)` -/
def P11636478492737989328.Spec : Prop :=
  ∀ n, P11636478492737989328.a n = A179238 (n + 1)

end A179238

/-! ## A179238.P17760187006361707221

`record[A295334(n)+A295334(n)-A295333(n)]`
-/

namespace A179238.P17760187006361707221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 n + (A295334 n - A295333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179238.P17760187006361707221

namespace A179238

/-- `record[A295334(n)+A295334(n)-A295333(n)]` -/
def P17760187006361707221.Spec : Prop :=
  ∀ n, P17760187006361707221.a n = A179238 (n + 1)

end A179238

/-! ## A179238.P4908862076069869597

`record[2*A295334(n)-A295333(n)]`
-/

namespace A179238.P4908862076069869597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295334 n - A295333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179238.P4908862076069869597

namespace A179238

/-- `record[2*A295334(n)-A295333(n)]` -/
def P4908862076069869597.Spec : Prop :=
  ∀ n, P4908862076069869597.a n = A179238 (n + 1)

end A179238

/-!
# A179239: Permutation classes of integers, each identified by its smallest member.

The programs for A179239, there is no canonical definition to state claims against.
-/

/-! ## A179239.P18131918715699730305

`record[A328447(n)]`
-/

namespace A179239.P18131918715699730305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179239.P18131918715699730305

/-! ## A179239.P1354651924651811669

`eq[n, A333659(A004186(n))]`
-/

namespace A179239.P1354651924651811669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179239.P1354651924651811669

/-! ## A179239.P17448628198405289696

`A328447(eq[n, A328447(n)])`
-/

namespace A179239.P17448628198405289696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179239.P17448628198405289696

/-! ## A179239.P5885230465130178163

`eq[1, A326307(n)]`
-/

namespace A179239.P5885230465130178163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179239.P5885230465130178163

/-! ## A179239.P11497788314428328007

`lt[n, A354049(n)]`
-/

namespace A179239.P11497788314428328007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A179239.P11497788314428328007

/-! ## A179239.P3650728590051717419

`lt[A017887(n), 2]`
-/

namespace A179239.P3650728590051717419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179239.P3650728590051717419

/-!
# A179240: a(n) is the smallest prime q > a(n-1) such that, for the previous prime p and the following prime r, the fraction (q-p)/(r-q) has denominator equal to A006843(n) (or 0, if such a prime does not exist).

The programs for A179240, there is no canonical definition to state claims against.
-/

/-! ## A179240.P6342177087911035360

`A238256(A102737(n+2))`
-/

namespace A179240.P6342177087911035360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (A102737 (n + 2)).toNat

end

end A179240.P6342177087911035360

/-! ## A179240.P13881940018638874777

`p?[∑[A245553(A008778(n))]]`
-/

namespace A179240.P13881940018638874777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245553 (A008778 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179240.P13881940018638874777

/-! ## A179240.P1777904803730110897

`p?[A307428(A000055(n)+1)+A242100(n+1)]`
-/

namespace A179240.P1777904803730110897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A000055 n + 1).toNat + A242100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179240.P1777904803730110897

/-! ## A179240.P10913645634984188167

`A123318(A146098(3*n+2)+A123327(2*n+1))`
-/

namespace A179240.P10913645634984188167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A146098 (3 * n + 2) + A123327 (2 * n + 1)).toNat

end

end A179240.P10913645634984188167

/-!
# A179241: Powers of sqrt(5) - 1 rounded down.

The programs for A179241, the canonical program `A179241.P18350770780176249104` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179241 has offset 1).

The definition of A179241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179241.P18350770780176249104

`floor(sqrt(A240523(n+1)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179241

/-- `floor(sqrt(A240523(n+1)))` -/
def P18350770780176249104.Spec : Prop :=
  ∀ n, P18350770780176249104.a n = A179241 (n + 1)

theorem P18350770780176249104.correct : P18350770780176249104.Spec := by
  intro n
  simp only [A179241, Nat.add_sub_cancel]

end A179241

/-! ## A179241.P18393512730806655187

`ceil(2^(n+1)/A000032(n+1))-1`
-/

namespace A179241.P18393512730806655187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)⌉ - 1

end

end A179241.P18393512730806655187

namespace A179241

/-- `ceil(2^(n+1)/A000032(n+1))-1` -/
def P18393512730806655187.Spec : Prop :=
  ∀ n, P18393512730806655187.a n = A179241 (n + 1)

end A179241

/-! ## A179241.P6846725760242778375

`floor(A126646(n)/A000204(n+1))`
-/

namespace A179241.P6846725760242778375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126646 n : ℚ) / (A000204 (n + 1) : ℚ)⌋

end

end A179241.P6846725760242778375

namespace A179241

/-- `floor(A126646(n)/A000204(n+1))` -/
def P6846725760242778375.Spec : Prop :=
  ∀ n, P6846725760242778375.a n = A179241 (n + 1)

end A179241

/-! ## A179241.P14450388573935092646

`ceil(A000079(n+1)/A000204(n+1))-1`
-/

namespace A179241.P14450388573935092646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ)⌉ - 1

end

end A179241.P14450388573935092646

namespace A179241

/-- `ceil(A000079(n+1)/A000204(n+1))-1` -/
def P14450388573935092646.Spec : Prop :=
  ∀ n, P14450388573935092646.a n = A179241 (n + 1)

end A179241

/-! ## A179241.P15908837840657699198

`floor(Δ[A101622(n)]/A000204(n+1))`
-/

namespace A179241.P15908837840657699198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000204 (n + 1) : ℚ)⌋

end

end A179241.P15908837840657699198

namespace A179241

/-- `floor(Δ[A101622(n)]/A000204(n+1))` -/
def P15908837840657699198.Spec : Prop :=
  ∀ n, P15908837840657699198.a n = A179241 (n + 1)

end A179241

/-!
# A179242: Numbers that have two terms in their Zeckendorf representation.

The programs for A179242, the canonical program `A179242.P5915181070434955761` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179242 has offset 1).

The definition of A179242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179242.P12395464274874931144

`A193999(n+1)+A020695(A002260(n+1))`
-/

namespace A179242.P12395464274874931144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193999 (n + 1) + A020695 (A002260 (n + 1)).toNat

end

end A179242.P12395464274874931144

namespace A179242

/-- `A193999(n+1)+A020695(A002260(n+1))` -/
def P12395464274874931144.Spec : Prop :=
  ∀ n, P12395464274874931144.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P5275524863335473406

`A020695(A003057(n+2))-round(A193999(n+1)/ϕ)`
-/

namespace A179242.P5275524863335473406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A003057 (n + 2)).toNat - SequenceMachineLib.roundAway ((A193999 (n + 1) : ℝ) / Real.goldenRatio)

end

end A179242.P5275524863335473406

namespace A179242

/-- `A020695(A003057(n+2))-round(A193999(n+1)/ϕ)` -/
def P5275524863335473406.Spec : Prop :=
  ∀ n, P5275524863335473406.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P5915181070434955761

`A193588(n)+A020695(A123578(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179242

/-- `A193588(n)+A020695(A123578(n+1))` -/
def P5915181070434955761.Spec : Prop :=
  ∀ n, P5915181070434955761.a n = A179242 (n + 1)

theorem P5915181070434955761.correct : P5915181070434955761.Spec := by
  intro n
  simp only [A179242, Nat.add_sub_cancel]

end A179242

/-! ## A179242.P13405558502713060006

`A108035(n+1)+A084176(n+4)`
-/

namespace A179242.P13405558502713060006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) + A084176 (n + 4)

end

end A179242.P13405558502713060006

namespace A179242

/-- `A108035(n+1)+A084176(n+4)` -/
def P13405558502713060006.Spec : Prop :=
  ∀ n, P13405558502713060006.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P13860115208256954768

`A059389(comp[∑[n]]+1)`
-/

namespace A179242.P13860115208256954768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A179242.P13860115208256954768

namespace A179242

/-- `A059389(comp[∑[n]]+1)` -/
def P13860115208256954768.Spec : Prop :=
  ∀ n, P13860115208256954768.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P18097429339295239415

`A084176(∑[char[∑[n+1]]]+n+5)`
-/

namespace A179242.P18097429339295239415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 5))

end

end A179242.P18097429339295239415

namespace A179242

/-- `A084176(∑[char[∑[n+1]]]+n+5)` -/
def P18097429339295239415.Spec : Prop :=
  ∀ n, P18097429339295239415.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P13588141339938521814

`eq[A000005(A304101(n))+1, A304101(n)]`
-/

namespace A179242.P13588141339938521814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A304101 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179242.P13588141339938521814

namespace A179242

/-- `eq[A000005(A304101(n))+1, A304101(n)]` -/
def P13588141339938521814.Spec : Prop :=
  ∀ n, (P13588141339938521814.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P1195273265533926048

`eq[2, ceil(A104324(n)/2)]`
-/

namespace A179242.P1195273265533926048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104324 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179242.P1195273265533926048

namespace A179242

/-- `eq[2, ceil(A104324(n)/2)]` -/
def P1195273265533926048.Spec : Prop :=
  ∀ n, (P1195273265533926048.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P10821058903841132715

`eq[2, A034888(A104324(n))]`
-/

namespace A179242.P10821058903841132715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179242.P10821058903841132715

namespace A179242

/-- `eq[2, A034888(A104324(n))]` -/
def P10821058903841132715.Spec : Prop :=
  ∀ n, (P10821058903841132715.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P12015361619878743445

`∩[A059389(n+1), A095096(n+1)]`
-/

namespace A179242.P12015361619878743445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179242.P12015361619878743445

namespace A179242

/-- `∩[A059389(n+1), A095096(n+1)]` -/
def P12015361619878743445.Spec : Prop :=
  ∀ n, (P12015361619878743445.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P12359803952950811948

`A377738(a(n-1))` with `a(0)=4`
-/

namespace A179242.P12359803952950811948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A377738 (a (n - 1)).toNat

end

end A179242.P12359803952950811948

namespace A179242

/-- `A377738(a(n-1))` -/
def P12359803952950811948.Spec : Prop :=
  ∀ n, P12359803952950811948.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P3386497269232758330

`eq[2, A007895(n)]`
-/

namespace A179242.P3386497269232758330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179242.P3386497269232758330

namespace A179242

/-- `eq[2, A007895(n)]` -/
def P3386497269232758330.Spec : Prop :=
  ∀ n, (P3386497269232758330.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P14669876765941215780

`eq[2, dr(A014417(n))]`
-/

namespace A179242.P14669876765941215780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179242.P14669876765941215780

namespace A179242

/-- `eq[2, dr(A014417(n))]` -/
def P14669876765941215780.Spec : Prop :=
  ∀ n, (P14669876765941215780.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P17157565250829510320

`eq[3, A143299(n+1)]`
-/

namespace A179242.P17157565250829510320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179242.P17157565250829510320

namespace A179242

/-- `eq[3, A143299(n+1)]` -/
def P17157565250829510320.Spec : Prop :=
  ∀ n, (P17157565250829510320.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P15684325917590567959

`eq[2, n-A219641(n)]`
-/

namespace A179242.P15684325917590567959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179242.P15684325917590567959

namespace A179242

/-- `eq[2, n-A219641(n)]` -/
def P15684325917590567959.Spec : Prop :=
  ∀ n, (P15684325917590567959.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P7390850655047519675

`eq[A014675(n), A213911(n)]`
-/

namespace A179242.P7390850655047519675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179242.P7390850655047519675

namespace A179242

/-- `eq[A014675(n), A213911(n)]` -/
def P7390850655047519675.Spec : Prop :=
  ∀ n, (P7390850655047519675.a n : ℤ) = A179242 (n + 1)

end A179242

/-! ## A179242.P1160400976576094631

`filter[A059389(n+1), A095111(#)]`
-/

namespace A179242.P1160400976576094631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A179242.P1160400976576094631

namespace A179242

/-- `filter[A059389(n+1), A095111(#)]` -/
def P1160400976576094631.Spec : Prop :=
  ∀ n, P1160400976576094631.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P143142262604080270

`filter[A001690(n+1), A357731(#)]`
-/

namespace A179242.P143142262604080270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357731 (f1 j).toNat = 1) n)

end

end A179242.P143142262604080270

namespace A179242

/-- `filter[A001690(n+1), A357731(#)]` -/
def P143142262604080270.Spec : Prop :=
  ∀ n, P143142262604080270.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P16421069142574477914

`filter[A084176(n+2), A095111(#)]`
-/

namespace A179242.P16421069142574477914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A179242.P16421069142574477914

namespace A179242

/-- `filter[A084176(n+2), A095111(#)]` -/
def P16421069142574477914.Spec : Prop :=
  ∀ n, P16421069142574477914.a n = A179242 (n + 1)

end A179242

/-! ## A179242.P7914397503385509337

`filter[A095096(n+2), A357731(#)]`
-/

namespace A179242.P7914397503385509337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357731 (f1 j).toNat = 1) n)

end

end A179242.P7914397503385509337

namespace A179242

/-- `filter[A095096(n+2), A357731(#)]` -/
def P7914397503385509337.Spec : Prop :=
  ∀ n, P7914397503385509337.a n = A179242 (n + 1)

end A179242

/-!
# A179243: Numbers that have three terms in their Zeckendorf representation.

The programs for A179243, the canonical program `A179243.P2943662787813260629` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179243 has offset 1).

The definition of A179243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179243.P2943662787813260629

`eq[4, A219641(A104324(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A179243

/-- `eq[4, A219641(A104324(n))]` -/
def P2943662787813260629.Spec : Prop :=
  ∀ n, (P2943662787813260629.a n : ℤ) = A179243 (n + 1)

theorem P2943662787813260629.correct : P2943662787813260629.Spec := by
  intro n
  simp only [A179243, Nat.add_sub_cancel]

end A179243

/-! ## A179243.P15716985960153127775

`eq[4, A143299(n+1)]`
-/

namespace A179243.P15716985960153127775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P15716985960153127775

namespace A179243

/-- `eq[4, A143299(n+1)]` -/
def P15716985960153127775.Spec : Prop :=
  ∀ n, (P15716985960153127775.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P15542574151386637828

`eq[3, A007895(n)]`
-/

namespace A179243.P15542574151386637828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P15542574151386637828

namespace A179243

/-- `eq[3, A007895(n)]` -/
def P15542574151386637828.Spec : Prop :=
  ∀ n, (P15542574151386637828.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P1930899087424883769

`eq[3, dr(A014417(n))]`
-/

namespace A179243.P1930899087424883769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179243.P1930899087424883769

namespace A179243

/-- `eq[3, dr(A014417(n))]` -/
def P1930899087424883769.Spec : Prop :=
  ∀ n, (P1930899087424883769.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P16051964149519914301

`eq[3, n-A219641(n)]`
-/

namespace A179243.P16051964149519914301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P16051964149519914301

namespace A179243

/-- `eq[3, n-A219641(n)]` -/
def P16051964149519914301.Spec : Prop :=
  ∀ n, (P16051964149519914301.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P720024205338661477

`eq[1, 2*(n+1)-A288625(n+1)-2]`
-/

namespace A179243.P720024205338661477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P720024205338661477

namespace A179243

/-- `eq[1, 2*(n+1)-A288625(n+1)-2]` -/
def P720024205338661477.Spec : Prop :=
  ∀ n, (P720024205338661477.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P15961925899955968878

`eq[A014675(n)+1, A213911(n)]`
-/

namespace A179243.P15961925899955968878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179243.P15961925899955968878

namespace A179243

/-- `eq[A014675(n)+1, A213911(n)]` -/
def P15961925899955968878.Spec : Prop :=
  ∀ n, (P15961925899955968878.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P1714157061999370350

`eq[3, A213911(n)+A003849(n)]`
-/

namespace A179243.P1714157061999370350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P1714157061999370350

namespace A179243

/-- `eq[3, A213911(n)+A003849(n)]` -/
def P1714157061999370350.Spec : Prop :=
  ∀ n, (P1714157061999370350.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P2628659688879328070

`eq[A288625(n+1), A356480(n+1)]`
-/

namespace A179243.P2628659688879328070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179243.P2628659688879328070

namespace A179243

/-- `eq[A288625(n+1), A356480(n+1)]` -/
def P2628659688879328070.Spec : Prop :=
  ∀ n, (P2628659688879328070.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P4507456807087442651

`∩[A059390(n+1), A135558(n+1)]`
-/

namespace A179243.P4507456807087442651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179243.P4507456807087442651

namespace A179243

/-- `∩[A059390(n+1), A135558(n+1)]` -/
def P4507456807087442651.Spec : Prop :=
  ∀ n, (P4507456807087442651.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P12932133010803044446

`eq[1, A213911(A004957(n))-2]`
-/

namespace A179243.P12932133010803044446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P12932133010803044446

namespace A179243

/-- `eq[1, A213911(A004957(n))-2]` -/
def P12932133010803044446.Spec : Prop :=
  ∀ n, (P12932133010803044446.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P10012775291967442034

`eq[8, A001316(A003714(n))]`
-/

namespace A179243.P10012775291967442034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P10012775291967442034

namespace A179243

/-- `eq[8, A001316(A003714(n))]` -/
def P10012775291967442034.Spec : Prop :=
  ∀ n, (P10012775291967442034.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P2138528397767715526

`A048680(A014311(n+1))`
-/

namespace A179243.P2138528397767715526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A014311 (n + 1)).toNat

end

end A179243.P2138528397767715526

namespace A179243

/-- `A048680(A014311(n+1))` -/
def P2138528397767715526.Spec : Prop :=
  ∀ n, P2138528397767715526.a n = A179243 (n + 1)

end A179243

/-! ## A179243.P17055552294572691503

`A048680(eq[3, A000120(n)])`
-/

namespace A179243.P17055552294572691503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179243.P17055552294572691503

namespace A179243

/-- `A048680(eq[3, A000120(n)])` -/
def P17055552294572691503.Spec : Prop :=
  ∀ n, P17055552294572691503.a n = A179243 (n + 1)

end A179243

/-! ## A179243.P5330373368916608735

`A048680(eq[2*A245788(n), A008458(n)])`
-/

namespace A179243.P5330373368916608735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179243.P5330373368916608735

namespace A179243

/-- `A048680(eq[2*A245788(n), A008458(n)])` -/
def P5330373368916608735.Spec : Prop :=
  ∀ n, P5330373368916608735.a n = A179243 (n + 1)

end A179243

/-! ## A179243.P7134628975652614475

`A048680(eq[A008458(n)/2, A245788(n)])`
-/

namespace A179243.P7134628975652614475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A179243.P7134628975652614475

namespace A179243

/-- `A048680(eq[A008458(n)/2, A245788(n)])` -/
def P7134628975652614475.Spec : Prop :=
  ∀ n, P7134628975652614475.a n = A179243 (n + 1)

end A179243

/-! ## A179243.P15071423020969564184

`eq[3, A000120(A048679(n))]`
-/

namespace A179243.P15071423020969564184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P15071423020969564184

namespace A179243

/-- `eq[3, A000120(A048679(n))]` -/
def P15071423020969564184.Spec : Prop :=
  ∀ n, (P15071423020969564184.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P9973914522790468870

`A022290(A173589(n+1))`
-/

namespace A179243.P9973914522790468870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A173589 (n + 1)).toNat

end

end A179243.P9973914522790468870

namespace A179243

/-- `A022290(A173589(n+1))` -/
def P9973914522790468870.Spec : Prop :=
  ∀ n, P9973914522790468870.a n = A179243 (n + 1)

end A179243

/-! ## A179243.P10485295189446029755

`eq[1, A000120(A022340(n))-2]`
-/

namespace A179243.P10485295189446029755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022340 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P10485295189446029755

namespace A179243

/-- `eq[1, A000120(A022340(n))-2]` -/
def P10485295189446029755.Spec : Prop :=
  ∀ n, (P10485295189446029755.a n : ℤ) = A179243 (n + 1)

end A179243

/-! ## A179243.P3206364176680591871

`A048680(eq[2, A238015(2*n+1)])`
-/

namespace A179243.P3206364176680591871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179243.P3206364176680591871

namespace A179243

/-- `A048680(eq[2, A238015(2*n+1)])` -/
def P3206364176680591871.Spec : Prop :=
  ∀ n, P3206364176680591871.a n = A179243 (n + 1)

end A179243

/-!
# A179244: Numbers that have 4 terms in their Zeckendorf representation.

The programs for A179244, the canonical program `A179244.P8742142216849556960` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179244 has offset 1).

The definition of A179244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179244.P8742142216849556960

`eq[3, A007318(A104324(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A179244

/-- `eq[3, A007318(A104324(n))]` -/
def P8742142216849556960.Spec : Prop :=
  ∀ n, (P8742142216849556960.a n : ℤ) = A179244 (n + 1)

theorem P8742142216849556960.correct : P8742142216849556960.Spec := by
  intro n
  simp only [A179244, Nat.add_sub_cancel]

end A179244

/-! ## A179244.P3184403456460074418

`eq[5, A143299(n+1)]`
-/

namespace A179244.P3184403456460074418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P3184403456460074418

namespace A179244

/-- `eq[5, A143299(n+1)]` -/
def P3184403456460074418.Spec : Prop :=
  ∀ n, (P3184403456460074418.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P4547331207902303223

`eq[4, A007895(n)]`
-/

namespace A179244.P4547331207902303223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P4547331207902303223

namespace A179244

/-- `eq[4, A007895(n)]` -/
def P4547331207902303223.Spec : Prop :=
  ∀ n, (P4547331207902303223.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P2284150796551413676

`eq[4, dr(A014417(n))]`
-/

namespace A179244.P2284150796551413676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179244.P2284150796551413676

namespace A179244

/-- `eq[4, dr(A014417(n))]` -/
def P2284150796551413676.Spec : Prop :=
  ∀ n, (P2284150796551413676.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P13225414937487220950

`eq[4, n-A219641(n)]`
-/

namespace A179244.P13225414937487220950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P13225414937487220950

namespace A179244

/-- `eq[4, n-A219641(n)]` -/
def P13225414937487220950.Spec : Prop :=
  ∀ n, (P13225414937487220950.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P2423472611270651487

`eq[5, a(A019586(n))+1]` with `a(0)=1`
-/

namespace A179244.P2423472611270651487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A019586 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179244.P2423472611270651487

namespace A179244

/-- `eq[5, a(A019586(n))+1]` -/
def P2423472611270651487.Spec : Prop :=
  ∀ n, (P2423472611270651487.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P7033121012543664160

`eq[A014675(n)+2, A213911(n)]`
-/

namespace A179244.P7033121012543664160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179244.P7033121012543664160

namespace A179244

/-- `eq[A014675(n)+2, A213911(n)]` -/
def P7033121012543664160.Spec : Prop :=
  ∀ n, (P7033121012543664160.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P13418910833030831612

`eq[4, A213911(n)+A003849(n)]`
-/

namespace A179244.P13418910833030831612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P13418910833030831612

namespace A179244

/-- `eq[4, A213911(n)+A003849(n)]` -/
def P13418910833030831612.Spec : Prop :=
  ∀ n, (P13418910833030831612.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P12666493105677780460

`eq[A288625(n+1)+1, A356480(n+1)]`
-/

namespace A179244.P12666493105677780460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179244.P12666493105677780460

namespace A179244

/-- `eq[A288625(n+1)+1, A356480(n+1)]` -/
def P12666493105677780460.Spec : Prop :=
  ∀ n, (P12666493105677780460.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P8396540987289538432

`eq[2, A213911(A004957(n))-2]`
-/

namespace A179244.P8396540987289538432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P8396540987289538432

namespace A179244

/-- `eq[2, A213911(A004957(n))-2]` -/
def P8396540987289538432.Spec : Prop :=
  ∀ n, (P8396540987289538432.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P1516957630455359352

`A048680(A014312(n+1))`
-/

namespace A179244.P1516957630455359352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A014312 (n + 1)).toNat

end

end A179244.P1516957630455359352

namespace A179244

/-- `A048680(A014312(n+1))` -/
def P1516957630455359352.Spec : Prop :=
  ∀ n, P1516957630455359352.a n = A179244 (n + 1)

end A179244

/-! ## A179244.P18399362022081853570

`A048680(eq[4, A000120(n)])`
-/

namespace A179244.P18399362022081853570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179244.P18399362022081853570

namespace A179244

/-- `A048680(eq[4, A000120(n)])` -/
def P18399362022081853570.Spec : Prop :=
  ∀ n, P18399362022081853570.a n = A179244 (n + 1)

end A179244

/-! ## A179244.P11086456484277969905

`A048680(eq[2, A238015(n)])`
-/

namespace A179244.P11086456484277969905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179244.P11086456484277969905

namespace A179244

/-- `A048680(eq[2, A238015(n)])` -/
def P11086456484277969905.Spec : Prop :=
  ∀ n, P11086456484277969905.a n = A179244 (n + 1)

end A179244

/-! ## A179244.P5519274995194945459

`eq[4, A000120(A048679(n))]`
-/

namespace A179244.P5519274995194945459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P5519274995194945459

namespace A179244

/-- `eq[4, A000120(A048679(n))]` -/
def P5519274995194945459.Spec : Prop :=
  ∀ n, (P5519274995194945459.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P3534948574648974102

`eq[4, A000120(A003714(n))]`
-/

namespace A179244.P3534948574648974102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P3534948574648974102

namespace A179244

/-- `eq[4, A000120(A003714(n))]` -/
def P3534948574648974102.Spec : Prop :=
  ∀ n, (P3534948574648974102.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P16422422718341845615

`eq[2, A000120(A022340(n))-2]`
-/

namespace A179244.P16422422718341845615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022340 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P16422422718341845615

namespace A179244

/-- `eq[2, A000120(A022340(n))-2]` -/
def P16422422718341845615.Spec : Prop :=
  ∀ n, (P16422422718341845615.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P6643921479802133382

`eq[2, A001222(A277006(n))-2]`
-/

namespace A179244.P6643921479802133382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277006 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P6643921479802133382

namespace A179244

/-- `eq[2, A001222(A277006(n))-2]` -/
def P6643921479802133382.Spec : Prop :=
  ∀ n, (P6643921479802133382.a n : ℤ) = A179244 (n + 1)

end A179244

/-! ## A179244.P3995545575006673556

`eq[5, A000120(A022341(n))]`
-/

namespace A179244.P3995545575006673556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P3995545575006673556

namespace A179244

/-- `eq[5, A000120(A022341(n))]` -/
def P3995545575006673556.Spec : Prop :=
  ∀ n, (P3995545575006673556.a n : ℤ) = A179244 (n + 1)

end A179244

/-!
# A179245: Numbers that have 5 terms in their Zeckendorf representation.

The programs for A179245, the canonical program `A179245.P18371884009470140886` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179245 has offset 1).

The definition of A179245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179245.P316290603463859052

`A048680(A014313(n+1))`
-/

namespace A179245.P316290603463859052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A014313 (n + 1)).toNat

end

end A179245.P316290603463859052

namespace A179245

/-- `A048680(A014313(n+1))` -/
def P316290603463859052.Spec : Prop :=
  ∀ n, P316290603463859052.a n = A179245 (n + 1)

end A179245

/-! ## A179245.P18371884009470140886

`eq[6, A143299(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179245

/-- `eq[6, A143299(n+1)]` -/
def P18371884009470140886.Spec : Prop :=
  ∀ n, (P18371884009470140886.a n : ℤ) = A179245 (n + 1)

theorem P18371884009470140886.correct : P18371884009470140886.Spec := by
  intro n
  simp only [A179245, Nat.add_sub_cancel]

end A179245

/-! ## A179245.P9861540374436714501

`eq[5, A007895(n)]`
-/

namespace A179245.P9861540374436714501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P9861540374436714501

namespace A179245

/-- `eq[5, A007895(n)]` -/
def P9861540374436714501.Spec : Prop :=
  ∀ n, (P9861540374436714501.a n : ℤ) = A179245 (n + 1)

end A179245

/-! ## A179245.P9956044991868292610

`eq[5, dr(A014417(n))]`
-/

namespace A179245.P9956044991868292610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179245.P9956044991868292610

namespace A179245

/-- `eq[5, dr(A014417(n))]` -/
def P9956044991868292610.Spec : Prop :=
  ∀ n, (P9956044991868292610.a n : ℤ) = A179245 (n + 1)

end A179245

/-! ## A179245.P14916796441875446242

`eq[5, n-A219641(n)]`
-/

namespace A179245.P14916796441875446242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P14916796441875446242

namespace A179245

/-- `eq[5, n-A219641(n)]` -/
def P14916796441875446242.Spec : Prop :=
  ∀ n, (P14916796441875446242.a n : ℤ) = A179245 (n + 1)

end A179245

/-! ## A179245.P13404863778130759181

`A048680(eq[5, A000120(n)])`
-/

namespace A179245.P13404863778130759181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179245.P13404863778130759181

namespace A179245

/-- `A048680(eq[5, A000120(n)])` -/
def P13404863778130759181.Spec : Prop :=
  ∀ n, P13404863778130759181.a n = A179245 (n + 1)

end A179245

/-! ## A179245.P14941447983726690500

`A048680(eq[32, A001316(n)])`
-/

namespace A179245.P14941447983726690500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179245.P14941447983726690500

namespace A179245

/-- `A048680(eq[32, A001316(n)])` -/
def P14941447983726690500.Spec : Prop :=
  ∀ n, P14941447983726690500.a n = A179245 (n + 1)

end A179245

/-! ## A179245.P6614824755480462201

`A048680(eq[A245788(n)+n, A008458(n)])`
-/

namespace A179245.P6614824755480462201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179245.P6614824755480462201

namespace A179245

/-- `A048680(eq[A245788(n)+n, A008458(n)])` -/
def P6614824755480462201.Spec : Prop :=
  ∀ n, P6614824755480462201.a n = A179245 (n + 1)

end A179245

/-! ## A179245.P9234232759884827943

`A048680(eq[n, A008458(n)-A245788(n)])`
-/

namespace A179245.P9234232759884827943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A245788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179245.P9234232759884827943

namespace A179245

/-- `A048680(eq[n, A008458(n)-A245788(n)])` -/
def P9234232759884827943.Spec : Prop :=
  ∀ n, P9234232759884827943.a n = A179245 (n + 1)

end A179245

/-! ## A179245.P13867849558508240538

`eq[5, A213911(A004957(n))]`
-/

namespace A179245.P13867849558508240538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P13867849558508240538

namespace A179245

/-- `eq[5, A213911(A004957(n))]` -/
def P13867849558508240538.Spec : Prop :=
  ∀ n, (P13867849558508240538.a n : ℤ) = A179245 (n + 1)

end A179245

/-! ## A179245.P8140062143707543643

`A048680(eq[4, A238015(n)])`
-/

namespace A179245.P8140062143707543643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179245.P8140062143707543643

namespace A179245

/-- `A048680(eq[4, A238015(n)])` -/
def P8140062143707543643.Spec : Prop :=
  ∀ n, P8140062143707543643.a n = A179245 (n + 1)

end A179245

/-! ## A179245.P10408793622118226873

`eq[5, A000120(A048679(n))]`
-/

namespace A179245.P10408793622118226873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P10408793622118226873

namespace A179245

/-- `eq[5, A000120(A048679(n))]` -/
def P10408793622118226873.Spec : Prop :=
  ∀ n, (P10408793622118226873.a n : ℤ) = A179245 (n + 1)

end A179245

/-! ## A179245.P10738783049366669411

`eq[5, A000120(A003714(n))]`
-/

namespace A179245.P10738783049366669411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P10738783049366669411

namespace A179245

/-- `eq[5, A000120(A003714(n))]` -/
def P10738783049366669411.Spec : Prop :=
  ∀ n, (P10738783049366669411.a n : ℤ) = A179245 (n + 1)

end A179245

/-!
# A179246: Numbers that have 6 terms in their Zeckendorf representation.

The programs for A179246, there is no canonical definition to state claims against.
-/

/-! ## A179246.P14126394495102686032

`A048680(A023688(n+1))`
-/

namespace A179246.P14126394495102686032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A023688 (n + 1)).toNat

end

end A179246.P14126394495102686032

/-! ## A179246.P632869715934073628

`A048680(eq[6, A000120(n)])`
-/

namespace A179246.P632869715934073628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179246.P632869715934073628

/-! ## A179246.P12901308161390571465

`A048680(eq[63, A038573(n)])`
-/

namespace A179246.P12901308161390571465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179246.P12901308161390571465

/-! ## A179246.P12359566912754896762

`A048680(eq[64, A001316(n)])`
-/

namespace A179246.P12359566912754896762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179246.P12359566912754896762

/-! ## A179246.P15184682698919177807

`A048680(eq[A008458(n), A245788(n)])`
-/

namespace A179246.P15184682698919177807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179246.P15184682698919177807

/-! ## A179246.P17510261496484394877

`A048680(eq[8, A238015(n)])`
-/

namespace A179246.P17510261496484394877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179246.P17510261496484394877

/-!
# A179247: Numbers that have 7 terms in their Zeckendorf representation.

The programs for A179247, there is no canonical definition to state claims against.
-/

/-! ## A179247.P8459064307139723018

`A048680(A023689(n+1))`
-/

namespace A179247.P8459064307139723018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A023689 (n + 1)).toNat

end

end A179247.P8459064307139723018

/-! ## A179247.P3142716244406671242

`A048680(eq[7, A000120(n)])`
-/

namespace A179247.P3142716244406671242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179247.P3142716244406671242

/-! ## A179247.P5772499112800532973

`A048680(eq[7, log2(A001316(n))])`
-/

namespace A179247.P5772499112800532973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A179247.P5772499112800532973

/-! ## A179247.P6685342993524253771

`A048680(eq[7, dr(A007088(n))])`
-/

namespace A179247.P6685342993524253771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179247.P6685342993524253771

/-! ## A179247.P14770359762626190272

`A048680(eq[7, 2*n-A005187(n)])`
-/

namespace A179247.P14770359762626190272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179247.P14770359762626190272

/-! ## A179247.P43981005352632611

`A048680(eq[7, 3*n-A004134(n)])`
-/

namespace A179247.P43981005352632611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179247.P43981005352632611

/-! ## A179247.P6777429620569126958

`A048680(eq[A008458(n)+n, A245788(n)])`
-/

namespace A179247.P6777429620569126958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179247.P6777429620569126958

/-! ## A179247.P1597156278501972532

`A048680(eq[n, A245788(n)-A008458(n)])`
-/

namespace A179247.P1597156278501972532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179247.P1597156278501972532

/-! ## A179247.P7873788067304783015

`A048680(eq[21, A324467(n)])`
-/

namespace A179247.P7873788067304783015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179247.P7873788067304783015

/-! ## A179247.P14993227497056995174

`record[A179248(n+1)-A087172(A179248(n+1))]`
-/

namespace A179247.P14993227497056995174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179248 (n + 1) - A087172 (A179248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179247.P14993227497056995174

/-!
# A179248: Numbers that have 8 terms in their Zeckendorf representation.

The programs for A179248, there is no canonical definition to state claims against.
-/

/-! ## A179248.P13159748151514792492

`A048680(A023690(n+1))`
-/

namespace A179248.P13159748151514792492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A023690 (n + 1)).toNat

end

end A179248.P13159748151514792492

/-! ## A179248.P16947180150976170770

`A048680(eq[8, A000120(n)])`
-/

namespace A179248.P16947180150976170770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179248.P16947180150976170770

/-! ## A179248.P15100686742924189590

`A074049(A023690(n+1)+1)-1`
-/

namespace A179248.P15100686742924189590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A023690 (n + 1) + 1).toNat - 1

end

end A179248.P15100686742924189590

/-! ## A179248.P1568133297664040463

`A134824(n+2)+A074049(A023690(n+1)+1)`
-/

namespace A179248.P1568133297664040463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A074049 (A023690 (n + 1) + 1).toNat

end

end A179248.P1568133297664040463

/-! ## A179248.P8382115555896179645

`record[A019586(A179249(n+1))]`
-/

namespace A179248.P8382115555896179645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A179249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179248.P8382115555896179645

/-!
# A179249: Numbers that have 9 terms in their Zeckendorf representation.

The programs for A179249, there is no canonical definition to state claims against.
-/

/-! ## A179249.P3823419401353748544

`A048680(A023691(n+1))`
-/

namespace A179249.P3823419401353748544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A023691 (n + 1)).toNat

end

end A179249.P3823419401353748544

/-! ## A179249.P131525378671309023

`A048680(eq[9, A000120(n)])`
-/

namespace A179249.P131525378671309023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179249.P131525378671309023

/-!
# A179250: Numbers that have 10 terms in their Zeckendorf representation.

The programs for A179250, there is no canonical definition to state claims against.
-/

/-! ## A179250.P11965526605329470863

`A048680(A038461(n+1))`
-/

namespace A179250.P11965526605329470863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A038461 (n + 1)).toNat

end

end A179250.P11965526605329470863

/-!
# A179251: Numbers that have 11 terms in their Zeckendorf representation.

The programs for A179251, there is no canonical definition to state claims against.
-/

/-! ## A179251.P7038409225500224781

`A048680(A038462(n+1))`
-/

namespace A179251.P7038409225500224781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A038462 (n + 1)).toNat

end

end A179251.P7038409225500224781

/-! ## A179251.P3977286110817827272

`A003622(A179250(n+1)+1)`
-/

namespace A179251.P3977286110817827272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A179250 (n + 1) + 1).toNat

end

end A179251.P3977286110817827272

/-!
# A179252: Numbers that have 12 terms in their Zeckendorf representation.

The programs for A179252, there is no canonical definition to state claims against.
-/

/-! ## A179252.P14228835695471614177

`A048680(A038463(n+1))`
-/

namespace A179252.P14228835695471614177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A038463 (n + 1)).toNat

end

end A179252.P14228835695471614177

/-! ## A179252.P2621261107990147906

`A048680(2*A038462(n+1)+1)`
-/

namespace A179252.P2621261107990147906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (2 * A038462 (n + 1) + 1).toNat

end

end A179252.P2621261107990147906

/-! ## A179252.P10818721613511446557

`A048680(A038462(n+1)+A038462(n+1)+1)`
-/

namespace A179252.P10818721613511446557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A038462 (n + 1) + (A038462 (n + 1) + 1)).toNat

end

end A179252.P10818721613511446557

/-!
# A179254: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are strictly increasing.

The programs for A179254, there is no canonical definition to state claims against.
-/

/-! ## A179254.P1822331821506168358

`A325391(n)+A086015(A000031(n))`
-/

namespace A179254.P1822331821506168358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 n + A086015 (A000031 n).toNat

end

end A179254.P1822331821506168358

/-! ## A179254.P16517656628868808493

`A325391(n)+A055641(A269499(n+1))`
-/

namespace A179254.P16517656628868808493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 n + A055641 (A269499 (n + 1)).toNat

end

end A179254.P16517656628868808493

/-!
# A179255: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are nondecreasing.

The programs for A179255, there is no canonical definition to state claims against.
-/

/-! ## A179255.P16344979289704960274

`A278163(A051033(n)+A008619(n))`
-/

namespace A179255.P16344979289704960274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278163 (A051033 n + A008619 n).toNat

end

end A179255.P16344979289704960274

/-! ## A179255.P1923832501542496442

`A278163(A278163(n+1)+A051033(n)+1)`
-/

namespace A179255.P1923832501542496442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278163 (A278163 (n + 1) + (A051033 n + 1)).toNat

end

end A179255.P1923832501542496442

/-! ## A179255.P984487679523242411

`A332285(n)-A104037(A272387(3*n+1))`
-/

namespace A179255.P984487679523242411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332285 n - A104037 (A272387 (3 * n + 1)).toNat

end

end A179255.P984487679523242411

/-! ## A179255.P2615102489591972541

`A332285(n)-A010051(A146656(n+1))`
-/

namespace A179255.P2615102489591972541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332285 n - A010051 (A146656 (n + 1)).toNat

end

end A179255.P2615102489591972541

/-! ## A179255.P13973307226554069095

`A070950(A349055(n))+A069905(n)`
-/

namespace A179255.P13973307226554069095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (A349055 n).toNat + A069905 n

end

end A179255.P13973307226554069095

/-!
# A179256: a(n) is the smallest prime q such that (q-p)/(r-q) = n, where p

The programs for A179256, there is no canonical definition to state claims against.
-/

/-! ## A179256.P8723337360774254598

`A279067(A005728(n))`
-/

namespace A179256.P8723337360774254598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279067 (A005728 n).toNat

end

end A179256.P8723337360774254598

/-! ## A179256.P9463254585370398955

`A279067(A002088(n)+1)`
-/

namespace A179256.P9463254585370398955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279067 (A002088 n + 1).toNat

end

end A179256.P9463254585370398955

/-! ## A179256.P10012719990107578688

`A279067(floor(A049643(n)+acot(n)))`
-/

namespace A179256.P10012719990107578688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279067 ⌊(A049643 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A179256.P10012719990107578688

/-! ## A179256.P14451239820355026512

`p?[(2-A038566(n+1))*A279067(n+1)]`
-/

namespace A179256.P14451239820355026512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038566 (n + 1)) * A279067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179256.P14451239820355026512

/-! ## A179256.P2938339165039194925

`A151800(A358974(n+1))`
-/

namespace A179256.P2938339165039194925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A358974 (n + 1)).toNat

end

end A179256.P2938339165039194925

/-!
# A179257: Number of permutations of length n which avoid the patterns 321 and 1324.

The programs for A179257, the canonical program `A179257.P17271621334755294567` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179257 has offset 0).

The definition of A179257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179257.P17271621334755294567

`1+C(n, 2)+C(n+2, 5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179257

/-- `1+C(n, 2)+C(n+2, 5)` -/
def P17271621334755294567.Spec : Prop :=
  ∀ n, (P17271621334755294567.a n : ℤ) = A179257 n

theorem P17271621334755294567.correct : P17271621334755294567.Spec := by
  intro n
  simp only [A179257]

end A179257

/-! ## A179257.P8830550010667035621

`∑[abs(2-∑[C(n, 3)+1])]`
-/

namespace A179257.P8830550010667035621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179257.P8830550010667035621

namespace A179257

/-- `∑[abs(2-∑[C(n, 3)+1])]` -/
def P8830550010667035621.Spec : Prop :=
  ∀ n, P8830550010667035621.a n = A179257 n

end A179257

/-! ## A179257.P12170992377566674582

`∑[∑[∑[∑[n]-2*n+1]]]-2*n`
-/

namespace A179257.P12170992377566674582
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - (2 * n : ℤ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A179257.P12170992377566674582

namespace A179257

/-- `∑[∑[∑[∑[n]-2*n+1]]]-2*n` -/
def P12170992377566674582.Spec : Prop :=
  ∀ n, P12170992377566674582.a n = A179257 n

end A179257

/-! ## A179257.P17604456093129108898

`∑[abs(1-(A000332(n+1)+n))]`
-/

namespace A179257.P17604456093129108898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000332 (n + 1) + (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179257.P17604456093129108898

namespace A179257

/-- `∑[abs(1-(A000332(n+1)+n))]` -/
def P17604456093129108898.Spec : Prop :=
  ∀ n, P17604456093129108898.a n = A179257 n

end A179257

/-! ## A179257.P4921938414671868691

`A055805(A361871(n+2))`
-/

namespace A179257.P4921938414671868691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055805 (A361871 (n + 2)).toNat

end

end A179257.P4921938414671868691

namespace A179257

/-- `A055805(A361871(n+2))` -/
def P4921938414671868691.Spec : Prop :=
  ∀ n, P4921938414671868691.a n = A179257 n

end A179257

/-! ## A179257.P18322592227423086093

`A209564(∑[n+2]-1)`
-/

namespace A179257.P18322592227423086093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209564 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A179257.P18322592227423086093

namespace A179257

/-- `A209564(∑[n+2]-1)` -/
def P18322592227423086093.Spec : Prop :=
  ∀ n, P18322592227423086093.a n = A179257 n

end A179257

/-! ## A179257.P4914245409145108482

`∑[A024996(n²+4)]`
-/

namespace A179257.P4914245409145108482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (n ^ 2 + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179257.P4914245409145108482

namespace A179257

/-- `∑[A024996(n²+4)]` -/
def P4914245409145108482.Spec : Prop :=
  ∀ n, P4914245409145108482.a n = A179257 n

end A179257

/-! ## A179257.P17063332812613068255

`A055801(A130861(n+2))`
-/

namespace A179257.P17063332812613068255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A130861 (n + 2)).toNat

end

end A179257.P17063332812613068255

namespace A179257

/-- `A055801(A130861(n+2))` -/
def P17063332812613068255.Spec : Prop :=
  ∀ n, P17063332812613068255.a n = A179257 n

end A179257

/-!
# A179259: Arises in covering a graph by forests and a matching.

The programs for A179259, the canonical program `A179259.P11329462594109540401` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179259 has offset 0).

The definition of A179259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179259.P11329462594109540401

`(n+2)*(3*n²+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179259

/-- `(n+2)*(3*n²+1)` -/
def P11329462594109540401.Spec : Prop :=
  ∀ n, (P11329462594109540401.a n : ℤ) = A179259 n

theorem P11329462594109540401.correct : P11329462594109540401.Spec := by
  intro n
  simp only [A179259]

end A179259

/-! ## A179259.P5383980498866016878

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=12, a(2)=52, a(3)=140`
-/

namespace A179259.P5383980498866016878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 12, 52, 140] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A179259.P5383980498866016878

namespace A179259

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5383980498866016878.Spec : Prop :=
  ∀ n, P5383980498866016878.a n = A179259 n

theorem P5383980498866016878.correct : P5383980498866016878.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A179259, Nat.add_sub_cancel, A179259.P5383980498866016878.a, A179259.P11329462594109540401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A179259, Nat.add_sub_cancel, A179259.P5383980498866016878.a, A179259.P11329462594109540401.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179259

/-! ## A179259.P5407159512986567545

`∑[lcm(2*n+n-1, 2*n+n+2)]`
-/

namespace A179259.P5407159512986567545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) + ((n : ℤ) - 1)) (2 * n + (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179259.P5407159512986567545

namespace A179259

/-- `∑[lcm(2*n+n-1, 2*n+n+2)]` -/
def P5407159512986567545.Spec : Prop :=
  ∀ n, (P5407159512986567545.a n : ℤ) = A179259 n

end A179259

/-! ## A179259.P380522092211924052

`A196507(n)+2`
-/

namespace A179259.P380522092211924052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n + 2

end

end A179259.P380522092211924052

namespace A179259

/-- `A196507(n)+2` -/
def P380522092211924052.Spec : Prop :=
  ∀ n, P380522092211924052.a n = A179259 n

end A179259

/-! ## A179259.P6565430954706601733

`n*A100536(n+1)+2`
-/

namespace A179259.P6565430954706601733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100536 (n + 1) + 2

end

end A179259.P6565430954706601733

namespace A179259

/-- `n*A100536(n+1)+2` -/
def P6565430954706601733.Spec : Prop :=
  ∀ n, P6565430954706601733.a n = A179259 n

end A179259

/-! ## A179259.P8429935638438457333

`A005915(n)+1-3*n`
-/

namespace A179259.P8429935638438457333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + 1 - (3 * n : ℤ)

end

end A179259.P8429935638438457333

namespace A179259

/-- `A005915(n)+1-3*n` -/
def P8429935638438457333.Spec : Prop :=
  ∀ n, P8429935638438457333.a n = A179259 n

end A179259

/-! ## A179259.P5435364299550080167

`A059986(n)-2*(n-1)`
-/

namespace A179259.P5435364299550080167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n - 2 * ((n : ℤ) - 1)

end

end A179259.P5435364299550080167

namespace A179259

/-- `A059986(n)-2*(n-1)` -/
def P5435364299550080167.Spec : Prop :=
  ∀ n, P5435364299550080167.a n = A179259 n

end A179259

/-! ## A179259.P12802173108986330712

`n*A067725(n)+n+2`
-/

namespace A179259.P12802173108986330712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067725 n + (n + 2 : ℤ)

end

end A179259.P12802173108986330712

namespace A179259

/-- `n*A067725(n)+n+2` -/
def P12802173108986330712.Spec : Prop :=
  ∀ n, P12802173108986330712.a n = A179259 n

end A179259

/-! ## A179259.P4990445098732386370

`A067389(n)+(2*n)²+2`
-/

namespace A179259.P4990445098732386370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + ((2 * n) ^ 2 : ℤ) + 2

end

end A179259.P4990445098732386370

namespace A179259

/-- `A067389(n)+(2*n)²+2` -/
def P4990445098732386370.Spec : Prop :=
  ∀ n, P4990445098732386370.a n = A179259 n

end A179259

/-! ## A179259.P14584930926211309495

`n*A080663(n+1)-(n-2)`
-/

namespace A179259.P14584930926211309495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080663 (n + 1) - ((n : ℤ) - 2)

end

end A179259.P14584930926211309495

namespace A179259

/-- `n*A080663(n+1)-(n-2)` -/
def P14584930926211309495.Spec : Prop :=
  ∀ n, P14584930926211309495.a n = A179259 n

end A179259

/-! ## A179259.P7538171700855024515

`A257042(n)-(n+1)*(n-2)`
-/

namespace A179259.P7538171700855024515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257042 n - (n + 1 : ℤ) * ((n : ℤ) - 2)

end

end A179259.P7538171700855024515

namespace A179259

/-- `A257042(n)-(n+1)*(n-2)` -/
def P7538171700855024515.Spec : Prop :=
  ∀ n, P7538171700855024515.a n = A179259 n

end A179259

/-! ## A179259.P3248887788051604647

`3*n*A005563(n)+n+2`
-/

namespace A179259.P3248887788051604647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A005563 n) + (n + 2 : ℤ)

end

end A179259.P3248887788051604647

namespace A179259

/-- `3*n*A005563(n)+n+2` -/
def P3248887788051604647.Spec : Prop :=
  ∀ n, P3248887788051604647.a n = A179259 n

end A179259

/-! ## A179259.P16081405893186459990

`∑[abs(3*n*A016777(n)-2)]`
-/

namespace A179259.P16081405893186459990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℤ) * A016777 n) - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179259.P16081405893186459990

namespace A179259

/-- `∑[abs(3*n*A016777(n)-2)]` -/
def P16081405893186459990.Spec : Prop :=
  ∀ n, P16081405893186459990.a n = A179259 n

end A179259

/-! ## A179259.P16679576180127078711

`A100176(n+1)+5-(n+2)²`
-/

namespace A179259.P16679576180127078711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100176 (n + 1) + (5 - ((n + 2) ^ 2 : ℤ))

end

end A179259.P16679576180127078711

namespace A179259

/-- `A100176(n+1)+5-(n+2)²` -/
def P16679576180127078711.Spec : Prop :=
  ∀ n, P16679576180127078711.a n = A179259 n

end A179259

/-! ## A179259.P14811346651430441039

`(n+1)*(A270710(n)-1+n)+4`
-/

namespace A179259.P14811346651430441039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A270710 n - 1 + (n : ℤ)) + 4

end

end A179259.P14811346651430441039

namespace A179259

/-- `(n+1)*(A270710(n)-1+n)+4` -/
def P14811346651430441039.Spec : Prop :=
  ∀ n, P14811346651430441039.a n = A179259 n

end A179259

/-! ## A179259.P13555502070353263116

`A130884(n)+A053755(n)`
-/

namespace A179259.P13555502070353263116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130884 n + A053755 n

end

end A179259.P13555502070353263116

namespace A179259

/-- `A130884(n)+A053755(n)` -/
def P13555502070353263116.Spec : Prop :=
  ∀ n, P13555502070353263116.a n = A179259 n

end A179259

/-! ## A179259.P17154311622281973395

`A239229(n)+A059986(n)`
-/

namespace A179259.P17154311622281973395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239229 n + A059986 n

end

end A179259.P17154311622281973395

namespace A179259

/-- `A239229(n)+A059986(n)` -/
def P17154311622281973395.Spec : Prop :=
  ∀ n, P17154311622281973395.a n = A179259 n

end A179259

/-! ## A179259.P7424966254763232478

`A204674(n)-A062158(n)`
-/

namespace A179259.P7424966254763232478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204674 n - A062158 n

end

end A179259.P7424966254763232478

namespace A179259

/-- `A204674(n)-A062158(n)` -/
def P7424966254763232478.Spec : Prop :=
  ∀ n, P7424966254763232478.a n = A179259 n

end A179259

/-! ## A179259.P10084791175881636710

`A271624(n+1)+A027903(n)`
-/

namespace A179259.P10084791175881636710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271624 (n + 1) + A027903 n

end

end A179259.P10084791175881636710

namespace A179259

/-- `A271624(n+1)+A027903(n)` -/
def P10084791175881636710.Spec : Prop :=
  ∀ n, P10084791175881636710.a n = A179259 n

end A179259

/-! ## A179259.P4850850955387041831

`A188947(n+1)+A163683(n)`
-/

namespace A179259.P4850850955387041831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (n + 1) + A163683 n

end

end A179259.P4850850955387041831

namespace A179259

/-- `A188947(n+1)+A163683(n)` -/
def P4850850955387041831.Spec : Prop :=
  ∀ n, P4850850955387041831.a n = A179259 n

end A179259

/-!
# A179261: Continued fraction expansion of the connective constant of the honeycomb lattice.

The programs for A179261, there is no canonical definition to state claims against.
-/

/-! ## A179261.P1437854507469014924

`A154740(n+1)`
-/

namespace A179261.P1437854507469014924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154740 (n + 1)

end

end A179261.P1437854507469014924

/-! ## A179261.P1366925281839439640

`abs(∑[-Δ[A154740(n)]])`
-/

namespace A179261.P1366925281839439640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154740 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A179261.P1366925281839439640

/-! ## A179261.P6409503217389226032

`or(char[1], A154740(1-(n-2*n)))`
-/

namespace A179261.P6409503217389226032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A154740 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A179261.P6409503217389226032

/-! ## A179261.P5095038051370079877

`A000027(A154740(1-(n-2*n)))`
-/

namespace A179261.P5095038051370079877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A154740 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A179261.P5095038051370079877

/-! ## A179261.P4939128646538001234

`gcd(A000038(n), A154740(Δ[n²]-n))`
-/

namespace A179261.P4939128646538001234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A154740 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A179261.P4939128646538001234

/-!
# A179262: a(n) = 2*prime(n)^2 - 1.

The programs for A179262, the canonical program `A179262.P16510143958199183968` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179262 has offset 1).

The definition of A179262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179262.P16510143958199183968

`A079704(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179262

/-- `A079704(n+1)-1` -/
def P16510143958199183968.Spec : Prop :=
  ∀ n, P16510143958199183968.a n = A179262 (n + 1)

theorem P16510143958199183968.correct : P16510143958199183968.Spec := by
  intro n
  simp only [A179262, Nat.add_sub_cancel]

end A179262

/-! ## A179262.P567092617986475280

`A153480(n)+3`
-/

namespace A179262.P567092617986475280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n + 3

end

end A179262.P567092617986475280

namespace A179262

/-- `A153480(n)+3` -/
def P567092617986475280.Spec : Prop :=
  ∀ n, P567092617986475280.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P16692927599997673275

`2*A084920(n+1)+1`
-/

namespace A179262.P16692927599997673275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084920 (n + 1) + 1

end

end A179262.P16692927599997673275

namespace A179262

/-- `2*A084920(n+1)+1` -/
def P16692927599997673275.Spec : Prop :=
  ∀ n, P16692927599997673275.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P12163351418923047035

`2*A001248(n+1)-1`
-/

namespace A179262.P12163351418923047035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) - 1

end

end A179262.P12163351418923047035

namespace A179262

/-- `2*A001248(n+1)-1` -/
def P12163351418923047035.Spec : Prop :=
  ∀ n, P12163351418923047035.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P3220374280699256026

`2*A049001(n+1)+3`
-/

namespace A179262.P3220374280699256026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049001 (n + 1) + 3

end

end A179262.P3220374280699256026

namespace A179262

/-- `2*A049001(n+1)+3` -/
def P3220374280699256026.Spec : Prop :=
  ∀ n, P3220374280699256026.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P7905878412221154807

`A069262(n+1)/2-1`
-/

namespace A179262.P7905878412221154807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 2 - 1

end

end A179262.P7905878412221154807

namespace A179262

/-- `A069262(n+1)/2-1` -/
def P7905878412221154807.Spec : Prop :=
  ∀ n, P7905878412221154807.a n = (A179262 (n + 1) : ℚ)

end A179262

/-! ## A179262.P16441503416991620221

`2*A066872(n+1)-3`
-/

namespace A179262.P16441503416991620221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066872 (n + 1) - 3

end

end A179262.P16441503416991620221

namespace A179262

/-- `2*A066872(n+1)-3` -/
def P16441503416991620221.Spec : Prop :=
  ∀ n, P16441503416991620221.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P8694786318028645115

`(A060429(n+1)-3)/2`
-/

namespace A179262.P8694786318028645115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060429 (n + 1) - 3 : ℚ) / 2

end

end A179262.P8694786318028645115

namespace A179262

/-- `(A060429(n+1)-3)/2` -/
def P8694786318028645115.Spec : Prop :=
  ∀ n, P8694786318028645115.a n = (A179262 (n + 1) : ℚ)

end A179262

/-! ## A179262.P5651686089732252514

`2*A182200(n+1)+5`
-/

namespace A179262.P5651686089732252514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182200 (n + 1) + 5

end

end A179262.P5651686089732252514

namespace A179262

/-- `2*A182200(n+1)+5` -/
def P5651686089732252514.Spec : Prop :=
  ∀ n, P5651686089732252514.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P12643044178690649793

`2*A061725(n+1)-5`
-/

namespace A179262.P12643044178690649793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061725 (n + 1) - 5

end

end A179262.P12643044178690649793

namespace A179262

/-- `2*A061725(n+1)-5` -/
def P12643044178690649793.Spec : Prop :=
  ∀ n, P12643044178690649793.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P2942025719281184523

`floor(2*sqrt(A138401(n+1)))`
-/

namespace A179262.P2942025719281184523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A138401 (n + 1) : ℝ)⌋

end

end A179262.P2942025719281184523

namespace A179262

/-- `floor(2*sqrt(A138401(n+1)))` -/
def P2942025719281184523.Spec : Prop :=
  ∀ n, P2942025719281184523.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P11823652442846910111

`2*A000040(n+1)²-1`
-/

namespace A179262.P11823652442846910111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) ^ 2 - 1

end

end A179262.P11823652442846910111

namespace A179262

/-- `2*A000040(n+1)²-1` -/
def P11823652442846910111.Spec : Prop :=
  ∀ n, P11823652442846910111.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P10451064161303045284

`2*A273960(n+1)²-1`
-/

namespace A179262.P10451064161303045284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273960 (n + 1) ^ 2 - 1

end

end A179262.P10451064161303045284

namespace A179262

/-- `2*A273960(n+1)²-1` -/
def P10451064161303045284.Spec : Prop :=
  ∀ n, P10451064161303045284.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P15330633576476317771

`2*sqrt(A030514(n+1))-1`
-/

namespace A179262.P15330633576476317771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A030514 (n + 1) : ℝ) - 1

end

end A179262.P15330633576476317771

namespace A179262

/-- `2*sqrt(A030514(n+1))-1` -/
def P15330633576476317771.Spec : Prop :=
  ∀ n, P15330633576476317771.a n = (A179262 (n + 1) : ℝ)

end A179262

/-! ## A179262.P7340693306066947189

`A100484(n+1)²/2-1`
-/

namespace A179262.P7340693306066947189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A179262.P7340693306066947189

namespace A179262

/-- `A100484(n+1)²/2-1` -/
def P7340693306066947189.Spec : Prop :=
  ∀ n, P7340693306066947189.a n = (A179262 (n + 1) : ℚ)

end A179262

/-! ## A179262.P18042730582184938931

`A084920(n+1)+A001248(n+1)`
-/

namespace A179262.P18042730582184938931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A001248 (n + 1)

end

end A179262.P18042730582184938931

namespace A179262

/-- `A084920(n+1)+A001248(n+1)` -/
def P18042730582184938931.Spec : Prop :=
  ∀ n, P18042730582184938931.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P3701840949993278103

`A066872(n+1)+A049001(n+1)`
-/

namespace A179262.P3701840949993278103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A049001 (n + 1)

end

end A179262.P3701840949993278103

namespace A179262

/-- `A066872(n+1)+A049001(n+1)` -/
def P3701840949993278103.Spec : Prop :=
  ∀ n, P3701840949993278103.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P13620723027901829403

`A117961(n+1)+A006093(n+1)`
-/

namespace A179262.P13620723027901829403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + A006093 (n + 1)

end

end A179262.P13620723027901829403

namespace A179262

/-- `A117961(n+1)+A006093(n+1)` -/
def P13620723027901829403.Spec : Prop :=
  ∀ n, P13620723027901829403.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P2313675812784540853

`A182200(n+1)+A061725(n+1)`
-/

namespace A179262.P2313675812784540853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + A061725 (n + 1)

end

end A179262.P2313675812784540853

namespace A179262

/-- `A182200(n+1)+A061725(n+1)` -/
def P2313675812784540853.Spec : Prop :=
  ∀ n, P2313675812784540853.a n = A179262 (n + 1)

end A179262

/-! ## A179262.P1733185779986366464

`A306190(n+1)+A036690(n+1)`
-/

namespace A179262.P1733185779986366464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + A036690 (n + 1)

end

end A179262.P1733185779986366464

namespace A179262

/-- `A306190(n+1)+A036690(n+1)` -/
def P1733185779986366464.Spec : Prop :=
  ∀ n, P1733185779986366464.a n = A179262 (n + 1)

end A179262

/-!
# A179263: Number of permutations of 1..n with sum (i-p(i))^2 <= n*(n-1)/2.

The programs for A179263, there is no canonical definition to state claims against.
-/

/-! ## A179263.P11371797116185821796

`or(A000738(n), A134478(A051240(n)))`
-/

namespace A179263.P11371797116185821796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000738 n) (A134478 (A051240 n).toNat)

end

end A179263.P11371797116185821796

/-! ## A179263.P8432759741460134633

`A260672(A051044(2*n)+A034828(n))`
-/

namespace A179263.P8432759741460134633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (A051044 (2 * n) + A034828 n).toNat

end

end A179263.P8432759741460134633

/-!
# A179264: Number of permutations p of 1..n with sum (i-p(i))^2 <= (n+1)*n/2.

The programs for A179264, there is no canonical definition to state claims against.
-/

/-! ## A179264.P5573443345958628375

`A391511(n)+A179266(n)`
-/

namespace A179264.P5573443345958628375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391511 n + A179266 n

end

end A179264.P5573443345958628375

/-! ## A179264.P16655731331943461957

`A181095(A134955(n))`
-/

namespace A179264.P16655731331943461957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A134955 n).toNat

end

end A179264.P16655731331943461957

/-! ## A179264.P9175782178330303476

`A202728(A135346(n))`
-/

namespace A179264.P9175782178330303476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202728 (A135346 n).toNat

end

end A179264.P9175782178330303476

/-!
# A179265: Number of permutations of 1..n with sum (i-p(i))^2 < n*(n-1)/2.

The programs for A179265, there is no canonical definition to state claims against.
-/

/-! ## A179265.P12239420588361669065

`A219652(A030266(n+2))-A263273(A003242(n))`
-/

namespace A179265.P12239420588361669065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A030266 (n + 2)).toNat - A263273 (A003242 n).toNat

end

end A179265.P12239420588361669065

/-!
# A179266: Number of permutations p of 1..n with sum (i-p(i))^2 < (n+1)*n/2.

The programs for A179266, there is no canonical definition to state claims against.
-/

/-! ## A179266.P18015510321693689799

`A179264(n)-A391511(n)`
-/

namespace A179266.P18015510321693689799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179264 n - A391511 n

end

end A179266.P18015510321693689799

/-!
# A179268: 

The programs for A179268, there is no canonical definition to state claims against.
-/

/-! ## A179268.P977340231749162371

`(n+1)²!/n!`
-/

namespace A179268.P977340231749162371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1) ^ 2) : ℚ) / (Nat.factorial n : ℚ)

end

end A179268.P977340231749162371

/-! ## A179268.P6454525043205615635

`(n+1)*A127223(n+1)`
-/

namespace A179268.P6454525043205615635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127223 (n + 1)

end

end A179268.P6454525043205615635

/-! ## A179268.P12205376419705159099

`A000142((n+1)²)/A000142(n)`
-/

namespace A179268.P12205376419705159099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 ((n + 1) ^ 2) : ℚ) / (A000142 n : ℚ)

end

end A179268.P12205376419705159099

/-! ## A179268.P16354715971155482634

`A052041(n+1)!/A000142(n)`
-/

namespace A179268.P16354715971155482634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A052041 (n + 1)).toNat : ℚ) / (A000142 n : ℚ)

end

end A179268.P16354715971155482634

/-!
# A179269: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are increasing, and first difference > first part.

The programs for A179269, there is no canonical definition to state claims against.
-/

/-! ## A179269.P17496836022149581852

`∑[A284585(2*n)%A119080(n+1)]`
-/

namespace A179269.P17496836022149581852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284585 (2 * n)) (A119080 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179269.P17496836022149581852

/-! ## A179269.P6937969185740251789

`∑[A284585(2*n)]%A334322(n+1)`
-/

namespace A179269.P6937969185740251789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A334322 (n + 1))

end

end A179269.P6937969185740251789

/-! ## A179269.P10187368989302184908

`∑[A280456(2*n)%A115248(2*n+3)]`
-/

namespace A179269.P10187368989302184908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280456 (2 * n)) (A115248 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179269.P10187368989302184908

/-! ## A179269.P8152217569059131047

`∑[A280456(A005843(n))%A217679(n+1)]`
-/

namespace A179269.P8152217569059131047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280456 (A005843 n).toNat) (A217679 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179269.P8152217569059131047

/-! ## A179269.P15049911247880538275

`∑[A280456(2*n)%A343101(n+5)]`
-/

namespace A179269.P15049911247880538275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280456 (2 * n)) (A343101 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179269.P15049911247880538275

/-!
# A179270: G.f. satisfies: inverse of function A(x) + i*A(x)^2 equals the conjugate, A(x) - i*A(x)^2, where i=sqrt(-1).

The programs for A179270, there is no canonical definition to state claims against.
-/

/-! ## A179270.P6341118828308319267

`A056594(n)*A318008(n+1)`
-/

namespace A179270.P6341118828308319267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A318008 (n + 1)

end

end A179270.P6341118828308319267

/-! ## A179270.P5801029653644474595

`A049310(∑[n])*A318008(n+1)`
-/

namespace A179270.P5801029653644474595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (∑ j ∈ Finset.range (n + 1), f1 j) * A318008 (n + 1)

end

end A179270.P5801029653644474595

/-! ## A179270.P7554814891565244907

`∑[A057077(n+1)]*A318008(n+1)`
-/

namespace A179270.P7554814891565244907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A318008 (n + 1)

end

end A179270.P7554814891565244907

/-!
# A179271: Odd long legs `B` of more than one primitive Pythagorean triangle.

The programs for A179271, there is no canonical definition to state claims against.
-/

/-! ## A179271.P2325179930399046904

`filter[A024410(n+1), A000035(#)]`
-/

namespace A179271.P2325179930399046904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A179271.P2325179930399046904

/-!
# A179272: Sharp upper bound on Rosgen overlap number n-vertex graph with n >= 14, formula abused here for nonnegative integers.

The programs for A179272, the canonical program `A179272.P16918531005467561870` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179272 has offset 0).

The definition of A179272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179272.P3228164301611890877

`(2*n²-4*n+3*(-1)^n-11)/8`
-/

namespace A179272.P3228164301611890877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) - (4 * n : ℤ) + 3 * (-1) ^ n - 11 : ℚ) / 8

end

end A179272.P3228164301611890877

namespace A179272

/-- `(2*n²-4*n+3*(-1)^n-11)/8` -/
def P3228164301611890877.Spec : Prop :=
  ∀ n, P3228164301611890877.a n = (A179272 n : ℚ)

theorem P3228164301611890877.correct : P3228164301611890877.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A179272, Nat.add_sub_cancel, A179272.P3228164301611890877.a, A179272.P16918531005467561870.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A179272, Nat.add_sub_cancel, A179272.P3228164301611890877.a, A179272.P16918531005467561870.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179272

/-! ## A179272.P16918531005467561870

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=-2, a(2)=-1, a(3)=-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179272

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16918531005467561870.Spec : Prop :=
  ∀ n, P16918531005467561870.a n = A179272 n

theorem P16918531005467561870.correct : P16918531005467561870.Spec := by
  intro n
  simp only [A179272]

end A179272

/-! ## A179272.P6183585062999495587

`∑[round(xor(1, n-2)/2)]`
-/

namespace A179272.P6183585062999495587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 ((n : ℤ) - 2) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179272.P6183585062999495587

namespace A179272

/-- `∑[round(xor(1, n-2)/2)]` -/
def P6183585062999495587.Spec : Prop :=
  ∀ n, P6183585062999495587.a n = A179272 n

end A179272

/-! ## A179272.P12648894978206463519

`∑[n-2]-a(n-1)` with `a(0)=-1`
-/

namespace A179272.P12648894978206463519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A179272.P12648894978206463519

namespace A179272

/-- `∑[n-2]-a(n-1)` -/
def P12648894978206463519.Spec : Prop :=
  ∀ n, P12648894978206463519.a n = A179272 n

end A179272

/-! ## A179272.P4833688700076370303

`a(n-2)-2+n` with `a(0)=-1, a(1)=-2`
-/

namespace A179272.P4833688700076370303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n a =>
  a (n - 2) - 2 + (n : ℤ)

end

end A179272.P4833688700076370303

namespace A179272

/-- `a(n-2)-2+n` -/
def P4833688700076370303.Spec : Prop :=
  ∀ n, P4833688700076370303.a n = A179272 n

end A179272

/-! ## A179272.P13868903941305370095

`n-(2-a(n-2))` with `a(0)=-1, a(1)=-2`
-/

namespace A179272.P13868903941305370095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n a =>
  (n : ℤ) - (2 - a (n - 2))

end

end A179272.P13868903941305370095

namespace A179272

/-- `n-(2-a(n-2))` -/
def P13868903941305370095.Spec : Prop :=
  ∀ n, P13868903941305370095.a n = A179272 n

end A179272

/-! ## A179272.P6447431923612190409

`∑[round((n-1)/2)-n%2]`
-/

namespace A179272.P6447431923612190409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179272.P6447431923612190409

namespace A179272

/-- `∑[round((n-1)/2)-n%2]` -/
def P6447431923612190409.Spec : Prop :=
  ∀ n, P6447431923612190409.a n = A179272 n

end A179272

/-! ## A179272.P11762187278791634130

`ceil(∑[or(1, n)/2]-(n+2))`
-/

namespace A179272.P11762187278791634130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℚ)⌉

end

end A179272.P11762187278791634130

namespace A179272

/-- `ceil(∑[or(1, n)/2]-(n+2))` -/
def P11762187278791634130.Spec : Prop :=
  ∀ n, P11762187278791634130.a n = A179272 n

end A179272

/-! ## A179272.P5209589997963794510

`∑[round((n-1)/2)-and(1, n)]`
-/

namespace A179272.P5209589997963794510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179272.P5209589997963794510

namespace A179272

/-- `∑[round((n-1)/2)-and(1, n)]` -/
def P5209589997963794510.Spec : Prop :=
  ∀ n, P5209589997963794510.a n = A179272 n

end A179272

/-! ## A179272.P14815945602120418811

`∑[floor(n/2)-and(1, n)^n]`
-/

namespace A179272.P14815945602120418811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - (Nat.land 1 n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179272.P14815945602120418811

namespace A179272

/-- `∑[floor(n/2)-and(1, n)^n]` -/
def P14815945602120418811.Spec : Prop :=
  ∀ n, P14815945602120418811.a n = A179272 n

end A179272

/-! ## A179272.P17521741705581770467

`ogf((1-3x^2+x^3)/(-1+2x-2x^3+x^4))`
-/

namespace A179272.P17521741705581770467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 3, -1] [1, -2, 0, 2, -1] n

end

end A179272.P17521741705581770467

namespace A179272

/-- `ogf((1-3x^2+x^3)/(-1+2x-2x^3+x^4))` -/
def P17521741705581770467.Spec : Prop :=
  ∀ n, P17521741705581770467.a n = A179272 n

end A179272

/-! ## A179272.P17749935016459639716

`floor(cot((2/(n+1))²)-(n+1))`
-/

namespace A179272.P17749935016459639716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ) - (n + 1 : ℝ)⌋

end

end A179272.P17749935016459639716

namespace A179272

/-- `floor(cot((2/(n+1))²)-(n+1))` -/
def P17749935016459639716.Spec : Prop :=
  ∀ n, P17749935016459639716.a n = A179272 n

end A179272

/-! ## A179272.P18434770338277844594

`round(cot(2/(n+1))²-(n+1))`
-/

namespace A179272.P18434770338277844594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2 - (n + 1 : ℝ))

end

end A179272.P18434770338277844594

namespace A179272

/-- `round(cot(2/(n+1))²-(n+1))` -/
def P18434770338277844594.Spec : Prop :=
  ∀ n, P18434770338277844594.a n = A179272 n

end A179272

/-! ## A179272.P1709601366754243806

`floor(((n-1)/2)²-gcd(2, n+1))`
-/

namespace A179272.P1709601366754243806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 1 : ℚ) / 2) ^ 2 - (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A179272.P1709601366754243806

namespace A179272

/-- `floor(((n-1)/2)²-gcd(2, n+1))` -/
def P1709601366754243806.Spec : Prop :=
  ∀ n, P1709601366754243806.a n = A179272 n

end A179272

/-! ## A179272.P479816809673349948

`floor(C(n+1, 2)-((n+2)/2)²)`
-/

namespace A179272.P479816809673349948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) - ((n + 2 : ℚ) / 2) ^ 2⌋

end

end A179272.P479816809673349948

namespace A179272

/-- `floor(C(n+1, 2)-((n+2)/2)²)` -/
def P479816809673349948.Spec : Prop :=
  ∀ n, P479816809673349948.a n = A179272 n

end A179272

/-! ## A179272.P8779297037610951782

`A079524(n)-Δ[n²]`
-/

namespace A179272.P8779297037610951782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A179272.P8779297037610951782

namespace A179272

/-- `A079524(n)-Δ[n²]` -/
def P8779297037610951782.Spec : Prop :=
  ∀ n, P8779297037610951782.a n = A179272 n

end A179272

/-! ## A179272.P11000890384774962033

`floor(A078126(n)-n/2)`
-/

namespace A179272.P11000890384774962033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078126 n : ℚ) - (n : ℚ) / 2⌋

end

end A179272.P11000890384774962033

namespace A179272

/-- `floor(A078126(n)-n/2)` -/
def P11000890384774962033.Spec : Prop :=
  ∀ n, P11000890384774962033.a n = A179272 n

end A179272

/-! ## A179272.P9768540676470103778

`Δ[A361272(n)]-(n+1)`
-/

namespace A179272.P9768540676470103778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A179272.P9768540676470103778

namespace A179272

/-- `Δ[A361272(n)]-(n+1)` -/
def P9768540676470103778.Spec : Prop :=
  ∀ n, P9768540676470103778.a n = A179272 n

end A179272

/-! ## A179272.P8364456190565740390

`A198442(n+1)-(n+1)`
-/

namespace A179272.P8364456190565740390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) - (n + 1 : ℤ)

end

end A179272.P8364456190565740390

namespace A179272

/-- `A198442(n+1)-(n+1)` -/
def P8364456190565740390.Spec : Prop :=
  ∀ n, P8364456190565740390.a n = A179272 n

end A179272

/-! ## A179272.P7002287594989351191

`A004652(n+1)-(n+2)`
-/

namespace A179272.P7002287594989351191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 1) - (n + 2 : ℤ)

end

end A179272.P7002287594989351191

namespace A179272

/-- `A004652(n+1)-(n+2)` -/
def P7002287594989351191.Spec : Prop :=
  ∀ n, P7002287594989351191.a n = A179272 n

end A179272

/-!
# A179273: Primes in A179272.

The programs for A179273, there is no canonical definition to state claims against.
-/

/-! ## A179273.P2114622747037409329

`∪[A002327(n+1), A028871(n+1)]`
-/

namespace A179273.P2114622747037409329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P2114622747037409329

/-! ## A179273.P17989763230112067811

`p?[ceil((n/2)²)-2]`
-/

namespace A179273.P17989763230112067811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179273.P17989763230112067811

/-! ## A179273.P5974596481096341589

`∩[A184676(n+1), A348283(n+1)]`
-/

namespace A179273.P5974596481096341589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P5974596481096341589

/-! ## A179273.P8169369711688540872

`∩[A009087(n+1), A184676(n+1)]`
-/

namespace A179273.P8169369711688540872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P8169369711688540872

/-! ## A179273.P7958168679799477877

`∩[A045346(n+1), A184676(n+1)]`
-/

namespace A179273.P7958168679799477877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P7958168679799477877

/-! ## A179273.P8250894489693205670

`∩[A000040(n+1), A184676(n+1)]`
-/

namespace A179273.P8250894489693205670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P8250894489693205670

/-! ## A179273.P13049872482542347947

`∩[A045344(n+1), A184676(n+1)]`
-/

namespace A179273.P13049872482542347947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P13049872482542347947

/-! ## A179273.P14857512041689931467

`∩[A051948(n+1), A184676(n+1)]`
-/

namespace A179273.P14857512041689931467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P14857512041689931467

/-! ## A179273.P4955658950625218604

`∩[A053813(n+1), A184676(n+1)]`
-/

namespace A179273.P4955658950625218604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P4955658950625218604

/-! ## A179273.P7495803303598029653

`∩[A116974(n+1), A184676(n+1)]`
-/

namespace A179273.P7495803303598029653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P7495803303598029653

/-! ## A179273.P6450025825272328316

`∩[A175787(n+1), A184676(n+1)]`
-/

namespace A179273.P6450025825272328316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P6450025825272328316

/-! ## A179273.P17564608521029110035

`∩[A182986(n+1), A184676(n+1)]`
-/

namespace A179273.P17564608521029110035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P17564608521029110035

/-! ## A179273.P17265951839565308985

`∩[A184676(n+1), A251595(n+1)]`
-/

namespace A179273.P17265951839565308985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P17265951839565308985

/-! ## A179273.P15742754777917390729

`∩[A132630(n+1), A184676(n+1)]`
-/

namespace A179273.P15742754777917390729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P15742754777917390729

/-! ## A179273.P7547686624889133620

`∩[A182140(n+1), A184676(n+1)]`
-/

namespace A179273.P7547686624889133620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P7547686624889133620

/-! ## A179273.P17209724930218367363

`∩[A184676(n+1), A280257(n+1)]`
-/

namespace A179273.P17209724930218367363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P17209724930218367363

/-! ## A179273.P86695299575832428

`∩[A184676(n+1), A301987(n+1)]`
-/

namespace A179273.P86695299575832428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P86695299575832428

/-! ## A179273.P3213039534539416405

`∩[A000430(n+1), A184676(n+1)]`
-/

namespace A179273.P3213039534539416405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P3213039534539416405

/-! ## A179273.P5937620232491687354

`∩[A050376(n+1), A184676(n+1)]`
-/

namespace A179273.P5937620232491687354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P5937620232491687354

/-! ## A179273.P16544873743162354319

`∩[A066191(n+1), A184676(n+1)]`
-/

namespace A179273.P16544873743162354319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179273.P16544873743162354319

/-!
# A179274: a(1) = 5, a( n) = prime(a(n-1)) - a(n-1).

The programs for A179274, there is no canonical definition to state claims against.
-/

/-! ## A179274.P13391921889441656728

`A014689(a(n-1))` with `a(0)=5`
-/

namespace A179274.P13391921889441656728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A014689 (a (n - 1)).toNat

end

end A179274.P13391921889441656728

/-! ## A179274.P17700907598216007125

`A065890(a(n-1))+1` with `a(0)=5`
-/

namespace A179274.P17700907598216007125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A065890 (a (n - 1)).toNat + 1

end

end A179274.P17700907598216007125

/-! ## A179274.P11356487611300046342

`A073170(a(n-1)+1)` with `a(0)=5`
-/

namespace A179274.P11356487611300046342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A073170 (a (n - 1) + 1).toNat

end

end A179274.P11356487611300046342

/-! ## A179274.P14433775401926318187

`A014692(a(n-1))-1` with `a(0)=5`
-/

namespace A179274.P14433775401926318187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A014692 (a (n - 1)).toNat - 1

end

end A179274.P14433775401926318187

/-! ## A179274.P7777340800567808219

`A162177(a(n-1)+1)+1` with `a(0)=5`
-/

namespace A179274.P7777340800567808219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A162177 (a (n - 1) + 1).toNat + 1

end

end A179274.P7777340800567808219

/-!
# A179276: Largest 3-smooth number <= n.

The programs for A179276, there is no canonical definition to state claims against.
-/

/-! ## A179276.P5958758459698005039

`A003586(A071521(n+1))`
-/

namespace A179276.P5958758459698005039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A071521 (n + 1)).toNat

end

end A179276.P5958758459698005039

/-! ## A179276.P5447806174889633574

`A003586(∑[A065333(n+1)])`
-/

namespace A179276.P5447806174889633574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179276.P5447806174889633574

/-! ## A179276.P13690750729184852029

`A003586(∑[char[A036561(n)-1]])`
-/

namespace A179276.P13690750729184852029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179276.P13690750729184852029

/-! ## A179276.P11028762430768839479

`A007694(A071521(n+1)+1)/2`
-/

namespace A179276.P11028762430768839479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (A071521 (n + 1) + 1).toNat : ℚ) / 2

end

end A179276.P11028762430768839479

/-! ## A179276.P26835946925686094

`A069353(∑[char[A069353(n+1)]])+1`
-/

namespace A179276.P26835946925686094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A179276.P26835946925686094

/-! ## A179276.P2890880838216238430

`A003586(∑[char[A003586(n+1)-1]])`
-/

namespace A179276.P2890880838216238430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179276.P2890880838216238430

/-! ## A179276.P12653871365691992132

`A003586(∑[A065332(A065330(n+1))])`
-/

namespace A179276.P12653871365691992132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (A065330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179276.P12653871365691992132

/-! ## A179276.P11154530352766269757

`A069353(A071521(n+1))+A057427(n+1)`
-/

namespace A179276.P11154530352766269757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A071521 (n + 1)).toNat + A057427 (n + 1)

end

end A179276.P11154530352766269757

/-! ## A179276.P7905579808961388993

`A003586(A069924(2*(n+1))-1)`
-/

namespace A179276.P7905579808961388993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A069924 (2 * (n + 1)) - 1).toNat

end

end A179276.P7905579808961388993

/-! ## A179276.P11808783839126955197

`A276380(∑[A277070(n+1)])`
-/

namespace A179276.P11808783839126955197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276380 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179276.P11808783839126955197

/-! ## A179276.P702126139740584650

`A003586(∑[A122255((n+1)²)])`
-/

namespace A179276.P702126139740584650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179276.P702126139740584650

/-!
# A179277: A(x) = C(x) * C(x^2) * C(x^4) * C(x^8) *...; C = Catalan, A000108.

The programs for A179277, there is no canonical definition to state claims against.
-/

/-! ## A179277.P8000169503246497092

`A362424(A362393(n))+A000932(n)`
-/

namespace A179277.P8000169503246497092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362424 (A362393 n).toNat + A000932 n

end

end A179277.P8000169503246497092

/-! ## A179277.P369705586779469048

`or(A000932(n), A359211(A174073(n)))`
-/

namespace A179277.P369705586779469048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000932 n) (A359211 (A174073 n).toNat)

end

end A179277.P369705586779469048

/-! ## A179277.P2045324725245148018

`Δ[A077556(n)]-char[3]`
-/

namespace A179277.P2045324725245148018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077556 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179277.P2045324725245148018

/-!
# A179278: Largest nonprime integer <= n.

The programs for A179278, the canonical program `A179278.P6438880649128662562` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179278 has offset 1).

The definition of A179278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179278.P6438880649128662562

`A018252(A062298(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179278

/-- `A018252(A062298(n+1))` -/
def P6438880649128662562.Spec : Prop :=
  ∀ n, P6438880649128662562.a n = A179278 (n + 1)

theorem P6438880649128662562.correct : P6438880649128662562.Spec := by
  intro n
  simp only [A179278, Nat.add_sub_cancel]

end A179278

/-! ## A179278.P13536980882296189658

`∏{p}[n+1, C(#%n, #)]-char[2]+n`
-/

namespace A179278.P13536980882296189658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A179278.P13536980882296189658

namespace A179278

/-- `∏{p}[n+1, C(#%n, #)]-char[2]+n` -/
def P13536980882296189658.Spec : Prop :=
  ∀ n, P13536980882296189658.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P3220087015006051109

`∏{p}[n+1, C(n, C(#, n))]-char[2]+n`
-/

namespace A179278.P3220087015006051109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose n (Nat.choose p n) : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A179278.P3220087015006051109

namespace A179278

/-- `∏{p}[n+1, C(n, C(#, n))]-char[2]+n` -/
def P3220087015006051109.Spec : Prop :=
  ∀ n, P3220087015006051109.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P4937107258533921360

`n+2-C(2, ∑{e}[n+1, #])!-char[2]`
-/

namespace A179278.P4937107258533921360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179278.P4937107258533921360

namespace A179278

/-- `n+2-C(2, ∑{e}[n+1, #])!-char[2]` -/
def P4937107258533921360.Spec : Prop :=
  ∀ n, P4937107258533921360.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P12531719840173854901

`n+2-∏{p}[n+1, ceil(#/n)]-char[2]`
-/

namespace A179278.P12531719840173854901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179278.P12531719840173854901

namespace A179278

/-- `n+2-∏{p}[n+1, ceil(#/n)]-char[2]` -/
def P12531719840173854901.Spec : Prop :=
  ∀ n, P12531719840173854901.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P12517703816349382096

`gcd(n+2-C(2, ∑{e}[n+1, #])!, C(2, n))`
-/

namespace A179278.P12517703816349382096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)) (Nat.choose 2 n : ℤ)

end

end A179278.P12517703816349382096

namespace A179278

/-- `gcd(n+2-C(2, ∑{e}[n+1, #])!, C(2, n))` -/
def P12517703816349382096.Spec : Prop :=
  ∀ n, (P12517703816349382096.a n : ℤ) = A179278 (n + 1)

end A179278

/-! ## A179278.P14199547233605483820

`n+1-∑{p}[n+1, floor(#/(n+1))]-char[2]`
-/

namespace A179278.P14199547233605483820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179278.P14199547233605483820

namespace A179278

/-- `n+1-∑{p}[n+1, floor(#/(n+1))]-char[2]` -/
def P14199547233605483820.Spec : Prop :=
  ∀ n, P14199547233605483820.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P8088176501413031010

`A014684(1-char[2]+n)`
-/

namespace A179278.P8088176501413031010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A179278.P8088176501413031010

namespace A179278

/-- `A014684(1-char[2]+n)` -/
def P8088176501413031010.Spec : Prop :=
  ∀ n, P8088176501413031010.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P5353748763250418729

`A005171(n+1)+n-char[2]`
-/

namespace A179278.P5353748763250418729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A179278.P5353748763250418729

namespace A179278

/-- `A005171(n+1)+n-char[2]` -/
def P5353748763250418729.Spec : Prop :=
  ∀ n, P5353748763250418729.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P15250700119511853617

`A005451(A014684(n+1))`
-/

namespace A179278.P15250700119511853617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A014684 (n + 1)).toNat

end

end A179278.P15250700119511853617

namespace A179278

/-- `A005451(A014684(n+1))` -/
def P15250700119511853617.Spec : Prop :=
  ∀ n, P15250700119511853617.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P14101988236783768058

`A028310(A113523(n+1))`
-/

namespace A179278.P14101988236783768058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A113523 (n + 1)).toNat

end

end A179278.P14101988236783768058

namespace A179278

/-- `A028310(A113523(n+1))` -/
def P14101988236783768058.Spec : Prop :=
  ∀ n, P14101988236783768058.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P11016042667561783584

`A018252(∑[A005171(n+1)])`
-/

namespace A179278.P11016042667561783584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179278.P11016042667561783584

namespace A179278

/-- `A018252(∑[A005171(n+1)])` -/
def P11016042667561783584.Spec : Prop :=
  ∀ n, P11016042667561783584.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P9518187128443509977

`A018252(A065855(n+1)+1)`
-/

namespace A179278.P9518187128443509977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A065855 (n + 1) + 1).toNat

end

end A179278.P9518187128443509977

namespace A179278

/-- `A018252(A065855(n+1)+1)` -/
def P9518187128443509977.Spec : Prop :=
  ∀ n, P9518187128443509977.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P1011367129912542487

`A141468(A062298(n+1)+1)`
-/

namespace A179278.P1011367129912542487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A062298 (n + 1) + 1).toNat

end

end A179278.P1011367129912542487

namespace A179278

/-- `A141468(A062298(n+1)+1)` -/
def P1011367129912542487.Spec : Prop :=
  ∀ n, P1011367129912542487.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P4766734529705196869

`A005451(A005171(n+1)+n)`
-/

namespace A179278.P4766734529705196869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A005171 (n + 1) + (n : ℤ)).toNat

end

end A179278.P4766734529705196869

namespace A179278

/-- `A005451(A005171(n+1)+n)` -/
def P4766734529705196869.Spec : Prop :=
  ∀ n, P4766734529705196869.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P11590490613600988655

`A130716(n)+A113523(n+1)`
-/

namespace A179278.P11590490613600988655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n + A113523 (n + 1)

end

end A179278.P11590490613600988655

namespace A179278

/-- `A130716(n)+A113523(n+1)` -/
def P11590490613600988655.Spec : Prop :=
  ∀ n, P11590490613600988655.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P16861551445902210066

`A014684(n+1)-A185012(n)`
-/

namespace A179278.P16861551445902210066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A185012 n

end

end A179278.P16861551445902210066

namespace A179278

/-- `A014684(n+1)-A185012(n)` -/
def P16861551445902210066.Spec : Prop :=
  ∀ n, P16861551445902210066.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P14421230050843861981

`A113636(n+1)-A329684(n)`
-/

namespace A179278.P14421230050843861981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (n + 1) - A329684 n

end

end A179278.P14421230050843861981

namespace A179278

/-- `A113636(n+1)-A329684(n)` -/
def P14421230050843861981.Spec : Prop :=
  ∀ n, P14421230050843861981.a n = A179278 (n + 1)

end A179278

/-! ## A179278.P11215078070997701013

`A014684(n+1)/A329684(n)`
-/

namespace A179278.P11215078070997701013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) : ℚ) / (A329684 n : ℚ)

end

end A179278.P11215078070997701013

namespace A179278

/-- `A014684(n+1)/A329684(n)` -/
def P11215078070997701013.Spec : Prop :=
  ∀ n, P11215078070997701013.a n = (A179278 (n + 1) : ℚ)

end A179278

/-! ## A179278.P14530520503586366252

`gcd(A014684(n+1), A055672(n))`
-/

namespace A179278.P14530520503586366252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014684 (n + 1)) (A055672 n)

end

end A179278.P14530520503586366252

namespace A179278

/-- `gcd(A014684(n+1), A055672(n))` -/
def P14530520503586366252.Spec : Prop :=
  ∀ n, (P14530520503586366252.a n : ℤ) = A179278 (n + 1)

end A179278

/-!
# A179280: E.g.f. equals the real part of the series F(x) = 1 + x*F(x)^i where i=sqrt(-1).

The programs for A179280, there is no canonical definition to state claims against.
-/

/-! ## A179280.P15155751065873741076

`A080073(n)*A272084(A080042(n))`
-/

namespace A179280.P15155751065873741076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080073 n * A272084 (A080042 n).toNat

end

end A179280.P15155751065873741076

/-!
# A179283: The smallest prime number greater than 2^n / 3.

The programs for A179283, there is no canonical definition to state claims against.
-/

/-! ## A179283.P9832090522044844247

`A151800(floor(∑[2^n/3]))`
-/

namespace A179283.P9832090522044844247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A179283.P9832090522044844247

/-! ## A179283.P4818919481294391956

`p?[A151800(A000975(n))]`
-/

namespace A179283.P4818919481294391956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179283.P4818919481294391956

/-! ## A179283.P3381210532252044576

`p?[A151800(∑[A001045(n)])]`
-/

namespace A179283.P3381210532252044576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179283.P3381210532252044576

/-! ## A179283.P13453568294458563200

`p?[A151800(xor(1, A097072(n)))]`
-/

namespace A179283.P13453568294458563200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.xor 1 (A097072 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179283.P13453568294458563200

/-! ## A179283.P12933222939752087338

`A000027(A151800(floor(2^(n+1)/3)))`
-/

namespace A179283.P12933222939752087338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A151800 ⌊(2 ^ (n + 1) : ℚ) / 3⌋.toNat).toNat

end

end A179283.P12933222939752087338

/-!
# A179284: A178796(n) in binary system.

The programs for A179284, there is no canonical definition to state claims against.
-/

/-! ## A179284.P4458155102682826045

`A007088(A178796(n+1))`
-/

namespace A179284.P4458155102682826045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A178796 (n + 1)).toNat

end

end A179284.P4458155102682826045

/-! ## A179284.P2691742218149202423

`A007088(A068807(n+1))`
-/

namespace A179284.P2691742218149202423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A068807 (n + 1)).toNat

end

end A179284.P2691742218149202423

/-! ## A179284.P3553557314649318602

`A007088(p?[A028838(n+1)])`
-/

namespace A179284.P3553557314649318602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179284.P3553557314649318602

/-! ## A179284.P538896136066342843

`A007088(p?[A308163(n+1)])`
-/

namespace A179284.P538896136066342843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179284.P538896136066342843

/-! ## A179284.P1755925597419931166

`A185544(2*A068807(n+1))`
-/

namespace A179284.P1755925597419931166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A068807 (n + 1)).toNat

end

end A179284.P1755925597419931166

/-!
# A179285: Triangle T(n,k) read by rows, defined by: T(1,1)=1; n > 1 and k=1: T(n,1) = T(n-1,2) + T(n,2); k=2: T(n,2) = A000196(n-1); k > 2: T(n,k) = (Sum_{i=1..k-1} T(n-i,k-1)) - (Sum_{i=1..k-1} T(n-i,k)).

The programs for A179285, there is no canonical definition to state claims against.
-/

/-! ## A179285.P10432101329502151818

`A000009(A004736(n+1))-A124763(A278882(n))`
-/

namespace A179285.P10432101329502151818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A004736 (n + 1)).toNat - A124763 (A278882 n).toNat

end

end A179285.P10432101329502151818

/-! ## A179285.P9538667386766046805

`A026835(n+1)+A014061(A121295(n))`
-/

namespace A179285.P9538667386766046805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026835 (n + 1) + A014061 (A121295 (n + 10)).toNat

end

end A179285.P9538667386766046805

/-! ## A179285.P15820426592980575492

`A026835(n+1)-A025465(A023105(n))`
-/

namespace A179285.P15820426592980575492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026835 (n + 1) - A025465 (A023105 n).toNat

end

end A179285.P15820426592980575492

/-! ## A179285.P3980796609531056443

`A026835(n+1)-A055641(A022112(n))`
-/

namespace A179285.P3980796609531056443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026835 (n + 1) - A055641 (A022112 n).toNat

end

end A179285.P3980796609531056443

/-! ## A179285.P11186037832175564461

`A026835(n+1)-A010894(A155971(n))`
-/

namespace A179285.P11186037832175564461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026835 (n + 1) - A010894 ((A155971 n).toNat + 21)

end

end A179285.P11186037832175564461

/-!
# A179286: Triangle T(n,k) read by rows. T(n,k) = A179285(n,k) - A179285(n,k+1).

The programs for A179286, there is no canonical definition to state claims against.
-/

/-! ## A179286.P16008012867585421949

`A026821(n+1)+Δ[A025465(A023105(n))]`
-/

namespace A179286.P16008012867585421949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A023105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (n + 1) + (f1 (n + 1) - f1 n)

end

end A179286.P16008012867585421949

/-! ## A179286.P11580846942775141245

`A026821(n+1)+Δ[A055641(A022112(n))]`
-/

namespace A179286.P11580846942775141245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A022112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (n + 1) + (f1 (n + 1) - f1 n)

end

end A179286.P11580846942775141245

/-! ## A179286.P11234743765094242579

`A176048(A154966(n+2))`
-/

namespace A179286.P11234743765094242579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176048 (A154966 (n + 2)).toNat

end

end A179286.P11234743765094242579

/-! ## A179286.P4460778546832083654

`A324692(A344612(n)+A055140(n))`
-/

namespace A179286.P4460778546832083654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A344612 n + A055140 n).toNat

end

end A179286.P4460778546832083654

/-! ## A179286.P580426326131888523

`∑{digits}[A152151(A152151(n)), A105847(#)]`
-/

namespace A179286.P580426326131888523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152151 (A152151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A105847 x).sum

end

end A179286.P580426326131888523

/-!
# A179287: Matrix inverse of A179286.

The programs for A179287, there is no canonical definition to state claims against.
-/

/-! ## A179287.P12375314246345918226

`2-A104246(A113381(n))`
-/

namespace A179287.P12375314246345918226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A104246 (A113381 n).toNat

end

end A179287.P12375314246345918226

/-! ## A179287.P13689611552140319459

`A228100(A113106(n))-A025581(n)`
-/

namespace A179287.P13689611552140319459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (A113106 n).toNat - A025581 n

end

end A179287.P13689611552140319459

/-! ## A179287.P7497117712092208096

`A341279(n)-A122922(A135899(n))`
-/

namespace A179287.P7497117712092208096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 n - A122922 (A135899 n).toNat

end

end A179287.P7497117712092208096

/-! ## A179287.P17103477749391896719

`A329744(A283424(n))-A025581(n)`
-/

namespace A179287.P17103477749391896719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (A283424 n).toNat - A025581 n

end

end A179287.P17103477749391896719

/-! ## A179287.P2803237273318154624

`A005094(A022496(n+1))`
-/

namespace A179287.P2803237273318154624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022496 (n + 1)).toNat

end

end A179287.P2803237273318154624

/-!
# A179293: Primes of the form (10p)^2 + 1, where p is also prime.

The programs for A179293, there is no canonical definition to state claims against.
-/

/-! ## A179293.P3612066388165042099

`record[A256970(A001750(n+1))]`
-/

namespace A179293.P3612066388165042099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A001750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P3612066388165042099

/-! ## A179293.P12553355190444877659

`record[A125256(A142342(n+1))]`
-/

namespace A179293.P12553355190444877659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A142342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P12553355190444877659

/-! ## A179293.P8335575210832015674

`record[A125256(2*A001750(n+1))]`
-/

namespace A179293.P8335575210832015674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (2 * A001750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P8335575210832015674

/-! ## A179293.P9917389133912537512

`record[A256970(5*A000040(n+1))]`
-/

namespace A179293.P9917389133912537512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (5 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P9917389133912537512

/-! ## A179293.P17339313877791338285

`record[A125256(10*A000040(n+1))]`
-/

namespace A179293.P17339313877791338285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (10 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P17339313877791338285

/-! ## A179293.P5823676260232825512

`record[A125256(10*A060308(n+1))]`
-/

namespace A179293.P5823676260232825512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (10 * A060308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P5823676260232825512

/-! ## A179293.P14003926080950773446

`record[A125256(A008706(A100484(n+1)))]`
-/

namespace A179293.P14003926080950773446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A008706 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P14003926080950773446

/-! ## A179293.P14256109136348035627

`record[A256970(A008706(A000040(n+1)))]`
-/

namespace A179293.P14256109136348035627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179293.P14256109136348035627

/-!
# A179295: a(n) is the least prime number such that prime(n)+a(n)+1 is a prime or -1 if no such prime number exists.

The programs for A179295, there is no canonical definition to state claims against.
-/

/-! ## A179295.P10239307089479600570

`A020483(record[(n+1)*A010051(2*n+1)])`
-/

namespace A179295.P10239307089479600570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179295.P10239307089479600570

/-! ## A179295.P13049468741362135974

`A271353(A113935(n+1))`
-/

namespace A179295.P13049468741362135974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A113935 (n + 1)).toNat

end

end A179295.P13049468741362135974

/-! ## A179295.P777793163781676168

`A271353(A052147(n+1)+1)`
-/

namespace A179295.P777793163781676168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A052147 (n + 1) + 1).toNat

end

end A179295.P777793163781676168

/-! ## A179295.P10682578679759522285

`A271353(A000040(n+1)+3)`
-/

namespace A179295.P10682578679759522285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A000040 (n + 1) + 3).toNat

end

end A179295.P10682578679759522285

/-! ## A179295.P13769898314586187644

`A271353(abs(Δ[A022837(n)])+3)`
-/

namespace A179295.P13769898314586187644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (|f1 (n + 1) - f1 n| + 3).toNat

end

end A179295.P13769898314586187644

/-! ## A179295.P3874796801310206748

`A271353(A089241(n+1)/2+2)`
-/

namespace A179295.P3874796801310206748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A179295.P3874796801310206748

/-! ## A179295.P16647932963092429203

`A204894(A008578(n+2)+1)-(A008578(n+2)+1)`
-/

namespace A179295.P16647932963092429203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A008578 (n + 2) + 1).toNat - (A008578 (n + 2) + 1)

end

end A179295.P16647932963092429203

/-! ## A179295.P1411412197358883511

`A204895(A008864(n+1))`
-/

namespace A179295.P1411412197358883511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A008864 (n + 1)).toNat

end

end A179295.P1411412197358883511

/-! ## A179295.P14177284684566694770

`A204895(A028815(n+1))`
-/

namespace A179295.P14177284684566694770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A028815 (n + 1)).toNat

end

end A179295.P14177284684566694770

/-! ## A179295.P4587500701618347264

`A204895(A055670(n+1))`
-/

namespace A179295.P4587500701618347264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A055670 (n + 1)).toNat

end

end A179295.P4587500701618347264

/-! ## A179295.P11101565632796266866

`A204895(A299763(n+2))`
-/

namespace A179295.P11101565632796266866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A299763 (n + 2)).toNat

end

end A179295.P11101565632796266866

/-! ## A179295.P10956807268574495870

`A204895(A000040(n+1)+1)`
-/

namespace A179295.P10956807268574495870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A000040 (n + 1) + 1).toNat

end

end A179295.P10956807268574495870

/-! ## A179295.P14255729559935085419

`A204895(record[A014963(n+2)+1])`
-/

namespace A179295.P14255729559935085419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179295.P14255729559935085419

/-! ## A179295.P11862838904401420986

`A204895(A014692(n+1)+n+1)`
-/

namespace A179295.P11862838904401420986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A014692 (n + 1) + (n + 1 : ℤ)).toNat

end

end A179295.P11862838904401420986

/-!
# A179297: a(n) = n^2 - (n-1)^2 - (n-2)^2 - ... - 1^2.

The programs for A179297, the canonical program `A179297.P2434453373742828259` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179297 has offset 1).

The definition of A179297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179297.P2434453373742828259

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179297

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2434453373742828259.Spec : Prop :=
  ∀ n, P2434453373742828259.a n = A179297 (n + 1)

theorem P2434453373742828259.correct : P2434453373742828259.Spec := by
  intro n
  simp only [A179297, Nat.add_sub_cancel]

end A179297

/-! ## A179297.P594987090908039423

`∑[2-(1-n)²]`
-/

namespace A179297.P594987090908039423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179297.P594987090908039423

namespace A179297

/-- `∑[2-(1-n)²]` -/
def P594987090908039423.Spec : Prop :=
  ∀ n, P594987090908039423.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P2181608482253150353

`C(n+3, 3)-n*∑[n]`
-/

namespace A179297.P2181608482253150353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A179297.P2181608482253150353

namespace A179297

/-- `C(n+3, 3)-n*∑[n]` -/
def P2181608482253150353.Spec : Prop :=
  ∀ n, P2181608482253150353.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P11409853256371472910

`ogf((1-x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A179297.P11409853256371472910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -4, 6, -4, 1] n

end

end A179297.P11409853256371472910

namespace A179297

/-- `ogf((1-x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P11409853256371472910.Spec : Prop :=
  ∀ n, P11409853256371472910.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P10316886758797421458

`floor(∑[∑[a(n-1)-2]])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A179297.P10316886758797421458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179297.P10316886758797421458

namespace A179297

/-- `floor(∑[∑[a(n-1)-2]])` -/
def P10316886758797421458.Spec : Prop :=
  ∀ n, P10316886758797421458.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P6825597537431037332

`ceil(∑[∑[a(n-1)-2]])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A179297.P6825597537431037332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179297.P6825597537431037332

namespace A179297

/-- `ceil(∑[∑[a(n-1)-2]])` -/
def P6825597537431037332.Spec : Prop :=
  ∀ n, P6825597537431037332.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P8723277546714909649

`round(∑[∑[a(n-1)-2]])` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A179297.P8723277546714909649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179297.P8723277546714909649

namespace A179297

/-- `round(∑[∑[a(n-1)-2]])` -/
def P8723277546714909649.Spec : Prop :=
  ∀ n, P8723277546714909649.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P17020520826804756485

`-∑[lcm(n, n-1)-(n+1)]`
-/

namespace A179297.P17020520826804756485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179297.P17020520826804756485

namespace A179297

/-- `-∑[lcm(n, n-1)-(n+1)]` -/
def P17020520826804756485.Spec : Prop :=
  ∀ n, P17020520826804756485.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P16580769020319602254

`∑[∑[a(n-1)-4]]/2` with `a(0)=2, a(1)=2`
-/

namespace A179297.P16580769020319602254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A179297.P16580769020319602254

namespace A179297

/-- `∑[∑[a(n-1)-4]]/2` -/
def P16580769020319602254.Spec : Prop :=
  ∀ n, P16580769020319602254.a n = (A179297 (n + 1) : ℚ)

end A179297

/-! ## A179297.P18278816145130687176

`a(n-1)-(1-n)²+2` with `a(0)=1`
-/

namespace A179297.P18278816145130687176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - (n : ℤ)) ^ 2 + 2

end

end A179297.P18278816145130687176

namespace A179297

/-- `a(n-1)-(1-n)²+2` -/
def P18278816145130687176.Spec : Prop :=
  ∀ n, P18278816145130687176.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P9993790479736437773

`2-((1-n)²-a(n-1))` with `a(0)=1`
-/

namespace A179297.P9993790479736437773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((1 - (n : ℤ)) ^ 2 - a (n - 1))

end

end A179297.P9993790479736437773

namespace A179297

/-- `2-((1-n)²-a(n-1))` -/
def P9993790479736437773.Spec : Prop :=
  ∀ n, P9993790479736437773.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P2984497939748465149

`2*n+1-C(2*n, 3)/4`
-/

namespace A179297.P2984497939748465149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (Nat.choose (2 * n) 3 : ℚ) / 4

end

end A179297.P2984497939748465149

namespace A179297

/-- `2*n+1-C(2*n, 3)/4` -/
def P2984497939748465149.Spec : Prop :=
  ∀ n, P2984497939748465149.a n = (A179297 (n + 1) : ℚ)

end A179297

/-! ## A179297.P2096025301673581554

`a(n-1)+n*(2-n)+1` with `a(0)=1`
-/

namespace A179297.P2096025301673581554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) * (2 - (n : ℤ)) + 1)

end

end A179297.P2096025301673581554

namespace A179297

/-- `a(n-1)+n*(2-n)+1` -/
def P2096025301673581554.Spec : Prop :=
  ∀ n, P2096025301673581554.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P14103207234365761704

`∑[∑[a(n-1)-2]]+∑[n]` with `a(0)=1, a(1)=0`
-/

namespace A179297.P14103207234365761704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A179297.P14103207234365761704

namespace A179297

/-- `∑[∑[a(n-1)-2]]+∑[n]` -/
def P14103207234365761704.Spec : Prop :=
  ∀ n, P14103207234365761704.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P387972131909051512

`∑[n+1]-∑[lcm(2, n*(n-1))]`
-/

namespace A179297.P387972131909051512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A179297.P387972131909051512

namespace A179297

/-- `∑[n+1]-∑[lcm(2, n*(n-1))]` -/
def P387972131909051512.Spec : Prop :=
  ∀ n, P387972131909051512.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P6227672510562026686

`1-floor(n*(n-2)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A179297.P6227672510562026686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) * ((n : ℤ) - 2) - a (n - 1))

end

end A179297.P6227672510562026686

namespace A179297

/-- `1-floor(n*(n-2)-a(n-1))` -/
def P6227672510562026686.Spec : Prop :=
  ∀ n, P6227672510562026686.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P996041843155074807

`n+1-∑[(n-2)*gcd(n, 2*n)]`
-/

namespace A179297.P996041843155074807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.gcd n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179297.P996041843155074807

namespace A179297

/-- `n+1-∑[(n-2)*gcd(n, 2*n)]` -/
def P996041843155074807.Spec : Prop :=
  ∀ n, P996041843155074807.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P11692083906113924758

`1-(n*(n-1)-a(n-1)-n)` with `a(0)=1`
-/

namespace A179297.P11692083906113924758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) * ((n : ℤ) - 1) - a (n - 1) - (n : ℤ))

end

end A179297.P11692083906113924758

namespace A179297

/-- `1-(n*(n-1)-a(n-1)-n)` -/
def P11692083906113924758.Spec : Prop :=
  ∀ n, P11692083906113924758.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P4046944122490390549

`∑[n-1-∑[n-3]]-C(n+3, 3)`
-/

namespace A179297.P4046944122490390549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 3) 3 : ℤ)

end

end A179297.P4046944122490390549

namespace A179297

/-- `∑[n-1-∑[n-3]]-C(n+3, 3)` -/
def P4046944122490390549.Spec : Prop :=
  ∀ n, P4046944122490390549.a n = A179297 (n + 1)

end A179297

/-! ## A179297.P3449915227326102343

`∑[and(2*n+1, 2*n)]-∑[(n+1)*(n-1)]`
-/

namespace A179297.P3449915227326102343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A179297.P3449915227326102343

namespace A179297

/-- `∑[and(2*n+1, 2*n)]-∑[(n+1)*(n-1)]` -/
def P3449915227326102343.Spec : Prop :=
  ∀ n, P3449915227326102343.a n = A179297 (n + 1)

end A179297

/-!
# A179298: a(n)=n^3-(n-1)^3-(n-2)^3-...-1.

The programs for A179298, the canonical program `A179298.P11367544733124354128` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179298 has offset 1).

The definition of A179298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179298.P11367544733124354128

`(n+1)^3-∑[n]²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179298

/-- `(n+1)^3-∑[n]²` -/
def P11367544733124354128.Spec : Prop :=
  ∀ n, P11367544733124354128.a n = A179298 (n + 1)

theorem P11367544733124354128.correct : P11367544733124354128.Spec := by
  intro n
  simp only [A179298, Nat.add_sub_cancel]

end A179298

/-! ## A179298.P91296764111030286

`∑[∑[∑[a(n-1)-6]]]` with `a(0)=1, a(1)=4, a(2)=0`
-/

namespace A179298.P91296764111030286
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 0] fun n f3 =>
  f3 (n - 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P91296764111030286

namespace A179298

/-- `∑[∑[∑[a(n-1)-6]]]` -/
def P91296764111030286.Spec : Prop :=
  ∀ n, P91296764111030286.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P11793568511556005073

`∑[(2*n+1)*(n+1)-lcm(n-1, n²)]`
-/

namespace A179298.P11793568511556005073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P11793568511556005073

namespace A179298

/-- `∑[(2*n+1)*(n+1)-lcm(n-1, n²)]` -/
def P11793568511556005073.Spec : Prop :=
  ∀ n, P11793568511556005073.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P7599855795504903451

`∑[lcm(2*n+1, 2*n)-(n-1)*∑[2*n+1]]`
-/

namespace A179298.P7599855795504903451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 * n) : ℤ) - ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P7599855795504903451

namespace A179298

/-- `∑[lcm(2*n+1, 2*n)-(n-1)*∑[2*n+1]]` -/
def P7599855795504903451.Spec : Prop :=
  ∀ n, P7599855795504903451.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P8017133774642736635

`∑[A003215(n)-n^3]`
-/

namespace A179298.P8017133774642736635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P8017133774642736635

namespace A179298

/-- `∑[A003215(n)-n^3]` -/
def P8017133774642736635.Spec : Prop :=
  ∀ n, P8017133774642736635.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P17951050201723950122

`∑[Δ[n^3]-A000578(n)]`
-/

namespace A179298.P17951050201723950122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P17951050201723950122

namespace A179298

/-- `∑[Δ[n^3]-A000578(n)]` -/
def P17951050201723950122.Spec : Prop :=
  ∀ n, P17951050201723950122.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P2262580584972967213

`∑[(n+1)^3-A033431(n)]`
-/

namespace A179298.P2262580584972967213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A033431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P2262580584972967213

namespace A179298

/-- `∑[(n+1)^3-A033431(n)]` -/
def P2262580584972967213.Spec : Prop :=
  ∀ n, P2262580584972967213.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P2299006212108920618

`∑[(2*n+1)²-A027444(n)]`
-/

namespace A179298.P2299006212108920618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - A027444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P2299006212108920618

namespace A179298

/-- `∑[(2*n+1)²-A027444(n)]` -/
def P2299006212108920618.Spec : Prop :=
  ∀ n, P2299006212108920618.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P4892132329955409112

`-∑[(n-4)*∑[A004277(n)]+3]`
-/

namespace A179298.P4892132329955409112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * (∑ j ∈ Finset.range (n + 1), f2 j) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179298.P4892132329955409112

namespace A179298

/-- `-∑[(n-4)*∑[A004277(n)]+3]` -/
def P4892132329955409112.Spec : Prop :=
  ∀ n, P4892132329955409112.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P15446096241498545443

`∑[A003154(n+1)-(n+1)^3+1]`
-/

namespace A179298.P15446096241498545443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - ((n + 1) ^ 3 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P15446096241498545443

namespace A179298

/-- `∑[A003154(n+1)-(n+1)^3+1]` -/
def P15446096241498545443.Spec : Prop :=
  ∀ n, P15446096241498545443.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P16177037855834890426

`∑[A001504(n)-A090197(n)]`
-/

namespace A179298.P16177037855834890426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n - A090197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P16177037855834890426

namespace A179298

/-- `∑[A001504(n)-A090197(n)]` -/
def P16177037855834890426.Spec : Prop :=
  ∀ n, P16177037855834890426.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P4531747047792683760

`∑[A135705(n)-A087908(n+1)]`
-/

namespace A179298.P4531747047792683760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n - A087908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P4531747047792683760

namespace A179298

/-- `∑[A135705(n)-A087908(n+1)]` -/
def P4531747047792683760.Spec : Prop :=
  ∀ n, P4531747047792683760.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P3801265903554817647

`∑[A051890(n+1)-A152618(n)]`
-/

namespace A179298.P3801265903554817647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (n + 1) - A152618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179298.P3801265903554817647

namespace A179298

/-- `∑[A051890(n+1)-A152618(n)]` -/
def P3801265903554817647.Spec : Prop :=
  ∀ n, P3801265903554817647.a n = A179298 (n + 1)

end A179298

/-! ## A179298.P15060098589875515079

`(Δ[A163102(n)]-A163102(n))/2`
-/

namespace A179298.P15060098589875515079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A163102 n : ℚ) / 2

end

end A179298.P15060098589875515079

namespace A179298

/-- `(Δ[A163102(n)]-A163102(n))/2` -/
def P15060098589875515079.Spec : Prop :=
  ∀ n, P15060098589875515079.a n = (A179298 (n + 1) : ℚ)

end A179298

/-! ## A179298.P12125978573983236613

`(A184632(2*(n+1))-A163102(n+1))/2`
-/

namespace A179298.P12125978573983236613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184632 (2 * (n + 1)) - A163102 (n + 1) : ℚ) / 2

end

end A179298.P12125978573983236613

namespace A179298

/-- `(A184632(2*(n+1))-A163102(n+1))/2` -/
def P12125978573983236613.Spec : Prop :=
  ∀ n, P12125978573983236613.a n = (A179298 (n + 1) : ℚ)

end A179298

