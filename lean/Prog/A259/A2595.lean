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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A259503: Numbers k such that k^2+1 is the product of a Fibonacci number and a Lucas number.

The programs for A259503, there is no canonical definition to state claims against.
-/

/-! ## A259503.P14489259095567768318

`2^floor(2^n/9)+n-1`
-/

namespace A259503.P14489259095567768318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(2 ^ n : ℚ) / 9⌋ : ℤ) + ((n : ℤ) - 1 : ℚ)

end

end A259503.P14489259095567768318

/-! ## A259503.P9047073825416180428

`A084376(a(n-1))` with `a(0)=0`
-/

namespace A259503.P9047073825416180428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084376 (a (n - 1)).toNat

end

end A259503.P9047073825416180428

/-! ## A259503.P9134638266896701066

`A055804(a(n-1)+6)` with `a(0)=0`
-/

namespace A259503.P9134638266896701066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A055804 (a (n - 1) + 6).toNat

end

end A259503.P9134638266896701066

/-!
# A259504: Numbers k such that k and k+1 are the product of exactly three (not necessarily distinct) primes.

The programs for A259504, the canonical program `A259504.P9067003658839015885` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259504 has offset 1).

The definition of A259504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259504.P645734690873246284

`filter[A114436(n+1), A358753(#)]`
-/

namespace A259504.P645734690873246284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A259504.P645734690873246284

namespace A259504

/-- `filter[A114436(n+1), A358753(#)]` -/
def P645734690873246284.Spec : Prop :=
  ∀ n, P645734690873246284.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P9067003658839015885

