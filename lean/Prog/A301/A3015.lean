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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A301500: Number of compositions (ordered partitions) of n into squarefree parts (A005117) such that no two adjacent parts are equal (Carlitz compositions).

The programs for A301500, there is no canonical definition to state claims against.
-/

/-! ## A301500.P14205793470082455270

`or(A175244(A228646(n)), A227375(n))`
-/

namespace A301500.P14205793470082455270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175244 (A228646 n).toNat) (A227375 n)

end

end A301500.P14205793470082455270

/-! ## A301500.P14657577926117030003

`or(1, A071626(A007837(n)))`
-/

namespace A301500.P14657577926117030003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A071626 (A007837 n).toNat)

end

end A301500.P14657577926117030003

/-! ## A301500.P17483444386715295173

`or(1, A326175(A085908(n+1)))`
-/

namespace A301500.P17483444386715295173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326175 (A085908 (n + 1)).toNat)

end

end A301500.P17483444386715295173

/-! ## A301500.P10627745329748896101

`A071626(A324756(n)+A007837(n))`
-/

namespace A301500.P10627745329748896101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A324756 n + A007837 n).toNat

end

end A301500.P10627745329748896101

/-! ## A301500.P2660682074304314624

`A353430(A351717(n+1)+A020987(n))`
-/

namespace A301500.P2660682074304314624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (A351717 (n + 1) + A020987 n).toNat

end

end A301500.P2660682074304314624

/-!
# A301504: Expansion of Product_{k>=1} (1 + x^(4*k))*(1 + x^(4*k-3)).

The programs for A301504, there is no canonical definition to state claims against.
-/

/-! ## A301504.P10483417544531218842

`A301568(A271324(n))+A000038(A300622(n))`
-/

namespace A301504.P10483417544531218842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301568 (A271324 n).toNat + A000038 (A300622 n).toNat

end

end A301504.P10483417544531218842

/-! ## A301504.P12649012734117480636

`A301568(A271324(n))%A014963(A000043(n+3))`
-/

namespace A301504.P12649012734117480636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301568 (A271324 n).toNat) (A014963 (A000043 (n + 3)).toNat)

end

end A301504.P12649012734117480636

/-! ## A301504.P6610927436266930501

`A301567(∪[A273812(2*n+1), A001963(n)])`
-/

namespace A301504.P6610927436266930501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273812 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301567 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A301504.P6610927436266930501

/-! ## A301504.P9277813494345666890

`A014963(A061561(n))*A301568(A271324(n))`
-/

namespace A301504.P9277813494345666890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061561 n).toNat * A301568 (A271324 n).toNat

end

end A301504.P9277813494345666890

/-!
# A301505: Expansion of Product_{k>=1} (1 + x^(4*k))*(1 + x^(4*k-1)).

The programs for A301505, there is no canonical definition to state claims against.
-/

/-! ## A301505.P3836900968332086448

`A301570(A047203(n+1)%A179149(n+1))`
-/

namespace A301505.P3836900968332086448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301570 (Int.tmod (A047203 (n + 1)) (A179149 (n + 1))).toNat

end

end A301505.P3836900968332086448

/-! ## A301505.P2674446743833660968

`A301570(A047203(n+1))%A371453(n+1)`
-/

namespace A301505.P2674446743833660968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301570 (A047203 (n + 1)).toNat) (A371453 (n + 1))

end

end A301505.P2674446743833660968

/-! ## A301505.P10668854563662435346

`xor(1, A275948(A232165(n)))`
-/

namespace A301505.P10668854563662435346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A275948 (A232165 n).toNat)

end

end A301505.P10668854563662435346

/-! ## A301505.P12577361663110629818

`abs(Δ[A156607(A018519(n+1))])`
-/

namespace A301505.P12577361663110629818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156607 (A018519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A301505.P12577361663110629818

/-! ## A301505.P6484242899832525307

`A180160(A050435(∑[A022113(n)]))`
-/

namespace A301505.P6484242899832525307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A050435 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A301505.P6484242899832525307

/-!
# A301506: Number of integers less than or equal to n whose largest prime factor is 5.

The programs for A301506, the canonical program `A301506.P17975347321607137903` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301506 has offset 0).

The definition of A301506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301506.P14769842929644771122

`∑[char[A080193(n+1)]]`
-/

namespace A301506.P14769842929644771122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301506.P14769842929644771122

namespace A301506

/-- `∑[char[A080193(n+1)]]` -/
def P14769842929644771122.Spec : Prop :=
  ∀ n, (P14769842929644771122.a n : ℤ) = A301506 n

end A301506

/-! ## A301506.P10866752783465746532

`∑[char[5*A051037(n+1)]]`
-/

namespace A301506.P10866752783465746532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A051037 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301506.P10866752783465746532

namespace A301506

/-- `∑[char[5*A051037(n+1)]]` -/
def P10866752783465746532.Spec : Prop :=
  ∀ n, (P10866752783465746532.a n : ℤ) = A301506 n

end A301506

/-! ## A301506.P4545115913008765969

`∑[char[5*A112757(n+1)]]`
-/

namespace A301506.P4545115913008765969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A112757 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301506.P4545115913008765969

namespace A301506

/-- `∑[char[5*A112757(n+1)]]` -/
def P4545115913008765969.Spec : Prop :=
  ∀ n, (P4545115913008765969.a n : ℤ) = A301506 n

end A301506

/-! ## A301506.P17975347321607137903

`a(n-1)+val(A006530(n), 5)` with `a(0)=0`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A301506

/-- `a(n-1)+val(A006530(n), 5)` -/
def P17975347321607137903.Spec : Prop :=
  ∀ n, (P17975347321607137903.a n : ℤ) = A301506 n

theorem P17975347321607137903.correct : P17975347321607137903.Spec := by
  intro n
  simp only [A301506]

end A301506

/-! ## A301506.P5448978735410659682

`∑[char[eq[2, A006530(n+1)-3]+1]]`
-/

namespace A301506.P5448978735410659682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301506.P5448978735410659682

namespace A301506

/-- `∑[char[eq[2, A006530(n+1)-3]+1]]` -/
def P5448978735410659682.Spec : Prop :=
  ∀ n, (P5448978735410659682.a n : ℤ) = A301506 n

end A301506

/-! ## A301506.P171905312857175471

`∑[(A184762(2*A014963(n+2))+1)%A280569(n)]`
-/

namespace A301506.P171905312857175471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184762 (2 * A014963 (n + 2)).toNat + 1) (A280569 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301506.P171905312857175471

namespace A301506

/-- `∑[(A184762(2*A014963(n+2))+1)%A280569(n)]` -/
def P171905312857175471.Spec : Prop :=
  ∀ n, P171905312857175471.a n = A301506 n

end A301506

/-!
# A301508: Expansion of Product_{k>=0} (1 + x^(4*k+2))*(1 + x^(4*k+3)).

The programs for A301508, there is no canonical definition to state claims against.
-/

/-! ## A301508.P12951457368603122177

`A033182(∑[A046079(A022368(n))])`
-/

namespace A301508.P12951457368603122177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A022368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301508.P12951457368603122177

/-! ## A301508.P2244086312790019570

`A008676(A096515(n+1))+A000038(A000016(n))`
-/

namespace A301508.P2244086312790019570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A096515 (n + 1)).toNat + A000038 (A000016 n).toNat

end

end A301508.P2244086312790019570

/-! ## A301508.P8375387266034355026

`A001221(A016114(n+1))*A008676(A096515(n+1))`
-/

namespace A301508.P8375387266034355026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A016114 (n + 1)).toNat * A008676 (A096515 (n + 1)).toNat

end

end A301508.P8375387266034355026

/-!
# A301511: Expansion of e.g.f. exp(Sum_{k>=1} psi(k)*x^k/k!), where psi() is the Dedekind psi function (A001615).

The programs for A301511, there is no canonical definition to state claims against.
-/

/-! ## A301511.P9995823492464147673

`A072749(A278398(n))+1`
-/

namespace A301511.P9995823492464147673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072749 (A278398 n).toNat + 1

end

end A301511.P9995823492464147673

/-! ## A301511.P16177040424134169037

`A187184(∑[A078678(n)²])`
-/

namespace A301511.P16177040424134169037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301511.P16177040424134169037

/-!
# A301515: Complete list of integers x > 1 such that x^2 - x = y^q - y, where q is an odd prime and y is a prime power.

The programs for A301515, there is no canonical definition to state claims against.
-/

/-! ## A301515.P13741605847555326640

`A141429(2*(n^4+1)+1)`
-/

namespace A301515.P13741605847555326640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (2 * (n ^ 4 + 1) + 1)

end

end A301515.P13741605847555326640

/-!
# A301521: Numbers k such that 4*k^k - 3 is prime.

The programs for A301521, there is no canonical definition to state claims against.
-/

/-! ## A301521.P10562688438329382254

