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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A085001: a(n) = (3*n+1)*(3*n+4).

The programs for A085001, the canonical program `A085001.P12336604872008909945` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085001 has offset 0).

The definition of A085001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(3*n+4)` (program `A085001.P12336604872008909945`, by `A085001.P12336604872008909945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085001.P9610137930071135692

`ogf((4+16x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A085001.P9610137930071135692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 16, -2] [1, -3, 3, -1] n

end

end A085001.P9610137930071135692

namespace A085001

/-- `ogf((4+16x-2x^2)/(1-3x+3x^2-x^3))` -/
def P9610137930071135692.Spec : Prop :=
  ∀ n, P9610137930071135692.a n = A085001 n

end A085001

/-! ## A085001.P12336604872008909945

`(3*n+1)*(3*n+4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085001

/-- `(3*n+1)*(3*n+4)` -/
def P12336604872008909945.Spec : Prop :=
  ∀ n, (P12336604872008909945.a n : ℤ) = A085001 n

theorem P12336604872008909945.correct : P12336604872008909945.Spec := by
  intro n
  simp only [A085001]

end A085001

/-! ## A085001.P15640492421727928915

`∑[a(n-1)+18]` with `a(0)=4, a(1)=24`
-/

namespace A085001.P15640492421727928915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 24] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085001.P15640492421727928915

namespace A085001

/-- `∑[a(n-1)+18]` -/
def P15640492421727928915.Spec : Prop :=
  ∀ n, (P15640492421727928915.a n : ℤ) = A085001 n

end A085001

/-! ## A085001.P3698383828705678006

`A144449(n)/4`
-/

namespace A085001.P3698383828705678006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144449 n : ℚ) / 4

end

end A085001.P3698383828705678006

namespace A085001

/-- `A144449(n)/4` -/
def P3698383828705678006.Spec : Prop :=
  ∀ n, P3698383828705678006.a n = (A085001 n : ℚ)

theorem P3698383828705678006.correct : P3698383828705678006.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P3698383828705678006.a, A085001.P12336604872008909945.a, A144449, A144449.P16112728441674391944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P6711289000061282970

`A304163(n+1)-3`
-/

namespace A085001.P6711289000061282970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304163 (n + 1) - 3

end

end A085001.P6711289000061282970

namespace A085001

/-- `A304163(n+1)-3` -/
def P6711289000061282970.Spec : Prop :=
  ∀ n, P6711289000061282970.a n = A085001 n

theorem P6711289000061282970.correct : P6711289000061282970.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P6711289000061282970.a, A085001.P12336604872008909945.a, A304163, A304163.P8672911586747893723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P5107288090697508857

`∑[A242215(n)+1]-2`
-/

namespace A085001.P5107288090697508857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A085001.P5107288090697508857

namespace A085001

/-- `∑[A242215(n)+1]-2` -/
def P5107288090697508857.Spec : Prop :=
  ∀ n, P5107288090697508857.a n = A085001 n

end A085001

/-! ## A085001.P7806122998078733803

`∑[A063136(n+1)]-3`
-/

namespace A085001.P7806122998078733803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A085001.P7806122998078733803

namespace A085001

/-- `∑[A063136(n+1)]-3` -/
def P7806122998078733803.Spec : Prop :=
  ∀ n, P7806122998078733803.a n = A085001 n

end A085001

/-! ## A085001.P5075545452617344688

`Δ[n*(A211441(n)+1)]`
-/

namespace A085001.P5075545452617344688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A211441 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085001.P5075545452617344688

namespace A085001

/-- `Δ[n*(A211441(n)+1)]` -/
def P5075545452617344688.Spec : Prop :=
  ∀ n, P5075545452617344688.a n = A085001 n

end A085001

/-! ## A085001.P653114702265959008

`3*A144390(n+1)+1`
-/

namespace A085001.P653114702265959008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144390 (n + 1) + 1

end

end A085001.P653114702265959008

namespace A085001

/-- `3*A144390(n+1)+1` -/
def P653114702265959008.Spec : Prop :=
  ∀ n, P653114702265959008.a n = A085001 n

theorem P653114702265959008.correct : P653114702265959008.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P653114702265959008.a, A085001.P12336604872008909945.a, A144390, A144390.P15660437449972073638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P14499906641989114149

`A016933(n)+A001504(n)`
-/

namespace A085001.P14499906641989114149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n + A001504 n

end

end A085001.P14499906641989114149

namespace A085001

/-- `A016933(n)+A001504(n)` -/
def P14499906641989114149.Spec : Prop :=
  ∀ n, P14499906641989114149.a n = A085001 n

theorem P14499906641989114149.correct : P14499906641989114149.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P14499906641989114149.a, A085001.P12336604872008909945.a, A001504, A001504.P13639601878872911563.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P3649733273224585075

`A017197(n)+A016778(n)`
-/

namespace A085001.P3649733273224585075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n + A016778 n

end

end A085001.P3649733273224585075

namespace A085001

/-- `A017197(n)+A016778(n)` -/
def P3649733273224585075.Spec : Prop :=
  ∀ n, P3649733273224585075.a n = A085001 n

theorem P3649733273224585075.correct : P3649733273224585075.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P3649733273224585075.a, A085001.P12336604872008909945.a, A016778, A016778.P16000663877604072744.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P3904004661567881806

`A045945(n)+A017569(n)`
-/

namespace A085001.P3904004661567881806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A017569 n

end

end A085001.P3904004661567881806

namespace A085001

/-- `A045945(n)+A017569(n)` -/
def P3904004661567881806.Spec : Prop :=
  ∀ n, P3904004661567881806.a n = A085001 n

theorem P3904004661567881806.correct : P3904004661567881806.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P3904004661567881806.a, A085001.P12336604872008909945.a, A017569, A017569.P14340039372117997380.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P6246213289204159424

`A082040(n)+A017557(n)`
-/

namespace A085001.P6246213289204159424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n + A017557 n

end

end A085001.P6246213289204159424

namespace A085001

/-- `A082040(n)+A017557(n)` -/
def P6246213289204159424.Spec : Prop :=
  ∀ n, P6246213289204159424.a n = A085001 n

theorem P6246213289204159424.correct : P6246213289204159424.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P6246213289204159424.a, A085001.P12336604872008909945.a, A017557, A017557.P7719209615978230604.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P1698853317265212775

`A108099(n)+A028563(n)`
-/

namespace A085001.P1698853317265212775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108099 n + A028563 n

end

end A085001.P1698853317265212775

namespace A085001

/-- `A108099(n)+A028563(n)` -/
def P1698853317265212775.Spec : Prop :=
  ∀ n, P1698853317265212775.a n = A085001 n

theorem P1698853317265212775.correct : P1698853317265212775.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P1698853317265212775.a, A085001.P12336604872008909945.a, A028563, A028563.P15186121141906373506.a, A108099, A108099.P5915517825114269260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P18442355520833104011

`A081270(n)+A081268(n)`
-/

namespace A085001.P18442355520833104011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081270 n + A081268 n

end

end A085001.P18442355520833104011

namespace A085001

/-- `A081270(n)+A081268(n)` -/
def P18442355520833104011.Spec : Prop :=
  ∀ n, P18442355520833104011.a n = A085001 n

end A085001

/-! ## A085001.P13265446739457001344

`A163758(n)+A016957(n)`
-/

namespace A085001.P13265446739457001344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163758 n + A016957 n

end

end A085001.P13265446739457001344

namespace A085001

/-- `A163758(n)+A016957(n)` -/
def P13265446739457001344.Spec : Prop :=
  ∀ n, P13265446739457001344.a n = A085001 n

theorem P13265446739457001344.correct : P13265446739457001344.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P13265446739457001344.a, A085001.P12336604872008909945.a, A016957, A016957.P9941618694539595759.a, A163758, A163758.P16330388119460632135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P14392491389768565207

`A147296(n)+A127547(n)`
-/

namespace A085001.P14392491389768565207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n + A127547 n

end

end A085001.P14392491389768565207

namespace A085001

/-- `A147296(n)+A127547(n)` -/
def P14392491389768565207.Spec : Prop :=
  ∀ n, P14392491389768565207.a n = A085001 n

theorem P14392491389768565207.correct : P14392491389768565207.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P14392491389768565207.a, A085001.P12336604872008909945.a, A127547, A127547.P10889722998451657340.a, A147296, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-! ## A085001.P10978671091102043657

`A145910(n)+A145910(n)`
-/

namespace A085001.P10978671091102043657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n + A145910 n

end

end A085001.P10978671091102043657

namespace A085001

/-- `A145910(n)+A145910(n)` -/
def P10978671091102043657.Spec : Prop :=
  ∀ n, P10978671091102043657.a n = A085001 n

end A085001

/-! ## A085001.P4344673420132007856

`A283394(n)+A027468(n)`
-/

namespace A085001.P4344673420132007856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 n + A027468 n

end

end A085001.P4344673420132007856

namespace A085001

/-- `A283394(n)+A027468(n)` -/
def P4344673420132007856.Spec : Prop :=
  ∀ n, P4344673420132007856.a n = A085001 n

end A085001

/-! ## A085001.P15886167313708809357

`A172044(n)+A164897(n)`
-/

namespace A085001.P15886167313708809357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172044 n + A164897 n

end

end A085001.P15886167313708809357

namespace A085001

/-- `A172044(n)+A164897(n)` -/
def P15886167313708809357.Spec : Prop :=
  ∀ n, P15886167313708809357.a n = A085001 n

theorem P15886167313708809357.correct : P15886167313708809357.Spec := by
  intro n
  simp only [A085001, Nat.add_sub_cancel, A085001.P15886167313708809357.a, A085001.P12336604872008909945.a, A164897, A164897.P2809855780232688833.a, A172044, A172044.P1657044642303172272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085001

/-!
# A085002: a(n) = floor(phi*n) - 2*floor(phi*n/2) where phi is the golden ratio.

The programs for A085002, the canonical program `A085002.P6542274367589993406` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085002 has offset 1).

The definition of A085002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(ϕ*(n+1))-2*floor(ϕ*(n+1)/2)` (program `A085002.P6542274367589993406`, by `A085002.P6542274367589993406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085002.P6542274367589993406

`floor(ϕ*(n+1))-2*floor(ϕ*(n+1)/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085002

/-- `floor(ϕ*(n+1))-2*floor(ϕ*(n+1)/2)` -/
def P6542274367589993406.Spec : Prop :=
  ∀ n, P6542274367589993406.a n = A085002 (n + 1)

theorem P6542274367589993406.correct : P6542274367589993406.Spec := by
  intro n
  simp only [A085002, Nat.add_sub_cancel]

end A085002

/-! ## A085002.P16667643783927743444

`A000201(n+1)%2`
-/

namespace A085002.P16667643783927743444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (n + 1)) 2

end

end A085002.P16667643783927743444

namespace A085002

/-- `A000201(n+1)%2` -/
def P16667643783927743444.Spec : Prop :=
  ∀ n, P16667643783927743444.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P17960819574465614500

`A105774(n+1)%2`
-/

namespace A085002.P17960819574465614500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105774 (n + 1)) 2

end

end A085002.P17960819574465614500

namespace A085002

/-- `A105774(n+1)%2` -/
def P17960819574465614500.Spec : Prop :=
  ∀ n, P17960819574465614500.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P10410096082135568370

`floor(ϕ*(n+1))%2`
-/

namespace A085002.P10410096082135568370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ 2

end

end A085002.P10410096082135568370

namespace A085002

/-- `floor(ϕ*(n+1))%2` -/
def P10410096082135568370.Spec : Prop :=
  ∀ n, P10410096082135568370.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P16267860774748684660

`and(1, floor(ϕ*(n+1)))`
-/

namespace A085002.P16267860774748684660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A085002.P16267860774748684660

namespace A085002

/-- `and(1, floor(ϕ*(n+1)))` -/
def P16267860774748684660.Spec : Prop :=
  ∀ n, P16267860774748684660.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P15398748567750693906

`2-gcd(2, floor(ϕ*(n+1)))`
-/

namespace A085002.P15398748567750693906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℤ)

end

end A085002.P15398748567750693906

namespace A085002

/-- `2-gcd(2, floor(ϕ*(n+1)))` -/
def P15398748567750693906.Spec : Prop :=
  ∀ n, P15398748567750693906.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P15699047136621001512

`1-and(1, ceil(ϕ*(n+1)))`
-/

namespace A085002.P15699047136621001512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A085002.P15699047136621001512

namespace A085002

/-- `1-and(1, ceil(ϕ*(n+1)))` -/
def P15699047136621001512.Spec : Prop :=
  ∀ n, P15699047136621001512.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P3815563875941460453

`and(1, ceil(-(ϕ*(n+1))))²`
-/

namespace A085002.P3815563875941460453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈-(Real.goldenRatio * (n + 1 : ℝ))⌉ ^ 2

end

end A085002.P3815563875941460453

namespace A085002

/-- `and(1, ceil(-(ϕ*(n+1))))²` -/
def P3815563875941460453.Spec : Prop :=
  ∀ n, P3815563875941460453.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P13223573071123057449

`(∑[Δ[floor(ϕ*n)]²]%2)²`
-/

namespace A085002.P13223573071123057449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ 2

end

end A085002.P13223573071123057449

namespace A085002

/-- `(∑[Δ[floor(ϕ*n)]²]%2)²` -/
def P13223573071123057449.Spec : Prop :=
  ∀ n, P13223573071123057449.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P5378551009821818713

`sqrt(∑[Δ[floor(ϕ*n)]!]%2)`
-/

namespace A085002.P5378551009821818713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℝ)

end

end A085002.P5378551009821818713

namespace A085002

/-- `sqrt(∑[Δ[floor(ϕ*n)]!]%2)` -/
def P5378551009821818713.Spec : Prop :=
  ∀ n, P5378551009821818713.a n = (A085002 (n + 1) : ℝ)

end A085002

/-! ## A085002.P13119004639678246716

`and(1, floor(∑[ϕ-2*n]))²²`
-/

namespace A085002.P13119004639678246716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2) ^ 2

end

end A085002.P13119004639678246716

namespace A085002

/-- `and(1, floor(∑[ϕ-2*n]))²²` -/
def P13119004639678246716.Spec : Prop :=
  ∀ n, P13119004639678246716.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P7832604534848490354

`xor(a(n-1), char[floor(n*ϕ²)])` with `a(0)=1`
-/

namespace A085002.P7832604534848490354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A085002.P7832604534848490354

namespace A085002

/-- `xor(a(n-1), char[floor(n*ϕ²)])` -/
def P7832604534848490354.Spec : Prop :=
  ∀ n, (P7832604534848490354.a n : ℤ) = A085002 (n + 1)

end A085002

/-! ## A085002.P6285093160153861702

`val(A020639(ceil(ϕ*(n+1))), 2)`
-/

namespace A085002.P6285093160153861702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 ⌈Real.goldenRatio * (n + 1 : ℝ)⌉.toNat).toNat 2

end

end A085002.P6285093160153861702

namespace A085002

/-- `val(A020639(ceil(ϕ*(n+1))), 2)` -/
def P6285093160153861702.Spec : Prop :=
  ∀ n, (P6285093160153861702.a n : ℤ) = A085002 (n + 1)

end A085002

/-! ## A085002.P8461412049557106279

`A059841(n-A005206(n))`
-/

namespace A085002.P8461412049557106279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((n : ℤ) - A005206 n).toNat

end

end A085002.P8461412049557106279

namespace A085002

/-- `A059841(n-A005206(n))` -/
def P8461412049557106279.Spec : Prop :=
  ∀ n, P8461412049557106279.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P10485364106096509167

`A073097(or(6, A000201(n+1)))`
-/

namespace A085002.P10485364106096509167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (Int.lor 6 (A000201 (n + 1))).toNat

end

end A085002.P10485364106096509167

namespace A085002

/-- `A073097(or(6, A000201(n+1)))` -/
def P10485364106096509167.Spec : Prop :=
  ∀ n, P10485364106096509167.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P13395379376359869530

`A003849(A286754(n+1)-2*n)`
-/

namespace A085002.P13395379376359869530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A286754 (n + 1) - (2 * n : ℤ)).toNat

end

end A085002.P13395379376359869530

namespace A085002

/-- `A003849(A286754(n+1)-2*n)` -/
def P13395379376359869530.Spec : Prop :=
  ∀ n, P13395379376359869530.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P7434114411826103072

`A080885(A286753(n+1)-2*n)`
-/

namespace A085002.P7434114411826103072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080885 (A286753 (n + 1) - (2 * n : ℤ)).toNat

end

end A085002.P7434114411826103072

namespace A085002

/-- `A080885(A286753(n+1)-2*n)` -/
def P7434114411826103072.Spec : Prop :=
  ∀ n, P7434114411826103072.a n = A085002 (n + 1)

end A085002

/-! ## A085002.P610951494796921618

`A080886(A286753(n+1)-2*n)`
-/

namespace A085002.P610951494796921618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080886 (A286753 (n + 1) - (2 * n : ℤ)).toNat

end

end A085002.P610951494796921618

namespace A085002

/-- `A080886(A286753(n+1)-2*n)` -/
def P610951494796921618.Spec : Prop :=
  ∀ n, P610951494796921618.a n = A085002 (n + 1)

end A085002

/-!
# A085003: Partial sums of A085002.

The programs for A085003, the canonical program `A085003.P369311427931601851` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085003 has offset 1).

The definition of A085003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085003.P16513261200824325290

`∑[floor(ϕ*(n+1))%2]`
-/

namespace A085003.P16513261200824325290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P16513261200824325290

namespace A085003

/-- `∑[floor(ϕ*(n+1))%2]` -/
def P16513261200824325290.Spec : Prop :=
  ∀ n, P16513261200824325290.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P7177309858617281557

`∑[and(1, floor(ϕ*(n+1)))]`
-/

namespace A085003.P7177309858617281557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P7177309858617281557

namespace A085003

/-- `∑[and(1, floor(ϕ*(n+1)))]` -/
def P7177309858617281557.Spec : Prop :=
  ∀ n, P7177309858617281557.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P1267482873238111948

`∑[2-gcd(2, floor(ϕ*(n+1)))]`
-/

namespace A085003.P1267482873238111948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P1267482873238111948

namespace A085003

/-- `∑[2-gcd(2, floor(ϕ*(n+1)))]` -/
def P1267482873238111948.Spec : Prop :=
  ∀ n, P1267482873238111948.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P9514532700082343567

`a(n-1)+and(1, floor(ϕ*(n+1)))` with `a(0)=1`
-/

namespace A085003.P9514532700082343567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A085003.P9514532700082343567

namespace A085003

/-- `a(n-1)+and(1, floor(ϕ*(n+1)))` -/
def P9514532700082343567.Spec : Prop :=
  ∀ n, P9514532700082343567.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P1161003441451951580

`∑[A085002(n+1)]`
-/

namespace A085003.P1161003441451951580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P1161003441451951580

namespace A085003

/-- `∑[A085002(n+1)]` -/
def P1161003441451951580.Spec : Prop :=
  ∀ n, P1161003441451951580.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P13472554491382627507

`(A085004(n+1)+n+1)/2`
-/

namespace A085003.P13472554491382627507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085004 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A085003.P13472554491382627507

namespace A085003

/-- `(A085004(n+1)+n+1)/2` -/
def P13472554491382627507.Spec : Prop :=
  ∀ n, P13472554491382627507.a n = (A085003 (n + 1) : ℚ)

theorem P13472554491382627507.correct : P13472554491382627507.Spec := by
  intro n
  simp only [A085003, Nat.add_sub_cancel, A085003.P13472554491382627507.a, A085003.P369311427931601851.f2, A085003.P369311427931601851.f1, A085003.P369311427931601851.a, A000035, A000035.P2023072528413494694.a, A001468, A001468.P12360075344960480253.a, A085004, A085004.P6951409150480316668.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085003

/-! ## A085003.P3842030516561828343

`∑[A286753(n+1)]-(n+1)²`
-/

namespace A085003.P3842030516561828343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A085003.P3842030516561828343

namespace A085003

/-- `∑[A286753(n+1)]-(n+1)²` -/
def P3842030516561828343.Spec : Prop :=
  ∀ n, P3842030516561828343.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P369311427931601851

`∑[A000035(∑[2-A001468(n)])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085003

/-- `∑[A000035(∑[2-A001468(n)])]` -/
def P369311427931601851.Spec : Prop :=
  ∀ n, P369311427931601851.a n = A085003 (n + 1)

theorem P369311427931601851.correct : P369311427931601851.Spec := by
  intro n
  simp only [A085003, Nat.add_sub_cancel]

end A085003

/-! ## A085003.P8004801509550162228

`∑[val(A007947(A001950(n+1)+n), 2)]`
-/

namespace A085003.P8004801509550162228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007947 (A001950 (n + 1) + (n : ℤ)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P8004801509550162228

namespace A085003

/-- `∑[val(A007947(A001950(n+1)+n), 2)]` -/
def P8004801509550162228.Spec : Prop :=
  ∀ n, (P8004801509550162228.a n : ℤ) = A085003 (n + 1)

end A085003

/-! ## A085003.P8806292888389866049

`∑[A189661(A054082(A189663(n+2)))]`
-/

namespace A085003.P8806292888389866049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A054082 (A189663 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P8806292888389866049

namespace A085003

/-- `∑[A189661(A054082(A189663(n+2)))]` -/
def P8806292888389866049.Spec : Prop :=
  ∀ n, P8806292888389866049.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P2849631363631431461

`∑[A000035(A060143(n+1)+A000035(n+1))]`
-/

namespace A085003.P2849631363631431461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060143 (n + 1) + A000035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P2849631363631431461

namespace A085003

/-- `∑[A000035(A060143(n+1)+A000035(n+1))]` -/
def P2849631363631431461.Spec : Prop :=
  ∀ n, P2849631363631431461.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P15910526395479004981

`∑[A000035(∑[A001468(n)])]`
-/

namespace A085003.P15910526395479004981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P15910526395479004981

namespace A085003

/-- `∑[A000035(∑[A001468(n)])]` -/
def P15910526395479004981.Spec : Prop :=
  ∀ n, P15910526395479004981.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P15467674998008892753

`∑[A000035(A000201(n+1))]`
-/

namespace A085003.P15467674998008892753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P15467674998008892753

namespace A085003

/-- `∑[A000035(A000201(n+1))]` -/
def P15467674998008892753.Spec : Prop :=
  ∀ n, P15467674998008892753.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P1281092480346599944

`∑[A000035(A003622(n+1)-n)]`
-/

namespace A085003.P1281092480346599944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003622 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P1281092480346599944

namespace A085003

/-- `∑[A000035(A003622(n+1)-n)]` -/
def P1281092480346599944.Spec : Prop :=
  ∀ n, P1281092480346599944.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P43867958505234214

`∑[A286752(2*n+1)]`
-/

namespace A085003.P43867958505234214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P43867958505234214

namespace A085003

/-- `∑[A286752(2*n+1)]` -/
def P43867958505234214.Spec : Prop :=
  ∀ n, P43867958505234214.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P3642254917456021216

`∑[A189661(A054082(A026355(n+2)))]`
-/

namespace A085003.P3642254917456021216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A054082 (A026355 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P3642254917456021216

namespace A085003

/-- `∑[A189661(A054082(A026355(n+2)))]` -/
def P3642254917456021216.Spec : Prop :=
  ∀ n, P3642254917456021216.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P3519232417502918291

`∑[A189661(A054082(A189662(n+2)))]`
-/

namespace A085003.P3519232417502918291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A054082 (A189662 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P3519232417502918291

namespace A085003

/-- `∑[A189661(A054082(A189662(n+2)))]` -/
def P3519232417502918291.Spec : Prop :=
  ∀ n, P3519232417502918291.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P1446886509274546991

`∑[A287523(A054082(A026351(n+1)))]`
-/

namespace A085003.P1446886509274546991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A054082 (A026351 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P1446886509274546991

namespace A085003

/-- `∑[A287523(A054082(A026351(n+1)))]` -/
def P1446886509274546991.Spec : Prop :=
  ∀ n, P1446886509274546991.a n = A085003 (n + 1)

end A085003

/-! ## A085003.P5491185378411938923

`∑[A187950(A188259(A187485(2*n+1)))]`
-/

namespace A085003.P5491185378411938923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A188259 (A187485 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P5491185378411938923

namespace A085003

/-- `∑[A187950(A188259(A187485(2*n+1)))]` -/
def P5491185378411938923.Spec : Prop :=
  ∀ n, P5491185378411938923.a n = A085003 (n + 1)

end A085003

/-!
# A085004: a(n)=2*A085003(n)-n.

The programs for A085004, the canonical program `A085004.P6951409150480316668` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085004 has offset 1).

The definition of A085004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085004.P6951409150480316668

`2*A085003(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085004

/-- `2*A085003(n+1)-(n+1)` -/
def P6951409150480316668.Spec : Prop :=
  ∀ n, P6951409150480316668.a n = A085004 (n + 1)

theorem P6951409150480316668.correct : P6951409150480316668.Spec := by
  intro n
  simp only [A085004, Nat.add_sub_cancel]

end A085004

/-! ## A085004.P1563952032696932677

`∑[(-1)^ceil(ϕ*(n+1))]`
-/

namespace A085004.P1563952032696932677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085004.P1563952032696932677

namespace A085004

/-- `∑[(-1)^ceil(ϕ*(n+1))]` -/
def P1563952032696932677.Spec : Prop :=
  ∀ n, P1563952032696932677.a n = (A085004 (n + 1) : ℚ)

end A085004

/-! ## A085004.P759644530266660081

`-∑[(-1)^∑[A001468(n)]]`
-/

namespace A085004.P759644530266660081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085004.P759644530266660081

namespace A085004

/-- `-∑[(-1)^∑[A001468(n)]]` -/
def P759644530266660081.Spec : Prop :=
  ∀ n, P759644530266660081.a n = (A085004 (n + 1) : ℚ)

end A085004

/-! ## A085004.P9743194450453078160

`-∑[(-1)^A000201(n+1)]`
-/

namespace A085004.P9743194450453078160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000201 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085004.P9743194450453078160

namespace A085004

/-- `-∑[(-1)^A000201(n+1)]` -/
def P9743194450453078160.Spec : Prop :=
  ∀ n, P9743194450453078160.a n = (A085004 (n + 1) : ℚ)

end A085004

/-! ## A085004.P13381630765559444728

`A004273(A085003(n+1))-n`
-/

namespace A085004.P13381630765559444728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A085003 (n + 1)).toNat - (n : ℤ)

end

end A085004.P13381630765559444728

namespace A085004

/-- `A004273(A085003(n+1))-n` -/
def P13381630765559444728.Spec : Prop :=
  ∀ n, P13381630765559444728.a n = A085004 (n + 1)

end A085004

/-! ## A085004.P8569460901995387575

`∑[A105812(A000201(n+1))]+1`
-/

namespace A085004.P8569460901995387575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085004.P8569460901995387575

namespace A085004

/-- `∑[A105812(A000201(n+1))]+1` -/
def P8569460901995387575.Spec : Prop :=
  ∀ n, P8569460901995387575.a n = A085004 (n + 1)

end A085004

/-! ## A085004.P941707293269654871

`-∑[(-1)^A001950(A001950(n+1))]`
-/

namespace A085004.P941707293269654871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001950 (A001950 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085004.P941707293269654871

namespace A085004

/-- `-∑[(-1)^A001950(A001950(n+1))]` -/
def P941707293269654871.Spec : Prop :=
  ∀ n, P941707293269654871.a n = (A085004 (n + 1) : ℚ)

end A085004

/-!
# A085005: A Von Koch curve related to the Golden ratio.

The programs for A085005, the canonical program `A085005.P4566855389398327694` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085005 has offset 1).

The definition of A085005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085005.P4125965403325198917

`∑[∑[(-1)^ceil(ϕ*(n+1))]]`
-/

namespace A085005.P4125965403325198917
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085005.P4125965403325198917

namespace A085005

/-- `∑[∑[(-1)^ceil(ϕ*(n+1))]]` -/
def P4125965403325198917.Spec : Prop :=
  ∀ n, P4125965403325198917.a n = (A085005 (n + 1) : ℚ)

end A085005

/-! ## A085005.P4566855389398327694

`abs(∑[A085004(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085005

/-- `abs(∑[A085004(n+1)])` -/
def P4566855389398327694.Spec : Prop :=
  ∀ n, P4566855389398327694.a n = A085005 (n + 1)

theorem P4566855389398327694.correct : P4566855389398327694.Spec := by
  intro n
  simp only [A085005, Nat.add_sub_cancel]

end A085005

/-! ## A085005.P16655657958253373015

`-∑[∑[(-1)^∑[A001468(n)]]]`
-/

namespace A085005.P16655657958253373015
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f3 j : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085005.P16655657958253373015

namespace A085005

/-- `-∑[∑[(-1)^∑[A001468(n)]]]` -/
def P16655657958253373015.Spec : Prop :=
  ∀ n, P16655657958253373015.a n = (A085005 (n + 1) : ℚ)

end A085005

/-! ## A085005.P10032972619809504678

`abs(∑[∑[(-1)^A000201(n+1)]])`
-/

namespace A085005.P10032972619809504678
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000201 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A085005.P10032972619809504678

namespace A085005

/-- `abs(∑[∑[(-1)^A000201(n+1)]])` -/
def P10032972619809504678.Spec : Prop :=
  ∀ n, P10032972619809504678.a n = (A085005 (n + 1) : ℚ)

end A085005

/-! ## A085005.P3981218206096317712

`∑[A085004(n+1)]%A069894(n)`
-/

namespace A085005.P3981218206096317712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A069894 n)

end

end A085005.P3981218206096317712

namespace A085005

/-- `∑[A085004(n+1)]%A069894(n)` -/
def P3981218206096317712.Spec : Prop :=
  ∀ n, P3981218206096317712.a n = A085005 (n + 1)

end A085005

/-! ## A085005.P14583155202185574164

`gcd(∑[A085004(n+1)], A000038(n))`
-/

namespace A085005.P14583155202185574164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A085005.P14583155202185574164

namespace A085005

/-- `gcd(∑[A085004(n+1)], A000038(n))` -/
def P14583155202185574164.Spec : Prop :=
  ∀ n, (P14583155202185574164.a n : ℤ) = A085005 (n + 1)

end A085005

/-! ## A085005.P2518067869514111744

`or(∑[A085004(n+1)], A000007(n))`
-/

namespace A085005.P2518067869514111744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A085005.P2518067869514111744

namespace A085005

/-- `or(∑[A085004(n+1)], A000007(n))` -/
def P2518067869514111744.Spec : Prop :=
  ∀ n, P2518067869514111744.a n = A085005 (n + 1)

end A085005

/-! ## A085005.P11076898040036607407

`∑[A085004(n+1)]^gcd(2, A000040(n+1))`
-/

namespace A085005.P11076898040036607407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Int.gcd 2 (A000040 (n + 1))

end

end A085005.P11076898040036607407

namespace A085005

/-- `∑[A085004(n+1)]^gcd(2, A000040(n+1))` -/
def P11076898040036607407.Spec : Prop :=
  ∀ n, P11076898040036607407.a n = A085005 (n + 1)

end A085005

/-! ## A085005.P16538752065214622749

`A000007(n+1)+∑[A085004(n+1)]`
-/

namespace A085005.P16538752065214622749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085005.P16538752065214622749

namespace A085005

/-- `A000007(n+1)+∑[A085004(n+1)]` -/
def P16538752065214622749.Spec : Prop :=
  ∀ n, P16538752065214622749.a n = A085005 (n + 1)

end A085005

/-!
# A085006: Let S(0)={1,1,2} S(n)={S(n-1), S(n-1)-{x},{3-x}} where x is the last element of S(n-1), then sequence is S(infinity).

The programs for A085006, the canonical program `A085006.P10916919082853673245` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085006 has offset 1).

The definition of A085006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085006.P10916919082853673245

`(and(n, ∑[n%3])%3)!`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085006

/-- `(and(n, ∑[n%3])%3)!` -/
def P10916919082853673245.Spec : Prop :=
  ∀ n, (P10916919082853673245.a n : ℤ) = A085006 (n + 1)

theorem P10916919082853673245.correct : P10916919082853673245.Spec := by
  intro n
  simp only [A085006, Nat.add_sub_cancel]

end A085006

/-! ## A085006.P14560591763196574822

`((n*xor(n, n+1))%3)!`
-/

namespace A085006.P14560591763196574822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * Nat.xor n (n + 1) % 3)

end

end A085006.P14560591763196574822

namespace A085006

/-- `((n*xor(n, n+1))%3)!` -/
def P14560591763196574822.Spec : Prop :=
  ∀ n, (P14560591763196574822.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P12167645798864304451

`(lcm(n, xor(n, n+1))%3)!`
-/

namespace A085006.P12167645798864304451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lcm n (Nat.xor n (n + 1)) % 3)

end

end A085006.P12167645798864304451

namespace A085006

/-- `(lcm(n, xor(n, n+1))%3)!` -/
def P12167645798864304451.Spec : Prop :=
  ∀ n, (P12167645798864304451.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P3678228619523062574

`((n^a(floor(n/2)))%3)!` with `a(0)=1`
-/

namespace A085006.P3678228619523062574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n ^ a ⌊(n : ℚ) / 2⌋.toNat % 3)

end

end A085006.P3678228619523062574

namespace A085006

/-- `((n^a(floor(n/2)))%3)!` -/
def P3678228619523062574.Spec : Prop :=
  ∀ n, (P3678228619523062574.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P292529066742900230

`((n²-and(n, n+1))%3)!`
-/

namespace A085006.P292529066742900230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n ^ 2 : ℤ) - (Nat.land n (n + 1) : ℤ)) 3).toNat

end

end A085006.P292529066742900230

namespace A085006

/-- `((n²-and(n, n+1))%3)!` -/
def P292529066742900230.Spec : Prop :=
  ∀ n, (P292529066742900230.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P1148712354578790950

`((n²*and(n, n+1))%3)!`
-/

namespace A085006.P1148712354578790950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n ^ 2 * Nat.land n (n + 1) % 3)

end

end A085006.P1148712354578790950

namespace A085006

/-- `((n²*and(n, n+1))%3)!` -/
def P1148712354578790950.Spec : Prop :=
  ∀ n, (P1148712354578790950.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P3963003204404344145

`gcd(2, val(n+1, 2)^val(n+1, 3))`
-/

namespace A085006.P3963003204404344145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A085006.P3963003204404344145

namespace A085006

/-- `gcd(2, val(n+1, 2)^val(n+1, 3))` -/
def P3963003204404344145.Spec : Prop :=
  ∀ n, (P3963003204404344145.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P13568660814242292697

`(C(n, 2)*xor(n, n+1)+1)%3`
-/

namespace A085006.P13568660814242292697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 * Nat.xor n (n + 1) + 1) % 3

end

end A085006.P13568660814242292697

namespace A085006

/-- `(C(n, 2)*xor(n, n+1)+1)%3` -/
def P13568660814242292697.Spec : Prop :=
  ∀ n, (P13568660814242292697.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P1687720246483974274

`(C(n*(or(n, n+1)+1), 2)+1)%3`
-/

namespace A085006.P1687720246483974274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (Nat.lor n (n + 1) + 1)) 2 + 1) % 3

end

end A085006.P1687720246483974274

namespace A085006

/-- `(C(n*(or(n, n+1)+1), 2)+1)%3` -/
def P1687720246483974274.Spec : Prop :=
  ∀ n, (P1687720246483974274.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P10596822078567532997

`char[A073675(n+1)+n]+1`
-/

namespace A085006.P10596822078567532997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A085006.P10596822078567532997

namespace A085006

/-- `char[A073675(n+1)+n]+1` -/
def P10596822078567532997.Spec : Prop :=
  ∀ n, (P10596822078567532997.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P14594869188011350072

`and(1, -val(A131380(n)+1, 2)²)+1`
-/

namespace A085006.P14594869188011350072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(SequenceMachineLib.valuation (A131380 n + 1).toNat 2 ^ 2 : ℤ)) + 1

end

end A085006.P14594869188011350072

namespace A085006

/-- `and(1, -val(A131380(n)+1, 2)²)+1` -/
def P14594869188011350072.Spec : Prop :=
  ∀ n, P14594869188011350072.a n = A085006 (n + 1)

end A085006

/-! ## A085006.P17615371954862616422

`A007814(∑[char[comp[3*n]+1]]+1)%2+1`
-/

namespace A085006.P17615371954862616422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2 + 1

end

end A085006.P17615371954862616422

namespace A085006

/-- `A007814(∑[char[comp[3*n]+1]]+1)%2+1` -/
def P17615371954862616422.Spec : Prop :=
  ∀ n, P17615371954862616422.a n = A085006 (n + 1)

end A085006

/-! ## A085006.P83373605381942232

`A056832(A130727(n))`
-/

namespace A085006.P83373605381942232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A130727 n).toNat

end

end A085006.P83373605381942232

namespace A085006

/-- `A056832(A130727(n))` -/
def P83373605381942232.Spec : Prop :=
  ∀ n, P83373605381942232.a n = A085006 (n + 1)

end A085006

/-! ## A085006.P2776385604484637175

`A056832(A267808(n))`
-/

namespace A085006.P2776385604484637175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A267808 n).toNat

end

end A085006.P2776385604484637175

namespace A085006

/-- `A056832(A267808(n))` -/
def P2776385604484637175.Spec : Prop :=
  ∀ n, P2776385604484637175.a n = A085006 (n + 1)

end A085006

/-! ## A085006.P950968417461739138

`A056832(A004396(n+1))`
-/

namespace A085006.P950968417461739138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A004396 (n + 1)).toNat

end

end A085006.P950968417461739138

namespace A085006

/-- `A056832(A004396(n+1))` -/
def P950968417461739138.Spec : Prop :=
  ∀ n, P950968417461739138.a n = A085006 (n + 1)

end A085006

/-! ## A085006.P4462987251464437719

`A026465(A060865(n+1))`
-/

namespace A085006.P4462987251464437719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A060865 (n + 1)).toNat

end

end A085006.P4462987251464437719

namespace A085006

/-- `A026465(A060865(n+1))` -/
def P4462987251464437719.Spec : Prop :=
  ∀ n, P4462987251464437719.a n = A085006 (n + 1)

end A085006

/-! ## A085006.P8344655321984050169

`gcd(A059139(n), A122876(n))`
-/

namespace A085006.P8344655321984050169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059139 n) (A122876 n)