`filter[A114436(n+1), A373975(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A259504

/-- `filter[A114436(n+1), A373975(#)]` -/
def P9067003658839015885.Spec : Prop :=
  ∀ n, P9067003658839015885.a n = A259504 (n + 1)

theorem P9067003658839015885.correct : P9067003658839015885.Spec := by
  intro n
  simp only [A259504, Nat.add_sub_cancel]

end A259504

/-! ## A259504.P6834946487152179738

`∩[A045920(n+1), A114436(n+1)]`
-/

namespace A259504.P6834946487152179738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P6834946487152179738

namespace A259504

/-- `∩[A045920(n+1), A114436(n+1)]` -/
def P6834946487152179738.Spec : Prop :=
  ∀ n, (P6834946487152179738.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P3101381735209191898

`A014612(eq[1, A114403(n+1)]+1)`
-/

namespace A259504.P3101381735209191898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A259504.P3101381735209191898

namespace A259504

/-- `A014612(eq[1, A114403(n+1)]+1)` -/
def P3101381735209191898.Spec : Prop :=
  ∀ n, P3101381735209191898.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P6015519246112387534

`∩[A014612(n+1), A045920(n+1)]`
-/

namespace A259504.P6015519246112387534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P6015519246112387534

namespace A259504

/-- `∩[A014612(n+1), A045920(n+1)]` -/
def P6015519246112387534.Spec : Prop :=
  ∀ n, (P6015519246112387534.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P10586961470600976094

`∩[A014612(n+1), A114436(n+1)]`
-/

namespace A259504.P10586961470600976094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P10586961470600976094

namespace A259504

/-- `∩[A014612(n+1), A114436(n+1)]` -/
def P10586961470600976094.Spec : Prop :=
  ∀ n, (P10586961470600976094.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P8746466418988001610

`A184752(eq[1, A114403(n+1)]+1)+1`
-/

namespace A259504.P8746466418988001610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A259504.P8746466418988001610

namespace A259504

/-- `A184752(eq[1, A114403(n+1)]+1)+1` -/
def P8746466418988001610.Spec : Prop :=
  ∀ n, P8746466418988001610.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P16351067972439126935

`∩[A014612(n+2)-1, A014612(n+2)]`
-/

namespace A259504.P16351067972439126935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P16351067972439126935

namespace A259504

/-- `∩[A014612(n+2)-1, A014612(n+2)]` -/
def P16351067972439126935.Spec : Prop :=
  ∀ n, (P16351067972439126935.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P6172193417396777180

`A014612(eq[A184752(n+1)+1, A014612(n+1)]+1)`
-/

namespace A259504.P6172193417396777180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184752 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A259504.P6172193417396777180

namespace A259504

/-- `A014612(eq[A184752(n+1)+1, A014612(n+1)]+1)` -/
def P6172193417396777180.Spec : Prop :=
  ∀ n, P6172193417396777180.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P3583511803986113582

`A014612(eq[1, A014612(n+2)-A014612(n+1)]+1)`
-/

namespace A259504.P3583511803986113582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 2) - A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A259504.P3583511803986113582

namespace A259504

/-- `A014612(eq[1, A014612(n+2)-A014612(n+1)]+1)` -/
def P3583511803986113582.Spec : Prop :=
  ∀ n, P3583511803986113582.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P13767720129938238371

`A014612(eq[1, A014612(n+2)%A014612(n+1)]+1)`
-/

namespace A259504.P13767720129938238371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (n + 2)) (A014612 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A259504.P13767720129938238371

namespace A259504

/-- `A014612(eq[1, A014612(n+2)%A014612(n+1)]+1)` -/
def P13767720129938238371.Spec : Prop :=
  ∀ n, P13767720129938238371.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P16903477224693030982

`∩[A114436(n+1), A358763(n+1)]`
-/

namespace A259504.P16903477224693030982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P16903477224693030982

namespace A259504

/-- `∩[A114436(n+1), A358763(n+1)]` -/
def P16903477224693030982.Spec : Prop :=
  ∀ n, (P16903477224693030982.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P2474939219791029875

`∩[A114436(n+1), A145784(n+1)]`
-/

namespace A259504.P2474939219791029875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P2474939219791029875

namespace A259504

/-- `∩[A114436(n+1), A145784(n+1)]` -/
def P2474939219791029875.Spec : Prop :=
  ∀ n, (P2474939219791029875.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P5603087414936742607

`∩[A114436(n+1), A357077(n+1)]`
-/

namespace A259504.P5603087414936742607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259504.P5603087414936742607

namespace A259504

/-- `∩[A114436(n+1), A357077(n+1)]` -/
def P5603087414936742607.Spec : Prop :=
  ∀ n, (P5603087414936742607.a n : ℤ) = A259504 (n + 1)

end A259504

/-! ## A259504.P18184413491434217594

`filter[A045920(n+1), A101605(#)]`
-/

namespace A259504.P18184413491434217594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A259504.P18184413491434217594

namespace A259504

/-- `filter[A045920(n+1), A101605(#)]` -/
def P18184413491434217594.Spec : Prop :=
  ∀ n, P18184413491434217594.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P6015659974695304626

`filter[A114436(n+1), A101605(#)]`
-/

namespace A259504.P6015659974695304626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A259504.P6015659974695304626

namespace A259504

/-- `filter[A114436(n+1), A101605(#)]` -/
def P6015659974695304626.Spec : Prop :=
  ∀ n, P6015659974695304626.a n = A259504 (n + 1)

end A259504

/-! ## A259504.P7453208477928917319

`eq[2, A101605(n+1)+A101605(A257143(n))]`
-/

namespace A259504.P7453208477928917319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) + A101605 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259504.P7453208477928917319

namespace A259504

/-- `eq[2, A101605(n+1)+A101605(A257143(n))]` -/
def P7453208477928917319.Spec : Prop :=
  ∀ n, (P7453208477928917319.a n : ℤ) = A259504 (n + 1)

end A259504

/-!
# A259507: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259507, there is no canonical definition to state claims against.
-/

/-! ## A259507.P8809854899868403794

`A259515(∑[4*n]+1)`
-/

namespace A259507.P8809854899868403794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259507.P8809854899868403794

/-! ## A259507.P13882443945298913349

`record[A003982(n)*A259515(n+1)]`
-/

namespace A259507.P13882443945298913349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259507.P13882443945298913349

/-! ## A259507.P2462495795593308966

`record[gcd(A114327(n), A259515(n+1))]`
-/

namespace A259507.P2462495795593308966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A259515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259507.P2462495795593308966

/-! ## A259507.P8441104596792730432

`lcm(A033999(n), A259515(A001844(n)))`
-/

namespace A259507.P8441104596792730432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259515 (A001844 n).toNat)

end

end A259507.P8441104596792730432

/-! ## A259507.P5968414735791601136

`A259515(A001844(n))%A259516(n+1)`
-/

namespace A259507.P5968414735791601136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259515 (A001844 n).toNat) (A259516 (n + 1))

end

end A259507.P5968414735791601136

/-!
# A259508: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259508, the canonical program `A259508.P4171524389760513125` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259508 has offset 1).

The definition of A259508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259508.P4171524389760513125

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=11, a(1)=31, a(2)=87`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259508

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P4171524389760513125.Spec : Prop :=
  ∀ n, P4171524389760513125.a n = A259508 (n + 1)

theorem P4171524389760513125.correct : P4171524389760513125.Spec := by
  intro n
  simp only [A259508, Nat.add_sub_cancel]

end A259508

/-! ## A259508.P12423047907467519484

`A251319(n+1)+A101197(n)`
-/

namespace A259508.P12423047907467519484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251319 (n + 1) + A101197 n

end

end A259508.P12423047907467519484

namespace A259508

/-- `A251319(n+1)+A101197(n)` -/
def P12423047907467519484.Spec : Prop :=
  ∀ n, P12423047907467519484.a n = A259508 (n + 1)

end A259508

/-! ## A259508.P9168807815709356058

`A054854(n+3)-Δ[A054854(n)]`
-/

namespace A259508.P9168807815709356058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 (n + 3) - (f1 (n + 1) - f1 n)

end

end A259508.P9168807815709356058

namespace A259508

/-- `A054854(n+3)-Δ[A054854(n)]` -/
def P9168807815709356058.Spec : Prop :=
  ∀ n, P9168807815709356058.a n = A259508 (n + 1)

end A259508

/-! ## A259508.P3290016688792672017

`A230893(n+4)+Δ[A228501(n+1)]`
-/

namespace A259508.P3290016688792672017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 4) + (f1 (n + 1) - f1 n)

end

end A259508.P3290016688792672017

namespace A259508

/-- `A230893(n+4)+Δ[A228501(n+1)]` -/
def P3290016688792672017.Spec : Prop :=
  ∀ n, P3290016688792672017.a n = A259508 (n + 1)

end A259508

/-! ## A259508.P13281471756749738733

`A054854(n+3)+A054854(n)-A054854(n+1)`
-/

namespace A259508.P13281471756749738733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 (n + 3) + (A054854 n - A054854 (n + 1))

end

end A259508.P13281471756749738733

namespace A259508

/-- `A054854(n+3)+A054854(n)-A054854(n+1)` -/
def P13281471756749738733.Spec : Prop :=
  ∀ n, P13281471756749738733.a n = A259508 (n + 1)

end A259508

/-! ## A259508.P2069768039526182401

`Δ[ogf((6+5x-4x^2)/(1-2x-3x^2+2x^3))]`
-/

namespace A259508.P2069768039526182401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 5, -4] [1, -2, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259508.P2069768039526182401

namespace A259508

/-- `Δ[ogf((6+5x-4x^2)/(1-2x-3x^2+2x^3))]` -/
def P2069768039526182401.Spec : Prop :=
  ∀ n, P2069768039526182401.a n = A259508 (n + 1)

end A259508

/-!
# A259509: Number of (n+1) X (2+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259509, there is no canonical definition to state claims against.
-/

/-! ## A259509.P1629673342549972979

`A259515(∑[n+1]+2)`
-/

namespace A259509.P1629673342549972979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259509.P1629673342549972979

/-! ## A259509.P16370569019112745108

`or(1, A259515(A133263(n+1)))`
-/

namespace A259509.P16370569019112745108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259515 (A133263 (n + 1)).toNat)

end

end A259509.P16370569019112745108

/-! ## A259509.P2838720960612446425

`A259515(A133263(n+1))+val(A000009(n), 36)`
-/

namespace A259509.P2838720960612446425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A133263 (n + 1)).toNat + (SequenceMachineLib.valuation (A000009 n).toNat 36 : ℤ)

end

end A259509.P2838720960612446425

/-! ## A259509.P5757114875460243749

`A259515(A133263(n+1))+n*A000038(n)`
-/

namespace A259509.P5757114875460243749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A133263 (n + 1)).toNat + (n : ℤ) * A000038 n

end

end A259509.P5757114875460243749

/-! ## A259509.P7158032749662995220

`A259515(A133263(n+1))+val(A014963(n+2), 9)`
-/

namespace A259509.P7158032749662995220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A133263 (n + 1)).toNat + (SequenceMachineLib.valuation (A014963 (n + 2)).toNat 9 : ℤ)

end

end A259509.P7158032749662995220

/-!
# A259510: Number of (n+1)X(3+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259510, there is no canonical definition to state claims against.
-/

/-! ## A259510.P11067725490364294540

`A259515(∑[n+2]+4)`
-/

namespace A259510.P11067725490364294540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259510.P11067725490364294540

/-! ## A259510.P14251178421541473843

`A259515(A167614(n+1))+A025439(n)`
-/

namespace A259510.P14251178421541473843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A167614 (n + 1)).toNat + A025439 n

end

end A259510.P14251178421541473843

/-! ## A259510.P2314179895942045523

`A259515(A167614(n+1))+A025443(n)`
-/

namespace A259510.P2314179895942045523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A167614 (n + 1)).toNat + A025443 n

end

end A259510.P2314179895942045523

/-! ## A259510.P4663322308014795614

`A259515(A167614(n+1))+A178798(n)`
-/

namespace A259510.P4663322308014795614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A167614 (n + 1)).toNat + A178798 n

end

end A259510.P4663322308014795614

/-! ## A259510.P2934869559559991945

`A259515(A167614(n+1))+A185284(n)`
-/

namespace A259510.P2934869559559991945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A167614 (n + 1)).toNat + A185284 n

end

end A259510.P2934869559559991945

/-!
# A259511: Number of (n+1)X(4+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259511, there is no canonical definition to state claims against.
-/

/-! ## A259511.P11950945201813856210

`A259515(A374004(n+1))`
-/

namespace A259511.P11950945201813856210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A374004 (n + 1)).toNat

end

end A259511.P11950945201813856210

/-! ## A259511.P1264797735052580139

`A259515(A141214(n)+7)`
-/

namespace A259511.P1264797735052580139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A141214 n + 7).toNat

end

end A259511.P1264797735052580139

/-! ## A259511.P2250989401701043468

`A259515(A052905(n)+9)`
-/

namespace A259511.P2250989401701043468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A052905 n + 9).toNat

end

end A259511.P2250989401701043468

/-! ## A259511.P12407211766189524645

`A259515(A055999(n)+10)`
-/

namespace A259511.P12407211766189524645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A055999 n + 10).toNat

end

end A259511.P12407211766189524645

/-! ## A259511.P12762639995422388961

`A259515(A167614(n+2)+1)`
-/

namespace A259511.P12762639995422388961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A167614 (n + 2) + 1).toNat

end

end A259511.P12762639995422388961

/-!
# A259512: Number of (n+1)X(5+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259512, there is no canonical definition to state claims against.
-/

/-! ## A259512.P10388048775136154672

`A259515(A374005(n+1))`
-/

namespace A259512.P10388048775136154672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A374005 (n + 1)).toNat

end

end A259512.P10388048775136154672

/-! ## A259512.P10279581440500479210

`A259515(A167499(n+3))`
-/

namespace A259512.P10279581440500479210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A167499 (n + 3)).toNat

end

end A259512.P10279581440500479210

/-! ## A259512.P13328261292851614334

`A259515(Δ[A264443(n)])`
-/

namespace A259512.P13328261292851614334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (f1 (n + 1) - f1 n).toNat

end

end A259512.P13328261292851614334

/-! ## A259512.P4113105539309834140

`A259515(A046691(n+3))`
-/

namespace A259512.P4113105539309834140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A046691 (n + 3)).toNat

end

end A259512.P4113105539309834140

/-! ## A259512.P16287600947424426710

`A259515(eq[4, A193592(n)])`
-/

namespace A259512.P16287600947424426710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259512.P16287600947424426710

/-!
# A259513: Number of (n+1)X(6+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259513, there is no canonical definition to state claims against.
-/

/-! ## A259513.P8090163950896442568

`A259515(A374007(n+1))`
-/

namespace A259513.P8090163950896442568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A374007 (n + 1)).toNat

end

end A259513.P8090163950896442568

/-! ## A259513.P9739632193266520545

`A259515(eq[7, A131818(n+1)])`
-/

namespace A259513.P9739632193266520545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259513.P9739632193266520545

/-! ## A259513.P1633640665206978690

`A259515(A052905(n+3))`
-/

namespace A259513.P1633640665206978690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A052905 (n + 3)).toNat

end

end A259513.P1633640665206978690

/-! ## A259513.P8488011752897272417

`A259515(A056119(n)+16)`
-/

namespace A259513.P8488011752897272417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A056119 n + 16).toNat

end

end A259513.P8488011752897272417

/-! ## A259513.P4890021191747979

`A259515(eq[3, A219347(n)])`
-/

namespace A259513.P4890021191747979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259513.P4890021191747979

/-!
# A259514: Number of (n+1) X (7+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259514, there is no canonical definition to state claims against.
-/

/-! ## A259514.P9454980209543800113

`A259515(A374008(n+1))`
-/

namespace A259514.P9454980209543800113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A374008 (n + 1)).toNat

end

end A259514.P9454980209543800113

/-! ## A259514.P7663416381172995342

`A259515(eq[11, A066657(n)])`
-/

namespace A259514.P7663416381172995342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259514.P7663416381172995342

/-! ## A259514.P12232684071339184603

`A259515(eq[8, A131818(n+1)])`
-/

namespace A259514.P12232684071339184603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259514.P12232684071339184603

/-! ## A259514.P2192081780088230161

`A259515(A055999(n+4))`
-/

namespace A259514.P2192081780088230161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (A055999 (n + 4)).toNat

end

end A259514.P2192081780088230161

/-! ## A259514.P2398719585968495467

`A259515(eq[4, A219347(n)])`
-/

namespace A259514.P2398719585968495467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259514.P2398719585968495467

/-!
# A259515: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0101 0111.

The programs for A259515, there is no canonical definition to state claims against.
-/

/-! ## A259515.P3952034976689871999

`A183845(n+1)-A056594((n+1)^(n+1)*cosh(log(n+1)))`
-/

namespace A259515.P3952034976689871999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (n + 1) - A056594 (SequenceMachineLib.roundAway (((n + 1) ^ (n + 1) : ℝ) * Real.cosh (Real.log (n + 1 : ℝ)))).toNat

end

end A259515.P3952034976689871999

/-!
# A259516: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259516, there is no canonical definition to state claims against.
-/

/-! ## A259516.P14737161586972646144

`2*A184188(n+1)`
-/

namespace A259516.P14737161586972646144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184188 (n + 1)

end

end A259516.P14737161586972646144

/-! ## A259516.P8140561866330675983

`A259524(∑[4*n]+1)`
-/

namespace A259516.P8140561866330675983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259516.P8140561866330675983

/-! ## A259516.P5295980938014825384

`2*(A209545(n+1)-1)`
-/

namespace A259516.P5295980938014825384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209545 (n + 1) - 1)

end

end A259516.P5295980938014825384

/-! ## A259516.P11941475072281353148

`2*A184197(A001844(n))`
-/

namespace A259516.P11941475072281353148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184197 (A001844 n).toNat

end

end A259516.P11941475072281353148

/-! ## A259516.P4722215810157078286

`record[gcd(2*A184197(n+1), A003987(n))]`
-/

namespace A259516.P4722215810157078286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A184197 (n + 1)) (A003987 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259516.P4722215810157078286

/-!
# A259517: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259517, the canonical program `A259517.P6750808120551980904` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259517 has offset 1).

The definition of A259517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259517.P6606415970289910990

`Δ[ogf((6-6x-4x^2)/(1-4x+2x^2+2x^3))]`
-/

namespace A259517.P6606415970289910990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -6, -4] [1, -4, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259517.P6606415970289910990

namespace A259517

/-- `Δ[ogf((6-6x-4x^2)/(1-4x+2x^2+2x^3))]` -/
def P6606415970289910990.Spec : Prop :=
  ∀ n, P6606415970289910990.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P6750808120551980904

`4*a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=12, a(1)=38, a(2)=120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259517

/-- `4*a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P6750808120551980904.Spec : Prop :=
  ∀ n, P6750808120551980904.a n = A259517 (n + 1)

theorem P6750808120551980904.correct : P6750808120551980904.Spec := by
  intro n
  simp only [A259517, Nat.add_sub_cancel]

end A259517

/-! ## A259517.P13611629483412087240

`2*A184189(n+1)`
-/

namespace A259517.P13611629483412087240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184189 (n + 1)

end

end A259517.P13611629483412087240

namespace A259517

/-- `2*A184189(n+1)` -/
def P13611629483412087240.Spec : Prop :=
  ∀ n, P13611629483412087240.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P13834967615361292868

`2*(A209546(n+1)-1)`
-/

namespace A259517.P13834967615361292868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209546 (n + 1) - 1)

end

end A259517.P13834967615361292868

namespace A259517

/-- `2*(A209546(n+1)-1)` -/
def P13834967615361292868.Spec : Prop :=
  ∀ n, P13834967615361292868.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P6198458366510517158

`A184189(A000027(n+1))+A184189(n+1)`
-/

namespace A259517.P6198458366510517158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (A000027 (n + 1)).toNat + A184189 (n + 1)

end

end A259517.P6198458366510517158

namespace A259517

/-- `A184189(A000027(n+1))+A184189(n+1)` -/
def P6198458366510517158.Spec : Prop :=
  ∀ n, P6198458366510517158.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P1584355979852817921

`A184189(A028310(n+1))+A184189(n+1)`
-/

namespace A259517.P1584355979852817921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (A028310 (n + 1)).toNat + A184189 (n + 1)

end

end A259517.P1584355979852817921

namespace A259517

/-- `A184189(A028310(n+1))+A184189(n+1)` -/
def P1584355979852817921.Spec : Prop :=
  ∀ n, P1584355979852817921.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P2422900780400977784

`A184189(A020725(n+1)-1)+A184189(n+1)`
-/

namespace A259517.P2422900780400977784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (A020725 (n + 1) - 1).toNat + A184189 (n + 1)

end

end A259517.P2422900780400977784

namespace A259517

/-- `A184189(A020725(n+1)-1)+A184189(n+1)` -/
def P2422900780400977784.Spec : Prop :=
  ∀ n, P2422900780400977784.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P11577652992897787291

`2*(A316441(A063908(n+1))+A209546(n+1))`
-/

namespace A259517.P11577652992897787291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A316441 (A063908 (n + 1)).toNat + A209546 (n + 1))

end

end A259517.P11577652992897787291

namespace A259517

/-- `2*(A316441(A063908(n+1))+A209546(n+1))` -/
def P11577652992897787291.Spec : Prop :=
  ∀ n, P11577652992897787291.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P9737326095430792042

`A184189(n+1)+A184189((n+1)%A000040(n+1))`
-/

namespace A259517.P9737326095430792042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (n + 1) + A184189 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A259517.P9737326095430792042

namespace A259517

/-- `A184189(n+1)+A184189((n+1)%A000040(n+1))` -/
def P9737326095430792042.Spec : Prop :=
  ∀ n, P9737326095430792042.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P15284193819822746251

`Δ[Δ[A302146(n+3)]]`
-/

namespace A259517.P15284193819822746251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302146 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259517.P15284193819822746251

namespace A259517

/-- `Δ[Δ[A302146(n+3)]]` -/
def P15284193819822746251.Spec : Prop :=
  ∀ n, P15284193819822746251.a n = A259517 (n + 1)

end A259517

/-! ## A259517.P5063074851754567364

`A184189(n+1)+record[A184189(A002260(n+1))]`
-/

namespace A259517.P5063074851754567364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259517.P5063074851754567364

namespace A259517

/-- `A184189(n+1)+record[A184189(A002260(n+1))]` -/
def P5063074851754567364.Spec : Prop :=
  ∀ n, P5063074851754567364.a n = A259517 (n + 1)

end A259517

/-!
# A259518: Number of (n+1) X (2+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259518, there is no canonical definition to state claims against.
-/

/-! ## A259518.P12199280712310902399

`2*A184190(n+1)`
-/

namespace A259518.P12199280712310902399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184190 (n + 1)

end

end A259518.P12199280712310902399

/-! ## A259518.P14887793794991226189

`2*(A209547(n+1)-1)`
-/

namespace A259518.P14887793794991226189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209547 (n + 1) - 1)

end

end A259518.P14887793794991226189

/-! ## A259518.P15476097940673805460

`record[2*A184190(A109785(n))]`
-/

namespace A259518.P15476097940673805460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184190 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259518.P15476097940673805460

/-! ## A259518.P5879203903486128361

`A184190(n+1)+A209547(n+1)-1`
-/

namespace A259518.P5879203903486128361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184190 (n + 1) + (A209547 (n + 1) - 1)

end

end A259518.P5879203903486128361

/-! ## A259518.P9908807306998291437

`A184190(n+1)+A184190(-xor(n, -1))`
-/

namespace A259518.P9908807306998291437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184190 (n + 1) + A184190 (-Int.xor (n : ℤ) (-1)).toNat

end

end A259518.P9908807306998291437

/-! ## A259518.P9422026928235145201

`A184190(n+1)+record[A184190(A109785(n))]`
-/

namespace A259518.P9422026928235145201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184190 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184190 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259518.P9422026928235145201

/-! ## A259518.P3988447354317055036

`A184190(A000027(n+1))+A184190(n+1)`
-/

namespace A259518.P3988447354317055036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184190 (A000027 (n + 1)).toNat + A184190 (n + 1)

end

end A259518.P3988447354317055036

/-! ## A259518.P11206336551989355716

`2*(A289741(A045798(n+1))+A209547(n+1))`
-/

namespace A259518.P11206336551989355716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045798 (n + 1)).toNat + A209547 (n + 1))

end

end A259518.P11206336551989355716

/-! ## A259518.P12616037881339338587

`2*(A289741(A045803(n+1))+A209547(n+1))`
-/

namespace A259518.P12616037881339338587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045803 (n + 1)).toNat + A209547 (n + 1))

end

end A259518.P12616037881339338587

/-! ## A259518.P6903701210288174484

`2*(A289741(A045805(n+1))+A209547(n+1))`
-/

namespace A259518.P6903701210288174484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045805 (n + 1)).toNat + A209547 (n + 1))

end

end A259518.P6903701210288174484

/-! ## A259518.P9835833359334059477

`2*(A289741(A045807(n+1))+A209547(n+1))`
-/

namespace A259518.P9835833359334059477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045807 (n + 1)).toNat + A209547 (n + 1))

end

end A259518.P9835833359334059477

/-! ## A259518.P6013819904832638740

`2*(A289741(A045809(n+1))+A209547(n+1))`
-/

namespace A259518.P6013819904832638740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045809 (n + 1)).toNat + A209547 (n + 1))

end

end A259518.P6013819904832638740

/-! ## A259518.P2400985249345359527

`A184190(n+1)+A184190(n+1)%A184224(n+1)`
-/

namespace A259518.P2400985249345359527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184190 (n + 1) + Int.tmod (A184190 (n + 1)) (A184224 (n + 1))

end

end A259518.P2400985249345359527

/-!
# A259519: Number of (n+1)X(3+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259519, there is no canonical definition to state claims against.
-/

/-! ## A259519.P9413598923557153700

`2*A184191(n+1)`
-/

namespace A259519.P9413598923557153700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184191 (n + 1)

end

end A259519.P9413598923557153700

/-! ## A259519.P299490148544644548

`2*(A209548(n+1)-1)`
-/

namespace A259519.P299490148544644548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209548 (n + 1) - 1)

end

end A259519.P299490148544644548

/-! ## A259519.P17636037357359740584

`A184191(n+1)+A209548(n+1)-1`
-/

namespace A259519.P17636037357359740584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184191 (n + 1) + (A209548 (n + 1) - 1)

end

end A259519.P17636037357359740584

/-! ## A259519.P10330513434834030981

`A184191(A000027(n+1))+A184191(n+1)`
-/

namespace A259519.P10330513434834030981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184191 (A000027 (n + 1)).toNat + A184191 (n + 1)

end

end A259519.P10330513434834030981

/-! ## A259519.P15479268525763935967

`2*(A280193(A045798(n+1))+A209548(n+1))`
-/

namespace A259519.P15479268525763935967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045798 (n + 1)).toNat + A209548 (n + 1))

end

end A259519.P15479268525763935967

/-! ## A259519.P10714927573885927196

`2*(A280193(A045803(n+1))+A209548(n+1))`
-/

namespace A259519.P10714927573885927196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045803 (n + 1)).toNat + A209548 (n + 1))

end

end A259519.P10714927573885927196

/-! ## A259519.P8899674118965658951

`2*(A280193(A045805(n+1))+A209548(n+1))`
-/

namespace A259519.P8899674118965658951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045805 (n + 1)).toNat + A209548 (n + 1))

end

end A259519.P8899674118965658951

/-! ## A259519.P6932871784443741266

`2*(A280193(A045807(n+1))+A209548(n+1))`
-/

namespace A259519.P6932871784443741266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045807 (n + 1)).toNat + A209548 (n + 1))

end

end A259519.P6932871784443741266

/-! ## A259519.P887175839262277822

`2*(A280193(A045809(n+1))+A209548(n+1))`
-/

namespace A259519.P887175839262277822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045809 (n + 1)).toNat + A209548 (n + 1))

end

end A259519.P887175839262277822

/-! ## A259519.P11521882049137076461

`2*(A332823(A332822(n+1))+A209548(n+1))`
-/

namespace A259519.P11521882049137076461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332823 (A332822 (n + 1)).toNat + A209548 (n + 1))

end

end A259519.P11521882049137076461

/-!
# A259520: Number of (n+1)X(4+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259520, there is no canonical definition to state claims against.
-/

/-! ## A259520.P14826993206774009133

`2*A184192(n+1)`
-/

namespace A259520.P14826993206774009133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184192 (n + 1)

end

end A259520.P14826993206774009133

/-! ## A259520.P405656981724121478

`2*(A209549(n+1)-1)`
-/

namespace A259520.P405656981724121478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209549 (n + 1) - 1)

end

end A259520.P405656981724121478

/-! ## A259520.P5857638227182948112

`A184192(A000027(n+1))+A184192(n+1)`
-/

namespace A259520.P5857638227182948112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184192 (A000027 (n + 1)).toNat + A184192 (n + 1)

end

end A259520.P5857638227182948112

/-! ## A259520.P12068943245798707753

`A184197(A055999(n)+10)/(1-1/2)`
-/

namespace A259520.P12068943245798707753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184197 (A055999 n + 10).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A259520.P12068943245798707753

/-! ## A259520.P4940681274039501126

`A259524(A374004(n+1))`
-/

namespace A259520.P4940681274039501126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259524 (A374004 (n + 1)).toNat

end

end A259520.P4940681274039501126

/-!
# A259521: Number of (n+1)X(5+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259521, there is no canonical definition to state claims against.
-/

/-! ## A259521.P6277880064378348647

`2*A184193(n+1)`
-/

namespace A259521.P6277880064378348647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184193 (n + 1)

end

end A259521.P6277880064378348647

/-! ## A259521.P16970177626550369967

`2*(A209550(n+1)-1)`
-/

namespace A259521.P16970177626550369967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209550 (n + 1) - 1)

end

end A259521.P16970177626550369967

/-! ## A259521.P1113996872396408756

`A184193(A000027(n+1))+A184193(n+1)`
-/

namespace A259521.P1113996872396408756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184193 (A000027 (n + 1)).toNat + A184193 (n + 1)

end

end A259521.P1113996872396408756

/-! ## A259521.P1024498093171469258

`2*(A291914(A000040(n+1))+A209550(n+1))`
-/

namespace A259521.P1024498093171469258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A291914 (A000040 (n + 1)).toNat + A209550 (n + 1))

end

end A259521.P1024498093171469258

/-!
# A259522: Number of (n+1) X (6+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259522, there is no canonical definition to state claims against.
-/

/-! ## A259522.P7517666942904153537

`2*A184194(n+1)`
-/

namespace A259522.P7517666942904153537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184194 (n + 1)

end

end A259522.P7517666942904153537

/-! ## A259522.P2623424516374005261

`2*(A209551(n+1)-1)`
-/

namespace A259522.P2623424516374005261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209551 (n + 1) - 1)

end

end A259522.P2623424516374005261

/-! ## A259522.P7274390466269554906

`A184194(n+1)+A209551(n+1)-1`
-/

namespace A259522.P7274390466269554906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184194 (n + 1) + (A209551 (n + 1) - 1)

end

end A259522.P7274390466269554906

/-! ## A259522.P10120372067598858154

`A184194(A000027(n+1))+A184194(n+1)`
-/

namespace A259522.P10120372067598858154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184194 (A000027 (n + 1)).toNat + A184194 (n + 1)

end

end A259522.P10120372067598858154

/-! ## A259522.P15436905954528907326

`2*(A280193(A099375(n))+A209551(n+1))`
-/

namespace A259522.P15436905954528907326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A099375 n).toNat + A209551 (n + 1))

end

end A259522.P15436905954528907326

/-! ## A259522.P18434244672264259062

`2*(A280193(A246039(n))+A209551(n+1))`
-/

namespace A259522.P18434244672264259062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A246039 n).toNat + A209551 (n + 1))

end

end A259522.P18434244672264259062

/-! ## A259522.P5045468974377461680

`2*(A280193(A000265(n+1))+A209551(n+1))`
-/

namespace A259522.P5045468974377461680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A000265 (n + 1)).toNat + A209551 (n + 1))

end

end A259522.P5045468974377461680

/-! ## A259522.P3480483023488618697

`2*(A280193(A045798(n+1))+A209551(n+1))`
-/

namespace A259522.P3480483023488618697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045798 (n + 1)).toNat + A209551 (n + 1))

end

end A259522.P3480483023488618697

/-! ## A259522.P11997611223370870254

`2*(A280193(A045803(n+1))+A209551(n+1))`
-/

namespace A259522.P11997611223370870254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045803 (n + 1)).toNat + A209551 (n + 1))

end

end A259522.P11997611223370870254

/-! ## A259522.P579219521001936906

`2*(A280193(A045809(n+1))+A209551(n+1))`
-/

namespace A259522.P579219521001936906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A280193 (A045809 (n + 1)).toNat + A209551 (n + 1))

end

end A259522.P579219521001936906

/-!
# A259523: Number of (n+1) X (7+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259523, there is no canonical definition to state claims against.
-/

/-! ## A259523.P2688673759614527576

`2*A184195(n+1)`
-/

namespace A259523.P2688673759614527576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184195 (n + 1)

end

end A259523.P2688673759614527576

/-! ## A259523.P12162611211892945799

`2*(A209552(n+1)-1)`
-/

namespace A259523.P12162611211892945799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209552 (n + 1) - 1)

end

end A259523.P12162611211892945799

/-! ## A259523.P6956169625053359252

`A184195(n+1)+A209552(n+1)-1`
-/

namespace A259523.P6956169625053359252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184195 (n + 1) + (A209552 (n + 1) - 1)

end

end A259523.P6956169625053359252

/-! ## A259523.P2331975207269076670

`A184195(A000027(n+1))+A184195(n+1)`
-/

namespace A259523.P2331975207269076670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184195 (A000027 (n + 1)).toNat + A184195 (n + 1)

end

end A259523.P2331975207269076670

/-! ## A259523.P12130963665058561982

`2*(A295303(A066694(n+1))+A209552(n+1))`
-/

namespace A259523.P12130963665058561982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A295303 (A066694 (n + 1)).toNat + A209552 (n + 1))

end

end A259523.P12130963665058561982

/-!
# A259524: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 0101 or 1111.

The programs for A259524, there is no canonical definition to state claims against.
-/

/-! ## A259524.P1765165406013271

`2*A184197(n+1)`
-/

namespace A259524.P1765165406013271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184197 (n + 1)

end

end A259524.P1765165406013271

/-! ## A259524.P8331593914476765838

`2*(A209553(n+1)-1)`
-/

namespace A259524.P8331593914476765838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209553 (n + 1) - 1)

end

end A259524.P8331593914476765838

/-! ## A259524.P12799359466985585528

`A184197(A000027(n+1))/(1-1/2)`
-/

namespace A259524.P12799359466985585528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184197 (A000027 (n + 1)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A259524.P12799359466985585528

/-! ## A259524.P5501400503258337051

`A184197(n+1)+A209553(n+1)-1`
-/

namespace A259524.P5501400503258337051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (n + 1) + (A209553 (n + 1) - 1)

end

end A259524.P5501400503258337051

/-! ## A259524.P14380464826381712733

`A184197(char[1]+1+n)+A184197(n+1)`
-/

namespace A259524.P14380464826381712733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A184197 (n + 1)

end

end A259524.P14380464826381712733

/-! ## A259524.P123009153487677443

`2*(A289741(A045798(n+1))+A209553(n+1))`
-/

namespace A259524.P123009153487677443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045798 (n + 1)).toNat + A209553 (n + 1))

end

end A259524.P123009153487677443

/-! ## A259524.P1516037683816308156

`2*(A289741(A045803(n+1))+A209553(n+1))`
-/

namespace A259524.P1516037683816308156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045803 (n + 1)).toNat + A209553 (n + 1))

end

end A259524.P1516037683816308156

/-! ## A259524.P12460082499210370720

`2*(A289741(A045805(n+1))+A209553(n+1))`
-/

namespace A259524.P12460082499210370720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045805 (n + 1)).toNat + A209553 (n + 1))

end

end A259524.P12460082499210370720

/-! ## A259524.P5889218705201589596

`2*(A289741(A045807(n+1))+A209553(n+1))`
-/

namespace A259524.P5889218705201589596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045807 (n + 1)).toNat + A209553 (n + 1))

end

end A259524.P5889218705201589596

/-! ## A259524.P2260890377789622554

`2*(A289741(A045809(n+1))+A209553(n+1))`
-/

namespace A259524.P2260890377789622554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289741 (A045809 (n + 1)).toNat + A209553 (n + 1))

end

end A259524.P2260890377789622554

/-!
# A259525: First differences of A007318, when Pascal's triangle is seen as flattened list.

The programs for A259525, the canonical program `A259525.P15603515225238104540` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259525 has offset 0).

The definition of A259525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259525.P3465819704232139558

`Δ[A007318(n)]`
-/

namespace A259525.P3465819704232139558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P3465819704232139558

namespace A259525

/-- `Δ[A007318(n)]` -/
def P3465819704232139558.Spec : Prop :=
  ∀ n, P3465819704232139558.a n = A259525 n

end A259525

/-! ## A259525.P14788848341328933551

`Δ[A028326(n)/2]`
-/

namespace A259525.P14788848341328933551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P14788848341328933551

namespace A259525

/-- `Δ[A028326(n)/2]` -/
def P14788848341328933551.Spec : Prop :=
  ∀ n, P14788848341328933551.a n = (A259525 n : ℚ)

end A259525

/-! ## A259525.P10558370524964190181

`Δ[A109128(n)/2]`
-/

namespace A259525.P10558370524964190181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109128 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P10558370524964190181

namespace A259525

/-- `Δ[A109128(n)/2]` -/
def P10558370524964190181.Spec : Prop :=
  ∀ n, P10558370524964190181.a n = (A259525 n : ℚ)

end A259525

/-! ## A259525.P7953704496517093831

`Δ[ceil(A124927(n)/2)]`
-/

namespace A259525.P7953704496517093831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P7953704496517093831

namespace A259525

/-- `Δ[ceil(A124927(n)/2)]` -/
def P7953704496517093831.Spec : Prop :=
  ∀ n, P7953704496517093831.a n = A259525 n

end A259525

/-! ## A259525.P8231963149144135170

`A023531(n)-A156644(n)`
-/

namespace A259525.P8231963149144135170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n - A156644 n

end

end A259525.P8231963149144135170

namespace A259525

/-- `A023531(n)-A156644(n)` -/
def P8231963149144135170.Spec : Prop :=
  ∀ n, P8231963149144135170.a n = A259525 n

end A259525

/-! ## A259525.P4002583277329524123

`A135278(n)-A129994(n)`
-/

namespace A259525.P4002583277329524123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A129994 n

end

end A259525.P4002583277329524123

namespace A259525

/-- `A135278(n)-A129994(n)` -/
def P4002583277329524123.Spec : Prop :=
  ∀ n, P4002583277329524123.a n = A259525 n

end A259525

/-! ## A259525.P13893530224903976098

`A153861(n)-A132046(n)`
-/

namespace A259525.P13893530224903976098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n - A132046 n

end

end A259525.P13893530224903976098

namespace A259525

/-- `A153861(n)-A132046(n)` -/
def P13893530224903976098.Spec : Prop :=
  ∀ n, P13893530224903976098.a n = A259525 n

end A259525

/-! ## A259525.P9346762390122854821

`Δ[A285118(n)+A285116(n)]`
-/

namespace A259525.P9346762390122854821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 n + A285116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P9346762390122854821

namespace A259525

/-- `Δ[A285118(n)+A285116(n)]` -/
def P9346762390122854821.Spec : Prop :=
  ∀ n, P9346762390122854821.a n = A259525 n

end A259525

/-! ## A259525.P15603515225238104540

`Δ[A074909(n-A003056(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259525

/-- `Δ[A074909(n-A003056(n))]` -/
def P15603515225238104540.Spec : Prop :=
  ∀ n, P15603515225238104540.a n = A259525 n

theorem P15603515225238104540.correct : P15603515225238104540.Spec := by
  intro n
  simp only [A259525]

end A259525

/-! ## A259525.P15368925455002727885

`A007318(n+1)-A007318(n)`
-/

namespace A259525.P15368925455002727885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - A007318 n

end

end A259525.P15368925455002727885

namespace A259525

/-- `A007318(n+1)-A007318(n)` -/
def P15368925455002727885.Spec : Prop :=
  ∀ n, P15368925455002727885.a n = A259525 n

end A259525

/-! ## A259525.P7440105015264084857

`A095660(n+1)-A093560(n)`
-/

namespace A259525.P7440105015264084857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (n + 1) - A093560 n

end

end A259525.P7440105015264084857

namespace A259525

/-- `A095660(n+1)-A093560(n)` -/
def P7440105015264084857.Spec : Prop :=
  ∀ n, P7440105015264084857.a n = A259525 n

end A259525

/-! ## A259525.P18097416330308994762

`A095666(n+1)-A093561(n)`
-/

namespace A259525.P18097416330308994762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (n + 1) - A093561 n

end

end A259525.P18097416330308994762

namespace A259525

/-- `A095666(n+1)-A093561(n)` -/
def P18097416330308994762.Spec : Prop :=
  ∀ n, P18097416330308994762.a n = A259525 n

end A259525

/-! ## A259525.P7430396972866280650

`A074909(n+1)-A129994(n)`
-/

namespace A259525.P7430396972866280650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A129994 n

end

end A259525.P7430396972866280650

namespace A259525

/-- `A074909(n+1)-A129994(n)` -/
def P7430396972866280650.Spec : Prop :=
  ∀ n, P7430396972866280650.a n = A259525 n

end A259525

/-! ## A259525.P13689604012903947511

`A209561(n+1)-A135226(n)`
-/

namespace A259525.P13689604012903947511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) - A135226 n

end

end A259525.P13689604012903947511

namespace A259525

/-- `A209561(n+1)-A135226(n)` -/
def P13689604012903947511.Spec : Prop :=
  ∀ n, P13689604012903947511.a n = A259525 n

end A259525

/-! ## A259525.P15401125340737083172

`A097805(n+2)-A097805(n)`
-/

namespace A259525.P15401125340737083172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 2) - A097805 n

end

end A259525.P15401125340737083172

namespace A259525

/-- `A097805(n+2)-A097805(n)` -/
def P15401125340737083172.Spec : Prop :=
  ∀ n, P15401125340737083172.a n = A259525 n

end A259525

/-! ## A259525.P6600110070453004570

`Δ[A097805(n+1)+A097805(n)]`
-/

namespace A259525.P6600110070453004570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P6600110070453004570

namespace A259525

/-- `Δ[A097805(n+1)+A097805(n)]` -/
def P6600110070453004570.Spec : Prop :=
  ∀ n, P6600110070453004570.a n = A259525 n

end A259525

/-! ## A259525.P290962559858069523

`Δ[A102363(n+1)-A102363(n)]`
-/

namespace A259525.P290962559858069523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P290962559858069523

namespace A259525

/-- `Δ[A102363(n+1)-A102363(n)]` -/
def P290962559858069523.Spec : Prop :=
  ∀ n, P290962559858069523.a n = A259525 n

end A259525

/-! ## A259525.P2673179415538286269

`A124927(n+1)-A074909(n+1)`
-/

namespace A259525.P2673179415538286269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (n + 1) - A074909 (n + 1)

end

end A259525.P2673179415538286269

namespace A259525

/-- `A124927(n+1)-A074909(n+1)` -/
def P2673179415538286269.Spec : Prop :=
  ∀ n, P2673179415538286269.a n = A259525 n

end A259525

/-! ## A259525.P6709545484927358947

`Δ[C(A003056(n), A002260(n+1)-1)]`
-/

namespace A259525.P6709545484927358947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A259525.P6709545484927358947

namespace A259525

/-- `Δ[C(A003056(n), A002260(n+1)-1)]` -/
def P6709545484927358947.Spec : Prop :=
  ∀ n, P6709545484927358947.a n = A259525 n

end A259525

/-! ## A259525.P14491211251781601121

`A003056(n+1)-(A156644(n)+A003056(n))`
-/

namespace A259525.P14491211251781601121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - (A156644 n + A003056 n)

end

end A259525.P14491211251781601121

namespace A259525

/-- `A003056(n+1)-(A156644(n)+A003056(n))` -/
def P14491211251781601121.Spec : Prop :=
  ∀ n, P14491211251781601121.a n = A259525 n

end A259525

/-!
# A259527: a(n) gives the number of sequences n = b_1 < b_2 < ... < b_t = A006255(n) such that b_1*b_2*...*b_t is a perfect square.

The programs for A259527, there is no canonical definition to state claims against.
-/

/-! ## A259527.P2542719043860908780

`2^A260510(n+1)`
-/

namespace A259527.P2542719043860908780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A260510 (n + 1) : ℤ)

end

end A259527.P2542719043860908780

/-! ## A259527.P11579202207996266894

`A000079(A260510(n+1))`
-/

namespace A259527.P11579202207996266894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A260510 (n + 1)).toNat

end

end A259527.P11579202207996266894

/-! ## A259527.P18442395164522497875

`A011782(A260510(n+1)+1)`
-/

namespace A259527.P18442395164522497875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A260510 (n + 1) + 1).toNat

end

end A259527.P18442395164522497875

/-! ## A259527.P17683866419003665063

`A131577(A260510(n+1)+1)`
-/

namespace A259527.P17683866419003665063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A260510 (n + 1) + 1).toNat

end

end A259527.P17683866419003665063

/-! ## A259527.P2079592874184345005

`A059268(A260510(n+1)+∑[n])`
-/

namespace A259527.P2079592874184345005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A260510 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A259527.P2079592874184345005

/-! ## A259527.P3253096805689471889

`A059268(2*A260510(n+1)²)`
-/

namespace A259527.P3253096805689471889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A260510 (n + 1) ^ 2).toNat