`∑[(2*a(n-2))^n-1]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A301521.P10562688438329382254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 2] fun n f1 =>
  (2 * f1 (n - 2)) ^ n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301521.P10562688438329382254

/-!
# A301523: Integers which can be partitioned into two distinct factorials. 0! and 1! are not considered distinct.

The programs for A301523, the canonical program `A301523.P361054495749073688` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301523 has offset 1).

The definition of A301523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301523.P1724987861572753934

`A066847(∑[char[∑[n]]]+n)`
-/

namespace A301523.P1724987861572753934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066847 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A301523.P1724987861572753934

namespace A301523

/-- `A066847(∑[char[∑[n]]]+n)` -/
def P1724987861572753934.Spec : Prop :=
  ∀ n, P1724987861572753934.a n = A301523 (n + 1)

end A301523

/-! ## A301523.P9943979526128328064

`A166350(n+1)+(comp[∑[n]]-n)!`
-/

namespace A301523.P9943979526128328064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℤ)

end

end A301523.P9943979526128328064

namespace A301523

/-- `A166350(n+1)+(comp[∑[n]]-n)!` -/
def P9943979526128328064.Spec : Prop :=
  ∀ n, P9943979526128328064.a n = A301523 (n + 1)

end A301523

/-! ## A301523.P361054495749073688

`A002260(n+1)!+A003057(n+2)!`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A301523

/-- `A002260(n+1)!+A003057(n+2)!` -/
def P361054495749073688.Spec : Prop :=
  ∀ n, (P361054495749073688.a n : ℤ) = A301523 (n + 1)

theorem P361054495749073688.correct : P361054495749073688.Spec := by
  intro n
  simp only [A301523, Nat.add_sub_cancel]

end A301523

/-! ## A301523.P2527224294317063809

`A166350(n+1)+A000142(comp[∑[n]]-n)`
-/

namespace A301523.P2527224294317063809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + A000142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A301523.P2527224294317063809

namespace A301523

/-- `A166350(n+1)+A000142(comp[∑[n]]-n)` -/
def P2527224294317063809.Spec : Prop :=
  ∀ n, P2527224294317063809.a n = A301523 (n + 1)

end A301523

/-! ## A301523.P5281665478595785490

`A066847(n)+A001563(A002024(n+1))`
-/

namespace A301523.P5281665478595785490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066847 n + A001563 (A002024 (n + 1)).toNat

end

end A301523.P5281665478595785490

namespace A301523

/-- `A066847(n)+A001563(A002024(n+1))` -/
def P5281665478595785490.Spec : Prop :=
  ∀ n, P5281665478595785490.a n = A301523 (n + 1)

end A301523

/-! ## A301523.P15442807537224158761

`A059590(A018900(n+1))`
-/

namespace A301523.P15442807537224158761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A018900 (n + 1)).toNat

end

end A301523.P15442807537224158761

namespace A301523

/-- `A059590(A018900(n+1))` -/
def P15442807537224158761.Spec : Prop :=
  ∀ n, P15442807537224158761.a n = A301523 (n + 1)

end A301523

/-! ## A301523.P14337150682309816251

`A059590(eq[2, A000120(n)])`
-/

namespace A301523.P14337150682309816251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301523.P14337150682309816251

namespace A301523

/-- `A059590(eq[2, A000120(n)])` -/
def P14337150682309816251.Spec : Prop :=
  ∀ n, P14337150682309816251.a n = A301523 (n + 1)

end A301523

/-! ## A301523.P892461121393292028

`A277011(A136318(n+1))`
-/

namespace A301523.P892461121393292028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A136318 (n + 1)).toNat

end

end A301523.P892461121393292028

namespace A301523

/-- `A277011(A136318(n+1))` -/
def P892461121393292028.Spec : Prop :=
  ∀ n, P892461121393292028.a n = A301523 (n + 1)

end A301523

/-!
# A301525: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301525, there is no canonical definition to state claims against.
-/

/-! ## A301525.P382449827562516508

`A301531(∑[4*n]+1)`
-/

namespace A301525.P382449827562516508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301525.P382449827562516508

/-! ## A301525.P15613892043769593693

`record[A003982(n)*A301531(n+1)]`
-/

namespace A301525.P15613892043769593693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301525.P15613892043769593693

/-! ## A301525.P11453414730901688063

`record[gcd(A049581(n), A301531(n+1))]`
-/

namespace A301525.P11453414730901688063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A301531 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301525.P11453414730901688063

/-! ## A301525.P12283104728186221863

`A301531(A001844(n))^A007318(∑[n])`
-/

namespace A301525.P12283104728186221863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301531 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A301525.P12283104728186221863

/-! ## A301525.P18329192316957250153

`A301531(A001844(n))+A008683(8*n+4)`
-/

namespace A301525.P18329192316957250153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A301525.P18329192316957250153

/-!
# A301526: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301526, there is no canonical definition to state claims against.
-/

/-! ## A301526.P5628920664696544064

`A301531(∑[n+2]+4)`
-/

namespace A301526.P5628920664696544064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301526.P5628920664696544064

/-! ## A301526.P7503527746137882924

`A301531(A167614(n+1))%A199030(n)`
-/

namespace A301526.P7503527746137882924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301531 (A167614 (n + 1)).toNat) (A199030 n)

end

end A301526.P7503527746137882924

/-! ## A301526.P11435544136159641078

`gcd(A000038(n), A301531(A167614(n+1)))`
-/

namespace A301526.P11435544136159641078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A301531 (A167614 (n + 1)).toNat)

end

end A301526.P11435544136159641078

/-! ## A301526.P16738368239104555342

`lcm(A033999(n), A301531(A167614(n+1)))`
-/

namespace A301526.P16738368239104555342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A301531 (A167614 (n + 1)).toNat)

end

end A301526.P16738368239104555342

/-! ## A301526.P12842869677434264436

`or(A025922(n), A301531(A167614(n+1)))`
-/

namespace A301526.P12842869677434264436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025922 n) (A301531 (A167614 (n + 1)).toNat)

end

end A301526.P12842869677434264436

/-!
# A301527: Number of n X 4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301527, there is no canonical definition to state claims against.
-/

/-! ## A301527.P15739755088892169959

`A301531(A141214(n)+7)`
-/

namespace A301527.P15739755088892169959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A141214 n + 7).toNat

end

end A301527.P15739755088892169959

/-! ## A301527.P10360017250527654780

`A301531(A052905(n)+9)`
-/

namespace A301527.P10360017250527654780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A052905 n + 9).toNat

end

end A301527.P10360017250527654780

/-! ## A301527.P9186519608176247898

`A301531(A167614(n+2)+1)`
-/

namespace A301527.P9186519608176247898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A167614 (n + 2) + 1).toNat

end

end A301527.P9186519608176247898

/-! ## A301527.P9045661493291466292

`A301531(eq[5, A131818(n+1)])`
-/

namespace A301527.P9045661493291466292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301527.P9045661493291466292

/-! ## A301527.P14526413681965506757

`A301531(Δ[A264443(n)-n²])`
-/

namespace A301527.P14526413681965506757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (f1 (n + 1) - f1 n).toNat

end

end A301527.P14526413681965506757

/-!
# A301528: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301528, there is no canonical definition to state claims against.
-/

/-! ## A301528.P11925910369827517412

`A301531(A167499(n+3))`
-/

namespace A301528.P11925910369827517412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A167499 (n + 3)).toNat

end

end A301528.P11925910369827517412

/-! ## A301528.P16876410018419251569

`A301531(A056000(n)+15)`
-/

namespace A301528.P16876410018419251569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A056000 n + 15).toNat

end

end A301528.P16876410018419251569

/-! ## A301528.P11235666914196989466

`A301531(Δ[A264443(n)])`
-/

namespace A301528.P11235666914196989466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (f1 (n + 1) - f1 n).toNat

end

end A301528.P11235666914196989466

/-! ## A301528.P4827396122836527194

`A301531(A374005(n+1))`
-/

namespace A301528.P4827396122836527194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A374005 (n + 1)).toNat

end

end A301528.P4827396122836527194

/-! ## A301528.P10790697960817681222

`A301531(A046691(n+3))`
-/

namespace A301528.P10790697960817681222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A046691 (n + 3)).toNat

end

end A301528.P10790697960817681222

/-!
# A301529: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301529, there is no canonical definition to state claims against.
-/

/-! ## A301529.P5477484839799450066

`A301531(eq[7, A131818(n+1)])`
-/

namespace A301529.P5477484839799450066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301529.P5477484839799450066

/-! ## A301529.P16744464323015124390

`A301531(A374007(n+1))`
-/

namespace A301529.P16744464323015124390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A374007 (n + 1)).toNat

end

end A301529.P16744464323015124390

/-! ## A301529.P15421659268767073250

`A301531(A052905(n+3))`
-/

namespace A301529.P15421659268767073250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A052905 (n + 3)).toNat

end

end A301529.P15421659268767073250

/-! ## A301529.P12982656468813537845

`A301531(eq[3, A219347(n)])`
-/

namespace A301529.P12982656468813537845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301529.P12982656468813537845

/-! ## A301529.P18398923148681501068

`A301531(eq[5, A193592(n)])`
-/

namespace A301529.P18398923148681501068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301529.P18398923148681501068

/-!
# A301530: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301530, there is no canonical definition to state claims against.
-/

/-! ## A301530.P4893767331169469719

`A301531(eq[8, A131818(n+1)])`
-/

namespace A301530.P4893767331169469719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301530.P4893767331169469719

/-! ## A301530.P15140361731308190055

`A301531(A374008(n+1))`
-/

namespace A301530.P15140361731308190055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A374008 (n + 1)).toNat

end

end A301530.P15140361731308190055

/-! ## A301530.P14089291977325936352

`A301531(A055999(n+4))`
-/

namespace A301530.P14089291977325936352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A055999 (n + 4)).toNat

end

end A301530.P14089291977325936352

/-! ## A301530.P18212568559992775460

`A301531(eq[4, A219347(n)])`
-/

namespace A301530.P18212568559992775460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301530.P18212568559992775460

/-! ## A301530.P9443081946324597833

`A301531(eq[6, A193592(n)])`
-/

namespace A301530.P9443081946324597833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301530.P9443081946324597833

/-!
# A301531: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301531, there is no canonical definition to state claims against.
-/

/-! ## A301531.P8592576566892624563

`∏{e}[A007434(A156584(n)), #]`
-/

namespace A301531.P8592576566892624563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A156584 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A301531.P8592576566892624563

/-! ## A301531.P14591612456189480002

`A326214(A299905(n))+A300539(n+1)`
-/

namespace A301531.P14591612456189480002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326214 (A299905 n).toNat + A300539 (n + 1)

end

end A301531.P14591612456189480002

/-! ## A301531.P9810522326469595353

`A300923(n+1)-A111829(A299905(n))`
-/

namespace A301531.P9810522326469595353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (n + 1) - A111829 (A299905 n).toNat

end

end A301531.P9810522326469595353

/-! ## A301531.P10771778316305122874

`A299905(n)²+A300966(n+1)-A111829(A299905(n))`
-/

namespace A301531.P10771778316305122874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n ^ 2 + (A300966 (n + 1) - A111829 (A299905 n).toNat)

end

end A301531.P10771778316305122874

/-!
# A301535: Number of n X n 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301535, there is no canonical definition to state claims against.
-/

/-! ## A301535.P18068170963606125123

`A301541(∑[4*n]+1)`
-/

namespace A301535.P18068170963606125123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301535.P18068170963606125123

/-! ## A301535.P4020322518016601190

`record[A301541(Δ[A235355(n)])]`
-/

namespace A301535.P4020322518016601190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301535.P4020322518016601190

/-! ## A301535.P4535006925488398296

`record[A301541(A330613(n+1))]`
-/

namespace A301535.P4535006925488398296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301535.P4535006925488398296

/-! ## A301535.P6598736710637755701

`A301541(A001844(n))+char[11]`
-/

namespace A301535.P6598736710637755701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301535.P6598736710637755701

/-! ## A301535.P15210954117465881384

`∏{e}[2^n, A301541(A001844(#))]`
-/

namespace A301535.P15210954117465881384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A301541 (A001844 (Nat.factorization (f1 n) p)).toNat

end

end A301535.P15210954117465881384

/-!
# A301536: Number of n X 3 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301536, there is no canonical definition to state claims against.
-/

/-! ## A301536.P15215111267069483024

`A301541(∑[n+2]+4)`
-/

namespace A301536.P15215111267069483024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301536.P15215111267069483024

/-! ## A301536.P8005548817108667957

`and(-1, A301541(A167614(n+1)))`
-/

namespace A301536.P8005548817108667957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A301541 (A167614 (n + 1)).toNat)