end

end A085006.P8344655321984050169

namespace A085006

/-- `gcd(A059139(n), A122876(n))` -/
def P8344655321984050169.Spec : Prop :=
  ∀ n, (P8344655321984050169.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P9770461133477611968

`gcd(A090640(n), A132367(n))`
-/

namespace A085006.P9770461133477611968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090640 n) (A132367 n)

end

end A085006.P9770461133477611968

namespace A085006

/-- `gcd(A090640(n), A132367(n))` -/
def P9770461133477611968.Spec : Prop :=
  ∀ n, (P9770461133477611968.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P12115486976584626311

`gcd(A101669(n), A177702(n))`
-/

namespace A085006.P12115486976584626311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101669 n) (A177702 n)

end

end A085006.P12115486976584626311

namespace A085006

/-- `gcd(A101669(n), A177702(n))` -/
def P12115486976584626311.Spec : Prop :=
  ∀ n, (P12115486976584626311.a n : ℤ) = A085006 (n + 1)

end A085006

/-! ## A085006.P16285689360498563327

`gcd(A130784(n), A261393(n))`
-/

namespace A085006.P16285689360498563327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130784 n) (A261393 n)

end

end A085006.P16285689360498563327

namespace A085006

/-- `gcd(A130784(n), A261393(n))` -/
def P16285689360498563327.Spec : Prop :=
  ∀ n, (P16285689360498563327.a n : ℤ) = A085006 (n + 1)

end A085006

/-!
# A085007: Partial sums of A085006.

The programs for A085007, the canonical program `A085007.P17013764334261680561` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085007 has offset 1).

The definition of A085007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085007.P17013764334261680561

`∑[(and(n, ∑[n%3])%3)!]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085007

/-- `∑[(and(n, ∑[n%3])%3)!]` -/
def P17013764334261680561.Spec : Prop :=
  ∀ n, (P17013764334261680561.a n : ℤ) = A085007 (n + 1)

theorem P17013764334261680561.correct : P17013764334261680561.Spec := by
  intro n
  simp only [A085007, Nat.add_sub_cancel]

end A085007

/-! ## A085007.P14938931321733230302

`∑[((n*xor(n, n+1))%3)!]`
-/

namespace A085007.P14938931321733230302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * Nat.xor n (n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P14938931321733230302

namespace A085007

/-- `∑[((n*xor(n, n+1))%3)!]` -/
def P14938931321733230302.Spec : Prop :=
  ∀ n, (P14938931321733230302.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P9845325461152879273

`∑[(lcm(n, xor(n, n+1))%3)!]`
-/

namespace A085007.P9845325461152879273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lcm n (Nat.xor n (n + 1)) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P9845325461152879273

namespace A085007

/-- `∑[(lcm(n, xor(n, n+1))%3)!]` -/
def P9845325461152879273.Spec : Prop :=
  ∀ n, (P9845325461152879273.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P16403259446998654459

`∑[((n^a(floor(n/2)))%3)!]` with `a(0)=1`
-/

namespace A085007.P16403259446998654459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial (n ^ f1 ⌊(n : ℚ) / 2⌋.toNat % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P16403259446998654459

namespace A085007

/-- `∑[((n^a(floor(n/2)))%3)!]` -/
def P16403259446998654459.Spec : Prop :=
  ∀ n, (P16403259446998654459.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P18271793072957302140

`∑[((n*(or(n, n+1)+1))%3)!]`
-/

namespace A085007.P18271793072957302140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * (Nat.lor n (n + 1) + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P18271793072957302140

namespace A085007

/-- `∑[((n*(or(n, n+1)+1))%3)!]` -/
def P18271793072957302140.Spec : Prop :=
  ∀ n, (P18271793072957302140.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P7585532104330312856

`∑[gcd(2, val(n+1, 2)^val(n+1, 3))]`
-/

namespace A085007.P7585532104330312856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2 ^ SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P7585532104330312856

namespace A085007

/-- `∑[gcd(2, val(n+1, 2)^val(n+1, 3))]` -/
def P7585532104330312856.Spec : Prop :=
  ∀ n, (P7585532104330312856.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P13134653868418055986

`∑[(C(n, 2)*xor(n, n+1)+1)%3]`
-/

namespace A085007.P13134653868418055986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 * Nat.xor n (n + 1) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P13134653868418055986

namespace A085007

/-- `∑[(C(n, 2)*xor(n, n+1)+1)%3]` -/
def P13134653868418055986.Spec : Prop :=
  ∀ n, (P13134653868418055986.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P16467033669968785887

`∑[((2*(n-a(floor(n/2))))%3)!]` with `a(0)=1`
-/

namespace A085007.P16467033669968785887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial (Int.tmod (2 * ((n : ℤ) - (f1 ⌊(n : ℚ) / 2⌋.toNat : ℤ))) 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P16467033669968785887

namespace A085007

/-- `∑[((2*(n-a(floor(n/2))))%3)!]` -/
def P16467033669968785887.Spec : Prop :=
  ∀ n, (P16467033669968785887.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P17441920305197980718

`∑[val(floor(2*n/3)+1, 2)%2+1]`
-/

namespace A085007.P17441920305197980718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊2 * ((n : ℚ) / 3)⌋ + 1).toNat 2 % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P17441920305197980718

namespace A085007

/-- `∑[val(floor(2*n/3)+1, 2)%2+1]` -/
def P17441920305197980718.Spec : Prop :=
  ∀ n, (P17441920305197980718.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P5754397883480663284

`∑[C(and(n, ∑[(2*n)%3])%3, 2)+1]`
-/

namespace A085007.P5754397883480663284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (∑ j ∈ Finset.range (n + 1), f2 j) % 3) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P5754397883480663284

namespace A085007

/-- `∑[C(and(n, ∑[(2*n)%3])%3, 2)+1]` -/
def P5754397883480663284.Spec : Prop :=
  ∀ n, (P5754397883480663284.a n : ℤ) = A085007 (n + 1)

end A085007

/-! ## A085007.P1080008170014832395

`∑[A085006(n+1)]`
-/

namespace A085007.P1080008170014832395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085007.P1080008170014832395

namespace A085007

/-- `∑[A085006(n+1)]` -/
def P1080008170014832395.Spec : Prop :=
  ∀ n, P1080008170014832395.a n = A085007 (n + 1)

theorem P1080008170014832395.correct : P1080008170014832395.Spec := by
  intro n
  simp only [A085007, Nat.add_sub_cancel, A085007.P1080008170014832395.f1, A085007.P1080008170014832395.a, A085007.P17013764334261680561.f2, A085007.P17013764334261680561.f1, A085007.P17013764334261680561.a, A085006, A085006.P10916919082853673245.f1, A085006.P10916919082853673245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085007

/-!
# A085008: a(n)=9*A085007(n)-11*n.

The programs for A085008, the canonical program `A085008.P10450020112681363302` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085008 has offset 1).

The definition of A085008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085007, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085008.P10450020112681363302

`9*A085007(n+1)-11*(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085008

/-- `9*A085007(n+1)-11*(n+1)` -/
def P10450020112681363302.Spec : Prop :=
  ∀ n, P10450020112681363302.a n = A085008 (n + 1)

theorem P10450020112681363302.correct : P10450020112681363302.Spec := by
  intro n
  simp only [A085008, Nat.add_sub_cancel]

end A085008

/-! ## A085008.P15722240409793990731

`Δ[A085009(floor(acot(n)+n))]-2`
-/

namespace A085008.P15722240409793990731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085009 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A085008.P15722240409793990731

namespace A085008

/-- `Δ[A085009(floor(acot(n)+n))]-2` -/
def P15722240409793990731.Spec : Prop :=
  ∀ n, P15722240409793990731.a n = A085008 (n + 1)

end A085008

/-! ## A085008.P5236520993595942309

`Δ[A085009(round(sqrt(n²+1)))]-2`
-/

namespace A085008.P5236520993595942309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085009 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A085008.P5236520993595942309

namespace A085008

/-- `Δ[A085009(round(sqrt(n²+1)))]-2` -/
def P5236520993595942309.Spec : Prop :=
  ∀ n, P5236520993595942309.a n = A085008 (n + 1)

end A085008

/-! ## A085008.P12325580059407604742

`Δ[A085009(floor(sqrt(n²+1)))-2*n]`
-/

namespace A085008.P12325580059407604742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085009 (Nat.sqrt (n ^ 2 + 1)) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085008.P12325580059407604742

namespace A085008

/-- `Δ[A085009(floor(sqrt(n²+1)))-2*n]` -/
def P12325580059407604742.Spec : Prop :=
  ∀ n, P12325580059407604742.a n = A085008 (n + 1)

end A085008

/-! ## A085008.P13410172545046238030

`A085009(n+1)-(A085009(A028310(n))+2)`
-/

namespace A085008.P13410172545046238030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085009 (n + 1) - (A085009 (A028310 n).toNat + 2)

end

end A085008.P13410172545046238030

namespace A085008

/-- `A085009(n+1)-(A085009(A028310(n))+2)` -/
def P13410172545046238030.Spec : Prop :=
  ∀ n, P13410172545046238030.a n = A085008 (n + 1)

end A085008

/-! ## A085008.P15085356547721560678

`A001489(n+2)+Δ[A085009(A028310(n))]+n`
-/

namespace A085008.P15085356547721560678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085009 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 2) + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A085008.P15085356547721560678

namespace A085008

/-- `A001489(n+2)+Δ[A085009(A028310(n))]+n` -/
def P15085356547721560678.Spec : Prop :=
  ∀ n, P15085356547721560678.a n = A085008 (n + 1)

end A085008

/-!
# A085009: "Von Koch" sequence generated by {1,1,2}.

The programs for A085009, the canonical program `A085009.P7184989559632199993` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085009 has offset 1).

The definition of A085009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085009.P7184989559632199993

`∑[A085008(n+1)+2]+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085009

/-- `∑[A085008(n+1)+2]+2` -/
def P7184989559632199993.Spec : Prop :=
  ∀ n, P7184989559632199993.a n = A085009 (n + 1)

theorem P7184989559632199993.correct : P7184989559632199993.Spec := by
  intro n
  simp only [A085009, Nat.add_sub_cancel]

end A085009

/-!
# A085010: a(n)=2^(2^n)*sum(k=0,n,1/2^(2^k)).

The programs for A085010, the canonical program `A085010.P14056434388180856817` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085010 has offset 0).

The definition of A085010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085010.P14056434388180856817

`A074854(2^n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085010

/-- `A074854(2^n)` -/
def P14056434388180856817.Spec : Prop :=
  ∀ n, P14056434388180856817.a n = A085010 n

theorem P14056434388180856817.correct : P14056434388180856817.Spec := by
  intro n
  simp only [A085010]

end A085010

/-! ## A085010.P17346589729958190081

`A260022(2^n-1)`
-/

namespace A085010.P17346589729958190081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260022 (2 ^ n - 1)

end

end A085010.P17346589729958190081

namespace A085010

/-- `A260022(2^n-1)` -/
def P17346589729958190081.Spec : Prop :=
  ∀ n, P17346589729958190081.a n = A085010 n

end A085010

/-! ## A085010.P15915556944922667846

`A267367(2^n-1)`
-/

namespace A085010.P15915556944922667846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267367 (2 ^ n - 1)

end

end A085010.P15915556944922667846

namespace A085010

/-- `A267367(2^n-1)` -/
def P15915556944922667846.Spec : Prop :=
  ∀ n, P15915556944922667846.a n = A085010 n

end A085010

/-! ## A085010.P7822392273047606503

`A006921(2^(n+1)-2)`
-/

namespace A085010.P7822392273047606503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 (2 ^ (n + 1) - 2)

end

end A085010.P7822392273047606503

namespace A085010

/-- `A006921(2^(n+1)-2)` -/
def P7822392273047606503.Spec : Prop :=
  ∀ n, P7822392273047606503.a n = A085010 n

end A085010

/-! ## A085010.P16021633915136202590

`record[A074854(A101508(n))]`
-/

namespace A085010.P16021633915136202590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074854 (A101508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085010.P16021633915136202590

namespace A085010

/-- `record[A074854(A101508(n))]` -/
def P16021633915136202590.Spec : Prop :=
  ∀ n, P16021633915136202590.a n = A085010 n

end A085010

/-!
# A085012: For p = prime(n), a(n) is the smallest prime q such that pq is a base-2 pseudoprime; that is, 2^(pq-1) = 1 mod pq; a(n) is 0 if no such prime exists.

The programs for A085012, there is no canonical definition to state claims against.
-/

/-! ## A085012.P11958366916169251020

`A086019(n+2)^(4*a(n-1)+1)` with `a(0)=0`
-/

namespace A085012.P11958366916169251020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (A086019 (n + 2) : ℝ) ^ (4 * a (n - 1) + 1)

end

end A085012.P11958366916169251020

/-! ## A085012.P4908146822405319612

`A006530(2*((-1)^n+2*8^n)/3)%round(2/3*8^n)`
-/

namespace A085012.P4908146822405319612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (SequenceMachineLib.roundAway (2 * (((-1) ^ n + (2 * 8 ^ n : ℤ) : ℚ) / 3))).toNat) (SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (8 ^ n : ℚ)))

end

end A085012.P4908146822405319612

/-!
# A085013: a(1) = 1; for n>1, a(n) = smallest prime > a(n-1) such that a(1)*...*a(n) + 2 is a prime.

The programs for A085013, there is no canonical definition to state claims against.
-/

/-! ## A085013.P396471296819999652

`A056813(A023523(n+1)*A080513(n))`
-/

namespace A085013.P396471296819999652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A023523 (n + 1) * A080513 n).toNat

end

end A085013.P396471296819999652

/-! ## A085013.P10729414860761085149

`A067567(lt[A059614(n+1)%A331315(2*n+1), 2]+1)`
-/

