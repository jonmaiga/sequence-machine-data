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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A035700: Numbers k such that the number of partitions of k, A000041(k), is a multiple of 12.

The programs for A035700, there is no canonical definition to state claims against.
-/

/-! ## A035700.P16475144904221764707

`∩[A083214(n+1), A237278(n+1)]`
-/

namespace A035700.P16475144904221764707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035700.P16475144904221764707

/-! ## A035700.P3030498140620658383

`eq[0, A000041(n)%12]`
-/

namespace A035700.P3030498140620658383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035700.P3030498140620658383

/-! ## A035700.P17098984499729792366

`eq[11, A000065(n)%12]`
-/

namespace A035700.P17098984499729792366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035700.P17098984499729792366

/-! ## A035700.P9417756550314021504

`eq[0, A299473(n)%36]`
-/

namespace A035700.P9417756550314021504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299473 n) 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035700.P9417756550314021504

/-! ## A035700.P17039739304441778598

`eq[lcm(12, A183011(n)), A183011(n)]`
-/

namespace A035700.P17039739304441778598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A183011 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035700.P17039739304441778598

/-!
# A035701: Number of partitions-into-distinct-parts of n is a multiple of 12.

The programs for A035701, there is no canonical definition to state claims against.
-/

/-! ## A035701.P6812630720300387159

`eq[0, A000009(n)%12]`
-/

namespace A035701.P6812630720300387159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035701.P6812630720300387159

/-! ## A035701.P11051395454087589844

`eq[0, A081360(n)%12]`
-/

namespace A035701.P11051395454087589844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081360 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035701.P11051395454087589844

/-! ## A035701.P3610677516668833272

`eq[11, A111133(n)%12]`
-/

namespace A035701.P3610677516668833272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111133 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035701.P3610677516668833272

/-! ## A035701.P9074615941756018441

`eq[lcm(12, A081360(n)), A000009(n)]`
-/

namespace A035701.P9074615941756018441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A081360 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035701.P9074615941756018441

/-! ## A035701.P11494313631245870410

`eq[lcm(6, A067659(n)), A067661(n)]`
-/

namespace A035701.P11494313631245870410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A067659 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035701.P11494313631245870410

/-!
# A035702: Numbers k such that the numbers of partitions and partitions-into-distinct-parts of k are both multiples of 12.

The programs for A035702, there is no canonical definition to state claims against.
-/

/-! ## A035702.P3738918278955135569

`∩[A035700(n+1), A035701(n+1)]`
-/

namespace A035702.P3738918278955135569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035702.P3738918278955135569

/-!
# A035703: Numbers k such that the numbers of partitions and partitions-into-distinct-parts of k have a common factor.

The programs for A035703, there is no canonical definition to state claims against.
-/

/-! ## A035703.P2832444485321991501

`∪[A035704(n+1), A035705(n+1)]`
-/

namespace A035703.P2832444485321991501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035703.P2832444485321991501

/-! ## A035703.P9581958226155562163

`∪[A035704(n+1), A280290(n+1)]`
-/

namespace A035703.P9581958226155562163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035703.P9581958226155562163

/-! ## A035703.P9076912908219523584

`lt[1, A363252(n)]`
-/

namespace A035703.P9076912908219523584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035703.P9076912908219523584

/-! ## A035703.P17084660547820066248

`lt[1, gcd(A000009(n), A000041(n))]`
-/

namespace A035703.P17084660547820066248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000009 n) (A000041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035703.P17084660547820066248

/-! ## A035703.P15324052117683971857

`lt[2, gcd(A087135(n), A139582(n))]`
-/

namespace A035703.P15324052117683971857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087135 n) (A139582 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035703.P15324052117683971857

/-!
# A035704: Numbers k such that the numbers of partitions and partitions-into-distinct-parts of k have a common factor greater than 2.

The programs for A035704, there is no canonical definition to state claims against.
-/

/-! ## A035704.P16135750575486495971

`lt[2, A363252(n)]`
-/

namespace A035704.P16135750575486495971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035704.P16135750575486495971

/-! ## A035704.P2737126080575201435

`lt[2, gcd(A000009(n), A000041(n))]`
-/

namespace A035704.P2737126080575201435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000009 n) (A000041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035704.P2737126080575201435

/-! ## A035704.P9190991981234497124

`lt[4, gcd(A087135(n), A139582(n))]`
-/

namespace A035704.P9190991981234497124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087135 n) (A139582 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035704.P9190991981234497124

/-! ## A035704.P3342059638261977537

`lt[A330995(n), A240862(n)]`
-/

namespace A035704.P3342059638261977537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035704.P3342059638261977537

/-! ## A035704.P17954659862091152583

`lt[A330995(n), A240863(n)]`
-/

namespace A035704.P17954659862091152583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035704.P17954659862091152583

/-!
# A035705: Numbers k such that the numbers of partitions and partitions-into-distinct-parts of k have a prime GCD.

The programs for A035705, there is no canonical definition to state claims against.
-/

/-! ## A035705.P16007580861961531811

`eq[1, A001222(A363252(n))]`
-/

namespace A035705.P16007580861961531811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A363252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035705.P16007580861961531811

/-! ## A035705.P2794700893244041248

`eq[A061142(A363252(n)), A131534(3*n+1)]`
-/

namespace A035705.P2794700893244041248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A363252 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035705.P2794700893244041248

/-! ## A035705.P6271680754169736410

`eq[1, A046051((A111133(n)+1)/A330995(n))]`
-/

namespace A035705.P6271680754169736410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (SequenceMachineLib.roundAway ((A111133 n + 1 : ℚ) / (A330995 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035705.P6271680754169736410

/-! ## A035705.P7429518386900760443

`lt[A328675(n+2), A279038(A134413(2*n+1))]`
-/

namespace A035705.P7429518386900760443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328675 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279038 (A134413 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035705.P7429518386900760443

/-! ## A035705.P14441480677536602054

`A035703(lt[A000040(n+1), A340316(3*n+1)])`
-/

namespace A035705.P14441480677536602054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035705.P14441480677536602054

/-!
# A035706: Coordination sequence for 11-dimensional cubic lattice.

The programs for A035706, the canonical program `A035706.P322796382435352986` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035706 has offset 0).

The definition of A035706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035706.P15521607748836140662

`A035708(n)-2*A035606(n)`
-/

namespace A035706.P15521607748836140662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 n - 2 * A035606 n

end

end A035706.P15521607748836140662

namespace A035706

/-- `A035708(n)-2*A035606(n)` -/
def P15521607748836140662.Spec : Prop :=
  ∀ n, P15521607748836140662.a n = A035706 n

theorem P15521607748836140662.correct : P15521607748836140662.Spec := by
  intro n
  simp only [A035706, Nat.add_sub_cancel, A035706.P15521607748836140662.a, A035706.P322796382435352986.f1, A035706.P322796382435352986.a, A008420, A008420.P15915323523869300231.a, A035606, A035606.P15826716796151369121.f1, A035606.P15826716796151369121.a, A035708, A035708.P6521280316452753711.a, A008416, A008416.P15332718079879402736.a, A035603, A035603.P5033389381879539558.a, A035605, A035605.P8746881321390343686.f1, A035605.P8746881321390343686.a, A008415, A008415.P5760122249089442523.a, A035604, A035604.P40572468847417807.a, A099196, A099196.P16367201159128015509.a, A008414, A008414.P48295776868654470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035706

/-! ## A035706.P322796382435352986

`∑[2*A008420(n)]-A008420(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035706

/-- `∑[2*A008420(n)]-A008420(n)` -/
def P322796382435352986.Spec : Prop :=
  ∀ n, P322796382435352986.a n = A035706 n

theorem P322796382435352986.correct : P322796382435352986.Spec := by
  intro n
  simp only [A035706]

end A035706

/-! ## A035706.P3386610618505660935

`Δ[A035606(n)]-A035707(n)`
-/

namespace A035706.P3386610618505660935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A035707 n

end

end A035706.P3386610618505660935

namespace A035706

/-- `Δ[A035606(n)]-A035707(n)` -/
def P3386610618505660935.Spec : Prop :=
  ∀ n, P3386610618505660935.a n = A035706 n

end A035706

/-! ## A035706.P3816459273399537410

`A122542(A000096(n+10)+12)`
-/

namespace A035706.P3816459273399537410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000096 (n + 10) + 12).toNat

end

end A035706.P3816459273399537410

namespace A035706

/-- `A122542(A000096(n+10)+12)` -/
def P3816459273399537410.Spec : Prop :=
  ∀ n, P3816459273399537410.a n = A035706 n

end A035706

/-! ## A035706.P1956461156294333831

`A122542(A000217(n+11)+11)`
-/

namespace A035706.P1956461156294333831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000217 (n + 11) + 11).toNat

end

end A035706.P1956461156294333831

namespace A035706

/-- `A122542(A000217(n+11)+11)` -/
def P1956461156294333831.Spec : Prop :=
  ∀ n, P1956461156294333831.a n = A035706 n

end A035706

/-! ## A035706.P16386458698708739507

`A035607(A000217(n+11)-11)`
-/

namespace A035706.P16386458698708739507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 11) - 11).toNat

end

end A035706.P16386458698708739507

namespace A035706

/-- `A035607(A000217(n+11)-11)` -/
def P16386458698708739507.Spec : Prop :=
  ∀ n, P16386458698708739507.a n = A035706 n

end A035706

/-! ## A035706.P17147046953304853584

`A035607(A223134(n+3)+A167614(n+8))`
-/

namespace A035706.P17147046953304853584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A223134 (n + 3) + A167614 (n + 8)).toNat

end

end A035706.P17147046953304853584

namespace A035706

/-- `A035607(A223134(n+3)+A167614(n+8))` -/
def P17147046953304853584.Spec : Prop :=
  ∀ n, P17147046953304853584.a n = A035706 n

end A035706

/-! ## A035706.P14771913529696317095

`A035607(A005408(n+4)+A000124(n+9))`
-/

namespace A035706.P14771913529696317095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A005408 (n + 4) + A000124 (n + 9)).toNat

end

end A035706.P14771913529696317095

namespace A035706

/-- `A035607(A005408(n+4)+A000124(n+9))` -/
def P14771913529696317095.Spec : Prop :=
  ∀ n, P14771913529696317095.a n = A035706 n

end A035706

/-! ## A035706.P4366317701955211645

`A035607(A133263(n+9)+A004275(n+5))`
-/

namespace A035706.P4366317701955211645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A133263 (n + 9) + A004275 (n + 5)).toNat

end

end A035706.P4366317701955211645

namespace A035706

/-- `A035607(A133263(n+9)+A004275(n+5))` -/
def P4366317701955211645.Spec : Prop :=
  ∀ n, P4366317701955211645.a n = A035706 n

end A035706

/-!
# A035707: Coordination sequence for 12-dimensional cubic lattice.

The programs for A035707, the canonical program `A035707.P923925604679129048` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035707 has offset 0).

The definition of A035707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035707.P923925604679129048

`∑[2*A035706(n)]-A035706(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035707

/-- `∑[2*A035706(n)]-A035706(n)` -/
def P923925604679129048.Spec : Prop :=
  ∀ n, P923925604679129048.a n = A035707 n

theorem P923925604679129048.correct : P923925604679129048.Spec := by
  intro n
  simp only [A035707]

end A035707

/-! ## A035707.P7350937329182630435

`Δ[A035606(n)]-A035706(n)`
-/

namespace A035707.P7350937329182630435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A035706 n

end

end A035707.P7350937329182630435

namespace A035707

/-- `Δ[A035606(n)]-A035706(n)` -/
def P7350937329182630435.Spec : Prop :=
  ∀ n, P7350937329182630435.a n = A035707 n

end A035707

/-! ## A035707.P10420999699710997378

`A035606(n+1)-A035606(n)-A035706(n)`
-/

namespace A035707.P10420999699710997378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 (n + 1) - A035606 n - A035706 n

end

end A035707.P10420999699710997378

namespace A035707

/-- `A035606(n+1)-A035606(n)-A035706(n)` -/
def P10420999699710997378.Spec : Prop :=
  ∀ n, P10420999699710997378.a n = A035707 n

end A035707

/-! ## A035707.P9316943693920932800

`A035607(A000217(n+12)-12)`
-/

namespace A035707.P9316943693920932800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 12) - 12).toNat

end

end A035707.P9316943693920932800

namespace A035707

/-- `A035607(A000217(n+12)-12)` -/
def P9316943693920932800.Spec : Prop :=
  ∀ n, P9316943693920932800.a n = A035707 n

end A035707

/-! ## A035707.P8879014151397048447

`A035607(A167614(n+9)+A004275(n+5))`
-/

namespace A035707.P8879014151397048447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A167614 (n + 9) + A004275 (n + 5)).toNat

end

end A035707.P8879014151397048447

namespace A035707

/-- `A035607(A167614(n+9)+A004275(n+5))` -/
def P8879014151397048447.Spec : Prop :=
  ∀ n, P8879014151397048447.a n = A035707 n

end A035707

/-! ## A035707.P13968823507588792437

`A266213(A000096(n+12)-12)`
-/

namespace A035707.P13968823507588792437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000096 (n + 12) - 12).toNat

end

end A035707.P13968823507588792437

namespace A035707

/-- `A266213(A000096(n+12)-12)` -/
def P13968823507588792437.Spec : Prop :=
  ∀ n, P13968823507588792437.a n = A035707 n

end A035707

/-! ## A035707.P5559707926419651545

`A266213(A000217(n+12)+n)`
-/

namespace A035707.P5559707926419651545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A035707.P5559707926419651545

namespace A035707

/-- `A266213(A000217(n+12)+n)` -/
def P5559707926419651545.Spec : Prop :=
  ∀ n, P5559707926419651545.a n = A035707 n

end A035707

/-! ## A035707.P17837727289199559413

`A122542(A000096(n+12)-n)`
-/

namespace A035707.P17837727289199559413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000096 (n + 12) - (n : ℤ)).toNat

end

end A035707.P17837727289199559413

namespace A035707

/-- `A122542(A000096(n+12)-n)` -/
def P17837727289199559413.Spec : Prop :=
  ∀ n, P17837727289199559413.a n = A035707 n

end A035707

/-!
# A035708: Coordination sequence for 13-dimensional cubic lattice.

The programs for A035708, the canonical program `A035708.P6521280316452753711` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035708 has offset 0).

The definition of A035708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035708.P6521280316452753711

`A035706(n)+2*A035606(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035708

/-- `A035706(n)+2*A035606(n)` -/
def P6521280316452753711.Spec : Prop :=
  ∀ n, P6521280316452753711.a n = A035708 n

theorem P6521280316452753711.correct : P6521280316452753711.Spec := by
  intro n
  simp only [A035708]

end A035708

/-! ## A035708.P4604051614839842448

`∑[2*A035707(n)]-A035707(n)`
-/

namespace A035708.P4604051614839842448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035707 n

end

end A035708.P4604051614839842448

namespace A035708

/-- `∑[2*A035707(n)]-A035707(n)` -/
def P4604051614839842448.Spec : Prop :=
  ∀ n, P4604051614839842448.a n = A035708 n

end A035708

/-! ## A035708.P13042675458638152372

`A035607(A000217(n+12)+n)`
-/

namespace A035708.P13042675458638152372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A035708.P13042675458638152372

namespace A035708

/-- `A035607(A000217(n+12)+n)` -/
def P13042675458638152372.Spec : Prop :=
  ∀ n, P13042675458638152372.a n = A035708 n

end A035708

/-! ## A035708.P6018814970486578560

`A035607(A167614(n+2)+A017377(n+6))`
-/

namespace A035708.P6018814970486578560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A167614 (n + 2) + A017377 (n + 6)).toNat

end

end A035708.P6018814970486578560

namespace A035708

/-- `A035607(A167614(n+2)+A017377(n+6))` -/
def P6018814970486578560.Spec : Prop :=
  ∀ n, P6018814970486578560.a n = A035708 n

end A035708

/-! ## A035708.P15183083345675681783

`A035607(A027691(n+9)-A167614(n+4))`
-/

namespace A035708.P15183083345675681783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A027691 (n + 9) - A167614 (n + 4)).toNat

end

end A035708.P15183083345675681783

namespace A035708

/-- `A035607(A027691(n+9)-A167614(n+4))` -/
def P15183083345675681783.Spec : Prop :=
  ∀ n, P15183083345675681783.a n = A035708 n

end A035708

/-! ## A035708.P9446894003213640476

`A035607(A133263(n+11)+A004275(n+6))`
-/

namespace A035708.P9446894003213640476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A133263 (n + 11) + A004275 (n + 6)).toNat

end

end A035708.P9446894003213640476

namespace A035708

/-- `A035607(A133263(n+11)+A004275(n+6))` -/
def P9446894003213640476.Spec : Prop :=
  ∀ n, P9446894003213640476.a n = A035708 n

end A035708

/-! ## A035708.P12042882477365377221

`A266213(A056115(n+9)+1)`
-/

namespace A035708.P12042882477365377221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A056115 (n + 9) + 1).toNat

end

end A035708.P12042882477365377221

namespace A035708

/-- `A266213(A056115(n+9)+1)` -/
def P12042882477365377221.Spec : Prop :=
  ∀ n, P12042882477365377221.a n = A035708 n

end A035708

/-! ## A035708.P15045272324123991091

`A266213(A000096(n+13)-13)`
-/

namespace A035708.P15045272324123991091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000096 (n + 13) - 13).toNat

end

end A035708.P15045272324123991091

namespace A035708

/-- `A266213(A000096(n+13)-13)` -/
def P15045272324123991091.Spec : Prop :=
  ∀ n, P15045272324123991091.a n = A035708 n

end A035708

/-! ## A035708.P16202357259330150182

`A266213(A000217(n+13)+n)`
-/

namespace A035708.P16202357259330150182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A035708.P16202357259330150182

namespace A035708

/-- `A266213(A000217(n+13)+n)` -/
def P16202357259330150182.Spec : Prop :=
  ∀ n, P16202357259330150182.a n = A035708 n

end A035708

/-! ## A035708.P10557774167764834255

`A122542(A000096(n+13)-n)`
-/

namespace A035708.P10557774167764834255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000096 (n + 13) - (n : ℤ)).toNat

end

end A035708.P10557774167764834255

namespace A035708

/-- `A122542(A000096(n+13)-n)` -/
def P10557774167764834255.Spec : Prop :=
  ∀ n, P10557774167764834255.a n = A035708 n

end A035708

/-!
# A035709: Coordination sequence for 14-dimensional cubic lattice.

The programs for A035709, the canonical program `A035709.P749298596689994425` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035709 has offset 0).

The definition of A035709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035709.P749298596689994425

`∑[2*A035708(n)]-A035708(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035709

/-- `∑[2*A035708(n)]-A035708(n)` -/
def P749298596689994425.Spec : Prop :=
  ∀ n, P749298596689994425.a n = A035709 n

theorem P749298596689994425.correct : P749298596689994425.Spec := by
  intro n
  simp only [A035709]

end A035709

/-! ## A035709.P6489074513881405610

`A035607(A000217(n+13)+n)`
-/

namespace A035709.P6489074513881405610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A035709.P6489074513881405610

namespace A035709

/-- `A035607(A000217(n+13)+n)` -/
def P6489074513881405610.Spec : Prop :=
  ∀ n, P6489074513881405610.a n = A035709 n

end A035709

/-! ## A035709.P15153151818723103572

`A035607(A167614(n+11)+A004275(n+6))`
-/

namespace A035709.P15153151818723103572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A167614 (n + 11) + A004275 (n + 6)).toNat

end

end A035709.P15153151818723103572

namespace A035709

/-- `A035607(A167614(n+11)+A004275(n+6))` -/
def P15153151818723103572.Spec : Prop :=
  ∀ n, P15153151818723103572.a n = A035709 n

end A035709

/-! ## A035709.P10751904672776020578

`A266213(A000217(n+14)+n)`
-/

namespace A035709.P10751904672776020578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A035709.P10751904672776020578

namespace A035709

/-- `A266213(A000217(n+14)+n)` -/
def P10751904672776020578.Spec : Prop :=
  ∀ n, P10751904672776020578.a n = A035709 n

end A035709

/-! ## A035709.P14193506318270576455

`A122542(A000096(n+14)-n)`
-/

namespace A035709.P14193506318270576455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000096 (n + 14) - (n : ℤ)).toNat

end

end A035709.P14193506318270576455

namespace A035709

/-- `A122542(A000096(n+14)-n)` -/
def P14193506318270576455.Spec : Prop :=
  ∀ n, P14193506318270576455.a n = A035709 n