end

end A301536.P8005548817108667957

/-! ## A301536.P2356534770954592167

`A301541(A167614(n+1))+A025439(n)`
-/

namespace A301536.P2356534770954592167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167614 (n + 1)).toNat + A025439 n

end

end A301536.P2356534770954592167

/-! ## A301536.P4444093596183752680

`A301541(A167614(n+1))+A025469(n)`
-/

namespace A301536.P4444093596183752680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167614 (n + 1)).toNat + A025469 n

end

end A301536.P4444093596183752680

/-! ## A301536.P1807509117028553227

`A014998(n)*A301541(A167614(n+1))`
-/

namespace A301536.P1807509117028553227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A301541 (A167614 (n + 1)).toNat

end

end A301536.P1807509117028553227

/-!
# A301537: Number of nX4 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301537, there is no canonical definition to state claims against.
-/

/-! ## A301537.P14152181816254363481

`A301541(∑[n+3]+7)`
-/

namespace A301537.P14152181816254363481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A301537.P14152181816254363481

/-! ## A301537.P543253009259726627

`A301541(A000217(n+3)+4)+char[19]`
-/

namespace A301537.P543253009259726627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301537.P543253009259726627

/-! ## A301537.P17140007892310214897

`A301541(A167614(n+2)+1)+A065687(n+1)`
-/

namespace A301537.P17140007892310214897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167614 (n + 2) + 1).toNat + A065687 (n + 1)

end

end A301537.P17140007892310214897

/-! ## A301537.P538679207464883640

`A301541(A167614(n+2)+1)%A301538(n+1)`
-/

namespace A301537.P538679207464883640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301541 (A167614 (n + 2) + 1).toNat) (A301538 (n + 1))

end

end A301537.P538679207464883640

/-! ## A301537.P12109534510820818007

`A301541(A000217(n+3)+4)%A000108(n+4)`
-/

namespace A301537.P12109534510820818007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301541 (A000217 (n + 3) + 4).toNat) (A000108 (n + 4))

end

end A301537.P12109534510820818007

/-!
# A301538: Number of n X 5 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301538, there is no canonical definition to state claims against.
-/

/-! ## A301538.P1070911133575617290

`A301541(∑[n+4]+11)`
-/

namespace A301538.P1070911133575617290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A301538.P1070911133575617290

/-!
# A301539: Number of nX6 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301539, there is no canonical definition to state claims against.
-/

/-! ## A301539.P13416795609202692226

`A301541(A056115(n)+21)`
-/

namespace A301539.P13416795609202692226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A056115 n + 21).toNat

end

end A301539.P13416795609202692226

/-! ## A301539.P13533301608320042859

`A301541(A167487(n+4)-1)`
-/

namespace A301539.P13533301608320042859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167487 (n + 4) - 1).toNat

end

end A301539.P13533301608320042859

/-! ## A301539.P8087171584787954760

`A301541(A167614(n+4)+3)`
-/

namespace A301539.P8087171584787954760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167614 (n + 4) + 3).toNat

end

end A301539.P8087171584787954760

/-! ## A301539.P7280917129174832288

`A301541(A000124(n+5)+5)`
-/

namespace A301539.P7280917129174832288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A000124 (n + 5) + 5).toNat

end

end A301539.P7280917129174832288

/-! ## A301539.P12541122560847478482

`A301541(A000096(n+4)+7)`
-/

namespace A301539.P12541122560847478482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A000096 (n + 4) + 7).toNat

end

end A301539.P12541122560847478482

/-!
# A301540: Number of nX7 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301540, there is no canonical definition to state claims against.
-/

/-! ## A301540.P14980612989926752209

`A301541(A167487(n+5))`
-/

namespace A301540.P14980612989926752209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167487 (n + 5)).toNat

end

end A301540.P14980612989926752209

/-! ## A301540.P3084129654442765507

`A301541(A056119(n)+28)`
-/

namespace A301540.P3084129654442765507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A056119 n + 28).toNat

end

end A301540.P3084129654442765507

/-! ## A301540.P16895626184110322608

`A301541(eq[11, A066657(n)])`
-/

namespace A301540.P16895626184110322608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301540.P16895626184110322608

/-! ## A301540.P17945268187714960151

`A301541(A166136(n+5)+1)`
-/

namespace A301540.P17945268187714960151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A166136 (n + 5) + 1).toNat

end

end A301540.P17945268187714960151

/-! ## A301540.P16180903158738176967

`A301541(A167614(n+5)+4)`
-/

namespace A301540.P16180903158738176967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (A167614 (n + 5) + 4).toNat

end

end A301540.P16180903158738176967

/-!
# A301541: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301541, there is no canonical definition to state claims against.
-/

/-! ## A301541.P5180382689450387300

`A240519(n+1)-A186034(A022167(n))`
-/

namespace A301541.P5180382689450387300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (n + 1) - A186034 (A022167 n).toNat

end

end A301541.P5180382689450387300

/-! ## A301541.P13123062856118501673

`A240519(n+1)-A124763(A099594(n))`
-/

namespace A301541.P13123062856118501673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (n + 1) - A124763 (A099594 n).toNat

end

end A301541.P13123062856118501673

/-! ## A301541.P2677862466396423250

`A240519(n+1)-A340998(A174376(n))`
-/

namespace A301541.P2677862466396423250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (n + 1) - A340998 ((A174376 n).toNat + 140)

end

end A301541.P2677862466396423250

/-! ## A301541.P11474369360426132651

`A240519(n+1)-A037800(A099594(n)²)`
-/

namespace A301541.P11474369360426132651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (n + 1) - A037800 (A099594 n ^ 2).toNat

end

end A301541.P11474369360426132651

/-! ## A301541.P11248197476066984755

`A240519(n+1)-A121373(A370206(3*n+5))`
-/

namespace A301541.P11248197476066984755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (n + 1) - A121373 (A370206 (3 * n + 5)).toNat

end

end A301541.P11248197476066984755

/-!
# A301542: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_4(k)).

The programs for A301542, there is no canonical definition to state claims against.
-/

/-! ## A301542.P2500674772982137918

`A321876(A052905(n+2))`
-/

namespace A301542.P2500674772982137918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A052905 (n + 2)).toNat

end

end A301542.P2500674772982137918

/-! ## A301542.P17882937646680589976

`A321876(A056115(n)+10)`
-/

namespace A301542.P17882937646680589976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A056115 n + 10).toNat

end

end A301542.P17882937646680589976

/-! ## A301542.P1046291483916227535

`A321876(eq[4, A025581(n)])`
-/

namespace A301542.P1046291483916227535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301542.P1046291483916227535

/-! ## A301542.P13499865048988958398

`A321876(eq[5, A004736(n+1)])`
-/

namespace A301542.P13499865048988958398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301542.P13499865048988958398

/-! ## A301542.P13207100318863039672

`A321876(eq[2, A144257(n+1)-2])`
-/

namespace A301542.P13207100318863039672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301542.P13207100318863039672

/-!
# A301543: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_5(k)).

The programs for A301543, there is no canonical definition to state claims against.
-/

/-! ## A301543.P9842678470737770876

`A321876(A055999(n+3))`
-/

namespace A301543.P9842678470737770876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A055999 (n + 3)).toNat

end

end A301543.P9842678470737770876

/-! ## A301543.P16997886799720364934

`A321876(eq[5, A025581(n)])`
-/

namespace A301543.P16997886799720364934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301543.P16997886799720364934

/-! ## A301543.P10979258128238167477

`A321876(A000217(n+6)-6)`
-/

namespace A301543.P10979258128238167477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A000217 (n + 6) - 6).toNat

end

end A301543.P10979258128238167477

/-! ## A301543.P4905480582350985029

`A321876(eq[6, A004736(n+1)])`
-/

namespace A301543.P4905480582350985029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301543.P4905480582350985029

/-! ## A301543.P8054369373730247086

`A321876(A000124(n+5)+n-1)`
-/

namespace A301543.P8054369373730247086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A301543.P8054369373730247086

/-!
# A301544: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_6(k)).

The programs for A301544, there is no canonical definition to state claims against.
-/

/-! ## A301544.P13994977870484401956

`A321876(2*n+∑[n+5]+16)`
-/

namespace A301544.P13994977870484401956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 16))

end

end A301544.P13994977870484401956

/-!
# A301545: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_7(k)).

The programs for A301545, there is no canonical definition to state claims against.
-/

/-! ## A301545.P13224385407028664641

`A321876(eq[4, A263233(n)])`
-/

namespace A301545.P13224385407028664641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301545.P13224385407028664641

/-! ## A301545.P1300661686456418010

`A321876(eq[7, A025581(n)])`
-/

namespace A301545.P1300661686456418010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301545.P1300661686456418010

/-! ## A301545.P9475363500719980514

`A321876(eq[8, A193739(n)])`
-/

namespace A301545.P9475363500719980514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301545.P9475363500719980514

/-! ## A301545.P2039875447541762595

`A321876(eq[7, A144257(n+1)])`
-/

namespace A301545.P2039875447541762595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301545.P2039875447541762595

/-! ## A301545.P1106600158653771548

`A321876(eq[8, A004736(n+1)])`
-/

namespace A301545.P1106600158653771548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301545.P1106600158653771548

/-!
# A301546: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_8(k)).

The programs for A301546, there is no canonical definition to state claims against.
-/

/-! ## A301546.P12727680504350348384

`A321876(eq[7, A116598(n)])`
-/

namespace A301546.P12727680504350348384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301546.P12727680504350348384

/-! ## A301546.P3675810581065476432

`A321876(eq[8, A025581(n)])`
-/

namespace A301546.P3675810581065476432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301546.P3675810581065476432

/-! ## A301546.P11566379450612157976

`A321876(eq[9, A193739(n)])`
-/

namespace A301546.P11566379450612157976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301546.P11566379450612157976

/-! ## A301546.P4775150356994632725

`A321876(eq[8, A144257(n+1)])`
-/

namespace A301546.P4775150356994632725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301546.P4775150356994632725

/-! ## A301546.P14682493013942288376

`A321876(eq[9, A004736(n+1)])`
-/

namespace A301546.P14682493013942288376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301546.P14682493013942288376

/-!
# A301547: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_9(k)).