namespace A085013.P10729414860761085149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059614 (n + 1)) (A331315 (2 * n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067567 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A085013.P10729414860761085149

/-! ## A085013.P16525751629407902368

`A008578(lt[A000700(n+4), A066839(n+5)])`
-/

namespace A085013.P16525751629407902368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085013.P16525751629407902368

/-! ## A085013.P18004038344172857648

`∑[A181819(∑[A134592(n+2)])]`
-/

namespace A085013.P18004038344172857648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134592 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085013.P18004038344172857648

/-!
# A085014: For p = prime(n), a(n) is the number of primes q such that pq is a base-2 pseudoprime; that is, 2^(pq-1) = 1 mod pq.

The programs for A085014, there is no canonical definition to state claims against.
-/

/-! ## A085014.P1845465231919552545

`A275849(A004396(Δ[A001405(n)]))`
-/

namespace A085014.P1845465231919552545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A004396 (f1 (n + 1) - f1 n).toNat).toNat

end

end A085014.P1845465231919552545

/-! ## A085014.P9810792007404078594

`A000194(A066505(2*n+1)%A028310(n))`
-/

namespace A085014.P9810792007404078594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A066505 (2 * n + 1)) (A028310 n)).toNat

end

end A085014.P9810792007404078594

/-! ## A085014.P12763280272719959497

`A303975(A187244(n))`
-/

namespace A085014.P12763280272719959497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A187244 n).toNat

end

end A085014.P12763280272719959497

/-! ## A085014.P2509501264351218791

`A126387(Δ[A004696(n)])`
-/

namespace A085014.P2509501264351218791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (f1 (n + 1) - f1 n).toNat

end

end A085014.P2509501264351218791

/-! ## A085014.P7113239849668421341

`A368779(A146913(n+1))`
-/

namespace A085014.P7113239849668421341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (A146913 (n + 1)).toNat

end

end A085014.P7113239849668421341

/-!
# A085015: Multiplicity of the root 1 in the characteristic polynomial mod 2 of the n X n matrix with entries binomial(i+j,i), 0<=i,j<n.

The programs for A085015, there is no canonical definition to state claims against.
-/

/-! ## A085015.P5173366186688109239

`n-2*A084117(n)`
-/

namespace A085015.P5173366186688109239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A084117 n

end

end A085015.P5173366186688109239

/-! ## A085015.P678225899787938899

`n-A005843(A084117(n))`
-/

namespace A085015.P678225899787938899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A084117 n).toNat

end

end A085015.P678225899787938899

/-! ## A085015.P13692752824863110325

`A001489(2*A084117(n))+n`
-/

namespace A085015.P13692752824863110325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * A084117 n).toNat + (n : ℤ)

end

end A085015.P13692752824863110325

/-! ## A085015.P2481588420381405186

`A064680(n-A084117(n))-n`
-/

namespace A085015.P2481588420381405186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((n : ℤ) - A084117 n).toNat - (n : ℤ)

end

end A085015.P2481588420381405186

/-! ## A085015.P1876891628597310566

`A000027(n+1)-A005408(A084117(n))`
-/

namespace A085015.P1876891628597310566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A005408 (A084117 n).toNat

end

end A085015.P1876891628597310566

/-! ## A085015.P15333309063576641833

`A005408(n)-n-A005408(A084117(n))`
-/

namespace A085015.P15333309063576641833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - A005408 (A084117 n).toNat

end

end A085015.P15333309063576641833

/-! ## A085015.P10813270094810998686

`n-(A084117(n)+A084117(n)%A121968(n+1))`
-/

namespace A085015.P10813270094810998686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A084117 n + Int.tmod (A084117 n) (A121968 (n + 1)))

end

end A085015.P10813270094810998686

/-! ## A085015.P8857085504210806785

`A099375(A084117(n)+∑[n])-(n+1)`
-/

namespace A085015.P8857085504210806785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A084117 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - (n + 1 : ℤ)

end

end A085015.P8857085504210806785

/-! ## A085015.P9093184579216832341

`A114327(A084117(n)+∑[n])`
-/

namespace A085015.P9093184579216832341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A084117 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A085015.P9093184579216832341

/-!
# A085016: Prime(n) concatenated with Reverse(Prime(n)) (a palindrome) is divisible by n.

The programs for A085016, there is no canonical definition to state claims against.
-/

/-! ## A085016.P13283799296222242894

`A115985(A128386(n+1))`
-/

namespace A085016.P13283799296222242894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (A128386 (n + 1)).toNat

end

end A085016.P13283799296222242894

/-!
# A085018: Numbers n such that there is no divisor m of n with m<n and A083752(n) = (n/m)A083752(m).

The programs for A085018, there is no canonical definition to state claims against.
-/

/-! ## A085018.P13411215930852177087

`eq[1, gcd(n, A083752(abs(1-n)+1))]`
-/

namespace A085018.P13411215930852177087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A083752 (|1 - (n : ℤ)| + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085018.P13411215930852177087

/-! ## A085018.P2536936905990072426

`eq[1, gcd(n+1, A083752(n+1))]+1`
-/

namespace A085018.P2536936905990072426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A083752 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A085018.P2536936905990072426

/-! ## A085018.P16400604412867192886

`record[gcd(A185044(n), A244291(n+1))]`
-/

namespace A085018.P16400604412867192886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185044 n) (A244291 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085018.P16400604412867192886

/-! ## A085018.P4156818416734545949

`A244291(A008300(A265609(n))+n)`
-/

namespace A085018.P4156818416734545949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244291 (A008300 (A265609 n).toNat + (n : ℤ)).toNat

end

end A085018.P4156818416734545949

/-! ## A085018.P7402831141637637541

`A244291(∑[A256161(A256161(n+1))])`
-/

namespace A085018.P7402831141637637541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256161 (A256161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244291 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085018.P7402831141637637541

/-!
# A085019: a(n) = A083752(A085018(n)).

The programs for A085019, there is no canonical definition to state claims against.
-/

/-! ## A085019.P11263996772857547175

`A083752(A085018(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085019.P11263996772857547175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083752 (A085018 (n + 1)).toNat

end

end A085019.P11263996772857547175

/-! ## A085019.P5458229588863204209

`A083752(eq[1, gcd(n+1, A083752(n+1))]+1)`
-/

namespace A085019.P5458229588863204209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A083752 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083752 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A085019.P5458229588863204209

/-!
# A085020: a(n) = Sum_{d|n, (d+1) prime} (d + 1).

The programs for A085020, the canonical program `A085020.P16835461110342014279` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085020 has offset 1).

The definition of A085020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085020.P5507578491895562481

`∑{d}[n+1, C(A006530(#+1), #)]`
-/

namespace A085020.P5507578491895562481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A006530 (d + 1)).toNat d

end

end A085020.P5507578491895562481

namespace A085020

/-- `∑{d}[n+1, C(A006530(#+1), #)]` -/
def P5507578491895562481.Spec : Prop :=
  ∀ n, (P5507578491895562481.a n : ℤ) = A085020 (n + 1)

end A085020

/-! ## A085020.P18068547137940763127

`∑{d}[n+1, C(A020639(#+1), #)]`
-/

namespace A085020.P18068547137940763127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A020639 (d + 1)).toNat d

end

end A085020.P18068547137940763127

namespace A085020

/-- `∑{d}[n+1, C(A020639(#+1), #)]` -/
def P18068547137940763127.Spec : Prop :=
  ∀ n, (P18068547137940763127.a n : ℤ) = A085020 (n + 1)

end A085020

/-! ## A085020.P16835461110342014279

`∑{d}[n+1, (#+1)*A010051(#+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085020

/-- `∑{d}[n+1, (#+1)*A010051(#+1)]` -/
def P16835461110342014279.Spec : Prop :=
  ∀ n, P16835461110342014279.a n = A085020 (n + 1)

theorem P16835461110342014279.correct : P16835461110342014279.Spec := by
  intro n
  simp only [A085020, Nat.add_sub_cancel]

end A085020

/-! ## A085020.P11069172258992800022

`∑{d}[n+1, A061397(#+1)]`
-/

namespace A085020.P11069172258992800022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 (d + 1)

end

end A085020.P11069172258992800022

namespace A085020

/-- `∑{d}[n+1, A061397(#+1)]` -/
def P11069172258992800022.Spec : Prop :=
  ∀ n, P11069172258992800022.a n = A085020 (n + 1)

end A085020

/-! ## A085020.P14904279766580712125

`∑{d}[n+1, C(A014963(#+1), #)]`
-/

namespace A085020.P14904279766580712125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A014963 (d + 1)).toNat d

end

end A085020.P14904279766580712125

namespace A085020

/-- `∑{d}[n+1, C(A014963(#+1), #)]` -/
def P14904279766580712125.Spec : Prop :=
  ∀ n, (P14904279766580712125.a n : ℤ) = A085020 (n + 1)

end A085020

/-! ## A085020.P16229224475712024319

`∑{d}[n+1, A008472(A089026(#+1))]`
-/

namespace A085020.P16229224475712024319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 (A089026 (d + 1)).toNat

end

end A085020.P16229224475712024319

namespace A085020

/-- `∑{d}[n+1, A008472(A089026(#+1))]` -/
def P16229224475712024319.Spec : Prop :=
  ∀ n, P16229224475712024319.a n = A085020 (n + 1)

end A085020

/-!
# A085021: Number of prime factors of cyclotomic(n,2), which is A019320(n), the value of the n-th cyclotomic polynomial evaluated at x=2.

The programs for A085021, the canonical program `A085021.P7535736726841233516` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085021 has offset 1).

The definition of A085021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085021.P7535736726841233516

`∑{d}[n+1, A008683(#)*A046051((n+1)/#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085021

/-- `∑{d}[n+1, A008683(#)*A046051((n+1)/#)]` -/
def P7535736726841233516.Spec : Prop :=
  ∀ n, P7535736726841233516.a n = A085021 (n + 1)

theorem P7535736726841233516.correct : P7535736726841233516.Spec := by
  intro n
  simp only [A085021, Nat.add_sub_cancel]

end A085021

/-! ## A085021.P11232701073533453407

`A086251(n+1)+A001222(A250208(n+1))`
-/

namespace A085021.P11232701073533453407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (n + 1) + A001222 (A250208 (n + 1)).toNat

end

end A085021.P11232701073533453407

namespace A085021

/-- `A086251(n+1)+A001222(A250208(n+1))` -/
def P11232701073533453407.Spec : Prop :=
  ∀ n, P11232701073533453407.a n = A085021 (n + 1)

end A085021

/-! ## A085021.P13017013042622753142

`A001222(A063982(n+1)*A250208(n+1))`
-/

namespace A085021.P13017013042622753142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063982 (n + 1) * A250208 (n + 1)).toNat

end

end A085021.P13017013042622753142

namespace A085021

/-- `A001222(A063982(n+1)*A250208(n+1))` -/
def P13017013042622753142.Spec : Prop :=
  ∀ n, P13017013042622753142.a n = A085021 (n + 1)

end A085021

/-! ## A085021.P16411991228506318529

`A001222(lcm(A063982(n+1), A250208(n+1)))`
-/

namespace A085021.P16411991228506318529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A063982 (n + 1)) (A250208 (n + 1)))

end

end A085021.P16411991228506318529

namespace A085021

/-- `A001222(lcm(A063982(n+1), A250208(n+1)))` -/
def P16411991228506318529.Spec : Prop :=
  ∀ n, P16411991228506318529.a n = A085021 (n + 1)

end A085021

/-! ## A085021.P1269802769934130063

`A086251(n+1)+A024361(A250208(n+1)²)`
-/

namespace A085021.P1269802769934130063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (n + 1) + A024361 (A250208 (n + 1) ^ 2).toNat

end

end A085021.P1269802769934130063

namespace A085021

/-- `A086251(n+1)+A024361(A250208(n+1)²)` -/
def P1269802769934130063.Spec : Prop :=
  ∀ n, P1269802769934130063.a n = A085021 (n + 1)

end A085021

/-!
# A085022: Integer floor of coefficients of exp(x*A(x)).

The programs for A085022, there is no canonical definition to state claims against.
-/

/-! ## A085022.P17358227383069799456

`floor(A085023(n)/n!)`
-/

namespace A085022.P17358227383069799456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085023 n : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A085022.P17358227383069799456

/-! ## A085022.P15927163878263230756

`floor(A085023(n)/A000142(n))`
-/

namespace A085022.P15927163878263230756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085023 n : ℚ) / (A000142 n : ℚ)⌋

end

end A085022.P15927163878263230756

/-! ## A085022.P209296711464239745

`A036443(A151359(n))+A004148(n)`
-/

namespace A085022.P209296711464239745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036443 (A151359 n).toNat + A004148 n

end

end A085022.P209296711464239745

/-! ## A085022.P5330414828715114003

`A029931(A185293(n))+A004148(n)`
-/

namespace A085022.P5330414828715114003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A185293 n).toNat + A004148 n

end

end A085022.P5330414828715114003

/-! ## A085022.P3248834840740498534

`A097724(∑[n])+A036443(A151359(n))`
-/

namespace A085022.P3248834840740498534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j) + A036443 (A151359 n).toNat

end

end A085022.P3248834840740498534

/-!
# A085023: E.g.f. satisfies exp(x*Sum_{n>=0} floor(a(n)/n!)*x^n) = Sum_{n>=0} a(n)*x^n/n!.

The programs for A085023, there is no canonical definition to state claims against.
-/

/-! ## A085023.P7721299061622851285

`A063272(3*(n+1)^(n-1))`
-/

namespace A085023.P7721299061622851285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (SequenceMachineLib.roundAway (3 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A085023.P7721299061622851285

/-! ## A085023.P13886326239182694748

`A057174(2*C(n, 2)*ceil((n/2)^n/2))`
-/

namespace A085023.P13886326239182694748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (2 * ((Nat.choose n 2 : ℤ) * ⌈((n : ℚ) / 2) ^ n / 2⌉)).toNat

end

end A085023.P13886326239182694748

/-!
# A085025: a(n) = (5*n+1)*(5*n+6).

The programs for A085025, the canonical program `A085025.P12929221770582698111` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085025 has offset 0).

The definition of A085025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)*(5*n+6)` (program `A085025.P12929221770582698111`, by `A085025.P12929221770582698111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085025.P11835064858211931465

`ogf((6+48x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A085025.P11835064858211931465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 48, -4] [1, -3, 3, -1] n

end

end A085025.P11835064858211931465

namespace A085025

/-- `ogf((6+48x-4x^2)/(1-3x+3x^2-x^3))` -/
def P11835064858211931465.Spec : Prop :=
  ∀ n, P11835064858211931465.a n = A085025 n

end A085025

/-! ## A085025.P12929221770582698111

`(5*n+1)*(5*n+6)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085025

/-- `(5*n+1)*(5*n+6)` -/
def P12929221770582698111.Spec : Prop :=
  ∀ n, (P12929221770582698111.a n : ℤ) = A085025 n

theorem P12929221770582698111.correct : P12929221770582698111.Spec := by
  intro n
  simp only [A085025]

end A085025

/-! ## A085025.P17183335827580766746

`A177059(n)+10*n`
-/

namespace A085025.P17183335827580766746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177059 n + (10 * n : ℤ)

end

end A085025.P17183335827580766746

namespace A085025

/-- `A177059(n)+10*n` -/
def P17183335827580766746.Spec : Prop :=
  ∀ n, P17183335827580766746.a n = A085025 n

theorem P17183335827580766746.correct : P17183335827580766746.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P17183335827580766746.a, A085025.P12929221770582698111.a, A177059, A177059.P11129240338913351021.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P18102817748113821151

`10*n+2+A001545(n)`
-/

namespace A085025.P18102817748113821151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 2 : ℤ) + A001545 n

end

end A085025.P18102817748113821151

namespace A085025

/-- `10*n+2+A001545(n)` -/
def P18102817748113821151.Spec : Prop :=
  ∀ n, P18102817748113821151.a n = A085025 n

theorem P18102817748113821151.correct : P18102817748113821151.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P18102817748113821151.a, A085025.P12929221770582698111.a, A001545, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P3337607096523974977

`A260955(n)+A119412(n)`
-/

namespace A085025.P3337607096523974977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 n + A119412 n

end

end A085025.P3337607096523974977

namespace A085025

/-- `A260955(n)+A119412(n)` -/
def P3337607096523974977.Spec : Prop :=
  ∀ n, P3337607096523974977.a n = A085025 n

theorem P3337607096523974977.correct : P3337607096523974977.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P3337607096523974977.a, A085025.P12929221770582698111.a, A119412, A119412.P15416208441613043438.a, A260955, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P17402407497516440435

`A085036(n)-A017365(n)`
-/

namespace A085025.P17402407497516440435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085036 n - A017365 n

end

end A085025.P17402407497516440435

namespace A085025

/-- `A085036(n)-A017365(n)` -/
def P17402407497516440435.Spec : Prop :=
  ∀ n, P17402407497516440435.a n = A085025 n

theorem P17402407497516440435.correct : P17402407497516440435.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P17402407497516440435.a, A085025.P12929221770582698111.a, A017365, A017365.P3452265278948084008.a, A085036, A085036.P15029211055883950249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P1268001373948599502

`A158446(n+1)-A257645(n)`
-/

namespace A085025.P1268001373948599502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158446 (n + 1) - A257645 n

end

end A085025.P1268001373948599502

namespace A085025

/-- `A158446(n+1)-A257645(n)` -/
def P1268001373948599502.Spec : Prop :=
  ∀ n, P1268001373948599502.a n = A085025 n

theorem P1268001373948599502.correct : P1268001373948599502.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P1268001373948599502.a, A085025.P12929221770582698111.a, A158446, A158446.P2202915940345529395.a, A257645, A257645.P14432218990266036054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P12340258815246385822

`lcm(A168459(n+1), A168460(n+1))`
-/

namespace A085025.P12340258815246385822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168459 (n + 1)) (A168460 (n + 1))

end

end A085025.P12340258815246385822

namespace A085025

/-- `lcm(A168459(n+1), A168460(n+1))` -/
def P12340258815246385822.Spec : Prop :=
  ∀ n, (P12340258815246385822.a n : ℤ) = A085025 n

end A085025

/-! ## A085025.P12954014301569701347

`sqrt(A016862(n+1)*A016862(n))`
-/

namespace A085025.P12954014301569701347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016862 (n + 1) * A016862 n : ℝ)

end

end A085025.P12954014301569701347

namespace A085025

/-- `sqrt(A016862(n+1)*A016862(n))` -/
def P12954014301569701347.Spec : Prop :=
  ∀ n, P12954014301569701347.a n = (A085025 n : ℝ)

end A085025

/-! ## A085025.P16102998291326687039

`A016885(n+1)+A016898(n)-A017365(n+1)`
-/

namespace A085025.P16102998291326687039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (n + 1) + (A016898 n - A017365 (n + 1))

end

end A085025.P16102998291326687039

namespace A085025

/-- `A016885(n+1)+A016898(n)-A017365(n+1)` -/
def P16102998291326687039.Spec : Prop :=
  ∀ n, P16102998291326687039.a n = A085025 n

theorem P16102998291326687039.correct : P16102998291326687039.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P16102998291326687039.a, A085025.P12929221770582698111.a, A016885, A016885.P12442016633976001399.a, A016898, A016898.P14343272817953415938.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P15642589030470289223

`A217893(n+1)+A217893(n+2)`
-/

namespace A085025.P15642589030470289223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217893 (n + 1) + A217893 (n + 2)

end

end A085025.P15642589030470289223

namespace A085025

/-- `A217893(n+1)+A217893(n+2)` -/
def P15642589030470289223.Spec : Prop :=
  ∀ n, P15642589030470289223.a n = A085025 n

end A085025

/-! ## A085025.P18347505462235413624

`A104675(5*n)`
-/

namespace A085025.P18347505462235413624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 (5 * n)

end

end A085025.P18347505462235413624

namespace A085025

/-- `A104675(5*n)` -/
def P18347505462235413624.Spec : Prop :=
  ∀ n, P18347505462235413624.a n = A085025 n

end A085025

/-! ## A085025.P16893036480408113645

`A028557(4*n+n+1)`
-/

namespace A085025.P16893036480408113645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (4 * n + (n + 1))

end

end A085025.P16893036480408113645

namespace A085025

/-- `A028557(4*n+n+1)` -/
def P16893036480408113645.Spec : Prop :=
  ∀ n, P16893036480408113645.a n = A085025 n

theorem P16893036480408113645.correct : P16893036480408113645.Spec := by
  intro n
  simp only [A085025, Nat.add_sub_cancel, A085025.P16893036480408113645.a, A085025.P12929221770582698111.a, A028557, A028557.P14629390258788046737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085025

/-! ## A085025.P17619192384216079588

`A036572(A017317(n))`
-/

namespace A085025.P17619192384216079588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036572 (A017317 n).toNat

end

end A085025.P17619192384216079588

namespace A085025

/-- `A036572(A017317(n))` -/
def P17619192384216079588.Spec : Prop :=
  ∀ n, P17619192384216079588.a n = A085025 n

end A085025

/-! ## A085025.P5294684805238391044

`A016861(n+1)*A051945(n)/A000108(n)`
-/

namespace A085025.P5294684805238391044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 (n + 1) * A051945 n : ℚ) / (A000108 n : ℚ)

end

end A085025.P5294684805238391044

namespace A085025

/-- `A016861(n+1)*A051945(n)/A000108(n)` -/
def P5294684805238391044.Spec : Prop :=
  ∀ n, P5294684805238391044.a n = (A085025 n : ℚ)

end A085025

/-!
# A085026: a(n) = (6*n+1)*(6*n+7).

The programs for A085026, the canonical program `A085026.P9623202091202696306` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085026 has offset 0).

The definition of A085026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)*(6*n+7)` (program `A085026.P9623202091202696306`, by `A085026.P9623202091202696306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085026.P13504471716807411368

`ogf((7+70x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A085026.P13504471716807411368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 70, -5] [1, -3, 3, -1] n

end

end A085026.P13504471716807411368

namespace A085026

/-- `ogf((7+70x-5x^2)/(1-3x+3x^2-x^3))` -/
def P13504471716807411368.Spec : Prop :=
  ∀ n, P13504471716807411368.a n = A085026 n

end A085026

/-! ## A085026.P9623202091202696306

`(6*n+1)*(6*n+7)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085026

/-- `(6*n+1)*(6*n+7)` -/
def P9623202091202696306.Spec : Prop :=
  ∀ n, (P9623202091202696306.a n : ℤ) = A085026 n

theorem P9623202091202696306.correct : P9623202091202696306.Spec := by
  intro n
  simp only [A085026]

end A085026

/-! ## A085026.P3567669298291556168

`A016958(n)-9`
-/

namespace A085026.P3567669298291556168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n - 9

end

end A085026.P3567669298291556168

namespace A085026

/-- `A016958(n)-9` -/
def P3567669298291556168.Spec : Prop :=
  ∀ n, P3567669298291556168.a n = A085026 n

theorem P3567669298291556168.correct : P3567669298291556168.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P3567669298291556168.a, A085026.P9623202091202696306.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P11999778815509161981

`A017545(n)+A001513(n)`
-/

namespace A085026.P11999778815509161981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A001513 n

end

end A085026.P11999778815509161981

namespace A085026

/-- `A017545(n)+A001513(n)` -/
def P11999778815509161981.Spec : Prop :=
  ∀ n, P11999778815509161981.a n = A085026 n

theorem P11999778815509161981.correct : P11999778815509161981.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P11999778815509161981.a, A085026.P9623202091202696306.a, A001513, A001513.P5743200650267435422.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P9493611148260781993

`A144449(n)-A017629(n)`
-/

namespace A085026.P9493611148260781993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144449 n - A017629 n

end

end A085026.P9493611148260781993

namespace A085026

/-- `A144449(n)-A017629(n)` -/
def P9493611148260781993.Spec : Prop :=
  ∀ n, P9493611148260781993.a n = A085026 n

theorem P9493611148260781993.correct : P9493611148260781993.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P9493611148260781993.a, A085026.P9623202091202696306.a, A017629, A017629.P13557474233053533782.a, A144449, A144449.P16112728441674391944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P14115069536663896988

`lcm(A016969(n)+2, A016921(n))`
-/

namespace A085026.P14115069536663896988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016969 n + 2) (A016921 n)

end

end A085026.P14115069536663896988

namespace A085026

/-- `lcm(A016969(n)+2, A016921(n))` -/
def P14115069536663896988.Spec : Prop :=
  ∀ n, (P14115069536663896988.a n : ℤ) = A085026 n

end A085026

/-! ## A085026.P10726871685639958748

`Δ[(n-1)*A154105(n)]`
-/

namespace A085026.P10726871685639958748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A154105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085026.P10726871685639958748

namespace A085026

/-- `Δ[(n-1)*A154105(n)]` -/
def P10726871685639958748.Spec : Prop :=
  ∀ n, P10726871685639958748.a n = A085026 n

theorem P10726871685639958748.correct : P10726871685639958748.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P10726871685639958748.f1, A085026.P10726871685639958748.a, A085026.P9623202091202696306.a, A154105, A154105.P6664719848169599409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P12323188036308455556

`sqrt(A016922(n+1)*A016922(n))`
-/

namespace A085026.P12323188036308455556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016922 (n + 1) * A016922 n : ℝ)

end

end A085026.P12323188036308455556

namespace A085026

/-- `sqrt(A016922(n+1)*A016922(n))` -/
def P12323188036308455556.Spec : Prop :=
  ∀ n, P12323188036308455556.a n = (A085026 n : ℝ)

end A085026

/-! ## A085026.P17682933111530637165

`A016921(n+1)*A016926(n)/A016925(n)`
-/

namespace A085026.P17682933111530637165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 (n + 1) * A016926 n : ℚ) / (A016925 n : ℚ)

end

end A085026.P17682933111530637165

namespace A085026

/-- `A016921(n+1)*A016926(n)/A016925(n)` -/
def P17682933111530637165.Spec : Prop :=
  ∀ n, P17682933111530637165.a n = (A085026 n : ℚ)