end

end A259527.P3253096805689471889

/-! ## A259527.P3028360263881160923

`A059268(2*A260510(n+1)*A260510(n+1))`
-/

namespace A259527.P3028360263881160923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A260510 (n + 1) * A260510 (n + 1)).toNat

end

end A259527.P3028360263881160923

/-!
# A259528: n-th number with exactly n n's in base 10.

The programs for A259528, there is no canonical definition to state claims against.
-/

/-! ## A259528.P10160250384408775167

`(9*n+n+1)*record[A127805(n)]+n`
-/

namespace A259528.P10160250384408775167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A259528.P10160250384408775167

/-! ## A259528.P13774204482367771970

`A105279(n)+n*record[Δ[A120449(n+1)]]+n+1`
-/

namespace A259528.P13774204482367771970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n + ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ))

end

end A259528.P13774204482367771970

/-! ## A259528.P6034473555737686606

`A267327(A032559(n+1))+A105279(n)`
-/

namespace A259528.P6034473555737686606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267327 (A032559 (n + 1)).toNat + A105279 n

end

end A259528.P6034473555737686606

/-! ## A259528.P12159931773091359744

`A267327(A082217(n+1))+A105279(n)`
-/

namespace A259528.P12159931773091359744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267327 (A082217 (n + 1)).toNat + A105279 n

end

end A259528.P12159931773091359744

/-!
# A259529: Expansion of psi(-x^3)^2 / psi(-x) in powers of x where psi() is a Ramanujan theta function.

The programs for A259529, there is no canonical definition to state claims against.
-/

/-! ## A259529.P12769812188528670390

`A259538(3*n+2)`
-/

namespace A259529.P12769812188528670390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259538 (3 * n + 2)

end

end A259529.P12769812188528670390

/-! ## A259529.P8244156406865087440

`abs(A259538(A016789(n)))`
-/

namespace A259529.P8244156406865087440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259538 (A016789 n).toNat|

end

end A259529.P8244156406865087440

/-! ## A259529.P12098528388905360834

`gcd(A000038(n), A259538(A016789(n)))`
-/

namespace A259529.P12098528388905360834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259538 (A016789 n).toNat)

end

end A259529.P12098528388905360834

/-! ## A259529.P14816356514231202891

`lcm(A020985(n), A259538(A016789(n)))`
-/

namespace A259529.P14816356514231202891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A259538 (A016789 n).toNat)

end

end A259529.P14816356514231202891

/-! ## A259529.P15202644752748646091

`or(A000007(n), A259538(A016789(n)))`
-/

namespace A259529.P15202644752748646091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A259538 (A016789 n).toNat)

end

end A259529.P15202644752748646091

/-! ## A259529.P18155167333540611110

`A033999(2*n)*A259538(A016789(n))`
-/

namespace A259529.P18155167333540611110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A259538 (A016789 n).toNat

end

end A259529.P18155167333540611110

/-! ## A259529.P11989894312715072907

`A007318(C(2, n))*A259538(A016789(n))`
-/

namespace A259529.P11989894312715072907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A259538 (A016789 n).toNat

end

end A259529.P11989894312715072907

/-! ## A259529.P14595190101881232385

`A259538(A016789(n))%A259635(n+1)`
-/

namespace A259529.P14595190101881232385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259538 (A016789 n).toNat) (A259635 (n + 1))

end

end A259529.P14595190101881232385

/-! ## A259529.P16937334960896909454

`A007318(A000217(n))*A259538(A016789(n))`
-/

namespace A259529.P16937334960896909454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A259538 (A016789 n).toNat

end

end A259529.P16937334960896909454

/-! ## A259529.P11923916672990582308

`A259538(A016789(n))^A007318(∑[n+1])`
-/

namespace A259529.P11923916672990582308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A016789 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A259529.P11923916672990582308

/-!
# A259530: Numbers k such that 136^k - 135^k is prime.

The programs for A259530, there is no canonical definition to state claims against.
-/

/-! ## A259530.P11308947762934379269

`A257112(A300993(n+1))+A110440(2*(n+1))`
-/

namespace A259530.P11308947762934379269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257112 (A300993 (n + 1)).toNat + A110440 (2 * (n + 1))

end

end A259530.P11308947762934379269

/-!
# A259533: Number of restricted barred preferential arrangements of an n-set having 3 bars in which 3 fixed sections are restricted sections and 1 section is a free section.

The programs for A259533, there is no canonical definition to state claims against.
-/

/-! ## A259533.P505588438064747922

`A299404(n)-A000051(n)`
-/

namespace A259533.P505588438064747922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299404 n - A000051 n

end

end A259533.P505588438064747922

/-! ## A259533.P14062681721926700714

`A299404(n)-A271709(∑[n])`
-/

namespace A259533.P14062681721926700714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299404 n - A271709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259533.P14062681721926700714

/-! ## A259533.P4227554300238396847

`A299404(n)-record[A271709(n)]`
-/

namespace A259533.P4227554300238396847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299404 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259533.P4227554300238396847

/-! ## A259533.P6607939870361711831

`2*A007047(n)-A000079(n)`
-/

namespace A259533.P6607939870361711831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007047 n - A000079 n

end

end A259533.P6607939870361711831

/-! ## A259533.P11469274528234454252

`A299404(n)-A099627(A000124(n))`
-/

namespace A259533.P11469274528234454252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299404 n - A099627 (A000124 n).toNat

end

end A259533.P11469274528234454252

/-!
# A259534: a(n) = -1 + 2 * product_{i=0..n} A093179(i), where A093179(i) is the smallest prime factor of 2^(2^i) + 1.

The programs for A259534, there is no canonical definition to state claims against.
-/

/-! ## A259534.P1405655530804054105

`∑[A225116(2^n)]`
-/

namespace A259534.P1405655530804054105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225116 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259534.P1405655530804054105

/-!
# A259535: Numbers k such that 159^k - 158^k is prime.

The programs for A259535, there is no canonical definition to state claims against.
-/

/-! ## A259535.P2983082681427009271

`A151800(A038208(n)*A129663(n))`
-/

namespace A259535.P2983082681427009271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A038208 n * A129663 n).toNat

end

end A259535.P2983082681427009271

/-!
# A259539: Numbers m with m-1, m+1 and prime(m)+2 all prime.

The programs for A259539, the canonical program `A259539.P2662622544666601067` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259539 has offset 1).

The definition of A259539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259539.P11497329798540911814

`∩[A014574(n+1), A029707(n+1)]`
-/

namespace A259539.P11497329798540911814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P11497329798540911814

namespace A259539

/-- `∩[A014574(n+1), A029707(n+1)]` -/
def P11497329798540911814.Spec : Prop :=
  ∀ n, (P11497329798540911814.a n : ℤ) = A259539 (n + 1)

end A259539

/-! ## A259539.P7709389137229315262

`∩[A029707(n+1), A217259(n+1)]`
-/

namespace A259539.P7709389137229315262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P7709389137229315262

namespace A259539

/-- `∩[A029707(n+1), A217259(n+1)]` -/
def P7709389137229315262.Spec : Prop :=
  ∀ n, (P7709389137229315262.a n : ℤ) = A259539 (n + 1)

end A259539

/-! ## A259539.P14297914786726642544

`∩[A029707(n+1), A144834(n+1)+2]`
-/

namespace A259539.P14297914786726642544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P14297914786726642544

namespace A259539

/-- `∩[A029707(n+1), A144834(n+1)+2]` -/
def P14297914786726642544.Spec : Prop :=
  ∀ n, (P14297914786726642544.a n : ℤ) = A259539 (n + 1)

end A259539

/-! ## A259539.P18256589589225055906

`∩[2*A040040(n+1), A029707(n+1)]`
-/

namespace A259539.P18256589589225055906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P18256589589225055906

namespace A259539

/-- `∩[2*A040040(n+1), A029707(n+1)]` -/
def P18256589589225055906.Spec : Prop :=
  ∀ n, (P18256589589225055906.a n : ℤ) = A259539 (n + 1)

end A259539

/-! ## A259539.P2662622544666601067

`∩[A029707(n+1), A053319(n)+a(n-1)]` with `a(0)=4`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A259539

/-- `∩[A029707(n+1), A053319(n)+a(n-1)]` -/
def P2662622544666601067.Spec : Prop :=
  ∀ n, (P2662622544666601067.a n : ℤ) = A259539 (n + 1)

theorem P2662622544666601067.correct : P2662622544666601067.Spec := by
  intro n
  simp only [A259539, Nat.add_sub_cancel]

end A259539

/-! ## A259539.P15313816070137881309

`∩[A334142(2*(n+1)), A014574(n+2)]`
-/

namespace A259539.P15313816070137881309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P15313816070137881309

namespace A259539

/-- `∩[A334142(2*(n+1)), A014574(n+2)]` -/
def P15313816070137881309.Spec : Prop :=
  ∀ n, (P15313816070137881309.a n : ℤ) = A259539 (n + 1)

end A259539

/-! ## A259539.P54436291050238006

`∩[A001097(2*(n+1))+1, A334142(2*(n+1))]`
-/

namespace A259539.P54436291050238006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P54436291050238006

namespace A259539

/-- `∩[A001097(2*(n+1))+1, A334142(2*(n+1))]` -/
def P54436291050238006.Spec : Prop :=
  ∀ n, (P54436291050238006.a n : ℤ) = A259539 (n + 1)

end A259539

/-! ## A259539.P1951834261812703944

`∩[A334142(2*n+1), A171821(2*(n+1))]-1`
-/

namespace A259539.P1951834261812703944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A259539.P1951834261812703944

namespace A259539

/-- `∩[A334142(2*n+1), A171821(2*(n+1))]-1` -/
def P1951834261812703944.Spec : Prop :=
  ∀ n, P1951834261812703944.a n = A259539 (n + 1)

end A259539

/-!
# A259541: Numbers n such that antisigma(n) is palindromic.

The programs for A259541, there is no canonical definition to state claims against.
-/

/-! ## A259541.P6802350521805861718

`∑[A182111(A086764(n)!)]`
-/

namespace A259541.P6802350521805861718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182111 (Nat.factorial (A086764 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259541.P6802350521805861718

/-! ## A259541.P6702683915681152563

`∑[A329037(record[A176488(n)])]`
-/

namespace A259541.P6702683915681152563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329037 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259541.P6702683915681152563

/-! ## A259541.P7682352009660109624

`∑[A057501(A127707(∑[n+1]))]`
-/

namespace A259541.P7682352009660109624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A127707 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259541.P7682352009660109624

/-! ## A259541.P7125301542511667642

`lt[A018804(A000041(n)), A265061(n)]`
-/

namespace A259541.P7125301542511667642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A259541.P7125301542511667642

/-!
# A259542: a(1) = 1, for n > 1 a(n) = smallest number not already in the sequence such that the arithmetic mean of two neighboring terms is a triangular number.

The programs for A259542, there is no canonical definition to state claims against.
-/

/-! ## A259542.P7362825206171824598

`A005843(A259604(n))-a(n-1)` with `a(0)=1`
-/

namespace A259542.P7362825206171824598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A259604 n).toNat - a (n - 1)

end

end A259542.P7362825206171824598

/-!
# A259544: Minimum greatest integer in a set of n positive integers whose nonempty subsets all have distinct arithmetic means.

The programs for A259544, there is no canonical definition to state claims against.
-/

/-! ## A259544.P15842028135937865464

`A220096(n+1)+A067687(n)`
-/

namespace A259544.P15842028135937865464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 1) + A067687 n

end

end A259544.P15842028135937865464

/-! ## A259544.P403469661416881411

`A138194(A026581(n+1))-A333489(A126796(n))`
-/

namespace A259544.P403469661416881411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A026581 (n + 1)).toNat - A333489 (A126796 n).toNat

end

end A259544.P403469661416881411

/-! ## A259544.P7582546756741746776

`A067687(n)+A001222(A123894(n))`
-/

namespace A259544.P7582546756741746776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 n + A001222 (A123894 n).toNat

end

end A259544.P7582546756741746776

/-! ## A259544.P14570258139693418867

`A326518(n)-A010815(A075115(3*n))`
-/

namespace A259544.P14570258139693418867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326518 n - A010815 (A075115 (3 * n)).toNat

end

end A259544.P14570258139693418867

/-!
# A259545: Minimum number k such that, for every m >= k, there exists a set of n positive integers whose largest element is m and whose subsets all have distinct arithmetic means.

The programs for A259545, there is no canonical definition to state claims against.
-/

/-! ## A259545.P8927220026470186700

`ogf((1-2x^2-3x^3)/(1-2x-2x^2+2x^3+2x^4))`
-/

namespace A259545.P8927220026470186700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -3] [1, -2, -2, 2, 2] n

end

end A259545.P8927220026470186700

/-! ## A259545.P9691319046747098928

`floor(sqrt(n)+sqrt(A124610(n)))`
-/

namespace A259545.P9691319046747098928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) + Real.sqrt (A124610 n : ℝ)⌋

end

end A259545.P9691319046747098928

/-! ## A259545.P7763509304723577285

`ceil(root(A100300(2*n+3), 4))`
-/

namespace A259545.P7763509304723577285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100300 (2 * n + 3) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A259545.P7763509304723577285

/-! ## A259545.P14696117414376825411

`round((A034691(n)+n-1)/sqrt(2))+1`
-/

namespace A259545.P14696117414376825411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034691 n + ((n : ℤ) - 1) : ℝ) / Real.sqrt (2 : ℝ)) + 1

end

end A259545.P14696117414376825411

/-!
# A259546: a(n) = n^3*Fibonacci(n).

The programs for A259546, the canonical program `A259546.P10792724282004956357` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259546 has offset 0).

The definition of A259546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*A000045(n)` (program `A259546.P10792724282004956357`, by `A259546.P10792724282004956357.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259546.P10792724282004956357