end A035709

/-! ## A035709.P5132979134603851465

`A266213(A161680(n+15)+n)`
-/

namespace A035709.P5132979134603851465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A161680 (n + 15) + (n : ℤ)).toNat

end

end A035709.P5132979134603851465

namespace A035709

/-- `A266213(A161680(n+15)+n)` -/
def P5132979134603851465.Spec : Prop :=
  ∀ n, P5132979134603851465.a n = A035709 n

end A035709

/-!
# A035710: Coordination sequence for 15-dimensional cubic lattice.

The programs for A035710, the canonical program `A035710.P13564547953895892364` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035710 has offset 0).

The definition of A035710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035710.P13564547953895892364

`∑[2*A035709(n)]-A035709(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035710

/-- `∑[2*A035709(n)]-A035709(n)` -/
def P13564547953895892364.Spec : Prop :=
  ∀ n, P13564547953895892364.a n = A035710 n

theorem P13564547953895892364.correct : P13564547953895892364.Spec := by
  intro n
  simp only [A035710]

end A035710

/-! ## A035710.P9351897282632497263

`A035607(A000217(n+14)+n)`
-/

namespace A035710.P9351897282632497263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A035710.P9351897282632497263

namespace A035710

/-- `A035607(A000217(n+14)+n)` -/
def P9351897282632497263.Spec : Prop :=
  ∀ n, P9351897282632497263.a n = A035710 n

end A035710

/-! ## A035710.P6985391750322998717

`A035607(A027691(n+11)-A167499(n+6))`
-/

namespace A035710.P6985391750322998717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A027691 (n + 11) - A167499 (n + 6)).toNat

end

end A035710.P6985391750322998717

namespace A035710

/-- `A035607(A027691(n+11)-A167499(n+6))` -/
def P6985391750322998717.Spec : Prop :=
  ∀ n, P6985391750322998717.a n = A035710 n

end A035710

/-! ## A035710.P14039252335162564729

`A035607(A133263(n+13)+A004275(n+7))`
-/

namespace A035710.P14039252335162564729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A133263 (n + 13) + A004275 (n + 7)).toNat

end

end A035710.P14039252335162564729

namespace A035710

/-- `A035607(A133263(n+13)+A004275(n+7))` -/
def P14039252335162564729.Spec : Prop :=
  ∀ n, P14039252335162564729.a n = A035710 n

end A035710

/-! ## A035710.P1269110866140620435

`A266213(A000217(n+15)+n)`
-/

namespace A035710.P1269110866140620435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A035710.P1269110866140620435

namespace A035710

/-- `A266213(A000217(n+15)+n)` -/
def P1269110866140620435.Spec : Prop :=
  ∀ n, P1269110866140620435.a n = A035710 n

end A035710

/-! ## A035710.P6197202983981283992

`A122542(A000096(n+15)-n)`
-/

namespace A035710.P6197202983981283992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000096 (n + 15) - (n : ℤ)).toNat

end

end A035710.P6197202983981283992

namespace A035710

/-- `A122542(A000096(n+15)-n)` -/
def P6197202983981283992.Spec : Prop :=
  ∀ n, P6197202983981283992.a n = A035710 n

end A035710

/-!
# A035711: Coordination sequence for 16-dimensional cubic lattice.

The programs for A035711, the canonical program `A035711.P16813401447376415005` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035711 has offset 0).

The definition of A035711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035711.P16813401447376415005

`A035607(eq[15, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035711

/-- `A035607(eq[15, A025581(n)])` -/
def P16813401447376415005.Spec : Prop :=
  ∀ n, P16813401447376415005.a n = A035711 n

theorem P16813401447376415005.correct : P16813401447376415005.Spec := by
  intro n
  simp only [A035711]

end A035711

/-! ## A035711.P13783427443850897010

`A113413(eq[15, A002262(n)])`
-/

namespace A035711.P13783427443850897010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P13783427443850897010

namespace A035711

/-- `A113413(eq[15, A002262(n)])` -/
def P13783427443850897010.Spec : Prop :=
  ∀ n, P13783427443850897010.a n = A035711 n

end A035711

/-! ## A035711.P6907138240396674792

`A035607(eq[7, A243070(n+1)])`
-/

namespace A035711.P6907138240396674792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P6907138240396674792

namespace A035711

/-- `A035607(eq[7, A243070(n+1)])` -/
def P6907138240396674792.Spec : Prop :=
  ∀ n, P6907138240396674792.a n = A035711 n

end A035711

/-! ## A035711.P6022335951399216020

`A035607(eq[16, A004736(n+1)])`
-/

namespace A035711.P6022335951399216020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P6022335951399216020

namespace A035711

/-- `A035607(eq[16, A004736(n+1)])` -/
def P6022335951399216020.Spec : Prop :=
  ∀ n, P6022335951399216020.a n = A035711 n

end A035711

/-! ## A035711.P7357878893428966331

`A113413(eq[16, A002260(n+1)])`
-/

namespace A035711.P7357878893428966331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P7357878893428966331

namespace A035711

/-- `A113413(eq[16, A002260(n+1)])` -/
def P7357878893428966331.Spec : Prop :=
  ∀ n, P7357878893428966331.a n = A035711 n

end A035711

/-! ## A035711.P3807183553316964216

`A035607(A000217(n+15)+n)`
-/

namespace A035711.P3807183553316964216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A035711.P3807183553316964216

namespace A035711

/-- `A035607(A000217(n+15)+n)` -/
def P3807183553316964216.Spec : Prop :=
  ∀ n, P3807183553316964216.a n = A035711 n

end A035711

/-! ## A035711.P5702472081679161072

`A035607(A167614(n+13)+A004275(n+7))`
-/

namespace A035711.P5702472081679161072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A167614 (n + 13) + A004275 (n + 7)).toNat

end

end A035711.P5702472081679161072

namespace A035711

/-- `A035607(A167614(n+13)+A004275(n+7))` -/
def P5702472081679161072.Spec : Prop :=
  ∀ n, P5702472081679161072.a n = A035711 n

end A035711

/-! ## A035711.P215990010054022319

`A113413(A055999(n+14)-A005843(n+6))`
-/

namespace A035711.P215990010054022319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A055999 (n + 14) - A005843 (n + 6)).toNat

end

end A035711.P215990010054022319

namespace A035711

/-- `A113413(A055999(n+14)-A005843(n+6))` -/
def P215990010054022319.Spec : Prop :=
  ∀ n, P215990010054022319.a n = A035711 n

end A035711

/-! ## A035711.P4402109796532827613

`A122542(eq[16, A002262(n)])`
-/

namespace A035711.P4402109796532827613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P4402109796532827613

namespace A035711

/-- `A122542(eq[16, A002262(n)])` -/
def P4402109796532827613.Spec : Prop :=
  ∀ n, P4402109796532827613.a n = A035711 n

end A035711

/-! ## A035711.P10317646802508459556

`A266213(eq[16, A025581(n)])`
-/

namespace A035711.P10317646802508459556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P10317646802508459556

namespace A035711

/-- `A266213(eq[16, A025581(n)])` -/
def P10317646802508459556.Spec : Prop :=
  ∀ n, P10317646802508459556.a n = A035711 n

end A035711

/-! ## A035711.P910127870778040925

`A122542(eq[17, A002260(n+1)])`
-/

namespace A035711.P910127870778040925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035711.P910127870778040925

namespace A035711

/-- `A122542(eq[17, A002260(n+1)])` -/
def P910127870778040925.Spec : Prop :=
  ∀ n, P910127870778040925.a n = A035711 n

end A035711

/-! ## A035711.P15076232170048278944

`A266213(A027379(n+12)+A016777(n+11))`
-/

namespace A035711.P15076232170048278944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A027379 (n + 12) + A016777 (n + 11)).toNat

end

end A035711.P15076232170048278944

namespace A035711

/-- `A266213(A027379(n+12)+A016777(n+11))` -/
def P15076232170048278944.Spec : Prop :=
  ∀ n, P15076232170048278944.a n = A035711 n

end A035711

/-!
# A035712: Coordination sequence for 17-dimensional cubic lattice.

The programs for A035712, the canonical program `A035712.P7699037521533580655` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035712 has offset 0).

The definition of A035712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035712.P7699037521533580655

`A035607(eq[16, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035712

/-- `A035607(eq[16, A025581(n)])` -/
def P7699037521533580655.Spec : Prop :=
  ∀ n, P7699037521533580655.a n = A035712 n

theorem P7699037521533580655.correct : P7699037521533580655.Spec := by
  intro n
  simp only [A035712]

end A035712

/-! ## A035712.P3148228595752866144

`A113413(eq[16, A002262(n)])`
-/

namespace A035712.P3148228595752866144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035712.P3148228595752866144

namespace A035712

/-- `A113413(eq[16, A002262(n)])` -/
def P3148228595752866144.Spec : Prop :=
  ∀ n, P3148228595752866144.a n = A035712 n

end A035712

/-! ## A035712.P11051727066147159613

`A035607(eq[33, A099375(n)])`
-/

namespace A035712.P11051727066147159613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035712.P11051727066147159613

namespace A035712

/-- `A035607(eq[33, A099375(n)])` -/
def P11051727066147159613.Spec : Prop :=
  ∀ n, P11051727066147159613.a n = A035712 n

end A035712

/-! ## A035712.P6612351895888534474

`A035607(A133263(n+15)+A004275(n+8))`
-/

namespace A035712.P6612351895888534474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A133263 (n + 15) + A004275 (n + 8)).toNat

end

end A035712.P6612351895888534474

namespace A035712

/-- `A035607(A133263(n+15)+A004275(n+8))` -/
def P6612351895888534474.Spec : Prop :=
  ∀ n, P6612351895888534474.a n = A035712 n

end A035712

/-! ## A035712.P15073716209194857289

`A266213(eq[17, A025581(n)])`
-/

namespace A035712.P15073716209194857289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035712.P15073716209194857289

namespace A035712

/-- `A266213(eq[17, A025581(n)])` -/
def P15073716209194857289.Spec : Prop :=
  ∀ n, P15073716209194857289.a n = A035712 n

end A035712

/-!
# A035713: Coordination sequence for 18-dimensional cubic lattice.

The programs for A035713, the canonical program `A035713.P13683230478109448616` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035713 has offset 0).

The definition of A035713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035713.P13683230478109448616

`A035607(eq[17, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035713

/-- `A035607(eq[17, A025581(n)])` -/
def P13683230478109448616.Spec : Prop :=
  ∀ n, P13683230478109448616.a n = A035713 n

theorem P13683230478109448616.correct : P13683230478109448616.Spec := by
  intro n
  simp only [A035713]

end A035713

/-! ## A035713.P2997897628554525476

`A113413(eq[17, A002262(n)])`
-/

namespace A035713.P2997897628554525476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035713.P2997897628554525476

namespace A035713

/-- `A113413(eq[17, A002262(n)])` -/
def P2997897628554525476.Spec : Prop :=
  ∀ n, P2997897628554525476.a n = A035713 n

end A035713

/-! ## A035713.P4991718007592822779

`A113413(eq[18, A002260(n+1)])`
-/

namespace A035713.P4991718007592822779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035713.P4991718007592822779

namespace A035713

/-- `A113413(eq[18, A002260(n+1)])` -/
def P4991718007592822779.Spec : Prop :=
  ∀ n, P4991718007592822779.a n = A035713 n

end A035713

/-! ## A035713.P17795759629529141123

`A035607(A167614(n+15)+A004275(n+8))`
-/

namespace A035713.P17795759629529141123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A167614 (n + 15) + A004275 (n + 8)).toNat

end

end A035713.P17795759629529141123

namespace A035713

/-- `A035607(A167614(n+15)+A004275(n+8))` -/
def P17795759629529141123.Spec : Prop :=
  ∀ n, P17795759629529141123.a n = A035713 n

end A035713

/-! ## A035713.P9872436989601539967

`A122542(eq[18, A002262(n)])`
-/

namespace A035713.P9872436989601539967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035713.P9872436989601539967

namespace A035713

/-- `A122542(eq[18, A002262(n)])` -/
def P9872436989601539967.Spec : Prop :=
  ∀ n, P9872436989601539967.a n = A035713 n

end A035713

/-! ## A035713.P3971126975524019187

`A035607(eq[18, A195663(n)])`
-/

namespace A035713.P3971126975524019187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035713.P3971126975524019187

namespace A035713

/-- `A035607(eq[18, A195663(n)])` -/
def P3971126975524019187.Spec : Prop :=
  ∀ n, P3971126975524019187.a n = A035713 n

end A035713

/-!
# A035714: Coordination sequence for 19-dimensional cubic lattice.

The programs for A035714, the canonical program `A035714.P17015648478226489726` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035714 has offset 0).

The definition of A035714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035714.P17015648478226489726

`∑[2*A035713(n)]-A035713(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035714

/-- `∑[2*A035713(n)]-A035713(n)` -/
def P17015648478226489726.Spec : Prop :=
  ∀ n, P17015648478226489726.a n = A035714 n

theorem P17015648478226489726.correct : P17015648478226489726.Spec := by
  intro n
  simp only [A035714]

end A035714

/-! ## A035714.P16690928850961812768

`A035607(eq[18, A025581(n)])`
-/

namespace A035714.P16690928850961812768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035714.P16690928850961812768

namespace A035714

/-- `A035607(eq[18, A025581(n)])` -/
def P16690928850961812768.Spec : Prop :=
  ∀ n, P16690928850961812768.a n = A035714 n

end A035714

/-! ## A035714.P10707546098231932415

`A113413(eq[18, A002262(n)])`
-/

namespace A035714.P10707546098231932415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035714.P10707546098231932415

namespace A035714

/-- `A113413(eq[18, A002262(n)])` -/
def P10707546098231932415.Spec : Prop :=
  ∀ n, P10707546098231932415.a n = A035714 n

end A035714

/-! ## A035714.P12443653692674449503

`A122542(eq[19, A002262(n)])`
-/

namespace A035714.P12443653692674449503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035714.P12443653692674449503

namespace A035714

/-- `A122542(eq[19, A002262(n)])` -/
def P12443653692674449503.Spec : Prop :=
  ∀ n, P12443653692674449503.a n = A035714 n

end A035714

/-! ## A035714.P404213426223433736

`A266213(eq[20, A193739(n)])`
-/

namespace A035714.P404213426223433736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035714.P404213426223433736

namespace A035714

/-- `A266213(eq[20, A193739(n)])` -/
def P404213426223433736.Spec : Prop :=
  ∀ n, P404213426223433736.a n = A035714 n

end A035714

/-! ## A035714.P10527307219861179931

`A266213(eq[20, A004736(n+1)])`
-/

namespace A035714.P10527307219861179931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035714.P10527307219861179931

namespace A035714

/-- `A266213(eq[20, A004736(n+1)])` -/
def P10527307219861179931.Spec : Prop :=
  ∀ n, P10527307219861179931.a n = A035714 n

end A035714

/-! ## A035714.P15106406111745809743

`A113413(eq[19, A275723(n+1)])`
-/

namespace A035714.P15106406111745809743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035714.P15106406111745809743

namespace A035714

/-- `A113413(eq[19, A275723(n+1)])` -/
def P15106406111745809743.Spec : Prop :=
  ∀ n, P15106406111745809743.a n = A035714 n

end A035714

/-!
# A035715: Coordination sequence for 20-dimensional cubic lattice.

The programs for A035715, the canonical program `A035715.P10092483258359964657` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035715 has offset 0).

The definition of A035715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035715.P10092483258359964657

`∑[2*A035714(n)]-A035714(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035715

/-- `∑[2*A035714(n)]-A035714(n)` -/
def P10092483258359964657.Spec : Prop :=
  ∀ n, P10092483258359964657.a n = A035715 n

theorem P10092483258359964657.correct : P10092483258359964657.Spec := by
  intro n
  simp only [A035715]

end A035715

/-! ## A035715.P16280051792715067984

`A113413(eq[19, A002262(n)])`
-/

namespace A035715.P16280051792715067984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035715.P16280051792715067984

namespace A035715

/-- `A113413(eq[19, A002262(n)])` -/
def P16280051792715067984.Spec : Prop :=
  ∀ n, P16280051792715067984.a n = A035715 n

end A035715

/-! ## A035715.P11407056070376141317

`A122542(eq[20, A002262(n)])`
-/

namespace A035715.P11407056070376141317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035715.P11407056070376141317

namespace A035715

/-- `A122542(eq[20, A002262(n)])` -/
def P11407056070376141317.Spec : Prop :=
  ∀ n, P11407056070376141317.a n = A035715 n

end A035715

/-! ## A035715.P6055505214456005138

`A266213(eq[21, A004736(n+1)])`
-/

namespace A035715.P6055505214456005138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035715.P6055505214456005138

namespace A035715

/-- `A266213(eq[21, A004736(n+1)])` -/
def P6055505214456005138.Spec : Prop :=
  ∀ n, P6055505214456005138.a n = A035715 n

end A035715

/-!
# A035716: Coordination sequence for 21-dimensional cubic lattice.

The programs for A035716, the canonical program `A035716.P6992411018503788900` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035716 has offset 0).

The definition of A035716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035716.P6992411018503788900

`A035607(eq[21, A004736(n+1)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035716

/-- `A035607(eq[21, A004736(n+1)])` -/
def P6992411018503788900.Spec : Prop :=
  ∀ n, P6992411018503788900.a n = A035716 n

theorem P6992411018503788900.correct : P6992411018503788900.Spec := by
  intro n
  simp only [A035716]

end A035716

/-! ## A035716.P7208599644727033097

`A113413(eq[21, A002260(n+1)])`
-/

namespace A035716.P7208599644727033097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035716.P7208599644727033097

namespace A035716

/-- `A113413(eq[21, A002260(n+1)])` -/
def P7208599644727033097.Spec : Prop :=
  ∀ n, P7208599644727033097.a n = A035716 n

end A035716

/-!
# A035717: Coordination sequence for 22-dimensional cubic lattice.

The programs for A035717, the canonical program `A035717.P10519821207590744476` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035717 has offset 0).

The definition of A035717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035717.P10519821207590744476

`∑[2*A035716(n)]-A035716(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035717

/-- `∑[2*A035716(n)]-A035716(n)` -/
def P10519821207590744476.Spec : Prop :=
  ∀ n, P10519821207590744476.a n = A035717 n

theorem P10519821207590744476.correct : P10519821207590744476.Spec := by
  intro n
  simp only [A035717]

end A035717

/-! ## A035717.P12581134302770709000

`A113413(eq[21, A002262(n)])`
-/

namespace A035717.P12581134302770709000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035717.P12581134302770709000

namespace A035717

/-- `A113413(eq[21, A002262(n)])` -/
def P12581134302770709000.Spec : Prop :=
  ∀ n, P12581134302770709000.a n = A035717 n

end A035717

/-! ## A035717.P12433479108667763015

`A113413(eq[22, A002260(n+1)])`
-/

namespace A035717.P12433479108667763015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035717.P12433479108667763015

namespace A035717

/-- `A113413(eq[22, A002260(n+1)])` -/
def P12433479108667763015.Spec : Prop :=
  ∀ n, P12433479108667763015.a n = A035717 n

end A035717

/-! ## A035717.P1868537963248393207

`A122542(eq[22, A002262(n)])`
-/

namespace A035717.P1868537963248393207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035717.P1868537963248393207

namespace A035717

/-- `A122542(eq[22, A002262(n)])` -/
def P1868537963248393207.Spec : Prop :=
  ∀ n, P1868537963248393207.a n = A035717 n

end A035717

/-!
# A035718: Coordination sequence for 23-dimensional cubic lattice.

The programs for A035718, the canonical program `A035718.P2011270928989741587` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035718 has offset 0).

The definition of A035718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035718.P2011270928989741587