theorem P17682933111530637165.correct : P17682933111530637165.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P17682933111530637165.a, A085026.P9623202091202696306.a, A016921, A016921.P18318603358862595186.a, A016925, A016925.P3935835382959505019.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P4564277197702841466

`A016921(n+1)*A016927(n)/A016926(n)`
-/

namespace A085026.P4564277197702841466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 (n + 1) * A016927 n : ℚ) / (A016926 n : ℚ)

end

end A085026.P4564277197702841466

namespace A085026

/-- `A016921(n+1)*A016927(n)/A016926(n)` -/
def P4564277197702841466.Spec : Prop :=
  ∀ n, P4564277197702841466.a n = (A085026 n : ℚ)

theorem P4564277197702841466.correct : P4564277197702841466.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P4564277197702841466.a, A085026.P9623202091202696306.a, A016921, A016921.P18318603358862595186.a, A016926, A016926.P17236842597661192459.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P1050692117051001346

`A016921(n+1)*A016928(n)/A016927(n)`
-/

namespace A085026.P1050692117051001346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 (n + 1) * A016928 n : ℚ) / (A016927 n : ℚ)

end

end A085026.P1050692117051001346

namespace A085026

/-- `A016921(n+1)*A016928(n)/A016927(n)` -/
def P1050692117051001346.Spec : Prop :=
  ∀ n, P1050692117051001346.a n = (A085026 n : ℚ)

theorem P1050692117051001346.correct : P1050692117051001346.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P1050692117051001346.a, A085026.P9623202091202696306.a, A016921, A016921.P18318603358862595186.a, A016927, A016927.P17931775019733470070.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P5174637111666294375

`A016921(n+1)*A016929(n)/A016928(n)`
-/

namespace A085026.P5174637111666294375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 (n + 1) * A016929 n : ℚ) / (A016928 n : ℚ)

end

end A085026.P5174637111666294375

namespace A085026

/-- `A016921(n+1)*A016929(n)/A016928(n)` -/
def P5174637111666294375.Spec : Prop :=
  ∀ n, P5174637111666294375.a n = (A085026 n : ℚ)

theorem P5174637111666294375.correct : P5174637111666294375.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P5174637111666294375.a, A085026.P9623202091202696306.a, A016921, A016921.P18318603358862595186.a, A016928, A016928.P17353680663625733348.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P1786655273689622666

`A187157(n+3)-1`
-/

namespace A085026.P1786655273689622666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187157 (n + 3) - 1

end

end A085026.P1786655273689622666

namespace A085026

/-- `A187157(n+3)-1` -/
def P1786655273689622666.Spec : Prop :=
  ∀ n, P1786655273689622666.a n = A085026 n

end A085026

/-! ## A085026.P18370212047388802497

`A016778(2*n+1)-9`
-/

namespace A085026.P18370212047388802497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (2 * n + 1) - 9

end

end A085026.P18370212047388802497

namespace A085026

/-- `A016778(2*n+1)-9` -/
def P18370212047388802497.Spec : Prop :=
  ∀ n, P18370212047388802497.a n = A085026 n

theorem P18370212047388802497.correct : P18370212047388802497.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P18370212047388802497.a, A085026.P9623202091202696306.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P2498580564872089675

`A085001(2*n)+A017197(2*n)`
-/

namespace A085026.P2498580564872089675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085001 (2 * n) + A017197 (2 * n)

end

end A085026.P2498580564872089675

namespace A085026

/-- `A085001(2*n)+A017197(2*n)` -/
def P2498580564872089675.Spec : Prop :=
  ∀ n, P2498580564872089675.a n = A085026 n

theorem P2498580564872089675.correct : P2498580564872089675.Spec := by
  intro n
  simp only [A085026, Nat.add_sub_cancel, A085026.P2498580564872089675.a, A085026.P9623202091202696306.a, A017197, A017197.P8201470797211874866.a, A085001, A085001.P12336604872008909945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085026

/-! ## A085026.P18065817130819004470

`A144450(3*n+1)`
-/

namespace A085026.P18065817130819004470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144450 (3 * n + 1)

end

end A085026.P18065817130819004470

namespace A085026

/-- `A144450(3*n+1)` -/
def P18065817130819004470.Spec : Prop :=
  ∀ n, P18065817130819004470.a n = A085026 n

end A085026

/-! ## A085026.P17248568652020765513

`A028560(A016921(n))`
-/

namespace A085026.P17248568652020765513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (A016921 n).toNat

end

end A085026.P17248568652020765513

namespace A085026

/-- `A028560(A016921(n))` -/
def P17248568652020765513.Spec : Prop :=
  ∀ n, P17248568652020765513.a n = A085026 n

end A085026

/-! ## A085026.P16592282201101591644

`A061039(A016957(n))`
-/

namespace A085026.P16592282201101591644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (A016957 n).toNat

end

end A085026.P16592282201101591644

namespace A085026

/-- `A061039(A016957(n))` -/
def P16592282201101591644.Spec : Prop :=
  ∀ n, P16592282201101591644.a n = A085026 n

end A085026

/-! ## A085026.P11887986606845233531

`A061039(2*A016789(n))`
-/

namespace A085026.P11887986606845233531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (2 * A016789 n).toNat

end

end A085026.P11887986606845233531

namespace A085026

/-- `A061039(2*A016789(n))` -/
def P11887986606845233531.Spec : Prop :=
  ∀ n, P11887986606845233531.a n = A085026 n

end A085026

/-! ## A085026.P14421155847250909732

`A061039(A016777(2*n+1))`
-/

namespace A085026.P14421155847250909732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (A016777 (2 * n + 1)).toNat

end

end A085026.P14421155847250909732

namespace A085026

/-- `A061039(A016777(2*n+1))` -/
def P14421155847250909732.Spec : Prop :=
  ∀ n, P14421155847250909732.a n = A085026 n

end A085026

/-!
# A085027: a(n) = (4*n+3)*(4*n+7).

The programs for A085027, the canonical program `A085027.P5010476127013352924` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085027 has offset 0).

The definition of A085027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)*(4*n+7)` (program `A085027.P5010476127013352924`, by `A085027.P5010476127013352924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085027.P16134805712713066209

`ogf((21+14x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A085027.P16134805712713066209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 14, -3] [1, -3, 3, -1] n

end

end A085027.P16134805712713066209

namespace A085027

/-- `ogf((21+14x-3x^2)/(1-3x+3x^2-x^3))` -/
def P16134805712713066209.Spec : Prop :=
  ∀ n, P16134805712713066209.a n = A085027 n

end A085027

/-! ## A085027.P7305888371610080129

`16*n²+40*n+21`
-/

namespace A085027.P7305888371610080129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n ^ 2 + 40 * n + 21

end

end A085027.P7305888371610080129

namespace A085027

/-- `16*n²+40*n+21` -/
def P7305888371610080129.Spec : Prop :=
  ∀ n, (P7305888371610080129.a n : ℤ) = A085027 n

theorem P7305888371610080129.correct : P7305888371610080129.Spec := by
  intro n
  simp only [A085027, Nat.add_sub_cancel, A085027.P7305888371610080129.a, A085027.P5010476127013352924.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A085027

/-! ## A085027.P5010476127013352924

`(4*n+3)*(4*n+7)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085027

/-- `(4*n+3)*(4*n+7)` -/
def P5010476127013352924.Spec : Prop :=
  ∀ n, (P5010476127013352924.a n : ℤ) = A085027 n

theorem P5010476127013352924.correct : P5010476127013352924.Spec := by
  intro n
  simp only [A085027]

end A085027

/-! ## A085027.P18418597371613034336

`record[(n+7)*xor(3, n)]`
-/

namespace A085027.P18418597371613034336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 7) * Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085027.P18418597371613034336

namespace A085027

/-- `record[(n+7)*xor(3, n)]` -/
def P18418597371613034336.Spec : Prop :=
  ∀ n, (P18418597371613034336.a n : ℤ) = A085027 n

end A085027

/-! ## A085027.P10716310154133286449

`xor(2, A004766(n+1)²-2)`
-/

namespace A085027.P10716310154133286449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A004766 (n + 1) ^ 2 - 2)

end

end A085027.P10716310154133286449

namespace A085027

/-- `xor(2, A004766(n+1)²-2)` -/
def P10716310154133286449.Spec : Prop :=
  ∀ n, P10716310154133286449.a n = A085027 n

end A085027

/-! ## A085027.P12897310279588670290

`A154633(n)/A003185(n)`
-/

namespace A085027.P12897310279588670290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154633 n : ℚ) / (A003185 n : ℚ)

end

end A085027.P12897310279588670290

namespace A085027

/-- `A154633(n)/A003185(n)` -/
def P12897310279588670290.Spec : Prop :=
  ∀ n, P12897310279588670290.a n = (A085027 n : ℚ)

end A085027

/-! ## A085027.P4260345655439557897

`A133767(n)/A004766(n+1)`
-/

namespace A085027.P4260345655439557897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133767 n : ℚ) / (A004766 (n + 1) : ℚ)

end

end A085027.P4260345655439557897

namespace A085027

/-- `A133767(n)/A004766(n+1)` -/
def P4260345655439557897.Spec : Prop :=
  ∀ n, P4260345655439557897.a n = (A085027 n : ℚ)

theorem P4260345655439557897.correct : P4260345655439557897.Spec := by
  intro n
  simp only [A085027, Nat.add_sub_cancel, A085027.P4260345655439557897.a, A085027.P5010476127013352924.a, A004766, A004766.P16471747092736184313.a, A133767, A133767.P3610967247197320980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085027

/-! ## A085027.P5138853480736635387

`lcm(A168378(n+1), A168379(n+1))`
-/

namespace A085027.P5138853480736635387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168378 (n + 1)) (A168379 (n + 1))

end

end A085027.P5138853480736635387

namespace A085027

/-- `lcm(A168378(n+1), A168379(n+1))` -/
def P5138853480736635387.Spec : Prop :=
  ∀ n, (P5138853480736635387.a n : ℤ) = A085027 n

end A085027

/-! ## A085027.P1289499567391466

`A133767(n)/A016813(n+1)`
-/

namespace A085027.P1289499567391466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133767 n : ℚ) / (A016813 (n + 1) : ℚ)

end

end A085027.P1289499567391466

namespace A085027

/-- `A133767(n)/A016813(n+1)` -/
def P1289499567391466.Spec : Prop :=
  ∀ n, P1289499567391466.a n = (A085027 n : ℚ)

theorem P1289499567391466.correct : P1289499567391466.Spec := by
  intro n
  simp only [A085027, Nat.add_sub_cancel, A085027.P1289499567391466.a, A085027.P5010476127013352924.a, A016813, A016813.P15626904835145642280.a, A133767, A133767.P3610967247197320980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085027

/-! ## A085027.P8518462461871287399

`sqrt(A016838(n+1)*A016838(n))`
-/

namespace A085027.P8518462461871287399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016838 (n + 1) * A016838 n : ℝ)

end

end A085027.P8518462461871287399

namespace A085027

/-- `sqrt(A016838(n+1)*A016838(n))` -/
def P8518462461871287399.Spec : Prop :=
  ∀ n, P8518462461871287399.a n = (A085027 n : ℝ)

end A085027

/-! ## A085027.P16040039102318883219

`Δ[∑[A016813(n)²]-A016813(n)]`
-/

namespace A085027.P16040039102318883219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085027.P16040039102318883219

namespace A085027

/-- `Δ[∑[A016813(n)²]-A016813(n)]` -/
def P16040039102318883219.Spec : Prop :=
  ∀ n, P16040039102318883219.a n = A085027 n

end A085027

/-! ## A085027.P2556960114462642031

`A078371(Δ[n²])`
-/

namespace A085027.P2556960114462642031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085027.P2556960114462642031

namespace A085027

/-- `A078371(Δ[n²])` -/
def P2556960114462642031.Spec : Prop :=
  ∀ n, P2556960114462642031.a n = A085027 n

end A085027

/-! ## A085027.P16094035285347240366

`or(1, A078371(2*n+1))`
-/

namespace A085027.P16094035285347240366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078371 (2 * n + 1))

end

end A085027.P16094035285347240366

namespace A085027

/-- `or(1, A078371(2*n+1))` -/
def P16094035285347240366.Spec : Prop :=
  ∀ n, P16094035285347240366.a n = A085027 n

end A085027

/-! ## A085027.P13128439523306019623

`A276704(2*(n+2))`
-/

namespace A085027.P13128439523306019623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276704 (2 * (n + 2))

end

end A085027.P13128439523306019623

namespace A085027

/-- `A276704(2*(n+2))` -/
def P13128439523306019623.Spec : Prop :=
  ∀ n, P13128439523306019623.a n = A085027 n

end A085027

/-! ## A085027.P13349518469547601779

`A173039(3*(n+2))`
-/

namespace A085027.P13349518469547601779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173039 (3 * (n + 2))

end

end A085027.P13349518469547601779

namespace A085027

/-- `A173039(3*(n+2))` -/
def P13349518469547601779.Spec : Prop :=
  ∀ n, P13349518469547601779.a n = A085027 n

end A085027

/-! ## A085027.P972804678534121839

`A142717(4*(n+1))`
-/

namespace A085027.P972804678534121839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142717 (4 * (n + 1))

end

end A085027.P972804678534121839

namespace A085027

/-- `A142717(4*(n+1))` -/
def P972804678534121839.Spec : Prop :=
  ∀ n, P972804678534121839.a n = A085027 n

end A085027

/-! ## A085027.P4053705380211894620

`A061037(4*n+5)`
-/

namespace A085027.P4053705380211894620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (4 * n + 5)

end

end A085027.P4053705380211894620

namespace A085027

/-- `A061037(4*n+5)` -/
def P4053705380211894620.Spec : Prop :=
  ∀ n, P4053705380211894620.a n = A085027 n

end A085027

/-! ## A085027.P9183139546572681158

`A070262(3*(n+1)+n)`
-/

namespace A085027.P9183139546572681158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070262 (3 * (n + 1) + n)

end

end A085027.P9183139546572681158

namespace A085027

/-- `A070262(3*(n+1)+n)` -/
def P9183139546572681158.Spec : Prop :=
  ∀ n, P9183139546572681158.a n = A085027 n

end A085027

/-! ## A085027.P43266485645033829

`A028347(A004766(n+1))`
-/

namespace A085027.P43266485645033829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (A004766 (n + 1)).toNat

end

end A085027.P43266485645033829

namespace A085027

/-- `A028347(A004766(n+1))` -/
def P43266485645033829.Spec : Prop :=
  ∀ n, P43266485645033829.a n = A085027 n

end A085027

/-! ## A085027.P15133218836421196233

`A028347(A016813(n+1))`
-/

namespace A085027.P15133218836421196233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (A016813 (n + 1)).toNat

end

end A085027.P15133218836421196233

namespace A085027

/-- `A028347(A016813(n+1))` -/
def P15133218836421196233.Spec : Prop :=
  ∀ n, P15133218836421196233.a n = A085027 n

end A085027

/-!
# A085028: Number of prime factors of cyclotomic(n,3), which is A019321(n), the value of the n-th cyclotomic polynomial evaluated at x=3.

The programs for A085028, there is no canonical definition to state claims against.
-/

/-! ## A085028.P572569801424836991

`∑{d}[n+1, A008683(#)*A057958((n+1)/#)]`
-/

namespace A085028.P572569801424836991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085028.P572569801424836991

/-! ## A085028.P15733690501825848782

`A076839(A135227(n)*A262616(n))`
-/

namespace A085028.P15733690501825848782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076839 (A135227 n * A262616 n).toNat

end

end A085028.P15733690501825848782

/-! ## A085028.P13960270654181977511

`A121561(A108433(n)*A332994(n+5))`
-/

namespace A085028.P13960270654181977511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (A108433 n * A332994 (n + 5)).toNat

end

end A085028.P13960270654181977511

/-! ## A085028.P11319233463082354113

`A080513(A327359(n)%A327343(n+2))`
-/

namespace A085028.P11319233463082354113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (Int.tmod (A327359 n) (A327343 (n + 2))).toNat

end

end A085028.P11319233463082354113

/-! ## A085028.P6367095135030181660

`A374757(A375127(n)+A008586(n))`
-/

namespace A085028.P6367095135030181660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (A375127 n + A008586 n).toNat

end

end A085028.P6367095135030181660

/-!
# A085029: Number of prime factors of cyclotomic(n,4), which is A019322(n), the value of the n-th cyclotomic polynomial evaluated at x=4.

The programs for A085029, the canonical program `A085029.P8212246544220823481` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085029 has offset 1).

The definition of A085029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085029.P8212246544220823481

`A051903(5^∑{d}[n+1, A008683(#)*A057957((n+1)/#)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085029

/-- `A051903(5^∑{d}[n+1, A008683(#)*A057957((n+1)/#)])` -/
def P8212246544220823481.Spec : Prop :=
  ∀ n, P8212246544220823481.a n = A085029 (n + 1)

theorem P8212246544220823481.correct : P8212246544220823481.Spec := by
  intro n
  simp only [A085029, Nat.add_sub_cancel]

end A085029

/-! ## A085029.P1682332432500774672

`gcd(A096492(A096477(n+1)), A346830(n))`
-/

namespace A085029.P1682332432500774672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096492 (A096477 (n + 1)).toNat) (A346830 n)

end

end A085029.P1682332432500774672

namespace A085029

/-- `gcd(A096492(A096477(n+1)), A346830(n))` -/
def P1682332432500774672.Spec : Prop :=
  ∀ n, (P1682332432500774672.a n : ℤ) = A085029 (n + 1)

end A085029

/-! ## A085029.P8325251388914585709

`A242253(A123167(n+1)^A131576(n+1))`
-/

namespace A085029.P8325251388914585709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242253 (SequenceMachineLib.roundAway ((A123167 (n + 1) : ℚ) ^ (A131576 (n + 1) : ℤ))).toNat

end

end A085029.P8325251388914585709

namespace A085029

/-- `A242253(A123167(n+1)^A131576(n+1))` -/
def P8325251388914585709.Spec : Prop :=
  ∀ n, P8325251388914585709.a n = A085029 (n + 1)

end A085029

/-! ## A085029.P4805631629209043198

`A020639(C(A352406(n+2), A352446(n+1)))`
-/

namespace A085029.P4805631629209043198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A352406 (n + 2)).toNat (A352446 (n + 1)).toNat)

end

end A085029.P4805631629209043198

namespace A085029

/-- `A020639(C(A352406(n+2), A352446(n+1)))` -/
def P4805631629209043198.Spec : Prop :=
  ∀ n, P4805631629209043198.a n = A085029 (n + 1)

end A085029

/-! ## A085029.P17001877271719040616

`A098378(5*(n+1))+A059015(n)%A098378(3*n+5)`
-/

namespace A085029.P17001877271719040616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (5 * (n + 1)) + Int.tmod (A059015 n) (A098378 (3 * n + 5))

end

end A085029.P17001877271719040616

namespace A085029

/-- `A098378(5*(n+1))+A059015(n)%A098378(3*n+5)` -/
def P17001877271719040616.Spec : Prop :=
  ∀ n, P17001877271719040616.a n = A085029 (n + 1)

end A085029

/-!
# A085030: Number of prime factors of cyclotomic(n,5), which is A019323(n), the value of the n-th cyclotomic polynomial evaluated at x=5.

The programs for A085030, there is no canonical definition to state claims against.
-/

/-! ## A085030.P16754713333906390557

`∑{d}[n+1, A008683(#)*A057956((n+1)/#)]`
-/

namespace A085030.P16754713333906390557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085030.P16754713333906390557

/-!
# A085031: Number of prime factors of cyclotomic(n,6), which is A019324(n), the value of the n-th cyclotomic polynomial evaluated at x=6.

The programs for A085031, there is no canonical definition to state claims against.
-/

/-! ## A085031.P1533909417477222251

`∑{d}[n+1, A008683(#)*A057955((n+1)/#)]`
-/

namespace A085031.P1533909417477222251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085031.P1533909417477222251

/-!
# A085032: Number of prime factors of cyclotomic(n,7), which is A019325(n), the value of the n-th cyclotomic polynomial evaluated at x=7.

The programs for A085032, there is no canonical definition to state claims against.
-/

/-! ## A085032.P8414239753022310479

`∑{d}[n+1, A008683(#)*A057954((n+1)/#)]`
-/

namespace A085032.P8414239753022310479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085032.P8414239753022310479

/-! ## A085032.P5394006586521847575

`A000034(A080014(n))+A014418(n)%2`
-/

namespace A085032.P5394006586521847575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A080014 n).toNat + Int.tmod (A014418 n) 2

end

end A085032.P5394006586521847575

/-! ## A085032.P10826253221600839938

`A101312(A038722(A211864(n))-A004442(n))`
-/

namespace A085032.P10826253221600839938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101312 ((A038722 (A211864 n).toNat - A004442 n).toNat + 1901)

end

end A085032.P10826253221600839938

/-! ## A085032.P3814372115939142514

`A085002(A026595(n))+A006337(n+1)`
-/

namespace A085032.P3814372115939142514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A026595 n).toNat + A006337 (n + 1)

end

end A085032.P3814372115939142514

/-! ## A085032.P6558028789263769361

`A353526(A344523(n+1)-A124010(n+1))`
-/

namespace A085032.P6558028789263769361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353526 (A344523 (n + 1) - A124010 (n + 1)).toNat

end

end A085032.P6558028789263769361

/-!
# A085033: Number of prime factors of cyclotomic(n,8), which is A019326(n), the value of the n-th cyclotomic polynomial evaluated at x=8.

The programs for A085033, there is no canonical definition to state claims against.
-/

/-! ## A085033.P6941431632227037873

`A001221(A139264(n+1)+A022099(n))`
-/

namespace A085033.P6941431632227037873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A139264 (n + 1) + A022099 n).toNat

end

end A085033.P6941431632227037873

/-! ## A085033.P1389390060244104561

`A008619(A126792(A077342(n+1)))`
-/

namespace A085033.P1389390060244104561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A126792 (A077342 (n + 1)).toNat).toNat

end

end A085033.P1389390060244104561

/-! ## A085033.P7390095826472379194

`A008619(A126792(A242474(n+1)))`
-/

namespace A085033.P7390095826472379194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A126792 (A242474 (n + 1)).toNat).toNat

end

end A085033.P7390095826472379194

/-! ## A085033.P14820774757634675944

`A008619(A126792(3*A067080(n+1)))`
-/

namespace A085033.P14820774757634675944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A126792 (3 * A067080 (n + 1)).toNat).toNat

end

end A085033.P14820774757634675944

/-! ## A085033.P14950479937220215092

`A001221(or(A087473(n), A091999(n+1)))`
-/

namespace A085033.P14950479937220215092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A087473 n) (A091999 (n + 1))).toNat

end

end A085033.P14950479937220215092

/-!
# A085034: Number of prime factors of cyclotomic(n,9), which is A019327(n), the value of the n-th cyclotomic polynomial evaluated at x=9.

The programs for A085034, there is no canonical definition to state claims against.
-/

/-! ## A085034.P11168174856613116410

`∑{d}[n+1, A008683(#)*A057952((n+1)/#)]`
-/

namespace A085034.P11168174856613116410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085034.P11168174856613116410

/-! ## A085034.P9625670366143036732

`A001221(A056216(n+1)+A005554(n+1))`
-/

namespace A085034.P9625670366143036732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056216 (n + 1) + A005554 (n + 1)).toNat

end

end A085034.P9625670366143036732

/-! ## A085034.P15338600459901542815

`A179953(A179989(n+5)-A047217(n+1))`
-/

namespace A085034.P15338600459901542815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (A179989 (n + 5) - A047217 (n + 1)).toNat

end

end A085034.P15338600459901542815

/-! ## A085034.P3978487088893707974

`A063826(A063826(n)*A245995(2*n+5))`
-/

namespace A085034.P3978487088893707974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 (A063826 n * A245995 (2 * n + 5)).toNat

end

end A085034.P3978487088893707974

/-!
# A085035: Number of prime factors of cyclotomic(n,10), which is A019328(n), the value of the n-th cyclotomic polynomial evaluated at x=10.

The programs for A085035, there is no canonical definition to state claims against.
-/

/-! ## A085035.P14492750152068326930

`∑{d}[n+1, A008683(#)*A057951((n+1)/#)]`
-/

namespace A085035.P14492750152068326930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085035.P14492750152068326930

/-! ## A085035.P6781906444639948157

`A106253(A106210(n)+A004443(n))`
-/

namespace A085035.P6781906444639948157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106253 (A106210 n + A004443 n).toNat

end

end A085035.P6781906444639948157

/-! ## A085035.P5974323335815839845

`A023589(A347453(3*n+2)+A023577(3*n+1))`
-/

namespace A085035.P5974323335815839845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023589 (A347453 (3 * n + 2) + A023577 (3 * n + 1)).toNat

end

end A085035.P5974323335815839845

/-! ## A085035.P18133512862941954175

`A001221(lt[A274130(n+5), A274130(n+1)])`
-/

namespace A085035.P18133512862941954175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274130 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085035.P18133512862941954175

/-! ## A085035.P18167672187064702509

`A156755(A191988(3*(n+1))+A001055(3*n+2))`
-/

namespace A085035.P18167672187064702509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156755 (A191988 (3 * (n + 1)) + A001055 (3 * n + 2)).toNat

end

end A085035.P18167672187064702509

/-!
# A085036: a(n) = (5*n+2)*(5*n+7).

The programs for A085036, the canonical program `A085036.P15029211055883950249` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085036 has offset 0).

The definition of A085036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+2)*(5*n+7)` (program `A085036.P15029211055883950249`, by `A085036.P15029211055883950249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085036.P5135293222903951315

`ogf((14+42x-6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A085036.P5135293222903951315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, 42, -6] [1, -3, 3, -1] n

end

end A085036.P5135293222903951315

namespace A085036

/-- `ogf((14+42x-6x^2)/(1-3x+3x^2-x^3))` -/
def P5135293222903951315.Spec : Prop :=
  ∀ n, P5135293222903951315.a n = A085036 n

end A085036

/-! ## A085036.P13600079918974248356

`25*n²+45*n+14`
-/

namespace A085036.P13600079918974248356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n ^ 2 + 45 * n + 14

end

end A085036.P13600079918974248356

namespace A085036

/-- `25*n²+45*n+14` -/
def P13600079918974248356.Spec : Prop :=
  ∀ n, (P13600079918974248356.a n : ℤ) = A085036 n

theorem P13600079918974248356.correct : P13600079918974248356.Spec := by
  intro n
  simp only [A085036, Nat.add_sub_cancel, A085036.P13600079918974248356.a, A085036.P15029211055883950249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A085036

/-! ## A085036.P15029211055883950249

`(5*n+2)*(5*n+7)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085036