The programs for A301547, there is no canonical definition to state claims against.
-/

/-! ## A301547.P18340863234832888400

`A321876(eq[8, A116598(n)])`
-/

namespace A301547.P18340863234832888400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301547.P18340863234832888400

/-! ## A301547.P1292337865790451055

`A321876(eq[9, A025581(n)])`
-/

namespace A301547.P1292337865790451055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301547.P1292337865790451055

/-! ## A301547.P8604946393987244927

`A321876(eq[10, A193739(n)])`
-/

namespace A301547.P8604946393987244927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301547.P8604946393987244927

/-! ## A301547.P13864430420194809433

`A321876(eq[19, A099375(n)])`
-/

namespace A301547.P13864430420194809433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301547.P13864430420194809433

/-! ## A301547.P5024679158356070173

`A321876(eq[10, A004736(n+1)])`
-/

namespace A301547.P5024679158356070173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301547.P5024679158356070173

/-!
# A301548: Expansion of Product_{k>=1} (1 + x^k)^(sigma_4(k)).

The programs for A301548, there is no canonical definition to state claims against.
-/

/-! ## A301548.P12155204092732831825

`A321877(A052905(n+2))`
-/

namespace A301548.P12155204092732831825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A052905 (n + 2)).toNat

end

end A301548.P12155204092732831825

/-! ## A301548.P11178698686571567876

`A321877(eq[4, A025581(n)])`
-/

namespace A301548.P11178698686571567876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301548.P11178698686571567876

/-! ## A301548.P10006615874093194540

`A321877(eq[4, A116949(n)])`
-/

namespace A301548.P10006615874093194540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301548.P10006615874093194540

/-! ## A301548.P15389912649755144090

`A321877(A055999(n+2)+1)`
-/

namespace A301548.P15389912649755144090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A055999 (n + 2) + 1).toNat

end

end A301548.P15389912649755144090

/-! ## A301548.P2999723359811904477

`A321877(Δ[A023545(n+1)]-1)`
-/

namespace A301548.P2999723359811904477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (f1 (n + 1) - f1 n - 1).toNat

end

end A301548.P2999723359811904477

/-!
# A301549: Expansion of Product_{k>=1} (1 + x^k)^(sigma_5(k)).

The programs for A301549, there is no canonical definition to state claims against.
-/

/-! ## A301549.P12051358760268043090

`A321877(A055999(n+3))`
-/

namespace A301549.P12051358760268043090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A055999 (n + 3)).toNat

end

end A301549.P12051358760268043090

/-! ## A301549.P7450766990268493941

`A321877(eq[2, A116949(n)])`
-/

namespace A301549.P7450766990268493941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301549.P7450766990268493941

/-! ## A301549.P12648919105286798893

`A321877(eq[5, A025581(n)])`
-/

namespace A301549.P12648919105286798893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301549.P12648919105286798893

/-! ## A301549.P13508555590756955200

`A321877(Δ[A023551(n+1)])`
-/

namespace A301549.P13508555590756955200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (f1 (n + 1) - f1 n).toNat

end

end A301549.P13508555590756955200

/-! ## A301549.P10436282133028917371

`A321877(Δ[A023545(n+2)]-2)`
-/

namespace A301549.P10436282133028917371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (f1 (n + 1) - f1 n - 2).toNat

end

end A301549.P10436282133028917371

/-!
# A301550: Expansion of Product_{k>=1} (1 + x^k)^(sigma_6(k)).

The programs for A301550, there is no canonical definition to state claims against.
-/

/-! ## A301550.P7539684845546977366

`A321877(A000096(n+6)-6)`
-/

namespace A301550.P7539684845546977366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A000096 (n + 6) - 6).toNat

end

end A301550.P7539684845546977366

/-! ## A301550.P9249108106774118355

`A321877(A000217(n+7)-7)`
-/

namespace A301550.P9249108106774118355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A000217 (n + 7) - 7).toNat

end

end A301550.P9249108106774118355

/-! ## A301550.P3462732659806325371

`A321877(eq[7, A004736(n+1)])`
-/

namespace A301550.P3462732659806325371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301550.P3462732659806325371

/-! ## A301550.P12113475175078080536

`A321877(Δ[A023551(n+2)]-1)`
-/

namespace A301550.P12113475175078080536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (f1 (n + 1) - f1 n - 1).toNat

end

end A301550.P12113475175078080536

/-! ## A301550.P1398263091755012767

`A321877(A000124(n+6)+n-1)`
-/

namespace A301550.P1398263091755012767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A301550.P1398263091755012767

/-!
# A301551: Expansion of Product_{k>=1} (1 + x^k)^(sigma_7(k)).

The programs for A301551, there is no canonical definition to state claims against.
-/

/-! ## A301551.P1148727361974781722

`A321877(eq[4, A263233(n)])`
-/

namespace A301551.P1148727361974781722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301551.P1148727361974781722

/-! ## A301551.P13861547138307316571

`A321877(eq[7, A025581(n)])`
-/

namespace A301551.P13861547138307316571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301551.P13861547138307316571

/-! ## A301551.P7412839483097168092

`A321877(eq[8, A193739(n)])`
-/

namespace A301551.P7412839483097168092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301551.P7412839483097168092

/-! ## A301551.P8122557500687515198

`A321877(eq[8, A004736(n+1)])`
-/

namespace A301551.P8122557500687515198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301551.P8122557500687515198

/-! ## A301551.P17169320609613747609

`A321877(eq[64, A055461(n+1)])`
-/

namespace A301551.P17169320609613747609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301551.P17169320609613747609

/-!
# A301552: Expansion of Product_{k>=1} (1 + x^k)^(sigma_8(k)).

The programs for A301552, there is no canonical definition to state claims against.
-/

/-! ## A301552.P17076852049485714676

`A321877(eq[7, A116598(n)])`
-/

namespace A301552.P17076852049485714676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301552.P17076852049485714676

/-! ## A301552.P15745545106502945663

`A321877(eq[8, A025581(n)])`
-/

namespace A301552.P15745545106502945663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301552.P15745545106502945663

/-! ## A301552.P7425452320520228896

`A321877(eq[9, A193739(n)])`
-/

namespace A301552.P7425452320520228896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301552.P7425452320520228896

/-! ## A301552.P11639845756700588919

`A321877(eq[9, A004736(n+1)])`
-/

namespace A301552.P11639845756700588919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301552.P11639845756700588919

/-! ## A301552.P12656346589803502628

`A321877(eq[81, A055461(n+1)])`
-/

namespace A301552.P12656346589803502628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301552.P12656346589803502628

/-!
# A301553: Expansion of Product_{k>=1} (1 + x^k)^(sigma_9(k)).

The programs for A301553, there is no canonical definition to state claims against.
-/

/-! ## A301553.P14585976917053303070

`A321877(eq[8, A116598(n)])`
-/

namespace A301553.P14585976917053303070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301553.P14585976917053303070

/-! ## A301553.P13827753908354490466

`A321877(eq[8, A116949(n)])`
-/

namespace A301553.P13827753908354490466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301553.P13827753908354490466

/-! ## A301553.P15077038362711822657

`A321877(eq[9, A025581(n)])`
-/

namespace A301553.P15077038362711822657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301553.P15077038362711822657

/-! ## A301553.P15785661958817174901

`A321877(eq[10, A193739(n)])`
-/

namespace A301553.P15785661958817174901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301553.P15785661958817174901

/-! ## A301553.P8217273351045167077

`A321877(eq[19, A099375(n)])`
-/

namespace A301553.P8217273351045167077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301553.P8217273351045167077

/-!
# A301554: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(sigma_0(k)).

The programs for A301554, there is no canonical definition to state claims against.
-/

/-! ## A301554.P6766908950347601310

`A316571(A085089(∏[record[and(n+1, xor(n, n+1)-n)]]))`
-/

namespace A301554.P6766908950347601310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A085089 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A301554.P6766908950347601310

/-! ## A301554.P12033736716662607871

`A185283(A101052(n)*A311225(n))`
-/

namespace A301554.P12033736716662607871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A101052 n * A311225 n).toNat

end

end A301554.P12033736716662607871

/-! ## A301554.P17463067890117167363

`A185283(lcm(A101052(n), A311225(n)))`
-/

namespace A301554.P17463067890117167363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.lcm (A101052 n) (A311225 n))

end

end A301554.P17463067890117167363

/-!
# A301555: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(sigma(k)).

The programs for A301555, there is no canonical definition to state claims against.
-/

/-! ## A301555.P10311705810828625815

`A132226(A084059(n))`
-/

namespace A301555.P10311705810828625815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132226 (A084059 n).toNat

end

end A301555.P10311705810828625815

/-! ## A301555.P299235192913281382

`A111439(A001411(n)*A224958(n))`
-/

namespace A301555.P299235192913281382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A001411 n * A224958 n).toNat

end

end A301555.P299235192913281382

/-!
# A301556: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(sigma_2(k)).

The programs for A301556, there is no canonical definition to state claims against.
-/

/-! ## A301556.P7593921875181169494

`eq[n, A005132(A051953(n+4))]`
-/

namespace A301556.P7593921875181169494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A051953 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A301556.P7593921875181169494

/-! ## A301556.P11613403090000804742

`xor(record[A048669(n+1)], A048657(2*n+1))`
-/

namespace A301556.P11613403090000804742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A048657 (2 * n + 1))

end

end A301556.P11613403090000804742

/-!
# A301560: Matching number of the n-odd graph.

The programs for A301560, the canonical program `A301560.P16469941488210855980` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301560 has offset 1).

The definition of A301560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301560.P16469941488210855980