`n^3*A000045(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259546

/-- `n^3*A000045(n)` -/
def P10792724282004956357.Spec : Prop :=
  ∀ n, P10792724282004956357.a n = A259546 n

theorem P10792724282004956357.correct : P10792724282004956357.Spec := by
  intro n
  simp only [A259546]

end A259546

/-! ## A259546.P7294937690965014523

`n*A259451(n)`
-/

namespace A259546.P7294937690965014523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259451 n

end

end A259546.P7294937690965014523

namespace A259546

/-- `n*A259451(n)` -/
def P7294937690965014523.Spec : Prop :=
  ∀ n, P7294937690965014523.a n = A259546 n

theorem P7294937690965014523.correct : P7294937690965014523.Spec := by
  intro n
  simp only [A259546, Nat.add_sub_cancel, A259546.P7294937690965014523.a, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, A259451, A259451.P12788333351686099515.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259546

/-! ## A259546.P15803897258531698908

`n²*A045925(n)`
-/

namespace A259546.P15803897258531698908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A045925 n

end

end A259546.P15803897258531698908

namespace A259546

/-- `n²*A045925(n)` -/
def P15803897258531698908.Spec : Prop :=
  ∀ n, P15803897258531698908.a n = A259546 n

theorem P15803897258531698908.correct : P15803897258531698908.Spec := by
  intro n
  simp only [A259546, Nat.add_sub_cancel, A259546.P15803897258531698908.a, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259546

/-! ## A259546.P9306328482720633170

`n^3*A212804(n+1)`
-/

namespace A259546.P9306328482720633170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A212804 (n + 1)

end

end A259546.P9306328482720633170

namespace A259546

/-- `n^3*A212804(n+1)` -/
def P9306328482720633170.Spec : Prop :=
  ∀ n, P9306328482720633170.a n = A259546 n

end A259546

/-! ## A259546.P9774148829197821476

`n^3*A324969(n+1)`
-/

namespace A259546.P9774148829197821476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A324969 (n + 1)

end

end A259546.P9774148829197821476

namespace A259546

/-- `n^3*A324969(n+1)` -/
def P9774148829197821476.Spec : Prop :=
  ∀ n, P9774148829197821476.a n = A259546 n

end A259546

/-! ## A259546.P9913659658376179871

`(A001611(n)-1)*n^3`
-/

namespace A259546.P9913659658376179871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (n ^ 3 : ℤ)

end

end A259546.P9913659658376179871

namespace A259546

/-- `(A001611(n)-1)*n^3` -/
def P9913659658376179871.Spec : Prop :=
  ∀ n, P9913659658376179871.a n = A259546 n

theorem P9913659658376179871.correct : P9913659658376179871.Spec := by
  intro n
  simp only [A259546, Nat.add_sub_cancel, A259546.P9913659658376179871.a, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259546

/-! ## A259546.P3190230005945830008

`n^3*Δ[A000071(n+1)]`
-/

namespace A259546.P3190230005945830008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A259546.P3190230005945830008

namespace A259546

/-- `n^3*Δ[A000071(n+1)]` -/
def P3190230005945830008.Spec : Prop :=
  ∀ n, P3190230005945830008.a n = A259546 n

end A259546

/-! ## A259546.P12005415839537771455

`n*n²*A103609(2*n)`
-/

namespace A259546.P12005415839537771455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 2 : ℤ) * A103609 (2 * n))

end

end A259546.P12005415839537771455

namespace A259546

/-- `n*n²*A103609(2*n)` -/
def P12005415839537771455.Spec : Prop :=
  ∀ n, P12005415839537771455.a n = A259546 n

end A259546

/-! ## A259546.P13668714118427315889

`n*Δ[A000045(n+1)]*n²`
-/

namespace A259546.P13668714118427315889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) * (n ^ 2 : ℤ)

end

end A259546.P13668714118427315889

namespace A259546

/-- `n*Δ[A000045(n+1)]*n²` -/
def P13668714118427315889.Spec : Prop :=
  ∀ n, P13668714118427315889.a n = A259546 n

end A259546

/-! ## A259546.P12907648263413389191

`n*A000045(2*n-n)*n²`
-/

namespace A259546.P12907648263413389191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (2 * n - n) * (n ^ 2 : ℤ)

end

end A259546.P12907648263413389191

namespace A259546

/-- `n*A000045(2*n-n)*n²` -/
def P12907648263413389191.Spec : Prop :=
  ∀ n, P12907648263413389191.a n = A259546 n

end A259546

/-! ## A259546.P9476412366808277731

`A000045(n)*A000578(n)`
-/

namespace A259546.P9476412366808277731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000578 n

end

end A259546.P9476412366808277731

namespace A259546

/-- `A000045(n)*A000578(n)` -/
def P9476412366808277731.Spec : Prop :=
  ∀ n, P9476412366808277731.a n = A259546 n

theorem P9476412366808277731.correct : P9476412366808277731.Spec := by
  intro n
  simp only [A259546, Nat.add_sub_cancel, A259546.P9476412366808277731.a, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259546

/-! ## A259546.P17701252515279273720

`A045925(n)*A253909(n)`
-/

namespace A259546.P17701252515279273720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n * A253909 n

end

end A259546.P17701252515279273720

namespace A259546

/-- `A045925(n)*A253909(n)` -/
def P17701252515279273720.Spec : Prop :=
  ∀ n, P17701252515279273720.a n = A259546 n

end A259546

/-! ## A259546.P3176435183370794666

`A000045(n)*A034828(2*n)`
-/

namespace A259546.P3176435183370794666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A034828 (2 * n)

end

end A259546.P3176435183370794666

namespace A259546

/-- `A000045(n)*A034828(2*n)` -/
def P3176435183370794666.Spec : Prop :=
  ∀ n, P3176435183370794666.a n = A259546 n

end A259546

/-! ## A259546.P7244171757245030286

`(A002062(n)-n)*A000578(n)`
-/

namespace A259546.P7244171757245030286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002062 n - (n : ℤ)) * A000578 n

end

end A259546.P7244171757245030286

namespace A259546

/-- `(A002062(n)-n)*A000578(n)` -/
def P7244171757245030286.Spec : Prop :=
  ∀ n, P7244171757245030286.a n = A259546 n

theorem P7244171757245030286.correct : P7244171757245030286.Spec := by
  intro n
  simp only [A259546, Nat.add_sub_cancel, A259546.P7244171757245030286.a, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, A000578, A000578.P12162961755414704816.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259546

/-! ## A259546.P5766559641089750820

`n*A000045(n)*A000290(n)`
-/

namespace A259546.P5766559641089750820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A000290 n)

end

end A259546.P5766559641089750820

namespace A259546

/-- `n*A000045(n)*A000290(n)` -/
def P5766559641089750820.Spec : Prop :=
  ∀ n, P5766559641089750820.a n = A259546 n

theorem P5766559641089750820.correct : P5766559641089750820.Spec := by
  intro n
  simp only [A259546, Nat.add_sub_cancel, A259546.P5766559641089750820.a, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259546

/-! ## A259546.P3875937224449831951

`n*A000045(n)*A253909(n)`
-/

namespace A259546.P3875937224449831951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A253909 n)

end

end A259546.P3875937224449831951

namespace A259546

/-- `n*A000045(n)*A253909(n)` -/
def P3875937224449831951.Spec : Prop :=
  ∀ n, P3875937224449831951.a n = A259546 n

end A259546

/-! ## A259546.P8075742552781434273

`n*A000045(n)*∑[A004273(n)]`
-/

namespace A259546.P8075742552781434273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A259546.P8075742552781434273

namespace A259546

/-- `n*A000045(n)*∑[A004273(n)]` -/
def P8075742552781434273.Spec : Prop :=
  ∀ n, P8075742552781434273.a n = A259546 n

end A259546

/-! ## A259546.P6632814084889733763

`n*A000045(n)*record[A123596(n)]`
-/

namespace A259546.P6632814084889733763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259546.P6632814084889733763

namespace A259546

/-- `n*A000045(n)*record[A123596(n)]` -/
def P6632814084889733763.Spec : Prop :=
  ∀ n, P6632814084889733763.a n = A259546 n

end A259546

/-! ## A259546.P9198868895632503033

`n*A000045(n)*record[A165487(n)]`
-/

namespace A259546.P9198868895632503033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259546.P9198868895632503033

namespace A259546

/-- `n*A000045(n)*record[A165487(n)]` -/
def P9198868895632503033.Spec : Prop :=
  ∀ n, P9198868895632503033.a n = A259546 n

end A259546

/-! ## A259546.P1833702271926261452

`n*A000045(n)*record[A219031(n)]`
-/

namespace A259546.P1833702271926261452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259546.P1833702271926261452

namespace A259546

/-- `n*A000045(n)*record[A219031(n)]` -/
def P1833702271926261452.Spec : Prop :=
  ∀ n, P1833702271926261452.a n = A259546 n

end A259546

/-!
# A259547: a(n) = n^4*Fibonacci(n).

The programs for A259547, the canonical program `A259547.P6115006685320739777` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259547 has offset 0).

The definition of A259547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*A000045(n)` (program `A259547.P6115006685320739777`, by `A259547.P6115006685320739777.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259547.P6115006685320739777

`n^4*A000045(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259547

/-- `n^4*A000045(n)` -/
def P6115006685320739777.Spec : Prop :=
  ∀ n, P6115006685320739777.a n = A259547 n

theorem P6115006685320739777.correct : P6115006685320739777.Spec := by
  intro n
  simp only [A259547]

end A259547

/-! ## A259547.P2532143196346448718

`n*A259546(n)`
-/

namespace A259547.P2532143196346448718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259546 n

end

end A259547.P2532143196346448718

namespace A259547

/-- `n*A259546(n)` -/
def P2532143196346448718.Spec : Prop :=
  ∀ n, P2532143196346448718.a n = A259547 n

theorem P2532143196346448718.correct : P2532143196346448718.Spec := by
  intro n
  simp only [A259547, Nat.add_sub_cancel, A259547.P2532143196346448718.a, A259547.P6115006685320739777.a, A000045, A000045.P11838749114346432762.a, A259546, A259546.P10792724282004956357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259547

/-! ## A259547.P7264548103074549380

`n²*A259451(n)`
-/

namespace A259547.P7264548103074549380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A259451 n

end

end A259547.P7264548103074549380

namespace A259547

/-- `n²*A259451(n)` -/
def P7264548103074549380.Spec : Prop :=
  ∀ n, P7264548103074549380.a n = A259547 n

theorem P7264548103074549380.correct : P7264548103074549380.Spec := by
  intro n
  simp only [A259547, Nat.add_sub_cancel, A259547.P7264548103074549380.a, A259547.P6115006685320739777.a, A000045, A000045.P11838749114346432762.a, A259451, A259451.P12788333351686099515.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259547

/-! ## A259547.P10971847764451590058

`n^3*A045925(n)`
-/

namespace A259547.P10971847764451590058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A045925 n

end

end A259547.P10971847764451590058

namespace A259547

/-- `n^3*A045925(n)` -/
def P10971847764451590058.Spec : Prop :=
  ∀ n, P10971847764451590058.a n = A259547 n

theorem P10971847764451590058.correct : P10971847764451590058.Spec := by
  intro n
  simp only [A259547, Nat.add_sub_cancel, A259547.P10971847764451590058.a, A259547.P6115006685320739777.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259547

/-! ## A259547.P2399868288205516434

`abs(n²²*A236191(n))`
-/

namespace A259547.P2399868288205516434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) * A236191 n|

end

end A259547.P2399868288205516434

namespace A259547

/-- `abs(n²²*A236191(n))` -/
def P2399868288205516434.Spec : Prop :=
  ∀ n, P2399868288205516434.a n = A259547 n

end A259547

/-! ## A259547.P11851031200218118652

`abs(n²²*A333378(n))`
-/

namespace A259547.P11851031200218118652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) * A333378 n|

end

end A259547.P11851031200218118652

namespace A259547

/-- `abs(n²²*A333378(n))` -/
def P11851031200218118652.Spec : Prop :=
  ∀ n, P11851031200218118652.a n = A259547 n

end A259547

/-! ## A259547.P979641879143581819

`n²²*A212804(n+1)`
-/

namespace A259547.P979641879143581819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A212804 (n + 1)

end

end A259547.P979641879143581819

namespace A259547

/-- `n²²*A212804(n+1)` -/
def P979641879143581819.Spec : Prop :=
  ∀ n, P979641879143581819.a n = A259547 n

end A259547

/-! ## A259547.P18343475012583768671

`n²²*A324969(n+1)`
-/

namespace A259547.P18343475012583768671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A324969 (n + 1)

end

end A259547.P18343475012583768671

namespace A259547

/-- `n²²*A324969(n+1)` -/
def P18343475012583768671.Spec : Prop :=
  ∀ n, P18343475012583768671.a n = A259547 n

end A259547

/-! ## A259547.P920694088284001296

`n²²*A053602(2*n)`
-/

namespace A259547.P920694088284001296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A053602 (2 * n)

end

end A259547.P920694088284001296

namespace A259547

/-- `n²²*A053602(2*n)` -/
def P920694088284001296.Spec : Prop :=
  ∀ n, P920694088284001296.a n = A259547 n

end A259547

/-! ## A259547.P4962170320694562215

`n²²*A103609(2*n)`
-/

namespace A259547.P4962170320694562215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A103609 (2 * n)

end

end A259547.P4962170320694562215

namespace A259547

/-- `n²²*A103609(2*n)` -/
def P4962170320694562215.Spec : Prop :=
  ∀ n, P4962170320694562215.a n = A259547 n

end A259547

/-! ## A259547.P15527380383680822799

`n²²*A302126(2*n)`
-/

namespace A259547.P15527380383680822799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A302126 (2 * n)

end

end A259547.P15527380383680822799

namespace A259547

/-- `n²²*A302126(2*n)` -/
def P15527380383680822799.Spec : Prop :=
  ∀ n, P15527380383680822799.a n = A259547 n

end A259547

/-! ## A259547.P9693717499594711719

`n²²*Δ[A000045(n+1)]`
-/

namespace A259547.P9693717499594711719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A259547.P9693717499594711719

namespace A259547

/-- `n²²*Δ[A000045(n+1)]` -/
def P9693717499594711719.Spec : Prop :=
  ∀ n, P9693717499594711719.a n = A259547 n

end A259547

/-! ## A259547.P6658818074553393816

`A000045(n)*A000583(n)`
-/

namespace A259547.P6658818074553393816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000583 n

end

end A259547.P6658818074553393816

namespace A259547

/-- `A000045(n)*A000583(n)` -/
def P6658818074553393816.Spec : Prop :=
  ∀ n, P6658818074553393816.a n = A259547 n

theorem P6658818074553393816.correct : P6658818074553393816.Spec := by
  intro n
  simp only [A259547, Nat.add_sub_cancel, A259547.P6658818074553393816.a, A259547.P6115006685320739777.a, A000045, A000045.P11838749114346432762.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259547

/-! ## A259547.P16373263859489095158

`A000045(n)*A011863(2*n)`
-/

namespace A259547.P16373263859489095158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A011863 (2 * n)

end

end A259547.P16373263859489095158

namespace A259547

/-- `A000045(n)*A011863(2*n)` -/
def P16373263859489095158.Spec : Prop :=
  ∀ n, P16373263859489095158.a n = A259547 n

end A259547

/-! ## A259547.P6801482215561936799

`A000045(n)*A030179(2*n)`
-/

namespace A259547.P6801482215561936799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A030179 (2 * n)

end

end A259547.P6801482215561936799

namespace A259547

/-- `A000045(n)*A030179(2*n)` -/
def P6801482215561936799.Spec : Prop :=
  ∀ n, P6801482215561936799.a n = A259547 n

end A259547

/-! ## A259547.P16663528147195239418

`n*A000045(n)*A000578(n)`
-/

namespace A259547.P16663528147195239418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A000578 n)

end

end A259547.P16663528147195239418

namespace A259547

/-- `n*A000045(n)*A000578(n)` -/
def P16663528147195239418.Spec : Prop :=
  ∀ n, P16663528147195239418.a n = A259547 n

theorem P16663528147195239418.correct : P16663528147195239418.Spec := by
  intro n
  simp only [A259547, Nat.add_sub_cancel, A259547.P16663528147195239418.a, A259547.P6115006685320739777.a, A000045, A000045.P11838749114346432762.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259547

/-! ## A259547.P1499188977733162001

`n*A045925(n)*A253909(n)`
-/

namespace A259547.P1499188977733162001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A045925 n * A253909 n)

end

end A259547.P1499188977733162001

namespace A259547

/-- `n*A045925(n)*A253909(n)` -/
def P1499188977733162001.Spec : Prop :=
  ∀ n, P1499188977733162001.a n = A259547 n

end A259547

/-! ## A259547.P5845952578574999863

`abs((1-A024002(n))*A000045(n))`
-/

namespace A259547.P5845952578574999863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A024002 n) * A000045 n|

end

end A259547.P5845952578574999863

namespace A259547

/-- `abs((1-A024002(n))*A000045(n))` -/
def P5845952578574999863.Spec : Prop :=
  ∀ n, P5845952578574999863.a n = A259547 n

end A259547

/-! ## A259547.P9922759530333808579

`A000045(n)*record[A080099(n)²²]`
-/

namespace A259547.P9922759530333808579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080099 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259547.P9922759530333808579

namespace A259547

/-- `A000045(n)*record[A080099(n)²²]` -/
def P9922759530333808579.Spec : Prop :=
  ∀ n, P9922759530333808579.a n = A259547 n

end A259547

/-! ## A259547.P9761522845517010432

`A000045(n)*record[A138471(n)²²]`
-/

namespace A259547.P9761522845517010432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138471 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259547.P9761522845517010432

namespace A259547

/-- `A000045(n)*record[A138471(n)²²]` -/
def P9761522845517010432.Spec : Prop :=
  ∀ n, P9761522845517010432.a n = A259547 n

end A259547

/-!
# A259548: Numbers divisible only by primes of the form 6*m-1.

The programs for A259548, the canonical program `A259548.P18234213199835216627` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259548 has offset 1).

The definition of A259548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259548.P6280799524168907793

`record[A343431(n+1)]%A075580(2*n+3)`
-/

namespace A259548.P6280799524168907793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A075580 (2 * n + 3))

end

end A259548.P6280799524168907793

namespace A259548

/-- `record[A343431(n+1)]%A075580(2*n+3)` -/
def P6280799524168907793.Spec : Prop :=
  ∀ n, P6280799524168907793.a n = A259548 (n + 1)

end A259548

/-! ## A259548.P14866086542512180321

`record[A343431(n+1)]%A256423(n+1)`
-/

namespace A259548.P14866086542512180321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A256423 (n + 1))

end

end A259548.P14866086542512180321

namespace A259548

/-- `record[A343431(n+1)]%A256423(n+1)` -/
def P14866086542512180321.Spec : Prop :=
  ∀ n, P14866086542512180321.a n = A259548 (n + 1)

end A259548

/-! ## A259548.P15151450930870904233

`record[A028234(A166104(n+1))]%A074541(n)`
-/

namespace A259548.P15151450930870904233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A166104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A074541 n)

end

end A259548.P15151450930870904233

namespace A259548

/-- `record[A028234(A166104(n+1))]%A074541(n)` -/
def P15151450930870904233.Spec : Prop :=
  ∀ n, P15151450930870904233.a n = A259548 (n + 1)

end A259548

/-! ## A259548.P18234213199835216627

`record[A000265(A004612(n+1)*A006519(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A259548

/-- `record[A000265(A004612(n+1)*A006519(n+1))]` -/
def P18234213199835216627.Spec : Prop :=
  ∀ n, P18234213199835216627.a n = A259548 (n + 1)

theorem P18234213199835216627.correct : P18234213199835216627.Spec := by
  intro n
  simp only [A259548, Nat.add_sub_cancel]

end A259548

/-! ## A259548.P613603139915106467

`record[A028234(A166104(n+1))%A075403(n)]`
-/

namespace A259548.P613603139915106467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (A166104 (n + 1)).toNat) (A075403 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259548.P613603139915106467

namespace A259548

/-- `record[A028234(A166104(n+1))%A075403(n)]` -/
def P613603139915106467.Spec : Prop :=
  ∀ n, P613603139915106467.a n = A259548 (n + 1)

end A259548

/-! ## A259548.P9677031356764479088

`record[A028234(A166104(n+1))]^A007423((n+1)²)`
-/

namespace A259548.P9677031356764479088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A166104 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A007423 ((n + 1) ^ 2) : ℤ)

end

end A259548.P9677031356764479088

namespace A259548

/-- `record[A028234(A166104(n+1))]^A007423((n+1)²)` -/
def P9677031356764479088.Spec : Prop :=
  ∀ n, P9677031356764479088.a n = (A259548 (n + 1) : ℚ)

end A259548

/-! ## A259548.P15905725398105454211

`record[A028234(A166104(n+1))]^(A118759(n)-(n-1))`
-/

namespace A259548.P15905725398105454211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A166104 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A118759 n - ((n : ℤ) - 1) : ℤ)

end

end A259548.P15905725398105454211

namespace A259548

/-- `record[A028234(A166104(n+1))]^(A118759(n)-(n-1))` -/
def P15905725398105454211.Spec : Prop :=
  ∀ n, P15905725398105454211.a n = (A259548 (n + 1) : ℚ)

end A259548

/-! ## A259548.P1715367211680149551

`eq[A035536(n), A387908(n)]`
-/

namespace A259548.P1715367211680149551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259548.P1715367211680149551

namespace A259548

/-- `eq[A035536(n), A387908(n)]` -/
def P1715367211680149551.Spec : Prop :=
  ∀ n, (P1715367211680149551.a n : ℤ) = A259548 (n + 1)

end A259548

/-! ## A259548.P6571379075076163539

`eq[A133851(n), A387908(n)]`
-/

namespace A259548.P6571379075076163539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259548.P6571379075076163539

namespace A259548

/-- `eq[A133851(n), A387908(n)]` -/
def P6571379075076163539.Spec : Prop :=
  ∀ n, (P6571379075076163539.a n : ℤ) = A259548 (n + 1)

end A259548

/-!
# A259549: Triangle T(n,k) with rows of length 2n-1 filled with consecutive integers, each appearing twice except for the last term, T(n,2n-1) = n(n+1)/2.

The programs for A259549, the canonical program `A259549.P10181913513683013065` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259549 has offset 1).

The definition of A259549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259549.P5883956612342024573

`ceil(comp[∑[2*n]]/2)`
-/

namespace A259549.P5883956612342024573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2⌉

end

end A259549.P5883956612342024573

namespace A259549

/-- `ceil(comp[∑[2*n]]/2)` -/
def P5883956612342024573.Spec : Prop :=
  ∀ n, P5883956612342024573.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P8234364125588493705

`∑[comp[∑[2*n]]%2]`
-/

namespace A259549.P8234364125588493705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P8234364125588493705

namespace A259549

/-- `∑[comp[∑[2*n]]%2]` -/
def P8234364125588493705.Spec : Prop :=
  ∀ n, (P8234364125588493705.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P2768374062815209030

`∑[and(1, comp[∑[2*n]])]`
-/

namespace A259549.P2768374062815209030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P2768374062815209030

namespace A259549

/-- `∑[and(1, comp[∑[2*n]])]` -/
def P2768374062815209030.Spec : Prop :=
  ∀ n, (P2768374062815209030.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P12089072941840421249

`round(cosh(log(comp[∑[2*n]])))`
-/

namespace A259549.P12089072941840421249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)))

end

end A259549.P12089072941840421249

namespace A259549

/-- `round(cosh(log(comp[∑[2*n]])))` -/
def P12089072941840421249.Spec : Prop :=
  ∀ n, P12089072941840421249.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P15954814641687455752

`round(comp[2*C(n, 2)]/2)`
-/

namespace A259549.P15954814641687455752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2)

end

end A259549.P15954814641687455752

namespace A259549

/-- `round(comp[2*C(n, 2)]/2)` -/
def P15954814641687455752.Spec : Prop :=
  ∀ n, P15954814641687455752.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P684373336104106101

`∑[(comp[n²+n]%2)²]`
-/

namespace A259549.P684373336104106101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P684373336104106101

namespace A259549

/-- `∑[(comp[n²+n]%2)²]` -/
def P684373336104106101.Spec : Prop :=
  ∀ n, (P684373336104106101.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P13836978162732205750

`comp[∑[2*n]]-a(n-1)` with `a(0)=1`
-/

namespace A259549.P13836978162732205750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A259549.P13836978162732205750

namespace A259549

/-- `comp[∑[2*n]]-a(n-1)` -/
def P13836978162732205750.Spec : Prop :=
  ∀ n, P13836978162732205750.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P8779751022986829151

`abs(comp[n²+n]-a(n-1))` with `a(0)=1`
-/

namespace A259549.P8779751022986829151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)|

end

end A259549.P8779751022986829151

namespace A259549

/-- `abs(comp[n²+n]-a(n-1))` -/
def P8779751022986829151.Spec : Prop :=
  ∀ n, P8779751022986829151.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P5861187516549710905

`ceil(sqrt(n+1))+n-a(n-1)` with `a(0)=1`
-/

namespace A259549.P5861187516549710905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (n + 1 : ℝ)⌉ + ((n : ℤ) - a (n - 1))

end

end A259549.P5861187516549710905

namespace A259549

/-- `ceil(sqrt(n+1))+n-a(n-1)` -/
def P5861187516549710905.Spec : Prop :=
  ∀ n, P5861187516549710905.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P10181913513683013065

`∑[A071028(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259549

/-- `∑[A071028(n)]` -/
def P10181913513683013065.Spec : Prop :=
  ∀ n, P10181913513683013065.a n = A259549 (n + 1)

theorem P10181913513683013065.correct : P10181913513683013065.Spec := by
  intro n
  simp only [A259549, Nat.add_sub_cancel]

end A259549

/-! ## A259549.P15081629152033510533

`∑[char[A133280(n)]]`
-/

namespace A259549.P15081629152033510533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P15081629152033510533

namespace A259549

/-- `∑[char[A133280(n)]]` -/
def P15081629152033510533.Spec : Prop :=
  ∀ n, (P15081629152033510533.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P17442777140635160172

`∑[char[A083920(n)+n]]`
-/

namespace A259549.P17442777140635160172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P17442777140635160172

namespace A259549

/-- `∑[char[A083920(n)+n]]` -/
def P17442777140635160172.Spec : Prop :=
  ∀ n, (P17442777140635160172.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P5066937442704854030

`∑[char[A001614(n+1)-1]]`
-/

namespace A259549.P5066937442704854030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P5066937442704854030

namespace A259549

/-- `∑[char[A001614(n+1)-1]]` -/
def P5066937442704854030.Spec : Prop :=
  ∀ n, (P5066937442704854030.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P7520913732027517012

`∑[char[2*n-A003056(n)]]`
-/

namespace A259549.P7520913732027517012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A003056 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P7520913732027517012

namespace A259549

/-- `∑[char[2*n-A003056(n)]]` -/
def P7520913732027517012.Spec : Prop :=
  ∀ n, (P7520913732027517012.a n : ℤ) = A259549 (n + 1)

end A259549

/-! ## A259549.P8501681243877050684

`∑[2-gcd(2, A004737(n+1))]`
-/

namespace A259549.P8501681243877050684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A004737 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P8501681243877050684

namespace A259549

/-- `∑[2-gcd(2, A004737(n+1))]` -/
def P8501681243877050684.Spec : Prop :=
  ∀ n, P8501681243877050684.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P9502540912638838702

`1-A083920(a(n-1))+n` with `a(0)=1`
-/

namespace A259549.P9502540912638838702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A083920 (a (n - 1)).toNat + (n : ℤ)

end

end A259549.P9502540912638838702

namespace A259549

/-- `1-A083920(a(n-1))+n` -/
def P9502540912638838702.Spec : Prop :=
  ∀ n, P9502540912638838702.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P15760123619991332099

`∑[1-char[A000037(2*n+1)]]`
-/

namespace A259549.P15760123619991332099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P15760123619991332099

namespace A259549

/-- `∑[1-char[A000037(2*n+1)]]` -/
def P15760123619991332099.Spec : Prop :=
  ∀ n, P15760123619991332099.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P12063427373002923646

`∑[1-char[A127367(2*n+1)]]`
-/

namespace A259549.P12063427373002923646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127367 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P12063427373002923646

namespace A259549

/-- `∑[1-char[A127367(2*n+1)]]` -/
def P12063427373002923646.Spec : Prop :=
  ∀ n, P12063427373002923646.a n = A259549 (n + 1)

end A259549

/-! ## A259549.P15603902437128905821

`(A197702(A174091(n))+n)/2`
-/

namespace A259549.P15603902437128905821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197702 (A174091 n).toNat + (n : ℤ) : ℚ) / 2

end

end A259549.P15603902437128905821

namespace A259549

/-- `(A197702(A174091(n))+n)/2` -/
def P15603902437128905821.Spec : Prop :=
  ∀ n, P15603902437128905821.a n = (A259549 (n + 1) : ℚ)

end A259549

/-! ## A259549.P7282619214280905110

`(A078358(n+1)+A071028(n))/2`
-/

namespace A259549.P7282619214280905110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078358 (n + 1) + A071028 n : ℚ) / 2

end

end A259549.P7282619214280905110

namespace A259549

/-- `(A078358(n+1)+A071028(n))/2` -/
def P7282619214280905110.Spec : Prop :=
  ∀ n, P7282619214280905110.a n = (A259549 (n + 1) : ℚ)

end A259549

/-!
# A259550: a(n) = C(5*n-1,2*n)/3, n > 0, a(0) = 1.

The programs for A259550, there is no canonical definition to state claims against.
-/

/-! ## A259550.P7741549559904301368

`ceil(A001450(n)/5)`
-/

namespace A259550.P7741549559904301368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001450 n : ℚ) / 5⌉

end

end A259550.P7741549559904301368

/-! ## A259550.P11194082510189277201

`ceil(C(5*n, 2*n)/5)`
-/

namespace A259550.P11194082510189277201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (5 * n) (2 * n) : ℚ) / 5⌉

end

end A259550.P11194082510189277201

/-! ## A259550.P10897416853760441693

`A092392(A062725(n)+1)/2`
-/

namespace A259550.P10897416853760441693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092392 (A062725 n + 1).toNat : ℚ) / 2

end

end A259550.P10897416853760441693

/-! ## A259550.P9625140166593947914

`A009766(A022267(n))`
-/

namespace A259550.P9625140166593947914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A022267 n).toNat

end

end A259550.P9625140166593947914

/-! ## A259550.P16741157333269437325

`A115126(A140064(n))`
-/

namespace A259550.P16741157333269437325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115126 (A140064 n).toNat

end

end A259550.P16741157333269437325

/-!
# A259551: Expansion of f(x^2, x^3) * f(-x^4, -x^6) / f(-x^2) in powers of x where f(,) is the Ramanujan general theta function.

The programs for A259551, there is no canonical definition to state claims against.
-/

/-! ## A259551.P17902089111620377606

`(-1)^n*A053258(n)+A053266(n)`
-/

namespace A259551.P17902089111620377606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053258 n + A053266 n

end

end A259551.P17902089111620377606

/-! ## A259551.P7287771239702477619

`A260971(n)+A053266(n)`
-/

namespace A259551.P7287771239702477619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 n + A053266 n

end

end A259551.P7287771239702477619

/-! ## A259551.P7391904966597940523

`A260971(n)+and(A116362(n), A279135(n))`
-/