/-- `(5*n+2)*(5*n+7)` -/
def P15029211055883950249.Spec : Prop :=
  ∀ n, (P15029211055883950249.a n : ℤ) = A085036 n

theorem P15029211055883950249.correct : P15029211055883950249.Spec := by
  intro n
  simp only [A085036]

end A085036

/-! ## A085036.P9682094244430830761

`lcm(A168457(n+1), A168458(n+1))`
-/

namespace A085036.P9682094244430830761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168457 (n + 1)) (A168458 (n + 1))

end

end A085036.P9682094244430830761

namespace A085036

/-- `lcm(A168457(n+1), A168458(n+1))` -/
def P9682094244430830761.Spec : Prop :=
  ∀ n, (P9682094244430830761.a n : ℤ) = A085036 n

end A085036

/-! ## A085036.P11473248177436223087

`sqrt(A016874(n+1)*A016874(n))`
-/

namespace A085036.P11473248177436223087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016874 (n + 1) * A016874 n : ℝ)

end

end A085036.P11473248177436223087

namespace A085036

/-- `sqrt(A016874(n+1)*A016874(n))` -/
def P11473248177436223087.Spec : Prop :=
  ∀ n, P11473248177436223087.a n = (A085036 n : ℝ)

end A085036

/-! ## A085036.P7015865194686644037

`A016874(n)*A017317(n+1)/A017317(n)`
-/

namespace A085036.P7015865194686644037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016874 n * A017317 (n + 1) : ℚ) / (A017317 n : ℚ)

end

end A085036.P7015865194686644037

namespace A085036

/-- `A016874(n)*A017317(n+1)/A017317(n)` -/
def P7015865194686644037.Spec : Prop :=
  ∀ n, P7015865194686644037.a n = (A085036 n : ℚ)

theorem P7015865194686644037.correct : P7015865194686644037.Spec := by
  intro n
  simp only [A085036, Nat.add_sub_cancel, A085036.P7015865194686644037.a, A085036.P15029211055883950249.a, A016874, A016874.P17500456718272948104.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085036

/-! ## A085036.P1516966400515122962

`A028557(5*n+2)`
-/

namespace A085036.P1516966400515122962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (5 * n + 2)

end

end A085036.P1516966400515122962

namespace A085036

/-- `A028557(5*n+2)` -/
def P1516966400515122962.Spec : Prop :=
  ∀ n, P1516966400515122962.a n = A085036 n

end A085036

/-! ## A085036.P17901124455179570459

`A104675(A016861(n))`
-/

namespace A085036.P17901124455179570459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 (A016861 n).toNat

end

end A085036.P17901124455179570459

namespace A085036

/-- `A104675(A016861(n))` -/
def P17901124455179570459.Spec : Prop :=
  ∀ n, P17901124455179570459.a n = A085036 n

end A085036

/-! ## A085036.P5067960473717117383

`A036572(A017341(n))`
-/

namespace A085036.P5067960473717117383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036572 (A017341 n).toNat

end

end A085036.P5067960473717117383

namespace A085036

/-- `A036572(A017341(n))` -/
def P5067960473717117383.Spec : Prop :=
  ∀ n, P5067960473717117383.a n = A085036 n

end A085036

/-!
# A085037: Smallest square divisible by the n-th triangular number (n(n+1)/2).

The programs for A085037, the canonical program `A085037.P17474095553337422885` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085037 has offset 1).

The definition of A085037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085037.P17474095553337422885

`∑[n+1]*A361670(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085037

/-- `∑[n+1]*A361670(n+1)` -/
def P17474095553337422885.Spec : Prop :=
  ∀ n, P17474095553337422885.a n = A085037 (n + 1)

theorem P17474095553337422885.correct : P17474095553337422885.Spec := by
  intro n
  simp only [A085037, Nat.add_sub_cancel]

end A085037

/-! ## A085037.P9868198258790589300

`(A038388(n+2)*A038388(n+1))²/4`
-/

namespace A085037.P9868198258790589300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038388 (n + 2) * A038388 (n + 1)) ^ 2 : ℚ) / 4

end

end A085037.P9868198258790589300

namespace A085037

/-- `(A038388(n+2)*A038388(n+1))²/4` -/
def P9868198258790589300.Spec : Prop :=
  ∀ n, P9868198258790589300.a n = (A085037 (n + 1) : ℚ)

end A085037

/-! ## A085037.P18147343758480077181

`∑[n+1]*A007913(∑[n+1])`
-/

namespace A085037.P18147343758480077181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007913 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A085037.P18147343758480077181

namespace A085037

/-- `∑[n+1]*A007913(∑[n+1])` -/
def P18147343758480077181.Spec : Prop :=
  ∀ n, P18147343758480077181.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P10693217026474452764

`∑[n+1]²/A008833(∑[n+1])`
-/

namespace A085037.P10693217026474452764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (A008833 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A085037.P10693217026474452764

namespace A085037

/-- `∑[n+1]²/A008833(∑[n+1])` -/
def P10693217026474452764.Spec : Prop :=
  ∀ n, P10693217026474452764.a n = (A085037 (n + 1) : ℚ)

end A085037

/-! ## A085037.P15652924262582559543

`A007913(A161680(n+2))*A161680(n+2)`
-/

namespace A085037.P15652924262582559543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A161680 (n + 2)).toNat * A161680 (n + 2)

end

end A085037.P15652924262582559543

namespace A085037

/-- `A007913(A161680(n+2))*A161680(n+2)` -/
def P15652924262582559543.Spec : Prop :=
  ∀ n, P15652924262582559543.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P9089304401692241125

`A007913(A179865(n+2))*A179865(n+2)`
-/

namespace A085037.P9089304401692241125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A179865 (n + 2)).toNat * A179865 (n + 2)

end

end A085037.P9089304401692241125

namespace A085037

/-- `A007913(A179865(n+2))*A179865(n+2)` -/
def P9089304401692241125.Spec : Prop :=
  ∀ n, P9089304401692241125.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P12276839537166771620

`A007913(A008805(2*n))*A008805(2*n)`
-/

namespace A085037.P12276839537166771620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008805 (2 * n)).toNat * A008805 (2 * n)

end

end A085037.P12276839537166771620

namespace A085037

/-- `A007913(A008805(2*n))*A008805(2*n)` -/
def P12276839537166771620.Spec : Prop :=
  ∀ n, P12276839537166771620.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P13018117415818591202

`A053143(∑[n+1])`
-/

namespace A085037.P13018117415818591202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085037.P13018117415818591202

namespace A085037

/-- `A053143(∑[n+1])` -/
def P13018117415818591202.Spec : Prop :=
  ∀ n, P13018117415818591202.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P6302632846719226246

`A087320(∑[n+1])`
-/

namespace A085037.P6302632846719226246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085037.P6302632846719226246

namespace A085037

/-- `A087320(∑[n+1])` -/
def P6302632846719226246.Spec : Prop :=
  ∀ n, P6302632846719226246.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P11291002353801916426

`A019554(∑[n+1])²`
-/

namespace A085037.P11291002353801916426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A085037.P11291002353801916426

namespace A085037

/-- `A019554(∑[n+1])²` -/
def P11291002353801916426.Spec : Prop :=
  ∀ n, P11291002353801916426.a n = A085037 (n + 1)

end A085037

/-! ## A085037.P9315602384942048042

`lcm(∑[n+1], A011262(∑[n+1]))`
-/

namespace A085037.P9315602384942048042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A011262 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A085037.P9315602384942048042

namespace A085037

/-- `lcm(∑[n+1], A011262(∑[n+1]))` -/
def P9315602384942048042.Spec : Prop :=
  ∀ n, (P9315602384942048042.a n : ℤ) = A085037 (n + 1)

end A085037

/-! ## A085037.P3952264289256067554

`(∑[n+1]/A000188(∑[n+1]))²`
-/

namespace A085037.P3952264289256067554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000188 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)) ^ 2

end

end A085037.P3952264289256067554

namespace A085037

/-- `(∑[n+1]/A000188(∑[n+1]))²` -/
def P3952264289256067554.Spec : Prop :=
  ∀ n, P3952264289256067554.a n = (A085037 (n + 1) : ℚ)

end A085037

/-! ## A085037.P4740054188806520938

`A000290(A019554(A000124(n)+n))`
-/

namespace A085037.P4740054188806520938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A019554 (A000124 n + (n : ℤ)).toNat).toNat

end

end A085037.P4740054188806520938

namespace A085037

/-- `A000290(A019554(A000124(n)+n))` -/
def P4740054188806520938.Spec : Prop :=
  ∀ n, P4740054188806520938.a n = A085037 (n + 1)

end A085037

/-!
# A085039: Smallest multiple of the n-th prime such that every partial sum is a square.

The programs for A085039, there is no canonical definition to state claims against.
-/

/-! ## A085039.P4356820110601736163

`Δ[4*A291216(n+1)]`
-/

namespace A085039.P4356820110601736163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085039.P4356820110601736163

/-!
# A085040: Squares arising in A085039. n-th partial sum of A085039.

The programs for A085040, there is no canonical definition to state claims against.
-/

/-! ## A085040.P14986078464675625613

`∑[A085039(n+1)]`
-/

namespace A085040.P14986078464675625613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085040.P14986078464675625613

/-! ## A085040.P16025660439468139689

`A085039(C(n+1, n))+a(n-1)` with `a(0)=4`
-/

namespace A085040.P16025660439468139689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A085039 (Nat.choose (n + 1) n) + a (n - 1)

end

end A085040.P16025660439468139689

/-!
# A085041: a(1) = 2, a(n+1) = smallest prime of the form a(n) + k*prime(n+1), k >1.

The programs for A085041, there is no canonical definition to state claims against.
-/

/-! ## A085041.P19109226114733911

`p?[xor(C(3, n²), A095184(n+1))]`
-/

namespace A085041.P19109226114733911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (n ^ 2) : ℤ) (A095184 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085041.P19109226114733911

/-! ## A085041.P4585035417867562100

`A006530(A095184(n+2)-floor(acot(n)))`
-/

namespace A085041.P4585035417867562100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095184 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A085041.P4585035417867562100

/-! ## A085041.P11253959640211759623

`A006530(xor(floor(acot(n)), A095184(n+2)))`
-/

namespace A085041.P11253959640211759623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A095184 (n + 2))).toNat

end

end A085041.P11253959640211759623

/-! ## A085041.P10100925680521528413

`A095184(n+2)%(A321565(n+1)+2)`
-/

namespace A085041.P10100925680521528413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095184 (n + 2)) (A321565 (n + 1) + 2)

end

end A085041.P10100925680521528413

/-! ## A085041.P18319264668383206620

`A095184(n+2)%A009848(A009848(n))`
-/

namespace A085041.P18319264668383206620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095184 (n + 2)) (A009848 (A009848 n).toNat)

end

end A085041.P18319264668383206620

/-!
# A085042: Smallest multiple of the n-th prime such that every partial sum is a prime, or 0 if no such number exists.

The programs for A085042, there is no canonical definition to state claims against.
-/

/-! ## A085042.P14563338792206132235

`A000040(n+1)*A285736(A027327(n))`
-/

namespace A085042.P14563338792206132235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A285736 (A027327 n).toNat

end

end A085042.P14563338792206132235

/-! ## A085042.P7306640253016887373

`A000040(n+1)*A243917(A371758(n))`
-/

namespace A085042.P7306640253016887373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A243917 (A371758 n).toNat

end

end A085042.P7306640253016887373

/-! ## A085042.P4713873447464620184

`A179765(A303030(n))*A238852(n+1)`
-/

namespace A085042.P4713873447464620184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179765 (A303030 n).toNat * A238852 (n + 1)

end

end A085042.P4713873447464620184

/-!
# A085043: Primes arising in A085042: a(n) = the n-th partial sum of A085042.

The programs for A085043, there is no canonical definition to state claims against.
-/

/-! ## A085043.P7315585454876137990

`∑[A085042(n+1)]`
-/

namespace A085043.P7315585454876137990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085043.P7315585454876137990

/-! ## A085043.P4206695100418262684

`A085042(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A085043.P4206695100418262684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A085042 (n + 1) + a (A023443 n).toNat

end

end A085043.P4206695100418262684

/-! ## A085043.P12614605330068944240

`A085042(n+1)+a(A028310(n)-1)` with `a(0)=2`
-/

namespace A085043.P12614605330068944240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A085042 (n + 1) + a (A028310 n - 1).toNat

end

end A085043.P12614605330068944240

/-! ## A085043.P18439470457723572176

`A034699(∑[A085042(Δ[n²]-n)])`
-/

namespace A085043.P18439470457723572176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085042 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085043.P18439470457723572176

/-!
# A085045: Smallest k such that tau(n + k) = tau(n*k), or 0 if no such number exists, where tau = A000005.

The programs for A085045, there is no canonical definition to state claims against.
-/

/-! ## A085045.P3878423444420295227

`A162247(A171307(2*n+1)+n^n)`
-/

namespace A085045.P3878423444420295227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (A171307 (2 * n + 1) + (n ^ n : ℤ)).toNat

end

end A085045.P3878423444420295227

/-! ## A085045.P17829539820317276402

`A237593(A253209(n)-A317873(n))`
-/

namespace A085045.P17829539820317276402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A253209 n - A317873 n).toNat

end

end A085045.P17829539820317276402

/-!
# A085046: a(n) = n^2 - (1 + (-1)^n)/2.

The programs for A085046, the canonical program `A085046.P17141890883976883473` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085046 has offset 1).

The definition of A085046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085046.P17141890883976883473

`ogf((1+x+3x^2-x^3)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085046

/-- `ogf((1+x+3x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P17141890883976883473.Spec : Prop :=
  ∀ n, P17141890883976883473.a n = A085046 (n + 1)

theorem P17141890883976883473.correct : P17141890883976883473.Spec := by
  intro n
  simp only [A085046, Nat.add_sub_cancel]

end A085046

/-! ## A085046.P4462696690732466956

`(n+1)²-(1+(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085046.P4462696690732466956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (1 + (-1) ^ (n + 1) : ℚ) / 2

end

end A085046.P4462696690732466956

namespace A085046

/-- `(n+1)²-(1+(-1)^(n+1))/2` -/
def P4462696690732466956.Spec : Prop :=
  ∀ n, P4462696690732466956.a n = (A085046 (n + 1) : ℚ)

end A085046

/-! ## A085046.P7607052125714136663

`or(1, n*(n+2))`
-/

namespace A085046.P7607052125714136663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 2))

end

end A085046.P7607052125714136663

namespace A085046

/-- `or(1, n*(n+2))` -/
def P7607052125714136663.Spec : Prop :=
  ∀ n, (P7607052125714136663.a n : ℤ) = A085046 (n + 1)

end A085046

/-! ## A085046.P12621416872545227316

`∑[2*or(1, n)]-1`
-/

namespace A085046.P12621416872545227316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A085046.P12621416872545227316

namespace A085046

/-- `∑[2*or(1, n)]-1` -/
def P12621416872545227316.Spec : Prop :=
  ∀ n, P12621416872545227316.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P6265424495889952724

`∑[lcm(2, or(1, n))]-1`
-/

namespace A085046.P6265424495889952724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A085046.P6265424495889952724

namespace A085046

/-- `∑[lcm(2, or(1, n))]-1` -/
def P6265424495889952724.Spec : Prop :=
  ∀ n, P6265424495889952724.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P10132375685818491940

`(n+1)²-n%2`
-/

namespace A085046.P10132375685818491940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A085046.P10132375685818491940

namespace A085046

/-- `(n+1)²-n%2` -/
def P10132375685818491940.Spec : Prop :=
  ∀ n, P10132375685818491940.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P2220786145553344948

`(n+1)²-and(1, n)`
-/

namespace A085046.P2220786145553344948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.land 1 n : ℤ)

end

end A085046.P2220786145553344948

namespace A085046

/-- `(n+1)²-and(1, n)` -/
def P2220786145553344948.Spec : Prop :=
  ∀ n, P2220786145553344948.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P3313600990271545408

`abs(or(1, -(n+1)²))`
-/

namespace A085046.P3313600990271545408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-((n + 1) ^ 2 : ℤ))|

end

end A085046.P3313600990271545408

namespace A085046

/-- `abs(or(1, -(n+1)²))` -/
def P3313600990271545408.Spec : Prop :=
  ∀ n, P3313600990271545408.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P6788434585795527850

`-or(1, -(n+1)²)`
-/

namespace A085046.P6788434585795527850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((n + 1) ^ 2 : ℤ))

end

end A085046.P6788434585795527850

namespace A085046

/-- `-or(1, -(n+1)²)` -/
def P6788434585795527850.Spec : Prop :=
  ∀ n, P6788434585795527850.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P11168875833979494143

`record[or(1, n*(n-2))]`
-/

namespace A085046.P11168875833979494143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085046.P11168875833979494143

namespace A085046

/-- `record[or(1, n*(n-2))]` -/
def P11168875833979494143.Spec : Prop :=
  ∀ n, P11168875833979494143.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P14720075512583122961

`or(1, n)+n²+n`
-/

namespace A085046.P14720075512583122961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + (n ^ 2 + n)

end

end A085046.P14720075512583122961

namespace A085046

/-- `or(1, n)+n²+n` -/
def P14720075512583122961.Spec : Prop :=
  ∀ n, (P14720075512583122961.a n : ℤ) = A085046 (n + 1)

end A085046

/-! ## A085046.P13297399573364333625

`∑[xor(1, n)+n]+n`
-/

namespace A085046.P13297399573364333625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A085046.P13297399573364333625

namespace A085046

/-- `∑[xor(1, n)+n]+n` -/
def P13297399573364333625.Spec : Prop :=
  ∀ n, (P13297399573364333625.a n : ℤ) = A085046 (n + 1)

end A085046

/-! ## A085046.P5863686496263814159

`record[(1-n)²-and(1, n)]`
-/

namespace A085046.P5863686496263814159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085046.P5863686496263814159

namespace A085046

/-- `record[(1-n)²-and(1, n)]` -/
def P5863686496263814159.Spec : Prop :=
  ∀ n, P5863686496263814159.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P14039968533738870019

`record[-or(1, -(1-n)²)]`
-/

namespace A085046.P14039968533738870019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((1 - (n : ℤ)) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085046.P14039968533738870019

namespace A085046

/-- `record[-or(1, -(1-n)²)]` -/
def P14039968533738870019.Spec : Prop :=
  ∀ n, P14039968533738870019.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P15027141691922608667

`∑[a(n-2)+4]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A085046.P15027141691922608667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085046.P15027141691922608667

namespace A085046

/-- `∑[a(n-2)+4]` -/
def P15027141691922608667.Spec : Prop :=
  ∀ n, (P15027141691922608667.a n : ℤ) = A085046 (n + 1)

end A085046

/-! ## A085046.P6475717840853171281

`a(n-2)+4*n` with `a(0)=1, a(1)=3`
-/

namespace A085046.P6475717840853171281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 4 * n

end

end A085046.P6475717840853171281

namespace A085046

/-- `a(n-2)+4*n` -/
def P6475717840853171281.Spec : Prop :=
  ∀ n, (P6475717840853171281.a n : ℤ) = A085046 (n + 1)

end A085046

/-! ## A085046.P16151322520091854978

`gcd(2, n)+(n+1)²-2`
-/

namespace A085046.P16151322520091854978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + (n + 1) ^ 2 : ℤ) - 2

end

end A085046.P16151322520091854978

namespace A085046

/-- `gcd(2, n)+(n+1)²-2` -/
def P16151322520091854978.Spec : Prop :=
  ∀ n, P16151322520091854978.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P14117221881616061722

`and(n*(n+2), -2)+1`
-/

namespace A085046.P14117221881616061722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (n + 2) : ℤ) (-2) + 1

end

end A085046.P14117221881616061722

namespace A085046

/-- `and(n*(n+2), -2)+1` -/
def P14117221881616061722.Spec : Prop :=
  ∀ n, P14117221881616061722.a n = A085046 (n + 1)

end A085046

/-! ## A085046.P11732598725900223142

`4*∑[n]-a(n-1)` with `a(0)=1`
-/

namespace A085046.P11732598725900223142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - a (n - 1)

end

end A085046.P11732598725900223142

namespace A085046

/-- `4*∑[n]-a(n-1)` -/
def P11732598725900223142.Spec : Prop :=
  ∀ n, P11732598725900223142.a n = A085046 (n + 1)

end A085046

/-!
# A085047: a(n) is the least number not already used such that the arithmetic mean of the first n terms is a square.

The programs for A085047, the canonical program `A085047.P11606513356394067689` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085047 has offset 1).

The definition of A085047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085047.P11606513356394067689