`A000984(n)-A130380(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A301560

/-- `A000984(n)-A130380(n)` -/
def P16469941488210855980.Spec : Prop :=
  ∀ n, P16469941488210855980.a n = A301560 (n + 1)

theorem P16469941488210855980.correct : P16469941488210855980.Spec := by
  intro n
  simp only [A301560, Nat.add_sub_cancel]

end A301560

/-! ## A301560.P11833520824163442342

`A001405(2*n)-A130380(n)`
-/

namespace A301560.P11833520824163442342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A130380 n

end

end A301560.P11833520824163442342

namespace A301560

/-- `A001405(2*n)-A130380(n)` -/
def P11833520824163442342.Spec : Prop :=
  ∀ n, P11833520824163442342.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P9271594745168414129

`A210736(2*n+1)-A130380(n)`
-/

namespace A301560.P9271594745168414129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) - A130380 n

end

end A301560.P9271594745168414129

namespace A301560

/-- `A210736(2*n+1)-A130380(n)` -/
def P9271594745168414129.Spec : Prop :=
  ∀ n, P9271594745168414129.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P15391242164236208763

`floor(∏[4-2/(n+1)]/4)`
-/

namespace A301560.P15391242164236208763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ j ∈ Finset.range (n + 1), f1 j) / 4⌋

end

end A301560.P15391242164236208763

namespace A301560

/-- `floor(∏[4-2/(n+1)]/4)` -/
def P15391242164236208763.Spec : Prop :=
  ∀ n, P15391242164236208763.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P16895398674752432517

`(A001700(n)-A036987(n))/2`
-/

namespace A301560.P16895398674752432517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 n - A036987 n : ℚ) / 2

end

end A301560.P16895398674752432517

namespace A301560

/-- `(A001700(n)-A036987(n))/2` -/
def P16895398674752432517.Spec : Prop :=
  ∀ n, P16895398674752432517.a n = (A301560 (n + 1) : ℚ)

end A301560

/-! ## A301560.P5729355233249539812

`A000302(n)-A007008(2*(n+1))`
-/

namespace A301560.P5729355233249539812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A007008 (2 * (n + 1))

end

end A301560.P5729355233249539812

namespace A301560

/-- `A000302(n)-A007008(2*(n+1))` -/
def P5729355233249539812.Spec : Prop :=
  ∀ n, P5729355233249539812.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P3129485994717046566

`A000079(n)²-A007008(2*(n+1))`
-/

namespace A301560.P3129485994717046566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A007008 (2 * (n + 1))

end

end A301560.P3129485994717046566

namespace A301560

/-- `A000079(n)²-A007008(2*(n+1))` -/
def P3129485994717046566.Spec : Prop :=
  ∀ n, P3129485994717046566.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P9690980804191414146

`A000079(2*n)-A007008(2*n+2)`
-/

namespace A301560.P9690980804191414146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A007008 (2 * n + 2)

end

end A301560.P9690980804191414146

namespace A301560

/-- `A000079(2*n)-A007008(2*n+2)` -/
def P9690980804191414146.Spec : Prop :=
  ∀ n, P9690980804191414146.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P8713153829246564345

`A011782(n+1)²-A007008(2*(n+1))`
-/

namespace A301560.P8713153829246564345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 - A007008 (2 * (n + 1))

end

end A301560.P8713153829246564345

namespace A301560

/-- `A011782(n+1)²-A007008(2*(n+1))` -/
def P8713153829246564345.Spec : Prop :=
  ∀ n, P8713153829246564345.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P10040845253847673753

`A011782(2*n+1)-A007008(2*(n+1))`
-/

namespace A301560.P10040845253847673753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) - A007008 (2 * (n + 1))

end

end A301560.P10040845253847673753

namespace A301560

/-- `A011782(2*n+1)-A007008(2*(n+1))` -/
def P10040845253847673753.Spec : Prop :=
  ∀ n, P10040845253847673753.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P4540102556280373187

`ceil((C(2*n+1, n)-1)/2)`
-/

namespace A301560.P4540102556280373187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (2 * n + 1) n : ℤ) - 1 : ℚ) / 2⌉

end

end A301560.P4540102556280373187

namespace A301560

/-- `ceil((C(2*n+1, n)-1)/2)` -/
def P4540102556280373187.Spec : Prop :=
  ∀ n, P4540102556280373187.a n = A301560 (n + 1)

end A301560

/-! ## A301560.P5408147880726497736

`and(-2, C(2*n+1, n))/2`
-/

namespace A301560.P5408147880726497736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (Nat.choose (2 * n + 1) n : ℤ) : ℚ) / 2

end

end A301560.P5408147880726497736

namespace A301560

/-- `and(-2, C(2*n+1, n))/2` -/
def P5408147880726497736.Spec : Prop :=
  ∀ n, P5408147880726497736.a n = (A301560 (n + 1) : ℚ)

end A301560

/-! ## A301560.P1397665282097792534

`round((C(2*n+1, n)-1)/2)`
-/

namespace A301560.P1397665282097792534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (2 * n + 1) n : ℤ) - 1 : ℚ) / 2)

end

end A301560.P1397665282097792534

namespace A301560

/-- `round((C(2*n+1, n)-1)/2)` -/
def P1397665282097792534.Spec : Prop :=
  ∀ n, P1397665282097792534.a n = A301560 (n + 1)

end A301560

/-!
# A301561: Sphenic Fibonacci numbers.

The programs for A301561, there is no canonical definition to state claims against.
-/

/-! ## A301561.P8515387372975527641

`record[A069110(A114841(n+1))]`
-/

namespace A301561.P8515387372975527641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (A114841 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301561.P8515387372975527641

/-! ## A301561.P14019856393077832242

`A137563(A278350(A000032(n))+n+1)`
-/

namespace A301561.P14019856393077832242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137563 (A278350 (A000032 n).toNat + (n + 1 : ℤ)).toNat

end

end A301561.P14019856393077832242

/-!
# A301563: Expansion of Product_{k>=0} (1 + x^(5*k+1))*(1 + x^(5*k+3)).

The programs for A301563, there is no canonical definition to state claims against.
-/

/-! ## A301563.P17540111302252070447

`A276729(xor(A014457(n), A218542(n)))`
-/

namespace A301563.P17540111302252070447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (Int.xor (A014457 n) (A218542 n)).toNat

end

end A301563.P17540111302252070447

/-! ## A301563.P4767910194728585293

`A238468(A033268(n+1))+A033271(n+1)`
-/

namespace A301563.P4767910194728585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (A033268 (n + 1)).toNat + A033271 (n + 1)

end

end A301563.P4767910194728585293

/-! ## A301563.P15820186577298273322

`A196564(A048671(n+1)*A275414(n+1))`
-/

namespace A301563.P15820186577298273322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A048671 (n + 1) * A275414 (n + 1)).toNat

end

end A301563.P15820186577298273322

/-! ## A301563.P5087944696426657915

`A001222(xor(A094727(n+1), A209918(2*(n+1))))`
-/

namespace A301563.P5087944696426657915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A094727 (n + 1)) (A209918 (2 * (n + 1)))).toNat

end

end A301563.P5087944696426657915

/-! ## A301563.P11053339905217531344

`A037870(A002982(n+1)+A068235(n+1)%A129654(n+3))`
-/

namespace A301563.P11053339905217531344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A002982 (n + 1) + Int.tmod (A068235 (n + 1)) (A129654 (n + 3))).toNat

end

end A301563.P11053339905217531344

/-!
# A301564: Expansion of Product_{k>=0} (1 + x^(5*k+2))*(1 + x^(5*k+4)).

The programs for A301564, there is no canonical definition to state claims against.
-/

/-! ## A301564.P6398738885466661659

`A030341(A083022(n+1)*A206987(n+1))`
-/

namespace A301564.P6398738885466661659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A083022 (n + 1) * A206987 (n + 1)).toNat

end

end A301564.P6398738885466661659

/-! ## A301564.P8413767953069111227

`A165413(A056804(n+4))-A165413(n+1)`
-/

namespace A301564.P8413767953069111227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A056804 (n + 4)).toNat - A165413 (n + 1)

end

end A301564.P8413767953069111227

/-! ## A301564.P6961366699198203732

`and(A050320(n+1), A073757(A001104(n+1)))`
-/

namespace A301564.P6961366699198203732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050320 (n + 1)) (A073757 (A001104 (n + 1)).toNat)

end

end A301564.P6961366699198203732

/-! ## A301564.P1239671295617616916

`and(A007875(n+1), A234843(n+1))`
-/

namespace A301564.P1239671295617616916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007875 (n + 1)) (A234843 (n + 1))

end

end A301564.P1239671295617616916

/-! ## A301564.P12856448837283950641

`A257024(A048589(n+1))`
-/

namespace A301564.P12856448837283950641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257024 (A048589 (n + 1)).toNat

end

end A301564.P12856448837283950641

/-!
# A301565: Expansion of Product_{k>=0} (1 + x^(5*k+3))*(1 + x^(5*k+4)).

The programs for A301565, there is no canonical definition to state claims against.
-/

/-! ## A301565.P7888108332921956617

`A234323((A145879(n+1)+4)²)`
-/

namespace A301565.P7888108332921956617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 ((A145879 (n + 1) + 4) ^ 2).toNat

end

end A301565.P7888108332921956617

/-! ## A301565.P7186099128527235785

`A325169(A034852(n+4)+A008459(n))`
-/

namespace A301565.P7186099128527235785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A034852 (n + 4) + A008459 n).toNat

end

end A301565.P7186099128527235785

/-! ## A301565.P4847198738761859788

`A170979(or(A022166(n), A256008(n+1)))`
-/

namespace A301565.P4847198738761859788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170979 (Int.lor (A022166 n) (A256008 (n + 1))).toNat

end

end A301565.P4847198738761859788

/-! ## A301565.P7191417678533720249

`A115357(A189254(n+1)+A049768(n+1))`
-/

namespace A301565.P7191417678533720249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 (A189254 (n + 1) + A049768 (n + 1)).toNat

end

end A301565.P7191417678533720249

/-! ## A301565.P17977200945331106218

`A005087(A157156(n)+A048003(n+5)+1)`
-/

namespace A301565.P17977200945331106218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A157156 n + A048003 (n + 5) + 1).toNat

end

end A301565.P17977200945331106218

/-!
# A301566: a(n) = Sum_{k=1..n-1} k*A088459(n, k).

The programs for A301566, there is no canonical definition to state claims against.
-/

/-! ## A301566.P7054549873756122641

`A176044(A001582(n+1))`
-/

namespace A301566.P7054549873756122641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176044 (A001582 (n + 1)).toNat

end

end A301566.P7054549873756122641

/-!
# A301567: Expansion of Product_{k>=1} (1 + x^(5*k))*(1 + x^(5*k-4)).

The programs for A301567, there is no canonical definition to state claims against.
-/

/-! ## A301567.P1991996228361193158

`abs(Δ[A094215(A331595(n+1))])`
-/

namespace A301567.P1991996228361193158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (A331595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A301567.P1991996228361193158

/-! ## A301567.P12280982573571360426

`A116402(n)+A016389(A185628(n))`
-/

namespace A301567.P12280982573571360426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 n + A016389 (A185628 n).toNat

end

end A301567.P12280982573571360426

/-!
# A301568: Expansion of Product_{k>=1} (1 + x^(5*k))*(1 + x^(5*k-3)).

The programs for A301568, there is no canonical definition to state claims against.
-/

/-! ## A301568.P4259785992430553308

`A000161(A305989(n)+A037401(n+1))`
-/

namespace A301568.P4259785992430553308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A305989 n + A037401 (n + 1)).toNat

end

end A301568.P4259785992430553308

/-! ## A301568.P9889358552083082579

`A290276(A295058(n))%9`
-/

namespace A301568.P9889358552083082579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290276 (A295058 n).toNat) 9

end

end A301568.P9889358552083082579

/-! ## A301568.P6843252624185756590

`A285726(or(21, A007068(n+1)))`
-/

namespace A301568.P6843252624185756590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (Int.lor 21 (A007068 (n + 1))).toNat

end

end A301568.P6843252624185756590

/-! ## A301568.P6847713855877471196

`A211992(A203320(n+1))-char[comp[10*n]]`
-/

namespace A301568.P6847713855877471196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A203320 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301568.P6847713855877471196

/-! ## A301568.P2012768741756909837

`A000161(A099375(n)*A273766(n))`
-/

namespace A301568.P2012768741756909837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A099375 n * A273766 n).toNat

end

end A301568.P2012768741756909837

/-!
# A301569: Expansion of Product_{k>=1} (1 + x^(5*k))*(1 + x^(5*k-2)).

The programs for A301569, there is no canonical definition to state claims against.
-/

/-! ## A301569.P15436246137348542980

`A066032(A002326(n)*A066041(2*n+5))`
-/

namespace A301569.P15436246137348542980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066032 (A002326 n * A066041 (2 * n + 5)).toNat

end

end A301569.P15436246137348542980

/-! ## A301569.P9082148261645187814

`and(A008619(A154647(n)), A249717(n))`
-/

namespace A301569.P9082148261645187814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008619 (A154647 n).toNat) (A249717 n)

end

end A301569.P9082148261645187814

/-! ## A301569.P1870511202906796388

`and(A000030(A322761(n+1)), A052920(n))`
-/

namespace A301569.P1870511202906796388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000030 (A322761 (n + 1)).toNat) (A052920 n)

end

end A301569.P1870511202906796388

/-! ## A301569.P10497244998223218437

`A308064(A096957(n)+A022380(n))`
-/

namespace A301569.P10497244998223218437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A096957 n + A022380 n).toNat

end

end A301569.P10497244998223218437

/-! ## A301569.P11357700454542561848

`A239002(n)-A226463(A072087(n+1))`
-/

namespace A301569.P11357700454542561848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 n - A226463 (A072087 (n + 1)).toNat

end

end A301569.P11357700454542561848

/-!
# A301570: Expansion of Product_{k>=1} (1 + x^(5*k))*(1 + x^(5*k-1)).

The programs for A301570, there is no canonical definition to state claims against.
-/

/-! ## A301570.P9053327645392732536

`and(A006241(n+1), A276729(A000031(n)))`
-/

namespace A301570.P9053327645392732536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006241 (n + 1)) (A276729 (A000031 n).toNat)

end

end A301570.P9053327645392732536

/-! ## A301570.P14587099059049837932

`A284092(Δ[n*A049472(n)])^A112492(n)`
-/

namespace A301570.P14587099059049837932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049472 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284092 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A112492 n : ℤ)

end

end A301570.P14587099059049837932

/-! ## A301570.P401532460966914968

`A284092(Δ[n*A049472(n)])^A154986(n)`
-/

namespace A301570.P401532460966914968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049472 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284092 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A154986 n : ℤ)

end

end A301570.P401532460966914968

/-! ## A301570.P3586811573686987591

`A284092(Δ[n*A049472(n)])^A176200(n)`
-/

namespace A301570.P3586811573686987591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049472 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284092 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A176200 n : ℤ)

end

end A301570.P3586811573686987591

/-!
# A301571: Number of vertices at distance 2 from a given vertex in the n-Keller graph.

The programs for A301571, the canonical program `A301571.P2687272517947940242` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301571 has offset 1).

The definition of A301571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301571.P2687272517947940242

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=10, a(2)=29, a(3)=84`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A301571

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P2687272517947940242.Spec : Prop :=
  ∀ n, P2687272517947940242.a n = A301571 (n + 1)