namespace A259551.P7391904966597940523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 n + Int.land (A116362 n) (A279135 n)

end

end A259551.P7391904966597940523

/-! ## A259551.P16956502080223325175

`A260971(n)+and(A088041(n+1), A279135(n))`
-/

namespace A259551.P16956502080223325175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 n + Int.land (A088041 (n + 1)) (A279135 n)

end

end A259551.P16956502080223325175

/-! ## A259551.P4057470344638619120

`A260971(n)+and(A000225(n), A279135(n))`
-/

namespace A259551.P4057470344638619120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 n + Int.land (A000225 n) (A279135 n)

end

end A259551.P4057470344638619120

/-! ## A259551.P6744937060104986344

`A260971(n)+and(A140252(n), A279135(n))`
-/

namespace A259551.P6744937060104986344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 n + Int.land (A140252 n) (A279135 n)

end

end A259551.P6744937060104986344

/-!
# A259552: a(n) = (1/4)*n^4 - (1/2)*n^3 + (3/4)*n^2 - (1/2)*n + 41.

The programs for A259552, the canonical program `A259552.P17906415267960082063` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259552 has offset 1).

The definition of A259552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259552.P17906415267960082063

`(n+1)^4/4-(n+1)^3/2+3*(n+1)²/4-(n+1)/2+41`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259552

/-- `(n+1)^4/4-(n+1)^3/2+3*(n+1)²/4-(n+1)/2+41` -/
def P17906415267960082063.Spec : Prop :=
  ∀ n, P17906415267960082063.a n = (A259552 (n + 1) : ℚ)

end A259552

/-! ## A259552.P18094334981437355720

`1/4*(n+1)^4-1/2*(n+1)^3+3/4*(n+1)²-1/2*(n+1)+41`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259552.P18094334981437355720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((n + 1) ^ 4 : ℚ) - (1 : ℚ) / 2 * ((n + 1) ^ 3 : ℚ) + (3 : ℚ) / 4 * ((n + 1) ^ 2 : ℚ) - (1 : ℚ) / 2 * (n + 1 : ℚ) + 41

end

end A259552.P18094334981437355720

namespace A259552

/-- `1/4*(n+1)^4-1/2*(n+1)^3+3/4*(n+1)²-1/2*(n+1)+41` -/
def P18094334981437355720.Spec : Prop :=
  ∀ n, P18094334981437355720.a n = (A259552 (n + 1) : ℚ)

end A259552

/-! ## A259552.P6386888538890046584

`record[(∑[2*n]+41)*char[∑[n]]]`
-/

namespace A259552.P6386888538890046584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 41) * (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259552.P6386888538890046584

namespace A259552

/-- `record[(∑[2*n]+41)*char[∑[n]]]` -/
def P6386888538890046584.Spec : Prop :=
  ∀ n, (P6386888538890046584.a n : ℤ) = A259552 (n + 1)

end A259552

/-! ## A259552.P5591983221584485029

`A202018(∑[n])`
-/

namespace A259552.P5591983221584485029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259552.P5591983221584485029

namespace A259552

/-- `A202018(∑[n])` -/
def P5591983221584485029.Spec : Prop :=
  ∀ n, P5591983221584485029.a n = A259552 (n + 1)

end A259552

/-! ## A259552.P13295294285406059242

`A342253(∑[n]+5)`
-/

namespace A259552.P13295294285406059242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A259552.P13295294285406059242

namespace A259552

/-- `A342253(∑[n]+5)` -/
def P13295294285406059242.Spec : Prop :=
  ∀ n, P13295294285406059242.a n = A259552 (n + 1)

end A259552

/-! ## A259552.P12116106180534657321

`A060566(∑[n]+40)`
-/

namespace A259552.P12116106180534657321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (∑ j ∈ Finset.range (n + 1), f1 j + 40)

end

end A259552.P12116106180534657321

namespace A259552

/-- `A060566(∑[n]+40)` -/
def P12116106180534657321.Spec : Prop :=
  ∀ n, P12116106180534657321.a n = A259552 (n + 1)

end A259552

/-! ## A259552.P5880027967474613988

`or(1, A202018(C(n+1, 2)))`
-/

namespace A259552.P5880027967474613988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202018 (Nat.choose (n + 1) 2))

end

end A259552.P5880027967474613988

namespace A259552

/-- `or(1, A202018(C(n+1, 2)))` -/
def P5880027967474613988.Spec : Prop :=
  ∀ n, P5880027967474613988.a n = A259552 (n + 1)

end A259552

/-! ## A259552.P4001957642432595530

`or(1, A202018(A000217(n)))`
-/

namespace A259552.P4001957642432595530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202018 (A000217 n).toNat)

end

end A259552.P4001957642432595530

namespace A259552

/-- `or(1, A202018(A000217(n)))` -/
def P4001957642432595530.Spec : Prop :=
  ∀ n, P4001957642432595530.a n = A259552 (n + 1)

end A259552

/-! ## A259552.P5112595752001851343

`A000041(C(2, n+2))*A202018(C(n+1, 2))`
-/

namespace A259552.P5112595752001851343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A202018 (Nat.choose (n + 1) 2)

end

end A259552.P5112595752001851343

namespace A259552

/-- `A000041(C(2, n+2))*A202018(C(n+1, 2))` -/
def P5112595752001851343.Spec : Prop :=
  ∀ n, P5112595752001851343.a n = A259552 (n + 1)

end A259552

/-!
# A259554: a(n) = Sum_{i=0..n} (2^(i)*(-1)^(i+n)*C(n,i)*C(2*n+i-1,n-1)).

The programs for A259554, there is no canonical definition to state claims against.
-/

/-! ## A259554.P15816630661378909612

`A378611(n+1)/2`
-/

namespace A259554.P15816630661378909612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378611 (n + 1) : ℚ) / 2

end

end A259554.P15816630661378909612

/-! ## A259554.P11572594317900346844

`A114496(n+1)-A156894(n+1)`
-/

namespace A259554.P11572594317900346844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114496 (n + 1) - A156894 (n + 1)

end

end A259554.P11572594317900346844

/-! ## A259554.P1841345876857616020

`A114188(2*(n+1)²)`
-/

namespace A259554.P1841345876857616020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (2 * (n + 1) ^ 2)

end

end A259554.P1841345876857616020

/-! ## A259554.P15225248683820682582

`A209414(2*(n+1)²)`
-/

namespace A259554.P15225248683820682582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209414 (2 * (n + 1) ^ 2)

end

end A259554.P15225248683820682582

/-! ## A259554.P14133045234726572749

`abs(A110511(∑[A016825(n)]))`
-/

namespace A259554.P14133045234726572749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A259554.P14133045234726572749

/-! ## A259554.P8136250909350265662

`abs(A110511(A001105(n+1)))`
-/

namespace A259554.P8136250909350265662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110511 (A001105 (n + 1)).toNat|

end

end A259554.P8136250909350265662

/-! ## A259554.P10500528607811858936

`A208660(A058331(n+1))/2`
-/

namespace A259554.P10500528607811858936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208660 (A058331 (n + 1)).toNat : ℚ) / 2

end

end A259554.P10500528607811858936

/-! ## A259554.P3157054946201367298

`A011117(2*(n+1)²)`
-/

namespace A259554.P3157054946201367298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (2 * (n + 1) ^ 2)

end

end A259554.P3157054946201367298

/-! ## A259554.P11022714787242480645

`A104219(A056220(n+1))`
-/

namespace A259554.P11022714787242480645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A056220 (n + 1)).toNat

end

end A259554.P11022714787242480645

/-!
# A259555: a(n) = 2*n^2 - 2*n + 17.

The programs for A259555, the canonical program `A259555.P7816943564928333054` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259555 has offset 1).

The definition of A259555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-2*(n+1)+17` (program `A259555.P7816943564928333054`, by `A259555.P7816943564928333054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259555.P16748482353005048695

`a(n-1)+4*n` with `a(0)=17`
-/

namespace A259555.P16748482353005048695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17] fun n a =>
  a (n - 1) + 4 * n

end

end A259555.P16748482353005048695

namespace A259555

/-- `a(n-1)+4*n` -/
def P16748482353005048695.Spec : Prop :=
  ∀ n, (P16748482353005048695.a n : ℤ) = A259555 (n + 1)

theorem P16748482353005048695.correct : P16748482353005048695.Spec := by
  intro n
  induction n with
  | zero => simp [A259555, A259555.P16748482353005048695.a, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A259555, Nat.add_sub_cancel, A259555.P16748482353005048695.a, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A259555

/-! ## A259555.P7816943564928333054

`2*(n+1)²-2*(n+1)+17`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259555

/-- `2*(n+1)²-2*(n+1)+17` -/
def P7816943564928333054.Spec : Prop :=
  ∀ n, P7816943564928333054.a n = A259555 (n + 1)

theorem P7816943564928333054.correct : P7816943564928333054.Spec := by
  intro n
  simp only [A259555, Nat.add_sub_cancel]

end A259555

/-! ## A259555.P2791049539316770211

`∑[a(n-1)+4]` with `a(0)=17, a(1)=4`
-/

namespace A259555.P2791049539316770211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259555.P2791049539316770211

namespace A259555

/-- `∑[a(n-1)+4]` -/
def P2791049539316770211.Spec : Prop :=
  ∀ n, (P2791049539316770211.a n : ℤ) = A259555 (n + 1)

end A259555

/-! ## A259555.P16725160996786501829

`xor(1, 2*(n²+8+n))`
-/

namespace A259555.P16725160996786501829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (n ^ 2 + 8 + n))

end

end A259555.P16725160996786501829

namespace A259555

/-- `xor(1, 2*(n²+8+n))` -/
def P16725160996786501829.Spec : Prop :=
  ∀ n, (P16725160996786501829.a n : ℤ) = A259555 (n + 1)

end A259555

/-! ## A259555.P11259982954629815586

`abs(A142463(n)+18)`
-/

namespace A259555.P11259982954629815586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142463 n + 18|

end

end A259555.P11259982954629815586

namespace A259555

/-- `abs(A142463(n)+18)` -/
def P11259982954629815586.Spec : Prop :=
  ∀ n, P11259982954629815586.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P14711460301522844292

`or(A046092(n)+17, char[A218725(n)])`
-/

namespace A259555.P14711460301522844292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218725 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046092 n + 17) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A259555.P14711460301522844292

namespace A259555

/-- `or(A046092(n)+17, char[A218725(n)])` -/
def P14711460301522844292.Spec : Prop :=
  ∀ n, P14711460301522844292.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P18177302619464653431

`A158398(n+1)%A158634(n+1)`
-/

namespace A259555.P18177302619464653431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158398 (n + 1)) (A158634 (n + 1))

end

end A259555.P18177302619464653431

namespace A259555

/-- `A158398(n+1)%A158634(n+1)` -/
def P18177302619464653431.Spec : Prop :=
  ∀ n, P18177302619464653431.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P4046268472596906347

`record[18-A188653(n+1)]`
-/

namespace A259555.P4046268472596906347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 - A188653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259555.P4046268472596906347

namespace A259555

/-- `record[18-A188653(n+1)]` -/
def P4046268472596906347.Spec : Prop :=
  ∀ n, P4046268472596906347.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P4644913714454179777

`(A014209(2*n)-A023478(2*n+1))/2`
-/

namespace A259555.P4644913714454179777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014209 (2 * n) - A023478 (2 * n + 1) : ℚ) / 2

end

end A259555.P4644913714454179777

namespace A259555

/-- `(A014209(2*n)-A023478(2*n+1))/2` -/
def P4644913714454179777.Spec : Prop :=
  ∀ n, P4644913714454179777.a n = (A259555 (n + 1) : ℚ)

theorem P4644913714454179777.correct : P4644913714454179777.Spec := by
  intro n
  simp only [A259555, Nat.add_sub_cancel, A259555.P4644913714454179777.a, A259555.P7816943564928333054.a, A014209, A014209.P8391054817103649375.a, A023478, A023478.P13335276018786921324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259555

/-! ## A259555.P13921629681983449390

`record[A286145(n)+17]`
-/

namespace A259555.P13921629681983449390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259555.P13921629681983449390

namespace A259555

/-- `record[A286145(n)+17]` -/
def P13921629681983449390.Spec : Prop :=
  ∀ n, P13921629681983449390.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P151070391456621992

`A004766(∑[n]+4)`
-/

namespace A259555.P151070391456621992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259555.P151070391456621992

namespace A259555

/-- `A004766(∑[n]+4)` -/
def P151070391456621992.Spec : Prop :=
  ∀ n, P151070391456621992.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P14215942503278549341

`A016813(∑[n]+4)`
-/

namespace A259555.P14215942503278549341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259555.P14215942503278549341

namespace A259555

/-- `A016813(∑[n]+4)` -/
def P14215942503278549341.Spec : Prop :=
  ∀ n, P14215942503278549341.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P7784283827348241864

`A222945(∑[n]+4)`
-/

namespace A259555.P7784283827348241864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259555.P7784283827348241864

namespace A259555

/-- `A222945(∑[n]+4)` -/
def P7784283827348241864.Spec : Prop :=
  ∀ n, P7784283827348241864.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P8568470514294633981

`A004273(A027694(n))`
-/

namespace A259555.P8568470514294633981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A027694 n).toNat

end

end A259555.P8568470514294633981

namespace A259555

/-- `A004273(A027694(n))` -/
def P8568470514294633981.Spec : Prop :=
  ∀ n, P8568470514294633981.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P13637429282326122314

`A005818(A027692(n))`
-/

namespace A259555.P13637429282326122314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A027692 n).toNat

end

end A259555.P13637429282326122314

namespace A259555

/-- `A005818(A027692(n))` -/
def P13637429282326122314.Spec : Prop :=
  ∀ n, P13637429282326122314.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P7499130924568611986

`A020742(A027690(n))`
-/

namespace A259555.P7499130924568611986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A027690 n).toNat

end

end A259555.P7499130924568611986

namespace A259555

/-- `A020742(A027690(n))` -/
def P7499130924568611986.Spec : Prop :=
  ∀ n, P7499130924568611986.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P10851304200029904074

`A004276(A048058(n))`
-/

namespace A259555.P10851304200029904074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A048058 n).toNat

end

end A259555.P10851304200029904074

namespace A259555

/-- `A004276(A048058(n))` -/
def P10851304200029904074.Spec : Prop :=
  ∀ n, P10851304200029904074.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P1698546503702887031

`A033465(A027693(n))`
-/

namespace A259555.P1698546503702887031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A027693 n).toNat

end

end A259555.P1698546503702887031

namespace A259555

/-- `A033465(A027693(n))` -/
def P1698546503702887031.Spec : Prop :=
  ∀ n, P1698546503702887031.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P7552078027335142709

`A004274(A187710(n))`
-/

namespace A259555.P7552078027335142709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A187710 n).toNat

end

end A259555.P7552078027335142709

namespace A259555

/-- `A004274(A187710(n))` -/
def P7552078027335142709.Spec : Prop :=
  ∀ n, P7552078027335142709.a n = A259555 (n + 1)

end A259555

/-! ## A259555.P1387755794023826916

`A168203(A027691(n))`
-/

namespace A259555.P1387755794023826916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168203 (A027691 n).toNat

end

end A259555.P1387755794023826916

namespace A259555

/-- `A168203(A027691(n))` -/
def P1387755794023826916.Spec : Prop :=
  ∀ n, P1387755794023826916.a n = A259555 (n + 1)

end A259555

/-!
# A259556: Rectangular array, read by antidiagonals: T(h,k) = u(h) + v(k), where u = A000201 (lower Wythoff numbers), v = A001950 (upper Wythoff numbers), and h >= 1, k >= 1.

The programs for A259556, the canonical program `A259556.P7131408588609023786` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259556 has offset 1).

The definition of A259556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259556.P7131408588609023786