`∑[(n+1)*Δ[n*A134451(n²)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085047

/-- `∑[(n+1)*Δ[n*A134451(n²)]]` -/
def P11606513356394067689.Spec : Prop :=
  ∀ n, P11606513356394067689.a n = A085047 (n + 1)

theorem P11606513356394067689.correct : P11606513356394067689.Spec := by
  intro n
  simp only [A085047, Nat.add_sub_cancel]

end A085047

/-! ## A085047.P5094171828482380909

`Δ[n*A133819(A000982(n+1)-n)]`
-/

namespace A085047.P5094171828482380909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133819 (A000982 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085047.P5094171828482380909

namespace A085047

/-- `Δ[n*A133819(A000982(n+1)-n)]` -/
def P5094171828482380909.Spec : Prop :=
  ∀ n, P5094171828482380909.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P4407518516273200141

`Δ[n*A133819(A061925(n+1)-(n+1))]`
-/

namespace A085047.P4407518516273200141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133819 (A061925 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085047.P4407518516273200141

namespace A085047

/-- `Δ[n*A133819(A061925(n+1)-(n+1))]` -/
def P4407518516273200141.Spec : Prop :=
  ∀ n, P4407518516273200141.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P9575103996481740466

`∑[Δ[n*A134451(n²)]*A008619(2*n)]`
-/

namespace A085047.P9575103996481740466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134451 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085047.P9575103996481740466

namespace A085047

/-- `∑[Δ[n*A134451(n²)]*A008619(2*n)]` -/
def P9575103996481740466.Spec : Prop :=
  ∀ n, P9575103996481740466.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P15712270686391249511

`∑[Δ[n*A134451(n²)]*A028242(2*n)]`
-/

namespace A085047.P15712270686391249511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134451 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085047.P15712270686391249511

namespace A085047

/-- `∑[Δ[n*A134451(n²)]*A028242(2*n)]` -/
def P15712270686391249511.Spec : Prop :=
  ∀ n, P15712270686391249511.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P8206012936779199569

`A138996(A103517(n))*A209279(A000124(n))`
-/

namespace A085047.P8206012936779199569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138996 (A103517 n).toNat * A209279 (A000124 n).toNat

end

end A085047.P8206012936779199569

namespace A085047

/-- `A138996(A103517(n))*A209279(A000124(n))` -/
def P8206012936779199569.Spec : Prop :=
  ∀ n, P8206012936779199569.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P15189967431028841097

`A022998(A176889(n+1))+A005563(A110654(n))`
-/

namespace A085047.P15189967431028841097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A176889 (n + 1)).toNat + A005563 (A110654 n).toNat

end

end A085047.P15189967431028841097

namespace A085047

/-- `A022998(A176889(n+1))+A005563(A110654(n))` -/
def P15189967431028841097.Spec : Prop :=
  ∀ n, P15189967431028841097.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P4481820216185281795

`Δ[n*A133819(A000982(n+1))]`
-/

namespace A085047.P4481820216185281795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133819 (A000982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085047.P4481820216185281795

namespace A085047

/-- `Δ[n*A133819(A000982(n+1))]` -/
def P4481820216185281795.Spec : Prop :=
  ∀ n, P4481820216185281795.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P5323070375840882884

`Δ[n*A004525(A116471(n+1))]`
-/

namespace A085047.P5323070375840882884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004525 (A116471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085047.P5323070375840882884

namespace A085047

/-- `Δ[n*A004525(A116471(n+1))]` -/
def P5323070375840882884.Spec : Prop :=
  ∀ n, P5323070375840882884.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P16504909033386058072

`Δ[n*(A246694(A000124(n+1))-1)]`
-/

namespace A085047.P16504909033386058072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A246694 (A000124 (n + 1)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085047.P16504909033386058072

namespace A085047

/-- `Δ[n*(A246694(A000124(n+1))-1)]` -/
def P16504909033386058072.Spec : Prop :=
  ∀ n, P16504909033386058072.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P2706705829356322358

`Δ[n*A110654(2*A110654(n+1)²)]`
-/

namespace A085047.P2706705829356322358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110654 (2 * A110654 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085047.P2706705829356322358

namespace A085047

/-- `Δ[n*A110654(2*A110654(n+1)²)]` -/
def P2706705829356322358.Spec : Prop :=
  ∀ n, P2706705829356322358.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P17596884332392136984

`A022998((n+1)²)-∑[A022998(n)]`
-/

namespace A085047.P17596884332392136984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 ((n + 1) ^ 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085047.P17596884332392136984

namespace A085047

/-- `A022998((n+1)²)-∑[A022998(n)]` -/
def P17596884332392136984.Spec : Prop :=
  ∀ n, P17596884332392136984.a n = A085047 (n + 1)

end A085047

/-! ## A085047.P3040857657409705899

`A022998((n+1)²)-A001082(n+1)`
-/

namespace A085047.P3040857657409705899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 ((n + 1) ^ 2) - A001082 (n + 1)

end

end A085047.P3040857657409705899

namespace A085047

/-- `A022998((n+1)²)-A001082(n+1)` -/
def P3040857657409705899.Spec : Prop :=
  ∀ n, P3040857657409705899.a n = A085047 (n + 1)

end A085047

/-!
# A085049: a(1) = 1, then the next n numbers are prime if n is composite, else are composite if n is a prime.

The programs for A085049, there is no canonical definition to state claims against.
-/

/-! ## A085049.P17844753562231815634

`A026239(A084408(n+1))`
-/

namespace A085049.P17844753562231815634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A084408 (n + 1)).toNat

end

end A085049.P17844753562231815634

/-!
# A085052: Start with n and continue adding primes until one reaches a prime > n. Or, sequence gives n + P(k) where P(k)=sum_{k=1..n} prime(k) and k is the least value such that n + P(k) is prime and > n.

The programs for A085052, there is no canonical definition to state claims against.
-/

/-! ## A085052.P2227511947477243978

`A007504(A066753(n+1))+1+n`
-/

namespace A085052.P2227511947477243978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A066753 (n + 1)).toNat + 1 + (n : ℤ)

end

end A085052.P2227511947477243978

/-!
# A085053: Number of primes of the form n*k+1, where k=1 to n.

The programs for A085053, there is no canonical definition to state claims against.
-/

/-! ## A085053.P2355887336814058612

`A295405(n+1)+A086685(n+1)`
-/

namespace A085053.P2355887336814058612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1) + A086685 (n + 1)

end

end A085053.P2355887336814058612

/-! ## A085053.P8958056229937098628

`A295405(n+1)+A262311(A283138(n+1)+1)`
-/

namespace A085053.P8958056229937098628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1) + A262311 (A283138 (n + 1) + 1).toNat

end

end A085053.P8958056229937098628

/-! ## A085053.P16950931229704914132

`A083414(n+1)+A071035(A066739(2*n+3))`
-/

namespace A085053.P16950931229704914132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083414 (n + 1) + A071035 (A066739 (2 * n + 3)).toNat

end

end A085053.P16950931229704914132

/-!
# A085054: Smallest palindromic prime containing the n-th palindrome.

The programs for A085054, there is no canonical definition to state claims against.
-/

/-! ## A085054.P15055039268969533168

`A083982(record[A047813(n)])`
-/

namespace A085054.P15055039268969533168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085054.P15055039268969533168

/-! ## A085054.P2051792942462651935

`A083982(record[A262087(n)])`
-/

namespace A085054.P2051792942462651935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085054.P2051792942462651935

/-! ## A085054.P15371722007612798635

`A083982(record[A265525(n)])`
-/

namespace A085054.P15371722007612798635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085054.P15371722007612798635

/-! ## A085054.P5002783137756375960

`A083982(record[A331472(n)])`
-/

namespace A085054.P5002783137756375960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085054.P5002783137756375960

/-! ## A085054.P10121039227059694379

`A083982(A002113(n+1))`
-/

namespace A085054.P10121039227059694379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (A002113 (n + 1)).toNat

end

end A085054.P10121039227059694379

/-!
# A085056: (Product of all composite numbers from 1 to n)/ ( product of the prime divisors of all composite numbers up to n). More precisely, denominator = product of the largest squarefree divisors of composite numbers up to n.

The programs for A085056, the canonical program `A085056.P12262074645316044709` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085056 has offset 1).

The definition of A085056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085056.P13817041587466820293

`∏[(n+1)/∏{p}[n+1, #]]`
-/

namespace A085056.P13817041587466820293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P13817041587466820293

namespace A085056

/-- `∏[(n+1)/∏{p}[n+1, #]]` -/
def P13817041587466820293.Spec : Prop :=
  ∀ n, P13817041587466820293.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P13237104258432295129

`∏[(n+1)/exp(∑{p}[n+1, log(#)])]`
-/

namespace A085056.P13237104258432295129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P13237104258432295129

namespace A085056

/-- `∏[(n+1)/exp(∑{p}[n+1, log(#)])]` -/
def P13237104258432295129.Spec : Prop :=
  ∀ n, P13237104258432295129.a n = (A085056 (n + 1) : ℝ)

end A085056

/-! ## A085056.P7664642851804075956

`∏[(n+1)/2^∑{p}[n+1, log2(#)]]`
-/

namespace A085056.P7664642851804075956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P7664642851804075956

namespace A085056

/-- `∏[(n+1)/2^∑{p}[n+1, log2(#)]]` -/
def P7664642851804075956.Spec : Prop :=
  ∀ n, P7664642851804075956.a n = (A085056 (n + 1) : ℝ)

end A085056

/-! ## A085056.P235278540694870288

`(n+1)/∏{p}[n+1, #]*a(n-1)` with `a(0)=1`
-/

namespace A085056.P235278540694870288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * a (n - 1)

end

end A085056.P235278540694870288

namespace A085056

/-- `(n+1)/∏{p}[n+1, #]*a(n-1)` -/
def P235278540694870288.Spec : Prop :=
  ∀ n, P235278540694870288.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P4082376405164076370

`∏[A003557(n+1)]`
-/

namespace A085056.P4082376405164076370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P4082376405164076370

namespace A085056

/-- `∏[A003557(n+1)]` -/
def P4082376405164076370.Spec : Prop :=
  ∀ n, P4082376405164076370.a n = A085056 (n + 1)

theorem P4082376405164076370.correct : P4082376405164076370.Spec := by
  intro n
  simp only [A085056, Nat.add_sub_cancel, A085056.P4082376405164076370.f1, A085056.P4082376405164076370.a, A085056.P12262074645316044709.f1, A085056.P12262074645316044709.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085056

/-! ## A085056.P12607599833313916166

`∏[A336551(n+1)+1]`
-/

namespace A085056.P12607599833313916166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P12607599833313916166

namespace A085056

/-- `∏[A336551(n+1)+1]` -/
def P12607599833313916166.Spec : Prop :=
  ∀ n, P12607599833313916166.a n = A085056 (n + 1)

theorem P12607599833313916166.correct : P12607599833313916166.Spec := by
  intro n
  simp only [A085056, Nat.add_sub_cancel, A085056.P12607599833313916166.f1, A085056.P12607599833313916166.a, A085056.P12262074645316044709.f1, A085056.P12262074645316044709.a, A010848, A010848.P2527659660694357650.a, A336551, A336551.P8666843674191054020.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085056

/-! ## A085056.P12262074645316044709

`∏[1-A010848(n+1)+n]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085056

/-- `∏[1-A010848(n+1)+n]` -/
def P12262074645316044709.Spec : Prop :=
  ∀ n, P12262074645316044709.a n = A085056 (n + 1)

theorem P12262074645316044709.correct : P12262074645316044709.Spec := by
  intro n
  simp only [A085056, Nat.add_sub_cancel]

end A085056

/-! ## A085056.P10378628937693894836

`∏[(n+1)/A007947(n+1)]`
-/

namespace A085056.P10378628937693894836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P10378628937693894836

namespace A085056

/-- `∏[(n+1)/A007947(n+1)]` -/
def P10378628937693894836.Spec : Prop :=
  ∀ n, P10378628937693894836.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P17143670328579435008

`∏[A102631(n+1)/(n+1)]`
-/

namespace A085056.P17143670328579435008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P17143670328579435008

namespace A085056

/-- `∏[A102631(n+1)/(n+1)]` -/
def P17143670328579435008.Spec : Prop :=
  ∀ n, P17143670328579435008.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P15412100873582418723

`∏[gcd(n+1, A069359(n+1))]`
-/

namespace A085056.P15412100873582418723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A069359 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P15412100873582418723

namespace A085056

/-- `∏[gcd(n+1, A069359(n+1))]` -/
def P15412100873582418723.Spec : Prop :=
  ∀ n, (P15412100873582418723.a n : ℤ) = A085056 (n + 1)

end A085056

/-! ## A085056.P17659289573486956295

`∏[A062760(A087560(n+1))]`
-/

namespace A085056.P17659289573486956295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (A087560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P17659289573486956295

namespace A085056

/-- `∏[A062760(A087560(n+1))]` -/
def P17659289573486956295.Spec : Prop :=
  ∀ n, P17659289573486956295.a n = A085056 (n + 1)

end A085056

/-! ## A085056.P14270667656318623135

`∏[A336644(n+1)/A336643(n+1)+1]`
-/

namespace A085056.P14270667656318623135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336644 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P14270667656318623135

namespace A085056

/-- `∏[A336644(n+1)/A336643(n+1)+1]` -/
def P14270667656318623135.Spec : Prop :=
  ∀ n, P14270667656318623135.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P4525641931213773048

`∏[A000010(n+1)/A000010(A099985(n+1))]`
-/

namespace A085056.P4525641931213773048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A099985 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P4525641931213773048

namespace A085056

/-- `∏[A000010(n+1)/A000010(A099985(n+1))]` -/
def P4525641931213773048.Spec : Prop :=
  ∀ n, P4525641931213773048.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P2689418743484648783

`∏[A000010(n+1)/A000010(A204455(n+1))]`
-/

namespace A085056.P2689418743484648783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A204455 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P2689418743484648783

namespace A085056

/-- `∏[A000010(n+1)/A000010(A204455(n+1))]` -/
def P2689418743484648783.Spec : Prop :=
  ∀ n, P2689418743484648783.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P18035373167451881077

`A387151(n+1)/(n+1)`
-/

namespace A085056.P18035373167451881077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387151 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A085056.P18035373167451881077

namespace A085056

/-- `A387151(n+1)/(n+1)` -/
def P18035373167451881077.Spec : Prop :=
  ∀ n, P18035373167451881077.a n = (A085056 (n + 1) : ℚ)

end A085056

/-! ## A085056.P16670896510847657856

`∏[A000188(A102631(n+1))]`
-/

namespace A085056.P16670896510847657856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A102631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P16670896510847657856

namespace A085056

/-- `∏[A000188(A102631(n+1))]` -/
def P16670896510847657856.Spec : Prop :=
  ∀ n, P16670896510847657856.a n = A085056 (n + 1)

end A085056

/-! ## A085056.P13706345459423466718

`∏[A295657(A129202(n))]`
-/

namespace A085056.P13706345459423466718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A129202 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P13706345459423466718

namespace A085056

/-- `∏[A295657(A129202(n))]` -/
def P13706345459423466718.Spec : Prop :=
  ∀ n, P13706345459423466718.a n = A085056 (n + 1)

end A085056

/-! ## A085056.P1752456662770952371

`∏[A295657((n+1)²)]`
-/

namespace A085056.P1752456662770952371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P1752456662770952371

namespace A085056

/-- `∏[A295657((n+1)²)]` -/
def P1752456662770952371.Spec : Prop :=
  ∀ n, P1752456662770952371.a n = A085056 (n + 1)

end A085056

/-! ## A085056.P17893431475123031714

`∏[A295658((n+1)²)]`
-/

namespace A085056.P17893431475123031714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P17893431475123031714

namespace A085056

/-- `∏[A295658((n+1)²)]` -/
def P17893431475123031714.Spec : Prop :=
  ∀ n, P17893431475123031714.a n = A085056 (n + 1)

end A085056

/-!
# A085057: a(n) is the smallest integer of the form a*b*c.../p*q*r..., where the numerator and the denominator contain n numbers each and a,b,c,...p,q,r... are all the integers from 1 to 2n.

The programs for A085057, the canonical program `A085057.P15424866120729747992` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085057 has offset 1).

The definition of A085057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085057.P15424866120729747992

`A069113(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085057

/-- `A069113(n+1)` -/
def P15424866120729747992.Spec : Prop :=
  ∀ n, P15424866120729747992.a n = A085057 (n + 1)

theorem P15424866120729747992.correct : P15424866120729747992.Spec := by
  intro n
  simp only [A085057, Nat.add_sub_cancel]

end A085057

/-! ## A085057.P6916814606537128129

`A055204(2*(n+1))`
-/

namespace A085057.P6916814606537128129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (2 * (n + 1))

end

end A085057.P6916814606537128129

namespace A085057

/-- `A055204(2*(n+1))` -/
def P6916814606537128129.Spec : Prop :=
  ∀ n, P6916814606537128129.a n = A085057 (n + 1)

end A085057

/-! ## A085057.P11425563811157006846

`A056058(2*(n+1))`
-/

namespace A085057.P11425563811157006846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056058 (2 * (n + 1))

end

end A085057.P11425563811157006846

namespace A085057

/-- `A056058(2*(n+1))` -/
def P11425563811157006846.Spec : Prop :=
  ∀ n, P11425563811157006846.a n = A085057 (n + 1)

end A085057

/-! ## A085057.P8288240877562912537

`A056059(2*(n+1))*A056060(2*(n+1))`
-/

namespace A085057.P8288240877562912537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (2 * (n + 1)) * A056060 (2 * (n + 1))

end

end A085057.P8288240877562912537

namespace A085057

/-- `A056059(2*(n+1))*A056060(2*(n+1))` -/
def P8288240877562912537.Spec : Prop :=
  ∀ n, P8288240877562912537.a n = A085057 (n + 1)

end A085057

/-! ## A085057.P6824673003974859970

`A000984(n+1)/A292442(n+1)`
-/

namespace A085057.P6824673003974859970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A292442 (n + 1) : ℚ)

end

end A085057.P6824673003974859970

namespace A085057

/-- `A000984(n+1)/A292442(n+1)` -/
def P6824673003974859970.Spec : Prop :=
  ∀ n, P6824673003974859970.a n = (A085057 (n + 1) : ℚ)

end A085057

/-! ## A085057.P8134276335337193503

`A000984(n+1)/(A292441(n+1)*A292441(n+1))`
-/

namespace A085057.P8134276335337193503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A292441 (n + 1) * A292441 (n + 1) : ℚ)

end

end A085057.P8134276335337193503

namespace A085057

/-- `A000984(n+1)/(A292441(n+1)*A292441(n+1))` -/
def P8134276335337193503.Spec : Prop :=
  ∀ n, P8134276335337193503.a n = (A085057 (n + 1) : ℚ)

end A085057

/-! ## A085057.P9925275002585126088

`A299700(4*(n+1))`
-/

namespace A085057.P9925275002585126088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299700 (4 * (n + 1))

end

end A085057.P9925275002585126088

namespace A085057

/-- `A299700(4*(n+1))` -/
def P9925275002585126088.Spec : Prop :=
  ∀ n, P9925275002585126088.a n = A085057 (n + 1)

end A085057

/-! ## A085057.P4214694920671081970

`A271187(∑[4*(n+1)])`
-/

namespace A085057.P4214694920671081970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085057.P4214694920671081970

namespace A085057

/-- `A271187(∑[4*(n+1)])` -/
def P4214694920671081970.Spec : Prop :=
  ∀ n, P4214694920671081970.a n = A085057 (n + 1)

end A085057

/-!
# A085058: a(n) = A001511(n+1) + 1.

The programs for A085058, the canonical program `A085058.P14130226451424256143` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085058 has offset 0).

The definition of A085058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(n+1)+1` (program `A085058.P14130226451424256143`, by `A085058.P14130226451424256143.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085058.P984175468533526098

`val(n+1, 2)+2`
-/

namespace A085058.P984175468533526098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 2

end

end A085058.P984175468533526098

namespace A085058

/-- `val(n+1, 2)+2` -/
def P984175468533526098.Spec : Prop :=
  ∀ n, (P984175468533526098.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P14130226451424256143

`A001511(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085058

/-- `A001511(n+1)+1` -/
def P14130226451424256143.Spec : Prop :=
  ∀ n, P14130226451424256143.a n = A085058 n

theorem P14130226451424256143.correct : P14130226451424256143.Spec := by
  intro n
  simp only [A085058]

end A085058

/-! ## A085058.P5360249279601734048

`A007814(n+1)+2`
-/

namespace A085058.P5360249279601734048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 2

end

end A085058.P5360249279601734048

namespace A085058

/-- `A007814(n+1)+2` -/
def P5360249279601734048.Spec : Prop :=
  ∀ n, P5360249279601734048.a n = A085058 n

theorem P5360249279601734048.correct : P5360249279601734048.Spec := by
  intro n
  simp only [A085058, Nat.add_sub_cancel, A085058.P5360249279601734048.a, A085058.P14130226451424256143.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085058

/-! ## A085058.P2020760613163455610

`2+val(n+1, 2)`
-/

namespace A085058.P2020760613163455610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + SequenceMachineLib.valuation (n + 1) 2

end

end A085058.P2020760613163455610

namespace A085058

/-- `2+val(n+1, 2)` -/
def P2020760613163455610.Spec : Prop :=
  ∀ n, (P2020760613163455610.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P8820896696684675462

`val(record[(4*(1-n))²], 4)`
-/

namespace A085058.P8820896696684675462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (1 - (n : ℤ))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 4

end

end A085058.P8820896696684675462

namespace A085058

/-- `val(record[(4*(1-n))²], 4)` -/
def P8820896696684675462.Spec : Prop :=
  ∀ n, (P8820896696684675462.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P8297269904100530916

`floor(log2(xor(n, n+1)))+2`
-/

namespace A085058.P8297269904100530916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1)) + 2

end

end A085058.P8297269904100530916

namespace A085058

/-- `floor(log2(xor(n, n+1)))+2` -/
def P8297269904100530916.Spec : Prop :=
  ∀ n, (P8297269904100530916.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P16674879241071994992

`log2(xor(n, n+1)+1)+1`
-/

namespace A085058.P16674879241071994992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) + 1

end

end A085058.P16674879241071994992

namespace A085058

/-- `log2(xor(n, n+1)+1)+1` -/
def P16674879241071994992.Spec : Prop :=
  ∀ n, P16674879241071994992.a n = (A085058 n : ℝ)

end A085058

/-! ## A085058.P6209972861509897000

`val(∑[(2-(2*n)²)²], 2)`
-/

namespace A085058.P6209972861509897000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((2 * n) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A085058.P6209972861509897000

namespace A085058

/-- `val(∑[(2-(2*n)²)²], 2)` -/
def P6209972861509897000.Spec : Prop :=
  ∀ n, (P6209972861509897000.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P5918338546598781371

`log2(or(n, n+1)-n)+2`
-/

namespace A085058.P5918338546598781371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ) + 2

end

end A085058.P5918338546598781371

namespace A085058

/-- `log2(or(n, n+1)-n)+2` -/
def P5918338546598781371.Spec : Prop :=
  ∀ n, P5918338546598781371.a n = (A085058 n : ℝ)

end A085058

/-! ## A085058.P4169665604066820554

`∑{e}[xor(n, -(n+2)), #+1]`
-/

namespace A085058.P4169665604066820554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A085058.P4169665604066820554

namespace A085058

/-- `∑{e}[xor(n, -(n+2)), #+1]` -/
def P4169665604066820554.Spec : Prop :=
  ∀ n, (P4169665604066820554.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P14168172297592880706

`log2(and(n+1, -(n+1)))+2`
-/

namespace A085058.P14168172297592880706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 2

end

end A085058.P14168172297592880706

namespace A085058

/-- `log2(and(n+1, -(n+1)))+2` -/
def P14168172297592880706.Spec : Prop :=
  ∀ n, P14168172297592880706.a n = (A085058 n : ℝ)

end A085058

/-! ## A085058.P10865808965852726509

`log2(n+1-and(n, n+1))+2`
-/

namespace A085058.P10865808965852726509
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℝ) + 2

end

end A085058.P10865808965852726509

namespace A085058

/-- `log2(n+1-and(n, n+1))+2` -/
def P10865808965852726509.Spec : Prop :=
  ∀ n, P10865808965852726509.a n = (A085058 n : ℝ)

end A085058

/-! ## A085058.P17600214829195601596

`∑{e}[and(n+1, -(n+1)), #]+2`
-/

namespace A085058.P17600214829195601596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2

end

end A085058.P17600214829195601596

namespace A085058

/-- `∑{e}[and(n+1, -(n+1)), #]+2` -/
def P17600214829195601596.Spec : Prop :=
  ∀ n, (P17600214829195601596.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P14371588232591517873

`∑{e}[or(n+1, -(n+1)), #]+2`
-/

namespace A085058.P14371588232591517873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2

end

end A085058.P14371588232591517873

namespace A085058

/-- `∑{e}[or(n+1, -(n+1)), #]+2` -/
def P14371588232591517873.Spec : Prop :=
  ∀ n, (P14371588232591517873.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P811193938767773595

`∏{e}[4*and(n+1, -(n+1)), #]`
-/

namespace A085058.P811193938767773595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A085058.P811193938767773595

namespace A085058

/-- `∏{e}[4*and(n+1, -(n+1)), #]` -/
def P811193938767773595.Spec : Prop :=
  ∀ n, (P811193938767773595.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P16699525706909516351

`∏{e}[4*or(n+1, -(n+1)), #]`
-/

namespace A085058.P16699525706909516351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A085058.P16699525706909516351

namespace A085058

/-- `∏{e}[4*or(n+1, -(n+1)), #]` -/
def P16699525706909516351.Spec : Prop :=
  ∀ n, (P16699525706909516351.a n : ℤ) = A085058 n

end A085058

/-! ## A085058.P16165910694244691680

`A089080(n+2)`
-/

namespace A085058.P16165910694244691680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 2)

end

end A085058.P16165910694244691680

namespace A085058

/-- `A089080(n+2)` -/
def P16165910694244691680.Spec : Prop :=
  ∀ n, P16165910694244691680.a n = A085058 n

end A085058

/-! ## A085058.P1089538056415914147

`abs(A123725(n+1))`
-/

namespace A085058.P1089538056415914147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 (n + 1)|

end

end A085058.P1089538056415914147

namespace A085058

/-- `abs(A123725(n+1))` -/
def P1089538056415914147.Spec : Prop :=
  ∀ n, P1089538056415914147.a n = A085058 n

end A085058

/-! ## A085058.P1982372590351772430

`log2(A059159(n+1))`
-/

namespace A085058.P1982372590351772430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059159 (n + 1) : ℝ)

end

end A085058.P1982372590351772430

namespace A085058

/-- `log2(A059159(n+1))` -/
def P1982372590351772430.Spec : Prop :=
  ∀ n, P1982372590351772430.a n = (A085058 n : ℝ)

end A085058

/-! ## A085058.P14228994940091116697

`Δ[A005187(n)]+1`
-/

namespace A085058.P14228994940091116697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A085058.P14228994940091116697

namespace A085058

/-- `Δ[A005187(n)]+1` -/
def P14228994940091116697.Spec : Prop :=
  ∀ n, P14228994940091116697.a n = A085058 n

end A085058

/-!
# A085059: a(1) = 1, a(n+1) = a(n)-n if a(n) > n else a(n+1) = a(n) + n.

The programs for A085059, the canonical program `A085059.P1174924568740719746` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085059 has offset 1).

The definition of A085059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085059.P1174924568740719746

`(a(n-1)-1+n)%(2*n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085059

/-- `(a(n-1)-1+n)%(2*n)+1` -/
def P1174924568740719746.Spec : Prop :=
  ∀ n, P1174924568740719746.a n = A085059 (n + 1)

theorem P1174924568740719746.correct : P1174924568740719746.Spec := by
  intro n
  simp only [A085059, Nat.add_sub_cancel]

end A085059

/-! ## A085059.P12880292109920397826

`1-(1-a(n-1)-n)%(2*n)` with `a(0)=1`
-/

namespace A085059.P12880292109920397826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (1 - a (n - 1) - (n : ℤ)) (2 * n : ℤ)

end

end A085059.P12880292109920397826

namespace A085059

/-- `1-(1-a(n-1)-n)%(2*n)` -/
def P12880292109920397826.Spec : Prop :=
  ∀ n, P12880292109920397826.a n = A085059 (n + 1)

end A085059

/-! ## A085059.P15625190955815498900

`(a(n-1)+n-1)%(n+n)+1` with `a(0)=1`
-/

namespace A085059.P15625190955815498900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + ((n : ℤ) - 1)) (n + n : ℤ) + 1

end

end A085059.P15625190955815498900

namespace A085059

/-- `(a(n-1)+n-1)%(n+n)+1` -/
def P15625190955815498900.Spec : Prop :=
  ∀ n, P15625190955815498900.a n = A085059 (n + 1)

theorem P15625190955815498900.correct : P15625190955815498900.Spec := by
  intro n
  simp only [A085059, Nat.add_sub_cancel, A085059.P15625190955815498900.a, A085059.P1174924568740719746.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A085059

/-! ## A085059.P9899287744558786399

`A008344(n+1)+1`
-/

namespace A085059.P9899287744558786399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (n + 1) + 1

end

end A085059.P9899287744558786399

namespace A085059

/-- `A008344(n+1)+1` -/
def P9899287744558786399.Spec : Prop :=
  ∀ n, P9899287744558786399.a n = A085059 (n + 1)

end A085059

/-! ## A085059.P14361796855140447250

`A109594(A008344(A016789(n)))`
-/

namespace A085059.P14361796855140447250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A008344 (A016789 n).toNat).toNat

end

end A085059.P14361796855140447250

namespace A085059

/-- `A109594(A008344(A016789(n)))` -/
def P14361796855140447250.Spec : Prop :=
  ∀ n, P14361796855140447250.a n = A085059 (n + 1)

end A085059

/-! ## A085059.P17209189617308055866

`A074294(a(n-1)+n²)` with `a(0)=1`
-/

namespace A085059.P17209189617308055866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074294 (a (n - 1) + (n ^ 2 : ℤ)).toNat

end

end A085059.P17209189617308055866

namespace A085059

/-- `A074294(a(n-1)+n²)` -/
def P17209189617308055866.Spec : Prop :=
  ∀ n, P17209189617308055866.a n = A085059 (n + 1)

end A085059

/-! ## A085059.P14601220506493270782

`A004736(2*n²-a(n-1)+1)` with `a(0)=1`
-/

namespace A085059.P14601220506493270782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004736 ((2 * n ^ 2 : ℤ) - a (n - 1) + 1).toNat

end

end A085059.P14601220506493270782

namespace A085059

/-- `A004736(2*n²-a(n-1)+1)` -/
def P14601220506493270782.Spec : Prop :=
  ∀ n, P14601220506493270782.a n = A085059 (n + 1)

end A085059

/-! ## A085059.P12645181336083272620

`A074135(A266304(2*n+1))-A266304(2*n)`
-/

namespace A085059.P12645181336083272620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A266304 (2 * n + 1)).toNat - A266304 (2 * n)

end

end A085059.P12645181336083272620

namespace A085059

/-- `A074135(A266304(2*n+1))-A266304(2*n)` -/
def P12645181336083272620.Spec : Prop :=
  ∀ n, P12645181336083272620.a n = A085059 (n + 1)

end A085059

/-!
# A085060: Integer reached in A085058.

The programs for A085060, the canonical program `A085060.P3128455452568235012` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085060 has offset 0).

The definition of A085060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085060.P14153181670355531232

`(3/2)^val(2*n+2, 2)*(3*n+3)-3/2`
-/

namespace A085060.P14153181670355531232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (2 * n + 2) 2 * (3 * n + 3 : ℚ) - (3 : ℚ) / 2

end

end A085060.P14153181670355531232

namespace A085060

/-- `(3/2)^val(2*n+2, 2)*(3*n+3)-3/2` -/
def P14153181670355531232.Spec : Prop :=
  ∀ n, P14153181670355531232.a n = (A085060 n : ℚ)

end A085060

/-! ## A085060.P3128455452568235012

`(3/2)^A085058(n)*(2*n+2)-3/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085060

/-- `(3/2)^A085058(n)*(2*n+2)-3/2` -/
def P3128455452568235012.Spec : Prop :=
  ∀ n, P3128455452568235012.a n = (A085060 n : ℚ)

end A085060

/-! ## A085060.P14487715774468941060

`9*A085062(n)+3`
-/

namespace A085060.P14487715774468941060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A085062 n + 3

end

end A085060.P14487715774468941060

namespace A085060

/-- `9*A085062(n)+3` -/
def P14487715774468941060.Spec : Prop :=
  ∀ n, P14487715774468941060.a n = A085060 n

end A085060

/-! ## A085060.P5776587926989776959

`3*A085062(Δ[n²])`
-/

namespace A085060.P5776587926989776959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085062 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085060.P5776587926989776959

namespace A085060

/-- `3*A085062(Δ[n²])` -/
def P5776587926989776959.Spec : Prop :=
  ∀ n, P5776587926989776959.a n = A085060 n

end A085060

/-! ## A085060.P12337951377933148302

`A085062(A004767(n))-1`
-/

namespace A085060.P12337951377933148302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A004767 n).toNat - 1

end

end A085060.P12337951377933148302

namespace A085060

/-- `A085062(A004767(n))-1` -/
def P12337951377933148302.Spec : Prop :=
  ∀ n, P12337951377933148302.a n = A085060 n

end A085060

/-! ## A085060.P13841973137508320836

`A085062(A016969(n))-1`
-/

namespace A085060.P13841973137508320836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A016969 n).toNat - 1

end

end A085060.P13841973137508320836

namespace A085060

/-- `A085062(A016969(n))-1` -/
def P13841973137508320836.Spec : Prop :=
  ∀ n, P13841973137508320836.a n = A085060 n

end A085060

/-! ## A085060.P17584260882831480195

`A017197(A085062(n))`
-/

namespace A085060.P17584260882831480195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (A085062 n).toNat

end

end A085060.P17584260882831480195

namespace A085060

/-- `A017197(A085062(n))` -/
def P17584260882831480195.Spec : Prop :=
  ∀ n, P17584260882831480195.a n = A085060 n

end A085060

/-! ## A085060.P5314631519417376145

`A000027(A017185(A085062(n))+1)`
-/

namespace A085060.P5314631519417376145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017185 (A085062 n).toNat + 1).toNat

end

end A085060.P5314631519417376145

namespace A085060

/-- `A000027(A017185(A085062(n))+1)` -/
def P5314631519417376145.Spec : Prop :=
  ∀ n, P5314631519417376145.a n = A085060 n

end A085060

/-! ## A085060.P262779799886106709

`A000007(n+1)+A017185(A085062(n))+1`
-/

namespace A085060.P262779799886106709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A017185 (A085062 n).toNat + 1)