theorem P2687272517947940242.correct : P2687272517947940242.Spec := by
  intro n
  simp only [A301571, Nat.add_sub_cancel]

end A301571

/-! ## A301571.P15289710431992108170

`9*floor(3^(n-1))+n`
-/

namespace A301571.P15289710431992108170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (n : ℤ)

end

end A301571.P15289710431992108170

namespace A301571

/-- `9*floor(3^(n-1))+n` -/
def P15289710431992108170.Spec : Prop :=
  ∀ n, P15289710431992108170.a n = A301571 (n + 1)

end A301571

/-! ## A301571.P1149302478265601472

`(3^(n+1)+n)*floor(atan(n+1))`
-/

namespace A301571.P1149302478265601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) + n : ℤ) * ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A301571.P1149302478265601472

namespace A301571

/-- `(3^(n+1)+n)*floor(atan(n+1))` -/
def P1149302478265601472.Spec : Prop :=
  ∀ n, P1149302478265601472.a n = A301571 (n + 1)

end A301571

/-! ## A301571.P516036654097452347

`(3^(n+1)+n)%∑[3^(n+1)+n]`
-/

namespace A301571.P516036654097452347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) + n) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301571.P516036654097452347

namespace A301571

/-- `(3^(n+1)+n)%∑[3^(n+1)+n]` -/
def P516036654097452347.Spec : Prop :=
  ∀ n, (P516036654097452347.a n : ℤ) = A301571 (n + 1)

end A301571

/-! ## A301571.P16638495285916249229

`(3^(n+1)+n)*A057427(n)`
-/

namespace A301571.P16638495285916249229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) + n : ℤ) * A057427 n

end

end A301571.P16638495285916249229

namespace A301571

/-- `(3^(n+1)+n)*A057427(n)` -/
def P16638495285916249229.Spec : Prop :=
  ∀ n, P16638495285916249229.a n = A301571 (n + 1)

end A301571

/-! ## A301571.P4634515303050239841

`lcm(∑[A052919(n+1)], A070238(n+1))`
-/

namespace A301571.P4634515303050239841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A070238 (n + 1))

end

end A301571.P4634515303050239841

namespace A301571

/-- `lcm(∑[A052919(n+1)], A070238(n+1))` -/
def P4634515303050239841.Spec : Prop :=
  ∀ n, (P4634515303050239841.a n : ℤ) = A301571 (n + 1)

end A301571

/-! ## A301571.P304513620787211904

`(3^(n+1)+n)*A001221(A027748(n+1))`
-/

namespace A301571.P304513620787211904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) + n : ℤ) * A001221 (A027748 (n + 1)).toNat

end

end A301571.P304513620787211904

namespace A301571

/-- `(3^(n+1)+n)*A001221(A027748(n+1))` -/
def P304513620787211904.Spec : Prop :=
  ∀ n, P304513620787211904.a n = A301571 (n + 1)

end A301571

/-! ## A301571.P44650285569800463

`(A296189(n+1)-A284838(n+1))/A000302(n)`
-/

namespace A301571.P44650285569800463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296189 (n + 1) - A284838 (n + 1) : ℚ) / (A000302 n : ℚ)

end

end A301571.P44650285569800463

namespace A301571

/-- `(A296189(n+1)-A284838(n+1))/A000302(n)` -/
def P44650285569800463.Spec : Prop :=
  ∀ n, P44650285569800463.a n = (A301571 (n + 1) : ℚ)

end A301571

/-!
# A301572: a(n) = distance from n to nearest Fibbinary number (A003714).

The programs for A301572, there is no canonical definition to state claims against.
-/

/-! ## A301572.P16237322514776260589

`∑{e}[A304221(A344180(n)²), A175062(#)]`
-/

namespace A301572.P16237322514776260589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A175062 (Nat.factorization (f1 n).natAbs p)

end

end A301572.P16237322514776260589

/-! ## A301572.P1752262803398052829

`∑{e}[A304221(A344180(n)²), A175069(#)]`
-/

namespace A301572.P1752262803398052829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A175069 (Nat.factorization (f1 n).natAbs p)

end

end A301572.P1752262803398052829

/-! ## A301572.P6072200602061921176

`∑{e}[A304221(A344180(n)²), A344180(#)]`
-/

namespace A301572.P6072200602061921176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A344180 (Nat.factorization (f1 n).natAbs p)

end

end A301572.P6072200602061921176

/-! ## A301572.P5382774136768569796

`A263111(A320606(n+1))%A344180(n)`
-/

namespace A301572.P5382774136768569796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263111 (A320606 (n + 1)).toNat) (A344180 n)

end

end A301572.P5382774136768569796

/-! ## A301572.P5373374609610793256

`and(A055875(A320606(n+1)), A266003(n))`
-/

namespace A301572.P5373374609610793256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055875 (A320606 (n + 1)).toNat) (A266003 n)

end

end A301572.P5373374609610793256

/-!
# A301573: Distance to nearest perfect power n^k, k>=2 (A001597).

The programs for A301573, there is no canonical definition to state claims against.
-/

/-! ## A301573.P18341285613625036106

`A061670(A000038(A018796(n))+n)`
-/

namespace A301573.P18341285613625036106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A000038 (A018796 n).toNat + (n : ℤ)).toNat

end

end A301573.P18341285613625036106

/-! ## A301573.P12384120742005515221

`A061670(A000007(n)*A141214(n)+n)`
-/

namespace A301573.P12384120742005515221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A000007 n * A141214 n + (n : ℤ)).toNat

end

end A301573.P12384120742005515221

/-! ## A301573.P11067814444390612885

`A061670(C(A328668(2*n+3), ∑[11*n+1])+n)`
-/

namespace A301573.P11067814444390612885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (Nat.choose (A328668 (2 * n + 3)).toNat (∑ j ∈ Finset.range (n + 1), f1 j) + n)

end

end A301573.P11067814444390612885

/-! ## A301573.P16505170974056182078

`A061670(C(A000009(n+3), A047800(n))+n)`
-/

namespace A301573.P16505170974056182078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (Nat.choose (A000009 (n + 3)).toNat (A047800 n).toNat + n)

end

end A301573.P16505170974056182078

/-! ## A301573.P16534333269859073244

`A061670(C(2, A342013(2*n+1))+n)`
-/

namespace A301573.P16534333269859073244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (Nat.choose 2 (A342013 (2 * n + 1)).toNat + n)

end

end A301573.P16534333269859073244

/-!
# A301574: a(n) = distance from n to nearest 3-smooth number (A003586).

The programs for A301574, there is no canonical definition to state claims against.
-/

/-! ## A301574.P16054085924219040848

`∑[A107275(n+2)]%A001221(3*(n+1))`
-/