`A001950(A004736(n+1))+A000201(A002260(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259556

/-- `A001950(A004736(n+1))+A000201(A002260(n+1))` -/
def P7131408588609023786.Spec : Prop :=
  ∀ n, P7131408588609023786.a n = A259556 (n + 1)

theorem P7131408588609023786.correct : P7131408588609023786.Spec := by
  intro n
  simp only [A259556, Nat.add_sub_cancel]

end A259556

/-! ## A259556.P3206822460480512675

`A001950(A025581(n)+1)+A000201(A002260(n+1))`
-/

namespace A259556.P3206822460480512675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A025581 n + 1).toNat + A000201 (A002260 (n + 1)).toNat

end

end A259556.P3206822460480512675

namespace A259556

/-- `A001950(A025581(n)+1)+A000201(A002260(n+1))` -/
def P3206822460480512675.Spec : Prop :=
  ∀ n, P3206822460480512675.a n = A259556 (n + 1)

end A259556

/-!
# A259557: a(n) = binomial(4*n-1, 2*n).

The programs for A259557, there is no canonical definition to state claims against.
-/

/-! ## A259557.P9149850841999447421

`record[(2/n-4)*a(n-1)]` with `a(0)=1, a(1)=-1`
-/

namespace A259557.P9149850841999447421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (2 / (n : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259557.P9149850841999447421

/-! ## A259557.P7488926134195234071

`record[A110556(n)]`
-/

namespace A259557.P7488926134195234071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259557.P7488926134195234071

/-! ## A259557.P6571518661295502901

`A088218(2*n)`
-/

namespace A259557.P6571518661295502901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (2 * n)

end

end A259557.P6571518661295502901

/-! ## A259557.P12839564983358695336

`A110556(2*n)`
-/

namespace A259557.P12839564983358695336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 (2 * n)

end

end A259557.P12839564983358695336

/-! ## A259557.P8896935352450032644

`A210736(4*n)`
-/

namespace A259557.P8896935352450032644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (4 * n)

end

end A259557.P8896935352450032644

/-! ## A259557.P3254144282599578738

`A193382(8*n)`
-/

namespace A259557.P3254144282599578738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193382 (8 * n)

end

end A259557.P3254144282599578738

/-! ## A259557.P14123834426803372010

`ceil(A001448(n)/2)`
-/

namespace A259557.P14123834426803372010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001448 n : ℚ) / 2⌉

end

end A259557.P14123834426803372010

/-! ## A259557.P5814869313344677798

`A193632(∑[n]+n)`
-/

namespace A259557.P5814869313344677798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193632 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A259557.P5814869313344677798

/-! ## A259557.P10941387182425109393

`A260878(2*n)-1`
-/

namespace A259557.P10941387182425109393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 (2 * n) - 1

end

end A259557.P10941387182425109393

/-! ## A259557.P9280610023512798836

`ceil(A000984(2*n)/2)`
-/

namespace A259557.P9280610023512798836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000984 (2 * n) : ℚ) / 2⌉

end

end A259557.P9280610023512798836

/-!
# A259558: Numbers n such that prime(n)-1 and prime(n+1)-1 have the same number of distinct prime factors.

The programs for A259558, the canonical program `A259558.P10968134983978428309` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259558 has offset 1).

The definition of A259558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259558.P10968134983978428309

`eq[A008334(n+2), A008334(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259558

/-- `eq[A008334(n+2), A008334(n+1)]+1` -/
def P10968134983978428309.Spec : Prop :=
  ∀ n, (P10968134983978428309.a n : ℤ) = A259558 (n + 1)

theorem P10968134983978428309.correct : P10968134983978428309.Spec := by
  intro n
  simp only [A259558, Nat.add_sub_cancel]

end A259558

/-! ## A259558.P54023490725284635

`eq[A008334(n+1), A008334(A000038(n)+n)]`
-/

namespace A259558.P54023490725284635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259558.P54023490725284635

namespace A259558

/-- `eq[A008334(n+1), A008334(A000038(n)+n)]` -/
def P54023490725284635.Spec : Prop :=
  ∀ n, (P54023490725284635.a n : ℤ) = A259558 (n + 1)

end A259558

/-! ## A259558.P2921570145669787486

`2*n+1-A343493(A068336(n+3))`
-/

namespace A259558.P2921570145669787486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A343493 (A068336 (n + 3)).toNat

end

end A259558.P2921570145669787486

namespace A259558

/-- `2*n+1-A343493(A068336(n+3))` -/
def P2921570145669787486.Spec : Prop :=
  ∀ n, P2921570145669787486.a n = A259558 (n + 1)

end A259558

/-! ## A259558.P11100872178270477403

`A054385(n+1)+A007895(A006138(n))`
-/

namespace A259558.P11100872178270477403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + A007895 (A006138 n).toNat

end

end A259558.P11100872178270477403

namespace A259558

/-- `A054385(n+1)+A007895(A006138(n))` -/
def P11100872178270477403.Spec : Prop :=
  ∀ n, P11100872178270477403.a n = A259558 (n + 1)

end A259558

/-! ## A259558.P4879986831853375759

`A001969(n+2)-A000035(A268026(n+1))`
-/

namespace A259558.P4879986831853375759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2) - A000035 (A268026 (n + 1)).toNat

end

end A259558.P4879986831853375759

namespace A259558

/-- `A001969(n+2)-A000035(A268026(n+1))` -/
def P4879986831853375759.Spec : Prop :=
  ∀ n, P4879986831853375759.a n = A259558 (n + 1)

end A259558

/-!
# A259559: Numbers n such that prime(n)-1 and prime(n+1)-1 have the same number of prime factors, including repeats.

The programs for A259559, there is no canonical definition to state claims against.
-/

/-! ## A259559.P14197450432011038385

`eq[A023508(n+2), A023508(n+3)]+2`
-/

namespace A259559.P14197450432011038385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A259559.P14197450432011038385

/-!
# A259560: Primes p such that p = 2kq + 1 for k a positive integer, q an odd prime and 2k <= q - 3.

The programs for A259560, there is no canonical definition to state claims against.
-/

/-! ## A259560.P58735397071196513

`A111668(A249407(n+2))`
-/

namespace A259560.P58735397071196513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (A249407 (n + 2)).toNat

end

end A259560.P58735397071196513

/-! ## A259560.P2711984173371439627

`A111668(A360305(n+2))`
-/

namespace A259560.P2711984173371439627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (A360305 (n + 2)).toNat

end

end A259560.P2711984173371439627

/-! ## A259560.P6194822678856545471

`filter[A111668(n+1), A267773(#)]`
-/

namespace A259560.P6194822678856545471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A259560.P6194822678856545471

/-! ## A259560.P1475918646701021640

`∩[A080037(n), A111668(n+1)]`
-/

namespace A259560.P1475918646701021640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259560.P1475918646701021640

/-! ## A259560.P1897923273323656943

`∩[A111668(n+1), A265412(n)]`
-/

namespace A259560.P1897923273323656943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259560.P1897923273323656943

/-! ## A259560.P17597533721246909734

`∩[A111668(n+1), A121658(n+1)]`
-/

namespace A259560.P17597533721246909734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259560.P17597533721246909734

/-! ## A259560.P15971694159335844102

`∩[A111668(n+1), A135668(n+1)]`
-/

namespace A259560.P15971694159335844102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259560.P15971694159335844102

/-!
# A259561: Numbers k such that k^2+2 is the product of a Fibonacci number and a Lucas number.

The programs for A259561, there is no canonical definition to state claims against.
-/

/-! ## A259561.P3764038303264830861

`lt[n, A000415(A197169(n+4))]`
-/

namespace A259561.P3764038303264830861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (A197169 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A259561.P3764038303264830861

/-! ## A259561.P4941519192942408633

`lt[A004526(n), A303434(A197169(n+4))]`
-/

namespace A259561.P4941519192942408633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303434 (A197169 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A259561.P4941519192942408633

/-! ## A259561.P17474641823203984225

`lt[A069011(n), A285015(A197169(n+4))]`
-/

namespace A259561.P17474641823203984225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (A197169 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A259561.P17474641823203984225

/-! ## A259561.P10325930523066068852

`lt[A022544(n+1), A197127(A197169(n+4))]`
-/

namespace A259561.P10325930523066068852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (A197169 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A259561.P10325930523066068852

/-! ## A259561.P18337580595071147077

`lt[A001481(n+1), A285015(A197169(n+4))]`
-/

namespace A259561.P18337580595071147077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (A197169 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A259561.P18337580595071147077

/-!
# A259564: Numbers n such that the sum of the prime factors (including repeats) of prime(n)-1 and prime(n+1)-1 are the same.

The programs for A259564, there is no canonical definition to state claims against.
-/

/-! ## A259564.P752152371008544527

`eq[A210936(abs(2-n)+2), A210936(n+1)]`
-/

namespace A259564.P752152371008544527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (|2 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259564.P752152371008544527

/-! ## A259564.P10988457572470571238

`A180410(A326293(n+2))+A008443(A056971(n))`
-/

namespace A259564.P10988457572470571238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (A326293 (n + 2)).toNat + A008443 (A056971 n).toNat

end

end A259564.P10988457572470571238

/-!
# A259565: a(1) = 1, for n > 1 a(n) = smallest number not already in the sequence such that the arithmetic mean of two neighboring terms is a squarefree number.

The programs for A259565, there is no canonical definition to state claims against.
-/

/-! ## A259565.P2869237707695203779

`A267299(2*n+1)%record[A136034(2*n+3)]`
-/

namespace A259565.P2869237707695203779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136034 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267299 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259565.P2869237707695203779

/-! ## A259565.P3975321441897207020

`A267299(2*n+1)%A002623(A024537(n))`
-/

namespace A259565.P3975321441897207020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267299 (2 * n + 1)) (A002623 (A024537 n).toNat)

end

end A259565.P3975321441897207020

/-! ## A259565.P7910951195457542784

`A267299(2*n+1)+A010054(A000079(n+2))`
-/

namespace A259565.P7910951195457542784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267299 (2 * n + 1) + A010054 (A000079 (n + 2)).toNat

end

end A259565.P7910951195457542784

/-! ## A259565.P12195492134294140502

`A039963(A326117(n+4))*A267299(2*n+1)`
-/

namespace A259565.P12195492134294140502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A326117 (n + 4)).toNat * A267299 (2 * n + 1)

end

end A259565.P12195492134294140502

/-! ## A259565.P14515797051297122432

`A267299(2*n+1)^A267265(A298589(n+1))`
-/

namespace A259565.P14515797051297122432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267299 (2 * n + 1) : ℚ) ^ (A267265 (A298589 (n + 1)).toNat : ℤ)

end

end A259565.P14515797051297122432

/-!
# A259566: Numbers following gaps in the sequence of base-3 numbers that don't contain 0.

The programs for A259566, the canonical program `A259566.P1447897168910659284` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259566 has offset 1).

The definition of A259566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259566.P1447897168910659284

`A032924(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259566

/-- `A032924(2*n+1)` -/
def P1447897168910659284.Spec : Prop :=
  ∀ n, P1447897168910659284.a n = A259566 (n + 1)

theorem P1447897168910659284.correct : P1447897168910659284.Spec := by
  intro n
  simp only [A259566, Nat.add_sub_cancel]

end A259566

/-! ## A259566.P10809500150661570844

`record[3*(a(floor(n/2))+n%2)+1]` with `a(0)=1, a(1)=0`
-/

namespace A259566.P10809500150661570844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * (f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259566.P10809500150661570844

namespace A259566

/-- `record[3*(a(floor(n/2))+n%2)+1]` -/
def P10809500150661570844.Spec : Prop :=
  ∀ n, (P10809500150661570844.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P9861859042984379755

`record[3*(a(floor(n/2))-(or(1, n)-(n+1)))+1]` with `a(0)=1, a(1)=0`
-/

namespace A259566.P9861859042984379755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * (f1 ⌊(n : ℚ) / 2⌋.toNat - ((Nat.lor 1 n : ℤ) - (n + 1 : ℤ))) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259566.P9861859042984379755

namespace A259566

/-- `record[3*(a(floor(n/2))-(or(1, n)-(n+1)))+1]` -/
def P9861859042984379755.Spec : Prop :=
  ∀ n, P9861859042984379755.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P11984623750045820290

`A191109(n+2)-1`
-/

namespace A259566.P11984623750045820290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) - 1

end

end A259566.P11984623750045820290

namespace A259566

/-- `A191109(n+2)-1` -/
def P11984623750045820290.Spec : Prop :=
  ∀ n, P11984623750045820290.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P8563117945168106408

`∑[abs(Δ[A191109(n+1)])]`
-/

namespace A259566.P8563117945168106408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259566.P8563117945168106408

namespace A259566

/-- `∑[abs(Δ[A191109(n+1)])]` -/
def P8563117945168106408.Spec : Prop :=
  ∀ n, P8563117945168106408.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P22399437963142144

`record[A032924(n^(n%2))]`
-/

namespace A259566.P22399437963142144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259566.P22399437963142144

namespace A259566

/-- `record[A032924(n^(n%2))]` -/
def P22399437963142144.Spec : Prop :=
  ∀ n, P22399437963142144.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P8483021877613608606

`record[A032924(n^and(1, n))]`
-/

namespace A259566.P8483021877613608606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259566.P8483021877613608606

namespace A259566

/-- `record[A032924(n^and(1, n))]` -/
def P8483021877613608606.Spec : Prop :=
  ∀ n, P8483021877613608606.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P8867297135619110820

`record[A032924(gcd(n, or(1, n)))]`
-/

namespace A259566.P8867297135619110820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (Nat.gcd n (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259566.P8867297135619110820

namespace A259566

/-- `record[A032924(gcd(n, or(1, n)))]` -/
def P8867297135619110820.Spec : Prop :=
  ∀ n, P8867297135619110820.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P14848570179749917782

`A153775(2*(n+1))-1`
-/

namespace A259566.P14848570179749917782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (2 * (n + 1)) - 1

end

end A259566.P14848570179749917782

namespace A259566

/-- `A153775(2*(n+1))-1` -/
def P14848570179749917782.Spec : Prop :=
  ∀ n, P14848570179749917782.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P1204512383750919461

`A048787(A132140(n+1))`
-/

namespace A259566.P1204512383750919461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048787 (A132140 (n + 1)).toNat

end

end A259566.P1204512383750919461

namespace A259566

/-- `A048787(A132140(n+1))` -/
def P1204512383750919461.Spec : Prop :=
  ∀ n, P1204512383750919461.a n = A259566 (n + 1)

end A259566

/-! ## A259566.P2898601066260692485

`∩[A032924(n+1), A056991(n+1)]`
-/

namespace A259566.P2898601066260692485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P2898601066260692485

namespace A259566

/-- `∩[A032924(n+1), A056991(n+1)]` -/
def P2898601066260692485.Spec : Prop :=
  ∀ n, (P2898601066260692485.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P15781340934107903323

`∩[A032924(n+1), A242660(n+1)]`
-/

namespace A259566.P15781340934107903323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P15781340934107903323

namespace A259566

/-- `∩[A032924(n+1), A242660(n+1)]` -/
def P15781340934107903323.Spec : Prop :=
  ∀ n, (P15781340934107903323.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P14859815219207415719

`∩[A032924(n+1), A016777(n)]`
-/

namespace A259566.P14859815219207415719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P14859815219207415719

namespace A259566

/-- `∩[A032924(n+1), A016777(n)]` -/
def P14859815219207415719.Spec : Prop :=
  ∀ n, (P14859815219207415719.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P10633959163982421831

`∩[A026140(n+1), A032924(n+1)]`
-/

namespace A259566.P10633959163982421831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P10633959163982421831

namespace A259566

/-- `∩[A026140(n+1), A032924(n+1)]` -/
def P10633959163982421831.Spec : Prop :=
  ∀ n, (P10633959163982421831.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P4339518395353504970

`∩[A026225(n+1), A032924(n+1)]`
-/

namespace A259566.P4339518395353504970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P4339518395353504970

namespace A259566

/-- `∩[A026225(n+1), A032924(n+1)]` -/
def P4339518395353504970.Spec : Prop :=
  ∀ n, (P4339518395353504970.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P4814950495582302757

`∩[A029739(n+1), A032924(n+1)]`
-/

namespace A259566.P4814950495582302757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P4814950495582302757

namespace A259566

/-- `∩[A029739(n+1), A032924(n+1)]` -/
def P4814950495582302757.Spec : Prop :=
  ∀ n, (P4814950495582302757.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P11728027302102736849

`∩[A032924(n+1), A047234(n+1)]`
-/

namespace A259566.P11728027302102736849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P11728027302102736849

namespace A259566

/-- `∩[A032924(n+1), A047234(n+1)]` -/
def P11728027302102736849.Spec : Prop :=
  ∀ n, (P11728027302102736849.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P17717755925870584139

`∩[A032924(n+1), A055047(n+1)]`
-/

namespace A259566.P17717755925870584139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P17717755925870584139

namespace A259566

/-- `∩[A032924(n+1), A055047(n+1)]` -/
def P17717755925870584139.Spec : Prop :=
  ∀ n, (P17717755925870584139.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P12349428946903471014

`∩[A032924(n+1), A189715(n+1)]`
-/

namespace A259566.P12349428946903471014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P12349428946903471014

namespace A259566

/-- `∩[A032924(n+1), A189715(n+1)]` -/
def P12349428946903471014.Spec : Prop :=
  ∀ n, (P12349428946903471014.a n : ℤ) = A259566 (n + 1)

end A259566

/-! ## A259566.P13685418337270779129

`∩[A032924(n+1), A244713(n+1)]`
-/

namespace A259566.P13685418337270779129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259566.P13685418337270779129

namespace A259566

/-- `∩[A032924(n+1), A244713(n+1)]` -/
def P13685418337270779129.Spec : Prop :=
  ∀ n, (P13685418337270779129.a n : ℤ) = A259566 (n + 1)

end A259566

/-!
# A259568: Numbers following gaps in the sequence of base-4 numbers that don't contain 0.

The programs for A259568, there is no canonical definition to state claims against.
-/

/-! ## A259568.P3249392609009160413

`record[gcd(4*n+1, A292370(n))]`
-/

namespace A259568.P3249392609009160413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 1 : ℤ) (A292370 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259568.P3249392609009160413

/-! ## A259568.P5952378905882286178

`A023705(3*n+1)`
-/

namespace A259568.P5952378905882286178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (3 * n + 1)

end

end A259568.P5952378905882286178

/-! ## A259568.P6850675054259279315

`record[and(-3, A023705(n+1))]`
-/

namespace A259568.P6850675054259279315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A023705 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259568.P6850675054259279315

/-! ## A259568.P8316751881472593790

`or(1, A023705(A016777(n)))`
-/

namespace A259568.P8316751881472593790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023705 (A016777 n).toNat)

end

end A259568.P8316751881472593790

/-! ## A259568.P6749076891899478922

`A023705(n+2+n+n)-1`
-/

namespace A259568.P6749076891899478922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 2 + n + n) - 1

end

end A259568.P6749076891899478922

/-! ## A259568.P14306011914169033962

`4*record[n/A277872(n)]+1`
-/

namespace A259568.P14306011914169033962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A277872 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A259568.P14306011914169033962

/-! ## A259568.P2375310791215040415

`record[(4*n+1)*(1-A160380(n))]`
-/

namespace A259568.P2375310791215040415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * (1 - A160380 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259568.P2375310791215040415

/-! ## A259568.P15774540379529536150

`∩[A023705(n+1), A016813(n)]`
-/

namespace A259568.P15774540379529536150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P15774540379529536150

/-! ## A259568.P6338398164816184552

`∩[4*n, A023706(n+1)]+1`
-/

namespace A259568.P6338398164816184552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259568.P6338398164816184552

/-! ## A259568.P12550319645575575692

`∩[A023705(n+1), A277549(n+1)]`
-/

namespace A259568.P12550319645575575692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P12550319645575575692

/-! ## A259568.P9803702008428861348

`∩[A023705(n+1), A047610(n+1)]`
-/

namespace A259568.P9803702008428861348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P9803702008428861348

/-! ## A259568.P4765053340567231709

`∩[A023705(n+1), A047616(n+1)]`
-/

namespace A259568.P4765053340567231709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P4765053340567231709

/-! ## A259568.P15392577875210238770

`∩[A023705(n+1), A230239(n+1)]`
-/

namespace A259568.P15392577875210238770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P15392577875210238770

/-! ## A259568.P16678794667937738260

`∩[A023705(n+1), A042948(n)]`
-/

namespace A259568.P16678794667937738260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P16678794667937738260

/-! ## A259568.P1328016341156624379

`∩[A023705(n+1), A100832(n+1)]`
-/

namespace A259568.P1328016341156624379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259568.P1328016341156624379

/-! ## A259568.P4779716820844766125

`eq[A292370(n), A324300(n)]`
-/

namespace A259568.P4779716820844766125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259568.P4779716820844766125

/-! ## A259568.P18306164258093400011

`eq[A008425(n), A160380(n)]`
-/

namespace A259568.P18306164258093400011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259568.P18306164258093400011

/-! ## A259568.P3844999477328067568

`eq[A003815(n), A277872(n)]`
-/

namespace A259568.P3844999477328067568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259568.P3844999477328067568

/-! ## A259568.P350118258453120472

`eq[A009531(n), A277872(n)]`
-/

namespace A259568.P350118258453120472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259568.P350118258453120472

/-! ## A259568.P6457339672263614628

`eq[A008425(n), A292370(n)]`
-/

namespace A259568.P6457339672263614628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259568.P6457339672263614628

/-!
# A259570: Smallest m such that A259565(m) = 2*n-1.

The programs for A259570, there is no canonical definition to state claims against.
-/

/-! ## A259570.P6139048522609697138

`A133256(A127288(n+1)%p?[A127288(n)])`
-/

namespace A259570.P6139048522609697138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (Int.tmod (A127288 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A259570.P6139048522609697138

/-! ## A259570.P1026138070571297291

`A257677(n+2)-A000265(A000079(n))`
-/

namespace A259570.P1026138070571297291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (n + 2) - A000265 (A000079 n).toNat

end

end A259570.P1026138070571297291

/-! ## A259570.P15051181621242706824

`A257677(n+2)-A132199(A022096(n))`
-/

namespace A259570.P15051181621242706824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (n + 2) - A132199 (A022096 n).toNat

end

end A259570.P15051181621242706824

/-! ## A259570.P12131200267594154017

`A257677(n+2)-A000045(∑[A091536(n)])`
-/

namespace A259570.P12131200267594154017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (n + 2) - A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259570.P12131200267594154017

/-! ## A259570.P15460727124824929856

`A257677(n+2)-A257679(A137702(n+1))`
-/

namespace A259570.P15460727124824929856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (n + 2) - A257679 (A137702 (n + 1)).toNat

end

end A259570.P15460727124824929856

/-!
# A259572: Reciprocity array of 0; rectangular, read by antidiagonals.

The programs for A259572, the canonical program `A259572.P4293494890795653436` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259572 has offset 1).

The definition of A259572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259572.P1411900471879232573

`A259575(n+1)-A054431(n+1)`
-/

namespace A259572.P1411900471879232573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259575 (n + 1) - A054431 (n + 1)

end

end A259572.P1411900471879232573

namespace A259572

/-- `A259575(n+1)-A054431(n+1)` -/
def P1411900471879232573.Spec : Prop :=
  ∀ n, P1411900471879232573.a n = A259572 (n + 1)

theorem P1411900471879232573.correct : P1411900471879232573.Spec := by
  intro n
  simp only [A259572, Nat.add_sub_cancel, A259572.P1411900471879232573.a, A259572.P4293494890795653436.a, A003989, A003989.P17625825116561089887.a, A004247, A004247.P2751605162508615148.a, A004526, A004526.P10084182425416171735.a, A054431, A054431.P5825808231892718128.a, A259575, A259575.P7201171947853536315.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259572

/-! ## A259572.P14283915184787596266

`(A003991(n+1)-A074712(n+1))/2`
-/

namespace A259572.P14283915184787596266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) - A074712 (n + 1) : ℚ) / 2

end

end A259572.P14283915184787596266

namespace A259572

/-- `(A003991(n+1)-A074712(n+1))/2` -/
def P14283915184787596266.Spec : Prop :=
  ∀ n, P14283915184787596266.a n = (A259572 (n + 1) : ℚ)

end A259572

/-! ## A259572.P4293494890795653436

`A004526(A004247(n)+A003989(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259572

/-- `A004526(A004247(n)+A003989(n+1))` -/
def P4293494890795653436.Spec : Prop :=
  ∀ n, P4293494890795653436.a n = A259572 (n + 1)

theorem P4293494890795653436.correct : P4293494890795653436.Spec := by
  intro n
  simp only [A259572, Nat.add_sub_cancel]

end A259572

/-! ## A259572.P8780505988334557305

`A025480(A004247(n)+A003989(n+1)-1)`
-/

namespace A259572.P8780505988334557305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004247 n + A003989 (n + 1) - 1).toNat

end

end A259572.P8780505988334557305

namespace A259572

/-- `A025480(A004247(n)+A003989(n+1)-1)` -/
def P8780505988334557305.Spec : Prop :=
  ∀ n, P8780505988334557305.a n = A259572 (n + 1)

end A259572

/-! ## A259572.P9532963931157856022

`A004526(A003991(n+1)-A074712(n+1))`
-/

namespace A259572.P9532963931157856022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003991 (n + 1) - A074712 (n + 1)).toNat

end

end A259572.P9532963931157856022

namespace A259572

/-- `A004526(A003991(n+1)-A074712(n+1))` -/
def P9532963931157856022.Spec : Prop :=
  ∀ n, P9532963931157856022.a n = A259572 (n + 1)

end A259572

/-! ## A259572.P12835068935754575262

`A078898(A003991(n+1)-A074712(n+1))`
-/

namespace A259572.P12835068935754575262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003991 (n + 1) - A074712 (n + 1)).toNat

end

end A259572.P12835068935754575262

namespace A259572

/-- `A078898(A003991(n+1)-A074712(n+1))` -/
def P12835068935754575262.Spec : Prop :=
  ∀ n, P12835068935754575262.a n = A259572 (n + 1)

end A259572

/-! ## A259572.P9266519701662271780

`A055941(A038871(n+2))`
-/

namespace A259572.P9266519701662271780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A038871 (n + 2)).toNat

end

end A259572.P9266519701662271780

namespace A259572

/-- `A055941(A038871(n+2))` -/
def P9266519701662271780.Spec : Prop :=
  ∀ n, P9266519701662271780.a n = A259572 (n + 1)

end A259572

/-!
# A259573: Number of distinct differences in row n of the reciprocity array of 0.

The programs for A259573, there is no canonical definition to state claims against.
-/

/-! ## A259573.P56230658186219435

`A005811(A063750(n+1))+n%2`
-/

namespace A259573.P56230658186219435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A063750 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A259573.P56230658186219435

/-! ## A259573.P14202972168418623758

`A005811(A063750(n+1))+A000035(n)`
-/

namespace A259573.P14202972168418623758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A063750 (n + 1)).toNat + A000035 n

end

end A259573.P14202972168418623758

/-! ## A259573.P314796983083273667

`A005811(A000034(n)*A063750(n+1))`
-/

namespace A259573.P314796983083273667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A000034 n * A063750 (n + 1)).toNat

end

end A259573.P314796983083273667

/-! ## A259573.P10981751758028774690

`A005811(lcm(A000034(n), A063750(n+1)))`
-/

namespace A259573.P10981751758028774690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.lcm (A000034 n) (A063750 (n + 1)))

end

end A259573.P10981751758028774690

/-! ## A259573.P4599675510512938972

`A005811(A063750(n+1))+Δ[A004526(n)]`
-/

namespace A259573.P4599675510512938972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A063750 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A259573.P4599675510512938972

/-!
# A259574: Sum of numbers in the n-th antidiagonal of the reciprocity array of 0.

The programs for A259574, there is no canonical definition to state claims against.
-/

/-! ## A259574.P10453769712715436590

`A259577(n+1)-Δ[A002088(n)]`
-/

namespace A259574.P10453769712715436590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259577 (n + 1) - (f1 (n + 1) - f1 n)

end

end A259574.P10453769712715436590

/-! ## A259574.P5533617526175269812

`A259577(n+1)-Δ[A005728(n)]`
-/

namespace A259574.P5533617526175269812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259577 (n + 1) - (f1 (n + 1) - f1 n)

end

end A259574.P5533617526175269812

/-! ## A259574.P4120881840868075853

`A259577(n+1)-A000010(n+1)`
-/

namespace A259574.P4120881840868075853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259577 (n + 1) - A000010 (n + 1)

end

end A259574.P4120881840868075853

/-! ## A259574.P595893549872235885

`A259577(n+1)-A349137(A005408(n))`
-/

namespace A259574.P595893549872235885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259577 (n + 1) - A349137 (A005408 n).toNat

end

end A259574.P595893549872235885

/-! ## A259574.P17856556326021941545

`A259577(n+1)-A127465(A000124(n))`
-/

namespace A259574.P17856556326021941545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259577 (n + 1) - A127465 (A000124 n).toNat

end

end A259574.P17856556326021941545

/-! ## A259574.P9334584689584031914

`A259577(n+1)-A059379(∑[n]+1)`
-/

namespace A259574.P9334584689584031914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259577 (n + 1) - A059379 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259574.P9334584689584031914

/-!
# A259575: Reciprocity array of 1; rectangular, read by antidiagonals.

The programs for A259575, the canonical program `A259575.P7201171947853536315` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259575 has offset 1).

The definition of A259575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259575.P7201171947853536315