end

end A085060.P262779799886106709

namespace A085060

/-- `A000007(n+1)+A017185(A085062(n))+1` -/
def P262779799886106709.Spec : Prop :=
  ∀ n, P262779799886106709.a n = A085060 n

end A085060

/-! ## A085060.P2315608692827551745

`A016051(A394497(n+1))`
-/

namespace A085060.P2315608692827551745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (A394497 (n + 1)).toNat

end

end A085060.P2315608692827551745

namespace A085060

/-- `A016051(A394497(n+1))` -/
def P2315608692827551745.Spec : Prop :=
  ∀ n, P2315608692827551745.a n = A085060 n

end A085060

/-! ## A085060.P11869490325038750152

`A008585(A008585(A085062(n))+1)`
-/

namespace A085060.P11869490325038750152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008585 (A085062 n).toNat + 1).toNat

end

end A085060.P11869490325038750152

namespace A085060

/-- `A008585(A008585(A085062(n))+1)` -/
def P11869490325038750152.Spec : Prop :=
  ∀ n, P11869490325038750152.a n = A085060 n

end A085060

/-! ## A085060.P11842027627034988541

`3*A008611(9*A085062(n))`
-/

namespace A085060.P11842027627034988541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008611 (9 * A085062 n).toNat

end

end A085060.P11842027627034988541

namespace A085060

/-- `3*A008611(9*A085062(n))` -/
def P11842027627034988541.Spec : Prop :=
  ∀ n, P11842027627034988541.a n = A085060 n

end A085060

/-! ## A085060.P11968316513716620185

`A017185(A085062(n))+A007318(∑[n])`
-/

namespace A085060.P11968316513716620185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A085062 n).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085060.P11968316513716620185

namespace A085060

/-- `A017185(A085062(n))+A007318(∑[n])` -/
def P11968316513716620185.Spec : Prop :=
  ∀ n, P11968316513716620185.a n = A085060 n

end A085060

/-!
# A085062: a(n) = A085060(n)/9 - 1/3.

The programs for A085062, the canonical program `A085062.P13663809512350545089` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085062 has offset 0).

The definition of A085062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085062.P680953207787472924

`((3/2)^val(n+1, 2)*(n+1)-1)/2`
-/

namespace A085062.P680953207787472924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1 : ℚ) - 1) / 2

end

end A085062.P680953207787472924

namespace A085062

/-- `((3/2)^val(n+1, 2)*(n+1)-1)/2` -/
def P680953207787472924.Spec : Prop :=
  ∀ n, P680953207787472924.a n = (A085062 n : ℚ)

end A085062

/-! ## A085062.P13663809512350545089

`A085060(n)/9-1/3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085062

/-- `A085060(n)/9-1/3` -/
def P13663809512350545089.Spec : Prop :=
  ∀ n, P13663809512350545089.a n = (A085062 n : ℚ)

end A085062

/-! ## A085062.P4549006926340177038

`(A394497(n+1)-1)/2`
-/

namespace A085062.P4549006926340177038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394497 (n + 1) - 1 : ℚ) / 2

end

end A085062.P4549006926340177038

namespace A085062

/-- `(A394497(n+1)-1)/2` -/
def P4549006926340177038.Spec : Prop :=
  ∀ n, P4549006926340177038.a n = (A085062 n : ℚ)

end A085062

/-! ## A085062.P1906477369512912561

`A108228(A079707(n+1))`
-/

namespace A085062.P1906477369512912561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (A079707 (n + 1)).toNat

end

end A085062.P1906477369512912561

namespace A085062

/-- `A108228(A079707(n+1))` -/
def P1906477369512912561.Spec : Prop :=
  ∀ n, P1906477369512912561.a n = A085062 n

end A085062

/-! ## A085062.P15956373817424317086

`floor(A166624(n+1)/A079065(2*(n+1)))`
-/

namespace A085062.P15956373817424317086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166624 (n + 1) : ℚ) / (A079065 (2 * (n + 1)) : ℚ)⌋

end

end A085062.P15956373817424317086

namespace A085062

/-- `floor(A166624(n+1)/A079065(2*(n+1)))` -/
def P15956373817424317086.Spec : Prop :=
  ∀ n, P15956373817424317086.a n = A085062 n

end A085062

/-! ## A085062.P8802536767412647577

`A048673(A000010(xor(n, n+1)+1)*A064989(n+1))-1`
-/

namespace A085062.P8802536767412647577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A000010 (Nat.xor n (n + 1) + 1) * A064989 (n + 1)).toNat - 1

end

end A085062.P8802536767412647577

namespace A085062

/-- `A048673(A000010(xor(n, n+1)+1)*A064989(n+1))-1` -/
def P8802536767412647577.Spec : Prop :=
  ∀ n, P8802536767412647577.a n = A085062 n

end A085062

/-! ## A085062.P8679124906119581348

`∑{d}[n+1, A057979(#)*A259346((n+1)/#)]`
-/

namespace A085062.P8679124906119581348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057979 d * A259346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085062.P8679124906119581348

namespace A085062

/-- `∑{d}[n+1, A057979(#)*A259346((n+1)/#)]` -/
def P8679124906119581348.Spec : Prop :=
  ∀ n, P8679124906119581348.a n = A085062 n

end A085062

/-! ## A085062.P13288151725853658415

`A057428(n+1)+A048673(A079707(n+1))`
-/

namespace A085062.P13288151725853658415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A048673 (A079707 (n + 1)).toNat

end

end A085062.P13288151725853658415

namespace A085062

/-- `A057428(n+1)+A048673(A079707(n+1))` -/
def P13288151725853658415.Spec : Prop :=
  ∀ n, P13288151725853658415.a n = A085062 n

end A085062

/-! ## A085062.P15882466676223712874

`A283464(A079707(2*(n+1)))-1`
-/

namespace A085062.P15882466676223712874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A079707 (2 * (n + 1))).toNat - 1

end

end A085062.P15882466676223712874

namespace A085062

/-- `A283464(A079707(2*(n+1)))-1` -/
def P15882466676223712874.Spec : Prop :=
  ∀ n, P15882466676223712874.a n = A085062 n

end A085062

/-! ## A085062.P6066804918229321598

`A004524(A394497(n+1))`
-/

namespace A085062.P6066804918229321598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A394497 (n + 1)).toNat

end

end A085062.P6066804918229321598

namespace A085062

/-- `A004524(A394497(n+1))` -/
def P6066804918229321598.Spec : Prop :=
  ∀ n, P6066804918229321598.a n = A085062 n

end A085062

/-! ## A085062.P13386336859756015602

`A004524(3^val(n+1, 2)*A000265(n+1))`
-/

namespace A085062.P13386336859756015602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ((3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A000265 (n + 1)).toNat

end

end A085062.P13386336859756015602

namespace A085062

/-- `A004524(3^val(n+1, 2)*A000265(n+1))` -/
def P13386336859756015602.Spec : Prop :=
  ∀ n, P13386336859756015602.a n = A085062 n

end A085062

/-! ## A085062.P17396156765358061710

`A110654(A003961(A079707(n+1))-1)`
-/

namespace A085062.P17396156765358061710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003961 (A079707 (n + 1)).toNat - 1).toNat

end

end A085062.P17396156765358061710

namespace A085062

/-- `A110654(A003961(A079707(n+1))-1)` -/
def P17396156765358061710.Spec : Prop :=
  ∀ n, P17396156765358061710.a n = A085062 n

end A085062

/-! ## A085062.P2167420744855400510

`A004526(A000265(n+1)*A003961(A006519(n+1)))`
-/

namespace A085062.P2167420744855400510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000265 (n + 1) * A003961 (A006519 (n + 1)).toNat).toNat

end

end A085062.P2167420744855400510

namespace A085062

/-- `A004526(A000265(n+1)*A003961(A006519(n+1)))` -/
def P2167420744855400510.Spec : Prop :=
  ∀ n, P2167420744855400510.a n = A085062 n

end A085062

/-! ## A085062.P12941204885577860714

`A343609(A085060(n))`
-/

namespace A085062.P12941204885577860714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A085060 n).toNat

end

end A085062.P12941204885577860714

namespace A085062

/-- `A343609(A085060(n))` -/
def P12941204885577860714.Spec : Prop :=
  ∀ n, P12941204885577860714.a n = A085062 n

end A085062

/-!
# A085063: a(n) is the minimal number k such that n+k and n*k+1 are primes.

The programs for A085063, there is no canonical definition to state claims against.
-/

/-! ## A085063.P6342364711890377450

`A120223(n+1)^Δ[A065855(n+1)]`
-/

namespace A085063.P6342364711890377450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120223 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A085063.P6342364711890377450

/-! ## A085063.P17781543952292416697

`gcd(Δ[A000720(n+1)], A120223(n+1))`
-/

namespace A085063.P17781543952292416697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A120223 (n + 1))

end

end A085063.P17781543952292416697

/-! ## A085063.P17359912623378090804

`A120223(n+1)^A151909(Δ[A000720(n+1)])`
-/

namespace A085063.P17359912623378090804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120223 (n + 1) : ℚ) ^ (A151909 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A085063.P17359912623378090804

/-! ## A085063.P2060087815283349960

`A120223(n+1)^A151933(Δ[A000720(n+1)])`
-/

namespace A085063.P2060087815283349960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120223 (n + 1) : ℚ) ^ (A151933 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A085063.P2060087815283349960

/-! ## A085063.P2112799052888314839

`A120223(n+1)^Δ[A062298(n+1)]`
-/

namespace A085063.P2112799052888314839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120223 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A085063.P2112799052888314839

/-!
# A085069: a(1) =1, then the smallest number a(n)== 1 ( mod a(n-1)) such that tau(a(n))= n.

The programs for A085069, there is no canonical definition to state claims against.
-/

/-! ## A085069.P13321544236935422642

`round(A201948(n+1)+2/A128030(n+1))`
-/

namespace A085069.P13321544236935422642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A201948 (n + 1) : ℚ) + 2 / (A128030 (n + 1) : ℚ))

end

end A085069.P13321544236935422642

/-! ## A085069.P3314531237406984088

`A273893(n)-A008683(A199418(n))`
-/

namespace A085069.P3314531237406984088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 n - A008683 (A199418 n).toNat

end

end A085069.P3314531237406984088

/-!
# A085072: Smallest k such that n and n+k have the same prime signature.

The programs for A085072, there is no canonical definition to state claims against.
-/

/-! ## A085072.P5796627735218250347

`A081761(n+2)-(n+2)`
-/

namespace A085072.P5796627735218250347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (n + 2) - (n + 2 : ℤ)

end

end A085072.P5796627735218250347

/-! ## A085072.P13395577503137742266

`A174344(A317186(2*(n+2)))+A081761(n+2)`
-/

namespace A085072.P13395577503137742266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A317186 (2 * (n + 2))).toNat + A081761 (n + 2)

end

end A085072.P13395577503137742266

/-!
# A085074: Smallest number a(n) == 1 (mod n) such that the prime signature of n and a(n) is the same.

The programs for A085074, there is no canonical definition to state claims against.
-/

/-! ## A085074.P12483195989362219716

`A113031(∑[n+1]+2)`
-/

namespace A085074.P12483195989362219716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113031 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A085074.P12483195989362219716

/-!
# A085076: Triangular numbers > 0 with a prime signature that has not occurred earlier.

The programs for A085076, there is no canonical definition to state claims against.
-/

/-! ## A085076.P2306917058163617430

`eq[A001221(A241479(n+1)), A202006(n+1)]`
-/

namespace A085076.P2306917058163617430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A241479 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085076.P2306917058163617430

/-! ## A085076.P151514329481945015

`C(∑[A078147(A372981(3*n+2))], 2)`
-/

namespace A085076.P151514329481945015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A372981 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A085076.P151514329481945015

/-! ## A085076.P17604749136364907285

`eq[A001221(A241479(n+1)), A208825(n+1)]`
-/

namespace A085076.P17604749136364907285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A241479 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085076.P17604749136364907285

/-! ## A085076.P5827861748897574137

`eq[A210679(A084646(n+1)), A266935(n+1)]`
-/

namespace A085076.P5827861748897574137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210679 (A084646 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085076.P5827861748897574137

/-!
# A085077: Fibonacci numbers with a prime signature that has not occurred earlier.

The programs for A085077, there is no canonical definition to state claims against.
-/

/-! ## A085077.P7392652532073663562

`A000045(∑[A189428(n+1)%6])`
-/

namespace A085077.P7392652532073663562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189428 (n + 1)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085077.P7392652532073663562

/-! ## A085077.P13268651300032849421

`A000045(A140181(2*n+1)%A140178(n+2))`
-/

namespace A085077.P13268651300032849421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A140181 (2 * n + 1)) (A140178 (n + 2))).toNat

end

end A085077.P13268651300032849421

/-! ## A085077.P6058788941339992310

`A000045(A140181(2*n+1))%A140179(n+2)`
-/

namespace A085077.P6058788941339992310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A140181 (2 * n + 1)).toNat) (A140179 (n + 2))

end

end A085077.P6058788941339992310

/-! ## A085077.P5582757117210165093

`A087172(∑[A061159(n)])`
-/

namespace A085077.P5582757117210165093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085077.P5582757117210165093

/-!
# A085078: The largest number with the prime signature of n! using primes <= n.

The programs for A085078, there is no canonical definition to state claims against.
-/

/-! ## A085078.P9964270514150347536

`A069799(A000142(n+1))`
-/

namespace A085078.P9964270514150347536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A000142 (n + 1)).toNat

end

end A085078.P9964270514150347536

/-! ## A085078.P8855726687498619121

`A054842(A093881(n+1))`
-/

namespace A085078.P8855726687498619121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A093881 (n + 1)).toNat

end

end A085078.P8855726687498619121

/-! ## A085078.P10133835526336596166

`A304660(A325508(n+1))`
-/

namespace A085078.P10133835526336596166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (A325508 (n + 1)).toNat

end

end A085078.P10133835526336596166

/-! ## A085078.P15841049912562934285

`A061509(∑[A054841(n+1)])`
-/

namespace A085078.P15841049912562934285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085078.P15841049912562934285

/-!
# A085079: Largest number with the prime signature of n using prime divisors of n.

The programs for A085079, there is no canonical definition to state claims against.
-/

/-! ## A085079.P14546955119256160671

`A069799(A089247(n+1))`
-/

namespace A085079.P14546955119256160671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A089247 (n + 1)).toNat

end

end A085079.P14546955119256160671

/-! ## A085079.P17540627000654671829

`A225891(A089247(n+1))+A000007(A034962(n+1))`
-/

namespace A085079.P17540627000654671829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (A089247 (n + 1)).toNat + A000007 (A034962 (n + 1)).toNat

end

end A085079.P17540627000654671829

/-! ## A085079.P8721530665061881321

`A225891(A089247(n+1))+A181405(A034962(n+1)+1)`
-/

namespace A085079.P8721530665061881321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (A089247 (n + 1)).toNat + A181405 (A034962 (n + 1) + 1).toNat

end

end A085079.P8721530665061881321

/-! ## A085079.P402856016597454146

`A130747(A002491(n+1))*A225891(A089247(n+1))`
-/

namespace A085079.P402856016597454146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A002491 (n + 1)).toNat * A225891 (A089247 (n + 1)).toNat

end

end A085079.P402856016597454146

/-! ## A085079.P14251559448927994748

`A225891(A089247(n+1))%p?[A001844(n)]`
-/

namespace A085079.P14251559448927994748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225891 (A089247 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A085079.P14251559448927994748

/-! ## A085079.P3991752071639892266

`lcm(A062759(n+1), A062759(A304180(n+1)))`
-/

namespace A085079.P3991752071639892266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062759 (n + 1)) (A062759 (A304180 (n + 1)).toNat)

end

end A085079.P3991752071639892266

/-! ## A085079.P10881811462586130293

`A225891(A089247(n+1))+A062977(A066638(n+1))`
-/

namespace A085079.P10881811462586130293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (A089247 (n + 1)).toNat + A062977 (A066638 (n + 1)).toNat

end

end A085079.P10881811462586130293

/-! ## A085079.P2805992120628458733

`A093178(A137502(n+1))*A225891(A089247(n+1))`
-/

namespace A085079.P2805992120628458733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A137502 (n + 1)).toNat * A225891 (A089247 (n + 1)).toNat

end

end A085079.P2805992120628458733

/-! ## A085079.P3279161477515138552

`A225891(A089247(A225891(n+1)))`
-/

namespace A085079.P3279161477515138552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (A089247 (A225891 (n + 1)).toNat).toNat

end

end A085079.P3279161477515138552

/-!
# A085081: Group the natural numbers such that the product of the terms of the n-th group has a divisor with the same prime signature as that of the product of the terms of the (n-1)-th group. (1), (2), (3), (4), (5,6,7,8), (9,10,11,12,13,14),... Sequence contains the product of the terms of the groups.

The programs for A085081, there is no canonical definition to state claims against.
-/

/-! ## A085081.P5007126299578453048

`ratio[A000142(record[A084888(n)])]`
-/

namespace A085081.P5007126299578453048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085081.P5007126299578453048

/-!
# A085082: Number of distinct prime signatures arising among the divisors of n.

The programs for A085082, the canonical program `A085082.P10857957340436875552` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085082 has offset 1).

The definition of A085082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085082.P18376050991464346610

`A238746(A101296(n+1))`
-/

namespace A085082.P18376050991464346610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238746 (A101296 (n + 1)).toNat

end

end A085082.P18376050991464346610

namespace A085082

/-- `A238746(A101296(n+1))` -/
def P18376050991464346610.Spec : Prop :=
  ∀ n, P18376050991464346610.a n = A085082 (n + 1)

end A085082

/-! ## A085082.P11678269130305806144

`A322584(A046523(n+1))`
-/

namespace A085082.P11678269130305806144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A046523 (n + 1)).toNat

end

end A085082.P11678269130305806144

namespace A085082

/-- `A322584(A046523(n+1))` -/
def P11678269130305806144.Spec : Prop :=
  ∀ n, P11678269130305806144.a n = A085082 (n + 1)

end A085082

/-! ## A085082.P15960089642638847337

`A238690(A181819(n+1))`
-/

namespace A085082.P15960089642638847337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A181819 (n + 1)).toNat

end

end A085082.P15960089642638847337

namespace A085082

/-- `A238690(A181819(n+1))` -/
def P15960089642638847337.Spec : Prop :=
  ∀ n, P15960089642638847337.a n = A085082 (n + 1)

end A085082

/-! ## A085082.P7878913168493329873

`A238690(A238745(n+1))`
-/

namespace A085082.P7878913168493329873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A238745 (n + 1)).toNat

end

end A085082.P7878913168493329873

namespace A085082

/-- `A238690(A238745(n+1))` -/
def P7878913168493329873.Spec : Prop :=
  ∀ n, P7878913168493329873.a n = A085082 (n + 1)

end A085082

/-! ## A085082.P10857957340436875552

`∑{d}[A046523(n+1), C(A046523(#), #)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A085082

/-- `∑{d}[A046523(n+1), C(A046523(#), #)]` -/
def P10857957340436875552.Spec : Prop :=
  ∀ n, (P10857957340436875552.a n : ℤ) = A085082 (n + 1)

theorem P10857957340436875552.correct : P10857957340436875552.Spec := by
  intro n
  simp only [A085082, Nat.add_sub_cancel]

end A085082

/-! ## A085082.P6623814563993170848

`A212180(A064549(n+1))`
-/

namespace A085082.P6623814563993170848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 (A064549 (n + 1)).toNat

end

end A085082.P6623814563993170848

namespace A085082

/-- `A212180(A064549(n+1))` -/
def P6623814563993170848.Spec : Prop :=
  ∀ n, P6623814563993170848.a n = A085082 (n + 1)

end A085082

/-! ## A085082.P18205173305181958412

`A212180((n+1)*A007947(n+1))`
-/

namespace A085082.P18205173305181958412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A085082.P18205173305181958412

namespace A085082

/-- `A212180((n+1)*A007947(n+1))` -/
def P18205173305181958412.Spec : Prop :=
  ∀ n, P18205173305181958412.a n = A085082 (n + 1)

end A085082

/-!
# A085083: Index of the first occurrence of n in A085082. Smallest number having divisors with n distinct prime signatures.

The programs for A085083, there is no canonical definition to state claims against.
-/

/-! ## A085083.P6082910611179689439

`A276270(2*A305183(n))/2`
-/

namespace A085083.P6082910611179689439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276270 (2 * A305183 n).toNat : ℚ) / 2

end

end A085083.P6082910611179689439

/-!
# A085086: a(1) = 1; if n is composite then a(n) = Sum_{i < n, i not prime} a(i), else if n is prime then a(n) = sum_{ j < n, j is a noncomposite} a(j).

The programs for A085086, the canonical program `A085086.P9396323026637510600` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085086 has offset 1).

The definition of A085086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085086.P1089345734698817488

`ceil(2^(A066136(n+1)-1))`
-/

namespace A085086.P1089345734698817488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A066136 (n + 1) - 1 : ℤ)⌉

end

end A085086.P1089345734698817488

namespace A085086

/-- `ceil(2^(A066136(n+1)-1))` -/
def P1089345734698817488.Spec : Prop :=
  ∀ n, P1089345734698817488.a n = A085086 (n + 1)

end A085086

/-! ## A085086.P15113207343869810335

`A011782(A066136(n+1))`
-/

namespace A085086.P15113207343869810335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A066136 (n + 1)).toNat

end

end A085086.P15113207343869810335

namespace A085086

/-- `A011782(A066136(n+1))` -/
def P15113207343869810335.Spec : Prop :=
  ∀ n, P15113207343869810335.a n = A085086 (n + 1)

end A085086

/-! ## A085086.P9396323026637510600