`A122542(eq[23, A002262(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035718

/-- `A122542(eq[23, A002262(n)])` -/
def P2011270928989741587.Spec : Prop :=
  ∀ n, P2011270928989741587.a n = A035718 n

theorem P2011270928989741587.correct : P2011270928989741587.Spec := by
  intro n
  simp only [A035718]

end A035718

/-! ## A035718.P2275288939843716902

`A122542(eq[24, A002260(n+1)])`
-/

namespace A035718.P2275288939843716902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035718.P2275288939843716902

namespace A035718

/-- `A122542(eq[24, A002260(n+1)])` -/
def P2275288939843716902.Spec : Prop :=
  ∀ n, P2275288939843716902.a n = A035718 n

end A035718

/-!
# A035719: Coordination sequence for 24-dimensional cubic lattice.

The programs for A035719, the canonical program `A035719.P10513216737872881466` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035719 has offset 0).

The definition of A035719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035719.P10513216737872881466

`A122542(eq[24, A002262(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035719

/-- `A122542(eq[24, A002262(n)])` -/
def P10513216737872881466.Spec : Prop :=
  ∀ n, P10513216737872881466.a n = A035719 n

theorem P10513216737872881466.correct : P10513216737872881466.Spec := by
  intro n
  simp only [A035719]

end A035719

/-! ## A035719.P4199173260721941683

`A035797(A130663(n)+n)`
-/

namespace A035719.P4199173260721941683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035797 (A130663 n + (n : ℤ)).toNat

end

end A035719.P4199173260721941683

namespace A035719

/-- `A035797(A130663(n)+n)` -/
def P4199173260721941683.Spec : Prop :=
  ∀ n, P4199173260721941683.a n = A035719 n

end A035719

/-! ## A035719.P4928789632698808857

`A035797(n^A220054(n))`
-/

namespace A035719.P4928789632698808857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035797 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A220054 n : ℤ))).toNat

end

end A035719.P4928789632698808857

namespace A035719

/-- `A035797(n^A220054(n))` -/
def P4928789632698808857.Spec : Prop :=
  ∀ n, P4928789632698808857.a n = A035719 n

end A035719

/-! ## A035719.P11938511310032807409

`A035797(n)*A089309(A022184(n))`
-/

namespace A035719.P11938511310032807409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035797 n * A089309 (A022184 n).toNat

end

end A035719.P11938511310032807409

namespace A035719

/-- `A035797(n)*A089309(A022184(n))` -/
def P11938511310032807409.Spec : Prop :=
  ∀ n, P11938511310032807409.a n = A035719 n

end A035719

/-!
# A035720: Coordination sequence for 25-dimensional cubic lattice.

The programs for A035720, the canonical program `A035720.P14875900982246077865` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035720 has offset 0).

The definition of A035720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035720.P14875900982246077865