`A259572(n+1)+A054431(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259575

/-- `A259572(n+1)+A054431(n+1)` -/
def P7201171947853536315.Spec : Prop :=
  ∀ n, P7201171947853536315.a n = A259575 (n + 1)

theorem P7201171947853536315.correct : P7201171947853536315.Spec := by
  intro n
  simp only [A259575, Nat.add_sub_cancel]

end A259575

/-! ## A259575.P4450301459335308683

`A259572(n+1)+A008683(A003989(n+1)²)`
-/

namespace A259575.P4450301459335308683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A008683 (A003989 (n + 1) ^ 2).toNat

end

end A259575.P4450301459335308683

namespace A259575

/-- `A259572(n+1)+A008683(A003989(n+1)²)` -/
def P4450301459335308683.Spec : Prop :=
  ∀ n, P4450301459335308683.a n = A259575 (n + 1)

end A259575

/-! ## A259575.P4882907171129060320

`A259572(n+1)+A055615(A003989(n+1)²)`
-/

namespace A259575.P4882907171129060320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A055615 (A003989 (n + 1) ^ 2).toNat

end

end A259575.P4882907171129060320

namespace A259575

/-- `A259572(n+1)+A055615(A003989(n+1)²)` -/
def P4882907171129060320.Spec : Prop :=
  ∀ n, P4882907171129060320.a n = A259575 (n + 1)

end A259575

/-! ## A259575.P13118739927834069528

`A259572(n+1)+A001221(ceil(2/A003989(n+1)))`
-/

namespace A259575.P13118739927834069528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A001221 ⌈2 / (A003989 (n + 1) : ℚ)⌉.toNat

end

end A259575.P13118739927834069528

namespace A259575

/-- `A259572(n+1)+A001221(ceil(2/A003989(n+1)))` -/
def P13118739927834069528.Spec : Prop :=
  ∀ n, P13118739927834069528.a n = A259575 (n + 1)

end A259575

/-! ## A259575.P16456113714296195486

`A054431(n+1)+A004526(A004247(n)+A003989(n+1))`
-/

namespace A259575.P16456113714296195486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) + A004526 (A004247 n + A003989 (n + 1)).toNat

end

end A259575.P16456113714296195486

namespace A259575

/-- `A054431(n+1)+A004526(A004247(n)+A003989(n+1))` -/
def P16456113714296195486.Spec : Prop :=
  ∀ n, P16456113714296195486.a n = A259575 (n + 1)

theorem P16456113714296195486.correct : P16456113714296195486.Spec := by
  intro n
  simp only [A259575, Nat.add_sub_cancel, A259575.P16456113714296195486.a, A259575.P7201171947853536315.a, A003989, A003989.P17625825116561089887.a, A004247, A004247.P2751605162508615148.a, A004526, A004526.P10084182425416171735.a, A054431, A054431.P5825808231892718128.a, A259572, A259572.P4293494890795653436.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259575

/-! ## A259575.P3843718370343145214

`A054431(n+1)+A025480(A004247(n)+A003989(n+1)-1)`
-/

namespace A259575.P3843718370343145214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) + A025480 (A004247 n + A003989 (n + 1) - 1).toNat

end

end A259575.P3843718370343145214

namespace A259575

/-- `A054431(n+1)+A025480(A004247(n)+A003989(n+1)-1)` -/
def P3843718370343145214.Spec : Prop :=
  ∀ n, P3843718370343145214.a n = A259575 (n + 1)

end A259575

/-! ## A259575.P9671184311760377774

`A078898(A003991(n+1)-A074712(n+1))+A054431(n+1)`
-/

namespace A259575.P9671184311760377774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003991 (n + 1) - A074712 (n + 1)).toNat + A054431 (n + 1)

end

end A259575.P9671184311760377774

namespace A259575

/-- `A078898(A003991(n+1)-A074712(n+1))+A054431(n+1)` -/
def P9671184311760377774.Spec : Prop :=
  ∀ n, P9671184311760377774.a n = A259575 (n + 1)

end A259575

/-! ## A259575.P17186271561659716319

`A055941(A038871(n+2))+A054431(n+1)`
-/

namespace A259575.P17186271561659716319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A038871 (n + 2)).toNat + A054431 (n + 1)

end

end A259575.P17186271561659716319

namespace A259575

/-- `A055941(A038871(n+2))+A054431(n+1)` -/
def P17186271561659716319.Spec : Prop :=
  ∀ n, P17186271561659716319.a n = A259575 (n + 1)

end A259575

/-!
# A259576: Number of distinct differences in row n of the reciprocity array of 1.

The programs for A259576, there is no canonical definition to state claims against.
-/

/-! ## A259576.P7684697903259022432

`A257564(A074400(n+1)-A058026(n+1))`
-/

namespace A259576.P7684697903259022432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A074400 (n + 1) - A058026 (n + 1)).toNat

end

end A259576.P7684697903259022432

/-! ## A259576.P14737987899098554470

`A259579(A357983(n+1))`
-/

namespace A259576.P14737987899098554470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259579 (A357983 (n + 1)).toNat

end

end A259576.P14737987899098554470

/-! ## A259576.P12603943448548572002

`∑{d}[n+1, A187810(A130899(#+1))%3]`
-/

namespace A259576.P12603943448548572002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A187810 (A130899 (d + 1)).toNat) 3

end

end A259576.P12603943448548572002

/-! ## A259576.P1955052394773803324

`A283431(A197504(A078896(n+1))+n)`
-/

namespace A259576.P1955052394773803324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A197504 (A078896 (n + 1)).toNat + (n : ℤ)).toNat

end

end A259576.P1955052394773803324

/-! ## A259576.P6008008404041551935

`A005811(A184096(n+1)%(or(1, 2^n)+3))`
-/

namespace A259576.P6008008404041551935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A184096 (n + 1)) (Nat.lor 1 (2 ^ n) + 3 : ℤ)).toNat

end

end A259576.P6008008404041551935

/-!
# A259577: Sum of numbers in the n-th antidiagonal of the reciprocity array of 1.

The programs for A259577, there is no canonical definition to state claims against.
-/

/-! ## A259577.P3128556715794273480

`A259574(n+1)+Δ[A002088(n)]`
-/

namespace A259577.P3128556715794273480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259574 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259577.P3128556715794273480

/-! ## A259577.P6014807150172001018

`A259574(n+1)+Δ[A005728(n)]`
-/

namespace A259577.P6014807150172001018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259574 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259577.P6014807150172001018

/-! ## A259577.P155203802357432770

`A259574(n+1)+A000010(n+1)`
-/

namespace A259577.P155203802357432770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259574 (n + 1) + A000010 (n + 1)

end

end A259577.P155203802357432770

/-! ## A259577.P6234721029303897790

`A259580(n+1)-A345082(n+1)`
-/

namespace A259577.P6234721029303897790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259580 (n + 1) - A345082 (n + 1)

end

end A259577.P6234721029303897790

/-! ## A259577.P5720237807478900868

`A349137(2*n+1)+A259574(n+1)`
-/

namespace A259577.P5720237807478900868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) + A259574 (n + 1)

end

end A259577.P5720237807478900868

/-!
# A259578: Reciprocity array of 2; rectangular, read by antidiagonals.

The programs for A259578, there is no canonical definition to state claims against.
-/

/-! ## A259578.P463303095168223603

`A043558(A141690(n))+1`
-/

namespace A259578.P463303095168223603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A141690 n).toNat + 1

end

end A259578.P463303095168223603

/-! ## A259578.P10744409377738048307

`A235224(lcm(3, A333157(n)))`
-/

namespace A259578.P10744409377738048307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (Int.lcm 3 (A333157 n))

end

end A259578.P10744409377738048307

/-! ## A259578.P6626420836993826212

`A229895(A359573(n+1))+1`
-/

namespace A259578.P6626420836993826212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229895 (A359573 (n + 1)).toNat + 1

end

end A259578.P6626420836993826212

/-! ## A259578.P15401487670322003399

`A138033(A225910(n))+2`
-/

namespace A259578.P15401487670322003399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A225910 n).toNat + 2

end

end A259578.P15401487670322003399

/-! ## A259578.P5153721479619969182

`A055093(A156584(n))`
-/

namespace A259578.P5153721479619969182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (A156584 n).toNat

end

end A259578.P5153721479619969182

/-!
# A259580: Sum of numbers in the n-th antidiagonal of the reciprocity array of 2.

The programs for A259580, there is no canonical definition to state claims against.
-/

/-! ## A259580.P14026685284175945468

`A345082(n+1)+A259577(n+1)`
-/

namespace A259580.P14026685284175945468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) + A259577 (n + 1)

end

end A259580.P14026685284175945468

/-! ## A259580.P3357397696000507196

`A259574(n+1)+A345082(n+1)+Δ[A002088(n)]`
-/

namespace A259580.P3357397696000507196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259574 (n + 1) + (A345082 (n + 1) + (f1 (n + 1) - f1 n))

end

end A259580.P3357397696000507196

/-! ## A259580.P15742558907050188880

`A259574(n+1)+A345082(n+1)+Δ[A005728(n)]`
-/

namespace A259580.P15742558907050188880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259574 (n + 1) + (A345082 (n + 1) + (f1 (n + 1) - f1 n))

end

end A259580.P15742558907050188880

/-! ## A259580.P1432614619147565390

`A000010(n+1)+A345082(n+1)+A259574(n+1)`
-/

namespace A259580.P1432614619147565390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A345082 (n + 1) + A259574 (n + 1))

end

end A259580.P1432614619147565390

/-! ## A259580.P3340913525149864772

`A345082(n+1)+A349137(2*n+1)+A259574(n+1)`
-/

namespace A259580.P3340913525149864772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) + (A349137 (2 * n + 1) + A259574 (n + 1))

end

end A259580.P3340913525149864772

/-!
# A259581: Reciprocity array of 3; rectangular, read by antidiagonals.

The programs for A259581, there is no canonical definition to state claims against.
-/

/-! ## A259581.P12665287676091425500

`A080513(A003983(n+1))+A043562(A155452(n))`
-/

namespace A259581.P12665287676091425500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A003983 (n + 1)).toNat + A043562 (A155452 n).toNat

end

end A259581.P12665287676091425500

/-! ## A259581.P5435740492230833207

`A329320(A112492(n))+2`
-/

namespace A259581.P5435740492230833207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A112492 n).toNat + 2

end

end A259581.P5435740492230833207

/-! ## A259581.P6981334477179406753

`A178042(2*A055652(n))`
-/

namespace A259581.P6981334477179406753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (2 * A055652 n).toNat

end

end A259581.P6981334477179406753

/-! ## A259581.P13608626236942199493

`A178042(2*A156354(n))`
-/

namespace A259581.P13608626236942199493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (2 * A156354 n).toNat

end

end A259581.P13608626236942199493

/-! ## A259581.P13279221463959101412

`A178042(A034851(n)²+2)`
-/

namespace A259581.P13279221463959101412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (A034851 n ^ 2 + 2).toNat

end

end A259581.P13279221463959101412

/-!
# A259582: Number of distinct differences in row n of the reciprocity array of 3.

The programs for A259582, there is no canonical definition to state claims against.
-/

/-! ## A259582.P816683206146805507

`A219654(n+3)-A035179(A000079(n))`
-/

namespace A259582.P816683206146805507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 (n + 3) - A035179 (A000079 n).toNat

end

end A259582.P816683206146805507

/-! ## A259582.P18094186817932224225

`A219654(n+3)-A351014(A077957(n))`
-/

namespace A259582.P18094186817932224225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 (n + 3) - A351014 (A077957 n).toNat

end

end A259582.P18094186817932224225

/-! ## A259582.P17572597831966933745

`A174901(gcd(A097272(n+1), A174906(3*(n+2))))`
-/

namespace A259582.P17572597831966933745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174901 (Int.gcd (A097272 (n + 1)) (A174906 (3 * (n + 2))))

end

end A259582.P17572597831966933745

/-! ## A259582.P18335510200018196732

`∑{e}[A164249(record[A135020(n+1)]), #]`
-/

namespace A259582.P18335510200018196732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164249 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A259582.P18335510200018196732

/-!
# A259587: Numbers k such that [r[s*k]] - [s[r*k]] = 2, where r = sqrt(2), s=sqrt(3), and [ ] = floor.

The programs for A259587, there is no canonical definition to state claims against.
-/

/-! ## A259587.P14827971693788319487

`A259726(A051038(n+1)^A008835(n+1))`
-/

namespace A259587.P14827971693788319487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259726 (SequenceMachineLib.roundAway ((A051038 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A259587.P14827971693788319487

/-! ## A259587.P3253862282460398524

`A259726(A051038(n+1)%A102131(n+1))`
-/

namespace A259587.P3253862282460398524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259726 (Int.tmod (A051038 (n + 1)) (A102131 (n + 1))).toNat

end

end A259587.P3253862282460398524

/-! ## A259587.P15822644651427402741

`A259726(A051038(n+1))%A070991(3*n+2)`
-/

namespace A259587.P15822644651427402741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259726 (A051038 (n + 1)).toNat) (A070991 (3 * n + 2))

end

end A259587.P15822644651427402741

/-! ## A259587.P10028420500595417651

`A259726(n+1)%A124065(A001006(n))`
-/

namespace A259587.P10028420500595417651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259726 (n + 1)) (A124065 (A001006 n).toNat)

end

end A259587.P10028420500595417651

/-!
# A259588: Denominators of the other-side convergents to e.

The programs for A259588, there is no canonical definition to state claims against.
-/

/-! ## A259588.P12627112596948404679

`A006259(∑[A003417(n)]+1)`
-/

namespace A259588.P12627112596948404679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A259588.P12627112596948404679

/-! ## A259588.P12276378283583436141

`A006259(A339267(n+1)+1)`
-/

namespace A259588.P12276378283583436141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (A339267 (n + 1) + 1).toNat

end

end A259588.P12276378283583436141

/-! ## A259588.P7868517719039419348

`A113874(n+1)+A007677(n)`
-/

namespace A259588.P7868517719039419348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113874 (n + 1) + A007677 n

end

end A259588.P7868517719039419348

/-!
# A259589: Numerators of the other-side convergents to e.

The programs for A259589, there is no canonical definition to state claims against.
-/

/-! ## A259589.P15380479341659236485

`round(e*A259588(n))`
-/

namespace A259589.P15380479341659236485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A259588 n : ℝ))

end

end A259589.P15380479341659236485

/-! ## A259589.P1696166077187781703

`A006258(A339267(n+1)+1)`
-/

namespace A259589.P1696166077187781703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (A339267 (n + 1) + 1).toNat

end

end A259589.P1696166077187781703

/-! ## A259589.P9613923435133682050

`A113873(n+1)+A007676(n)`
-/

namespace A259589.P9613923435133682050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (n + 1) + A007676 n

end

end A259589.P9613923435133682050

/-!
# A259590: Denominators of the other-side convergents to Pi.

The programs for A259590, there is no canonical definition to state claims against.
-/

/-! ## A259590.P15548210495137821102

`A002486(n+1)+record[A002486(n)]`
-/

namespace A259590.P15548210495137821102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259590.P15548210495137821102

/-! ## A259590.P6890584867732942673

`A002486(n+1)+A002486(n+2)`
-/

namespace A259590.P6890584867732942673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (n + 1) + A002486 (n + 2)

end

end A259590.P6890584867732942673

/-! ## A259590.P4866030045073107484

`round((A046947(n+1)+A046947(n))/π)`
-/

namespace A259590.P4866030045073107484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046947 (n + 1) + A046947 n : ℝ) / Real.pi)

end

end A259590.P4866030045073107484

/-! ## A259590.P14529100447003678990

`round(abs(Δ[A033999(n)*A046947(n)])/π)`
-/

namespace A259590.P14529100447003678990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A046947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|f1 (n + 1) - f1 n| : ℝ) / Real.pi)

end

end A259590.P14529100447003678990

/-!
# A259591: Numerators of the other-side convergents to Pi.

The programs for A259591, there is no canonical definition to state claims against.
-/

/-! ## A259591.P17068421391224569051

`A046947(n+1)+A046947(n)`
-/

namespace A259591.P17068421391224569051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 (n + 1) + A046947 n

end

end A259591.P17068421391224569051

/-! ## A259591.P16222900309617767326

`abs(Δ[A033999(n)*A046947(n)])`
-/

namespace A259591.P16222900309617767326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A046947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A259591.P16222900309617767326

/-! ## A259591.P10463896275546368097

`A002485(n+1)+A002485(n+2)`
-/

namespace A259591.P10463896275546368097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 (n + 1) + A002485 (n + 2)

end

end A259591.P10463896275546368097

/-!
# A259592: Denominators of the other-side convergents to sqrt(3).

The programs for A259592, the canonical program `A259592.P966930489864251433` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259592 has offset 0).

The definition of A259592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259592.P966930489864251433

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259592

/-- `4*a(n-2)-a(n-4)` -/
def P966930489864251433.Spec : Prop :=
  ∀ n, P966930489864251433.a n = A259592 n

theorem P966930489864251433.correct : P966930489864251433.Spec := by
  intro n
  simp only [A259592]

end A259592

/-! ## A259592.P14167032384527133948

`ogf((1+2x-x^3)/(1-4x^2+x^4))`
-/

namespace A259592.P14167032384527133948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, 0, -4, 0, 1] n

end

end A259592.P14167032384527133948

namespace A259592

/-- `ogf((1+2x-x^3)/(1-4x^2+x^4))` -/
def P14167032384527133948.Spec : Prop :=
  ∀ n, P14167032384527133948.a n = A259592 n

end A259592

/-! ## A259592.P2604877965410124422

`∑[a(n-2)+lcm(2, a(n-1))]+1` with `a(0)=0, a(1)=1`
-/

namespace A259592.P2604877965410124422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A259592.P2604877965410124422

namespace A259592

/-- `∑[a(n-2)+lcm(2, a(n-1))]+1` -/
def P2604877965410124422.Spec : Prop :=
  ∀ n, (P2604877965410124422.a n : ℤ) = A259592 n

end A259592

/-! ## A259592.P3278074223984203662

`∑[A048788(n)]+1`
-/

namespace A259592.P3278074223984203662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A259592.P3278074223984203662

namespace A259592

/-- `∑[A048788(n)]+1` -/
def P3278074223984203662.Spec : Prop :=
  ∀ n, P3278074223984203662.a n = A259592 n

end A259592

/-! ## A259592.P4331663319786086164

`A140827(A001651(n+1))`
-/

namespace A259592.P4331663319786086164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (A001651 (n + 1)).toNat

end

end A259592.P4331663319786086164

namespace A259592

/-- `A140827(A001651(n+1))` -/
def P4331663319786086164.Spec : Prop :=
  ∀ n, P4331663319786086164.a n = A259592 n

end A259592

/-! ## A259592.P7458028050106627638

`A249578(A032766(n+2))`
-/

namespace A259592.P7458028050106627638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A032766 (n + 2)).toNat

end

end A259592.P7458028050106627638

namespace A259592

/-- `A249578(A032766(n+2))` -/
def P7458028050106627638.Spec : Prop :=
  ∀ n, P7458028050106627638.a n = A259592 n

end A259592

/-! ## A259592.P13119387878200776735

`∑[A254308(A032766(n))]+1`
-/

namespace A259592.P13119387878200776735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A259592.P13119387878200776735

namespace A259592

/-- `∑[A254308(A032766(n))]+1` -/
def P13119387878200776735.Spec : Prop :=
  ∀ n, P13119387878200776735.a n = A259592 n

end A259592

/-! ## A259592.P12430581746747172319

`A140827(A007494(n+1)-1)`
-/

namespace A259592.P12430581746747172319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (A007494 (n + 1) - 1).toNat

end

end A259592.P12430581746747172319

namespace A259592

/-- `A140827(A007494(n+1)-1)` -/
def P12430581746747172319.Spec : Prop :=
  ∀ n, P12430581746747172319.a n = A259592 n

end A259592

/-! ## A259592.P12779928152039103718

`A002530(n+1)+A002530(n)`
-/

namespace A259592.P12779928152039103718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) + A002530 n

end

end A259592.P12779928152039103718

namespace A259592

/-- `A002530(n+1)+A002530(n)` -/
def P12779928152039103718.Spec : Prop :=
  ∀ n, P12779928152039103718.a n = A259592 n

end A259592

/-! ## A259592.P6408951673457005016

`Δ[A002531(n)]+Δ[A048788(n)]`
-/

namespace A259592.P6408951673457005016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A259592.P6408951673457005016

namespace A259592

/-- `Δ[A002531(n)]+Δ[A048788(n)]` -/
def P6408951673457005016.Spec : Prop :=
  ∀ n, P6408951673457005016.a n = A259592 n

end A259592

/-! ## A259592.P1907764146613115276

`A082630(n+1)+A005246(n)-A005246(n+1)`
-/

namespace A259592.P1907764146613115276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082630 (n + 1) + (A005246 n - A005246 (n + 1))

end

end A259592.P1907764146613115276

namespace A259592

/-- `A082630(n+1)+A005246(n)-A005246(n+1)` -/
def P1907764146613115276.Spec : Prop :=
  ∀ n, P1907764146613115276.a n = A259592 n

end A259592

/-! ## A259592.P1569253945520150624

`Δ[ogf((1+2x)/(1-4x^2+x^4))]`
-/

namespace A259592.P1569253945520150624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -4, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259592.P1569253945520150624

namespace A259592

/-- `Δ[ogf((1+2x)/(1-4x^2+x^4))]` -/
def P1569253945520150624.Spec : Prop :=
  ∀ n, P1569253945520150624.a n = A259592 n

end A259592

/-! ## A259592.P3667042258195171863

`∪[A001075(n), A010905(n)]`
-/

namespace A259592.P3667042258195171863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259592.P3667042258195171863

namespace A259592

/-- `∪[A001075(n), A010905(n)]` -/
def P3667042258195171863.Spec : Prop :=
  ∀ n, (P3667042258195171863.a n : ℤ) = A259592 n

end A259592

/-! ## A259592.P9504565002090028962

`Δ[A048788(n)+A002531(n)]`
-/

namespace A259592.P9504565002090028962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 n + A002531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259592.P9504565002090028962

namespace A259592

/-- `Δ[A048788(n)+A002531(n)]` -/
def P9504565002090028962.Spec : Prop :=
  ∀ n, P9504565002090028962.a n = A259592 n

end A259592

/-! ## A259592.P7755143590607353176

`A131887(n+1)-A259593(n)`
-/

namespace A259592.P7755143590607353176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131887 (n + 1) - A259593 n

end

end A259592.P7755143590607353176

namespace A259592

/-- `A131887(n+1)-A259593(n)` -/
def P7755143590607353176.Spec : Prop :=
  ∀ n, P7755143590607353176.a n = A259592 n

end A259592

/-! ## A259592.P14602415729657848157

`Δ[A237250(n+1)-A005246(n)]`
-/

namespace A259592.P14602415729657848157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1) - A005246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259592.P14602415729657848157

namespace A259592

/-- `Δ[A237250(n+1)-A005246(n)]` -/
def P14602415729657848157.Spec : Prop :=
  ∀ n, P14602415729657848157.a n = A259592 n

end A259592

/-! ## A259592.P13263848784833546593

`A272073(n+3)+A005246(n)-A143643(n+2)`
-/

namespace A259592.P13263848784833546593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272073 (n + 3) + (A005246 n - A143643 (n + 2))

end

end A259592.P13263848784833546593

namespace A259592

/-- `A272073(n+3)+A005246(n)-A143643(n+2)` -/
def P13263848784833546593.Spec : Prop :=
  ∀ n, P13263848784833546593.a n = A259592 n

end A259592

/-! ## A259592.P10685856896235172089

`∑[A001353(n)/A002531(n)]+1`
-/

namespace A259592.P10685856896235172089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 n : ℚ) / (A002531 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A259592.P10685856896235172089

namespace A259592

/-- `∑[A001353(n)/A002531(n)]+1` -/
def P10685856896235172089.Spec : Prop :=
  ∀ n, P10685856896235172089.a n = (A259592 n : ℚ)

end A259592

/-!
# A259593: Numerators of the other-side convergents to sqrt(3).

The programs for A259593, the canonical program `A259593.P18165950714788455209` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259593 has offset 0).

The definition of A259593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259593.P18165950714788455209