`A158780(A073897(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085086

/-- `A158780(A073897(n+1))` -/
def P9396323026637510600.Spec : Prop :=
  ∀ n, P9396323026637510600.a n = A085086 (n + 1)

theorem P9396323026637510600.correct : P9396323026637510600.Spec := by
  intro n
  simp only [A085086, Nat.add_sub_cancel]

end A085086

/-! ## A085086.P16669451317705499491

`A158780(A073898(n+1))`
-/

namespace A085086.P16669451317705499491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A073898 (n + 1)).toNat

end

end A085086.P16669451317705499491

namespace A085086

/-- `A158780(A073898(n+1))` -/
def P16669451317705499491.Spec : Prop :=
  ∀ n, P16669451317705499491.a n = A085086 (n + 1)

end A085086

/-! ## A085086.P15795385811911676839

`A011782(floor(A073897(n+1)/2))`
-/

namespace A085086.P15795385811911676839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌊(A073897 (n + 1) : ℚ) / 2⌋.toNat

end

end A085086.P15795385811911676839

namespace A085086

/-- `A011782(floor(A073897(n+1)/2))` -/
def P15795385811911676839.Spec : Prop :=
  ∀ n, P15795385811911676839.a n = A085086 (n + 1)

end A085086

/-!
# A085087: a(1) = 1; for n>1, a(n) = a(n-1)*n if n is prime, a(n) = a(n-1)/n if n is composite dividing a(n-1) else a(n) = a(n-1).

The programs for A085087, there is no canonical definition to state claims against.
-/

/-! ## A085087.P2454070825527199865

`A007913(A072983(n+1)*A130086(n+1))`
-/

namespace A085087.P2454070825527199865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A072983 (n + 1) * A130086 (n + 1)).toNat

end

end A085087.P2454070825527199865

/-! ## A085087.P4728726777125905506

`A083346(A072983(n+1)*A130086(n+1))`
-/

namespace A085087.P4728726777125905506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A072983 (n + 1) * A130086 (n + 1)).toNat

end

end A085087.P4728726777125905506

/-! ## A085087.P13095641668101914727

`lcm(A054576(A034386(n)), A130087(n+1))`
-/

namespace A085087.P13095641668101914727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054576 (A034386 n).toNat) (A130087 (n + 1))

end

end A085087.P13095641668101914727

/-! ## A085087.P9976117973203882020

`A074044(A072983(n+1))`
-/

namespace A085087.P9976117973203882020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (A072983 (n + 1)).toNat

end

end A085087.P9976117973203882020

/-! ## A085087.P13520701732880067440

`A007913(A212397(n+1))`
-/

namespace A085087.P13520701732880067440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A212397 (n + 1)).toNat

end

end A085087.P13520701732880067440

/-!
# A085089: Number of distinct prime signatures arising up to n.

The programs for A085089, the canonical program `A085089.P6798308671670797143` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085089 has offset 1).

The definition of A085089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085089.P6798308671670797143

`∑[A322585(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085089

/-- `∑[A322585(n+1)]` -/
def P6798308671670797143.Spec : Prop :=
  ∀ n, P6798308671670797143.a n = A085089 (n + 1)

theorem P6798308671670797143.correct : P6798308671670797143.Spec := by
  intro n
  simp only [A085089, Nat.add_sub_cancel]

end A085089

/-! ## A085089.P3853873761132055392

`∑[char[A036035(n)-1]]`
-/

namespace A085089.P3853873761132055392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P3853873761132055392

namespace A085089

/-- `∑[char[A036035(n)-1]]` -/
def P3853873761132055392.Spec : Prop :=
  ∀ n, (P3853873761132055392.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P15481784151438298386

`∑[char[A278222(n)-1]]`
-/

namespace A085089.P15481784151438298386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P15481784151438298386

namespace A085089

/-- `∑[char[A278222(n)-1]]` -/
def P15481784151438298386.Spec : Prop :=
  ∀ n, (P15481784151438298386.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P5353075136220494421

`∑[floor(1/A064839(n+1))]`
-/

namespace A085089.P5353075136220494421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A064839 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P5353075136220494421

namespace A085089

/-- `∑[floor(1/A064839(n+1))]` -/
def P5353075136220494421.Spec : Prop :=
  ∀ n, P5353075136220494421.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P8192209385423030827

`∑[floor(1/A328478(n+1))]`
-/

namespace A085089.P8192209385423030827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A328478 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P8192209385423030827

namespace A085089

/-- `∑[floor(1/A328478(n+1))]` -/
def P8192209385423030827.Spec : Prop :=
  ∀ n, P8192209385423030827.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P16798043000537925238

`∑[char[A025487(n+1)-1]]`
-/

namespace A085089.P16798043000537925238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P16798043000537925238

namespace A085089

/-- `∑[char[A025487(n+1)-1]]` -/
def P16798043000537925238.Spec : Prop :=
  ∀ n, (P16798043000537925238.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P15278939790423678306

`∑[char[A181821(n+1)-1]]`
-/

namespace A085089.P15278939790423678306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P15278939790423678306

namespace A085089

/-- `∑[char[A181821(n+1)-1]]` -/
def P15278939790423678306.Spec : Prop :=
  ∀ n, (P15278939790423678306.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P1148486316274620806

`∑[char[A278233(n+1)-1]]`
-/

namespace A085089.P1148486316274620806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P1148486316274620806

namespace A085089

/-- `∑[char[A278233(n+1)-1]]` -/
def P1148486316274620806.Spec : Prop :=
  ∀ n, (P1148486316274620806.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P16362907516066753608

`∑[C(A083260(n+1), n+1)]`
-/

namespace A085089.P16362907516066753608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083260 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P16362907516066753608

namespace A085089

/-- `∑[C(A083260(n+1), n+1)]` -/
def P16362907516066753608.Spec : Prop :=
  ∀ n, (P16362907516066753608.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P5896962370573332278

`∑[A209229(A348990(n+1))]`
-/

namespace A085089.P5896962370573332278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A348990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P5896962370573332278

namespace A085089

/-- `∑[A209229(A348990(n+1))]` -/
def P5896962370573332278.Spec : Prop :=
  ∀ n, P5896962370573332278.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P15866768473534614100

`∑[A341629(A328478(n+1))]`
-/

namespace A085089.P15866768473534614100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (A328478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P15866768473534614100

namespace A085089

/-- `∑[A341629(A328478(n+1))]` -/
def P15866768473534614100.Spec : Prop :=
  ∀ n, P15866768473534614100.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P3107596605093455754

`∑[A057945(floor(A046523(n+1)/(n+1)))]`
-/

namespace A085089.P3107596605093455754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 ⌊(A046523 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P3107596605093455754

namespace A085089

/-- `∑[A057945(floor(A046523(n+1)/(n+1)))]` -/
def P3107596605093455754.Spec : Prop :=
  ∀ n, P3107596605093455754.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P17874644335609888665

`∑[char[A046523(n+1)-1]]`
-/

namespace A085089.P17874644335609888665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P17874644335609888665

namespace A085089

/-- `∑[char[A046523(n+1)-1]]` -/
def P17874644335609888665.Spec : Prop :=
  ∀ n, (P17874644335609888665.a n : ℤ) = A085089 (n + 1)

end A085089

/-! ## A085089.P8518890977179500686

`∑[A344438(A023896(n+1))]`
-/

namespace A085089.P8518890977179500686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (A023896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P8518890977179500686

namespace A085089

/-- `∑[A344438(A023896(n+1))]` -/
def P8518890977179500686.Spec : Prop :=
  ∀ n, P8518890977179500686.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P5286823723074653952

`∑[A008683(A319627(n+1)²)]`
-/

namespace A085089.P5286823723074653952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A319627 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P5286823723074653952

namespace A085089

/-- `∑[A008683(A319627(n+1)²)]` -/
def P5286823723074653952.Spec : Prop :=
  ∀ n, P5286823723074653952.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P10528133425728874673

`A322585((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A085089.P10528133425728874673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322585 ((n + 1) ^ 2) + a (n - 1)

end

end A085089.P10528133425728874673

namespace A085089

/-- `A322585((n+1)²)+a(n-1)` -/
def P10528133425728874673.Spec : Prop :=
  ∀ n, P10528133425728874673.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P13324979195017703685

`∑[A054523(A046523(n+1)+∑[n])]`
-/

namespace A085089.P13324979195017703685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A046523 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P13324979195017703685

namespace A085089

/-- `∑[A054523(A046523(n+1)+∑[n])]` -/
def P13324979195017703685.Spec : Prop :=
  ∀ n, P13324979195017703685.a n = A085089 (n + 1)

end A085089

/-! ## A085089.P17473018337545085053

`∑[A008683(A319627((n+1)²))]`
-/

namespace A085089.P17473018337545085053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A319627 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085089.P17473018337545085053

namespace A085089

/-- `∑[A008683(A319627((n+1)²))]` -/
def P17473018337545085053.Spec : Prop :=
  ∀ n, P17473018337545085053.a n = A085089 (n + 1)

end A085089

/-!
# A085090: If 2n-1 is prime then a(n) = 2n-1, otherwise a(n) = 0.

The programs for A085090, the canonical program `A085090.P1638787628522915575` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085090 has offset 1).

The definition of A085090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085090.P1638787628522915575

`(2*(n+1)-1)*A101264(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085090

/-- `(2*(n+1)-1)*A101264(n)` -/
def P1638787628522915575.Spec : Prop :=
  ∀ n, P1638787628522915575.a n = A085090 (n + 1)

theorem P1638787628522915575.correct : P1638787628522915575.Spec := by
  intro n
  simp only [A085090, Nat.add_sub_cancel]

end A085090

/-! ## A085090.P2927712270536138962

`∑{p}[2*n+1, C(#, 2*n)]`
-/

namespace A085090.P2927712270536138962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (2 * n)

end

end A085090.P2927712270536138962

namespace A085090

/-- `∑{p}[2*n+1, C(#, 2*n)]` -/
def P2927712270536138962.Spec : Prop :=
  ∀ n, (P2927712270536138962.a n : ℤ) = A085090 (n + 1)

end A085090

/-! ## A085090.P7648760271981686645

`∑{p}[2*n+1, #*floor(#/(n+1))]`
-/

namespace A085090.P7648760271981686645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A085090.P7648760271981686645

namespace A085090

/-- `∑{p}[2*n+1, #*floor(#/(n+1))]` -/
def P7648760271981686645.Spec : Prop :=
  ∀ n, P7648760271981686645.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P936529869172021762

`ceil(∑{p}[2*n+1, #/(#-2*n)])`
-/

namespace A085090.P936529869172021762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / ((p : ℤ) - (2 * n : ℤ) : ℚ)⌉

end

end A085090.P936529869172021762

namespace A085090

/-- `ceil(∑{p}[2*n+1, #/(#-2*n)])` -/
def P936529869172021762.Spec : Prop :=
  ∀ n, P936529869172021762.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P15420843930393531378

`floor(∑{p}[2*n+1, #^(#-2*n)])`
-/

namespace A085090.P15420843930393531378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ ((p : ℤ) - (2 * n : ℤ) : ℤ)⌋

end

end A085090.P15420843930393531378

namespace A085090

/-- `floor(∑{p}[2*n+1, #^(#-2*n)])` -/
def P15420843930393531378.Spec : Prop :=
  ∀ n, P15420843930393531378.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P11362614185451215770

`round(∑{p}[2*n+1, #^(#-2*n)])`
-/

namespace A085090.P11362614185451215770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ ((p : ℤ) - (2 * n : ℤ) : ℤ))

end

end A085090.P11362614185451215770

namespace A085090

/-- `round(∑{p}[2*n+1, #^(#-2*n)])` -/
def P11362614185451215770.Spec : Prop :=
  ∀ n, P11362614185451215770.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P9622752882660033776

`(2*n+1)*round(2*n/∏{d}[2*n+1, #])`
-/

namespace A085090.P9622752882660033776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * SequenceMachineLib.roundAway ((2 * n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ))

end

end A085090.P9622752882660033776

namespace A085090

/-- `(2*n+1)*round(2*n/∏{d}[2*n+1, #])` -/
def P9622752882660033776.Spec : Prop :=
  ∀ n, P9622752882660033776.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P16647714790126490073

`(2*n+1)*∑{p}[2*n+1, val(#, 2*n+1)]`
-/

namespace A085090.P16647714790126490073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (2 * n + 1))

end

end A085090.P16647714790126490073

namespace A085090

/-- `(2*n+1)*∑{p}[2*n+1, val(#, 2*n+1)]` -/
def P16647714790126490073.Spec : Prop :=
  ∀ n, (P16647714790126490073.a n : ℤ) = A085090 (n + 1)

end A085090

/-! ## A085090.P2558594192326455102

`(2*n+1)*∑{p}[2*n+1, round(#/(2*n+1))]`
-/

namespace A085090.P2558594192326455102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((p : ℚ) / (2 * n + 1 : ℚ)))

end

end A085090.P2558594192326455102

namespace A085090

/-- `(2*n+1)*∑{p}[2*n+1, round(#/(2*n+1))]` -/
def P2558594192326455102.Spec : Prop :=
  ∀ n, P2558594192326455102.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P11653390321171259658

`lcm(2*n+1, A112448(n))`
-/

namespace A085090.P11653390321171259658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A112448 n)

end

end A085090.P11653390321171259658

namespace A085090

/-- `lcm(2*n+1, A112448(n))` -/
def P11653390321171259658.Spec : Prop :=
  ∀ n, (P11653390321171259658.a n : ℤ) = A085090 (n + 1)

end A085090

/-! ## A085090.P9344130535588953190

`Δ[n²]*A010051(Δ[n²])`
-/

namespace A085090.P9344130535588953190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A010051 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A085090.P9344130535588953190

namespace A085090

/-- `Δ[n²]*A010051(Δ[n²])` -/
def P9344130535588953190.Spec : Prop :=
  ∀ n, P9344130535588953190.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P18119773039799979974

`A101264(n)*A137576(n)`
-/

namespace A085090.P18119773039799979974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A137576 n

end

end A085090.P18119773039799979974

namespace A085090

/-- `A101264(n)*A137576(n)` -/
def P18119773039799979974.Spec : Prop :=
  ∀ n, P18119773039799979974.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P8134932955662137349

`A101264(n)*A160144(n)`
-/

namespace A085090.P8134932955662137349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A160144 n

end

end A085090.P8134932955662137349

namespace A085090

/-- `A101264(n)*A160144(n)` -/
def P8134932955662137349.Spec : Prop :=
  ∀ n, P8134932955662137349.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P14497386413497822325

`A010051(2*n+1)*A060264(n)`
-/

namespace A085090.P14497386413497822325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) * A060264 n

end

end A085090.P14497386413497822325

namespace A085090

/-- `A010051(2*n+1)*A060264(n)` -/
def P14497386413497822325.Spec : Prop :=
  ∀ n, P14497386413497822325.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P17514846366427242243

`A010051(2*n+1)*A088732(n)`
-/

namespace A085090.P17514846366427242243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) * A088732 n

end

end A085090.P17514846366427242243

namespace A085090

/-- `A010051(2*n+1)*A088732(n)` -/
def P17514846366427242243.Spec : Prop :=
  ∀ n, P17514846366427242243.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P7975529453049280125

`A073046(n+2)%A084372(n+2)`
-/

namespace A085090.P7975529453049280125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073046 (n + 2)) (A084372 (n + 2))

end

end A085090.P7975529453049280125

namespace A085090

/-- `A073046(n+2)%A084372(n+2)` -/
def P7975529453049280125.Spec : Prop :=
  ∀ n, P7975529453049280125.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P9406539869079535939

`and(A100005(n+1), A106549(n+1))`
-/

namespace A085090.P9406539869079535939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100005 (n + 1)) (A106549 (n + 1))

end

end A085090.P9406539869079535939

namespace A085090

/-- `and(A100005(n+1), A106549(n+1))` -/
def P9406539869079535939.Spec : Prop :=
  ∀ n, P9406539869079535939.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P6690067786066918509

`A010051(2*n+1)*A060308(n+1)`
-/

namespace A085090.P6690067786066918509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) * A060308 (n + 1)

end

end A085090.P6690067786066918509

namespace A085090

/-- `A010051(2*n+1)*A060308(n+1)` -/
def P6690067786066918509.Spec : Prop :=
  ∀ n, P6690067786066918509.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P10699862252673842811

`A101264(n)*A105888(n+1)`
-/

namespace A085090.P10699862252673842811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A105888 (n + 1)

end

end A085090.P10699862252673842811

namespace A085090

/-- `A101264(n)*A105888(n+1)` -/
def P10699862252673842811.Spec : Prop :=
  ∀ n, P10699862252673842811.a n = A085090 (n + 1)

end A085090

/-! ## A085090.P6821479534860705320

`A010051(2*n+1)*A105888(n+1)`
-/

namespace A085090.P6821479534860705320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) * A105888 (n + 1)

end

end A085090.P6821479534860705320

namespace A085090

/-- `A010051(2*n+1)*A105888(n+1)` -/
def P6821479534860705320.Spec : Prop :=
  ∀ n, P6821479534860705320.a n = A085090 (n + 1)

end A085090

/-!
# A085091: Denominator of Sum_{i=2..t} (d(i)/d(i-1)-1), where d(1), ..., d(t) are the divisors of n.

The programs for A085091, there is no canonical definition to state claims against.
-/

/-! ## A085091.P4926278323449584175

`gcd(A051344(n), A285707(A290480(n+1)))`
-/

namespace A085091.P4926278323449584175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051344 n) (A285707 (A290480 (n + 1)).toNat)

end

end A085091.P4926278323449584175

/-! ## A085091.P2142308286220459642

`A285707(or(A051344(n), A290480(n+1)))`
-/

namespace A085091.P2142308286220459642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285707 (Int.lor (A051344 n) (A290480 (n + 1))).toNat

end

end A085091.P2142308286220459642

/-! ## A085091.P17108694820223604173

`A345933(or(A051344(n), A290480(n+1)))`
-/

namespace A085091.P17108694820223604173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (Int.lor (A051344 n) (A290480 (n + 1))).toNat

end

end A085091.P17108694820223604173

/-! ## A085091.P10650397521682693236

`A346089(or(A051344(n), A290480(n+1)))`
-/

namespace A085091.P10650397521682693236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (Int.lor (A051344 n) (A290480 (n + 1))).toNat

end

end A085091.P10650397521682693236

/-! ## A085091.P1661442205986557949

`gcd(A092089(n+1), A345933(A290480(n+1)))`
-/

namespace A085091.P1661442205986557949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092089 (n + 1)) (A345933 (A290480 (n + 1)).toNat)

end

end A085091.P1661442205986557949

/-!
# A085097: Ramanujan sum c_n(3).

The programs for A085097, the canonical program `A085097.P69014794838746479` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085097 has offset 1).

The definition of A085097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085097.P69014794838746479

`A000010(n+1)*A008683((n+1)/gcd(n+1, 3))/A000010((n+1)/gcd(n+1, 3))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085097

/-- `A000010(n+1)*A008683((n+1)/gcd(n+1, 3))/A000010((n+1)/gcd(n+1, 3))` -/
def P69014794838746479.Spec : Prop :=
  ∀ n, P69014794838746479.a n = (A085097 (n + 1) : ℚ)

end A085097

/-! ## A085097.P15354735066818049244

`Δ[A139351(n)]*A085906(n+1)`
-/

namespace A085097.P15354735066818049244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A085906 (n + 1)

end

end A085097.P15354735066818049244

namespace A085097

/-- `Δ[A139351(n)]*A085906(n+1)` -/
def P15354735066818049244.Spec : Prop :=
  ∀ n, P15354735066818049244.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P372280133609875230

`A085906(2*(n+1))/(A007814(n+1)+1)`
-/

namespace A085097.P372280133609875230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085906 (2 * (n + 1)) : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A085097.P372280133609875230

namespace A085097

/-- `A085906(2*(n+1))/(A007814(n+1)+1)` -/
def P372280133609875230.Spec : Prop :=
  ∀ n, P372280133609875230.a n = (A085097 (n + 1) : ℚ)

end A085097

/-! ## A085097.P1213905698124315485

`A008683(A006519(n+1))*A085906(n+1)`
-/

namespace A085097.P1213905698124315485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006519 (n + 1)).toNat * A085906 (n + 1)

end

end A085097.P1213905698124315485

namespace A085097

/-- `A008683(A006519(n+1))*A085906(n+1)` -/
def P1213905698124315485.Spec : Prop :=
  ∀ n, P1213905698124315485.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P16255802545545926947

`A085906(2*(n+1))/A000009(A038712(n+1))`
-/

namespace A085097.P16255802545545926947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085906 (2 * (n + 1)) : ℚ) / (A000009 (A038712 (n + 1)).toNat : ℚ)

end

end A085097.P16255802545545926947

namespace A085097

/-- `A085906(2*(n+1))/A000009(A038712(n+1))` -/
def P16255802545545926947.Spec : Prop :=
  ∀ n, P16255802545545926947.a n = (A085097 (n + 1) : ℚ)

end A085097

/-! ## A085097.P6292980996200326212

`2/A006519(2*(n+1))*A085906(2*(n+1))`
-/

namespace A085097.P6292980996200326212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006519 (2 * (n + 1)) : ℚ) * (A085906 (2 * (n + 1)) : ℚ)

end

end A085097.P6292980996200326212

namespace A085097

/-- `2/A006519(2*(n+1))*A085906(2*(n+1))` -/
def P6292980996200326212.Spec : Prop :=
  ∀ n, P6292980996200326212.a n = (A085097 (n + 1) : ℚ)

end A085097

/-! ## A085097.P64677006573129616

`A390279(A060577(n+1))`
-/

namespace A085097.P64677006573129616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (A060577 (n + 1)).toNat

end

end A085097.P64677006573129616

namespace A085097

/-- `A390279(A060577(n+1))` -/
def P64677006573129616.Spec : Prop :=
  ∀ n, P64677006573129616.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P1193094492388662088

`A054533(∑[n]+3)`
-/

namespace A085097.P1193094492388662088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A085097.P1193094492388662088

namespace A085097

/-- `A054533(∑[n]+3)` -/
def P1193094492388662088.Spec : Prop :=
  ∀ n, P1193094492388662088.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P10469161922218171170

`A054535(∑[n+2]+4)`
-/

namespace A085097.P10469161922218171170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A085097.P10469161922218171170

namespace A085097

/-- `A054535(∑[n+2]+4)` -/
def P10469161922218171170.Spec : Prop :=
  ∀ n, P10469161922218171170.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P4994877136447833733

`A054534(∑[n+3]+1)`
-/

namespace A085097.P4994877136447833733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A085097.P4994877136447833733

namespace A085097

/-- `A054534(∑[n+3]+1)` -/
def P4994877136447833733.Spec : Prop :=
  ∀ n, P4994877136447833733.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P17585677490156764080

`A054532(A000096(n+2)+n+2)`
-/

namespace A085097.P17585677490156764080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A085097.P17585677490156764080

namespace A085097

/-- `A054532(A000096(n+2)+n+2)` -/
def P17585677490156764080.Spec : Prop :=
  ∀ n, P17585677490156764080.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P13400524757938187666

`A054532(A000217(n+3)+n+1)`
-/

namespace A085097.P13400524757938187666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A085097.P13400524757938187666

namespace A085097

/-- `A054532(A000217(n+3)+n+1)` -/
def P13400524757938187666.Spec : Prop :=
  ∀ n, P13400524757938187666.a n = A085097 (n + 1)

end A085097

/-! ## A085097.P10640691421027436783

`A085906(A354091(n+1))`
-/

namespace A085097.P10640691421027436783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085906 (A354091 (n + 1)).toNat

end

end A085097.P10640691421027436783

namespace A085097

/-- `A085906(A354091(n+1))` -/
def P10640691421027436783.Spec : Prop :=
  ∀ n, P10640691421027436783.a n = A085097 (n + 1)

end A085097

/-!
# A085098: a(n) = number of solutions (x_1, x_2, ..., x_n) to Product_{i=1..n} (1 + 1/x_i) = 2.

The programs for A085098, there is no canonical definition to state claims against.
-/

/-! ## A085098.P15500179713111222789

`A288168((∑[round(sqrt(2*n))]+1)^(n-1))`
-/

namespace A085098.P15500179713111222789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288168 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A085098.P15500179713111222789

/-!
# A085099: Least natural number k such that k^2 + n is prime.

The programs for A085099, there is no canonical definition to state claims against.
-/

/-! ## A085099.P15547432552966117357

`sqrt(A059843(n+1)-(n+1))`
-/

namespace A085099.P15547432552966117357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059843 (n + 1) - (n + 1 : ℤ) : ℝ)

end

end A085099.P15547432552966117357

/-! ## A085099.P11778361698950787105

`sqrt(A059844(n+1))`
-/

namespace A085099.P11778361698950787105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059844 (n + 1) : ℝ)

end

end A085099.P11778361698950787105

/-! ## A085099.P17978745990502842546

`A316568(n+1)+1`
-/

namespace A085099.P17978745990502842546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316568 (n + 1) + 1

end

end A085099.P17978745990502842546

/-! ## A085099.P9367029789469599386

`floor(sqrt(A059843(n+1)-n))`
-/

namespace A085099.P9367029789469599386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059843 (n + 1) - (n : ℤ))

end

end A085099.P9367029789469599386

/-! ## A085099.P9888467978845549195

`gcd(A059844(n+1), A088212(n+1))`
-/

namespace A085099.P9888467978845549195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059844 (n + 1)) (A088212 (n + 1))

end

end A085099.P9888467978845549195

/-! ## A085099.P12604557334057798281

`A000194(A059843(n+1)-n)`
-/

namespace A085099.P12604557334057798281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A059843 (n + 1) - (n : ℤ)).toNat

end

end A085099.P12604557334057798281

/-! ## A085099.P1430626195292968531

`A000196(A059843(n+1)-n)`
-/

namespace A085099.P1430626195292968531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A059843 (n + 1) - (n : ℤ)).toNat

end

end A085099.P1430626195292968531

/-! ## A085099.P4399776171994263733

`A171173(A059843(n+1)-n)`
-/

namespace A085099.P4399776171994263733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A059843 (n + 1) - (n : ℤ)).toNat

end

end A085099.P4399776171994263733

/-! ## A085099.P9626163657596285932

`A025177(A059843(n+1)-n)+1`
-/

namespace A085099.P9626163657596285932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A059843 (n + 1) - (n : ℤ)).toNat + 1

end

end A085099.P9626163657596285932

/-! ## A085099.P1958443562138274292

`A057918(2*A059844(n+1))+1`
-/

namespace A085099.P1958443562138274292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A059844 (n + 1)).toNat + 1

end

end A085099.P1958443562138274292