`A113413(eq[24, A002262(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035720

/-- `A113413(eq[24, A002262(n)])` -/
def P14875900982246077865.Spec : Prop :=
  ∀ n, P14875900982246077865.a n = A035720 n

theorem P14875900982246077865.correct : P14875900982246077865.Spec := by
  intro n
  simp only [A035720]

end A035720

/-! ## A035720.P7461949607073417149

`A035607(eq[25, A004736(n+1)])`
-/

namespace A035720.P7461949607073417149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035720.P7461949607073417149

namespace A035720

/-- `A035607(eq[25, A004736(n+1)])` -/
def P7461949607073417149.Spec : Prop :=
  ∀ n, P7461949607073417149.a n = A035720 n

end A035720

/-! ## A035720.P5367143160541940332

`A122542(eq[25, A002262(n)])`
-/

namespace A035720.P5367143160541940332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035720.P5367143160541940332

namespace A035720

/-- `A122542(eq[25, A002262(n)])` -/
def P5367143160541940332.Spec : Prop :=
  ∀ n, P5367143160541940332.a n = A035720 n

end A035720

/-! ## A035720.P13982465012571782506

`A266213(eq[25, A025581(n)])`
-/

namespace A035720.P13982465012571782506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035720.P13982465012571782506

namespace A035720

/-- `A266213(eq[25, A025581(n)])` -/
def P13982465012571782506.Spec : Prop :=
  ∀ n, P13982465012571782506.a n = A035720 n

end A035720

/-! ## A035720.P18158188102513555870

`A266213(eq[51, A099375(n)])`
-/

namespace A035720.P18158188102513555870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035720.P18158188102513555870

namespace A035720

/-- `A266213(eq[51, A099375(n)])` -/
def P18158188102513555870.Spec : Prop :=
  ∀ n, P18158188102513555870.a n = A035720 n

end A035720

/-!
# A035721: Coordination sequence for 26-dimensional cubic lattice.

The programs for A035721, the canonical program `A035721.P3505769850576790627` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035721 has offset 0).

The definition of A035721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035721.P3505769850576790627

`A113413(eq[25, A002262(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035721

/-- `A113413(eq[25, A002262(n)])` -/
def P3505769850576790627.Spec : Prop :=
  ∀ n, P3505769850576790627.a n = A035721 n

theorem P3505769850576790627.correct : P3505769850576790627.Spec := by
  intro n
  simp only [A035721]

end A035721

/-! ## A035721.P3822930578025325540

`A122542(eq[26, A002262(n)])`
-/

namespace A035721.P3822930578025325540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035721.P3822930578025325540

namespace A035721

/-- `A122542(eq[26, A002262(n)])` -/
def P3822930578025325540.Spec : Prop :=
  ∀ n, P3822930578025325540.a n = A035721 n

end A035721

/-! ## A035721.P321677762063858220

`record[A035798(abs(A158810(n)))]`
-/

namespace A035721.P321677762063858220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035798 |A158810 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035721.P321677762063858220

namespace A035721

/-- `record[A035798(abs(A158810(n)))]` -/
def P321677762063858220.Spec : Prop :=
  ∀ n, P321677762063858220.a n = A035721 n

end A035721

/-! ## A035721.P3318504253098500923

`∏{e}[A000244(n), A035798(#)]`
-/

namespace A035721.P3318504253098500923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035798 (Nat.factorization (f1 n).natAbs p)

end

end A035721.P3318504253098500923

namespace A035721

/-- `∏{e}[A000244(n), A035798(#)]` -/
def P3318504253098500923.Spec : Prop :=
  ∀ n, P3318504253098500923.a n = A035721 n

end A035721

/-! ## A035721.P18151706396590240517

`A035798(n)%∏[A035793(n+1)]`
-/

namespace A035721.P18151706396590240517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035798 n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A035721.P18151706396590240517

namespace A035721

/-- `A035798(n)%∏[A035793(n+1)]` -/
def P18151706396590240517.Spec : Prop :=
  ∀ n, P18151706396590240517.a n = A035721 n

end A035721

/-!
# A035722: Coordination sequence for 27-dimensional cubic lattice.

The programs for A035722, the canonical program `A035722.P10431710349201618195` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035722 has offset 0).

The definition of A035722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035722.P10431710349201618195

`A266213(eq[28, A004736(n+1)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035722

/-- `A266213(eq[28, A004736(n+1)])` -/
def P10431710349201618195.Spec : Prop :=
  ∀ n, P10431710349201618195.a n = A035722 n

theorem P10431710349201618195.correct : P10431710349201618195.Spec := by
  intro n
  simp only [A035722]

end A035722

/-!
# A035723: Coordination sequence for 28-dimensional cubic lattice.

The programs for A035723, the canonical program `A035723.P6252152390960973219` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035723 has offset 0).

The definition of A035723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035723.P6252152390960973219

`A035607(eq[27, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035723

/-- `A035607(eq[27, A025581(n)])` -/
def P6252152390960973219.Spec : Prop :=
  ∀ n, P6252152390960973219.a n = A035723 n

theorem P6252152390960973219.correct : P6252152390960973219.Spec := by
  intro n
  simp only [A035723]

end A035723

/-! ## A035723.P12656723871171834849

`A113413(eq[28, A002260(n+1)])`
-/

namespace A035723.P12656723871171834849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035723.P12656723871171834849

namespace A035723

/-- `A113413(eq[28, A002260(n+1)])` -/
def P12656723871171834849.Spec : Prop :=
  ∀ n, P12656723871171834849.a n = A035723 n

end A035723

/-! ## A035723.P10223144868409628476

`A266213(eq[28, A025581(n)])`
-/

namespace A035723.P10223144868409628476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035723.P10223144868409628476

namespace A035723

/-- `A266213(eq[28, A025581(n)])` -/
def P10223144868409628476.Spec : Prop :=
  ∀ n, P10223144868409628476.a n = A035723 n

end A035723

/-! ## A035723.P2407082790430541936

`A035799(A077168(n)-1)`
-/

namespace A035723.P2407082790430541936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035799 (A077168 n - 1).toNat

end

end A035723.P2407082790430541936

namespace A035723

/-- `A035799(A077168(n)-1)` -/
def P2407082790430541936.Spec : Prop :=
  ∀ n, P2407082790430541936.a n = A035723 n

end A035723

/-! ## A035723.P18013477120525222631

`A035799(log2(A028310(2^n)))`
-/

namespace A035723.P18013477120525222631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035799 (SequenceMachineLib.roundAway (Real.logb 2 (A028310 (2 ^ n) : ℝ))).toNat

end

end A035723.P18013477120525222631

namespace A035723

/-- `A035799(log2(A028310(2^n)))` -/
def P18013477120525222631.Spec : Prop :=
  ∀ n, P18013477120525222631.a n = A035723 n

end A035723

/-!
# A035724: Coordination sequence for 29-dimensional cubic lattice.

The programs for A035724, the canonical program `A035724.P2852025020629588542` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035724 has offset 0).

The definition of A035724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035724.P2852025020629588542

`A113413(eq[28, A002262(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035724

/-- `A113413(eq[28, A002262(n)])` -/
def P2852025020629588542.Spec : Prop :=
  ∀ n, P2852025020629588542.a n = A035724 n

theorem P2852025020629588542.correct : P2852025020629588542.Spec := by
  intro n
  simp only [A035724]

end A035724

/-!
# A035725: Coordination sequence for 30-dimensional cubic lattice.

The programs for A035725, the canonical program `A035725.P14868640989616806064` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035725 has offset 0).

The definition of A035725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035725.P14868640989616806064

`∑[2*A035724(n)]-A035724(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035725

/-- `∑[2*A035724(n)]-A035724(n)` -/
def P14868640989616806064.Spec : Prop :=
  ∀ n, P14868640989616806064.a n = A035725 n

theorem P14868640989616806064.correct : P14868640989616806064.Spec := by
  intro n
  simp only [A035725]

end A035725

/-! ## A035725.P14312546178829516742

`A035607(eq[30, A004736(n+1)])`
-/

namespace A035725.P14312546178829516742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035725.P14312546178829516742

namespace A035725

/-- `A035607(eq[30, A004736(n+1)])` -/
def P14312546178829516742.Spec : Prop :=
  ∀ n, P14312546178829516742.a n = A035725 n

end A035725

/-! ## A035725.P11723721652588994986

`A266213(eq[31, A004736(n+1)])`
-/

namespace A035725.P11723721652588994986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035725.P11723721652588994986

namespace A035725

/-- `A266213(eq[31, A004736(n+1)])` -/
def P11723721652588994986.Spec : Prop :=
  ∀ n, P11723721652588994986.a n = A035725 n

end A035725

/-! ## A035725.P17448356122285289485

`record[A035800(A225633(n))]`
-/

namespace A035725.P17448356122285289485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035800 (A225633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035725.P17448356122285289485

namespace A035725

/-- `record[A035800(A225633(n))]` -/
def P17448356122285289485.Spec : Prop :=
  ∀ n, P17448356122285289485.a n = A035725 n

end A035725

/-! ## A035725.P5680551566009996155

`A035800(A187829(n+1)-1)`
-/

namespace A035725.P5680551566009996155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035800 (A187829 (n + 1) - 1).toNat

end

end A035725.P5680551566009996155

namespace A035725

/-- `A035800(A187829(n+1)-1)` -/
def P5680551566009996155.Spec : Prop :=
  ∀ n, P5680551566009996155.a n = A035725 n

end A035725

/-!
# A035726: Coordination sequence for 31-dimensional cubic lattice.

The programs for A035726, the canonical program `A035726.P1422493462580187844` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035726 has offset 0).

The definition of A035726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035726.P1422493462580187844

`A035607(eq[30, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035726

/-- `A035607(eq[30, A025581(n)])` -/
def P1422493462580187844.Spec : Prop :=
  ∀ n, P1422493462580187844.a n = A035726 n

theorem P1422493462580187844.correct : P1422493462580187844.Spec := by
  intro n
  simp only [A035726]

end A035726

/-! ## A035726.P9165811897366415833

`A035607(eq[31, A004736(n+1)])`
-/

namespace A035726.P9165811897366415833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035726.P9165811897366415833

namespace A035726

/-- `A035607(eq[31, A004736(n+1)])` -/
def P9165811897366415833.Spec : Prop :=
  ∀ n, P9165811897366415833.a n = A035726 n

end A035726

/-! ## A035726.P14192323017191370699

`A266213(eq[31, A025581(n)])`
-/

namespace A035726.P14192323017191370699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035726.P14192323017191370699

namespace A035726

/-- `A266213(eq[31, A025581(n)])` -/
def P14192323017191370699.Spec : Prop :=
  ∀ n, P14192323017191370699.a n = A035726 n

end A035726

/-! ## A035726.P14397178714384294697

`A266213(eq[63, A099375(n)])`
-/

namespace A035726.P14397178714384294697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035726.P14397178714384294697

namespace A035726

/-- `A266213(eq[63, A099375(n)])` -/
def P14397178714384294697.Spec : Prop :=
  ∀ n, P14397178714384294697.a n = A035726 n

end A035726

/-!
# A035727: Coordination sequence for 32-dimensional cubic lattice.

The programs for A035727, there is no canonical definition to state claims against.
-/

/-! ## A035727.P6636299778429635338

`record[A035801(A001222(n+2)-1)]`
-/

namespace A035727.P6636299778429635338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035801 (A001222 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035727.P6636299778429635338

/-! ## A035727.P750511111439742206

`A036275(2^∑{digits}[n, #%C(n, #)])+A035801(n)`
-/

namespace A035727.P750511111439742206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) + A035801 n

end

end A035727.P750511111439742206

/-! ## A035727.P13698544593866799562

`A184955(A184955(n))+A035801(n)`
-/

namespace A035727.P13698544593866799562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A184955 n).toNat + A035801 n

end

end A035727.P13698544593866799562

/-! ## A035727.P15583770068168946747

`lcm(A000005(A002995(n)), A035801(n))`
-/

namespace A035727.P15583770068168946747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A002995 n).toNat) (A035801 n)

end

end A035727.P15583770068168946747

/-!
# A035728: Coordination sequence for 33-dimensional cubic lattice.

The programs for A035728, the canonical program `A035728.P11321370181660951079` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035728 has offset 0).

The definition of A035728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035728.P11321370181660951079

`A035607(eq[32, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035728

/-- `A035607(eq[32, A025581(n)])` -/
def P11321370181660951079.Spec : Prop :=
  ∀ n, P11321370181660951079.a n = A035728 n

theorem P11321370181660951079.correct : P11321370181660951079.Spec := by
  intro n
  simp only [A035728]

end A035728

/-! ## A035728.P4481164048717781806

`A113413(eq[32, A002262(n)])`
-/

namespace A035728.P4481164048717781806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035728.P4481164048717781806

namespace A035728

/-- `A113413(eq[32, A002262(n)])` -/
def P4481164048717781806.Spec : Prop :=
  ∀ n, P4481164048717781806.a n = A035728 n

end A035728

/-!
# A035729: Coordination sequence for 34-dimensional cubic lattice.

The programs for A035729, the canonical program `A035729.P16737054915965970424` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035729 has offset 0).

The definition of A035729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035729.P16737054915965970424

`A035607(eq[33, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035729

/-- `A035607(eq[33, A025581(n)])` -/
def P16737054915965970424.Spec : Prop :=
  ∀ n, P16737054915965970424.a n = A035729 n

theorem P16737054915965970424.correct : P16737054915965970424.Spec := by
  intro n
  simp only [A035729]

end A035729

/-! ## A035729.P5184496924571932148

`A122542(eq[34, A002262(n)])`
-/

namespace A035729.P5184496924571932148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035729.P5184496924571932148

namespace A035729

/-- `A122542(eq[34, A002262(n)])` -/
def P5184496924571932148.Spec : Prop :=
  ∀ n, P5184496924571932148.a n = A035729 n

end A035729

/-!
# A035730: Coordination sequence for 35-dimensional cubic lattice.

The programs for A035730, the canonical program `A035730.P4778937612577439523` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035730 has offset 0).

The definition of A035730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035730.P4778937612577439523

`A035607(eq[35, A004736(n+1)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035730

/-- `A035607(eq[35, A004736(n+1)])` -/
def P4778937612577439523.Spec : Prop :=
  ∀ n, P4778937612577439523.a n = A035730 n

theorem P4778937612577439523.correct : P4778937612577439523.Spec := by
  intro n
  simp only [A035730]

end A035730

/-!
# A035731: Coordination sequence for 36-dimensional cubic lattice.

The programs for A035731, the canonical program `A035731.P2720033960355800765` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035731 has offset 0).

The definition of A035731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035731.P2720033960355800765

`A122542(eq[36, A002262(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035731

/-- `A122542(eq[36, A002262(n)])` -/
def P2720033960355800765.Spec : Prop :=
  ∀ n, P2720033960355800765.a n = A035731 n

theorem P2720033960355800765.correct : P2720033960355800765.Spec := by
  intro n
  simp only [A035731]

end A035731

/-!
# A035732: Coordination sequence for 37-dimensional cubic lattice.

The programs for A035732, the canonical program `A035732.P9725436609809353935` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035732 has offset 0).

The definition of A035732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035732.P9725436609809353935

`A035607(eq[36, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035732

/-- `A035607(eq[36, A025581(n)])` -/
def P9725436609809353935.Spec : Prop :=
  ∀ n, P9725436609809353935.a n = A035732 n

theorem P9725436609809353935.correct : P9725436609809353935.Spec := by
  intro n
  simp only [A035732]

end A035732

/-! ## A035732.P17529212395194969919

`A113413(eq[36, A002262(n)])`
-/

namespace A035732.P17529212395194969919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035732.P17529212395194969919

namespace A035732

/-- `A113413(eq[36, A002262(n)])` -/
def P17529212395194969919.Spec : Prop :=
  ∀ n, P17529212395194969919.a n = A035732 n

end A035732

/-!
# A035733: Coordination sequence for 38-dimensional cubic lattice.

The programs for A035733, the canonical program `A035733.P5573600906970786573` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035733 has offset 0).

The definition of A035733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035733.P5573600906970786573

`A266213(eq[39, A193739(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035733

/-- `A266213(eq[39, A193739(n)])` -/
def P5573600906970786573.Spec : Prop :=
  ∀ n, P5573600906970786573.a n = A035733 n

theorem P5573600906970786573.correct : P5573600906970786573.Spec := by
  intro n
  simp only [A035733]

end A035733

/-!
# A035734: Coordination sequence for 39-dimensional cubic lattice.

The programs for A035734, the canonical program `A035734.P7869225986865680874` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035734 has offset 0).

The definition of A035734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035734.P7869225986865680874

`∑[2*A035733(n)]-A035733(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035734

/-- `∑[2*A035733(n)]-A035733(n)` -/
def P7869225986865680874.Spec : Prop :=
  ∀ n, P7869225986865680874.a n = A035734 n

theorem P7869225986865680874.correct : P7869225986865680874.Spec := by
  intro n
  simp only [A035734]

end A035734

/-! ## A035734.P1088267120865683214

`A266213(eq[40, A004736(n+1)])`
-/

namespace A035734.P1088267120865683214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035734.P1088267120865683214

namespace A035734

/-- `A266213(eq[40, A004736(n+1)])` -/
def P1088267120865683214.Spec : Prop :=
  ∀ n, P1088267120865683214.a n = A035734 n

end A035734

/-!
# A035735: Coordination sequence for 40-dimensional cubic lattice.

The programs for A035735, the canonical program `A035735.P11766863840141800365` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035735 has offset 0).

The definition of A035735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035735.P11766863840141800365

`A266213(eq[40, A025581(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035735

/-- `A266213(eq[40, A025581(n)])` -/
def P11766863840141800365.Spec : Prop :=
  ∀ n, P11766863840141800365.a n = A035735 n

theorem P11766863840141800365.correct : P11766863840141800365.Spec := by
  intro n
  simp only [A035735]

end A035735

/-! ## A035735.P18204836814640721086

`A266213(eq[41, A004736(n+1)])`
-/

namespace A035735.P18204836814640721086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035735.P18204836814640721086

namespace A035735

/-- `A266213(eq[41, A004736(n+1)])` -/
def P18204836814640721086.Spec : Prop :=
  ∀ n, P18204836814640721086.a n = A035735 n

end A035735

/-!
# A035736: Coordination sequence for 41-dimensional cubic lattice.

The programs for A035736, the canonical program `A035736.P17590245496951904625` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035736 has offset 0).

The definition of A035736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035736.P17590245496951904625

`A035607(eq[41, A004736(n+1)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035736

/-- `A035607(eq[41, A004736(n+1)])` -/
def P17590245496951904625.Spec : Prop :=
  ∀ n, P17590245496951904625.a n = A035736 n

theorem P17590245496951904625.correct : P17590245496951904625.Spec := by
  intro n
  simp only [A035736]

end A035736

/-!
# A035738: Coordination sequence for 43-dimensional cubic lattice.

The programs for A035738, there is no canonical definition to state claims against.
-/

/-! ## A035738.P17752026540711242118

`∑[2*A035737(n)]-A035737(n)`
-/

namespace A035738.P17752026540711242118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035737 n

end

end A035738.P17752026540711242118

/-!
# A035742: Coordination sequence for 47-dimensional cubic lattice.

The programs for A035742, there is no canonical definition to state claims against.
-/

/-! ## A035742.P9899720716141531989

`∑[2*A035741(n)]-A035741(n)`
-/

namespace A035742.P9899720716141531989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035741 n

end

end A035742.P9899720716141531989

/-!
# A035743: Coordination sequence for 48-dimensional cubic lattice.

The programs for A035743, there is no canonical definition to state claims against.
-/

/-! ## A035743.P17131833288566115238

`∑[2*A035742(n)]-A035742(n)`
-/

namespace A035743.P17131833288566115238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035742 n

end

end A035743.P17131833288566115238

/-!
# A035746: Coordination sequence for C_9 lattice.

The programs for A035746, the canonical program `A035746.P11342363624555630469` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035746 has offset 0).

The definition of A035746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035746.P11342363624555630469

`A008418(2*n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035746

/-- `A008418(2*n)` -/
def P11342363624555630469.Spec : Prop :=
  ∀ n, P11342363624555630469.a n = A035746 n

theorem P11342363624555630469.correct : P11342363624555630469.Spec := by
  intro n
  simp only [A035746]

end A035746

/-! ## A035746.P9086043629844068423

`A008418(n+n)+A000007(n+1)`
-/

namespace A035746.P9086043629844068423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 (n + n) + A000007 (n + 1)

end

end A035746.P9086043629844068423

namespace A035746

/-- `A008418(n+n)+A000007(n+1)` -/
def P9086043629844068423.Spec : Prop :=
  ∀ n, P9086043629844068423.a n = A035746 n

theorem P9086043629844068423.correct : P9086043629844068423.Spec := by
  intro n
  simp only [A035746, Nat.add_sub_cancel, A035746.P9086043629844068423.a, A035746.P11342363624555630469.a, A000007, A000007.P6599383543502402472.a, A008418, A008418.P12679540654999658898.a, A008415, A008415.P5760122249089442523.a, A035602, A035602.P11295284103592876625.a, A008414, A008414.P48295776868654470.a, A099195, A099195.P14002362411851695594.a, A008412, A008412.P13878766666542366952.a, A069038, A069038.P11696173579921960810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035746

/-! ## A035746.P3425114663316042609

`A008415(2*n)+2*A035602(2*n)`
-/

namespace A035746.P3425114663316042609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 (2 * n) + 2 * A035602 (2 * n)

end

end A035746.P3425114663316042609

namespace A035746

/-- `A008415(2*n)+2*A035602(2*n)` -/
def P3425114663316042609.Spec : Prop :=
  ∀ n, P3425114663316042609.a n = A035746 n

end A035746

/-! ## A035746.P4749964670235260691

`2*A008417(2*n)-A008416(2*n)`
-/

namespace A035746.P4749964670235260691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008417 (2 * n) - A008416 (2 * n)

end

end A035746.P4749964670235260691

namespace A035746

/-- `2*A008417(2*n)-A008416(2*n)` -/
def P4749964670235260691.Spec : Prop :=
  ∀ n, P4749964670235260691.a n = A035746 n

end A035746

/-! ## A035746.P12642961732369272323

`2*A008419(2*n)-A008420(2*n)`
-/

namespace A035746.P12642961732369272323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008419 (2 * n) - A008420 (2 * n)

end

end A035746.P12642961732369272323

namespace A035746

/-- `2*A008419(2*n)-A008420(2*n)` -/
def P12642961732369272323.Spec : Prop :=
  ∀ n, P12642961732369272323.a n = A035746 n

end A035746

/-! ## A035746.P18295310825775381840

`record[A099196(A000265(n+2))-A099196(n)]`
-/

namespace A035746.P18295310825775381840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (A000265 (n + 2)).toNat - A099196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035746.P18295310825775381840

namespace A035746

/-- `record[A099196(A000265(n+2))-A099196(n)]` -/
def P18295310825775381840.Spec : Prop :=
  ∀ n, P18295310825775381840.a n = A035746 n

end A035746

/-! ## A035746.P14704911064098120316

`A099196(2*n+1)-A099196(A004273(n))`
-/

namespace A035746.P14704911064098120316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (2 * n + 1) - A099196 (A004273 n).toNat

end

end A035746.P14704911064098120316

namespace A035746

/-- `A099196(2*n+1)-A099196(A004273(n))` -/
def P14704911064098120316.Spec : Prop :=
  ∀ n, P14704911064098120316.a n = A035746 n

end A035746

/-! ## A035746.P3619772788284676929

`A035603(2*n+1)-(A035603(2*n)+A008416(2*n))`
-/

namespace A035746.P3619772788284676929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035603 (2 * n + 1) - (A035603 (2 * n) + A008416 (2 * n))

end

end A035746.P3619772788284676929

namespace A035746

/-- `A035603(2*n+1)-(A035603(2*n)+A008416(2*n))` -/
def P3619772788284676929.Spec : Prop :=
  ∀ n, P3619772788284676929.a n = A035746 n

end A035746

/-! ## A035746.P8031117633500378503

`A035607(A187989(n+1))`
-/

namespace A035746.P8031117633500378503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A187989 (n + 1)).toNat

end

end A035746.P8031117633500378503

namespace A035746

/-- `A035607(A187989(n+1))` -/
def P8031117633500378503.Spec : Prop :=
  ∀ n, P8031117633500378503.a n = A035746 n

end A035746

/-!
# A035747: Coordination sequence for C_10 lattice.

The programs for A035747, the canonical program `A035747.P14738988222165584094` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035747 has offset 0).

The definition of A035747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035747.P14738988222165584094

`A008420(2*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035747

/-- `A008420(2*n)` -/
def P14738988222165584094.Spec : Prop :=
  ∀ n, P14738988222165584094.a n = A035747 n

theorem P14738988222165584094.correct : P14738988222165584094.Spec := by
  intro n
  simp only [A035747]

end A035747

/-! ## A035747.P10083899079786234819

`xor(2, A008420(n+n)+2)`
-/

namespace A035747.P10083899079786234819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008420 (n + n) + 2)

end

end A035747.P10083899079786234819

namespace A035747

/-- `xor(2, A008420(n+n)+2)` -/
def P10083899079786234819.Spec : Prop :=
  ∀ n, P10083899079786234819.a n = A035747 n

end A035747

/-! ## A035747.P14658256048179719792

`record[A008420(A014681(n))]`
-/

namespace A035747.P14658256048179719792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035747.P14658256048179719792

namespace A035747

/-- `record[A008420(A014681(n))]` -/
def P14658256048179719792.Spec : Prop :=
  ∀ n, P14658256048179719792.a n = A035747 n

end A035747

/-! ## A035747.P14918551155575492829

`record[A008420(A129760(n+1))]`
-/

namespace A035747.P14918551155575492829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 (A129760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035747.P14918551155575492829

namespace A035747

/-- `record[A008420(A129760(n+1))]` -/
def P14918551155575492829.Spec : Prop :=
  ∀ n, P14918551155575492829.a n = A035747 n

end A035747

/-! ## A035747.P10984333842143124542

`A008416(2*n)+2*A035603(2*n)`
-/

namespace A035747.P10984333842143124542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 (2 * n) + 2 * A035603 (2 * n)

end

end A035747.P10984333842143124542

namespace A035747

/-- `A008416(2*n)+2*A035603(2*n)` -/
def P10984333842143124542.Spec : Prop :=
  ∀ n, P10984333842143124542.a n = A035747 n

end A035747

/-! ## A035747.P14898074765528290954

`2*A008419(2*n)-A008418(2*n)`
-/

namespace A035747.P14898074765528290954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008419 (2 * n) - A008418 (2 * n)

end

end A035747.P14898074765528290954

namespace A035747

/-- `2*A008419(2*n)-A008418(2*n)` -/
def P14898074765528290954.Spec : Prop :=
  ∀ n, P14898074765528290954.a n = A035747 n

end A035747

/-! ## A035747.P16038395516521808255

`A099197(2*n+1)-A099197(A004273(n))`
-/

namespace A035747.P16038395516521808255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 (2 * n + 1) - A099197 (A004273 n).toNat

end

end A035747.P16038395516521808255

namespace A035747

/-- `A099197(2*n+1)-A099197(A004273(n))` -/
def P16038395516521808255.Spec : Prop :=
  ∀ n, P16038395516521808255.a n = A035747 n

end A035747

/-! ## A035747.P11062567984953638893

`A008420(n+n)^A059268(∑[n])`
-/

namespace A035747.P11062567984953638893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008420 (n + n) : ℚ) ^ (A059268 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A035747.P11062567984953638893

namespace A035747

/-- `A008420(n+n)^A059268(∑[n])` -/
def P11062567984953638893.Spec : Prop :=
  ∀ n, P11062567984953638893.a n = (A035747 n : ℚ)

end A035747

/-! ## A035747.P812541157809303263

`A008420(n+n)/A000213(A122542(∑[n]))`
-/

namespace A035747.P812541157809303263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008420 (n + n) : ℚ) / (A000213 (A122542 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A035747.P812541157809303263

namespace A035747

/-- `A008420(n+n)/A000213(A122542(∑[n]))` -/
def P812541157809303263.Spec : Prop :=
  ∀ n, P812541157809303263.a n = (A035747 n : ℚ)

end A035747

/-! ## A035747.P15476886920432009609

`A122542(∑[n+1])+A008420(n+n)`
-/

namespace A035747.P15476886920432009609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (∑ j ∈ Finset.range (n + 1), f1 j) + A008420 (n + n)

end

end A035747.P15476886920432009609

namespace A035747

/-- `A122542(∑[n+1])+A008420(n+n)` -/
def P15476886920432009609.Spec : Prop :=
  ∀ n, P15476886920432009609.a n = A035747 n

end A035747

/-!
# A035748: Coordination sequence for C_11 lattice.

The programs for A035748, the canonical program `A035748.P7453906693344743949` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035748 has offset 0).

The definition of A035748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035748.P7453906693344743949

`A035706(2*n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035748

/-- `A035706(2*n)` -/
def P7453906693344743949.Spec : Prop :=
  ∀ n, P7453906693344743949.a n = A035748 n

theorem P7453906693344743949.correct : P7453906693344743949.Spec := by
  intro n
  simp only [A035748]

end A035748

/-! ## A035748.P16414914685796111735

`xor(1, xor(1, A035706(n+n)))`
-/

namespace A035748.P16414914685796111735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A035706 (n + n)))

end

end A035748.P16414914685796111735

namespace A035748

/-- `xor(1, xor(1, A035706(n+n)))` -/
def P16414914685796111735.Spec : Prop :=
  ∀ n, P16414914685796111735.a n = A035748 n

end A035748

/-! ## A035748.P17175883689100815717

`record[A035706(n+1-A020639(n+1))]`
-/

namespace A035748.P17175883689100815717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 ((n + 1 : ℤ) - A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035748.P17175883689100815717

namespace A035748

/-- `record[A035706(n+1-A020639(n+1))]` -/
def P17175883689100815717.Spec : Prop :=
  ∀ n, P17175883689100815717.a n = A035748 n

end A035748

/-! ## A035748.P445639522613616008

`Δ[A300624(A004273(n))]`
-/

namespace A035748.P445639522613616008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035748.P445639522613616008

namespace A035748

/-- `Δ[A300624(A004273(n))]` -/
def P445639522613616008.Spec : Prop :=
  ∀ n, P445639522613616008.a n = A035748 n

end A035748

/-! ## A035748.P8441299758586770717

`record[A035706(A153733(n))]`
-/

namespace A035748.P8441299758586770717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035748.P8441299758586770717

namespace A035748

/-- `record[A035706(A153733(n))]` -/
def P8441299758586770717.Spec : Prop :=
  ∀ n, P8441299758586770717.a n = A035748 n

end A035748

/-! ## A035748.P8474834749182642091

`record[A035706(n-A183063(n+1))]`
-/

namespace A035748.P8474834749182642091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 ((n : ℤ) - A183063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035748.P8474834749182642091

namespace A035748

/-- `record[A035706(n-A183063(n+1))]` -/
def P8474834749182642091.Spec : Prop :=
  ∀ n, P8474834749182642091.a n = A035748 n

end A035748

/-! ## A035748.P14481458000134463917

`record[gcd(A035706(n), A183063(n+1))]`
-/

namespace A035748.P14481458000134463917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035706 n) (A183063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035748.P14481458000134463917

namespace A035748

/-- `record[gcd(A035706(n), A183063(n+1))]` -/
def P14481458000134463917.Spec : Prop :=
  ∀ n, (P14481458000134463917.a n : ℤ) = A035748 n

end A035748

/-! ## A035748.P11618461816139741171

`A035708(2*n)-2*A035606(2*n)`
-/

namespace A035748.P11618461816139741171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (2 * n) - 2 * A035606 (2 * n)

end

end A035748.P11618461816139741171

namespace A035748

/-- `A035708(2*n)-2*A035606(2*n)` -/
def P11618461816139741171.Spec : Prop :=
  ∀ n, P11618461816139741171.a n = A035748 n

theorem P11618461816139741171.correct : P11618461816139741171.Spec := by
  intro n
  simp only [A035748, Nat.add_sub_cancel, A035748.P11618461816139741171.a, A035748.P7453906693344743949.a, A035606, A035606.P15826716796151369121.f1, A035606.P15826716796151369121.a, A035706, A035706.P322796382435352986.f1, A035706.P322796382435352986.a, A035708, A035708.P6521280316452753711.a, A008420, A008420.P15915323523869300231.a, A035605, A035605.P8746881321390343686.f1, A035605.P8746881321390343686.a, A008416, A008416.P15332718079879402736.a, A035603, A035603.P5033389381879539558.a, A035604, A035604.P40572468847417807.a, A008415, A008415.P5760122249089442523.a, A099196, A099196.P16367201159128015509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035748

/-! ## A035748.P629490403971781909

`A300624(2*n+1)-A300624(A004273(n))`
-/

namespace A035748.P629490403971781909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 (2 * n + 1) - A300624 (A004273 n).toNat

end

end A035748.P629490403971781909

namespace A035748

/-- `A300624(2*n+1)-A300624(A004273(n))` -/
def P629490403971781909.Spec : Prop :=
  ∀ n, P629490403971781909.a n = A035748 n

end A035748

/-! ## A035748.P995247601370779963

`record[A035706(n)/A035706(A183063(n+1)²)]`
-/

namespace A035748.P995247601370779963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035706 n : ℚ) / (A035706 (A183063 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035748.P995247601370779963

namespace A035748

/-- `record[A035706(n)/A035706(A183063(n+1)²)]` -/
def P995247601370779963.Spec : Prop :=
  ∀ n, P995247601370779963.a n = (A035748 n : ℚ)

end A035748

/-! ## A035748.P8678514750070370439

`A035606(2*n+1)-(A035707(2*n)+A035606(2*n))`
-/

namespace A035748.P8678514750070370439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 (2 * n + 1) - (A035707 (2 * n) + A035606 (2 * n))

end

end A035748.P8678514750070370439

namespace A035748

/-- `A035606(2*n+1)-(A035707(2*n)+A035606(2*n))` -/
def P8678514750070370439.Spec : Prop :=
  ∀ n, P8678514750070370439.a n = A035748 n

end A035748

/-!
# A035749: Coordination sequence for C_12 lattice.

The programs for A035749, the canonical program `A035749.P1987702224880848281` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035749 has offset 0).

The definition of A035749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035749.P1987702224880848281

`A035707(2*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035749

/-- `A035707(2*n)` -/
def P1987702224880848281.Spec : Prop :=
  ∀ n, P1987702224880848281.a n = A035749 n

theorem P1987702224880848281.correct : P1987702224880848281.Spec := by
  intro n
  simp only [A035749]

end A035749

/-! ## A035749.P9703487682365572730

`record[A035707(A014681(n))]`
-/

namespace A035749.P9703487682365572730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035749.P9703487682365572730

namespace A035749

/-- `record[A035707(A014681(n))]` -/
def P9703487682365572730.Spec : Prop :=
  ∀ n, P9703487682365572730.a n = A035749 n

end A035749

/-! ## A035749.P10374150786753241367

`record[A035707(n)/A033999(n)]`
-/

namespace A035749.P10374150786753241367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035707 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035749.P10374150786753241367

namespace A035749

/-- `record[A035707(n)/A033999(n)]` -/
def P10374150786753241367.Spec : Prop :=
  ∀ n, P10374150786753241367.a n = (A035749 n : ℚ)

end A035749

/-! ## A035749.P18140173644016886683

`A035606(2*n+1)+A035606(2*n)-A035708(2*n)`
-/

namespace A035749.P18140173644016886683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 (2 * n + 1) + (A035606 (2 * n) - A035708 (2 * n))

end

end A035749.P18140173644016886683

namespace A035749

/-- `A035606(2*n+1)+A035606(2*n)-A035708(2*n)` -/
def P18140173644016886683.Spec : Prop :=
  ∀ n, P18140173644016886683.a n = A035749 n

end A035749

/-! ## A035749.P14321106847118000161

`A035606(2*n+1)-(A035706(2*n)+A035606(2*n))`
-/

namespace A035749.P14321106847118000161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 (2 * n + 1) - (A035706 (2 * n) + A035606 (2 * n))

end

end A035749.P14321106847118000161

namespace A035749

/-- `A035606(2*n+1)-(A035706(2*n)+A035606(2*n))` -/
def P14321106847118000161.Spec : Prop :=
  ∀ n, P14321106847118000161.a n = A035749 n

end A035749

/-! ## A035749.P2489729857865522940

`A035707(n+n)+A000095(A008458(n+1))`
-/

namespace A035749.P2489729857865522940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 (n + n) + A000095 (A008458 (n + 1)).toNat

end

end A035749.P2489729857865522940

namespace A035749

/-- `A035707(n+n)+A000095(A008458(n+1))` -/
def P2489729857865522940.Spec : Prop :=
  ∀ n, P2489729857865522940.a n = A035749 n

end A035749

/-!
# A035750: Coordination sequence for C_13 lattice.

The programs for A035750, the canonical program `A035750.P17272532631500132304` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035750 has offset 0).

The definition of A035750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035750.P17272532631500132304

`A035708(2*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035750

/-- `A035708(2*n)` -/
def P17272532631500132304.Spec : Prop :=
  ∀ n, P17272532631500132304.a n = A035750 n

theorem P17272532631500132304.correct : P17272532631500132304.Spec := by
  intro n
  simp only [A035750]

end A035750

/-! ## A035750.P10883951572342657898

`record[A035708(A014681(n))]`
-/

namespace A035750.P10883951572342657898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035750.P10883951572342657898

namespace A035750

/-- `record[A035708(A014681(n))]` -/
def P10883951572342657898.Spec : Prop :=
  ∀ n, P10883951572342657898.a n = A035750 n

end A035750

/-! ## A035750.P13983905108956902657

`record[A035708(A230865(n))]`
-/

namespace A035750.P13983905108956902657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (A230865 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035750.P13983905108956902657

namespace A035750

/-- `record[A035708(A230865(n))]` -/
def P13983905108956902657.Spec : Prop :=
  ∀ n, P13983905108956902657.a n = A035750 n

end A035750

/-! ## A035750.P677642224102870946

`record[A035708(A237420(n))]`
-/

namespace A035750.P677642224102870946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035750.P677642224102870946

namespace A035750

/-- `record[A035708(A237420(n))]` -/
def P677642224102870946.Spec : Prop :=
  ∀ n, P677642224102870946.a n = A035750 n

end A035750

/-! ## A035750.P8645610007175396255

`record[A035708(lcm(n, A091337(n+1)))]`
-/

namespace A035750.P8645610007175396255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (Int.lcm (n : ℤ) (A091337 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035750.P8645610007175396255

namespace A035750

/-- `record[A035708(lcm(n, A091337(n+1)))]` -/
def P8645610007175396255.Spec : Prop :=
  ∀ n, P8645610007175396255.a n = A035750 n

end A035750

/-! ## A035750.P1538200636622910331

`A035706(2*n)+2*A035606(2*n)`
-/

namespace A035750.P1538200636622910331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 (2 * n) + 2 * A035606 (2 * n)

end

end A035750.P1538200636622910331

namespace A035750

/-- `A035706(2*n)+2*A035606(2*n)` -/
def P1538200636622910331.Spec : Prop :=
  ∀ n, P1538200636622910331.a n = A035750 n

end A035750

/-! ## A035750.P3777456468880166717

`A035606(2*n+1)+A035606(2*n)-A035707(2*n)`
-/

namespace A035750.P3777456468880166717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 (2 * n + 1) + (A035606 (2 * n) - A035707 (2 * n))

end

end A035750.P3777456468880166717

namespace A035750

/-- `A035606(2*n+1)+A035606(2*n)-A035707(2*n)` -/
def P3777456468880166717.Spec : Prop :=
  ∀ n, P3777456468880166717.a n = A035750 n

end A035750

/-!
# A035751: Coordination sequence for C_14 lattice.

The programs for A035751, the canonical program `A035751.P3779261215358215633` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035751 has offset 0).

The definition of A035751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035751.P3779261215358215633

`A035709(2*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035751

/-- `A035709(2*n)` -/
def P3779261215358215633.Spec : Prop :=
  ∀ n, P3779261215358215633.a n = A035751 n

theorem P3779261215358215633.correct : P3779261215358215633.Spec := by
  intro n
  simp only [A035751]

end A035751

/-! ## A035751.P989842221036994333

`record[A035709(n%4+n)]`
-/

namespace A035751.P989842221036994333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035751.P989842221036994333

namespace A035751

/-- `record[A035709(n%4+n)]` -/
def P989842221036994333.Spec : Prop :=
  ∀ n, P989842221036994333.a n = A035751 n

end A035751

/-! ## A035751.P1480871383731712289

`record[A035709(n--n%4)]`
-/

namespace A035751.P1480871383731712289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 ((n : ℤ) - Int.tmod (-(n : ℤ)) 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035751.P1480871383731712289

namespace A035751

/-- `record[A035709(n--n%4)]` -/
def P1480871383731712289.Spec : Prop :=
  ∀ n, P1480871383731712289.a n = A035751 n

end A035751

/-! ## A035751.P9290474526767916285

`record[gcd(A007814(n+1), A035709(n))]`
-/

namespace A035751.P9290474526767916285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035709 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035751.P9290474526767916285

namespace A035751

/-- `record[gcd(A007814(n+1), A035709(n))]` -/
def P9290474526767916285.Spec : Prop :=
  ∀ n, (P9290474526767916285.a n : ℤ) = A035751 n

end A035751

/-! ## A035751.P11492604187088354855

`record[A035709(A002264(A001281(n)))]`
-/

namespace A035751.P11492604187088354855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (A002264 (A001281 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035751.P11492604187088354855

namespace A035751

/-- `record[A035709(A002264(A001281(n)))]` -/
def P11492604187088354855.Spec : Prop :=
  ∀ n, P11492604187088354855.a n = A035751 n

end A035751

/-! ## A035751.P8012961227002449683

`record[A035709(A002264(A165998(n)))]`
-/

namespace A035751.P8012961227002449683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (A002264 (A165998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035751.P8012961227002449683

namespace A035751

/-- `record[A035709(A002264(A165998(n)))]` -/
def P8012961227002449683.Spec : Prop :=
  ∀ n, P8012961227002449683.a n = A035751 n

end A035751

/-!
# A035752: Coordination sequence for C_15 lattice.

The programs for A035752, the canonical program `A035752.P195142504757365663` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035752 has offset 0).

The definition of A035752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035752.P195142504757365663

`A035710(2*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A035752

/-- `A035710(2*n)` -/
def P195142504757365663.Spec : Prop :=
  ∀ n, P195142504757365663.a n = A035752 n

theorem P195142504757365663.correct : P195142504757365663.Spec := by
  intro n
  simp only [A035752]

end A035752

/-! ## A035752.P17128569194297432271

`record[A035710(A014681(n))]`
-/

namespace A035752.P17128569194297432271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035710 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035752.P17128569194297432271

namespace A035752

/-- `record[A035710(A014681(n))]` -/
def P17128569194297432271.Spec : Prop :=
  ∀ n, P17128569194297432271.a n = A035752 n

end A035752

/-! ## A035752.P10464282040168583034

`record[A035710(A046666(n+2))]`
-/

namespace A035752.P10464282040168583034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035710 (A046666 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035752.P10464282040168583034

namespace A035752

/-- `record[A035710(A046666(n+2))]` -/
def P10464282040168583034.Spec : Prop :=
  ∀ n, P10464282040168583034.a n = A035752 n

end A035752

/-! ## A035752.P14635596879559455795

`record[A035710(n)/A033999(n)]`
-/

namespace A035752.P14635596879559455795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035710 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035752.P14635596879559455795

namespace A035752

/-- `record[A035710(n)/A033999(n)]` -/
def P14635596879559455795.Spec : Prop :=
  ∀ n, P14635596879559455795.a n = (A035752 n : ℚ)

end A035752

/-! ## A035752.P9143845293447227335

`record[A035710(A065423(n+1))]`
-/

namespace A035752.P9143845293447227335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035710 (A065423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035752.P9143845293447227335

namespace A035752

/-- `record[A035710(A065423(n+1))]` -/
def P9143845293447227335.Spec : Prop :=
  ∀ n, P9143845293447227335.a n = A035752 n

end A035752

/-! ## A035752.P5009830173241635141

`record[A035710(n)^abs(A056594(n))]`
-/

namespace A035752.P5009830173241635141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035710 n : ℚ) ^ (|A056594 n| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035752.P5009830173241635141

namespace A035752

/-- `record[A035710(n)^abs(A056594(n))]` -/
def P5009830173241635141.Spec : Prop :=
  ∀ n, P5009830173241635141.a n = (A035752 n : ℚ)

end A035752

/-! ## A035752.P16565521890398209751

`record[A035710(A236840(A008611(n)))]`
-/

namespace A035752.P16565521890398209751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035710 (A236840 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035752.P16565521890398209751

namespace A035752

/-- `record[A035710(A236840(A008611(n)))]` -/
def P16565521890398209751.Spec : Prop :=
  ∀ n, P16565521890398209751.a n = A035752 n

end A035752

/-!
# A035753: Coordination sequence for C_16 lattice.

The programs for A035753, the canonical program `A035753.P4090825401291878675` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035753 has offset 0).

The definition of A035753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035753.P4090825401291878675

`A035711(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035753

/-- `A035711(2*n)` -/
def P4090825401291878675.Spec : Prop :=
  ∀ n, P4090825401291878675.a n = A035753 n

theorem P4090825401291878675.correct : P4090825401291878675.Spec := by
  intro n
  simp only [A035753]

end A035753

/-! ## A035753.P804402061876580235

`record[A035711(and(n, n+1))]`
-/

namespace A035753.P804402061876580235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035753.P804402061876580235

namespace A035753

/-- `record[A035711(and(n, n+1))]` -/
def P804402061876580235.Spec : Prop :=
  ∀ n, P804402061876580235.a n = A035753 n

end A035753

/-! ## A035753.P15156619455496788523

`record[A035711(n)/(-1)^n]`
-/

namespace A035753.P15156619455496788523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035711 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035753.P15156619455496788523

namespace A035753

/-- `record[A035711(n)/(-1)^n]` -/
def P15156619455496788523.Spec : Prop :=
  ∀ n, P15156619455496788523.a n = (A035753 n : ℚ)

end A035753

/-! ## A035753.P5424210177955339277

`record[A035711(A014681(n))]`
-/

namespace A035753.P5424210177955339277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035753.P5424210177955339277

namespace A035753

/-- `record[A035711(A014681(n))]` -/
def P5424210177955339277.Spec : Prop :=
  ∀ n, P5424210177955339277.a n = A035753 n

end A035753

/-! ## A035753.P15037532389898700706

`record[A035711(A129760(n+1))]`
-/

namespace A035753.P15037532389898700706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (A129760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035753.P15037532389898700706

namespace A035753

/-- `record[A035711(A129760(n+1))]` -/
def P15037532389898700706.Spec : Prop :=
  ∀ n, P15037532389898700706.a n = A035753 n

end A035753

/-! ## A035753.P4140498065050672678

`record[A035711(A018838(n))]`
-/

namespace A035753.P4140498065050672678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035753.P4140498065050672678

namespace A035753

/-- `record[A035711(A018838(n))]` -/
def P4140498065050672678.Spec : Prop :=
  ∀ n, P4140498065050672678.a n = A035753 n

end A035753

/-!
# A035754: Coordination sequence for C_17 lattice.

The programs for A035754, the canonical program `A035754.P12613801996385797281` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035754 has offset 0).

The definition of A035754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035754.P12613801996385797281

`A035712(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035754

/-- `A035712(2*n)` -/
def P12613801996385797281.Spec : Prop :=
  ∀ n, P12613801996385797281.a n = A035754 n

theorem P12613801996385797281.correct : P12613801996385797281.Spec := by
  intro n
  simp only [A035754]

end A035754

/-! ## A035754.P2446601447757898773

`record[A035712(A014681(n))]`
-/

namespace A035754.P2446601447757898773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035712 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035754.P2446601447757898773

namespace A035754

/-- `record[A035712(A014681(n))]` -/
def P2446601447757898773.Spec : Prop :=
  ∀ n, P2446601447757898773.a n = A035754 n

end A035754

/-! ## A035754.P8006175007749292967

`record[gcd(A035712(n), A135481(n))]`
-/

namespace A035754.P8006175007749292967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035712 n) (A135481 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035754.P8006175007749292967

namespace A035754

/-- `record[gcd(A035712(n), A135481(n))]` -/
def P8006175007749292967.Spec : Prop :=
  ∀ n, (P8006175007749292967.a n : ℤ) = A035754 n

end A035754

/-! ## A035754.P4865367285269321882

`record[lcm(A035712(n), A056594(n))]`
-/

namespace A035754.P4865367285269321882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035712 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035754.P4865367285269321882

namespace A035754

/-- `record[lcm(A035712(n), A056594(n))]` -/
def P4865367285269321882.Spec : Prop :=
  ∀ n, (P4865367285269321882.a n : ℤ) = A035754 n

end A035754

/-! ## A035754.P2316664151089875839

`record[A035712(A029578(A004442(n)))]`
-/

namespace A035754.P2316664151089875839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035712 (A029578 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035754.P2316664151089875839

namespace A035754

/-- `record[A035712(A029578(A004442(n)))]` -/
def P2316664151089875839.Spec : Prop :=
  ∀ n, P2316664151089875839.a n = A035754 n

end A035754

/-!
# A035755: Coordination sequence for C_18 lattice.

The programs for A035755, the canonical program `A035755.P17301947102453587029` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035755 has offset 0).

The definition of A035755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035755.P17301947102453587029

`A035713(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035755

/-- `A035713(2*n)` -/
def P17301947102453587029.Spec : Prop :=
  ∀ n, P17301947102453587029.a n = A035755 n

theorem P17301947102453587029.correct : P17301947102453587029.Spec := by
  intro n
  simp only [A035755]

end A035755

/-! ## A035755.P14438931036292192396

`record[A035713(A014681(n))]`
-/

namespace A035755.P14438931036292192396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035755.P14438931036292192396

namespace A035755

/-- `record[A035713(A014681(n))]` -/
def P14438931036292192396.Spec : Prop :=
  ∀ n, P14438931036292192396.a n = A035755 n

end A035755

/-! ## A035755.P15174273213305739955

`record[A035713(A153733(n))]`
-/

namespace A035755.P15174273213305739955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035755.P15174273213305739955

namespace A035755

/-- `record[A035713(A153733(n))]` -/
def P15174273213305739955.Spec : Prop :=
  ∀ n, P15174273213305739955.a n = A035755 n

end A035755

/-! ## A035755.P8666082587072738540

`record[A035713(A237420(n))]`
-/

namespace A035755.P8666082587072738540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035755.P8666082587072738540

namespace A035755

/-- `record[A035713(A237420(n))]` -/
def P8666082587072738540.Spec : Prop :=
  ∀ n, P8666082587072738540.a n = A035755 n

end A035755

/-! ## A035755.P9035866016695346866

`record[A035713(A004526(A019425(n)))]`
-/

namespace A035755.P9035866016695346866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (A004526 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035755.P9035866016695346866

namespace A035755

/-- `record[A035713(A004526(A019425(n)))]` -/
def P9035866016695346866.Spec : Prop :=
  ∀ n, P9035866016695346866.a n = A035755 n

end A035755

/-!
# A035756: Coordination sequence for C_19 lattice.

The programs for A035756, the canonical program `A035756.P17779012192531417427` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035756 has offset 0).

The definition of A035756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035756.P17779012192531417427

`A035714(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035756

/-- `A035714(2*n)` -/
def P17779012192531417427.Spec : Prop :=
  ∀ n, P17779012192531417427.a n = A035756 n

theorem P17779012192531417427.correct : P17779012192531417427.Spec := by
  intro n
  simp only [A035756]

end A035756

/-! ## A035756.P12595408923884631514

`record[A035714(n)/A033999(n)]`
-/

namespace A035756.P12595408923884631514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035714 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035756.P12595408923884631514

namespace A035756

/-- `record[A035714(n)/A033999(n)]` -/
def P12595408923884631514.Spec : Prop :=
  ∀ n, P12595408923884631514.a n = (A035756 n : ℚ)

end A035756

/-! ## A035756.P16848320486228231075

`record[lcm(A035714(n), A056594(n))]`
-/

namespace A035756.P16848320486228231075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035714 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035756.P16848320486228231075

namespace A035756

/-- `record[lcm(A035714(n), A056594(n))]` -/
def P16848320486228231075.Spec : Prop :=
  ∀ n, (P16848320486228231075.a n : ℤ) = A035756 n

end A035756

/-! ## A035756.P12898302997372022180

`record[A035714(n)^(1-A010673(n))]`
-/

namespace A035756.P12898302997372022180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035714 n : ℚ) ^ (1 - A010673 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035756.P12898302997372022180

namespace A035756

/-- `record[A035714(n)^(1-A010673(n))]` -/
def P12898302997372022180.Spec : Prop :=
  ∀ n, P12898302997372022180.a n = (A035756 n : ℚ)

end A035756

/-! ## A035756.P8849286935614622834

`record[A035714(A053186(A038722(n+1)))]`
-/

namespace A035756.P8849286935614622834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035714 (A053186 (A038722 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035756.P8849286935614622834

namespace A035756

/-- `record[A035714(A053186(A038722(n+1)))]` -/
def P8849286935614622834.Spec : Prop :=
  ∀ n, P8849286935614622834.a n = A035756 n

end A035756

/-!
# A035757: Coordination sequence for C_20 lattice.

The programs for A035757, the canonical program `A035757.P14456028133830112634` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035757 has offset 0).

The definition of A035757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035757.P14456028133830112634

`A035715(2*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035757

/-- `A035715(2*n)` -/
def P14456028133830112634.Spec : Prop :=
  ∀ n, P14456028133830112634.a n = A035757 n

theorem P14456028133830112634.correct : P14456028133830112634.Spec := by
  intro n
  simp only [A035757]

end A035757

/-! ## A035757.P17763600634223697464

`record[A035715(n)/A033999(n)]`
-/

namespace A035757.P17763600634223697464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035715 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035757.P17763600634223697464

namespace A035757

/-- `record[A035715(n)/A033999(n)]` -/
def P17763600634223697464.Spec : Prop :=
  ∀ n, P17763600634223697464.a n = (A035757 n : ℚ)

end A035757

/-! ## A035757.P4499251177294748651

`A035715(A005843(n))^(A047842(n)%2)!`
-/

namespace A035757.P4499251177294748651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035715 (A005843 n).toNat ^ Nat.factorial (Int.tmod (A047842 n) 2).toNat

end

end A035757.P4499251177294748651

namespace A035757

/-- `A035715(A005843(n))^(A047842(n)%2)!` -/
def P4499251177294748651.Spec : Prop :=
  ∀ n, P4499251177294748651.a n = A035757 n

end A035757

/-! ## A035757.P11713448785456317591

`record[gcd(A007814(n+1), A035715(n))]`
-/

namespace A035757.P11713448785456317591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035715 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035757.P11713448785456317591

namespace A035757

/-- `record[gcd(A007814(n+1), A035715(n))]` -/
def P11713448785456317591.Spec : Prop :=
  ∀ n, (P11713448785456317591.a n : ℤ) = A035757 n

end A035757

/-!
# A035758: Coordination sequence for C_21 lattice.

The programs for A035758, the canonical program `A035758.P918832399889674702` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035758 has offset 0).

The definition of A035758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035758.P918832399889674702

`A035716(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035758

/-- `A035716(2*n)` -/
def P918832399889674702.Spec : Prop :=
  ∀ n, P918832399889674702.a n = A035758 n

theorem P918832399889674702.correct : P918832399889674702.Spec := by
  intro n
  simp only [A035758]

end A035758

/-! ## A035758.P9752604312164160747

`or(A000007(n), A035716(A005843(n)))`
-/

namespace A035758.P9752604312164160747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035716 (A005843 n).toNat)

end

end A035758.P9752604312164160747

namespace A035758

/-- `or(A000007(n), A035716(A005843(n)))` -/
def P9752604312164160747.Spec : Prop :=
  ∀ n, P9752604312164160747.a n = A035758 n

end A035758

/-! ## A035758.P13920777927720124482

`or(A035716(A005843(n)), A130706(n))`
-/

namespace A035758.P13920777927720124482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035716 (A005843 n).toNat) (A130706 n)

end

end A035758.P13920777927720124482

namespace A035758

/-- `or(A035716(A005843(n)), A130706(n))` -/
def P13920777927720124482.Spec : Prop :=
  ∀ n, P13920777927720124482.a n = A035758 n

end A035758

/-! ## A035758.P13252869977201033519

`A035716(A005843(n))/A000041(C(2, n+2))`
-/

namespace A035758.P13252869977201033519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035716 (A005843 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A035758.P13252869977201033519

namespace A035758

/-- `A035716(A005843(n))/A000041(C(2, n+2))` -/
def P13252869977201033519.Spec : Prop :=
  ∀ n, P13252869977201033519.a n = (A035758 n : ℚ)

end A035758

/-! ## A035758.P18206123711839445075

`record[lcm(A035716(n), A056594(n))]`
-/

namespace A035758.P18206123711839445075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035716 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035758.P18206123711839445075

namespace A035758

/-- `record[lcm(A035716(n), A056594(n))]` -/
def P18206123711839445075.Spec : Prop :=
  ∀ n, (P18206123711839445075.a n : ℤ) = A035758 n

end A035758

/-! ## A035758.P6004126416370477838

`A035716(A005843(n))/A007318(∑[n])`
-/

namespace A035758.P6004126416370477838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035716 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A035758.P6004126416370477838

namespace A035758

/-- `A035716(A005843(n))/A007318(∑[n])` -/
def P6004126416370477838.Spec : Prop :=
  ∀ n, P6004126416370477838.a n = (A035758 n : ℚ)

end A035758

/-! ## A035758.P11868195679685313035

`lcm(A035716(A005843(n)), A174314(n))`
-/

namespace A035758.P11868195679685313035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035716 (A005843 n).toNat) (A174314 n)

end

end A035758.P11868195679685313035

namespace A035758

/-- `lcm(A035716(A005843(n)), A174314(n))` -/
def P11868195679685313035.Spec : Prop :=
  ∀ n, (P11868195679685313035.a n : ℤ) = A035758 n

end A035758

/-!
# A035759: Coordination sequence for C_22 lattice.

The programs for A035759, the canonical program `A035759.P11254806603374259122` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035759 has offset 0).

The definition of A035759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035759.P11254806603374259122

`A035717(2*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035759

/-- `A035717(2*n)` -/
def P11254806603374259122.Spec : Prop :=
  ∀ n, P11254806603374259122.a n = A035759 n

theorem P11254806603374259122.correct : P11254806603374259122.Spec := by
  intro n
  simp only [A035759]

end A035759

/-! ## A035759.P1342654234739287882

`record[A035717(n)/A033999(n)]`
-/

namespace A035759.P1342654234739287882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035717 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035759.P1342654234739287882

namespace A035759

/-- `record[A035717(n)/A033999(n)]` -/
def P1342654234739287882.Spec : Prop :=
  ∀ n, P1342654234739287882.a n = (A035759 n : ℚ)

end A035759

/-! ## A035759.P12434524195296689934

`lcm(A033999(n), A035717(A005843(n)))`
-/

namespace A035759.P12434524195296689934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A035717 (A005843 n).toNat)

end

end A035759.P12434524195296689934

namespace A035759

/-- `lcm(A033999(n), A035717(A005843(n)))` -/
def P12434524195296689934.Spec : Prop :=
  ∀ n, (P12434524195296689934.a n : ℤ) = A035759 n

end A035759

/-! ## A035759.P3535713797505427687

`A035717(A005843(n))/A000010(ceil(2/(n+1)))`
-/

namespace A035759.P3535713797505427687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035717 (A005843 n).toNat : ℚ) / (A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A035759.P3535713797505427687

namespace A035759

/-- `A035717(A005843(n))/A000010(ceil(2/(n+1)))` -/
def P3535713797505427687.Spec : Prop :=
  ∀ n, P3535713797505427687.a n = (A035759 n : ℚ)

end A035759

/-! ## A035759.P466140758782968116

`A035717(A005843(n))/A000045(ceil(2/(n+1)))`
-/

namespace A035759.P466140758782968116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035717 (A005843 n).toNat : ℚ) / (A000045 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A035759.P466140758782968116

namespace A035759

/-- `A035717(A005843(n))/A000045(ceil(2/(n+1)))` -/
def P466140758782968116.Spec : Prop :=
  ∀ n, P466140758782968116.a n = (A035759 n : ℚ)

end A035759

/-!
# A035760: Coordination sequence for C_23 lattice.

The programs for A035760, the canonical program `A035760.P18332467969710151844` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035760 has offset 0).

The definition of A035760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035760.P18332467969710151844

`A035718(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035760

/-- `A035718(2*n)` -/
def P18332467969710151844.Spec : Prop :=
  ∀ n, P18332467969710151844.a n = A035760 n

theorem P18332467969710151844.correct : P18332467969710151844.Spec := by
  intro n
  simp only [A035760]

end A035760

/-! ## A035760.P2856664961968859969

`record[A035718(A230641(n))]`
-/

namespace A035760.P2856664961968859969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035718 (A230641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035760.P2856664961968859969

namespace A035760

/-- `record[A035718(A230641(n))]` -/
def P2856664961968859969.Spec : Prop :=
  ∀ n, P2856664961968859969.a n = A035760 n

end A035760

/-! ## A035760.P3066395122630531443

`record[A035718(n)/A033999(n)]`
-/

namespace A035760.P3066395122630531443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035718 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035760.P3066395122630531443

namespace A035760

/-- `record[A035718(n)/A033999(n)]` -/
def P3066395122630531443.Spec : Prop :=
  ∀ n, P3066395122630531443.a n = (A035760 n : ℚ)

end A035760

/-! ## A035760.P2342449501074282907

`record[A035718(n-A007814(n+1))]`
-/

namespace A035760.P2342449501074282907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035718 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035760.P2342449501074282907

namespace A035760

/-- `record[A035718(n-A007814(n+1))]` -/
def P2342449501074282907.Spec : Prop :=
  ∀ n, P2342449501074282907.a n = A035760 n

end A035760

/-! ## A035760.P15160048052350905286

`record[gcd(A007814(n+1), A035718(n))]`
-/

namespace A035760.P15160048052350905286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035718 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035760.P15160048052350905286

namespace A035760

/-- `record[gcd(A007814(n+1), A035718(n))]` -/
def P15160048052350905286.Spec : Prop :=
  ∀ n, (P15160048052350905286.a n : ℤ) = A035760 n

end A035760

/-!
# A035761: Coordination sequence for C_24 lattice.

The programs for A035761, the canonical program `A035761.P16161289228915293443` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035761 has offset 0).

The definition of A035761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035761.P16161289228915293443

`A035719(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035761

/-- `A035719(2*n)` -/
def P16161289228915293443.Spec : Prop :=
  ∀ n, P16161289228915293443.a n = A035761 n

theorem P16161289228915293443.correct : P16161289228915293443.Spec := by
  intro n
  simp only [A035761]

end A035761

/-! ## A035761.P6721560850998692242

`record[A035719(A014681(n))]`
-/

namespace A035761.P6721560850998692242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035719 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035761.P6721560850998692242

namespace A035761

/-- `record[A035719(A014681(n))]` -/
def P6721560850998692242.Spec : Prop :=
  ∀ n, P6721560850998692242.a n = A035761 n

end A035761

/-! ## A035761.P2443176986474044500

`record[A035719(n)/A033999(n)]`
-/

namespace A035761.P2443176986474044500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035719 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035761.P2443176986474044500

namespace A035761

/-- `record[A035719(n)/A033999(n)]` -/
def P2443176986474044500.Spec : Prop :=
  ∀ n, P2443176986474044500.a n = (A035761 n : ℚ)

end A035761

/-! ## A035761.P16852604835154740090

`record[gcd(A007814(n+1), A035719(n))]`
-/

namespace A035761.P16852604835154740090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035719 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035761.P16852604835154740090

namespace A035761

/-- `record[gcd(A007814(n+1), A035719(n))]` -/
def P16852604835154740090.Spec : Prop :=
  ∀ n, (P16852604835154740090.a n : ℤ) = A035761 n

end A035761

/-! ## A035761.P14130043615112403607

`record[and(A033999(n+1), A035719(n))]`
-/

namespace A035761.P14130043615112403607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (n + 1)) (A035719 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035761.P14130043615112403607

namespace A035761

/-- `record[and(A033999(n+1), A035719(n))]` -/
def P14130043615112403607.Spec : Prop :=
  ∀ n, P14130043615112403607.a n = A035761 n

end A035761

/-!
# A035762: Coordination sequence for C_25 lattice.

The programs for A035762, the canonical program `A035762.P6827177797753924345` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035762 has offset 0).

The definition of A035762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035762.P6827177797753924345

`A035720(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035762

/-- `A035720(2*n)` -/
def P6827177797753924345.Spec : Prop :=
  ∀ n, P6827177797753924345.a n = A035762 n

theorem P6827177797753924345.correct : P6827177797753924345.Spec := by
  intro n
  simp only [A035762]

end A035762

/-! ## A035762.P3346371084271175748

`record[A035720(n)/A033999(n)]`
-/

namespace A035762.P3346371084271175748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035720 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035762.P3346371084271175748

namespace A035762

/-- `record[A035720(n)/A033999(n)]` -/
def P3346371084271175748.Spec : Prop :=
  ∀ n, P3346371084271175748.a n = (A035762 n : ℚ)

end A035762

/-! ## A035762.P14287429726214395267

`lcm(A000034(n), A035720(A005843(n)))`
-/

namespace A035762.P14287429726214395267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A035720 (A005843 n).toNat)

end

end A035762.P14287429726214395267

namespace A035762

/-- `lcm(A000034(n), A035720(A005843(n)))` -/
def P14287429726214395267.Spec : Prop :=
  ∀ n, (P14287429726214395267.a n : ℤ) = A035762 n

end A035762

/-! ## A035762.P8407582220073344326

`or(A000007(n), A035720(A005843(n)))`
-/

namespace A035762.P8407582220073344326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035720 (A005843 n).toNat)

end

end A035762.P8407582220073344326

namespace A035762

/-- `or(A000007(n), A035720(A005843(n)))` -/
def P8407582220073344326.Spec : Prop :=
  ∀ n, P8407582220073344326.a n = A035762 n

end A035762

/-! ## A035762.P4066096201689336243

`record[A035720(A237420(n))]`
-/

namespace A035762.P4066096201689336243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035720 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035762.P4066096201689336243

namespace A035762

/-- `record[A035720(A237420(n))]` -/
def P4066096201689336243.Spec : Prop :=
  ∀ n, P4066096201689336243.a n = A035762 n

end A035762

/-! ## A035762.P17343540215516168653

`record[A035720(A276093(n))]`
-/

namespace A035762.P17343540215516168653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035720 (A276093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035762.P17343540215516168653

namespace A035762

/-- `record[A035720(A276093(n))]` -/
def P17343540215516168653.Spec : Prop :=
  ∀ n, P17343540215516168653.a n = A035762 n

end A035762

/-! ## A035762.P2319347883736180200

`record[gcd(A007814(n+1), A035720(n))]`
-/

namespace A035762.P2319347883736180200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035720 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035762.P2319347883736180200

namespace A035762

/-- `record[gcd(A007814(n+1), A035720(n))]` -/
def P2319347883736180200.Spec : Prop :=
  ∀ n, (P2319347883736180200.a n : ℤ) = A035762 n

end A035762

/-!
# A035763: Coordination sequence for C_26 lattice.

The programs for A035763, the canonical program `A035763.P8579594105794458103` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035763 has offset 0).

The definition of A035763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035763.P8579594105794458103

`A035721(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035763

/-- `A035721(2*n)` -/
def P8579594105794458103.Spec : Prop :=
  ∀ n, P8579594105794458103.a n = A035763 n

theorem P8579594105794458103.correct : P8579594105794458103.Spec := by
  intro n
  simp only [A035763]

end A035763

/-! ## A035763.P14010607433294894421

`record[A035721(n)/A033999(n)]`
-/

namespace A035763.P14010607433294894421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035721 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035763.P14010607433294894421

namespace A035763

/-- `record[A035721(n)/A033999(n)]` -/
def P14010607433294894421.Spec : Prop :=
  ∀ n, P14010607433294894421.a n = (A035763 n : ℚ)

end A035763

/-! ## A035763.P14320805123782438451

`or(A000007(n), A035721(A005843(n)))`
-/

namespace A035763.P14320805123782438451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035721 (A005843 n).toNat)

end

end A035763.P14320805123782438451

namespace A035763

/-- `or(A000007(n), A035721(A005843(n)))` -/
def P14320805123782438451.Spec : Prop :=
  ∀ n, P14320805123782438451.a n = A035763 n

end A035763

/-! ## A035763.P17362725211124694945

`record[A035721(A065423(n+1))]`
-/

namespace A035763.P17362725211124694945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035721 (A065423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035763.P17362725211124694945

namespace A035763

/-- `record[A035721(A065423(n+1))]` -/
def P17362725211124694945.Spec : Prop :=
  ∀ n, P17362725211124694945.a n = A035763 n

end A035763

/-! ## A035763.P8494663923521267825

`record[gcd(A007814(n+1), A035721(n))]`
-/

namespace A035763.P8494663923521267825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035721 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035763.P8494663923521267825

namespace A035763

/-- `record[gcd(A007814(n+1), A035721(n))]` -/
def P8494663923521267825.Spec : Prop :=
  ∀ n, (P8494663923521267825.a n : ℤ) = A035763 n

end A035763

/-!
# A035764: Coordination sequence for C_27 lattice.

The programs for A035764, the canonical program `A035764.P1934732260014623711` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035764 has offset 0).

The definition of A035764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035764.P1934732260014623711

`A035722(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035764

/-- `A035722(2*n)` -/
def P1934732260014623711.Spec : Prop :=
  ∀ n, P1934732260014623711.a n = A035764 n

theorem P1934732260014623711.correct : P1934732260014623711.Spec := by
  intro n
  simp only [A035764]

end A035764

/-! ## A035764.P5168736762800431481

`record[A035722(A014681(n))]`
-/

namespace A035764.P5168736762800431481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035722 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035764.P5168736762800431481

namespace A035764

/-- `record[A035722(A014681(n))]` -/
def P5168736762800431481.Spec : Prop :=
  ∀ n, P5168736762800431481.a n = A035764 n

end A035764

/-! ## A035764.P8199594475933534931

`record[A035722(n)/A033999(n)]`
-/

namespace A035764.P8199594475933534931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035722 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035764.P8199594475933534931

namespace A035764

/-- `record[A035722(n)/A033999(n)]` -/
def P8199594475933534931.Spec : Prop :=
  ∀ n, P8199594475933534931.a n = (A035764 n : ℚ)

end A035764

/-! ## A035764.P6573063282353637845

`record[gcd(A007814(n+1), A035722(n))]`
-/

namespace A035764.P6573063282353637845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035722 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035764.P6573063282353637845

namespace A035764

/-- `record[gcd(A007814(n+1), A035722(n))]` -/
def P6573063282353637845.Spec : Prop :=
  ∀ n, (P6573063282353637845.a n : ℤ) = A035764 n

end A035764

/-! ## A035764.P10497270898071058787

`record[A035722(A093803(n+1)-1)]`
-/

namespace A035764.P10497270898071058787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035722 (A093803 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035764.P10497270898071058787

namespace A035764

/-- `record[A035722(A093803(n+1)-1)]` -/
def P10497270898071058787.Spec : Prop :=
  ∀ n, P10497270898071058787.a n = A035764 n

end A035764

/-! ## A035764.P16787388222373057595

`record[A035722(xor(1, A093803(n+1)))]`
-/

namespace A035764.P16787388222373057595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035722 (Int.xor 1 (A093803 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035764.P16787388222373057595

namespace A035764

/-- `record[A035722(xor(1, A093803(n+1)))]` -/
def P16787388222373057595.Spec : Prop :=
  ∀ n, P16787388222373057595.a n = A035764 n

end A035764

/-! ## A035764.P17810505167174572846

`record[A035722(A091453(n))]`
-/

namespace A035764.P17810505167174572846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035722 (A091453 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035764.P17810505167174572846

namespace A035764

/-- `record[A035722(A091453(n))]` -/
def P17810505167174572846.Spec : Prop :=
  ∀ n, P17810505167174572846.a n = A035764 n

end A035764

/-!
# A035765: Coordination sequence for C_28 lattice.

The programs for A035765, the canonical program `A035765.P14421996176404588701` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035765 has offset 0).

The definition of A035765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035765.P14421996176404588701

`A035723(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035765

/-- `A035723(2*n)` -/
def P14421996176404588701.Spec : Prop :=
  ∀ n, P14421996176404588701.a n = A035765 n

theorem P14421996176404588701.correct : P14421996176404588701.Spec := by
  intro n
  simp only [A035765]

end A035765

/-! ## A035765.P13081882555863120901

`record[A035723(A014681(n))]`
-/

namespace A035765.P13081882555863120901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035723 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035765.P13081882555863120901

namespace A035765

/-- `record[A035723(A014681(n))]` -/
def P13081882555863120901.Spec : Prop :=
  ∀ n, P13081882555863120901.a n = A035765 n

end A035765

/-! ## A035765.P9150739799883581723

`record[A035723(n)/A033999(n)]`
-/

namespace A035765.P9150739799883581723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035723 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035765.P9150739799883581723

namespace A035765

/-- `record[A035723(n)/A033999(n)]` -/
def P9150739799883581723.Spec : Prop :=
  ∀ n, P9150739799883581723.a n = (A035765 n : ℚ)

end A035765

/-! ## A035765.P9899551865899936331

`record[A035723(A237420(n))]`
-/

namespace A035765.P9899551865899936331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035723 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035765.P9899551865899936331

namespace A035765

/-- `record[A035723(A237420(n))]` -/
def P9899551865899936331.Spec : Prop :=
  ∀ n, P9899551865899936331.a n = A035765 n

end A035765

/-! ## A035765.P16771116366992975204

`record[and(A035723(n), A105812(n))]`
-/

namespace A035765.P16771116366992975204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035723 n) (A105812 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035765.P16771116366992975204

namespace A035765

/-- `record[and(A035723(n), A105812(n))]` -/
def P16771116366992975204.Spec : Prop :=
  ∀ n, P16771116366992975204.a n = A035765 n

end A035765

/-! ## A035765.P4154479840682524584

`record[gcd(A035723(n), A183063(n+1))]`
-/

namespace A035765.P4154479840682524584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035723 n) (A183063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035765.P4154479840682524584

namespace A035765

/-- `record[gcd(A035723(n), A183063(n+1))]` -/
def P4154479840682524584.Spec : Prop :=
  ∀ n, (P4154479840682524584.a n : ℤ) = A035765 n

end A035765

/-!
# A035766: Coordination sequence for C_29 lattice.

The programs for A035766, the canonical program `A035766.P4903701500395149219` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035766 has offset 0).

The definition of A035766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035766.P4903701500395149219

`A035724(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035766

/-- `A035724(2*n)` -/
def P4903701500395149219.Spec : Prop :=
  ∀ n, P4903701500395149219.a n = A035766 n

theorem P4903701500395149219.correct : P4903701500395149219.Spec := by
  intro n
  simp only [A035766]

end A035766

/-! ## A035766.P10938686217292526410

`record[A035724(A014681(n))]`
-/

namespace A035766.P10938686217292526410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035724 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035766.P10938686217292526410

namespace A035766

/-- `record[A035724(A014681(n))]` -/
def P10938686217292526410.Spec : Prop :=
  ∀ n, P10938686217292526410.a n = A035766 n

end A035766

/-! ## A035766.P13093729376115701239

`record[A035724(n)/A033999(n)]`
-/

namespace A035766.P13093729376115701239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035724 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035766.P13093729376115701239

namespace A035766

/-- `record[A035724(n)/A033999(n)]` -/
def P13093729376115701239.Spec : Prop :=
  ∀ n, P13093729376115701239.a n = (A035766 n : ℚ)

end A035766

/-! ## A035766.P17570307435738802496

`or(A000007(n), A035724(A005843(n)))`
-/

namespace A035766.P17570307435738802496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035724 (A005843 n).toNat)

end

end A035766.P17570307435738802496

namespace A035766

/-- `or(A000007(n), A035724(A005843(n)))` -/
def P17570307435738802496.Spec : Prop :=
  ∀ n, P17570307435738802496.a n = A035766 n

end A035766

/-! ## A035766.P11030491960445992064

`A035724(A005843(n))^sqrt(A054977(n))`
-/

namespace A035766.P11030491960445992064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035724 (A005843 n).toNat : ℝ) ^ (Real.sqrt (A054977 n : ℝ))

end

end A035766.P11030491960445992064

namespace A035766

/-- `A035724(A005843(n))^sqrt(A054977(n))` -/
def P11030491960445992064.Spec : Prop :=
  ∀ n, P11030491960445992064.a n = (A035766 n : ℝ)

end A035766

/-! ## A035766.P5825806785877373624

`A035724(A005843(n))/A000041(C(2, n+2))`
-/

namespace A035766.P5825806785877373624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035724 (A005843 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A035766.P5825806785877373624

namespace A035766

/-- `A035724(A005843(n))/A000041(C(2, n+2))` -/
def P5825806785877373624.Spec : Prop :=
  ∀ n, P5825806785877373624.a n = (A035766 n : ℚ)

end A035766

/-! ## A035766.P9846667586072886346

`A035724(A005843(n))^A007318(gcd(n, n+1))`
-/

namespace A035766.P9846667586072886346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035724 (A005843 n).toNat : ℚ) ^ (A007318 (Nat.gcd n (n + 1)) : ℤ)

end

end A035766.P9846667586072886346

namespace A035766

/-- `A035724(A005843(n))^A007318(gcd(n, n+1))` -/
def P9846667586072886346.Spec : Prop :=
  ∀ n, P9846667586072886346.a n = (A035766 n : ℚ)

end A035766

/-! ## A035766.P7651037097236418982

`A035724(A005843(n))/A007318(∑[n])`
-/

namespace A035766.P7651037097236418982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035724 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A035766.P7651037097236418982

namespace A035766

/-- `A035724(A005843(n))/A007318(∑[n])` -/
def P7651037097236418982.Spec : Prop :=
  ∀ n, P7651037097236418982.a n = (A035766 n : ℚ)

end A035766

/-!
# A035767: Coordination sequence for C_30 lattice.

The programs for A035767, the canonical program `A035767.P14336921547845258511` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035767 has offset 0).

The definition of A035767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035767.P14336921547845258511

`A035725(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035767

/-- `A035725(2*n)` -/
def P14336921547845258511.Spec : Prop :=
  ∀ n, P14336921547845258511.a n = A035767 n

theorem P14336921547845258511.correct : P14336921547845258511.Spec := by
  intro n
  simp only [A035767]

end A035767

/-! ## A035767.P3840680958515128672

`record[A035725(A014681(n))]`
-/

namespace A035767.P3840680958515128672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P3840680958515128672

namespace A035767

/-- `record[A035725(A014681(n))]` -/
def P3840680958515128672.Spec : Prop :=
  ∀ n, P3840680958515128672.a n = A035767 n

end A035767

/-! ## A035767.P807086815326625559

`record[A035725(A046666(n+2))]`
-/

namespace A035767.P807086815326625559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (A046666 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P807086815326625559

namespace A035767

/-- `record[A035725(A046666(n+2))]` -/
def P807086815326625559.Spec : Prop :=
  ∀ n, P807086815326625559.a n = A035767 n

end A035767

/-! ## A035767.P14650076665551423212

`record[A035725(n)/A033999(n)]`
-/

namespace A035767.P14650076665551423212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035725 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P14650076665551423212

namespace A035767

/-- `record[A035725(n)/A033999(n)]` -/
def P14650076665551423212.Spec : Prop :=
  ∀ n, P14650076665551423212.a n = (A035767 n : ℚ)

end A035767

/-! ## A035767.P1866172680187287907

`record[A035725(A026741(n)+A000035(n))]`
-/

namespace A035767.P1866172680187287907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (A026741 n + A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P1866172680187287907

namespace A035767

/-- `record[A035725(A026741(n)+A000035(n))]` -/
def P1866172680187287907.Spec : Prop :=
  ∀ n, P1866172680187287907.a n = A035767 n

end A035767

/-! ## A035767.P1236174120624223130

`record[A035725(lcm(n, A056594(n)))]`
-/

namespace A035767.P1236174120624223130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P1236174120624223130

namespace A035767

/-- `record[A035725(lcm(n, A056594(n)))]` -/
def P1236174120624223130.Spec : Prop :=
  ∀ n, P1236174120624223130.a n = A035767 n

end A035767

/-! ## A035767.P13813608108963087387

`record[A035725(A026741(n+1)-1)]`
-/

namespace A035767.P13813608108963087387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (A026741 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P13813608108963087387

namespace A035767

/-- `record[A035725(A026741(n+1)-1)]` -/
def P13813608108963087387.Spec : Prop :=
  ∀ n, P13813608108963087387.a n = A035767 n

end A035767

/-! ## A035767.P18439786125112565578

`record[gcd(A007814(n+1), A035725(n))]`
-/

namespace A035767.P18439786125112565578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035725 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035767.P18439786125112565578

namespace A035767

/-- `record[gcd(A007814(n+1), A035725(n))]` -/
def P18439786125112565578.Spec : Prop :=
  ∀ n, (P18439786125112565578.a n : ℤ) = A035767 n

end A035767

/-!
# A035768: Coordination sequence for C_31 lattice.

The programs for A035768, the canonical program `A035768.P14573455193302129756` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035768 has offset 0).

The definition of A035768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035768.P14573455193302129756

`A035726(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035768

/-- `A035726(2*n)` -/
def P14573455193302129756.Spec : Prop :=
  ∀ n, P14573455193302129756.a n = A035768 n

theorem P14573455193302129756.correct : P14573455193302129756.Spec := by
  intro n
  simp only [A035768]

end A035768

/-! ## A035768.P11455637259387147463

`record[A035726(A014681(n))]`
-/

namespace A035768.P11455637259387147463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035726 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035768.P11455637259387147463

namespace A035768

/-- `record[A035726(A014681(n))]` -/
def P11455637259387147463.Spec : Prop :=
  ∀ n, P11455637259387147463.a n = A035768 n

end A035768

/-! ## A035768.P1418648866850818415

`record[A035726(n)/A033999(n)]`
-/

namespace A035768.P1418648866850818415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035726 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035768.P1418648866850818415

namespace A035768

/-- `record[A035726(n)/A033999(n)]` -/
def P1418648866850818415.Spec : Prop :=
  ∀ n, P1418648866850818415.a n = (A035768 n : ℚ)

end A035768

/-! ## A035768.P15911901139806703794

`gcd(C(2, n+2), A035726(A005843(n)))`
-/

namespace A035768.P15911901139806703794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A035726 (A005843 n).toNat)

end

end A035768.P15911901139806703794

namespace A035768

/-- `gcd(C(2, n+2), A035726(A005843(n)))` -/
def P15911901139806703794.Spec : Prop :=
  ∀ n, (P15911901139806703794.a n : ℤ) = A035768 n

end A035768

/-! ## A035768.P16168648005104627003

`or(A000007(n), A035726(A005843(n)))`
-/

namespace A035768.P16168648005104627003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035726 (A005843 n).toNat)

end

end A035768.P16168648005104627003

namespace A035768

/-- `or(A000007(n), A035726(A005843(n)))` -/
def P16168648005104627003.Spec : Prop :=
  ∀ n, P16168648005104627003.a n = A035768 n

end A035768

/-!
# A035769: Coordination sequence for C_32 lattice.

The programs for A035769, there is no canonical definition to state claims against.
-/

/-! ## A035769.P5109967346019750825

`A035727(2*n)`
-/

namespace A035769.P5109967346019750825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035727 (2 * n)

end

end A035769.P5109967346019750825

/-! ## A035769.P12799556304222084102

`record[A035727(A014681(n))]`
-/

namespace A035769.P12799556304222084102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035727 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035769.P12799556304222084102

/-! ## A035769.P6098858946696332618

`record[A035727(n)/A033999(n)]`
-/

namespace A035769.P6098858946696332618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035727 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035769.P6098858946696332618

/-! ## A035769.P12702636950978875329

`record[gcd(A007814(n+1), A035727(n))]`
-/

namespace A035769.P12702636950978875329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035727 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035769.P12702636950978875329

/-! ## A035769.P18433593178798691060

`record[gcd(A035727(n), A097331(n))]`
-/

namespace A035769.P18433593178798691060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035727 n) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035769.P18433593178798691060

/-!
# A035770: Coordination sequence for C_33 lattice.

The programs for A035770, the canonical program `A035770.P16356936723901136099` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035770 has offset 0).

The definition of A035770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035770.P16356936723901136099

`A035728(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035770

/-- `A035728(2*n)` -/
def P16356936723901136099.Spec : Prop :=
  ∀ n, P16356936723901136099.a n = A035770 n

theorem P16356936723901136099.correct : P16356936723901136099.Spec := by
  intro n
  simp only [A035770]

end A035770

/-! ## A035770.P9624510601638105122

`record[A035728(A014681(n))]`
-/

namespace A035770.P9624510601638105122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035728 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035770.P9624510601638105122

namespace A035770

/-- `record[A035728(A014681(n))]` -/
def P9624510601638105122.Spec : Prop :=
  ∀ n, P9624510601638105122.a n = A035770 n

end A035770

/-! ## A035770.P11687786545203044542

`record[A035728(n)/A033999(n)]`
-/

namespace A035770.P11687786545203044542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035728 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035770.P11687786545203044542

namespace A035770

/-- `record[A035728(n)/A033999(n)]` -/
def P11687786545203044542.Spec : Prop :=
  ∀ n, P11687786545203044542.a n = (A035770 n : ℚ)

end A035770

/-! ## A035770.P357811276403861486

`record[or(A035728(n), A280560(n))]`
-/

namespace A035770.P357811276403861486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035728 n) (A280560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035770.P357811276403861486

namespace A035770

/-- `record[or(A035728(n), A280560(n))]` -/
def P357811276403861486.Spec : Prop :=
  ∀ n, P357811276403861486.a n = A035770 n

end A035770

/-! ## A035770.P13364016135622396148

`record[gcd(A009006(n), A035728(n))]`
-/

namespace A035770.P13364016135622396148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009006 n) (A035728 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035770.P13364016135622396148

namespace A035770

/-- `record[gcd(A009006(n), A035728(n))]` -/
def P13364016135622396148.Spec : Prop :=
  ∀ n, (P13364016135622396148.a n : ℤ) = A035770 n

end A035770

/-!
# A035771: Coordination sequence for C_34 lattice.

The programs for A035771, the canonical program `A035771.P4108631056450841646` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035771 has offset 0).

The definition of A035771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035771.P4108631056450841646

`A035729(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035771

/-- `A035729(2*n)` -/
def P4108631056450841646.Spec : Prop :=
  ∀ n, P4108631056450841646.a n = A035771 n

theorem P4108631056450841646.correct : P4108631056450841646.Spec := by
  intro n
  simp only [A035771]

end A035771

/-! ## A035771.P14031737238503745565

`record[A035729(A014681(n))]`
-/

namespace A035771.P14031737238503745565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035771.P14031737238503745565

namespace A035771

/-- `record[A035729(A014681(n))]` -/
def P14031737238503745565.Spec : Prop :=
  ∀ n, P14031737238503745565.a n = A035771 n

end A035771

/-! ## A035771.P4385240555581336437

`record[A035729(A237420(n))]`
-/

namespace A035771.P4385240555581336437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035771.P4385240555581336437

namespace A035771

/-- `record[A035729(A237420(n))]` -/
def P4385240555581336437.Spec : Prop :=
  ∀ n, P4385240555581336437.a n = A035771 n

end A035771

/-! ## A035771.P13306694245543854235

`record[A035729(n)^A033999(n)]`
-/

namespace A035771.P13306694245543854235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035729 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035771.P13306694245543854235

namespace A035771

/-- `record[A035729(n)^A033999(n)]` -/
def P13306694245543854235.Spec : Prop :=
  ∀ n, P13306694245543854235.a n = (A035771 n : ℚ)

end A035771

/-! ## A035771.P17649210738105806040

`record[and(A035729(n), A105812(n))]`
-/

namespace A035771.P17649210738105806040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035729 n) (A105812 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035771.P17649210738105806040

namespace A035771

/-- `record[and(A035729(n), A105812(n))]` -/
def P17649210738105806040.Spec : Prop :=
  ∀ n, P17649210738105806040.a n = A035771 n

end A035771

/-! ## A035771.P17491384269515679194

`record[A035729(A018838(n))]`
-/

namespace A035771.P17491384269515679194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035771.P17491384269515679194

namespace A035771

/-- `record[A035729(A018838(n))]` -/
def P17491384269515679194.Spec : Prop :=
  ∀ n, P17491384269515679194.a n = A035771 n

end A035771

/-!
# A035772: Coordination sequence for C_35 lattice.

The programs for A035772, the canonical program `A035772.P15203243405529877436` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035772 has offset 0).

The definition of A035772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2896 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035772.P15203243405529877436

`A035730(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035772

/-- `A035730(2*n)` -/
def P15203243405529877436.Spec : Prop :=
  ∀ n, P15203243405529877436.a n = A035772 n

theorem P15203243405529877436.correct : P15203243405529877436.Spec := by
  intro n
  simp only [A035772]

end A035772

/-! ## A035772.P1298464322268057670

`record[A035730(A014681(n))]`
-/

namespace A035772.P1298464322268057670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035730 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035772.P1298464322268057670

namespace A035772

/-- `record[A035730(A014681(n))]` -/
def P1298464322268057670.Spec : Prop :=
  ∀ n, P1298464322268057670.a n = A035772 n

end A035772

/-! ## A035772.P9460496332477989934

`record[A035730(n)/A033999(n)]`
-/

namespace A035772.P9460496332477989934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035730 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035772.P9460496332477989934

namespace A035772

/-- `record[A035730(n)/A033999(n)]` -/
def P9460496332477989934.Spec : Prop :=
  ∀ n, P9460496332477989934.a n = (A035772 n : ℚ)

end A035772

/-! ## A035772.P12680457475942096425

`record[or(A035730(n), A280560(n))]`
-/

namespace A035772.P12680457475942096425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035730 n) (A280560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035772.P12680457475942096425

namespace A035772

/-- `record[or(A035730(n), A280560(n))]` -/
def P12680457475942096425.Spec : Prop :=
  ∀ n, P12680457475942096425.a n = A035772 n

end A035772

/-! ## A035772.P17580601197900460255

`lcm(A000034(n), A035730(A005843(n)))`
-/

namespace A035772.P17580601197900460255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A035730 (A005843 n).toNat)

end

end A035772.P17580601197900460255

namespace A035772

/-- `lcm(A000034(n), A035730(A005843(n)))` -/
def P17580601197900460255.Spec : Prop :=
  ∀ n, (P17580601197900460255.a n : ℤ) = A035772 n

end A035772

/-! ## A035772.P1869250136165553844

`record[gcd(A035730(n), A138364(n))]`
-/

namespace A035772.P1869250136165553844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035730 n) (A138364 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035772.P1869250136165553844

namespace A035772

/-- `record[gcd(A035730(n), A138364(n))]` -/
def P1869250136165553844.Spec : Prop :=
  ∀ n, (P1869250136165553844.a n : ℤ) = A035772 n

end A035772

/-!
# A035773: Coordination sequence for C_36 lattice.

The programs for A035773, the canonical program `A035773.P16451583216531439100` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035773 has offset 0).

The definition of A035773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035773.P16451583216531439100

`A035731(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035773

/-- `A035731(2*n)` -/
def P16451583216531439100.Spec : Prop :=
  ∀ n, P16451583216531439100.a n = A035773 n

theorem P16451583216531439100.correct : P16451583216531439100.Spec := by
  intro n
  simp only [A035773]

end A035773

/-! ## A035773.P12199151320962172633

`record[A035731(and(n, n+1))]`
-/

namespace A035773.P12199151320962172633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035731 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035773.P12199151320962172633

namespace A035773

/-- `record[A035731(and(n, n+1))]` -/
def P12199151320962172633.Spec : Prop :=
  ∀ n, P12199151320962172633.a n = A035773 n

end A035773

/-! ## A035773.P16097872940988532619

`record[A035731(A014681(n))]`
-/

namespace A035773.P16097872940988532619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035731 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035773.P16097872940988532619

namespace A035773

/-- `record[A035731(A014681(n))]` -/
def P16097872940988532619.Spec : Prop :=
  ∀ n, P16097872940988532619.a n = A035773 n

end A035773

/-! ## A035773.P12677380289906219417

`record[A035731(n)/A033999(n)]`
-/

namespace A035773.P12677380289906219417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035731 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035773.P12677380289906219417

namespace A035773

/-- `record[A035731(n)/A033999(n)]` -/
def P12677380289906219417.Spec : Prop :=
  ∀ n, P12677380289906219417.a n = (A035773 n : ℚ)

end A035773

/-! ## A035773.P16168873011006228701

`record[A035894(A001222(n+1))]`
-/

namespace A035773.P16168873011006228701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035894 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035773.P16168873011006228701

namespace A035773

/-- `record[A035894(A001222(n+1))]` -/
def P16168873011006228701.Spec : Prop :=
  ∀ n, P16168873011006228701.a n = A035773 n

end A035773

/-!
# A035774: Coordination sequence for C_37 lattice.

The programs for A035774, the canonical program `A035774.P5127492517742638998` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035774 has offset 0).

The definition of A035774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035774.P5127492517742638998

`A035732(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035774

/-- `A035732(2*n)` -/
def P5127492517742638998.Spec : Prop :=
  ∀ n, P5127492517742638998.a n = A035774 n

theorem P5127492517742638998.correct : P5127492517742638998.Spec := by
  intro n
  simp only [A035774]

end A035774

/-! ## A035774.P7267412563941099974

`record[A035732(A014681(n))]`
-/

namespace A035774.P7267412563941099974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035732 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035774.P7267412563941099974

namespace A035774

/-- `record[A035732(A014681(n))]` -/
def P7267412563941099974.Spec : Prop :=
  ∀ n, P7267412563941099974.a n = A035774 n

end A035774

/-! ## A035774.P11587624731529116815

`record[lcm(A035732(n), A091337(n+1))]`
-/

namespace A035774.P11587624731529116815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035732 n) (A091337 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035774.P11587624731529116815

namespace A035774

/-- `record[lcm(A035732(n), A091337(n+1))]` -/
def P11587624731529116815.Spec : Prop :=
  ∀ n, (P11587624731529116815.a n : ℤ) = A035774 n

end A035774

/-! ## A035774.P2169603187450021609

`record[A035732(A028242(A042968(n+1)))]`
-/

namespace A035774.P2169603187450021609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035732 (A028242 (A042968 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035774.P2169603187450021609

namespace A035774

/-- `record[A035732(A028242(A042968(n+1)))]` -/
def P2169603187450021609.Spec : Prop :=
  ∀ n, P2169603187450021609.a n = A035774 n

end A035774

/-! ## A035774.P9549315100671701555

`record[A035732(A099188(A025581(n)))]`
-/

namespace A035774.P9549315100671701555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035732 (A099188 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035774.P9549315100671701555

namespace A035774

/-- `record[A035732(A099188(A025581(n)))]` -/
def P9549315100671701555.Spec : Prop :=
  ∀ n, P9549315100671701555.a n = A035774 n

end A035774

/-!
# A035775: Coordination sequence for C_38 lattice.

The programs for A035775, the canonical program `A035775.P7555166677845862874` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035775 has offset 0).

The definition of A035775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1814 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035775.P7555166677845862874

`A035733(2*n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035775

/-- `A035733(2*n)` -/
def P7555166677845862874.Spec : Prop :=
  ∀ n, P7555166677845862874.a n = A035775 n

theorem P7555166677845862874.correct : P7555166677845862874.Spec := by
  intro n
  simp only [A035775]

end A035775

/-! ## A035775.P3284592970295220758

`record[A035733(A014681(n))]`
-/

namespace A035775.P3284592970295220758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035733 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035775.P3284592970295220758

namespace A035775

/-- `record[A035733(A014681(n))]` -/
def P3284592970295220758.Spec : Prop :=
  ∀ n, P3284592970295220758.a n = A035775 n

end A035775

/-! ## A035775.P9236336901872688197

`record[A035733(n)/A033999(n)]`
-/

namespace A035775.P9236336901872688197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035733 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035775.P9236336901872688197

namespace A035775

/-- `record[A035733(n)/A033999(n)]` -/
def P9236336901872688197.Spec : Prop :=
  ∀ n, P9236336901872688197.a n = (A035775 n : ℚ)

end A035775

/-! ## A035775.P8549289980012064801

`record[gcd(A007814(n+1), A035733(n))]`
-/

namespace A035775.P8549289980012064801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035733 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035775.P8549289980012064801

namespace A035775

/-- `record[gcd(A007814(n+1), A035733(n))]` -/
def P8549289980012064801.Spec : Prop :=
  ∀ n, (P8549289980012064801.a n : ℤ) = A035775 n

end A035775

/-! ## A035775.P2107082581700875237

`record[A035733(A153587(n))]`
-/

namespace A035775.P2107082581700875237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035733 (A153587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035775.P2107082581700875237

namespace A035775

/-- `record[A035733(A153587(n))]` -/
def P2107082581700875237.Spec : Prop :=
  ∀ n, P2107082581700875237.a n = A035775 n

end A035775

/-!
# A035776: Coordination sequence for C_39 lattice.

The programs for A035776, the canonical program `A035776.P17774479981856571798` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035776 has offset 0).

The definition of A035776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035776.P17774479981856571798

`A035734(2*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035776

/-- `A035734(2*n)` -/
def P17774479981856571798.Spec : Prop :=
  ∀ n, P17774479981856571798.a n = A035776 n

theorem P17774479981856571798.correct : P17774479981856571798.Spec := by
  intro n
  simp only [A035776]

end A035776

/-! ## A035776.P9404648819304496155

`record[A035734(A014681(n))]`
-/

namespace A035776.P9404648819304496155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035734 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035776.P9404648819304496155

namespace A035776

/-- `record[A035734(A014681(n))]` -/
def P9404648819304496155.Spec : Prop :=
  ∀ n, P9404648819304496155.a n = A035776 n

end A035776

/-! ## A035776.P5473271258006901231

`record[A035734(A153587(n))]`
-/

namespace A035776.P5473271258006901231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035734 (A153587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035776.P5473271258006901231

namespace A035776

/-- `record[A035734(A153587(n))]` -/
def P5473271258006901231.Spec : Prop :=
  ∀ n, P5473271258006901231.a n = A035776 n

end A035776

/-! ## A035776.P18189622887569245654

`record[A035734(A153733(n))]`
-/

namespace A035776.P18189622887569245654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035734 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035776.P18189622887569245654

namespace A035776

/-- `record[A035734(A153733(n))]` -/
def P18189622887569245654.Spec : Prop :=
  ∀ n, P18189622887569245654.a n = A035776 n

end A035776

/-! ## A035776.P17870022940268365981

`record[A035734(n)/A033999(n)]`
-/

namespace A035776.P17870022940268365981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035734 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035776.P17870022940268365981

namespace A035776

/-- `record[A035734(n)/A033999(n)]` -/
def P17870022940268365981.Spec : Prop :=
  ∀ n, P17870022940268365981.a n = (A035776 n : ℚ)

end A035776

/-! ## A035776.P17905348981131554564

`record[gcd(A007814(n+1), A035734(n))]`
-/

namespace A035776.P17905348981131554564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035734 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035776.P17905348981131554564

namespace A035776

/-- `record[gcd(A007814(n+1), A035734(n))]` -/
def P17905348981131554564.Spec : Prop :=
  ∀ n, (P17905348981131554564.a n : ℤ) = A035776 n

end A035776

/-! ## A035776.P5783703052537254759

`gcd(A000038(n), A035734(A005843(n)))`
-/

namespace A035776.P5783703052537254759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035734 (A005843 n).toNat)

end

end A035776.P5783703052537254759

namespace A035776

/-- `gcd(A000038(n), A035734(A005843(n)))` -/
def P5783703052537254759.Spec : Prop :=
  ∀ n, (P5783703052537254759.a n : ℤ) = A035776 n

end A035776

/-!
# A035777: Coordination sequence for C_40 lattice.

The programs for A035777, the canonical program `A035777.P9262208341548291042` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035777 has offset 0).

The definition of A035777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035777.P9262208341548291042

`A035735(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035777

/-- `A035735(2*n)` -/
def P9262208341548291042.Spec : Prop :=
  ∀ n, P9262208341548291042.a n = A035777 n

theorem P9262208341548291042.correct : P9262208341548291042.Spec := by
  intro n
  simp only [A035777]

end A035777

/-! ## A035777.P7412926745403031714

`record[A035735(A014681(n))]`
-/

namespace A035777.P7412926745403031714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035735 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035777.P7412926745403031714

namespace A035777

/-- `record[A035735(A014681(n))]` -/
def P7412926745403031714.Spec : Prop :=
  ∀ n, P7412926745403031714.a n = A035777 n

end A035777

/-! ## A035777.P10446851979332486798

`record[A035735(A153733(n))]`
-/

namespace A035777.P10446851979332486798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035735 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035777.P10446851979332486798

namespace A035777

/-- `record[A035735(A153733(n))]` -/
def P10446851979332486798.Spec : Prop :=
  ∀ n, P10446851979332486798.a n = A035777 n

end A035777

/-! ## A035777.P17228100794935488746

`record[A035735(n)/A033999(n)]`
-/

namespace A035777.P17228100794935488746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035735 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035777.P17228100794935488746

namespace A035777

/-- `record[A035735(n)/A033999(n)]` -/
def P17228100794935488746.Spec : Prop :=
  ∀ n, P17228100794935488746.a n = (A035777 n : ℚ)

end A035777

/-! ## A035777.P5234584667846208225

`record[gcd(A007814(n+1), A035735(n))]`
-/

namespace A035777.P5234584667846208225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035777.P5234584667846208225

namespace A035777

/-- `record[gcd(A007814(n+1), A035735(n))]` -/
def P5234584667846208225.Spec : Prop :=
  ∀ n, (P5234584667846208225.a n : ℤ) = A035777 n

end A035777

/-!
# A035778: Coordination sequence for C_41 lattice.

The programs for A035778, the canonical program `A035778.P17076281089256357332` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035778 has offset 0).

The definition of A035778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035778.P17076281089256357332

`A035736(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035778

/-- `A035736(2*n)` -/
def P17076281089256357332.Spec : Prop :=
  ∀ n, P17076281089256357332.a n = A035778 n

theorem P17076281089256357332.correct : P17076281089256357332.Spec := by
  intro n
  simp only [A035778]

end A035778

/-! ## A035778.P15576626665941210539

`record[A035736(A014681(n))]`
-/

namespace A035778.P15576626665941210539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035736 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035778.P15576626665941210539

namespace A035778

/-- `record[A035736(A014681(n))]` -/
def P15576626665941210539.Spec : Prop :=
  ∀ n, P15576626665941210539.a n = A035778 n

end A035778

/-! ## A035778.P4889310156443826174

`record[A035736(n)/A033999(n)]`
-/

namespace A035778.P4889310156443826174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035736 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035778.P4889310156443826174

namespace A035778

/-- `record[A035736(n)/A033999(n)]` -/
def P4889310156443826174.Spec : Prop :=
  ∀ n, P4889310156443826174.a n = (A035778 n : ℚ)

end A035778

/-! ## A035778.P4684974619429768737

`record[A035736(lcm(n, A056594(n)))]`
-/

namespace A035778.P4684974619429768737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035736 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035778.P4684974619429768737

namespace A035778

/-- `record[A035736(lcm(n, A056594(n)))]` -/
def P4684974619429768737.Spec : Prop :=
  ∀ n, P4684974619429768737.a n = A035778 n

end A035778

/-! ## A035778.P3817847643761562746

`record[A035736(n)^Δ[A065033(n)]]`
-/

namespace A035778.P3817847643761562746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035736 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035778.P3817847643761562746

namespace A035778

/-- `record[A035736(n)^Δ[A065033(n)]]` -/
def P3817847643761562746.Spec : Prop :=
  ∀ n, P3817847643761562746.a n = (A035778 n : ℚ)

end A035778

/-!
# A035779: Coordination sequence for C_42 lattice.

The programs for A035779, there is no canonical definition to state claims against.
-/

/-! ## A035779.P10283618986506506502

`A035737(2*n)`
-/

namespace A035779.P10283618986506506502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035737 (2 * n)

end

end A035779.P10283618986506506502

/-! ## A035779.P12122712623667386406

`record[A035737(A014681(n))]`
-/

namespace A035779.P12122712623667386406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035737 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035779.P12122712623667386406

/-! ## A035779.P17712324627624667916

`record[A035737(A131380(n))]`
-/

namespace A035779.P17712324627624667916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035737 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035779.P17712324627624667916

/-! ## A035779.P15653963399082708359

`record[A035737(n)/A033999(n)]`
-/

namespace A035779.P15653963399082708359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035737 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035779.P15653963399082708359

/-! ## A035779.P12566310694384857773

`record[lcm(A035737(n), A056594(n))]`
-/

namespace A035779.P12566310694384857773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035737 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035779.P12566310694384857773

/-! ## A035779.P5347316841015690848

`gcd(A000038(n), A035737(A005843(n)))`
-/

namespace A035779.P5347316841015690848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035737 (A005843 n).toNat)

end

end A035779.P5347316841015690848

/-!
# A035780: Coordination sequence for C_43 lattice.

The programs for A035780, there is no canonical definition to state claims against.
-/

/-! ## A035780.P14967840352560121909

`A035738(2*n)`
-/

namespace A035780.P14967840352560121909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035738 (2 * n)

end

end A035780.P14967840352560121909

/-! ## A035780.P5125176490842043782

`record[A035738(A014681(n))]`
-/

namespace A035780.P5125176490842043782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035738 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035780.P5125176490842043782

/-! ## A035780.P8222039330393734245

`record[A035738(A153733(n))]`
-/

namespace A035780.P8222039330393734245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035738 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035780.P8222039330393734245

/-! ## A035780.P2677337215247759764

`record[A035738(n)/A033999(n)]`
-/

namespace A035780.P2677337215247759764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035738 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035780.P2677337215247759764

/-! ## A035780.P5899697627406845313

`record[lcm(A035738(n), A056594(n))]`
-/

namespace A035780.P5899697627406845313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035738 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035780.P5899697627406845313

/-!
# A035781: Coordination sequence for C_44 lattice.

The programs for A035781, there is no canonical definition to state claims against.
-/

/-! ## A035781.P10698440791746424609

`A035739(2*n)`
-/

namespace A035781.P10698440791746424609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035739 (2 * n)

end

end A035781.P10698440791746424609

/-! ## A035781.P8084396546033565571

`record[A035739(A014681(n))]`
-/

namespace A035781.P8084396546033565571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035739 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035781.P8084396546033565571

/-! ## A035781.P12408007375817824618

`record[A035739(n)/A033999(n)]`
-/

namespace A035781.P12408007375817824618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035739 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035781.P12408007375817824618

/-! ## A035781.P12798075254680697710

`A035898(A035898(2*n+1)+2*n)`
-/

namespace A035781.P12798075254680697710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035898 (A035898 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A035781.P12798075254680697710

/-! ## A035781.P11721902261202043117

`record[A035898(n)-A035914(2*n+1)]`
-/

namespace A035781.P11721902261202043117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035898 n - A035914 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035781.P11721902261202043117

/-!
# A035782: Coordination sequence for C_45 lattice.

The programs for A035782, there is no canonical definition to state claims against.
-/

/-! ## A035782.P2202047461095751993

`A035740(2*n)`
-/

namespace A035782.P2202047461095751993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035740 (2 * n)

end

end A035782.P2202047461095751993

/-! ## A035782.P14646326584809198297

`record[A035740(A014681(n))]`
-/

namespace A035782.P14646326584809198297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035740 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035782.P14646326584809198297

/-! ## A035782.P3693224068130362540

`record[A035740(n)/A033999(n)]`
-/

namespace A035782.P3693224068130362540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035740 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035782.P3693224068130362540

/-! ## A035782.P8751288138004632167

`record[gcd(A035740(n), A135481(n))]`
-/

namespace A035782.P8751288138004632167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035740 n) (A135481 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035782.P8751288138004632167

/-! ## A035782.P763420984923239502

`record[A035740(n%A013942(n+1))]`
-/

namespace A035782.P763420984923239502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035740 (Int.tmod (n : ℤ) (A013942 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035782.P763420984923239502

/-!
# A035783: Coordination sequence for C_46 lattice.

The programs for A035783, there is no canonical definition to state claims against.
-/

/-! ## A035783.P2267626401879246371

`A035741(2*n)`
-/

namespace A035783.P2267626401879246371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035741 (2 * n)

end

end A035783.P2267626401879246371

/-! ## A035783.P16618590587635113695

`record[A035741(A014681(n))]`
-/

namespace A035783.P16618590587635113695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035741 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035783.P16618590587635113695

/-! ## A035783.P17384185228964345612

`record[A035741(n)^Δ[A065033(n)]]`
-/

namespace A035783.P17384185228964345612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035741 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035783.P17384185228964345612

/-! ## A035783.P1736931321238275429

`record[A035741(n-A007814(n+1))]`
-/

namespace A035783.P1736931321238275429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035741 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035783.P1736931321238275429

/-! ## A035783.P15157448447873761332

`record[gcd(A007814(n+1), A035741(n))]`
-/

namespace A035783.P15157448447873761332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035741 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035783.P15157448447873761332

/-! ## A035783.P8469725286521428266

`record[A035741(n)/A035741(A007814(n+1)²)]`
-/

namespace A035783.P8469725286521428266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035741 n : ℚ) / (A035741 (A007814 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035783.P8469725286521428266

/-!
# A035784: Coordination sequence for C_47 lattice.

The programs for A035784, there is no canonical definition to state claims against.
-/

/-! ## A035784.P3505627391424349669

`A035742(2*n)`
-/

namespace A035784.P3505627391424349669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035742 (2 * n)

end

end A035784.P3505627391424349669

/-! ## A035784.P7146388001153371561

`record[A035742(A014681(n))]`
-/

namespace A035784.P7146388001153371561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035742 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035784.P7146388001153371561

/-! ## A035784.P15194858175004600519

`record[A035742(A022998(n)-n)]`
-/

namespace A035784.P15194858175004600519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035742 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035784.P15194858175004600519

/-! ## A035784.P5675183098763123431

`record[A035742(n)/A033999(n)]`
-/

namespace A035784.P5675183098763123431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035742 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035784.P5675183098763123431

/-! ## A035784.P17632265004964163826

`∏{e}[A000302(n), A035742(#)]`
-/

namespace A035784.P17632265004964163826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035742 (Nat.factorization (f1 n).natAbs p)

end

end A035784.P17632265004964163826

/-!
# A035785: Coordination sequence for C_48 lattice.

The programs for A035785, there is no canonical definition to state claims against.
-/

/-! ## A035785.P17819441075964297936

`A035743(2*n)`
-/

namespace A035785.P17819441075964297936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035743 (2 * n)

end

end A035785.P17819441075964297936

/-! ## A035785.P5553590853888364514

`lcm(A000034(n), A035743(A005843(n)))`
-/

namespace A035785.P5553590853888364514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A035743 (A005843 n).toNat)

end

end A035785.P5553590853888364514

/-! ## A035785.P817998976018670155

`A035743(A005843(n))/A033999(n)²`
-/

namespace A035785.P817998976018670155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035743 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A035785.P817998976018670155

/-! ## A035785.P8460212803819155114

`A035743(A005843(n))+char[A304396(n+2)]`
-/

namespace A035785.P8460212803819155114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304396 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035743 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A035785.P8460212803819155114

/-! ## A035785.P13003423737601493161

`A035743(A005843(n))+char[A038444(n+5)]`
-/

namespace A035785.P13003423737601493161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035743 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A035785.P13003423737601493161

/-! ## A035785.P12429045481510134940

`A035743(A005843(n))+A010057(A339993(n+1))`
-/

namespace A035785.P12429045481510134940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035743 (A005843 n).toNat + A010057 (A339993 (n + 1)).toNat

end

end A035785.P12429045481510134940

/-!
# A035786: Coordination sequence for C_49 lattice.

The programs for A035786, there is no canonical definition to state claims against.
-/

/-! ## A035786.P17967573348312740185

`A035744(2*n)`
-/

namespace A035786.P17967573348312740185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035744 (2 * n)

end

end A035786.P17967573348312740185

/-! ## A035786.P16655806439454928207

`record[A035744(A014681(n))]`
-/

namespace A035786.P16655806439454928207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035744 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035786.P16655806439454928207

/-! ## A035786.P1770167120627752751

`record[A035744(n)/A033999(n)]`
-/

namespace A035786.P1770167120627752751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035744 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035786.P1770167120627752751

/-! ## A035786.P1482921646077113857

`record[A035744(n%A187180(n+1))]`
-/

namespace A035786.P1482921646077113857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035744 (Int.tmod (n : ℤ) (A187180 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035786.P1482921646077113857

/-! ## A035786.P13928797088108165780

`∏{e}[A262710(n), A035744(#)]`
-/

namespace A035786.P13928797088108165780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035744 (Nat.factorization (f1 n).natAbs p)

end

end A035786.P13928797088108165780

/-!
# A035787: Coordination sequence for C_50 lattice.

The programs for A035787, there is no canonical definition to state claims against.
-/

/-! ## A035787.P16882338948040079299

`A035745(2*n)`
-/

namespace A035787.P16882338948040079299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035745 (2 * n)

end

end A035787.P16882338948040079299

/-! ## A035787.P5726020987190622428

`record[A035745(A014681(n))]`
-/

namespace A035787.P5726020987190622428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035745 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035787.P5726020987190622428

/-! ## A035787.P4269762737966084856

`record[gcd(A007814(n+1), A035745(n))]`
-/

namespace A035787.P4269762737966084856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A035745 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035787.P4269762737966084856

/-! ## A035787.P7900724407037795954

`A035901(A035901(2*n+1)+2*n)`
-/

namespace A035787.P7900724407037795954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035901 (A035901 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A035787.P7900724407037795954

/-! ## A035787.P13692716145032242509

`record[A035901(n)-A035914(2*n+1)]`
-/

namespace A035787.P13692716145032242509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035901 n - A035914 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035787.P13692716145032242509

/-!
# A035789: Start of a string of exactly 1 consecutive (but disjoint) pair of twin primes.

The programs for A035789, there is no canonical definition to state claims against.
-/

/-! ## A035789.P11423949112701626459

`A069455(n+1)-2`
-/

namespace A035789.P11423949112701626459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069455 (n + 1) - 2

end

end A035789.P11423949112701626459

/-! ## A035789.P16832677964871138001

`abs(2-A069455(Δ[n²]-n))`
-/

namespace A035789.P16832677964871138001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A069455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A035789.P16832677964871138001

/-! ## A035789.P15047760802829313872

`A069453(Δ[n²])`
-/

namespace A035789.P15047760802829313872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A035789.P15047760802829313872

/-! ## A035789.P6877460940430818198

`p?[A069453(n+1)-2]`
-/

namespace A035789.P6877460940430818198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035789.P6877460940430818198

/-! ## A035789.P5749732314300687620

`A069453(2*(n+1))-2`
-/

namespace A035789.P5749732314300687620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (2 * (n + 1)) - 2

end

end A035789.P5749732314300687620

/-! ## A035789.P7824593873940970455

`∩[A001359(n+1), A069453(n+1)]`
-/

namespace A035789.P7824593873940970455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P7824593873940970455

/-! ## A035789.P807266405752104369

`∩[A001838(n+1), A069453(n+1)]`
-/

namespace A035789.P807266405752104369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P807266405752104369

/-! ## A035789.P12268920938056737063

`∩[A054799(n+1), A069453(n+1)]`
-/

namespace A035789.P12268920938056737063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P12268920938056737063

/-! ## A035789.P7417261350328575113

`∩[A063693(n+1), A069453(n+1)]`
-/

namespace A035789.P7417261350328575113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P7417261350328575113

/-! ## A035789.P13486063555949350637

`∩[A063700(n+1), A069453(n+1)]`
-/

namespace A035789.P13486063555949350637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P13486063555949350637

/-! ## A035789.P10875821756630756393

`∩[A069453(n+1), A073534(n+1)]`
-/

namespace A035789.P10875821756630756393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P10875821756630756393

/-! ## A035789.P14970960668003505294

`∩[A069453(n+1), A111166(n+1)]`
-/

namespace A035789.P14970960668003505294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P14970960668003505294

/-! ## A035789.P2494671961898819544

`∩[A069453(n+1), A124588(n+1)]`
-/

namespace A035789.P2494671961898819544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P2494671961898819544

/-! ## A035789.P1841472818430272037

`∩[A069453(n+1), A181747(n+1)]`
-/

namespace A035789.P1841472818430272037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P1841472818430272037

/-! ## A035789.P4787859451776179145

`∩[A069453(n+1), A238528(n+1)]`
-/

namespace A035789.P4787859451776179145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P4787859451776179145

/-! ## A035789.P3195246392403062159

`∩[A069453(n+1), A378983(n+1)]`
-/

namespace A035789.P3195246392403062159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P3195246392403062159

/-! ## A035789.P16858370831490870587

`∩[A395788(n+1), A069453(n+1)]`
-/

namespace A035789.P16858370831490870587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P16858370831490870587

/-! ## A035789.P10053746058464982715

`∩[A006512(n+1)-2, A069453(n+1)]`
-/

namespace A035789.P10053746058464982715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P10053746058464982715

/-! ## A035789.P10992279987896569127

`∩[A069453(n+1), A274212(n+1)]`
-/

namespace A035789.P10992279987896569127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035789.P10992279987896569127

/-!
# A035791: Start of a string of exactly 3 consecutive (but disjoint) pairs of twin primes.

The programs for A035791, there is no canonical definition to state claims against.
-/

/-! ## A035791.P2442561705202289898

`record[A136143(n+1)/A136148(A136124(n+2))]`
-/

namespace A035791.P2442561705202289898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136143 (n + 1) : ℚ) / (A136148 (A136124 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035791.P2442561705202289898

/-! ## A035791.P13920370967403988400

`A090953(∑[A005159(C(n, 6))])`
-/

namespace A035791.P13920370967403988400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005159 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035791.P13920370967403988400

/-! ## A035791.P13522771591340295531

`A090953(A228050(n+1)+A136170(n))`
-/

namespace A035791.P13522771591340295531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 (A228050 (n + 1) + A136170 n).toNat

end

end A035791.P13522771591340295531

/-!
# A035792: Start of a string of exactly 4 consecutive (but disjoint) pairs of twin primes.

The programs for A035792, there is no canonical definition to state claims against.
-/

/-! ## A035792.P16895609242670587376

`record[A136145(n+1)/A136148(A136124(n+2))]`
-/

namespace A035792.P16895609242670587376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136145 (n + 1) : ℚ) / (A136148 (A136124 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035792.P16895609242670587376

/-! ## A035792.P13638896274977626940

`A136145(A332815(n)^A109010(n))`
-/

namespace A035792.P13638896274977626940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136145 (SequenceMachineLib.roundAway ((A332815 n : ℚ) ^ (A109010 n : ℤ))).toNat

end

end A035792.P13638896274977626940

/-! ## A035792.P13880663274888281301

`A136145(A228050(n+1)+A136170(n))`
-/

namespace A035792.P13880663274888281301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136145 (A228050 (n + 1) + A136170 n).toNat

end

end A035792.P13880663274888281301