namespace A301574.P16054085924219040848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001221 (3 * (n + 1)))

end

end A301574.P16054085924219040848

/-! ## A301574.P5161580647048655690

`∑[A272384(n+3)]%A001221(3*(n+1))`
-/

namespace A301574.P5161580647048655690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001221 (3 * (n + 1)))

end

end A301574.P5161580647048655690

/-! ## A301574.P9660946082114280276

`∑[A163342(2*(n+1))+1]%A001221(3*(n+1))`
-/

namespace A301574.P9660946082114280276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163342 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001221 (3 * (n + 1)))

end

end A301574.P9660946082114280276

/-! ## A301574.P8794807493214545573

`A358137(3*(n+1))%A000005(∑{d}[n+1, #²%3])`
-/

namespace A301574.P8794807493214545573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358137 (3 * (n + 1))) (A000005 (∑ d ∈ Nat.divisors (f1 n), d ^ 2 % 3))

end

end A301574.P8794807493214545573

/-! ## A301574.P3652240830032281359

`A124761(A374757(n+1)+A136333(n+1))`
-/

namespace A301574.P3652240830032281359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A374757 (n + 1) + A136333 (n + 1)).toNat

end

end A301574.P3652240830032281359

/-!
# A301576: Number of longest cycles in the n X n antelope graph.

The programs for A301576, there is no canonical definition to state claims against.
-/

/-! ## A301576.P15577458431095227296

`A079499(C(comp[∑[n-1]], 10))`
-/

namespace A301576.P15577458431095227296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079499 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 10)

end

end A301576.P15577458431095227296

/-! ## A301576.P3144594005770678764

`A131928(A059076(n))`
-/

namespace A301576.P3144594005770678764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131928 (A059076 n).toNat

end

end A301576.P3144594005770678764

/-! ## A301576.P11030806443439356559

`A131928(A107245(n))`
-/

namespace A301576.P11030806443439356559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131928 (A107245 n).toNat

end

end A301576.P11030806443439356559

/-! ## A301576.P10568952763998740935

`A131928(A182977(n))`
-/

namespace A301576.P10568952763998740935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131928 (A182977 n).toNat

end

end A301576.P10568952763998740935

/-! ## A301576.P14363135899781852715

`A112521(A213494(n))`
-/

namespace A301576.P14363135899781852715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112521 (A213494 n).toNat

end

end A301576.P14363135899781852715

/-!
# A301577: G.f. A(x) satisfies: A(x) = Product_{k>=1} 1/(1 - k*x^k*A(x)^k).

The programs for A301577, there is no canonical definition to state claims against.
-/

/-! ## A301577.P13397716512454694977

`A297328(A056220(n+1))/(n+1)`
-/

namespace A301577.P13397716512454694977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297328 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A301577.P13397716512454694977

/-! ## A301577.P5333876040840838113

`A297328(A004273((n+1)²))/(n+1)`
-/

namespace A301577.P5333876040840838113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297328 (A004273 ((n + 1) ^ 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A301577.P5333876040840838113

/-!
# A301578: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + k*x^k*A(x)^k).

The programs for A301578, there is no canonical definition to state claims against.
-/

/-! ## A301578.P4590687330517392193

`A297321(A004273((n+1)²))/(n+1)`
-/

namespace A301578.P4590687330517392193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297321 (A004273 ((n + 1) ^ 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A301578.P4590687330517392193

/-! ## A301578.P13418214115958677659

`A297321(∑[A016825(n)]-1)/(n+1)`
-/

namespace A301578.P13418214115958677659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297321 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A301578.P13418214115958677659

/-! ## A301578.P9997682170453437476

`A110655(A126568(n)+A033543(n))`
-/

namespace A301578.P9997682170453437476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A126568 n + A033543 n).toNat

end

end A301578.P9997682170453437476

/-!
# A301580: a(n) is the number of positive integers between successive Mersenne primes.

The programs for A301580, there is no canonical definition to state claims against.
-/

/-! ## A301580.P4934895427247274438

`A139231(n+1)-1`
-/

namespace A301580.P4934895427247274438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139231 (n + 1) - 1

end

end A301580.P4934895427247274438

/-! ## A301580.P2473432995221762104

`Δ[A000668(n+1)]-1`
-/

namespace A301580.P2473432995221762104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A301580.P2473432995221762104

/-! ## A301580.P8656068732954468718

`Δ[A239546(n+1)]-1`
-/

namespace A301580.P8656068732954468718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A301580.P8656068732954468718

/-! ## A301580.P7336738880344750446

`Δ[A379724(n+1)]-1`
-/

namespace A301580.P7336738880344750446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A301580.P7336738880344750446

/-! ## A301580.P15399380513552927317

`Δ[A343733(n+2)]-1`
-/

namespace A301580.P15399380513552927317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A301580.P15399380513552927317

/-!
# A301581: G.f.: Sum_{n>=0} 2^n * ((1+x)^n - 1)^n.

The programs for A301581, there is no canonical definition to state claims against.
-/

/-! ## A301581.P10269923260417871167

`A127575(A304639(n)*A374781(n+1))`
-/

namespace A301581.P10269923260417871167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (A304639 n * A374781 (n + 1)).toNat

end

end A301581.P10269923260417871167

/-!
# A301582: G.f.: Sum_{n>=0} 3^n * ((1+x)^n - 1)^n.

The programs for A301582, there is no canonical definition to state claims against.
-/

/-! ## A301582.P10217101847483502926

`A000027(A000108(n)*A005412(n+1))`
-/

namespace A301582.P10217101847483502926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000108 n * A005412 (n + 1)).toNat

end

end A301582.P10217101847483502926

/-!
# A301584: G.f.: Sum_{n>=0} ((1+x)^(2*n) - 1)^n.

The programs for A301584, there is no canonical definition to state claims against.
-/

/-! ## A301584.P4485704742935643800

`A036537(A321848(n)+A248953(n))`
-/

namespace A301584.P4485704742935643800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (A321848 n + A248953 n).toNat

end

end A301584.P4485704742935643800

/-!
# A301589: Expansion of Product_{k>=1} 1/(1 - x^k)^(mod(k,3)).

The programs for A301589, there is no canonical definition to state claims against.
-/

/-! ## A301589.P8774115054395355600

`A117193(2*(n+2))-A043290(A154670(n+1))`
-/

namespace A301589.P8774115054395355600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117193 (2 * (n + 2)) - A043290 (A154670 (n + 1)).toNat

end

end A301589.P8774115054395355600

/-! ## A301589.P16104906920888670028

`A047967(n)+A027337(A087051(n))`
-/

namespace A301589.P16104906920888670028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A027337 (A087051 n).toNat

end

end A301589.P16104906920888670028

/-! ## A301589.P7595532134529538993

`A344740(n)+A337020(A000041(n))`
-/

namespace A301589.P7595532134529538993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344740 n + A337020 (A000041 n).toNat

end

end A301589.P7595532134529538993

/-! ## A301589.P10129117018576436324

`A047967(A227549(n+1))+A027337(n)`
-/

namespace A301589.P10129117018576436324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (A227549 (n + 1)).toNat + A027337 n

end

end A301589.P10129117018576436324

/-! ## A301589.P11063705021907724964

`A316843(xor(n, A102901(n)))`
-/

namespace A301589.P11063705021907724964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (Int.xor (n : ℤ) (A102901 n)).toNat

end

end A301589.P11063705021907724964

/-!
# A301590: Primes p such that there are no other solutions to A023900(x) = A023900(p) than a power of p.

The programs for A301590, there is no canonical definition to state claims against.
-/

/-! ## A301590.P5762881699057697710

`∩[A000040(n+1), A020725(A302299(n+1))]`
-/

namespace A301590.P5762881699057697710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A302299 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301590.P5762881699057697710

/-! ## A301590.P10681932445087712157

`1-A301374(n+1)`
-/

namespace A301590.P10681932445087712157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A301374 (n + 1)

end

end A301590.P10681932445087712157

/-! ## A301590.P5116006809183763227

`A151800(-A301374(n+1))`
-/

namespace A301590.P5116006809183763227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (-A301374 (n + 1)).toNat

end

end A301590.P5116006809183763227

/-! ## A301590.P4005673003455919357

`A007947(abs(A301374(n+1))+1)`
-/

namespace A301590.P4005673003455919357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (|A301374 (n + 1)| + 1).toNat

end

end A301590.P4005673003455919357

/-! ## A301590.P10341323206166648179

`A057427(n+1)+abs(A301374(n+1))`
-/

namespace A301590.P10341323206166648179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + |A301374 (n + 1)|

end

end A301590.P10341323206166648179

/-!
# A301591: Primes p that have other solutions x to A023900(x) = A023900(p) than a power of p.

The programs for A301591, there is no canonical definition to state claims against.
-/

/-! ## A301591.P7529035259788782386

`p?[A301857(n+1)]`
-/

namespace A301591.P7529035259788782386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301591.P7529035259788782386

/-! ## A301591.P2197723292522199657

`record[p?[A301857(A133310(n))]]`
-/

namespace A301591.P2197723292522199657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301591.P2197723292522199657

/-! ## A301591.P14421405449736293357

`record[A006530(A301857(n+2))]`
-/

namespace A301591.P14421405449736293357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A301857 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301591.P14421405449736293357

/-! ## A301591.P17175034134480294899

`filter[A301857(n+1), A010051(#)]`
-/

namespace A301591.P17175034134480294899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A301591.P17175034134480294899

/-! ## A301591.P15873507283425204280

`filter[A301857(n+1), A066829(#)]`
-/

namespace A301591.P15873507283425204280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A301591.P15873507283425204280

/-! ## A301591.P9640564929378231043

`filter[A301857(n+1), A069513(#)]`
-/

namespace A301591.P9640564929378231043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A301591.P9640564929378231043

/-! ## A301591.P11630607573232871870

`filter[A301857(n+1), A079260(#)]`
-/

namespace A301591.P11630607573232871870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079260 (f1 j).toNat = 1) n)

end

end A301591.P11630607573232871870

/-! ## A301591.P2201272485578864934

`filter[A301857(n+1), A092248(#)]`
-/

namespace A301591.P2201272485578864934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A301591.P2201272485578864934

/-! ## A301591.P5666448396101937633

`filter[A301857(n+1), A099104(#)]`
-/

namespace A301591.P5666448396101937633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A301591.P5666448396101937633

/-! ## A301591.P4763107515668875968

`filter[A301857(n+1), A144101(#)]`
-/

namespace A301591.P4763107515668875968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A301591.P4763107515668875968