`4*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259593

/-- `4*a(n-2)-a(n-4)` -/
def P18165950714788455209.Spec : Prop :=
  ∀ n, P18165950714788455209.a n = A259593 n

theorem P18165950714788455209.correct : P18165950714788455209.Spec := by
  intro n
  simp only [A259593]

end A259593

/-! ## A259593.P18337125395033721822

`ogf((2+3x-x^2)/(1-4x^2+x^4))`
-/

namespace A259593.P18337125395033721822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -1] [1, 0, -4, 0, 1] n

end

end A259593.P18337125395033721822

namespace A259593

/-- `ogf((2+3x-x^2)/(1-4x^2+x^4))` -/
def P18337125395033721822.Spec : Prop :=
  ∀ n, P18337125395033721822.a n = A259593 n

end A259593

/-! ## A259593.P7902286734073419837

`∑[a(n-2)+lcm(2, a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A259593.P7902286734073419837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259593.P7902286734073419837

namespace A259593

/-- `∑[a(n-2)+lcm(2, a(n-1))]` -/
def P7902286734073419837.Spec : Prop :=
  ∀ n, (P7902286734073419837.a n : ℤ) = A259593 n

end A259593

/-! ## A259593.P1023584163645310784

`∑[A321119(n)/2]`
-/

namespace A259593.P1023584163645310784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321119 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259593.P1023584163645310784

namespace A259593

/-- `∑[A321119(n)/2]` -/
def P1023584163645310784.Spec : Prop :=
  ∀ n, P1023584163645310784.a n = (A259593 n : ℚ)

end A259593

/-! ## A259593.P5873139022647074599

`A249578(∑[char[2*n]+1]+2)`
-/

namespace A259593.P5873139022647074599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259593.P5873139022647074599

namespace A259593

/-- `A249578(∑[char[2*n]+1]+2)` -/
def P5873139022647074599.Spec : Prop :=
  ∀ n, P5873139022647074599.a n = A259593 n

end A259593

/-! ## A259593.P7862889277805619971

`A143642(A007494(n+1))`
-/

namespace A259593.P7862889277805619971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A007494 (n + 1)).toNat

end

end A259593.P7862889277805619971

namespace A259593

/-- `A143642(A007494(n+1))` -/
def P7862889277805619971.Spec : Prop :=
  ∀ n, P7862889277805619971.a n = A259593 n

end A259593

/-! ## A259593.P7827415239931550204

`A143642(A032766(n)+2)`
-/

namespace A259593.P7827415239931550204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A032766 n + 2).toNat

end

end A259593.P7827415239931550204

namespace A259593

/-- `A143642(A032766(n)+2)` -/
def P7827415239931550204.Spec : Prop :=
  ∀ n, P7827415239931550204.a n = A259593 n

end A259593

/-! ## A259593.P12993557490418043986

`A143642(A294732(n+3))`
-/

namespace A259593.P12993557490418043986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A294732 (n + 3)).toNat

end

end A259593.P12993557490418043986

namespace A259593

/-- `A143642(A294732(n+3))` -/
def P12993557490418043986.Spec : Prop :=
  ∀ n, P12993557490418043986.a n = A259593 n

end A259593

/-! ## A259593.P7136168970544637836

`A143642(∑[A000034(n+1)])`
-/

namespace A259593.P7136168970544637836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259593.P7136168970544637836

namespace A259593

/-- `A143642(∑[A000034(n+1)])` -/
def P7136168970544637836.Spec : Prop :=
  ∀ n, P7136168970544637836.a n = A259593 n

end A259593

/-! ## A259593.P17271982305897713753

`A143642(∑[2/A000034(n)])`
-/

namespace A259593.P17271982305897713753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259593.P17271982305897713753

namespace A259593

/-- `A143642(∑[2/A000034(n)])` -/
def P17271982305897713753.Spec : Prop :=
  ∀ n, P17271982305897713753.a n = A259593 n

end A259593

/-! ## A259593.P16016003770339093413

`A143642(A001651(n+1)+1)`
-/

namespace A259593.P16016003770339093413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A001651 (n + 1) + 1).toNat

end

end A259593.P16016003770339093413

namespace A259593

/-- `A143642(A001651(n+1)+1)` -/
def P16016003770339093413.Spec : Prop :=
  ∀ n, P16016003770339093413.a n = A259593 n

end A259593

/-! ## A259593.P16296720438132353784

`A002531(n+1)+A002531(n)`
-/

namespace A259593.P16296720438132353784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (n + 1) + A002531 n

end

end A259593.P16296720438132353784

namespace A259593

/-- `A002531(n+1)+A002531(n)` -/
def P16296720438132353784.Spec : Prop :=
  ∀ n, P16296720438132353784.a n = A259593 n

end A259593

/-! ## A259593.P8682862182792624130

`A131887(n+1)-A259592(n)`
-/

namespace A259593.P8682862182792624130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131887 (n + 1) - A259592 n

end

end A259593.P8682862182792624130

namespace A259593

/-- `A131887(n+1)-A259592(n)` -/
def P8682862182792624130.Spec : Prop :=
  ∀ n, P8682862182792624130.a n = A259593 n

end A259593

/-! ## A259593.P15208630324401792134

`A143642(A047235(n+1)/2+1)`
-/

namespace A259593.P15208630324401792134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (SequenceMachineLib.roundAway ((A047235 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A259593.P15208630324401792134

namespace A259593

/-- `A143642(A047235(n+1)/2+1)` -/
def P15208630324401792134.Spec : Prop :=
  ∀ n, P15208630324401792134.a n = A259593 n

end A259593

/-! ## A259593.P15904423276235481887

`A143642((A047270(n+1)+1)/2)`
-/

namespace A259593.P15904423276235481887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (SequenceMachineLib.roundAway ((A047270 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A259593.P15904423276235481887

namespace A259593

/-- `A143642((A047270(n+1)+1)/2)` -/
def P15904423276235481887.Spec : Prop :=
  ∀ n, P15904423276235481887.a n = A259593 n

end A259593

/-! ## A259593.P10254858715596558690

`A237250(n+1)+Δ[2*A005246(n)]`
-/

namespace A259593.P10254858715596558690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259593.P10254858715596558690

namespace A259593

/-- `A237250(n+1)+Δ[2*A005246(n)]` -/
def P10254858715596558690.Spec : Prop :=
  ∀ n, P10254858715596558690.a n = A259593 n

end A259593

/-! ## A259593.P11393150938424819059

`∪[A143643(2*(n+1))-A143643(2*n+1), A143643(2*(n+1))]`
-/

namespace A259593.P11393150938424819059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (2 * (n + 1)) - A143643 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259593.P11393150938424819059

namespace A259593

/-- `∪[A143643(2*(n+1))-A143643(2*n+1), A143643(2*(n+1))]` -/
def P11393150938424819059.Spec : Prop :=
  ∀ n, (P11393150938424819059.a n : ℤ) = A259593 n

end A259593

/-!
# A259594: Denominators of the other-side convergents to sqrt(6).

The programs for A259594, the canonical program `A259594.P8555540854247109066` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259594 has offset 0).

The definition of A259594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259594.P8555540854247109066

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=29`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259594

/-- `10*a(n-2)-a(n-4)` -/
def P8555540854247109066.Spec : Prop :=
  ∀ n, P8555540854247109066.a n = A259594 n

theorem P8555540854247109066.correct : P8555540854247109066.Spec := by
  intro n
  simp only [A259594]

end A259594

/-! ## A259594.P7833635219621180313

`A041006(n)-Δ[A077288(n)]`
-/

namespace A259594.P7833635219621180313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n - (f1 (n + 1) - f1 n)

end

end A259594.P7833635219621180313

namespace A259594

/-- `A041006(n)-Δ[A077288(n)]` -/
def P7833635219621180313.Spec : Prop :=
  ∀ n, P7833635219621180313.a n = A259594 n

end A259594

/-! ## A259594.P18150112596296986302

`A041006(n)-Δ[A181442(n)]`
-/

namespace A259594.P18150112596296986302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n - (f1 (n + 1) - f1 n)

end

end A259594.P18150112596296986302

namespace A259594

/-- `A041006(n)-Δ[A181442(n)]` -/
def P18150112596296986302.Spec : Prop :=
  ∀ n, P18150112596296986302.a n = A259594 n

end A259594

/-! ## A259594.P2803484353927282364

`2*A129445(n+1)-A080872(n)`
-/

namespace A259594.P2803484353927282364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129445 (n + 1) - A080872 n

end

end A259594.P2803484353927282364

namespace A259594

/-- `2*A129445(n+1)-A080872(n)` -/
def P2803484353927282364.Spec : Prop :=
  ∀ n, P2803484353927282364.a n = A259594 n

end A259594

/-! ## A259594.P5070442201052041459

`A041007(n)+A142238(n)-A142239(n)`
-/

namespace A259594.P5070442201052041459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 n + (A142238 n - A142239 n)

end

end A259594.P5070442201052041459

namespace A259594

/-- `A041007(n)+A142238(n)-A142239(n)` -/
def P5070442201052041459.Spec : Prop :=
  ∀ n, P5070442201052041459.a n = A259594 n

end A259594

/-! ## A259594.P13289316206308302204

`A080806(n+1)+A080872(A109613(n))-A080872(n)`
-/

namespace A259594.P13289316206308302204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) + (A080872 (A109613 n).toNat - A080872 n)

end

end A259594.P13289316206308302204

namespace A259594

/-- `A080806(n+1)+A080872(A109613(n))-A080872(n)` -/
def P13289316206308302204.Spec : Prop :=
  ∀ n, P13289316206308302204.a n = A259594 n

end A259594

/-! ## A259594.P12523146774434232997

`∪[A152448(2*n+1), A140780(n)]`
-/

namespace A259594.P12523146774434232997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152448 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259594.P12523146774434232997

namespace A259594

/-- `∪[A152448(2*n+1), A140780(n)]` -/
def P12523146774434232997.Spec : Prop :=
  ∀ n, (P12523146774434232997.a n : ℤ) = A259594 n

end A259594

/-! ## A259594.P3309465396951816206

`A041006(n)-Δ[A080806(n+1)/2]`
-/

namespace A259594.P3309465396951816206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080806 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A259594.P3309465396951816206

namespace A259594

/-- `A041006(n)-Δ[A080806(n+1)/2]` -/
def P3309465396951816206.Spec : Prop :=
  ∀ n, P3309465396951816206.a n = (A259594 n : ℚ)

end A259594

/-! ## A259594.P5844822246318240229

`∪[A080874(2*n), A140781(n+1)-A080874(2*n+1)]`
-/

namespace A259594.P5844822246318240229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 (n + 1) - A080874 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259594.P5844822246318240229

namespace A259594

/-- `∪[A080874(2*n), A140781(n+1)-A080874(2*n+1)]` -/
def P5844822246318240229.Spec : Prop :=
  ∀ n, (P5844822246318240229.a n : ℤ) = A259594 n

end A259594

/-! ## A259594.P14440673742346384456

`Δ[A077288(n)²]%A041038(n)`
-/

namespace A259594.P14440673742346384456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A041038 n)

end

end A259594.P14440673742346384456

namespace A259594

/-- `Δ[A077288(n)²]%A041038(n)` -/
def P14440673742346384456.Spec : Prop :=
  ∀ n, P14440673742346384456.a n = A259594 n

end A259594

/-!
# A259595: Numerators of the other-side convergents to sqrt(6).

The programs for A259595, the canonical program `A259595.P15505689949346880306` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259595 has offset 0).

The definition of A259595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259595.P15505689949346880306

`10*a(n-2)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=27, a(3)=71`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259595

/-- `10*a(n-2)-a(n-4)` -/
def P15505689949346880306.Spec : Prop :=
  ∀ n, P15505689949346880306.a n = A259595 n

theorem P15505689949346880306.correct : P15505689949346880306.Spec := by
  intro n
  simp only [A259595]

end A259595

/-! ## A259595.P17342676364524249181

`A041006(n)+abs(A216073(n+1)-A041006(n))`
-/

namespace A259595.P17342676364524249181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n + |A216073 (n + 1) - A041006 n|

end

end A259595.P17342676364524249181

namespace A259595

/-- `A041006(n)+abs(A216073(n+1)-A041006(n))` -/
def P17342676364524249181.Spec : Prop :=
  ∀ n, P17342676364524249181.a n = A259595 n

end A259595

/-! ## A259595.P6856824497465119454

`Δ[A041006(n)]%(2*A041006(n))`
-/

namespace A259595.P6856824497465119454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (2 * A041006 n)

end

end A259595.P6856824497465119454

namespace A259595

/-- `Δ[A041006(n)]%(2*A041006(n))` -/
def P6856824497465119454.Spec : Prop :=
  ∀ n, P6856824497465119454.a n = A259595 n

end A259595

/-! ## A259595.P12007855980847958416

`abs(Δ[A216073(n+1)-A041006(n)])`
-/

namespace A259595.P12007855980847958416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1) - A041006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A259595.P12007855980847958416

namespace A259595

/-- `abs(Δ[A216073(n+1)-A041006(n)])` -/
def P12007855980847958416.Spec : Prop :=
  ∀ n, P12007855980847958416.a n = A259595 n

end A259595

/-! ## A259595.P3258639985534395247

`A041006(n)+A041006(n+1)%A041006(n)`
-/

namespace A259595.P3258639985534395247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n + Int.tmod (A041006 (n + 1)) (A041006 n)

end

end A259595.P3258639985534395247

namespace A259595

/-- `A041006(n)+A041006(n+1)%A041006(n)` -/
def P3258639985534395247.Spec : Prop :=
  ∀ n, P3258639985534395247.a n = A259595 n

end A259595

/-! ## A259595.P7806477101694408526

`Δ[A216073(n+1)-A041006(n)]*A033999(n)`
-/

namespace A259595.P7806477101694408526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1) - A041006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A259595.P7806477101694408526

namespace A259595

/-- `Δ[A216073(n+1)-A041006(n)]*A033999(n)` -/
def P7806477101694408526.Spec : Prop :=
  ∀ n, P7806477101694408526.a n = A259595 n

end A259595

/-!
# A259596: Denominators of the other-side convergents to sqrt(7).

The programs for A259596, the canonical program `A259596.P18009743427137267811` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259596 has offset 0).

The definition of A259596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259596.P18009743427137267811

`16*a(n-4)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=17, a(5)=31, a(6)=48, a(7)=79`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259596

/-- `16*a(n-4)-a(n-8)` -/
def P18009743427137267811.Spec : Prop :=
  ∀ n, P18009743427137267811.a n = A259596 n

theorem P18009743427137267811.correct : P18009743427137267811.Spec := by
  intro n
  simp only [A259596]

end A259596

/-! ## A259596.P18092648034003243979

`round(A259597(n)/sqrt(7))`
-/

namespace A259596.P18092648034003243979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A259597 n : ℝ) / Real.sqrt (7 : ℝ))

end

end A259596.P18092648034003243979

namespace A259596

/-- `round(A259597(n)/sqrt(7))` -/
def P18092648034003243979.Spec : Prop :=
  ∀ n, P18092648034003243979.a n = A259596 n

end A259596

/-! ## A259596.P6448061333959863804

`Δ[A041009(n+4)]%A041009(n+2)`
-/

namespace A259596.P6448061333959863804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A041009 (n + 2))

end

end A259596.P6448061333959863804

namespace A259596

/-- `Δ[A041009(n+4)]%A041009(n+2)` -/
def P6448061333959863804.Spec : Prop :=
  ∀ n, P6448061333959863804.a n = A259596 n

end A259596

/-!
# A259597: Numerators of the other-side convergents to sqrt(7).

The programs for A259597, the canonical program `A259597.P17795464748085021583` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259597 has offset 0).

The definition of A259597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259597.P17795464748085021583

`16*a(n-4)-a(n-8)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=13, a(4)=45, a(5)=82, a(6)=127, a(7)=209`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259597

/-- `16*a(n-4)-a(n-8)` -/
def P17795464748085021583.Spec : Prop :=
  ∀ n, P17795464748085021583.a n = A259597 n

theorem P17795464748085021583.correct : P17795464748085021583.Spec := by
  intro n
  simp only [A259597]

end A259597

/-! ## A259597.P9143039773703481646

`round(sqrt(7)*A259596(n))`
-/

namespace A259597.P9143039773703481646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (7 : ℝ) * (A259596 n : ℝ))

end

end A259597.P9143039773703481646

namespace A259597

/-- `round(sqrt(7)*A259596(n))` -/
def P9143039773703481646.Spec : Prop :=
  ∀ n, P9143039773703481646.a n = A259597 n

end A259597

/-! ## A259597.P15027287867650722752

`A041008(n)+Δ[A041008(n)]%A041008(n)`
-/

namespace A259597.P15027287867650722752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 n + Int.tmod (f1 (n + 1) - f1 n) (A041008 n)

end

end A259597.P15027287867650722752

namespace A259597

/-- `A041008(n)+Δ[A041008(n)]%A041008(n)` -/
def P15027287867650722752.Spec : Prop :=
  ∀ n, P15027287867650722752.a n = A259597 n

end A259597

/-! ## A259597.P10648115877411489880

`A041008(n)+A041008(n+1)%A041008(n)`
-/

namespace A259597.P10648115877411489880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 n + Int.tmod (A041008 (n + 1)) (A041008 n)

end

end A259597.P10648115877411489880

namespace A259597

/-- `A041008(n)+A041008(n+1)%A041008(n)` -/
def P10648115877411489880.Spec : Prop :=
  ∀ n, P10648115877411489880.a n = A259597 n

end A259597

/-! ## A259597.P6982103834282974767

`A022850(A259596(n))`
-/

namespace A259597.P6982103834282974767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022850 (A259596 n).toNat

end

end A259597.P6982103834282974767

namespace A259597

/-- `A022850(A259596(n))` -/
def P6982103834282974767.Spec : Prop :=
  ∀ n, P6982103834282974767.a n = A259597 n

end A259597

/-!
# A259598: Number of representations of n as u(h) + v(k), where u = A000201 (lower Wythoff numbers), v = A001950 (upper Wythoff numbers), h>=1, k>=1.

The programs for A259598, there is no canonical definition to state claims against.
-/

/-! ## A259598.P10841091214947306053

`A295540(n+1)-1`
-/

namespace A259598.P10841091214947306053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (n + 1) - 1

end

end A259598.P10841091214947306053

/-! ## A259598.P10660419160701589628

`A002837(A295540(n+1))`
-/

namespace A259598.P10660419160701589628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A295540 (n + 1)).toNat

end

end A259598.P10660419160701589628

/-! ## A259598.P1382098715914259956

`(A295540(n+1)+A000578(n))%(n+1)`
-/

namespace A259598.P1382098715914259956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295540 (n + 1) + A000578 n) (n + 1 : ℤ)

end

end A259598.P1382098715914259956

/-! ## A259598.P3697394661515652844

`(A295540(n+1)+A016791(n))%(n+1)`
-/

namespace A259598.P3697394661515652844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295540 (n + 1) + A016791 n) (n + 1 : ℤ)

end

end A259598.P3697394661515652844

/-! ## A259598.P9754362397949637177

`A355689(A049574(n+1))+A295540(n+1)`
-/

namespace A259598.P9754362397949637177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A049574 (n + 1)).toNat + A295540 (n + 1)

end

end A259598.P9754362397949637177

/-!
# A259599: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (1,0,1) and midword sequence (a(n)); see Comments.

The programs for A259599, there is no canonical definition to state claims against.
-/

/-! ## A259599.P1519262352850886329

`1-A260446(n+1)`
-/

namespace A259599.P1519262352850886329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260446 (n + 1)

end

end A259599.P1519262352850886329

/-! ## A259599.P16895528113631673487

`A260449(n+1)%2`
-/

namespace A259599.P16895528113631673487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260449 (n + 1)) 2

end

end A259599.P16895528113631673487

/-! ## A259599.P9612764864736804341

`A260454(n+1)%2`
-/

namespace A259599.P9612764864736804341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260454 (n + 1)) 2

end

end A259599.P9612764864736804341

/-! ## A259599.P17757194003783600391

`7%A260452(n+1)`
-/

namespace A259599.P17757194003783600391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A260452 (n + 1))

end

end A259599.P17757194003783600391

/-! ## A259599.P13777954433599587780

`floor(log2(A260453(n+1)))`
-/

namespace A259599.P13777954433599587780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A260453 (n + 1)).toNat

end

end A259599.P13777954433599587780

/-! ## A259599.P18190671686637932912

`round(1/A260450(n+1))`
-/

namespace A259599.P18190671686637932912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A260450 (n + 1) : ℚ))

end

end A259599.P18190671686637932912

/-! ## A259599.P1425703234383523096

`A085026(n)%A260453(n+1)`
-/

namespace A259599.P1425703234383523096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085026 n) (A260453 (n + 1))

end

end A259599.P1425703234383523096

/-! ## A259599.P2022946762166761058

`and(A008379(n), A260449(n+1))`
-/

namespace A259599.P2022946762166761058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A260449 (n + 1))

end

end A259599.P2022946762166761058

/-! ## A259599.P12488683574132330385

`and(A008379(n), A260454(n+1))`
-/

namespace A259599.P12488683574132330385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A260454 (n + 1))

end

end A259599.P12488683574132330385

/-! ## A259599.P16893525979447694475

`and(A016760(n), A260449(n+1))`
-/

namespace A259599.P16893525979447694475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A260449 (n + 1))

end

end A259599.P16893525979447694475

/-! ## A259599.P1639675995164399311

`and(A016760(n), A260454(n+1))`
-/

namespace A259599.P1639675995164399311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A260454 (n + 1))

end

end A259599.P1639675995164399311

/-! ## A259599.P14569245395081144725

`and(A016819(n), A260449(n+1))`
-/

namespace A259599.P14569245395081144725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016819 n) (A260449 (n + 1))

end

end A259599.P14569245395081144725

/-! ## A259599.P3129301906146697000

`and(A016819(n), A260454(n+1))`
-/

namespace A259599.P3129301906146697000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016819 n) (A260454 (n + 1))

end

end A259599.P3129301906146697000

/-! ## A259599.P4600706535456435084

`and(A017286(n), A260449(n+1))`
-/

namespace A259599.P4600706535456435084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A260449 (n + 1))

end

end A259599.P4600706535456435084

/-! ## A259599.P4313868543073730875

`and(A017286(n), A260454(n+1))`
-/

namespace A259599.P4313868543073730875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A260454 (n + 1))

end

end A259599.P4313868543073730875

/-! ## A259599.P18140860129976254873

`and(A017310(n), A260449(n+1))`
-/

namespace A259599.P18140860129976254873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A260449 (n + 1))

end

end A259599.P18140860129976254873

/-! ## A259599.P9734990978141474283

`and(A017310(n), A260454(n+1))`
-/

namespace A259599.P9734990978141474283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A260454 (n + 1))

end

end A259599.P9734990978141474283

/-! ## A259599.P4407978668826765634

`and(A017334(n), A260449(n+1))`
-/

namespace A259599.P4407978668826765634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A260449 (n + 1))

end

end A259599.P4407978668826765634

/-! ## A259599.P11966358976756761045

`and(A017334(n), A260454(n+1))`
-/

namespace A259599.P11966358976756761045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A260454 (n + 1))

end

end A259599.P11966358976756761045