/-!
# A301593: n can be represented the sum of a(n) distinct factorials. (If there is no such representation, a(n) = 0.)

The programs for A301593, the canonical program `A301593.P6623717910831163898` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301593 has offset 1).

The definition of A301593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301593.P15875709874616785663

`∑{e}[A275732(n+1), A048675(#)^A257684(n+1)]`
-/

namespace A301593.P15875709874616785663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A048675 (Nat.factorization (f1 n).natAbs p) : ℚ) ^ (A257684 (n + 1) : ℤ)

end

end A301593.P15875709874616785663

namespace A301593

/-- `∑{e}[A275732(n+1), A048675(#)^A257684(n+1)]` -/
def P15875709874616785663.Spec : Prop :=
  ∀ n, P15875709874616785663.a n = (A301593 (n + 1) : ℚ)

end A301593

/-! ## A301593.P4594140571290532013

`∑{e}[A275732(n+1), A248663(#)^A257684(n+1)]`
-/

namespace A301593.P4594140571290532013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248663 (Nat.factorization (f1 n).natAbs p) : ℚ) ^ (A257684 (n + 1) : ℤ)

end

end A301593.P4594140571290532013

namespace A301593

/-- `∑{e}[A275732(n+1), A248663(#)^A257684(n+1)]` -/
def P4594140571290532013.Spec : Prop :=
  ∀ n, P4594140571290532013.a n = (A301593 (n + 1) : ℚ)

end A301593

/-! ## A301593.P11592859380828243041

`∑{e}[A275732(n+1), A257684(#)^A257684(n+1)]`
-/

namespace A301593.P11592859380828243041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A257684 (Nat.factorization (f1 n).natAbs p) : ℚ) ^ (A257684 (n + 1) : ℤ)

end

end A301593.P11592859380828243041

namespace A301593

/-- `∑{e}[A275732(n+1), A257684(#)^A257684(n+1)]` -/
def P11592859380828243041.Spec : Prop :=
  ∀ n, P11592859380828243041.a n = (A301593 (n + 1) : ℚ)

end A301593

/-! ## A301593.P6623717910831163898

`A034968((n+1)*C(A060130(n+1), A034968(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A301593

/-- `A034968((n+1)*C(A060130(n+1), A034968(n+1)))` -/
def P6623717910831163898.Spec : Prop :=
  ∀ n, P6623717910831163898.a n = A301593 (n + 1)

theorem P6623717910831163898.correct : P6623717910831163898.Spec := by
  intro n
  simp only [A301593, Nat.add_sub_cancel]

end A301593

/-! ## A301593.P7711982050217440808

`floor(A034968(n+1)/7^A257684(n+1))`
-/

namespace A301593.P7711982050217440808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034968 (n + 1) : ℚ) / (7 : ℚ) ^ (A257684 (n + 1) : ℤ)⌋

end

end A301593.P7711982050217440808

namespace A301593

/-- `floor(A034968(n+1)/7^A257684(n+1))` -/
def P7711982050217440808.Spec : Prop :=
  ∀ n, P7711982050217440808.a n = A301593 (n + 1)

end A301593

/-! ## A301593.P10067770642831049157

`A344478(A278236(n+1))`
-/

namespace A301593.P10067770642831049157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344478 (A278236 (n + 1)).toNat

end

end A301593.P10067770642831049157

namespace A301593

/-- `A344478(A278236(n+1))` -/
def P10067770642831049157.Spec : Prop :=
  ∀ n, P10067770642831049157.a n = A301593 (n + 1)

end A301593

/-!
# A301594: Expansion of Product_{k>=1} (1 + x^k)^A001615(k), where A001615 is the Dedekind psi function.

The programs for A301594, there is no canonical definition to state claims against.
-/

/-! ## A301594.P1546282493756129339

`or(A250007(n+1), A332023(A014968(n)))`
-/

namespace A301594.P1546282493756129339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A250007 (n + 1)) (A332023 (A014968 n).toNat)

end

end A301594.P1546282493756129339

/-! ## A301594.P13980485078279592069

`A156100(A237451(2*(n+1)))+A001650(A053156(n+1))-(2*n+1)`
-/

namespace A301594.P13980485078279592069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156100 (A237451 (2 * (n + 1))).toNat + (A001650 (A053156 (n + 1)).toNat - (2 * n + 1 : ℤ))

end

end A301594.P13980485078279592069

/-!
# A301595: Number of thrice-partitions of n.

The programs for A301595, there is no canonical definition to state claims against.
-/

/-! ## A301595.P11731229339220717307

`A323718(A167614(n+2))`
-/

namespace A301595.P11731229339220717307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A167614 (n + 2)).toNat

end

end A301595.P11731229339220717307

/-! ## A301595.P3010583338343744235

`A323718(A052905(n)+8)`
-/

namespace A301595.P3010583338343744235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A052905 n + 8).toNat

end

end A301595.P3010583338343744235

/-! ## A301595.P8531530508609006058

`A323718(A055999(n)+9)`
-/

namespace A301595.P8531530508609006058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A055999 n + 9).toNat

end

end A301595.P8531530508609006058

/-! ## A301595.P2515609945954986657

`A323718(Δ[A008778(n)]+5)`
-/

namespace A301595.P2515609945954986657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (f1 (n + 1) - f1 n + 5).toNat

end

end A301595.P2515609945954986657

/-! ## A301595.P6613504801772944896

`A323718(A340266(n+2)+1)`
-/

namespace A301595.P6613504801772944896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A340266 (n + 2) + 1).toNat

end

end A301595.P6613504801772944896

/-! ## A301595.P16942560284746553908

`A323718(A000217(n+3)+3)`
-/

namespace A301595.P16942560284746553908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A000217 (n + 3) + 3).toNat

end

end A301595.P16942560284746553908

/-!
# A301596: Expansion of Product_{k>=1} (1 + x^k)^A050985(k).

The programs for A301596, there is no canonical definition to state claims against.
-/

/-! ## A301596.P4181842855402264535

`A026007(n)-A106167(A325859(n))`
-/

namespace A301596.P4181842855402264535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n - A106167 (A325859 n).toNat

end

end A301596.P4181842855402264535

/-! ## A301596.P5275351939465577978

`A026007(n)-A309785(A152113(n+1))`
-/

namespace A301596.P5275351939465577978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n - A309785 (A152113 (n + 1)).toNat

end

end A301596.P5275351939465577978

/-! ## A301596.P6900109530046877142

`∑[A303902(n)]-A309785(A152113(n+1))`
-/

namespace A301596.P6900109530046877142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309785 (A152113 (n + 1)).toNat

end

end A301596.P6900109530046877142

/-! ## A301596.P13363132689974369118

`A284992(∑[n+2]-1)-A309785(A152113(n+1))`
-/

namespace A301596.P13363132689974369118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A309785 (A152113 (n + 1)).toNat

end

end A301596.P13363132689974369118

/-!
# A301597: Expansion of Product_{k>=1} 1/(1 - x^k)^A050985(k).

The programs for A301597, there is no canonical definition to state claims against.
-/

/-! ## A301597.P13703434571083033313

`A000219(n)-A309785(A152113(n+1))`
-/

namespace A301597.P13703434571083033313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A309785 (A152113 (n + 1)).toNat

end

end A301597.P13703434571083033313

/-! ## A301597.P16876511226289828466

`A000219(n)-A000944(A136555(n))`
-/

namespace A301597.P16876511226289828466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A000944 (A136555 n).toNat

end

end A301597.P16876511226289828466

/-! ## A301597.P2404736729781939154

`A000219(n)-A051584(A088327(n))`
-/

namespace A301597.P2404736729781939154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A051584 (A088327 n).toNat

end

end A301597.P2404736729781939154

/-! ## A301597.P18218991418782154694

`A000219(n)-A324095(A005987(n))`
-/

namespace A301597.P18218991418782154694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A324095 (A005987 n).toNat

end

end A301597.P18218991418782154694

/-! ## A301597.P11289613900513715409

`A000219(n)-A266948(A228953(2*n+5))`
-/

namespace A301597.P11289613900513715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A266948 (A228953 (2 * n + 5)).toNat

end

end A301597.P11289613900513715409

/-!
# A301598: Number of thrice-factorizations of n.

The programs for A301598, there is no canonical definition to state claims against.
-/

/-! ## A301598.P13402515684851508412

`A112232(A050340(n+1))`
-/

namespace A301598.P13402515684851508412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A050340 (n + 1)).toNat

end

end A301598.P13402515684851508412

/-! ## A301598.P17177929110105441880

`A132284(A050338(n+1))`
-/

namespace A301598.P17177929110105441880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A050338 (n + 1)).toNat

end

end A301598.P17177929110105441880

/-! ## A301598.P15649427498728467729

`A237708(A001055(n+1)²)`
-/

namespace A301598.P15649427498728467729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237708 (A001055 (n + 1) ^ 2).toNat

end

end A301598.P15649427498728467729

/-! ## A301598.P10041048186164404039

`A237708(A305254(n+1)²)`
-/

namespace A301598.P10041048186164404039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237708 (A305254 (n + 1) ^ 2).toNat

end

end A301598.P10041048186164404039

/-! ## A301598.P5948795421757880174

`A237708(A001055(n+1)*A001055(n+1))`
-/

namespace A301598.P5948795421757880174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237708 (A001055 (n + 1) * A001055 (n + 1)).toNat

end

end A301598.P5948795421757880174

/-!
# A301599: Numbers k at which the ratio r(k) = (k-th prime) / (average of first k primes) reaches a record high.

The programs for A301599, there is no canonical definition to state claims against.
-/

/-! ## A301599.P15787182086199941209

`lt[A242418(A050382(2*n+1)), A300860(n+1)]`
-/

namespace A301599.P15787182086199941209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242418 (A050382 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A301599.P15787182086199941209

/-! ## A301599.P14979528232683191297

`lt[A255553(A050329(2*n+1)), A005132(2*n+1)]`
-/

namespace A301599.P14979528232683191297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A050329 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A301599.P14979528232683191297

/-! ## A301599.P9451793839527112979

`lt[A119459(n+1), A181822(2*n+1)]`
-/

namespace A301599.P9451793839527112979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A301599.P9451793839527112979

/-! ## A301599.P14622971879425897075

`A145652(A006720(n))+A030153(n+1)`
-/

namespace A301599.P14622971879425897075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145652 (A006720 n).toNat + A030153 (n + 1)

end

end A301599.P14622971879425897075

/-! ## A301599.P9573103096945273052

`lt[A008284(A127736(n+1)), A256884(n+1)]`
-/

namespace A301599.P9573103096945273052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A127736 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A301599.P9573103096945273052

