import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B001.C000
import Seq.B002.C000
import Seq.B003.C000
import Seq.Opaque.C000

/-!
# A000900: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details).

The programs for A000900, the canonical program `A000900.P10035068055957689983` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000900 has offset 0).

The definition of A000900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000900.P10035068055957689983

`(A000085(n)-A000898(floor(n/2)))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000900

/-- `(A000085(n)-A000898(floor(n/2)))/2` -/
def P10035068055957689983.Spec : Prop :=
  ∀ n, P10035068055957689983.a n = (A000900 n : ℚ)

end A000900

/-! ## A000900.P10834329028590967936

`(A000085(n)-A135401(n))/2`
-/

namespace A000900.P10834329028590967936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n - A135401 n : ℚ) / 2

end

end A000900.P10834329028590967936

namespace A000900

/-- `(A000085(n)-A135401(n))/2` -/
def P10834329028590967936.Spec : Prop :=
  ∀ n, P10834329028590967936.a n = (A000900 n : ℚ)

end A000900

/-! ## A000900.P9708177469700645382

`(A297708(n)-A000085(n))/2`
-/

namespace A000900.P9708177469700645382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297708 n - A000085 n : ℚ) / 2

end

end A000900.P9708177469700645382

namespace A000900

/-- `(A297708(n)-A000085(n))/2` -/
def P9708177469700645382.Spec : Prop :=
  ∀ n, P9708177469700645382.a n = (A000900 n : ℚ)

end A000900

/-! ## A000900.P7500015303738521970

`(A297708(n)-A135401(n))/4`
-/

namespace A000900.P7500015303738521970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297708 n - A135401 n : ℚ) / 4

end

end A000900.P7500015303738521970

namespace A000900

/-- `(A297708(n)-A135401(n))/4` -/
def P7500015303738521970.Spec : Prop :=
  ∀ n, P7500015303738521970.a n = (A000900 n : ℚ)

end A000900

/-! ## A000900.P15844464363142513625

`(A182222(∑[n])-A135401(n))/2`
-/

namespace A000900.P15844464363142513625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182222 (∑ j ∈ Finset.range (n + 1), f1 j) - A135401 n : ℚ) / 2

end

end A000900.P15844464363142513625

namespace A000900

/-- `(A182222(∑[n])-A135401(n))/2` -/
def P15844464363142513625.Spec : Prop :=
  ∀ n, P15844464363142513625.a n = (A000900 n : ℚ)

end A000900

/-!
# A000901: Number of solutions to the rook problem on a 2n X 2n board having a certain symmetry group (see Robinson for details).

The programs for A000901, there is no canonical definition to state claims against.
-/

/-! ## A000901.P17453484003484160703

`A343381(∑[∑[∑[(-1)^n+1]]])-n`
-/

namespace A000901.P17453484003484160703
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A000901.P17453484003484160703

/-!
# A000902: Expansion of e.g.f. (1/2)*(exp(2*x + x^2) + 1).

The programs for A000902, the canonical program `A000902.P12904445819392579012` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000902 has offset 0).

The definition of A000902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000902.P12904445819392579012

`2*a(n-1)+(2*n-2)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000902

/-- `2*a(n-1)+(2*n-2)*a(n-2)` -/
def P12904445819392579012.Spec : Prop :=
  ∀ n, P12904445819392579012.a n = A000902 n

theorem P12904445819392579012.correct : P12904445819392579012.Spec := by
  intro n
  simp only [A000902]

end A000902

/-! ## A000902.P8682962479791211356

`2*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A000902.P8682962479791211356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A000902.P8682962479791211356

namespace A000902

/-- `2*(a(n-1)+(n-1)*a(n-2))` -/
def P8682962479791211356.Spec : Prop :=
  ∀ n, P8682962479791211356.a n = A000902 n

set_option linter.unusedSimpArgs false in
theorem P8682962479791211356.correct : P8682962479791211356.Spec := by
  intro n
  simp only [A000902, Nat.add_sub_cancel, A000902.P8682962479791211356.a, A000902.P12904445819392579012.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000902

/-! ## A000902.P379602756855135577

`2*a(n-1)-(1-n)*2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A000902.P379602756855135577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ)) * (2 * a (n - 2))

end

end A000902.P379602756855135577

namespace A000902

/-- `2*a(n-1)-(1-n)*2*a(n-2)` -/
def P379602756855135577.Spec : Prop :=
  ∀ n, P379602756855135577.a n = A000902 n

set_option linter.unusedSimpArgs false in
theorem P379602756855135577.correct : P379602756855135577.Spec := by
  intro n
  simp only [A000902, Nat.add_sub_cancel, A000902.P379602756855135577.a, A000902.P12904445819392579012.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A000902

/-! ## A000902.P166410020797620380

`ceil(A000898(n)/2)`
-/

namespace A000902.P166410020797620380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000898 n : ℚ) / 2⌉

end

end A000902.P166410020797620380

namespace A000902

/-- `ceil(A000898(n)/2)` -/
def P166410020797620380.Spec : Prop :=
  ∀ n, P166410020797620380.a n = A000902 n

end A000902

/-! ## A000902.P9320575049523365142

`ceil(A135401(2*n)/2)`
-/

namespace A000902.P9320575049523365142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135401 (2 * n) : ℚ) / 2⌉

end

end A000902.P9320575049523365142

namespace A000902

/-- `ceil(A135401(2*n)/2)` -/
def P9320575049523365142.Spec : Prop :=
  ∀ n, P9320575049523365142.a n = A000902 n

end A000902

/-! ## A000902.P4699434493840988153

`round(A135401(2*n+1)/2)`
-/

namespace A000902.P4699434493840988153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135401 (2 * n + 1) : ℚ) / 2)

end

end A000902.P4699434493840988153

namespace A000902

/-- `round(A135401(2*n+1)/2)` -/
def P4699434493840988153.Spec : Prop :=
  ∀ n, P4699434493840988153.a n = A000902 n

end A000902

/-! ## A000902.P10836257482688658813

`A000898(round(sqrt(n²+1)))/2`
-/

namespace A000902.P10836257482688658813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A000902.P10836257482688658813

namespace A000902

/-- `A000898(round(sqrt(n²+1)))/2` -/
def P10836257482688658813.Spec : Prop :=
  ∀ n, P10836257482688658813.a n = (A000902 n : ℚ)

end A000902

/-! ## A000902.P7414388619839557084

`lcm(A117575(n), A242818(n))`
-/

namespace A000902.P7414388619839557084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117575 n) (A242818 n)

end

end A000902.P7414388619839557084

namespace A000902

/-- `lcm(A117575(n), A242818(n))` -/
def P7414388619839557084.Spec : Prop :=
  ∀ n, (P7414388619839557084.a n : ℤ) = A000902 n

end A000902

/-! ## A000902.P6734860281621460336

`A135401(A004277(n)+1)/2`
-/

namespace A000902.P6734860281621460336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135401 (A004277 n + 1).toNat : ℚ) / 2

end

end A000902.P6734860281621460336

namespace A000902

/-- `A135401(A004277(n)+1)/2` -/
def P6734860281621460336.Spec : Prop :=
  ∀ n, P6734860281621460336.a n = (A000902 n : ℚ)

end A000902

/-! ## A000902.P9266892405612356984

`A000898(n)/A000079(n)*A011782(n)`
-/

namespace A000902.P9266892405612356984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A000079 n : ℚ) * (A011782 n : ℚ)

end

end A000902.P9266892405612356984

namespace A000902

/-- `A000898(n)/A000079(n)*A011782(n)` -/
def P9266892405612356984.Spec : Prop :=
  ∀ n, P9266892405612356984.a n = (A000902 n : ℚ)

end A000902

/-!
# A000903: Number of inequivalent ways of placing n nonattacking rooks on n X n board up to rotations and reflections of the board.

The programs for A000903, there is no canonical definition to state claims against.
-/

/-! ## A000903.P12333942755072656478

`A004525(A300931(n+1))`
-/

namespace A000903.P12333942755072656478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A300931 (n + 1)).toNat

end

end A000903.P12333942755072656478

/-! ## A000903.P5201912629957844830

`A057357(3*A000138(n))`
-/

namespace A000903.P5201912629957844830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (3 * A000138 n).toNat

end

end A000903.P5201912629957844830

/-! ## A000903.P11313497087926537903

`A004526(A300931(n+1)+1)`
-/

namespace A000903.P11313497087926537903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A300931 (n + 1) + 1).toNat

end

end A000903.P11313497087926537903

/-!
# A000904: a(n) = (n+1)*a(n-1) + (n+2)*a(n-2) + a(n-3); a(1)=0, a(2)=3, a(3)=13.

The programs for A000904, there is no canonical definition to state claims against.
-/

/-! ## A000904.P3082072044239128943

`3+A000179(a(n-2))` with `a(0)=0, a(1)=3, a(2)=13, a(3)=83, a(4)=592`
-/

namespace A000904.P3082072044239128943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 13, 83, 592] fun n a =>
  3 + A000179 (a (n - 2)).toNat

end

end A000904.P3082072044239128943

/-! ## A000904.P5421679536941780939

`A000271(n+3)-a(n-1)` with `a(0)=0`
-/

namespace A000904.P5421679536941780939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000271 (n + 3) - a (n - 1)

end

end A000904.P5421679536941780939

/-! ## A000904.P6638530281074950474

`Δ[A332710(n+3)]-A335693(n)`
-/

namespace A000904.P6638530281074950474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332710 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335693 n

end

end A000904.P6638530281074950474

/-! ## A000904.P10983798309277301921

`A335693(n+1)-(-1)^n`
-/

namespace A000904.P10983798309277301921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335693 (n + 1) - (-1) ^ n

end

end A000904.P10983798309277301921

/-!
# A000905: Hamilton numbers.

The programs for A000905, there is no canonical definition to state claims against.
-/

/-! ## A000905.P17896760825065822802

`∑[A001660(n)]+1`
-/

namespace A000905.P17896760825065822802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000905.P17896760825065822802

/-! ## A000905.P6146821711755688265

`A006719(n+1)-1`
-/

namespace A000905.P6146821711755688265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006719 (n + 1) - 1

end

end A000905.P6146821711755688265

/-! ## A000905.P7062151447571402949

`∑[A001660(n)*A054977(n)]`
-/

namespace A000905.P7062151447571402949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001660 n * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000905.P7062151447571402949

/-! ## A000905.P14853539165977103175

`∑[A001660(or(n, A000038(n)))]`
-/

namespace A000905.P14853539165977103175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001660 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000905.P14853539165977103175

/-! ## A000905.P12348922971890082540

`∑[A001660(xor(n, A000038(n)))]`
-/

namespace A000905.P12348922971890082540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001660 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000905.P12348922971890082540

/-!
# A000906: Exponential generating function: 2*(1+3*x)/(1-2*x)^(7/2).

The programs for A000906, the canonical program `A000906.P2607792642287425901` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000906 has offset 0).

The definition of A000906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000906.P2607792642287425901

`(2*n+3)!/(6*n!*2^(n-1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000906

/-- `(2*n+3)!/(6*n!*2^(n-1))` -/
def P2607792642287425901.Spec : Prop :=
  ∀ n, P2607792642287425901.a n = (A000906 n : ℚ)

end A000906

/-! ## A000906.P10650602490720705938

`(n+1)*∏[a(n-1)+2]` with `a(0)=2, a(1)=5`
-/

namespace A000906.P10650602490720705938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000906.P10650602490720705938

namespace A000906

/-- `(n+1)*∏[a(n-1)+2]` -/
def P10650602490720705938.Spec : Prop :=
  ∀ n, (P10650602490720705938.a n : ℤ) = A000906 n

end A000906

/-! ## A000906.P5925601618277479145

`2*(n+1)*∏[2*n+3]/3`
-/

namespace A000906.P5925601618277479145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3))

end

end A000906.P5925601618277479145

namespace A000906

/-- `2*(n+1)*∏[2*n+3]/3` -/
def P5925601618277479145.Spec : Prop :=
  ∀ n, P5925601618277479145.a n = (A000906 n : ℚ)

end A000906

/-! ## A000906.P3323023582866729846

`A275521(2*n+3)/2`
-/

namespace A000906.P3323023582866729846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275521 (2 * n + 3) : ℚ) / 2

end

end A000906.P3323023582866729846

namespace A000906

/-- `A275521(2*n+3)/2` -/
def P3323023582866729846.Spec : Prop :=
  ∀ n, P3323023582866729846.a n = (A000906 n : ℚ)

end A000906

/-! ## A000906.P243861205079573432

`floor(2*A065931(∑[n+2])/3)`
-/

namespace A000906.P243861205079573432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A065931 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3)⌋

end

end A000906.P243861205079573432

namespace A000906

/-- `floor(2*A065931(∑[n+2])/3)` -/
def P243861205079573432.Spec : Prop :=
  ∀ n, P243861205079573432.a n = A000906 n

end A000906

/-! ## A000906.P3176834890300340159

`A000457(n)+A000457(n)`
-/

namespace A000906.P3176834890300340159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000457 n + A000457 n

end

end A000906.P3176834890300340159

namespace A000906

/-- `A000457(n)+A000457(n)` -/
def P3176834890300340159.Spec : Prop :=
  ∀ n, P3176834890300340159.a n = A000906 n

end A000906

/-! ## A000906.P449669382081551606

`A051577(n+1)-A001147(n+2)`
-/

namespace A000906.P449669382081551606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051577 (n + 1) - A001147 (n + 2)

end

end A000906.P449669382081551606

namespace A000906

/-- `A051577(n+1)-A001147(n+2)` -/
def P449669382081551606.Spec : Prop :=
  ∀ n, P449669382081551606.a n = A000906 n

end A000906

/-! ## A000906.P15051985773573984017

`A051577(n+1)-A006882(2*n+3)`
-/

namespace A000906.P15051985773573984017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051577 (n + 1) - A006882 (2 * n + 3)

end

end A000906.P15051985773573984017

namespace A000906

/-- `A051577(n+1)-A006882(2*n+3)` -/
def P15051985773573984017.Spec : Prop :=
  ∀ n, P15051985773573984017.a n = A000906 n

end A000906

/-! ## A000906.P3186668496421057582

`∏[A062545(n+1)]-∏[A005408(n+1)]`
-/

namespace A000906.P3186668496421057582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A000906.P3186668496421057582

namespace A000906

/-- `∏[A062545(n+1)]-∏[A005408(n+1)]` -/
def P3186668496421057582.Spec : Prop :=
  ∀ n, P3186668496421057582.a n = A000906 n

end A000906

/-! ## A000906.P10039512545890632036

`A259877(2*n+3)+A259877(2*n+3)`
-/

namespace A000906.P10039512545890632036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259877 (2 * n + 3) + A259877 (2 * n + 3)

end

end A000906.P10039512545890632036

namespace A000906

/-- `A259877(2*n+3)+A259877(2*n+3)` -/
def P10039512545890632036.Spec : Prop :=
  ∀ n, P10039512545890632036.a n = A000906 n

end A000906

/-!
# A000907: Second-order reciprocal Stirling number (Fekete) a(n) = [[2n+2, n]]. The number of n-orbit permutations of a (2n+2)-set with at least 2 elements in each orbit. Also known as associated Stirling numbers of the first kind (e.g., Comtet).

The programs for A000907, there is no canonical definition to state claims against.
-/

/-! ## A000907.P12551106092366641250

`abs(A111999(A167614(n+1)))`
-/

namespace A000907.P12551106092366641250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111999 (A167614 (n + 1)).toNat|

end

end A000907.P12551106092366641250

/-! ## A000907.P49450274816164571

`abs(A111999(A061579(∑[n+3])+1))`
-/

namespace A000907.P49450274816164571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111999 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat|

end

end A000907.P49450274816164571

/-! ## A000907.P1587067950973687677

`2*abs(A111999(A055998(n)+6)/2)`
-/

namespace A000907.P1587067950973687677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * |(A111999 (A055998 n + 6).toNat : ℚ) / 2|

end

end A000907.P1587067950973687677

/-! ## A000907.P17964339693947762845

`lcm(A000034(n), A111999(A167614(n+1)))`
-/

namespace A000907.P17964339693947762845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A111999 (A167614 (n + 1)).toNat)

end

end A000907.P17964339693947762845

/-! ## A000907.P4941843888551208550

`A033999(n+1)*A111999(A167614(n+1))`
-/

namespace A000907.P4941843888551208550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A111999 (A167614 (n + 1)).toNat

end

end A000907.P4941843888551208550

/-!
# A000908: Atom-rooted polyenoids with n edges with symmetry class C_s.

The programs for A000908, there is no canonical definition to state claims against.
-/

/-! ## A000908.P13132324931487800584

`floor(floor(A315969(A143330(n))/3)/3)`
-/

namespace A000908.P13132324931487800584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A315969 (A143330 n).toNat : ℚ) / 3⌋ : ℚ) / 3⌋

end

end A000908.P13132324931487800584

/-! ## A000908.P3955730806638276112

`A148997(n)-A195174(A049157(n+1))`
-/

namespace A000908.P3955730806638276112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148997 n - A195174 (A049157 (n + 1)).toNat

end

end A000908.P3955730806638276112

/-! ## A000908.P437178327077663713

`A092489(n+1)-A000989(A000245(n+1))`
-/

namespace A000908.P437178327077663713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092489 (n + 1) - A000989 (A000245 (n + 1)).toNat

end

end A000908.P437178327077663713

/-!
# A000909: a(n) = (2*n)!*(2*n+1)! / n!^2.

The programs for A000909, the canonical program `A000909.P2394326780231115835` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000909 has offset 0).

The definition of A000909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000909.P2394326780231115835

`4^n*A079484(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000909

/-- `4^n*A079484(n)` -/
def P2394326780231115835.Spec : Prop :=
  ∀ n, P2394326780231115835.a n = A000909 n

theorem P2394326780231115835.correct : P2394326780231115835.Spec := by
  intro n
  simp only [A000909]

end A000909

/-! ## A000909.P9018027979171442054

`(2*n+1)*A122747(n)`
-/

namespace A000909.P9018027979171442054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A122747 n

end

end A000909.P9018027979171442054

namespace A000909

/-- `(2*n+1)*A122747(n)` -/
def P9018027979171442054.Spec : Prop :=
  ∀ n, P9018027979171442054.a n = A000909 n

end A000909

/-! ## A000909.P12726615021187091438

`A161149(n)/n!`
-/

namespace A000909.P12726615021187091438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161149 n : ℚ) / (Nat.factorial n : ℚ)

end

end A000909.P12726615021187091438

namespace A000909

/-- `A161149(n)/n!` -/
def P12726615021187091438.Spec : Prop :=
  ∀ n, P12726615021187091438.a n = (A000909 n : ℚ)

end A000909

/-! ## A000909.P17840186499964343050

`Δ[n²]!*C(2*n, n)`
-/

namespace A000909.P17840186499964343050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * Nat.choose (2 * n) n

end

end A000909.P17840186499964343050

namespace A000909

/-- `Δ[n²]!*C(2*n, n)` -/
def P17840186499964343050.Spec : Prop :=
  ∀ n, (P17840186499964343050.a n : ℤ) = A000909 n

end A000909

/-! ## A000909.P4112399900152443011

`((4*n)²-4)*a(n-1)` with `a(0)=1`
-/

namespace A000909.P4112399900152443011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((4 * n) ^ 2 : ℤ) - 4) * a (n - 1)

end

end A000909.P4112399900152443011

namespace A000909

/-- `((4*n)²-4)*a(n-1)` -/
def P4112399900152443011.Spec : Prop :=
  ∀ n, P4112399900152443011.a n = A000909 n

end A000909

/-!
# A000910: a(n) = 5*binomial(n, 6).

The programs for A000910, the canonical program `A000910.P14640695646812070873` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000910 has offset 0).

The definition of A000910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*C(n, 6)` (program `A000910.P14640695646812070873`, by `A000910.P14640695646812070873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000910.P14640695646812070873

`5*C(n, 6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000910

/-- `5*C(n, 6)` -/
def P14640695646812070873.Spec : Prop :=
  ∀ n, (P14640695646812070873.a n : ℤ) = A000910 n

theorem P14640695646812070873.correct : P14640695646812070873.Spec := by
  intro n
  simp only [A000910]

end A000910

/-! ## A000910.P8055511922014532968

`5*A000579(n)`
-/

namespace A000910.P8055511922014532968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000579 n

end

end A000910.P8055511922014532968

namespace A000910

/-- `5*A000579(n)` -/
def P8055511922014532968.Spec : Prop :=
  ∀ n, P8055511922014532968.a n = A000910 n

end A000910

/-! ## A000910.P2656468409955756654

`A271040(n)/2`
-/

namespace A000910.P2656468409955756654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271040 n : ℚ) / 2

end

end A000910.P2656468409955756654

namespace A000910

/-- `A271040(n)/2` -/
def P2656468409955756654.Spec : Prop :=
  ∀ n, P2656468409955756654.a n = (A000910 n : ℚ)

end A000910

/-! ## A000910.P1349920629111847245

`round(A053625(n)/12)/12`
-/

namespace A000910.P1349920629111847245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A053625 n : ℚ) / 12) : ℚ) / 12

end

end A000910.P1349920629111847245

namespace A000910

/-- `round(A053625(n)/12)/12` -/
def P1349920629111847245.Spec : Prop :=
  ∀ n, P1349920629111847245.a n = (A000910 n : ℚ)

end A000910

/-! ## A000910.P15853039845704722231

`5*∑[∑[A000332(abs(2-n))]]`
-/

namespace A000910.P15853039845704722231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000910.P15853039845704722231

namespace A000910

/-- `5*∑[∑[A000332(abs(2-n))]]` -/
def P15853039845704722231.Spec : Prop :=
  ∀ n, P15853039845704722231.a n = A000910 n

end A000910

/-! ## A000910.P2266691393308198989

`A384733(n)-A034827(n)`
-/

namespace A000910.P2266691393308198989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384733 n - A034827 n

end

end A000910.P2266691393308198989

namespace A000910

/-- `A384733(n)-A034827(n)` -/
def P2266691393308198989.Spec : Prop :=
  ∀ n, P2266691393308198989.a n = A000910 n

end A000910

/-! ## A000910.P4882360646031417610

`5*(∑[A000389(n)]-A000389(n))`
-/

namespace A000910.P4882360646031417610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j - A000389 n)

end

end A000910.P4882360646031417610

namespace A000910

/-- `5*(∑[A000389(n)]-A000389(n))` -/
def P4882360646031417610.Spec : Prop :=
  ∀ n, P4882360646031417610.a n = A000910 n

end A000910

/-! ## A000910.P5032532738553075430

`5*(A035038(n)-A035039(n))`
-/

namespace A000910.P5032532738553075430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A035038 n - A035039 n)

end

end A000910.P5032532738553075430

namespace A000910

/-- `5*(A035038(n)-A035039(n))` -/
def P5032532738553075430.Spec : Prop :=
  ∀ n, P5032532738553075430.a n = A000910 n

end A000910

/-!
# A000911: a(n) = (2n+3)! /( n! * (n+1)! ).

The programs for A000911, the canonical program `A000911.P17965130823935547465` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000911 has offset 0).

The definition of A000911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000911.P3541384815609569625

`6*A002802(n)`
-/

namespace A000911.P3541384815609569625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002802 n

end

end A000911.P3541384815609569625

namespace A000911

/-- `6*A002802(n)` -/
def P3541384815609569625.Spec : Prop :=
  ∀ n, P3541384815609569625.a n = A000911 n

end A000911

/-! ## A000911.P5501978680559930438

`2*A051133(n+1)`
-/

namespace A000911.P5501978680559930438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051133 (n + 1)

end

end A000911.P5501978680559930438

namespace A000911

/-- `2*A051133(n+1)` -/
def P5501978680559930438.Spec : Prop :=
  ∀ n, P5501978680559930438.a n = A000911 n

end A000911

/-! ## A000911.P17965130823935547465

`(2*n+3)!/(n!*(n+1)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000911

/-- `(2*n+3)!/(n!*(n+1)!)` -/
def P17965130823935547465.Spec : Prop :=
  ∀ n, P17965130823935547465.a n = (A000911 n : ℚ)

end A000911

/-! ## A000911.P5851133992817211985

`(6/n+4)*a(n-1)` with `a(0)=6`
-/

namespace A000911.P5851133992817211985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (6 / (n : ℚ) + 4) * a (n - 1)

end

end A000911.P5851133992817211985

namespace A000911

/-- `(6/n+4)*a(n-1)` -/
def P5851133992817211985.Spec : Prop :=
  ∀ n, P5851133992817211985.a n = (A000911 n : ℚ)

end A000911

/-! ## A000911.P18184078599659461044

`∏[(4*n+6)/round(1/acot(n))]`
-/

namespace A000911.P18184078599659461044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 6 : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000911.P18184078599659461044

namespace A000911

/-- `∏[(4*n+6)/round(1/acot(n))]` -/
def P18184078599659461044.Spec : Prop :=
  ∀ n, P18184078599659461044.a n = (A000911 n : ℚ)

end A000911

/-! ## A000911.P13735995032005018345

`∑[6*A085373(n)]`
-/

namespace A000911.P13735995032005018345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A085373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000911.P13735995032005018345

namespace A000911

/-- `∑[6*A085373(n)]` -/
def P13735995032005018345.Spec : Prop :=
  ∀ n, P13735995032005018345.a n = A000911 n

end A000911

/-! ## A000911.P15965391767692347160

`Δ[6*A323223(n)]`
-/

namespace A000911.P15965391767692347160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A323223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000911.P15965391767692347160

namespace A000911

/-- `Δ[6*A323223(n)]` -/
def P15965391767692347160.Spec : Prop :=
  ∀ n, P15965391767692347160.a n = A000911 n

end A000911

/-! ## A000911.P6778496895033470496

`(n+2)*A000917(n)`
-/

namespace A000911.P6778496895033470496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000917 n

end

end A000911.P6778496895033470496

namespace A000911

/-- `(n+2)*A000917(n)` -/
def P6778496895033470496.Spec : Prop :=
  ∀ n, P6778496895033470496.a n = A000911 n

end A000911

/-! ## A000911.P7985816496042446007

`2*A107231(Δ[n²])`
-/

namespace A000911.P7985816496042446007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000911.P7985816496042446007

namespace A000911

/-- `2*A107231(Δ[n²])` -/
def P7985816496042446007.Spec : Prop :=
  ∀ n, P7985816496042446007.a n = A000911 n

end A000911

/-! ## A000911.P6816389106456755273

`∑[3*A119578(n+1)]`
-/

namespace A000911.P6816389106456755273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A119578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000911.P6816389106456755273

namespace A000911

/-- `∑[3*A119578(n+1)]` -/
def P6816389106456755273.Spec : Prop :=
  ∀ n, P6816389106456755273.a n = A000911 n

end A000911

/-! ## A000911.P6077545496021935563

`(n+1)*A002457(n+1)`
-/

namespace A000911.P6077545496021935563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002457 (n + 1)

end

end A000911.P6077545496021935563

namespace A000911

/-- `(n+1)*A002457(n+1)` -/
def P6077545496021935563.Spec : Prop :=
  ∀ n, P6077545496021935563.a n = A000911 n

end A000911

/-! ## A000911.P10639748097803270716

`2*(n+1)*A033876(n)`
-/

namespace A000911.P10639748097803270716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A033876 n)

end

end A000911.P10639748097803270716

namespace A000911

/-- `2*(n+1)*A033876(n)` -/
def P10639748097803270716.Spec : Prop :=
  ∀ n, P10639748097803270716.a n = A000911 n

end A000911

/-! ## A000911.P7487543520445035027

`(n+3)*A002740(n+3)`
-/

namespace A000911.P7487543520445035027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A002740 (n + 3)

end

end A000911.P7487543520445035027

namespace A000911

/-- `(n+3)*A002740(n+3)` -/
def P7487543520445035027.Spec : Prop :=
  ∀ n, P7487543520445035027.a n = A000911 n

end A000911

/-! ## A000911.P1803068818559838378

`∑[n+1]*A000984(n+2)`
-/

namespace A000911.P1803068818559838378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000984 (n + 2)

end

end A000911.P1803068818559838378

namespace A000911

/-- `∑[n+1]*A000984(n+2)` -/
def P1803068818559838378.Spec : Prop :=
  ∀ n, P1803068818559838378.a n = A000911 n

end A000911

/-! ## A000911.P1066393566327202812

`(n+1)*Δ[A277178(n+1)]`
-/

namespace A000911.P1066393566327202812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A000911.P1066393566327202812

namespace A000911

/-- `(n+1)*Δ[A277178(n+1)]` -/
def P1066393566327202812.Spec : Prop :=
  ∀ n, P1066393566327202812.a n = A000911 n

end A000911

/-! ## A000911.P16594509063148556019

`(n+1)*(A289719(n+2)-1)`
-/

namespace A000911.P16594509063148556019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A289719 (n + 2) - 1)

end

end A000911.P16594509063148556019

namespace A000911

/-- `(n+1)*(A289719(n+2)-1)` -/
def P16594509063148556019.Spec : Prop :=
  ∀ n, P16594509063148556019.a n = A000911 n

end A000911

/-! ## A000911.P4657906558180663876

`(n+1)*A242172(2*(n+1))`
-/

namespace A000911.P4657906558180663876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A242172 (2 * (n + 1))

end

end A000911.P4657906558180663876

namespace A000911

/-- `(n+1)*A242172(2*(n+1))` -/
def P4657906558180663876.Spec : Prop :=
  ∀ n, P4657906558180663876.a n = A000911 n

end A000911

/-! ## A000911.P13644996531535381970

`(n+1)*A046212(2*(n+2))`
-/

namespace A000911.P13644996531535381970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046212 (2 * (n + 2))

end

end A000911.P13644996531535381970

namespace A000911

/-- `(n+1)*A046212(2*(n+2))` -/
def P13644996531535381970.Spec : Prop :=
  ∀ n, P13644996531535381970.a n = A000911 n

end A000911

/-! ## A000911.P10858815731604286826

`(n+1)*A274707(2*(n+2))`
-/

namespace A000911.P10858815731604286826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A274707 (2 * (n + 2))

end

end A000911.P10858815731604286826

namespace A000911

/-- `(n+1)*A274707(2*(n+2))` -/
def P10858815731604286826.Spec : Prop :=
  ∀ n, P10858815731604286826.a n = A000911 n

end A000911

/-! ## A000911.P6451002916750189676

`(2*n+3)*A005430(n+1)`
-/

namespace A000911.P6451002916750189676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A005430 (n + 1)

end

end A000911.P6451002916750189676

namespace A000911

/-- `(2*n+3)*A005430(n+1)` -/
def P6451002916750189676.Spec : Prop :=
  ∀ n, P6451002916750189676.a n = A000911 n

end A000911

/-!
# A000912: Expansion of (sqrt(1-4x^2) - sqrt(1-4x))/(2x).

The programs for A000912, the canonical program `A000912.P8618321589124851233` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000912 has offset 0).

The definition of A000912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000912.P5166839735588521225

`A000007(n)+2*A000150(n)`
-/

namespace A000912.P5166839735588521225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A000150 n

end

end A000912.P5166839735588521225

namespace A000912

/-- `A000007(n)+2*A000150(n)` -/
def P5166839735588521225.Spec : Prop :=
  ∀ n, P5166839735588521225.a n = A000912 n

end A000912

/-! ## A000912.P8757734002484661084

`A000108(n)-A126120(abs(1-n))`
-/

namespace A000912.P8757734002484661084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A126120 |1 - (n : ℤ)|.toNat

end

end A000912.P8757734002484661084

namespace A000912

/-- `A000108(n)-A126120(abs(1-n))` -/
def P8757734002484661084.Spec : Prop :=
  ∀ n, P8757734002484661084.a n = A000912 n

end A000912

/-! ## A000912.P10185863780364064929

`A210628(n)+record[A097331(n+2)]`
-/

namespace A000912.P10185863780364064929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000912.P10185863780364064929

namespace A000912

/-- `A210628(n)+record[A097331(n+2)]` -/
def P10185863780364064929.Spec : Prop :=
  ∀ n, P10185863780364064929.a n = A000912 n

end A000912

/-! ## A000912.P8618321589124851233

`2*A007123(n+1)-A063886(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000912

/-- `2*A007123(n+1)-A063886(n)` -/
def P8618321589124851233.Spec : Prop :=
  ∀ n, P8618321589124851233.a n = A000912 n

theorem P8618321589124851233.correct : P8618321589124851233.Spec := by
  intro n
  simp only [A000912]

end A000912

/-! ## A000912.P2301060290006568064

`A120588(n+1)-A126120(abs(1-n))`
-/

namespace A000912.P2301060290006568064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A126120 |1 - (n : ℤ)|.toNat

end

end A000912.P2301060290006568064

namespace A000912

/-- `A120588(n+1)-A126120(abs(1-n))` -/
def P2301060290006568064.Spec : Prop :=
  ∀ n, P2301060290006568064.a n = A000912 n

end A000912

/-! ## A000912.P1974589503448753064

`A028304(2*n)-A126120(abs(1-n))`
-/

namespace A000912.P1974589503448753064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A126120 |1 - (n : ℤ)|.toNat

end

end A000912.P1974589503448753064

namespace A000912

/-- `A028304(2*n)-A126120(abs(1-n))` -/
def P1974589503448753064.Spec : Prop :=
  ∀ n, P1974589503448753064.a n = A000912 n

end A000912

/-! ## A000912.P187707875698665321

`∑{d}[n+1, A034731(#)*A092673((n+1)/#)]`
-/

namespace A000912.P187707875698665321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034731 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000912.P187707875698665321

namespace A000912

/-- `∑{d}[n+1, A034731(#)*A092673((n+1)/#)]` -/
def P187707875698665321.Spec : Prop :=
  ∀ n, P187707875698665321.a n = A000912 n

end A000912

/-! ## A000912.P10041463774455727578

`∑{d}[n+1, A034742(#)*A059841((n+1)/#-1)]`
-/

namespace A000912.P10041463774455727578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034742 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000912.P10041463774455727578

namespace A000912

/-- `∑{d}[n+1, A034742(#)*A059841((n+1)/#-1)]` -/
def P10041463774455727578.Spec : Prop :=
  ∀ n, P10041463774455727578.a n = A000912 n

end A000912

/-! ## A000912.P12064215730894793256

`∑{d}[n+1, A000108(#-1)*A154955((n+1)/#)]`
-/

namespace A000912.P12064215730894793256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000912.P12064215730894793256

namespace A000912

/-- `∑{d}[n+1, A000108(#-1)*A154955((n+1)/#)]` -/
def P12064215730894793256.Spec : Prop :=
  ∀ n, P12064215730894793256.a n = A000912 n

end A000912

/-! ## A000912.P5194150192058528297

`abs(A168491(n)+A126120(A004442(n)))`
-/

namespace A000912.P5194150192058528297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n + A126120 (A004442 n).toNat|

end

end A000912.P5194150192058528297

namespace A000912

/-- `abs(A168491(n)+A126120(A004442(n)))` -/
def P5194150192058528297.Spec : Prop :=
  ∀ n, P5194150192058528297.a n = A000912 n

end A000912

/-! ## A000912.P7187643080834895488

`A210628(n)-A210628(A004273(n)+2)`
-/

namespace A000912.P7187643080834895488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n - A210628 (A004273 n + 2).toNat

end

end A000912.P7187643080834895488

namespace A000912

/-- `A210628(n)-A210628(A004273(n)+2)` -/
def P7187643080834895488.Spec : Prop :=
  ∀ n, P7187643080834895488.a n = A000912 n

end A000912

/-! ## A000912.P5395072743121552858

`A028303(2*n)-A028303(A124625(n))`
-/

namespace A000912.P5395072743121552858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - A028303 (A124625 n).toNat

end

end A000912.P5395072743121552858

namespace A000912

/-- `A028303(2*n)-A028303(A124625(n))` -/
def P5395072743121552858.Spec : Prop :=
  ∀ n, P5395072743121552858.a n = A000912 n

end A000912

/-! ## A000912.P2282306995030238677

`A126120(2*n)-A126120(A004442(n))`
-/

namespace A000912.P2282306995030238677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A126120 (A004442 n).toNat

end

end A000912.P2282306995030238677

namespace A000912

/-- `A126120(2*n)-A126120(A004442(n))` -/
def P2282306995030238677.Spec : Prop :=
  ∀ n, P2282306995030238677.a n = A000912 n

end A000912

/-! ## A000912.P9670191800627392018

`A000150(A000038(n)+n)+A000150(n)`
-/

namespace A000912.P9670191800627392018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (A000038 n + (n : ℤ)).toNat + A000150 n

end

end A000912.P9670191800627392018

namespace A000912

/-- `A000150(A000038(n)+n)+A000150(n)` -/
def P9670191800627392018.Spec : Prop :=
  ∀ n, P9670191800627392018.a n = A000912 n

end A000912

/-! ## A000912.P17086751539822646114

`A000108(n)+A001405(n)-A063886(n)`
-/

namespace A000912.P17086751539822646114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A001405 n - A063886 n)

end

end A000912.P17086751539822646114

namespace A000912

/-- `A000108(n)+A001405(n)-A063886(n)` -/
def P17086751539822646114.Spec : Prop :=
  ∀ n, P17086751539822646114.a n = A000912 n

end A000912

/-! ## A000912.P18423511520341167823

`A000007(n)+A000108(n)-A097331(n)`
-/

namespace A000912.P18423511520341167823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000108 n - A097331 n)

end

end A000912.P18423511520341167823

namespace A000912

/-- `A000007(n)+A000108(n)-A097331(n)` -/
def P18423511520341167823.Spec : Prop :=
  ∀ n, P18423511520341167823.a n = A000912 n

end A000912

/-! ## A000912.P5408983390020128188

`A000108(n)+A307768(n)-A045621(n)`
-/

namespace A000912.P5408983390020128188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A307768 n - A045621 n)

end

end A000912.P5408983390020128188

namespace A000912

/-- `A000108(n)+A307768(n)-A045621(n)` -/
def P5408983390020128188.Spec : Prop :=
  ∀ n, P5408983390020128188.a n = A000912 n

end A000912

/-! ## A000912.P14873054974180343269

`A210628(n)-A210628(A233583(2*(n+1)))`
-/

namespace A000912.P14873054974180343269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n - A210628 (A233583 (2 * (n + 1))).toNat

end

end A000912.P14873054974180343269

namespace A000912

/-- `A210628(n)-A210628(A233583(2*(n+1)))` -/
def P14873054974180343269.Spec : Prop :=
  ∀ n, P14873054974180343269.a n = A000912 n

end A000912

/-! ## A000912.P9044521446512504362

`A000108(n)+A056594(n+1)*A090192(n)`
-/

namespace A000912.P9044521446512504362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A056594 (n + 1) * A090192 n

end

end A000912.P9044521446512504362

namespace A000912

/-- `A000108(n)+A056594(n+1)*A090192(n)` -/
def P9044521446512504362.Spec : Prop :=
  ∀ n, P9044521446512504362.a n = A000912 n

end A000912

/-! ## A000912.P1562084424559750898

`A089408(A005408(n))-A126120(A004442(n))`
-/

namespace A000912.P1562084424559750898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A005408 n).toNat - A126120 (A004442 n).toNat

end

end A000912.P1562084424559750898

namespace A000912

/-- `A089408(A005408(n))-A126120(A004442(n))` -/
def P1562084424559750898.Spec : Prop :=
  ∀ n, P1562084424559750898.a n = A000912 n

end A000912

/-!
# A000913: Number of bond-rooted polyenoids with n edges.

The programs for A000913, there is no canonical definition to state claims against.
-/

/-! ## A000913.P2653750583571425035

`A220881(n+4)-A126120(n+2)`
-/

namespace A000913.P2653750583571425035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220881 (n + 4) - A126120 (n + 2)

end

end A000913.P2653750583571425035

/-! ## A000913.P16018795257603126930

`A037306(2*(n+1)*(n+3))-A126120(n+2)`
-/

namespace A000913.P16018795257603126930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (2 * ((n + 1) * (n + 3))) - A126120 (n + 2)

end

end A000913.P16018795257603126930

/-! ## A000913.P5985013193634026833

`A047996(A052905(2*(n+1))-n)-A126120(n+2)`
-/

namespace A000913.P5985013193634026833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A052905 (2 * (n + 1)) - (n : ℤ)).toNat - A126120 (n + 2)

end

end A000913.P5985013193634026833

/-! ## A000913.P12069263482774115054

`A065033(A002057(n))-A006078(n+2)`
-/

namespace A000913.P12069263482774115054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002057 n).toNat - A006078 (n + 2)

end

end A000913.P12069263482774115054

/-!
# A000914: Stirling numbers of the first kind: s(n+2, n).

The programs for A000914, the canonical program `A000914.P446365929464198224` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000914 has offset 0).

The definition of A000914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000914.P14001267137775049994

`(n+1)*n*(n+2)*(3*n+5)/24`
-/

namespace A000914.P14001267137775049994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * ((n + 2 : ℚ) * ((3 * n + 5 : ℚ) / 24)))

end

end A000914.P14001267137775049994

namespace A000914

/-- `(n+1)*n*(n+2)*(3*n+5)/24` -/
def P14001267137775049994.Spec : Prop :=
  ∀ n, P14001267137775049994.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P1921620719929234016

`A052149(n+1)/2`
-/

namespace A000914.P1921620719929234016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052149 (n + 1) : ℚ) / 2

end

end A000914.P1921620719929234016

namespace A000914

/-- `A052149(n+1)/2` -/
def P1921620719929234016.Spec : Prop :=
  ∀ n, P1921620719929234016.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P446365929464198224

`3*A000332(n+3)-A000292(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000914

/-- `3*A000332(n+3)-A000292(n)` -/
def P446365929464198224.Spec : Prop :=
  ∀ n, P446365929464198224.a n = A000914 n

theorem P446365929464198224.correct : P446365929464198224.Spec := by
  intro n
  simp only [A000914]

end A000914

/-! ## A000914.P1902737682957050504

`∑[-xor(n, -1)*∑[n]]`
-/

namespace A000914.P1902737682957050504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P1902737682957050504

namespace A000914

/-- `∑[-xor(n, -1)*∑[n]]` -/
def P1902737682957050504.Spec : Prop :=
  ∀ n, P1902737682957050504.a n = A000914 n

end A000914

/-! ## A000914.P771376902892873546

`∑[lcm(n, (n+1)²)]/2`
-/

namespace A000914.P771376902892873546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000914.P771376902892873546

namespace A000914

/-- `∑[lcm(n, (n+1)²)]/2` -/
def P771376902892873546.Spec : Prop :=
  ∀ n, P771376902892873546.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P14808957840037998270

`∑[n*record[(n-1)²]]/2`
-/

namespace A000914.P14808957840037998270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A000914.P14808957840037998270

namespace A000914

/-- `∑[n*record[(n-1)²]]/2` -/
def P14808957840037998270.Spec : Prop :=
  ∀ n, P14808957840037998270.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P5965595987119497651

`∑[n²]+C(∑[n]+1, 2)`
-/

namespace A000914.P5965595987119497651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

end

end A000914.P5965595987119497651

namespace A000914

/-- `∑[n²]+C(∑[n]+1, 2)` -/
def P5965595987119497651.Spec : Prop :=
  ∀ n, (P5965595987119497651.a n : ℤ) = A000914 n

end A000914

/-! ## A000914.P12657619650308925896

`C(∑[n+1], 2)-∑[∑[n]]`
-/

namespace A000914.P12657619650308925896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A000914.P12657619650308925896

namespace A000914

/-- `C(∑[n+1], 2)-∑[∑[n]]` -/
def P12657619650308925896.Spec : Prop :=
  ∀ n, P12657619650308925896.a n = A000914 n

end A000914

/-! ## A000914.P13824935714192966361

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=2`
-/

namespace A000914.P13824935714192966361
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P13824935714192966361

namespace A000914

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P13824935714192966361.Spec : Prop :=
  ∀ n, (P13824935714192966361.a n : ℤ) = A000914 n

end A000914

/-! ## A000914.P2464084081806531048

`∑[∑[1-∑[a(n-1)-3]]]` with `a(0)=1`
-/

namespace A000914.P2464084081806531048
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P2464084081806531048

namespace A000914

/-- `∑[∑[1-∑[a(n-1)-3]]]` -/
def P2464084081806531048.Spec : Prop :=
  ∀ n, P2464084081806531048.a n = A000914 n

end A000914

/-! ## A000914.P15017412461404158053

`a(n-1)+n/2*(n+1)²` with `a(0)=0`
-/

namespace A000914.P15017412461404158053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) / 2 * ((n + 1) ^ 2 : ℚ)

end

end A000914.P15017412461404158053

namespace A000914

/-- `a(n-1)+n/2*(n+1)²` -/
def P15017412461404158053.Spec : Prop :=
  ∀ n, P15017412461404158053.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P1430915759928731265

`floor(a(n-1)+(n+1)*C(n+1, 2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000914.P1430915759928731265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) * Nat.choose (n + 1) 2

end

end A000914.P1430915759928731265

namespace A000914

/-- `floor(a(n-1)+(n+1)*C(n+1, 2))` -/
def P1430915759928731265.Spec : Prop :=
  ∀ n, (P1430915759928731265.a n : ℤ) = A000914 n

end A000914

/-! ## A000914.P5086282738793264628

`∑[A006002(n)]`
-/

namespace A000914.P5086282738793264628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P5086282738793264628

namespace A000914

/-- `∑[A006002(n)]` -/
def P5086282738793264628.Spec : Prop :=
  ∀ n, P5086282738793264628.a n = A000914 n

end A000914

/-! ## A000914.P7344195923557394661

`∑[∑[A005449(n)]]`
-/

namespace A000914.P7344195923557394661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P7344195923557394661

namespace A000914

/-- `∑[∑[A005449(n)]]` -/
def P7344195923557394661.Spec : Prop :=
  ∀ n, P7344195923557394661.a n = A000914 n

end A000914

/-! ## A000914.P2400341557159019776

`A036464(n+2)/4`
-/

namespace A000914.P2400341557159019776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036464 (n + 2) : ℚ) / 4

end

end A000914.P2400341557159019776

namespace A000914

/-- `A036464(n+2)/4` -/
def P2400341557159019776.Spec : Prop :=
  ∀ n, P2400341557159019776.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P11133581300981447579

`A035291(n+2)/8`
-/

namespace A000914.P11133581300981447579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035291 (n + 2) : ℚ) / 8

end

end A000914.P11133581300981447579

namespace A000914

/-- `A035291(n+2)/8` -/
def P11133581300981447579.Spec : Prop :=
  ∀ n, P11133581300981447579.a n = (A000914 n : ℚ)

end A000914

/-! ## A000914.P188520293251144570

`∑[∑[A001318(2*n)]]`
-/

namespace A000914.P188520293251144570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P188520293251144570

namespace A000914

/-- `∑[∑[A001318(2*n)]]` -/
def P188520293251144570.Spec : Prop :=
  ∀ n, P188520293251144570.a n = A000914 n

end A000914

/-! ## A000914.P1399363970359339124

`∑[∑[A211539(2*n)]]`
-/

namespace A000914.P1399363970359339124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000914.P1399363970359339124

namespace A000914

/-- `∑[∑[A211539(2*n)]]` -/
def P1399363970359339124.Spec : Prop :=
  ∀ n, P1399363970359339124.a n = A000914 n

end A000914

/-! ## A000914.P5535347197769689203

`A002817(n)+∑[n²]`
-/

namespace A000914.P5535347197769689203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000914.P5535347197769689203

namespace A000914

/-- `A002817(n)+∑[n²]` -/
def P5535347197769689203.Spec : Prop :=
  ∀ n, P5535347197769689203.a n = A000914 n

end A000914

/-! ## A000914.P9821199613878309802

`∑[A045991(n+1)]/2`
-/

namespace A000914.P9821199613878309802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A000914.P9821199613878309802

namespace A000914

/-- `∑[A045991(n+1)]/2` -/
def P9821199613878309802.Spec : Prop :=
  ∀ n, P9821199613878309802.a n = (A000914 n : ℚ)

end A000914

/-!
# A000915: Stirling numbers of first kind s(n+4, n).

The programs for A000915, the canonical program `A000915.P3040882938927049526` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000915 has offset 1).

The definition of A000915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000915.P12838408576353603554

`∑[A000217(n+3)*A027764(n+3)]`
-/

namespace A000915.P12838408576353603554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) * A027764 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000915.P12838408576353603554

namespace A000915

/-- `∑[A000217(n+3)*A027764(n+3)]` -/
def P12838408576353603554.Spec : Prop :=
  ∀ n, P12838408576353603554.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P3040882938927049526

`∑[A000332(n+4)*A006002(n+3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000915

/-- `∑[A000332(n+4)*A006002(n+3)]` -/
def P3040882938927049526.Spec : Prop :=
  ∀ n, P3040882938927049526.a n = A000915 (n + 1)

theorem P3040882938927049526.correct : P3040882938927049526.Spec := by
  intro n
  simp only [A000915, Nat.add_sub_cancel]

end A000915

/-! ## A000915.P16160874255418053091

`∑[A000217(n+3)*A333320(2*(n+4))]`
-/

namespace A000915.P16160874255418053091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) * A333320 (2 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000915.P16160874255418053091

namespace A000915

/-- `∑[A000217(n+3)*A333320(2*(n+4))]` -/
def P16160874255418053091.Spec : Prop :=
  ∀ n, P16160874255418053091.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P15693937933438149142

`∑[(n+4)*A001303(n+1)]`
-/

namespace A000915.P15693937933438149142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A001303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000915.P15693937933438149142

namespace A000915

/-- `∑[(n+4)*A001303(n+1)]` -/
def P15693937933438149142.Spec : Prop :=
  ∀ n, P15693937933438149142.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P3666633819452604026

`A253207(n+5)-A000914(n+3)`
-/

namespace A000915.P3666633819452604026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253207 (n + 5) - A000914 (n + 3)

end

end A000915.P3666633819452604026

namespace A000915

/-- `A253207(n+5)-A000914(n+3)` -/
def P3666633819452604026.Spec : Prop :=
  ∀ n, P3666633819452604026.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P17350782251834799482

`A008276(A167499(n+3))`
-/

namespace A000915.P17350782251834799482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A167499 (n + 3)).toNat

end

end A000915.P17350782251834799482

namespace A000915

/-- `A008276(A167499(n+3))` -/
def P17350782251834799482.Spec : Prop :=
  ∀ n, P17350782251834799482.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P8667743861176081013

`A008276(A038722(Δ[A023545(n+1)]))`
-/

namespace A000915.P8667743861176081013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A000915.P8667743861176081013

namespace A000915

/-- `A008276(A038722(Δ[A023545(n+1)]))` -/
def P8667743861176081013.Spec : Prop :=
  ∀ n, P8667743861176081013.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P16329431343207544824

`A008275(A046691(n+3))`
-/

namespace A000915.P16329431343207544824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A046691 (n + 3)).toNat

end

end A000915.P16329431343207544824

namespace A000915

/-- `A008275(A046691(n+3))` -/
def P16329431343207544824.Spec : Prop :=
  ∀ n, P16329431343207544824.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P4154856560464845835

`A048994(A052905(n+3))`
-/

namespace A000915.P4154856560464845835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A052905 (n + 3)).toNat

end

end A000915.P4154856560464845835

namespace A000915

/-- `A048994(A052905(n+3))` -/
def P4154856560464845835.Spec : Prop :=
  ∀ n, P4154856560464845835.a n = A000915 (n + 1)

end A000915

/-! ## A000915.P6503964955361455316

`A008275(A055998(n+3)-1)`
-/

namespace A000915.P6503964955361455316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A055998 (n + 3) - 1).toNat

end

end A000915.P6503964955361455316

namespace A000915

/-- `A008275(A055998(n+3)-1)` -/
def P6503964955361455316.Spec : Prop :=
  ∀ n, P6503964955361455316.a n = A000915 (n + 1)

end A000915

/-!
# A000917: a(n) = (2n+3)!/(n!*(n+2)!).

The programs for A000917, the canonical program `A000917.P5384095616012762009` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000917 has offset 0).

The definition of A000917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000917.P13185355515121875012

`(n+1)*A001700(n+1)`
-/

namespace A000917.P13185355515121875012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001700 (n + 1)

end

end A000917.P13185355515121875012

namespace A000917

/-- `(n+1)*A001700(n+1)` -/
def P13185355515121875012.Spec : Prop :=
  ∀ n, P13185355515121875012.a n = A000917 n

end A000917

/-! ## A000917.P3477381359790158992

`(2*n+3)*A001791(n+1)`
-/

namespace A000917.P3477381359790158992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A001791 (n + 1)

end

end A000917.P3477381359790158992

namespace A000917

/-- `(2*n+3)*A001791(n+1)` -/
def P3477381359790158992.Spec : Prop :=
  ∀ n, P3477381359790158992.a n = A000917 n

end A000917

/-! ## A000917.P5384095616012762009

`(2*n+3)!/(n!*(n+2)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000917

/-- `(2*n+3)!/(n!*(n+2)!)` -/
def P5384095616012762009.Spec : Prop :=
  ∀ n, P5384095616012762009.a n = (A000917 n : ℚ)

end A000917

/-! ## A000917.P9276511374317180752

`(n+1)*∏[4-2/(n+2)]`
-/

namespace A000917.P9276511374317180752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000917.P9276511374317180752

namespace A000917

/-- `(n+1)*∏[4-2/(n+2)]` -/
def P9276511374317180752.Spec : Prop :=
  ∀ n, P9276511374317180752.a n = (A000917 n : ℚ)

end A000917

/-! ## A000917.P11285148594562962215

`A191522(2*(n+2))`
-/

namespace A000917.P11285148594562962215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 (2 * (n + 2))

end

end A000917.P11285148594562962215

namespace A000917

/-- `A191522(2*(n+2))` -/
def P11285148594562962215.Spec : Prop :=
  ∀ n, P11285148594562962215.a n = A000917 n

end A000917

/-! ## A000917.P11746176371959218467

`A191527(2*n+3)`
-/

namespace A000917.P11746176371959218467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 (2 * n + 3)

end

end A000917.P11746176371959218467

namespace A000917

/-- `A191527(2*n+3)` -/
def P11746176371959218467.Spec : Prop :=
  ∀ n, P11746176371959218467.a n = A000917 n

end A000917

/-! ## A000917.P1444552645000879530

`A237884(2*n+3)`
-/

namespace A000917.P1444552645000879530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 (2 * n + 3)

end

end A000917.P1444552645000879530

namespace A000917

/-- `A237884(2*n+3)` -/
def P1444552645000879530.Spec : Prop :=
  ∀ n, P1444552645000879530.a n = A000917 n

end A000917

/-! ## A000917.P13128018430084621518

`A002457(n+1)/ratio[n+1]`
-/

namespace A000917.P13128018430084621518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A000917.P13128018430084621518

namespace A000917

/-- `A002457(n+1)/ratio[n+1]` -/
def P13128018430084621518.Spec : Prop :=
  ∀ n, P13128018430084621518.a n = (A000917 n : ℚ)

end A000917

/-! ## A000917.P9144972245253344582

`A033876(n)+A002737(n)`
-/

namespace A000917.P9144972245253344582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033876 n + A002737 n

end

end A000917.P9144972245253344582

namespace A000917

/-- `A033876(n)+A002737(n)` -/
def P9144972245253344582.Spec : Prop :=
  ∀ n, P9144972245253344582.a n = A000917 n

end A000917

/-! ## A000917.P1473002143719286545

`A214824(n+1)+A002057(n)`
-/

namespace A000917.P1473002143719286545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214824 (n + 1) + A002057 n

end

end A000917.P1473002143719286545

namespace A000917

/-- `A214824(n+1)+A002057(n)` -/
def P1473002143719286545.Spec : Prop :=
  ∀ n, P1473002143719286545.a n = A000917 n

end A000917

/-! ## A000917.P501441617042014385

`A002011(n)-A001791(n+1)`
-/

namespace A000917.P501441617042014385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 n - A001791 (n + 1)

end

end A000917.P501441617042014385

namespace A000917

/-- `A002011(n)-A001791(n+1)` -/
def P501441617042014385.Spec : Prop :=
  ∀ n, P501441617042014385.a n = A000917 n

end A000917

/-! ## A000917.P1512665562512425891

`A110609(n+1)+A005430(n+1)`
-/

namespace A000917.P1512665562512425891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 (n + 1) + A005430 (n + 1)

end

end A000917.P1512665562512425891

namespace A000917

/-- `A110609(n+1)+A005430(n+1)` -/
def P1512665562512425891.Spec : Prop :=
  ∀ n, P1512665562512425891.a n = A000917 n

end A000917

/-! ## A000917.P5785934742416608631

`A172060(n+1)+A008549(n+1)`
-/

namespace A000917.P5785934742416608631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172060 (n + 1) + A008549 (n + 1)

end

end A000917.P5785934742416608631

namespace A000917

/-- `A172060(n+1)+A008549(n+1)` -/
def P5785934742416608631.Spec : Prop :=
  ∀ n, P5785934742416608631.a n = A000917 n

end A000917

/-! ## A000917.P14513131303512930582

`A002457(n+1)-A001700(n+1)`
-/

namespace A000917.P14513131303512930582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A001700 (n + 1)

end

end A000917.P14513131303512930582

namespace A000917

/-- `A002457(n+1)-A001700(n+1)` -/
def P14513131303512930582.Spec : Prop :=
  ∀ n, P14513131303512930582.a n = A000917 n

end A000917

/-! ## A000917.P5918059537110112564

`A002740(n+3)+A002054(n+1)`
-/

namespace A000917.P5918059537110112564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 3) + A002054 (n + 1)

end

end A000917.P5918059537110112564

namespace A000917

/-- `A002740(n+3)+A002054(n+1)` -/
def P5918059537110112564.Spec : Prop :=
  ∀ n, P5918059537110112564.a n = A000917 n

end A000917

/-! ## A000917.P1691539458493213163

`A002457(n+1)-A088218(n+2)`
-/

namespace A000917.P1691539458493213163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A088218 (n + 2)

end

end A000917.P1691539458493213163

namespace A000917

/-- `A002457(n+1)-A088218(n+2)` -/
def P1691539458493213163.Spec : Prop :=
  ∀ n, P1691539458493213163.a n = A000917 n

end A000917

/-! ## A000917.P15574890924144875795

`A034274(n+2)-A000108(n+2)`
-/

namespace A000917.P15574890924144875795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034274 (n + 2) - A000108 (n + 2)

end

end A000917.P15574890924144875795

namespace A000917

/-- `A034274(n+2)-A000108(n+2)` -/
def P15574890924144875795.Spec : Prop :=
  ∀ n, P15574890924144875795.a n = A000917 n

end A000917

/-! ## A000917.P14781627160495362079

`A097070(n+3)-A000984(n+2)`
-/

namespace A000917.P14781627160495362079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 3) - A000984 (n + 2)

end

end A000917.P14781627160495362079

namespace A000917

/-- `A097070(n+3)-A000984(n+2)` -/
def P14781627160495362079.Spec : Prop :=
  ∀ n, P14781627160495362079.a n = A000917 n

end A000917

/-! ## A000917.P6403800575167335829

`A237664(n+1)+A034275(n+2)-1`
-/

namespace A000917.P6403800575167335829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237664 (n + 1) + (A034275 (n + 2) - 1)

end

end A000917.P6403800575167335829

namespace A000917

/-- `A237664(n+1)+A034275(n+2)-1` -/
def P6403800575167335829.Spec : Prop :=
  ∀ n, P6403800575167335829.a n = A000917 n

end A000917

/-! ## A000917.P8740653680840266458

`A275329(2*n+3)-A000984(n+2)`
-/

namespace A000917.P8740653680840266458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275329 (2 * n + 3) - A000984 (n + 2)

end

end A000917.P8740653680840266458

namespace A000917

/-- `A275329(2*n+3)-A000984(n+2)` -/
def P8740653680840266458.Spec : Prop :=
  ∀ n, P8740653680840266458.a n = A000917 n

end A000917

/-!
# A000918: a(n) = 2^n - 2.

The programs for A000918, the canonical program `A000918.P1617571103489352932` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000918 has offset 0).

The definition of A000918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000918.P1617571103489352932

`2*a(n-1)+2` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000918

/-- `2*a(n-1)+2` -/
def P1617571103489352932.Spec : Prop :=
  ∀ n, P1617571103489352932.a n = A000918 n

theorem P1617571103489352932.correct : P1617571103489352932.Spec := by
  intro n
  simp only [A000918]

end A000918

/-! ## A000918.P6920824523217236297

`A000225(n)-1`
-/

namespace A000918.P6920824523217236297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 1

end

end A000918.P6920824523217236297

namespace A000918

/-- `A000225(n)-1` -/
def P6920824523217236297.Spec : Prop :=
  ∀ n, P6920824523217236297.a n = A000918 n

end A000918

/-! ## A000918.P3268403841978721159

`A000079(n)-2`
-/

namespace A000918.P3268403841978721159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2

end

end A000918.P3268403841978721159

namespace A000918

/-- `A000079(n)-2` -/
def P3268403841978721159.Spec : Prop :=
  ∀ n, P3268403841978721159.a n = A000918 n

end A000918

/-! ## A000918.P16986478714791603731

`A058896(n)/A052548(n)`
-/

namespace A000918.P16986478714791603731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058896 n : ℚ) / (A052548 n : ℚ)

end

end A000918.P16986478714791603731

namespace A000918

/-- `A058896(n)/A052548(n)` -/
def P16986478714791603731.Spec : Prop :=
  ∀ n, P16986478714791603731.a n = (A000918 n : ℚ)

end A000918

/-! ## A000918.P14329454465793069288

`2^n-2`
-/

namespace A000918.P14329454465793069288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

end

end A000918.P14329454465793069288

namespace A000918

/-- `2^n-2` -/
def P14329454465793069288.Spec : Prop :=
  ∀ n, P14329454465793069288.a n = A000918 n

end A000918

/-! ## A000918.P6141637229373687898

`-A122958(n+1)`
-/

namespace A000918.P6141637229373687898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A122958 (n + 1)

end

end A000918.P6141637229373687898

namespace A000918

/-- `-A122958(n+1)` -/
def P6141637229373687898.Spec : Prop :=
  ∀ n, P6141637229373687898.a n = A000918 n

end A000918

/-! ## A000918.P14978188549386293917

`xor(A000035(n), A140253(n))`
-/

namespace A000918.P14978188549386293917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A140253 n)

end

end A000918.P14978188549386293917

namespace A000918

/-- `xor(A000035(n), A140253(n))` -/
def P14978188549386293917.Spec : Prop :=
  ∀ n, P14978188549386293917.a n = A000918 n

end A000918

/-! ## A000918.P11728633634617919441

`xor(A000225(n), A158388(n))`
-/

namespace A000918.P11728633634617919441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A158388 n)

end

end A000918.P11728633634617919441

namespace A000918

/-- `xor(A000225(n), A158388(n))` -/
def P11728633634617919441.Spec : Prop :=
  ∀ n, P11728633634617919441.a n = A000918 n

end A000918

/-! ## A000918.P16474567028235838378

`Δ[A005803(n)]`
-/

namespace A000918.P16474567028235838378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P16474567028235838378

namespace A000918

/-- `Δ[A005803(n)]` -/
def P16474567028235838378.Spec : Prop :=
  ∀ n, P16474567028235838378.a n = A000918 n

end A000918

/-! ## A000918.P15266978535907743812

`Δ[A070313(n)]`
-/

namespace A000918.P15266978535907743812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P15266978535907743812

namespace A000918

/-- `Δ[A070313(n)]` -/
def P15266978535907743812.Spec : Prop :=
  ∀ n, P15266978535907743812.a n = A000918 n

end A000918

/-! ## A000918.P9249172477212225332

`Δ[A356185(2*n)]`
-/

namespace A000918.P9249172477212225332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356185 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P9249172477212225332

namespace A000918

/-- `Δ[A356185(2*n)]` -/
def P9249172477212225332.Spec : Prop :=
  ∀ n, P9249172477212225332.a n = A000918 n

end A000918

/-! ## A000918.P14637364844056444483

`Δ[Δ[2*a(n-1)]-2*n]` with `a(0)=1`
-/

namespace A000918.P14637364844056444483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P14637364844056444483

namespace A000918

/-- `Δ[Δ[2*a(n-1)]-2*n]` -/
def P14637364844056444483.Spec : Prop :=
  ∀ n, P14637364844056444483.a n = A000918 n

end A000918

/-! ## A000918.P7091702248917608797

`Δ[Δ[A024012(n)]]`
-/

namespace A000918.P7091702248917608797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P7091702248917608797

namespace A000918

/-- `Δ[Δ[A024012(n)]]` -/
def P7091702248917608797.Spec : Prop :=
  ∀ n, P7091702248917608797.a n = A000918 n

end A000918

/-! ## A000918.P5873131176261714074

`Δ[Δ[A030110(n)]]`
-/

namespace A000918.P5873131176261714074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P5873131176261714074

namespace A000918

/-- `Δ[Δ[A030110(n)]]` -/
def P5873131176261714074.Spec : Prop :=
  ∀ n, P5873131176261714074.a n = A000918 n

end A000918

/-! ## A000918.P13951228011243391025

`Δ[Δ[A176776(n)]]`
-/

namespace A000918.P13951228011243391025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P13951228011243391025

namespace A000918

/-- `Δ[Δ[A176776(n)]]` -/
def P13951228011243391025.Spec : Prop :=
  ∀ n, P13951228011243391025.a n = A000918 n

end A000918

/-! ## A000918.P11991124455981858767

`Δ[Δ[A176777(n)]]`
-/

namespace A000918.P11991124455981858767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P11991124455981858767

namespace A000918

/-- `Δ[Δ[A176777(n)]]` -/
def P11991124455981858767.Spec : Prop :=
  ∀ n, P11991124455981858767.a n = A000918 n

end A000918

/-! ## A000918.P11243634393053123789

`Δ[Δ[A176778(n)]]`
-/

namespace A000918.P11243634393053123789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P11243634393053123789

namespace A000918

/-- `Δ[Δ[A176778(n)]]` -/
def P11243634393053123789.Spec : Prop :=
  ∀ n, P11243634393053123789.a n = A000918 n

end A000918

/-! ## A000918.P4368124619785099281

`Δ[Δ[A220588(n)]]`
-/

namespace A000918.P4368124619785099281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P4368124619785099281

namespace A000918

/-- `Δ[Δ[A220588(n)]]` -/
def P4368124619785099281.Spec : Prop :=
  ∀ n, P4368124619785099281.a n = A000918 n

end A000918

/-! ## A000918.P4969211391277781868

`Δ[Δ[A142974(n+1)]]`
-/

namespace A000918.P4969211391277781868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142974 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000918.P4969211391277781868

namespace A000918

/-- `Δ[Δ[A142974(n+1)]]` -/
def P4969211391277781868.Spec : Prop :=
  ∀ n, P4969211391277781868.a n = A000918 n

end A000918

/-!
# A000919: a(n) = 4^n - C(4,3)*3^n + C(4,2)*2^n - C(4,1).

The programs for A000919, the canonical program `A000919.P2812723052351844974` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000919 has offset 1).

The definition of A000919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000919.P2812723052351844974

`4*(4^n-(3*(3^n-2^n)+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000919

/-- `4*(4^n-(3*(3^n-2^n)+1))` -/
def P2812723052351844974.Spec : Prop :=
  ∀ n, P2812723052351844974.a n = A000919 (n + 1)

theorem P2812723052351844974.correct : P2812723052351844974.Spec := by
  intro n
  simp only [A000919, Nat.add_sub_cancel]

end A000919

/-! ## A000919.P17627183903431763966

`A056455(Δ[n²])`
-/

namespace A000919.P17627183903431763966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000919.P17627183903431763966

namespace A000919

/-- `A056455(Δ[n²])` -/
def P17627183903431763966.Spec : Prop :=
  ∀ n, P17627183903431763966.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P17844950722376652307

`A056490(Δ[n²])`
-/

namespace A000919.P17844950722376652307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000919.P17844950722376652307

namespace A000919

/-- `A056490(Δ[n²])` -/
def P17844950722376652307.Spec : Prop :=
  ∀ n, P17844950722376652307.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P191042083119703015

`∑{d}[n+1, A056269(#)]`
-/

namespace A000919.P191042083119703015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056269 d

end

end A000919.P191042083119703015

namespace A000919

/-- `∑{d}[n+1, A056269(#)]` -/
def P191042083119703015.Spec : Prop :=
  ∀ n, P191042083119703015.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P969925139852954946

`lcm(2, A056490(2*n+1))`
-/

namespace A000919.P969925139852954946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A056490 (2 * n + 1))

end

end A000919.P969925139852954946

namespace A000919

/-- `lcm(2, A056490(2*n+1))` -/
def P969925139852954946.Spec : Prop :=
  ∀ n, (P969925139852954946.a n : ℤ) = A000919 (n + 1)

end A000919

/-! ## A000919.P4705477594412978642

`∑{d}[2*n+1, A056465(#)]`
-/

namespace A000919.P4705477594412978642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056465 d

end

end A000919.P4705477594412978642

namespace A000919

/-- `∑{d}[2*n+1, A056465(#)]` -/
def P4705477594412978642.Spec : Prop :=
  ∀ n, P4705477594412978642.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P12133557939857611234

`∑{d}[2*n+1, A056500(#)]`
-/

namespace A000919.P12133557939857611234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056500 d

end

end A000919.P12133557939857611234

namespace A000919

/-- `∑{d}[2*n+1, A056500(#)]` -/
def P12133557939857611234.Spec : Prop :=
  ∀ n, P12133557939857611234.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P7670242650325965926

`∑{d}[n+1, #*A056289(#)]`
-/

namespace A000919.P7670242650325965926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A056289 d

end

end A000919.P7670242650325965926

namespace A000919

/-- `∑{d}[n+1, #*A056289(#)]` -/
def P7670242650325965926.Spec : Prop :=
  ∀ n, P7670242650325965926.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P6387909598906150941

`or(1, A056455(2*(n+1)))-1`
-/

namespace A000919.P6387909598906150941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056455 (2 * (n + 1))) - 1

end

end A000919.P6387909598906150941

namespace A000919

/-- `or(1, A056455(2*(n+1)))-1` -/
def P6387909598906150941.Spec : Prop :=
  ∀ n, P6387909598906150941.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P13336177452103530975

`lcm(A028244(n+1), A040057(n))`
-/

namespace A000919.P13336177452103530975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028244 (n + 1)) (A040057 n)

end

end A000919.P13336177452103530975

namespace A000919

/-- `lcm(A028244(n+1), A040057(n))` -/
def P13336177452103530975.Spec : Prop :=
  ∀ n, (P13336177452103530975.a n : ℤ) = A000919 (n + 1)

end A000919

/-! ## A000919.P3098520057182375704

`lcm(A032263(n+1), A040553(n))`
-/

namespace A000919.P3098520057182375704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032263 (n + 1)) (A040553 n)

end

end A000919.P3098520057182375704

namespace A000919

/-- `lcm(A032263(n+1), A040553(n))` -/
def P3098520057182375704.Spec : Prop :=
  ∀ n, (P3098520057182375704.a n : ℤ) = A000919 (n + 1)

end A000919

/-! ## A000919.P14217523680102738798

`A305624(n+1)+A056311(n+1)`
-/

namespace A000919.P14217523680102738798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305624 (n + 1) + A056311 (n + 1)

end

end A000919.P14217523680102738798

namespace A000919

/-- `A305624(n+1)+A056311(n+1)` -/
def P14217523680102738798.Spec : Prop :=
  ∀ n, P14217523680102738798.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P11769144906304391793

`A056455(2*n+1)+A000007(n+1)`
-/

namespace A000919.P11769144906304391793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (2 * n + 1) + A000007 (n + 1)

end

end A000919.P11769144906304391793

namespace A000919

/-- `A056455(2*n+1)+A000007(n+1)` -/
def P11769144906304391793.Spec : Prop :=
  ∀ n, P11769144906304391793.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P11525916203386115615

`A056455(n+1)+2*A305624(n+1)`
-/

namespace A000919.P11525916203386115615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (n + 1) + 2 * A305624 (n + 1)

end

end A000919.P11525916203386115615

namespace A000919

/-- `A056455(n+1)+2*A305624(n+1)` -/
def P11525916203386115615.Spec : Prop :=
  ∀ n, P11525916203386115615.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P11384093422560790861

`2*A056311(n+1)-A056455(n+1)`
-/

namespace A000919.P11384093422560790861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056311 (n + 1) - A056455 (n + 1)

end

end A000919.P11384093422560790861

namespace A000919

/-- `2*A056311(n+1)-A056455(n+1)` -/
def P11384093422560790861.Spec : Prop :=
  ∀ n, P11384093422560790861.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P15495671991543207736

`2*A134018(n+1)-A083323(n+1)`
-/

namespace A000919.P15495671991543207736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134018 (n + 1) - A083323 (n + 1)

end

end A000919.P15495671991543207736

namespace A000919

/-- `2*A134018(n+1)-A083323(n+1)` -/
def P15495671991543207736.Spec : Prop :=
  ∀ n, P15495671991543207736.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P4654509508691010469

`or(A056455(2*n+1), A056455(2*(n+1)))`
-/

namespace A000919.P4654509508691010469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056455 (2 * n + 1)) (A056455 (2 * (n + 1)))

end

end A000919.P4654509508691010469

namespace A000919

/-- `or(A056455(2*n+1), A056455(2*(n+1)))` -/
def P4654509508691010469.Spec : Prop :=
  ∀ n, P4654509508691010469.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P14253132032861126465

`A056490(2*n+1)+and(1, A056490(2*(n+1)))`
-/

namespace A000919.P14253132032861126465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (2 * n + 1) + Int.land 1 (A056490 (2 * (n + 1)))

end

end A000919.P14253132032861126465

namespace A000919

/-- `A056490(2*n+1)+and(1, A056490(2*(n+1)))` -/
def P14253132032861126465.Spec : Prop :=
  ∀ n, P14253132032861126465.a n = A000919 (n + 1)

end A000919

/-! ## A000919.P970957904517454682

`A052776(n+2)/(n+2)`
-/

namespace A000919.P970957904517454682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052776 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A000919.P970957904517454682

namespace A000919

/-- `A052776(n+2)/(n+2)` -/
def P970957904517454682.Spec : Prop :=
  ∀ n, P970957904517454682.a n = (A000919 (n + 1) : ℚ)

end A000919

/-! ## A000919.P2333770891147681333

`A056455(2*(n+1))*A233583(2*n+1)/A092535(n+1)`
-/

namespace A000919.P2333770891147681333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (2 * (n + 1)) * A233583 (2 * n + 1) : ℚ) / (A092535 (n + 1) : ℚ)

end

end A000919.P2333770891147681333

namespace A000919

/-- `A056455(2*(n+1))*A233583(2*n+1)/A092535(n+1)` -/
def P2333770891147681333.Spec : Prop :=
  ∀ n, P2333770891147681333.a n = (A000919 (n + 1) : ℚ)

end A000919

/-!
# A000920: Differences of 0: 6!*Stirling2(n,6).

The programs for A000920, there is no canonical definition to state claims against.
-/

/-! ## A000920.P4710047565284161676

`A056457(Δ[n²])`
-/

namespace A000920.P4710047565284161676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000920.P4710047565284161676

/-! ## A000920.P12206926678963916094

`A056492(Δ[n²])`
-/

namespace A000920.P12206926678963916094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000920.P12206926678963916094

/-! ## A000920.P15476456568889825086

`∑{d}[n+1, A056271(#)]`
-/

namespace A000920.P15476456568889825086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056271 d

end

end A000920.P15476456568889825086

/-! ## A000920.P16537043146373779440

`lcm(2, A056492(2*n+1))`
-/

namespace A000920.P16537043146373779440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A056492 (2 * n + 1))

end

end A000920.P16537043146373779440

/-! ## A000920.P17650213250246968514

`∑{d}[2*n+1, A056467(#)]`
-/

namespace A000920.P17650213250246968514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056467 d

end

end A000920.P17650213250246968514

/-! ## A000920.P3189922347535558147

`∑{d}[2*n+1, A056502(#)]`
-/

namespace A000920.P3189922347535558147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056502 d

end

end A000920.P3189922347535558147

/-! ## A000920.P12519717180435017788

`∑{d}[n+1, #*A056291(#)]`
-/

namespace A000920.P12519717180435017788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A056291 d

end

end A000920.P12519717180435017788

/-! ## A000920.P2414087370223898738

`A305626(n+1)+A056313(n+1)`
-/

namespace A000920.P2414087370223898738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305626 (n + 1) + A056313 (n + 1)

end

end A000920.P2414087370223898738

/-! ## A000920.P12374549552241923943

`A056457(2*n+1)+A000007(n+1)`
-/

namespace A000920.P12374549552241923943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056457 (2 * n + 1) + A000007 (n + 1)

end

end A000920.P12374549552241923943

/-! ## A000920.P11181903609778245651

`A056457(n+1)+A305626(n+1)+A305626(n+1)`
-/

namespace A000920.P11181903609778245651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056457 (n + 1) + (A305626 (n + 1) + A305626 (n + 1))

end

end A000920.P11181903609778245651

/-! ## A000920.P16315937059851207507

`A056313(n+1)+A056313(n+1)-A056457(n+1)`
-/

namespace A000920.P16315937059851207507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1) + (A056313 (n + 1) - A056457 (n + 1))

end

end A000920.P16315937059851207507

/-! ## A000920.P14773185100280855660

`A056492(2*n+1)+and(1, A056492(2*(n+1)))`
-/

namespace A000920.P14773185100280855660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (2 * n + 1) + Int.land 1 (A056492 (2 * (n + 1)))

end

end A000920.P14773185100280855660

/-! ## A000920.P18208586852007769194

`A056492(2*n+1)+A000035(2*n)*A056492(2*n+2)`
-/

namespace A000920.P18208586852007769194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (2 * n + 1) + A000035 (2 * n) * A056492 (2 * n + 2)

end

end A000920.P18208586852007769194

/-! ## A000920.P7388646364236913423

`gcd(A056492(2*n+1)*A079210(n+1), A056492(2*n+1))`
-/

namespace A000920.P7388646364236913423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056492 (2 * n + 1) * A079210 (n + 1)) (A056492 (2 * n + 1))

end

end A000920.P7388646364236913423

/-! ## A000920.P5862795984960310811

`A056492(2*n+1)*(2*n+1)/A109613(2*n)`
-/

namespace A000920.P5862795984960310811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056492 (2 * n + 1) * (2 * n + 1 : ℤ) : ℚ) / (A109613 (2 * n) : ℚ)

end

end A000920.P5862795984960310811

/-! ## A000920.P2343071584107941563

`A056457(2*(n+1))%(7^n)`
-/

namespace A000920.P2343071584107941563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056457 (2 * (n + 1))) (7 ^ n : ℤ)

end

end A000920.P2343071584107941563

/-!
# A000921: Primes p of the form 3k+1 such that Sum_{x=1..p} cos(2*Pi*x^3/p) > sqrt(p).

The programs for A000921, there is no canonical definition to state claims against.
-/

/-! ## A000921.P5044335609948422312

`p?[A070094(n+1)*A089740(n+1)]`
-/

namespace A000921.P5044335609948422312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) * A089740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000921.P5044335609948422312

/-! ## A000921.P905554873756754712

`A002476(A018252(n+1)%A321638(n))`
-/

namespace A000921.P905554873756754712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (Int.tmod (A018252 (n + 1)) (A321638 n)).toNat

end

end A000921.P905554873756754712

/-! ## A000921.P8112665490067626915

`A272407(lt[A285407(n), A347954(n+1)])`
-/

namespace A000921.P8112665490067626915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A000921.P8112665490067626915

/-! ## A000921.P1166631904647424378

`A272384(A115570(n+1)*A174891(n+1))`
-/

namespace A000921.P1166631904647424378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272384 (A115570 (n + 1) * A174891 (n + 1)).toNat

end

end A000921.P1166631904647424378

/-!
# A000922: Primes p of the form 3k+1 such that -sqrt(p) < Sum_{x=1..p} cos(2*Pi*x^3/p) < sqrt(p).

The programs for A000922, there is no canonical definition to state claims against.
-/

/-! ## A000922.P3401471895649333935

`∩[A040092(n+1), A304435(n+1)]`
-/

namespace A000922.P3401471895649333935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000922.P3401471895649333935

/-! ## A000922.P10298852020337547200

`∩[A040092(n+1), A347254(n+1)]`
-/

namespace A000922.P10298852020337547200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000922.P10298852020337547200

/-! ## A000922.P18132496645974638729

`A002476(A172541(n+1)+A005109(n+1))`
-/

namespace A000922.P18132496645974638729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (A172541 (n + 1) + A005109 (n + 1)).toNat

end

end A000922.P18132496645974638729

/-!
# A000923: Primes p of the form 3k+1 such that Sum_{x=1..p} cos(2*Pi*x^3/p) < -sqrt(p).

The programs for A000923, there is no canonical definition to state claims against.
-/

/-! ## A000923.P17163203583195394254

`∩[A040070(n+1), A183989(n+1)]`
-/

namespace A000923.P17163203583195394254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000923.P17163203583195394254

/-!
# A000924: Class number of Q(sqrt(-n)), n squarefree.

The programs for A000924, there is no canonical definition to state claims against.
-/

/-! ## A000924.P2881551359990944906

`A003639(n+1)*A003643(n+1)`
-/

namespace A000924.P2881551359990944906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003639 (n + 1) * A003643 (n + 1)

end

end A000924.P2881551359990944906

/-! ## A000924.P2440205446861207326

`A202084(record[A007913(n+1)])`
-/

namespace A000924.P2440205446861207326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000924.P2440205446861207326

/-! ## A000924.P14111399731940311428

`A202084(record[A007947(n+1)])`
-/

namespace A000924.P14111399731940311428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000924.P14111399731940311428

/-! ## A000924.P4298229169517695349

`A202084(record[A019554(n+1)])`
-/

namespace A000924.P4298229169517695349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000924.P4298229169517695349

/-! ## A000924.P13767531041485214921

`A202084(record[A055231(n+1)])`
-/

namespace A000924.P13767531041485214921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000924.P13767531041485214921

/-! ## A000924.P8247384131026838968

`A202084(record[A066069(n+1)])`
-/

namespace A000924.P8247384131026838968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000924.P8247384131026838968

/-! ## A000924.P17946555369657894928

`A202084(eq[1, A008966(n+1)]+1)`
-/

namespace A000924.P17946555369657894928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A000924.P17946555369657894928

/-! ## A000924.P1387031617475360657

`A202084(record[n*A008683(n+1)²]+1)`
-/

namespace A000924.P1387031617475360657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A000924.P1387031617475360657

/-! ## A000924.P11760299286252864260

`A202084(record[n*and(1, A008683(n+1))]+1)`
-/

namespace A000924.P11760299286252864260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A000924.P11760299286252864260

/-! ## A000924.P5361882093581358267

`A202084(record[n+1-A047393(∏{e}[n+1, #]+1)]+1)`
-/

namespace A000924.P5361882093581358267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047393 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A000924.P5361882093581358267

/-! ## A000924.P5514627284438222224

`A202084(abs(A033197(n+1)))`
-/

namespace A000924.P5514627284438222224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 |A033197 (n + 1)|.toNat

end

end A000924.P5514627284438222224

/-! ## A000924.P1705621926680188958

`A202084(A033197(n+1)-2*A033197(n+1))`
-/

namespace A000924.P1705621926680188958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A033197 (n + 1) - 2 * A033197 (n + 1)).toNat

end

end A000924.P1705621926680188958

/-! ## A000924.P14254909606547524143

`A202084(A133466(n+1))`
-/

namespace A000924.P14254909606547524143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A133466 (n + 1)).toNat

end

end A000924.P14254909606547524143

/-!
# A000925: Number of ordered ways of writing n as a sum of 2 squares of nonnegative integers.

The programs for A000925, the canonical program `A000925.P15779309076395075492` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000925 has offset 0).

The definition of A000925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000925.P17168377950750184078

`A063725(n)+char[(n+1)²]+char[n²]`
-/

namespace A000925.P17168377950750184078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A000925.P17168377950750184078

namespace A000925

/-- `A063725(n)+char[(n+1)²]+char[n²]` -/
def P17168377950750184078.Spec : Prop :=
  ∀ n, P17168377950750184078.a n = A000925 n

end A000925

/-! ## A000925.P17710170889662541928

`A025435(n)+A000161(n)`
-/

namespace A000925.P17710170889662541928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n + A000161 n

end

end A000925.P17710170889662541928

namespace A000925

/-- `A025435(n)+A000161(n)` -/
def P17710170889662541928.Spec : Prop :=
  ∀ n, P17710170889662541928.a n = A000925 n

end A000925

/-! ## A000925.P6759041827388078112

`Δ[A247367(n)+A014200(n)]`
-/

namespace A000925.P6759041827388078112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 n + A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000925.P6759041827388078112

namespace A000925

/-- `Δ[A247367(n)+A014200(n)]` -/
def P6759041827388078112.Spec : Prop :=
  ∀ n, P6759041827388078112.a n = A000925 n

end A000925

/-! ## A000925.P10313073267044400738

`A003059(n+1)-A247367(n)`
-/

namespace A000925.P10313073267044400738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) - A247367 n

end

end A000925.P10313073267044400738

namespace A000925

/-- `A003059(n+1)-A247367(n)` -/
def P10313073267044400738.Spec : Prop :=
  ∀ n, P10313073267044400738.a n = A000925 n

end A000925

/-! ## A000925.P15108187205010004794

`A001650(n+1)-A393562(n)`
-/

namespace A000925.P15108187205010004794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1) - A393562 n

end

end A000925.P15108187205010004794

namespace A000925

/-- `A001650(n+1)-A393562(n)` -/
def P15108187205010004794.Spec : Prop :=
  ∀ n, P15108187205010004794.a n = A000925 n

end A000925

/-! ## A000925.P12178194815307747499

`A025426(2*n)+A000161(n)`
-/

namespace A000925.P12178194815307747499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (2 * n) + A000161 n

end

end A000925.P12178194815307747499

namespace A000925

/-- `A025426(2*n)+A000161(n)` -/
def P12178194815307747499.Spec : Prop :=
  ∀ n, P12178194815307747499.a n = A000925 n

end A000925

/-! ## A000925.P3310096506698135465

`A379480(n)+2*A025435(n)`
-/

namespace A000925.P3310096506698135465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n + 2 * A025435 n

end

end A000925.P3310096506698135465

namespace A000925

/-- `A379480(n)+2*A025435(n)` -/
def P3310096506698135465.Spec : Prop :=
  ∀ n, P3310096506698135465.a n = A000925 n

end A000925

/-! ## A000925.P15779309076395075492

`2*A000161(n)-A379480(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000925

/-- `2*A000161(n)-A379480(n)` -/
def P15779309076395075492.Spec : Prop :=
  ∀ n, P15779309076395075492.a n = A000925 n

theorem P15779309076395075492.correct : P15779309076395075492.Spec := by
  intro n
  simp only [A000925]

end A000925

/-! ## A000925.P14414690952132919738

`A025435(n)+ceil(A004018(n)/8)`
-/

namespace A000925.P14414690952132919738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n + ⌈(A004018 n : ℚ) / 8⌉

end

end A000925.P14414690952132919738

namespace A000925

/-- `A025435(n)+ceil(A004018(n)/8)` -/
def P14414690952132919738.Spec : Prop :=
  ∀ n, P14414690952132919738.a n = A000925 n

end A000925

/-! ## A000925.P16745769180717610986

`A000122(n)+A025441(n)+A025426(n)`
-/

namespace A000925.P16745769180717610986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n + (A025441 n + A025426 n)

end

end A000925.P16745769180717610986

namespace A000925

/-- `A000122(n)+A025441(n)+A025426(n)` -/
def P16745769180717610986.Spec : Prop :=
  ∀ n, P16745769180717610986.a n = A000925 n

end A000925

/-! ## A000925.P5736179663388865265

`A000194(A000037(n+1))-A247367(n)`
-/

namespace A000925.P5736179663388865265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000037 (n + 1)).toNat - A247367 n

end

end A000925.P5736179663388865265

namespace A000925

/-- `A000194(A000037(n+1))-A247367(n)` -/
def P5736179663388865265.Spec : Prop :=
  ∀ n, P5736179663388865265.a n = A000925 n

end A000925

/-! ## A000925.P12083519877701056953

`A093709(n)+A063725(2*n)`
-/

namespace A000925.P12083519877701056953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n + A063725 (2 * n)

end

end A000925.P12083519877701056953

namespace A000925

/-- `A093709(n)+A063725(2*n)` -/
def P12083519877701056953.Spec : Prop :=
  ∀ n, P12083519877701056953.a n = A000925 n

end A000925

/-! ## A000925.P8667935642581410401

`A010052(2*n)+2*A025435(n)`
-/

namespace A000925.P8667935642581410401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) + 2 * A025435 n

end

end A000925.P8667935642581410401

namespace A000925

/-- `A010052(2*n)+2*A025435(n)` -/
def P8667935642581410401.Spec : Prop :=
  ∀ n, P8667935642581410401.a n = A000925 n

end A000925

/-! ## A000925.P11603059961210117046

`2*A000161(n)-A010052(2*n)`
-/

namespace A000925.P11603059961210117046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000161 n - A010052 (2 * n)

end

end A000925.P11603059961210117046

namespace A000925

/-- `2*A000161(n)-A010052(2*n)` -/
def P11603059961210117046.Spec : Prop :=
  ∀ n, P11603059961210117046.a n = A000925 n

end A000925

/-! ## A000925.P5258766593392703248

`A010052(2*n)+2*A025426(2*n)`
-/

namespace A000925.P5258766593392703248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) + 2 * A025426 (2 * n)

end

end A000925.P5258766593392703248

namespace A000925

/-- `A010052(2*n)+2*A025426(2*n)` -/
def P5258766593392703248.Spec : Prop :=
  ∀ n, P5258766593392703248.a n = A000925 n

end A000925

/-! ## A000925.P17547342796305589192

`A143574(A022144(2*n))/A022144(n)`
-/

namespace A000925.P17547342796305589192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143574 (A022144 (2 * n)).toNat : ℚ) / (A022144 n : ℚ)

end

end A000925.P17547342796305589192

namespace A000925

/-- `A143574(A022144(2*n))/A022144(n)` -/
def P17547342796305589192.Spec : Prop :=
  ∀ n, P17547342796305589192.a n = (A000925 n : ℚ)

end A000925

/-! ## A000925.P1956509627092667492

`A045847(∑[n+3])`
-/

namespace A000925.P1956509627092667492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000925.P1956509627092667492

namespace A000925

/-- `A045847(∑[n+3])` -/
def P1956509627092667492.Spec : Prop :=
  ∀ n, P1956509627092667492.a n = A000925 n

end A000925

/-!
# A000926: Euler's "numerus idoneus" (or "numeri idonei", or idoneal, or suitable, or convenient numbers).

The programs for A000926, there is no canonical definition to state claims against.
-/

/-! ## A000926.P11241137509859793417

`eq[0, A290870(n+1)]+1`
-/

namespace A000926.P11241137509859793417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000926.P11241137509859793417

/-! ## A000926.P12344772912661548273

`record[A054576(A003171(n+1))]`
-/

namespace A000926.P12344772912661548273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A003171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P12344772912661548273

/-! ## A000926.P10524074078250176261

`record[A054576(A232528(n+1))]`
-/

namespace A000926.P10524074078250176261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A232528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P10524074078250176261

/-! ## A000926.P755121536286211523

`record[gcd(n+1, A290870(A000027(n+1)))]`
-/

namespace A000926.P755121536286211523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A290870 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P755121536286211523

/-! ## A000926.P6010913692432927005

`record[gcd(A005408(n)-n, A290870(n+1))]`
-/

namespace A000926.P6010913692432927005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 n - (n : ℤ)) (A290870 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P6010913692432927005

/-! ## A000926.P1633602519321685760

`record[(1-A290870(n+1))*A000027(n+1)]`
-/

namespace A000926.P1633602519321685760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A290870 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P1633602519321685760

/-! ## A000926.P5672665049612733182

`record[n+1-A000124(n)*A290870(n+1)]`
-/

namespace A000926.P5672665049612733182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000124 n * A290870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P5672665049612733182

/-! ## A000926.P11692517054942360044

`record[n+1-A000010(n+1)*A290870(n+1)]`
-/

namespace A000926.P11692517054942360044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A290870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P11692517054942360044

/-! ## A000926.P6189701733427082711

`record[A000027(n+1)/A000124(A290870(n+1))]`
-/

namespace A000926.P6189701733427082711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000124 (A290870 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000926.P6189701733427082711

/-!
# A000927: "First factor" (or relative class number) h- for cyclotomic field Q( exp(2 Pi / prime(n)) ).

The programs for A000927, there is no canonical definition to state claims against.
-/

/-! ## A000927.P9902875891261201044

`A061653(Δ[A007504(n)])`
-/

namespace A000927.P9902875891261201044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (f1 (n + 1) - f1 n).toNat

end

end A000927.P9902875891261201044

/-! ## A000927.P10994082912610329185

`A061653(A000040(n+1))`
-/

namespace A000927.P10994082912610329185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A000040 (n + 1)).toNat

end

end A000927.P10994082912610329185

/-! ## A000927.P9943929265566245839

`A061653(A006005(n+1))`
-/

namespace A000927.P9943929265566245839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A006005 (n + 1)).toNat

end

end A000927.P9943929265566245839

/-! ## A000927.P10765463315706253087

`A061653(A083249(n+1))`
-/

namespace A000927.P10765463315706253087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A083249 (n + 1)).toNat

end

end A000927.P10765463315706253087

/-! ## A000927.P15489722821763209866

`A061653(A095320(n+1))`
-/

namespace A000927.P15489722821763209866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A095320 (n + 1)).toNat

end

end A000927.P15489722821763209866

/-! ## A000927.P11464647721030831905

`A061653(A161847(n+1))`
-/

namespace A000927.P11464647721030831905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A161847 (n + 1)).toNat

end

end A000927.P11464647721030831905

/-! ## A000927.P4137000413935308383

`A061653(A176997(n+1))`
-/

namespace A000927.P4137000413935308383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A176997 (n + 1)).toNat

end

end A000927.P4137000413935308383

/-! ## A000927.P7518759476064465284

`A061653(A216883(n+1))`
-/

namespace A000927.P7518759476064465284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A216883 (n + 1)).toNat

end

end A000927.P7518759476064465284

/-! ## A000927.P11855488660065902220

`A061653(A216884(n+1))`
-/

namespace A000927.P11855488660065902220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A216884 (n + 1)).toNat

end

end A000927.P11855488660065902220

/-! ## A000927.P10210470700470964689

`A061653(A216885(n+1))`
-/

namespace A000927.P10210470700470964689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A216885 (n + 1)).toNat

end

end A000927.P10210470700470964689

/-!
# A000928: Irregular primes: primes p such that at least one of the numerators of the Bernoulli numbers B_2, B_4, ..., B_{p-3} (A000367) is divisible by p.

The programs for A000928, there is no canonical definition to state claims against.
-/

/-! ## A000928.P1386298522228830210

`∪[A060974(n+1), A073276(n+1)]`
-/

namespace A000928.P1386298522228830210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000928.P1386298522228830210

/-! ## A000928.P7229583045814375422

`A000040(A105018(n+1))`
-/

namespace A000928.P7229583045814375422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105018 (n + 1)).toNat

end

end A000928.P7229583045814375422

/-! ## A000928.P11796110374621465112

`record[A090798(A328399(n))]`
-/

namespace A000928.P11796110374621465112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P11796110374621465112

/-! ## A000928.P9107973699177800186

`A090798(∑[A091887(n+1)])`
-/

namespace A000928.P9107973699177800186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000928.P9107973699177800186

/-! ## A000928.P126019649114174888

`record[A090798(A025480(n)+1)]`
-/

namespace A000928.P126019649114174888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A025480 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P126019649114174888

/-! ## A000928.P15780237092088861311

`record[A090798(A057979(n+2))]`
-/

namespace A000928.P15780237092088861311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A057979 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P15780237092088861311

/-! ## A000928.P3587264886190165412

`record[A090798(A008619(A025480(n)))]`
-/

namespace A000928.P3587264886190165412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A008619 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P3587264886190165412

/-! ## A000928.P14342798929702857834

`record[A090798(A008619(A057979(n)))]`
-/

namespace A000928.P14342798929702857834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A008619 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P14342798929702857834

/-! ## A000928.P16283544712954306272

`record[A090798(A008619(A186421(n)))]`
-/

namespace A000928.P16283544712954306272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A008619 (A186421 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P16283544712954306272

/-! ## A000928.P454047327674730137

`A090798(lt[1, Δ[A090798(n+1)]]+1)`
-/

namespace A000928.P454047327674730137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A000928.P454047327674730137

/-! ## A000928.P1765234295520565087

`A090798(lt[1, A090798(n+2)-A090798(n+1)]+1)`
-/

namespace A000928.P1765234295520565087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (n + 2) - A090798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A000928.P1765234295520565087

/-! ## A000928.P9088330009317027704

`record[A090798(n+1)%A090798(n+3)]`
-/

namespace A000928.P9088330009317027704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090798 (n + 1)) (A090798 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P9088330009317027704

/-! ## A000928.P11532095640966917522

`record[A090798(A048865(n+1)+1)]`
-/

namespace A000928.P11532095640966917522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A048865 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P11532095640966917522

/-! ## A000928.P17729252368580062274

`record[A090798(A036234(A091732(n+1)))]`
-/

namespace A000928.P17729252368580062274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A036234 (A091732 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P17729252368580062274

/-! ## A000928.P17194090858825517872

`A254667(A006093(A105018(n+1))+1)`
-/

namespace A000928.P17194090858825517872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A006093 (A105018 (n + 1)).toNat + 1).toNat

end

end A000928.P17194090858825517872

/-! ## A000928.P16088417799547366869

`record[A090798(A008619(A048865(n+1)))]`
-/

namespace A000928.P16088417799547366869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A008619 (A048865 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000928.P16088417799547366869

/-! ## A000928.P11818242247780787548

`A054576(A133773(n+1))+A006093(A105018(n+1))`
-/

namespace A000928.P11818242247780787548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A133773 (n + 1)).toNat + A006093 (A105018 (n + 1)).toNat

end

end A000928.P11818242247780787548

/-!
# A000929: Dimension of the n-th graded piece of the mod-2 Steenrod algebra A_2.

The programs for A000929, there is no canonical definition to state claims against.
-/

/-! ## A000929.P13005847153571594398

`A089052(∑[4*n])`
-/

namespace A000929.P13005847153571594398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000929.P13005847153571594398

/-! ## A000929.P3480711787793842080

`or(char[1], A089052(A046092(n)))`
-/

namespace A000929.P3480711787793842080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A089052 (A046092 n).toNat)

end

end A000929.P3480711787793842080

/-! ## A000929.P4685261065726837398

`or(char[15], A089052(2*A002378(n)))`
-/

namespace A000929.P4685261065726837398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A089052 (2 * A002378 n).toNat)

end

end A000929.P4685261065726837398

/-! ## A000929.P3635691921546207098

`A089052(2*(n²+n))%A135643(n+1)`
-/

namespace A000929.P3635691921546207098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (2 * (n ^ 2 + n))) (A135643 (n + 1))

end

end A000929.P3635691921546207098

/-! ## A000929.P5605967272907575935

`A089052(A046092(n))%A001509(n)`
-/

namespace A000929.P5605967272907575935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A046092 n).toNat) (A001509 n)

end

end A000929.P5605967272907575935

/-! ## A000929.P7357860134093406366

`gcd(A000038(n), A089052(A046092(n)))`
-/

namespace A000929.P7357860134093406366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A089052 (A046092 n).toNat)

end

end A000929.P7357860134093406366

/-! ## A000929.P13279747400229863577

`∑{d}[A089052(A046092(n)), A000010(#)]`
-/

namespace A000929.P13279747400229863577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A000929.P13279747400229863577

/-! ## A000929.P13763582153407242851

`abs(A033999(n)*A089052(A046092(n)))`
-/

namespace A000929.P13763582153407242851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A089052 (A046092 n).toNat|

end

end A000929.P13763582153407242851

/-! ## A000929.P11383419161141363588

`A089052(A046092(n))+A000007(n+1)`
-/

namespace A000929.P11383419161141363588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A046092 n).toNat + A000007 (n + 1)

end

end A000929.P11383419161141363588

/-! ## A000929.P15993453417628932287

`A033999(2*n)*A089052(A046092(n))`
-/

namespace A000929.P15993453417628932287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A089052 (A046092 n).toNat

end

end A000929.P15993453417628932287

/-! ## A000929.P17747815563707361927

`A007318(C(2, n))*A089052(A046092(n))`
-/

namespace A000929.P17747815563707361927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A089052 (A046092 n).toNat

end

end A000929.P17747815563707361927

/-! ## A000929.P10800949022193509571

`A089052(A046092(n))^A000041(C(2, n))`
-/

namespace A000929.P10800949022193509571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089052 (A046092 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A000929.P10800949022193509571

/-! ## A000929.P16096520281922060664

`∑{d}[A089052(A106232(n+1)), A000010(#)]`
-/

namespace A000929.P16096520281922060664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A106232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A000929.P16096520281922060664

/-! ## A000929.P15514400941574766775

`A007318(and(1, -n))*A089052(A046092(n))`
-/

namespace A000929.P15514400941574766775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A089052 (A046092 n).toNat

end

end A000929.P15514400941574766775

/-! ## A000929.P15511060587126677661

`A089052(A046092(n))+A008683(4*(n+1))`
-/

namespace A000929.P15511060587126677661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A000929.P15511060587126677661

/-! ## A000929.P16299864960267526275

`A000034(2*n)*A089052(A106232(n+1))`
-/

namespace A000929.P16299864960267526275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A089052 (A106232 (n + 1)).toNat

end

end A000929.P16299864960267526275

/-! ## A000929.P9244430407886544766

`A014963(12*n+6)*A089052(A046092(n))`
-/

namespace A000929.P9244430407886544766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A089052 (A046092 n).toNat

end

end A000929.P9244430407886544766

/-! ## A000929.P12128741262004619499

`A000041(gcd(n, n+1))*A089052(A046092(n))`
-/

namespace A000929.P12128741262004619499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A089052 (A046092 n).toNat

end

end A000929.P12128741262004619499

/-! ## A000929.P12446579885892382449

`A089052(2*A002378(n))^A001221(A008578(n+1))`
-/

namespace A000929.P12446579885892382449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089052 (2 * A002378 n).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A000929.P12446579885892382449

/-!
# A000930: Narayana's cows sequence: a(0) = a(1) = a(2) = 1; thereafter a(n) = a(n-1) + a(n-3).

The programs for A000930, the canonical program `A000930.P1809025983395262284` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000930 has offset 0).

The definition of A000930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A000930.P1809025983395262284`, by `A000930.P1809025983395262284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000930.P1809025983395262284

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000930

/-- `a(n-1)+a(n-3)` -/
def P1809025983395262284.Spec : Prop :=
  ∀ n, (P1809025983395262284.a n : ℤ) = A000930 n

theorem P1809025983395262284.correct : P1809025983395262284.Spec := by
  intro n
  simp only [A000930]

end A000930

/-! ## A000930.P1620475867305359033

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000930.P1620475867305359033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A000930.P1620475867305359033

namespace A000930

/-- `a(n-1)-floor(-a(n-3))` -/
def P1620475867305359033.Spec : Prop :=
  ∀ n, P1620475867305359033.a n = A000930 n

end A000930

/-! ## A000930.P491312454284256492

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A000930.P491312454284256492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A000930.P491312454284256492

namespace A000930

/-- `a(n-1)-ceil(-a(n-3))` -/
def P491312454284256492.Spec : Prop :=
  ∀ n, P491312454284256492.a n = A000930 n

end A000930

/-! ## A000930.P9910793438643451758

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A000930.P9910793438643451758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A000930.P9910793438643451758

namespace A000930

/-- `a(n-1)-round(-a(n-3))` -/
def P9910793438643451758.Spec : Prop :=
  ∀ n, P9910793438643451758.a n = A000930 n

end A000930

/-! ## A000930.P16705644769871902019

`abs(Δ[1-a(n-1)-a(n-3)])` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A000930.P16705644769871902019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000930.P16705644769871902019

namespace A000930

/-- `abs(Δ[1-a(n-1)-a(n-3)])` -/
def P16705644769871902019.Spec : Prop :=
  ∀ n, P16705644769871902019.a n = A000930 n

end A000930

/-! ## A000930.P8398629846528300075

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A000930.P8398629846528300075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A000930.P8398629846528300075

namespace A000930

/-- `a(n-1)-(a(n-5)-a(n-2))` -/
def P8398629846528300075.Spec : Prop :=
  ∀ n, P8398629846528300075.a n = A000930 n

end A000930

/-! ## A000930.P6347690423780768172

`abs(A199804(n))`
-/

namespace A000930.P6347690423780768172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 n|

end

end A000930.P6347690423780768172

namespace A000930

/-- `abs(A199804(n))` -/
def P6347690423780768172.Spec : Prop :=
  ∀ n, P6347690423780768172.a n = A000930 n

end A000930

/-! ## A000930.P7102380453759434317

`∑[A078012(n)]`
-/

namespace A000930.P7102380453759434317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000930.P7102380453759434317

namespace A000930

/-- `∑[A078012(n)]` -/
def P7102380453759434317.Spec : Prop :=
  ∀ n, P7102380453759434317.a n = A000930 n

end A000930

/-! ## A000930.P4634003987394445532

`A078012(n+3)`
-/

namespace A000930.P4634003987394445532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 3)

end

end A000930.P4634003987394445532

namespace A000930

/-- `A078012(n+3)` -/
def P4634003987394445532.Spec : Prop :=
  ∀ n, P4634003987394445532.a n = A000930 n

end A000930

/-! ## A000930.P11760808172734766111

`A108104(2*n)`
-/

namespace A000930.P11760808172734766111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n)

end

end A000930.P11760808172734766111

namespace A000930

/-- `A108104(2*n)` -/
def P11760808172734766111.Spec : Prop :=
  ∀ n, P11760808172734766111.a n = A000930 n

end A000930

/-! ## A000930.P16091971895769695210

`A135851(n+5)`
-/

namespace A000930.P16091971895769695210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 5)

end

end A000930.P16091971895769695210

namespace A000930

/-- `A135851(n+5)` -/
def P16091971895769695210.Spec : Prop :=
  ∀ n, P16091971895769695210.a n = A000930 n

end A000930

/-! ## A000930.P4085973949483108043

`A068921(abs(1-n))`
-/

namespace A000930.P4085973949483108043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 |1 - (n : ℤ)|.toNat

end

end A000930.P4085973949483108043

namespace A000930

/-- `A068921(abs(1-n))` -/
def P4085973949483108043.Spec : Prop :=
  ∀ n, P4085973949483108043.a n = A000930 n

end A000930

/-! ## A000930.P18134552389958529059

`A226916(2*n+7)`
-/

namespace A000930.P18134552389958529059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 7)

end

end A000930.P18134552389958529059

namespace A000930

/-- `A226916(2*n+7)` -/
def P18134552389958529059.Spec : Prop :=
  ∀ n, P18134552389958529059.a n = A000930 n

end A000930

/-! ## A000930.P5429803020043044012

`A058278(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000930.P5429803020043044012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A058278 n + a (n - 2)

end

end A000930.P5429803020043044012

namespace A000930

/-- `A058278(n)+a(n-2)` -/
def P5429803020043044012.Spec : Prop :=
  ∀ n, P5429803020043044012.a n = A000930 n

end A000930

/-! ## A000930.P2253218181759444902

`A277253(n)+A277252(n)`
-/

namespace A000930.P2253218181759444902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n + A277252 n

end

end A000930.P2253218181759444902

namespace A000930

/-- `A277253(n)+A277252(n)` -/
def P2253218181759444902.Spec : Prop :=
  ∀ n, P2253218181759444902.a n = A000930 n

end A000930

/-! ## A000930.P1047102294006528743

`A033999(n)*A199804(n)`
-/

namespace A000930.P1047102294006528743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A199804 n

end

end A000930.P1047102294006528743

namespace A000930

/-- `A033999(n)*A199804(n)` -/
def P1047102294006528743.Spec : Prop :=
  ∀ n, P1047102294006528743.a n = A000930 n

end A000930

/-! ## A000930.P13189118063583015146

`gcd(A000038(n), A199804(n))`
-/

namespace A000930.P13189118063583015146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A199804 n)

end

end A000930.P13189118063583015146

namespace A000930

/-- `gcd(A000038(n), A199804(n))` -/
def P13189118063583015146.Spec : Prop :=
  ∀ n, (P13189118063583015146.a n : ℤ) = A000930 n

end A000930

/-! ## A000930.P6815189910165412478

`lcm(A020985(n), A199804(n))`
-/

namespace A000930.P6815189910165412478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A199804 n)

end

end A000930.P6815189910165412478

namespace A000930

/-- `lcm(A020985(n), A199804(n))` -/
def P6815189910165412478.Spec : Prop :=
  ∀ n, (P6815189910165412478.a n : ℤ) = A000930 n

end A000930

/-! ## A000930.P1581127115996881090

`A107458(n)+A013979(n+1)`
-/

namespace A000930.P1581127115996881090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 n + A013979 (n + 1)

end

end A000930.P1581127115996881090

namespace A000930

/-- `A107458(n)+A013979(n+1)` -/
def P1581127115996881090.Spec : Prop :=
  ∀ n, P1581127115996881090.a n = A000930 n

end A000930

/-!
# A000931: Padovan sequence (or Padovan numbers): a(n) = a(n-2) + a(n-3) with a(0) = 1, a(1) = a(2) = 0.

The programs for A000931, the canonical program `A000931.P8773435820604439870` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000931 has offset 0).

The definition of A000931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A000931.P8773435820604439870`, by `A000931.P8773435820604439870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000931.P8773435820604439870

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000931

/-- `a(n-2)+a(n-3)` -/
def P8773435820604439870.Spec : Prop :=
  ∀ n, (P8773435820604439870.a n : ℤ) = A000931 n

theorem P8773435820604439870.correct : P8773435820604439870.Spec := by
  intro n
  simp only [A000931]

end A000931

/-! ## A000931.P6255449818793765117

`a(n-2)-floor(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000931.P6255449818793765117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A000931.P6255449818793765117

namespace A000931

/-- `a(n-2)-floor(-a(n-3))` -/
def P6255449818793765117.Spec : Prop :=
  ∀ n, P6255449818793765117.a n = A000931 n

end A000931

/-! ## A000931.P17565077597327761295

`a(n-2)-ceil(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A000931.P17565077597327761295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A000931.P17565077597327761295

namespace A000931

/-- `a(n-2)-ceil(-a(n-3))` -/
def P17565077597327761295.Spec : Prop :=
  ∀ n, P17565077597327761295.a n = A000931 n

end A000931

/-! ## A000931.P2247009245717380473

`a(n-2)-round(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A000931.P2247009245717380473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A000931.P2247009245717380473

namespace A000931

/-- `a(n-2)-round(-a(n-3))` -/
def P2247009245717380473.Spec : Prop :=
  ∀ n, P2247009245717380473.a n = A000931 n

end A000931

/-! ## A000931.P9090027715964575803

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A000931.P9090027715964575803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A000931.P9090027715964575803

namespace A000931

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P9090027715964575803.Spec : Prop :=
  ∀ n, P9090027715964575803.a n = A000931 n

end A000931

/-! ## A000931.P5401689172539580571

`A078027(n+2)`
-/

namespace A000931.P5401689172539580571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2)

end

end A000931.P5401689172539580571

namespace A000931

/-- `A078027(n+2)` -/
def P5401689172539580571.Spec : Prop :=
  ∀ n, P5401689172539580571.a n = A000931 n

end A000931

/-! ## A000931.P11263201219137480109

`A133034(n+4)`
-/

namespace A000931.P11263201219137480109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4)

end

end A000931.P11263201219137480109

namespace A000931

/-- `A133034(n+4)` -/
def P11263201219137480109.Spec : Prop :=
  ∀ n, P11263201219137480109.a n = A000931 n

end A000931

/-! ## A000931.P1034869292615873427

`abs(A124745(n+2))`
-/

namespace A000931.P1034869292615873427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 (n + 2)|

end

end A000931.P1034869292615873427

namespace A000931

/-- `abs(A124745(n+2))` -/
def P1034869292615873427.Spec : Prop :=
  ∀ n, P1034869292615873427.a n = A000931 n

end A000931

/-! ## A000931.P16355932005873134063

`A017899(n)+Δ[A017899(n+1)]`
-/

namespace A000931.P16355932005873134063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n + (f1 (n + 1) - f1 n)

end

end A000931.P16355932005873134063

namespace A000931

/-- `A017899(n)+Δ[A017899(n+1)]` -/
def P16355932005873134063.Spec : Prop :=
  ∀ n, P16355932005873134063.a n = A000931 n

end A000931

/-! ## A000931.P14850021814355844676

`A182097(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A000931.P14850021814355844676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182097 (n - 1) - a (n - 1)

end

end A000931.P14850021814355844676

namespace A000931

/-- `A182097(n-1)-a(n-1)` -/
def P14850021814355844676.Spec : Prop :=
  ∀ n, P14850021814355844676.a n = A000931 n

end A000931

/-! ## A000931.P17125952907071047215

`A291289(n)/2`
-/

namespace A000931.P17125952907071047215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291289 n : ℚ) / 2

end

end A000931.P17125952907071047215

namespace A000931

/-- `A291289(n)/2` -/
def P17125952907071047215.Spec : Prop :=
  ∀ n, P17125952907071047215.a n = (A000931 n : ℚ)

end A000931

/-! ## A000931.P16488668695261790734

`(A182097(n)-A133034(n))/2`
-/

namespace A000931.P16488668695261790734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182097 n - A133034 n : ℚ) / 2

end

end A000931.P16488668695261790734

namespace A000931

/-- `(A182097(n)-A133034(n))/2` -/
def P16488668695261790734.Spec : Prop :=
  ∀ n, P16488668695261790734.a n = (A000931 n : ℚ)

end A000931

/-! ## A000931.P7941197580340737813

`Δ[a(n-2)-(1-a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A000931.P7941197580340737813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000931.P7941197580340737813

namespace A000931

/-- `Δ[a(n-2)-(1-a(n-3))]` -/
def P7941197580340737813.Spec : Prop :=
  ∀ n, P7941197580340737813.a n = A000931 n

end A000931

/-! ## A000931.P5750459996991060347

`Δ[A052954(n+1)]`
-/

namespace A000931.P5750459996991060347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000931.P5750459996991060347

namespace A000931

/-- `Δ[A052954(n+1)]` -/
def P5750459996991060347.Spec : Prop :=
  ∀ n, P5750459996991060347.a n = A000931 n

end A000931

/-! ## A000931.P14116467709026120176

`Δ[A182097(n+1)]`
-/

namespace A000931.P14116467709026120176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000931.P14116467709026120176

namespace A000931

/-- `Δ[A182097(n+1)]` -/
def P14116467709026120176.Spec : Prop :=
  ∀ n, P14116467709026120176.a n = A000931 n

end A000931

/-! ## A000931.P10215039736884990428

`A134816(n+1)-A182097(n+1)`
-/

namespace A000931.P10215039736884990428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - A182097 (n + 1)

end

end A000931.P10215039736884990428

namespace A000931

/-- `A134816(n+1)-A182097(n+1)` -/
def P10215039736884990428.Spec : Prop :=
  ∀ n, P10215039736884990428.a n = A000931 n

end A000931

/-! ## A000931.P1612956159523372285

`A052954(n+2)-A052954(n+1)`
-/

namespace A000931.P1612956159523372285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 2) - A052954 (n + 1)

end

end A000931.P1612956159523372285

namespace A000931

/-- `A052954(n+2)-A052954(n+1)` -/
def P1612956159523372285.Spec : Prop :=
  ∀ n, P1612956159523372285.a n = A000931 n

end A000931

/-! ## A000931.P200857082747829444

`A182097(n+2)-A182097(n+1)`
-/

namespace A000931.P200857082747829444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) - A182097 (n + 1)

end

end A000931.P200857082747829444

namespace A000931

/-- `A182097(n+2)-A182097(n+1)` -/
def P200857082747829444.Spec : Prop :=
  ∀ n, P200857082747829444.a n = A000931 n

end A000931

/-! ## A000931.P5252767336584497434

`Δ[A114775(2*n+1)+A114775(2*n)]`
-/

namespace A000931.P5252767336584497434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (2 * n + 1) + A114775 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000931.P5252767336584497434

namespace A000931

/-- `Δ[A114775(2*n+1)+A114775(2*n)]` -/
def P5252767336584497434.Spec : Prop :=
  ∀ n, P5252767336584497434.a n = A000931 n

end A000931

/-!
# A000932: a(n) = a(n-1) + n*a(n-2); a(0) = a(1) = 1.

The programs for A000932, the canonical program `A000932.P2741696967203850965` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000932 has offset 0).

The definition of A000932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+n*a(n-2)` (program `A000932.P2741696967203850965`, by `A000932.P2741696967203850965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000932.P2741696967203850965

`a(n-1)+n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000932

/-- `a(n-1)+n*a(n-2)` -/
def P2741696967203850965.Spec : Prop :=
  ∀ n, (P2741696967203850965.a n : ℤ) = A000932 n

theorem P2741696967203850965.correct : P2741696967203850965.Spec := by
  intro n
  simp only [A000932]

end A000932

/-! ## A000932.P16302575352144115092

`∏[n/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A000932.P16302575352144115092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000932.P16302575352144115092

namespace A000932

/-- `∏[n/a(n-1)+1]` -/
def P16302575352144115092.Spec : Prop :=
  ∀ n, P16302575352144115092.a n = (A000932 n : ℚ)

end A000932

/-! ## A000932.P13748987802406531273

`a(n-1)+a(n-2)/n^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A000932.P13748987802406531273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A000932.P13748987802406531273

namespace A000932

/-- `a(n-1)+a(n-2)/n^(-1)` -/
def P13748987802406531273.Spec : Prop :=
  ∀ n, P13748987802406531273.a n = (A000932 n : ℚ)

end A000932

/-! ## A000932.P8762038358502359008

`a(n-1)-(n*(1-a(n-2))-n)` with `a(0)=1, a(1)=1`
-/

namespace A000932.P8762038358502359008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ((n : ℤ) * (1 - a (n - 2)) - (n : ℤ))

end

end A000932.P8762038358502359008

namespace A000932

/-- `a(n-1)-(n*(1-a(n-2))-n)` -/
def P8762038358502359008.Spec : Prop :=
  ∀ n, P8762038358502359008.a n = A000932 n

end A000932

/-! ## A000932.P14542843391193838623

`A070895(∑[n+1]+1)`
-/

namespace A000932.P14542843391193838623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000932.P14542843391193838623

namespace A000932

/-- `A070895(∑[n+1]+1)` -/
def P14542843391193838623.Spec : Prop :=
  ∀ n, P14542843391193838623.a n = A000932 n

end A000932

/-! ## A000932.P3466733413131906277

`A059480(n)-A371943(n+1)`
-/

namespace A000932.P3466733413131906277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059480 n - A371943 (n + 1)

end

end A000932.P3466733413131906277

namespace A000932

/-- `A059480(n)-A371943(n+1)` -/
def P3466733413131906277.Spec : Prop :=
  ∀ n, P3466733413131906277.a n = A000932 n

end A000932

/-! ## A000932.P10441378815434975187

`A122031(n+1)-A000085(n+1)`
-/

namespace A000932.P10441378815434975187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122031 (n + 1) - A000085 (n + 1)

end

end A000932.P10441378815434975187

namespace A000932

/-- `A122031(n+1)-A000085(n+1)` -/
def P10441378815434975187.Spec : Prop :=
  ∀ n, P10441378815434975187.a n = A000932 n

end A000932

/-! ## A000932.P7073078996215599484

`A186739(n+2)-A186738(n+1)`
-/

namespace A000932.P7073078996215599484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 2) - A186738 (n + 1)

end

end A000932.P7073078996215599484

namespace A000932

/-- `A186739(n+2)-A186738(n+1)` -/
def P7073078996215599484.Spec : Prop :=
  ∀ n, P7073078996215599484.a n = A000932 n

end A000932

/-! ## A000932.P14147442524964269758

`A000085(n+1)+A185308(n)-A186738(n+1)`
-/

namespace A000932.P14147442524964269758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) + (A185308 n - A186738 (n + 1))

end

end A000932.P14147442524964269758

namespace A000932

/-- `A000085(n+1)+A185308(n)-A186738(n+1)` -/
def P14147442524964269758.Spec : Prop :=
  ∀ n, P14147442524964269758.a n = A000932 n

end A000932

/-!
# A000933: Genus of complete graph on n nodes.

The programs for A000933, the canonical program `A000933.P9993936964361222384` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000933 has offset 1).

The definition of A000933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000933.P9993936964361222384

`ceil(∑[abs(3-n)]/6)-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000933

/-- `ceil(∑[abs(3-n)]/6)-1` -/
def P9993936964361222384.Spec : Prop :=
  ∀ n, P9993936964361222384.a n = A000933 (n + 1)

theorem P9993936964361222384.correct : P9993936964361222384.Spec := by
  intro n
  simp only [A000933, Nat.add_sub_cancel]

end A000933

/-! ## A000933.P671048300577012175

`ceil(2*C(n, 4)/((1-n)²+n))`
-/

namespace A000933.P671048300577012175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.choose n 4 : ℚ) / ((1 - (n : ℤ)) ^ 2 + (n : ℤ) : ℚ)⌉

end

end A000933.P671048300577012175

namespace A000933

/-- `ceil(2*C(n, 4)/((1-n)²+n))` -/
def P671048300577012175.Spec : Prop :=
  ∀ n, P671048300577012175.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P16981446588893307003

`round(A022856(n+1)/6)`
-/

namespace A000933.P16981446588893307003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022856 (n + 1) : ℚ) / 6)

end

end A000933.P16981446588893307003

namespace A000933

/-- `round(A022856(n+1)/6)` -/
def P16981446588893307003.Spec : Prop :=
  ∀ n, P16981446588893307003.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P1729271750674280031

`ceil(C(n, 4)*acot(A152947(n+1)))`
-/

namespace A000933.P1729271750674280031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 4 : ℝ) * SequenceMachineLib.acot (A152947 (n + 1) : ℝ)⌉

end

end A000933.P1729271750674280031

namespace A000933

/-- `ceil(C(n, 4)*acot(A152947(n+1)))` -/
def P1729271750674280031.Spec : Prop :=
  ∀ n, P1729271750674280031.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P6159114343905677012

`floor(∑[(n+1)%A008620(n+1)/2])`
-/

namespace A000933.P6159114343905677012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (n + 1 : ℤ) (A008620 (n + 1)) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A000933.P6159114343905677012

namespace A000933

/-- `floor(∑[(n+1)%A008620(n+1)/2])` -/
def P6159114343905677012.Spec : Prop :=
  ∀ n, P6159114343905677012.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P3546468873156291492

`ceil(A000332(n)/A152947(n+1))`
-/

namespace A000933.P3546468873156291492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000332 n : ℚ) / (A152947 (n + 1) : ℚ)⌉

end

end A000933.P3546468873156291492

namespace A000933

/-- `ceil(A000332(n)/A152947(n+1))` -/
def P3546468873156291492.Spec : Prop :=
  ∀ n, P3546468873156291492.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P16510047457482926937

`ceil(A000332(n)/(A000124(n)-n))`
-/

namespace A000933.P16510047457482926937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000332 n : ℚ) / (A000124 n - (n : ℤ) : ℚ)⌉

end

end A000933.P16510047457482926937

namespace A000933

/-- `ceil(A000332(n)/(A000124(n)-n))` -/
def P16510047457482926937.Spec : Prop :=
  ∀ n, P16510047457482926937.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P1345625798281704681

`round((A000332(n+1)+n)/∑[n+1])`
-/

namespace A000933.P1345625798281704681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000332 (n + 1) + (n : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A000933.P1345625798281704681

namespace A000933

/-- `round((A000332(n+1)+n)/∑[n+1])` -/
def P1345625798281704681.Spec : Prop :=
  ∀ n, P1345625798281704681.a n = A000933 (n + 1)

end A000933

/-! ## A000933.P968688342862379828

`A230196(∑[abs(3-n)])`
-/

namespace A000933.P968688342862379828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000933.P968688342862379828

namespace A000933

/-- `A230196(∑[abs(3-n)])` -/
def P968688342862379828.Spec : Prop :=
  ∀ n, P968688342862379828.a n = A000933 (n + 1)

end A000933

/-!
# A000934: Chromatic number (or Heawood number) Chi(n) of surface of genus n.

The programs for A000934, the canonical program `A000934.P4257728866511751822` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000934 has offset 0).

The definition of A000934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000934.P4257728866511751822

`floor((7+sqrt(1+48*n))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000934

/-- `floor((7+sqrt(1+48*n))/2)` -/
def P4257728866511751822.Spec : Prop :=
  ∀ n, P4257728866511751822.a n = A000934 n

theorem P4257728866511751822.correct : P4257728866511751822.Spec := by
  intro n
  simp only [A000934]

end A000934

/-! ## A000934.P8584896879884479118

`A000703(2*n)`
-/

namespace A000934.P8584896879884479118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

end

end A000934.P8584896879884479118

namespace A000934

/-- `A000703(2*n)` -/
def P8584896879884479118.Spec : Prop :=
  ∀ n, P8584896879884479118.a n = A000934 n

end A000934

/-! ## A000934.P12847859350517362189

`xor(A000038(n), A000703(A004277(n)))`
-/

namespace A000934.P12847859350517362189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n) (A000703 (A004277 n).toNat)

end

end A000934.P12847859350517362189

namespace A000934

/-- `xor(A000038(n), A000703(A004277(n)))` -/
def P12847859350517362189.Spec : Prop :=
  ∀ n, P12847859350517362189.a n = A000934 n

end A000934

/-! ## A000934.P7266238923983216683

`A000703(A005843(n))%A005279(n+1)`
-/

namespace A000934.P7266238923983216683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000703 (A005843 n).toNat) (A005279 (n + 1))

end

end A000934.P7266238923983216683

namespace A000934

/-- `A000703(A005843(n))%A005279(n+1)` -/
def P7266238923983216683.Spec : Prop :=
  ∀ n, P7266238923983216683.a n = A000934 n

end A000934

/-! ## A000934.P16056584851362802635

`xor(A000038(n+1), A000703(A005843(n)))`
-/

namespace A000934.P16056584851362802635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 1)) (A000703 (A005843 n).toNat)

end

end A000934.P16056584851362802635

namespace A000934

/-- `xor(A000038(n+1), A000703(A005843(n)))` -/
def P16056584851362802635.Spec : Prop :=
  ∀ n, P16056584851362802635.a n = A000934 n

end A000934

/-! ## A000934.P9306145917868530622

`A350361(A016921(n))`
-/

namespace A000934.P9306145917868530622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (A016921 n).toNat

end

end A000934.P9306145917868530622

namespace A000934

/-- `A350361(A016921(n))` -/
def P9306145917868530622.Spec : Prop :=
  ∀ n, P9306145917868530622.a n = A000934 n

end A000934

/-! ## A000934.P15662152272437623569

`A003057(A016789(2*n))+2`
-/

namespace A000934.P15662152272437623569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A016789 (2 * n)).toNat + 2

end

end A000934.P15662152272437623569

namespace A000934

/-- `A003057(A016789(2*n))+2` -/
def P15662152272437623569.Spec : Prop :=
  ∀ n, P15662152272437623569.a n = A000934 n

end A000934

/-! ## A000934.P14496278796854561430

`A065475(A003057(6*n+2)+1)`
-/

namespace A000934.P14496278796854561430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A003057 (6 * n + 2) + 1).toNat

end

end A000934.P14496278796854561430

namespace A000934

/-- `A065475(A003057(6*n+2)+1)` -/
def P14496278796854561430.Spec : Prop :=
  ∀ n, P14496278796854561430.a n = A000934 n

end A000934

/-! ## A000934.P5595398930006868066

`xor(floor(acot(n)), A213443(n))`
-/

namespace A000934.P5595398930006868066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A213443 n)

end

end A000934.P5595398930006868066

namespace A000934

/-- `xor(floor(acot(n)), A213443(n))` -/
def P5595398930006868066.Spec : Prop :=
  ∀ n, P5595398930006868066.a n = A000934 n

end A000934

/-! ## A000934.P12414989638712201709

`A213443(n)-A000007(n)`
-/

namespace A000934.P12414989638712201709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213443 n - A000007 n

end

end A000934.P12414989638712201709

namespace A000934

/-- `A213443(n)-A000007(n)` -/
def P12414989638712201709.Spec : Prop :=
  ∀ n, P12414989638712201709.a n = A000934 n

end A000934

/-!
# A000935: Number of free planar polyenoids with 2n nodes and symmetry point group C_{2h}.

The programs for A000935, there is no canonical definition to state claims against.
-/

/-! ## A000935.P14963550269214396123

`A036541(A086090(n))`
-/

namespace A000935.P14963550269214396123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (A086090 n).toNat

end

end A000935.P14963550269214396123

/-! ## A000935.P17979109204438293390

`A033182(A210323(n+2))`
-/

namespace A000935.P17979109204438293390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A210323 (n + 2)).toNat

end

end A000935.P17979109204438293390

/-! ## A000935.P9831630157331669416

`A282192(A007223(n+3))`
-/

namespace A000935.P9831630157331669416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (A007223 (n + 3)).toNat

end

end A000935.P9831630157331669416

/-!
# A000938: Number of collinear point-triples in an n X n grid.

The programs for A000938, there is no canonical definition to state claims against.
-/

/-! ## A000938.P8378959072228513290

`A178208(n+1)-(A077435(n+1)+A190020(n+1)+A190019(n+1))`
-/

namespace A000938.P8378959072228513290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - (A077435 (n + 1) + (A190020 (n + 1) + A190019 (n + 1)))

end

end A000938.P8378959072228513290

/-! ## A000938.P2896801981842922035

`((n+1)²-2)*A008911(n+1)-(A077435(n+1)+A190020(n+1)+A190019(n+1))`
-/

namespace A000938.P2896801981842922035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 2) * A008911 (n + 1) - (A077435 (n + 1) + (A190020 (n + 1) + A190019 (n + 1)))

end

end A000938.P2896801981842922035

/-! ## A000938.P1655083832263384881

`A178208(n+1)-A045996(n+1)`
-/

namespace A000938.P1655083832263384881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - A045996 (n + 1)

end

end A000938.P1655083832263384881

/-! ## A000938.P120048386647123348

`A217482(2*(n+1))-A045996(n+1)`
-/

namespace A000938.P120048386647123348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217482 (2 * (n + 1)) - A045996 (n + 1)

end

end A000938.P120048386647123348

/-! ## A000938.P10599673447168654704

`A178208(n+1)%(A045996(n+1)+A000007(n))`
-/

namespace A000938.P10599673447168654704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178208 (n + 1)) (A045996 (n + 1) + A000007 n)

end

end A000938.P10599673447168654704

/-! ## A000938.P11235987170418388221

`4*A320540(A028310(n))`
-/

namespace A000938.P11235987170418388221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320540 (A028310 n).toNat

end

end A000938.P11235987170418388221

/-! ## A000938.P16896917343381657559

`4*A320540(A137734(n²))`
-/

namespace A000938.P16896917343381657559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320540 (A137734 (n ^ 2)).toNat

end

end A000938.P16896917343381657559

/-! ## A000938.P1023288516665181315

`4*A320540(A065033(2*n))`
-/

namespace A000938.P1023288516665181315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320540 (A065033 (2 * n)).toNat

end

end A000938.P1023288516665181315

/-! ## A000938.P7796229532270602861

`4*A320540(A000007(n)+n)`
-/

namespace A000938.P7796229532270602861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320540 (A000007 n + (n : ℤ)).toNat

end

end A000938.P7796229532270602861

/-! ## A000938.P8501741504134468844

`4*A320540(n^A178334(n))`
-/

namespace A000938.P8501741504134468844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320540 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A000938.P8501741504134468844

/-!
# A000939: Number of inequivalent n-gons.

The programs for A000939, there is no canonical definition to state claims against.
-/

/-! ## A000939.P8520317094530411791

`A025454(A086972(n))`
-/

namespace A000939.P8520317094530411791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 (A086972 n).toNat

end

end A000939.P8520317094530411791

/-! ## A000939.P13018735365851890835

`A224712(A321090(2*n)+A117574(n))+1`
-/

namespace A000939.P13018735365851890835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (A321090 (2 * n) + A117574 n).toNat + 1

end

end A000939.P13018735365851890835

/-!
# A000940: Number of n-gons with n vertices.

The programs for A000940, there is no canonical definition to state claims against.
-/

/-! ## A000940.P9462025939865792102

`∪[A094156(n+1), A094157(n+2)]`
-/

namespace A000940.P9462025939865792102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094157 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000940.P9462025939865792102

/-! ## A000940.P4179623393379804157

`A357602(n+3)+A342533(n+3)`
-/

namespace A000940.P4179623393379804157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357602 (n + 3) + A342533 (n + 3)

end

end A000940.P4179623393379804157

/-! ## A000940.P7749997229837870659

`A316434(A292796(n)+A003961(n+1))`
-/

namespace A000940.P7749997229837870659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316434 (A292796 n + A003961 (n + 1)).toNat

end

end A000940.P7749997229837870659

/-!
# A000941: Number of free planar polyenoids with n nodes and symmetry point group C_s.

The programs for A000941, there is no canonical definition to state claims against.
-/

/-! ## A000941.P2793616961015448634

`A363225(A093115(n))-A137748(n)`
-/

namespace A000941.P2793616961015448634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363225 (A093115 n).toNat - A137748 n

end

end A000941.P2793616961015448634

/-! ## A000941.P8867697595154816011

`A085860(A091806(n+2)+A030195(n))`
-/

namespace A000941.P8867697595154816011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A091806 (n + 2) + A030195 n).toNat

end

end A000941.P8867697595154816011

/-! ## A000941.P14209295896845035453

`A363225(A093115(n))-A006983(2*n+5)`
-/

namespace A000941.P14209295896845035453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363225 (A093115 n).toNat - A006983 (2 * n + 5)

end

end A000941.P14209295896845035453

/-!
# A000943: Number of combinatorial types of simplicial n-dimensional polytopes with n+3 nodes.

The programs for A000943, the canonical program `A000943.P14876099365519847051` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000943 has offset 1).

The definition of A000943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000943.P7299345207893046640

`A007147(n+5)-(A008619(n)+2)`
-/

namespace A000943.P7299345207893046640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 5) - (A008619 n + 2)

end

end A000943.P7299345207893046640

namespace A000943

/-- `A007147(n+5)-(A008619(n)+2)` -/
def P7299345207893046640.Spec : Prop :=
  ∀ n, P7299345207893046640.a n = A000943 (n + 1)

end A000943

/-! ## A000943.P14876099365519847051

`A263768(n+5)-(A004526(n)+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000943

/-- `A263768(n+5)-(A004526(n)+2)` -/
def P14876099365519847051.Spec : Prop :=
  ∀ n, P14876099365519847051.a n = A000943 (n + 1)

theorem P14876099365519847051.correct : P14876099365519847051.Spec := by
  intro n
  simp only [A000943, Nat.add_sub_cancel]

end A000943

/-! ## A000943.P3068644532309663933

`A263768(n+5)-A110654(n+3)`
-/

namespace A000943.P3068644532309663933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263768 (n + 5) - A110654 (n + 3)

end

end A000943.P3068644532309663933

namespace A000943

/-- `A263768(n+5)-A110654(n+3)` -/
def P3068644532309663933.Spec : Prop :=
  ∀ n, P3068644532309663933.a n = A000943 (n + 1)

end A000943

/-! ## A000943.P2522707594191110520

`A263768(n+5)-(A008621(2*n)+1)`
-/

namespace A000943.P2522707594191110520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263768 (n + 5) - (A008621 (2 * n) + 1)

end

end A000943.P2522707594191110520

namespace A000943

/-- `A263768(n+5)-(A008621(2*n)+1)` -/
def P2522707594191110520.Spec : Prop :=
  ∀ n, P2522707594191110520.a n = A000943 (n + 1)

end A000943

/-! ## A000943.P7856667524939120967

`record[A007147(n+1)-Δ[A076921(n+1)]]`
-/

namespace A000943.P7856667524939120967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000943.P7856667524939120967

namespace A000943

/-- `record[A007147(n+1)-Δ[A076921(n+1)]]` -/
def P7856667524939120967.Spec : Prop :=
  ∀ n, P7856667524939120967.a n = A000943 (n + 1)

end A000943

/-! ## A000943.P9890502061334928684

`record[A263768(n+3)-Δ[A076921(n+1)]]`
-/

namespace A000943.P9890502061334928684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263768 (n + 3) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000943.P9890502061334928684

namespace A000943

/-- `record[A263768(n+3)-Δ[A076921(n+1)]]` -/
def P9890502061334928684.Spec : Prop :=
  ∀ n, P9890502061334928684.a n = A000943 (n + 1)

end A000943

/-!
# A000944: Number of polyhedra (or 3-connected simple planar graphs) with n nodes.

The programs for A000944, there is no canonical definition to state claims against.
-/

/-! ## A000944.P2300199933933988238

`∑[A216094(round(ϕ*a(n-1)))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A000944.P2300199933933988238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n f1 =>
  A216094 (SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000944.P2300199933933988238

/-! ## A000944.P5669980837071005176

`A192543(A001349(n))`
-/

namespace A000944.P5669980837071005176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A001349 n).toNat

end

end A000944.P5669980837071005176

/-! ## A000944.P610051045098403467

`A192543(A304311(∑[n]))`
-/

namespace A000944.P610051045098403467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A304311 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000944.P610051045098403467

/-! ## A000944.P11920058648279463977

`A192543(A128527(n+1))`
-/

namespace A000944.P11920058648279463977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A128527 (n + 1)).toNat

end

end A000944.P11920058648279463977

/-!
# A000945: Euclid-Mullin sequence: a(1) = 2, a(n+1) is smallest prime factor of 1 + Product_{k=1..n} a(k).

The programs for A000945, there is no canonical definition to state claims against.
-/

/-! ## A000945.P6905560529210923640

`A261564(A199343(n))`
-/

namespace A000945.P6905560529210923640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261564 (A199343 n).toNat

end

end A000945.P6905560529210923640

/-! ## A000945.P12444268917758590717

`A261564(∑[A287383(n)])`
-/

namespace A000945.P12444268917758590717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261564 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000945.P12444268917758590717

/-! ## A000945.P17260119530245268106

`A261564(record[A048379(n)])`
-/

namespace A000945.P17260119530245268106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261564 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000945.P17260119530245268106

/-! ## A000945.P8119964182038296125

`A261564(record[A222210(n)])`
-/

namespace A000945.P8119964182038296125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261564 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000945.P8119964182038296125

/-! ## A000945.P15138285199456174133

`A261564(A024660(n+1))`
-/

namespace A000945.P15138285199456174133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261564 (A024660 (n + 1)).toNat

end

end A000945.P15138285199456174133

/-!
# A000946: Euclid-Mullin sequence: a(1) = 2, a(n+1) is the largest prime factor of 1 + Product_{k=1..n} a(k).

The programs for A000946, there is no canonical definition to state claims against.
-/

/-! ## A000946.P1552153398205386924

`A020639(record[A218467(n+1)])`
-/

namespace A000946.P1552153398205386924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000946.P1552153398205386924

/-! ## A000946.P14404139065088100871

`A218467((n+1)^A187184(n+1))`
-/

namespace A000946.P14404139065088100871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218467 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A187184 (n + 1) : ℤ))).toNat

end

end A000946.P14404139065088100871

/-!
# A000948: Number of free nonplanar polyenoids with n nodes and symmetry point group C_s.

The programs for A000948, there is no canonical definition to state claims against.
-/

/-! ## A000948.P5513371854397646964

`A156684(A002011(n)-3)`
-/

namespace A000948.P5513371854397646964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (A002011 n - 3).toNat

end

end A000948.P5513371854397646964

/-!
# A000949: Number of forests with n nodes and height at most 2.

The programs for A000949, there is no canonical definition to state claims against.
-/

/-! ## A000949.P10483397947767224240

`A052513(n+1)/(n+1)`
-/

namespace A000949.P10483397947767224240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052513 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000949.P10483397947767224240

/-! ## A000949.P351942409824591161

`A210725(A022856(n+1)+A004275(n))`
-/

namespace A000949.P351942409824591161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210725 (A022856 (n + 1) + A004275 n).toNat

end

end A000949.P351942409824591161

/-! ## A000949.P15105988204202413971

`A210725(A238531(n)+char[A153278(n+1)])`
-/

namespace A000949.P15105988204202413971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210725 (A238531 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A000949.P15105988204202413971

/-!
# A000950: Number of forests with n nodes and height at most 3.

The programs for A000950, there is no canonical definition to state claims against.
-/

/-! ## A000950.P282897432788688635

`A052514(n+2)/(n+2)`
-/

namespace A000950.P282897432788688635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052514 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A000950.P282897432788688635

/-! ## A000950.P1930605331156497841

`A210725(A034856(n+1)-A004274(n))`
-/

namespace A000950.P1930605331156497841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210725 (A034856 (n + 1) - A004274 n).toNat

end

end A000950.P1930605331156497841

/-!
# A000951: Number of forests with n nodes and height at most 4.

The programs for A000951, there is no canonical definition to state claims against.
-/

/-! ## A000951.P12327424147371209977

`record[gcd((n+2)^n, C(n, 5))]`
-/

namespace A000951.P12327424147371209977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ n) (Nat.choose n 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000951.P12327424147371209977

/-!
# A000952: Numbers k == 2 (mod 4) that are the orders of conference matrices.

The programs for A000952, there is no canonical definition to state claims against.
-/

/-! ## A000952.P5604912072032598765

`2*(∑[gcd(3, comp[∑[n]])]+n)`
-/

namespace A000952.P5604912072032598765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000952.P5604912072032598765

/-! ## A000952.P7919490990774475015

`4*comp[3*2^n+2]+2`
-/

namespace A000952.P7919490990774475015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A000952.P7919490990774475015

/-! ## A000952.P17110711807515830414

`record[lcm(2, A185011(n+1))]`
-/

namespace A000952.P17110711807515830414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185011 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000952.P17110711807515830414

/-! ## A000952.P8932893059169373861

`or(char[16], A286636(n+1))`
-/

namespace A000952.P8932893059169373861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A286636 (n + 1))

end

end A000952.P8932893059169373861

/-! ## A000952.P15844640293259225969

`(A057653(n+1)+1)%63`
-/

namespace A000952.P15844640293259225969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057653 (n + 1) + 1) 63

end

end A000952.P15844640293259225969

/-!
# A000954: Conjecturally largest even integer which is an unordered sum of two primes in exactly n ways.

The programs for A000954, there is no canonical definition to state claims against.
-/

/-! ## A000954.P15436565980897492417

`A056636(n)-A056636(n)%A352298(n)`
-/

namespace A000954.P15436565980897492417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056636 n - Int.tmod (A056636 n) (A352298 n)

end

end A000954.P15436565980897492417

/-! ## A000954.P10353298411305749879

`A056636(A171881(∑[n]))`
-/

namespace A000954.P10353298411305749879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056636 (A171881 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000954.P10353298411305749879

/-! ## A000954.P11205672208472390616

`A056636(A032551(n+1))`
-/

namespace A000954.P11205672208472390616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056636 (A032551 (n + 1)).toNat

end

end A000954.P11205672208472390616

/-! ## A000954.P6585803176929162481

`A174327(A004903(n+2))`
-/

namespace A000954.P6585803176929162481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174327 (A004903 (n + 2)).toNat

end

end A000954.P6585803176929162481

/-!
# A000955: A sequence satisfying (a(2n+1) + 1)^3 = Sum_{k=1..2n+1} a(k)^3.

The programs for A000955, there is no canonical definition to state claims against.
-/

/-! ## A000955.P5907592994901896612

`A003375(A003506(a(n-2)))` with `a(0)=1, a(1)=6`
-/

namespace A000955.P5907592994901896612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A003375 (A003506 (a (n - 2)).toNat).toNat

end

end A000955.P5907592994901896612

/-!
# A000957: Fine's sequence (or Fine numbers): number of relations of valence >= 1 on an n-set; also number of ordered rooted trees with n nodes having root of even degree.

The programs for A000957, the canonical program `A000957.P17024256012114130201` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000957 has offset 0).

The definition of A000957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000957.P17024256012114130201

`((7*n-12)*a(n-1)+(4*n-6)*a(n-2))/(2*n)` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000957

/-- `((7*n-12)*a(n-1)+(4*n-6)*a(n-2))/(2*n)` -/
def P17024256012114130201.Spec : Prop :=
  ∀ n, P17024256012114130201.a n = (A000957 n : ℚ)

end A000957

/-! ## A000957.P1847406594873340246

`floor(acot(n)-A126983(n))`
-/

namespace A000957.P1847406594873340246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A126983 n : ℝ)⌋

end

end A000957.P1847406594873340246

namespace A000957

/-- `floor(acot(n)-A126983(n))` -/
def P1847406594873340246.Spec : Prop :=
  ∀ n, P1847406594873340246.a n = A000957 n

end A000957

/-! ## A000957.P13541973117672108803

`abs(floor(acot(n)-A064310(n)))`
-/

namespace A000957.P13541973117672108803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (n : ℝ) - (A064310 n : ℝ)⌋|

end

end A000957.P13541973117672108803

namespace A000957

/-- `abs(floor(acot(n)-A064310(n)))` -/
def P13541973117672108803.Spec : Prop :=
  ∀ n, P13541973117672108803.a n = A000957 n

end A000957

/-! ## A000957.P14470459744440790793

`abs(A126983(abs(1-n)+1))`
-/

namespace A000957.P14470459744440790793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A126983 (|1 - (n : ℤ)| + 1).toNat)|

end

end A000957.P14470459744440790793

namespace A000957

/-- `abs(A126983(abs(1-n)+1))` -/
def P14470459744440790793.Spec : Prop :=
  ∀ n, P14470459744440790793.a n = A000957 n

end A000957

/-! ## A000957.P1980688359065368583

`(A000108(n-1)-a(n-1))/2` with `a(0)=0, a(1)=1`
-/

namespace A000957.P1980688359065368583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((A000108 (n - 1) : ℚ) - a (n - 1)) / 2

end

end A000957.P1980688359065368583

namespace A000957

/-- `(A000108(n-1)-a(n-1))/2` -/
def P1980688359065368583.Spec : Prop :=
  ∀ n, P1980688359065368583.a n = (A000957 n : ℚ)

end A000957

/-! ## A000957.P16697521435959618261

`A000007(n)-A126983(n)`
-/

namespace A000957.P16697521435959618261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A126983 n

end

end A000957.P16697521435959618261

namespace A000957

/-- `A000007(n)-A126983(n)` -/
def P16697521435959618261.Spec : Prop :=
  ∀ n, P16697521435959618261.a n = A000957 n

end A000957

/-! ## A000957.P9003533525878096098

`A062157(n)*A064310(n)`
-/

namespace A000957.P9003533525878096098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A064310 n

end

end A000957.P9003533525878096098

namespace A000957

/-- `A062157(n)*A064310(n)` -/
def P9003533525878096098.Spec : Prop :=
  ∀ n, P9003533525878096098.a n = A000957 n

end A000957

/-! ## A000957.P13049649887236051331

`A057428(n)*A126983(n)`
-/

namespace A000957.P13049649887236051331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A126983 n

end

end A000957.P13049649887236051331

namespace A000957

/-- `A057428(n)*A126983(n)` -/
def P13049649887236051331.Spec : Prop :=
  ∀ n, P13049649887236051331.a n = A000957 n

end A000957

/-! ## A000957.P17682059752644650115

`lcm(A011621(n), A126983(n))`
-/

namespace A000957.P17682059752644650115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011621 n) (A126983 n)

end

end A000957.P17682059752644650115

namespace A000957

/-- `lcm(A011621(n), A126983(n))` -/
def P17682059752644650115.Spec : Prop :=
  ∀ n, (P17682059752644650115.a n : ℤ) = A000957 n

end A000957

/-! ## A000957.P813002801460117377

`lcm(A064310(n), A134451(n))`
-/

namespace A000957.P813002801460117377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064310 n) (A134451 n)

end

end A000957.P813002801460117377

namespace A000957

/-- `lcm(A064310(n), A134451(n))` -/
def P813002801460117377.Spec : Prop :=
  ∀ n, (P813002801460117377.a n : ℤ) = A000957 n

end A000957

/-! ## A000957.P15382073471270958402

`abs(A126983(n)*A165471(n))`
-/

namespace A000957.P15382073471270958402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126983 n * A165471 n|

end

end A000957.P15382073471270958402

namespace A000957

/-- `abs(A126983(n)*A165471(n))` -/
def P15382073471270958402.Spec : Prop :=
  ∀ n, P15382073471270958402.a n = A000957 n

end A000957

/-! ## A000957.P4839202120329448297

`A065600(A179865(n+1)-n)`
-/

namespace A000957.P4839202120329448297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A179865 (n + 1) - (n : ℤ)).toNat

end

end A000957.P4839202120329448297

namespace A000957

/-- `A065600(A179865(n+1)-n)` -/
def P4839202120329448297.Spec : Prop :=
  ∀ n, P4839202120329448297.a n = A000957 n

end A000957

/-! ## A000957.P16992535445618072305

`A036987(2*n)-A126983(n)`
-/

namespace A000957.P16992535445618072305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) - A126983 n

end

end A000957.P16992535445618072305

namespace A000957

/-- `A036987(2*n)-A126983(n)` -/
def P16992535445618072305.Spec : Prop :=
  ∀ n, P16992535445618072305.a n = A000957 n

end A000957

/-! ## A000957.P8448464845785123402

`A081729(2*n+1)*A126983(n)`
-/

namespace A000957.P8448464845785123402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (2 * n + 1) * A126983 n

end

end A000957.P8448464845785123402

namespace A000957

/-- `A081729(2*n+1)*A126983(n)` -/
def P8448464845785123402.Spec : Prop :=
  ∀ n, P8448464845785123402.a n = A000957 n

end A000957

/-! ## A000957.P1576803963588719498

`A065600(A000124(n)-(A057427(n)+n))`
-/

namespace A000957.P1576803963588719498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A000124 n - (A057427 n + (n : ℤ))).toNat

end

end A000957.P1576803963588719498

namespace A000957

/-- `A065600(A000124(n)-(A057427(n)+n))` -/
def P1576803963588719498.Spec : Prop :=
  ∀ n, P1576803963588719498.a n = A000957 n

end A000957

/-! ## A000957.P9965825099330564977

`A065600(A000124(n)-n-A057427(n))`
-/

namespace A000957.P9965825099330564977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A000124 n - (n : ℤ) - A057427 n).toNat

end

end A000957.P9965825099330564977

namespace A000957

/-- `A065600(A000124(n)-n-A057427(n))` -/
def P9965825099330564977.Spec : Prop :=
  ∀ n, P9965825099330564977.a n = A000957 n

end A000957

/-! ## A000957.P14669368027672842288

`2*A126983(n+1)-A115141(n+1)`
-/

namespace A000957.P14669368027672842288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126983 (n + 1) - A115141 (n + 1)

end

end A000957.P14669368027672842288

namespace A000957

/-- `2*A126983(n+1)-A115141(n+1)` -/
def P14669368027672842288.Spec : Prop :=
  ∀ n, P14669368027672842288.a n = A000957 n

end A000957

/-! ## A000957.P9884330771707212132

`A115140(n+1)-(A126983(n)+A115141(n+1))`
-/

namespace A000957.P9884330771707212132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) - (A126983 n + A115141 (n + 1))

end

end A000957.P9884330771707212132

namespace A000957

/-- `A115140(n+1)-(A126983(n)+A115141(n+1))` -/
def P9884330771707212132.Spec : Prop :=
  ∀ n, P9884330771707212132.a n = A000957 n

end A000957

/-! ## A000957.P2326081703242173832

`A065600(A007318(∑[n+1]+2)-n)`
-/

namespace A000957.P2326081703242173832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - (n : ℤ)).toNat

end

end A000957.P2326081703242173832

namespace A000957

/-- `A065600(A007318(∑[n+1]+2)-n)` -/
def P2326081703242173832.Spec : Prop :=
  ∀ n, P2326081703242173832.a n = A000957 n

end A000957

/-! ## A000957.P16556679188083245718

`A065600(A030528(∑[n+2]-1))`
-/

namespace A000957.P16556679188083245718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A030528 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A000957.P16556679188083245718

namespace A000957

/-- `A065600(A030528(∑[n+2]-1))` -/
def P16556679188083245718.Spec : Prop :=
  ∀ n, P16556679188083245718.a n = A000957 n

end A000957

/-!
# A000958: Number of ordered rooted trees with n edges having root of odd degree.

The programs for A000958, the canonical program `A000958.P13874304542277531672` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000958 has offset 1).

The definition of A000958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000958.P9089136450887060970

`∑[A118973(n)]`
-/

namespace A000958.P9089136450887060970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000958.P9089136450887060970

namespace A000958

/-- `∑[A118973(n)]` -/
def P9089136450887060970.Spec : Prop :=
  ∀ n, P9089136450887060970.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P9277919777211627217

`Δ[A193215(n+1)]`
-/

namespace A000958.P9277919777211627217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000958.P9277919777211627217

namespace A000958

/-- `Δ[A193215(n+1)]` -/
def P9277919777211627217.Spec : Prop :=
  ∀ n, P9277919777211627217.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P2301967434156005335

`abs(Δ[A064310(n+1)])`
-/

namespace A000958.P2301967434156005335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000958.P2301967434156005335

namespace A000958

/-- `abs(Δ[A064310(n+1)])` -/
def P2301967434156005335.Spec : Prop :=
  ∀ n, P2301967434156005335.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P2959170388315547212

`A135339(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A000958.P2959170388315547212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135339 (n + 1) - a (n - 1)

end

end A000958.P2959170388315547212

namespace A000958

/-- `A135339(n+1)-a(n-1)` -/
def P2959170388315547212.Spec : Prop :=
  ∀ n, P2959170388315547212.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P17434668553903548674

`record[A126120(n)]-record[A000957(n)]`
-/

namespace A000958.P17434668553903548674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A000958.P17434668553903548674

namespace A000958

/-- `record[A126120(n)]-record[A000957(n)]` -/
def P17434668553903548674.Spec : Prop :=
  ∀ n, P17434668553903548674.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P13470258682926215213

`A135336(n+1)-∑[A000957(n)]`
-/

namespace A000958.P13470258682926215213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000958.P13470258682926215213

namespace A000958

/-- `A135336(n+1)-∑[A000957(n)]` -/
def P13470258682926215213.Spec : Prop :=
  ∀ n, P13470258682926215213.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P13874304542277531672

`A000957(n+1)+record[A000957(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000958

/-- `A000957(n+1)+record[A000957(n)]` -/
def P13874304542277531672.Spec : Prop :=
  ∀ n, P13874304542277531672.a n = A000958 (n + 1)

theorem P13874304542277531672.correct : P13874304542277531672.Spec := by
  intro n
  simp only [A000958, Nat.add_sub_cancel]

end A000958

/-! ## A000958.P9732772004639125395

`A000957(n+1)+A000957(n+2)`
-/

namespace A000958.P9732772004639125395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + A000957 (n + 2)

end

end A000958.P9732772004639125395

namespace A000958

/-- `A000957(n+1)+A000957(n+2)` -/
def P9732772004639125395.Spec : Prop :=
  ∀ n, P9732772004639125395.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P2469272490657282015

`A126983(n+2)+A000108(n+1)`
-/

namespace A000958.P2469272490657282015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) + A000108 (n + 1)

end

end A000958.P2469272490657282015

namespace A000958

/-- `A126983(n+2)+A000108(n+1)` -/
def P2469272490657282015.Spec : Prop :=
  ∀ n, P2469272490657282015.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P1943181253475327586

`A193215(n+2)-A193215(n+1)`
-/

namespace A000958.P1943181253475327586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193215 (n + 2) - A193215 (n + 1)

end

end A000958.P1943181253475327586

namespace A000958

/-- `A193215(n+2)-A193215(n+1)` -/
def P1943181253475327586.Spec : Prop :=
  ∀ n, P1943181253475327586.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P16903232111972593973

`A126983(n+2)-A115140(n+2)`
-/

namespace A000958.P16903232111972593973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) - A115140 (n + 2)

end

end A000958.P16903232111972593973

namespace A000958

/-- `A126983(n+2)-A115140(n+2)` -/
def P16903232111972593973.Spec : Prop :=
  ∀ n, P16903232111972593973.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P8883913936426537161

`A126983(n+2)-A115141(n+2)`
-/

namespace A000958.P8883913936426537161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) - A115141 (n + 2)

end

end A000958.P8883913936426537161

namespace A000958

/-- `A126983(n+2)-A115141(n+2)` -/
def P8883913936426537161.Spec : Prop :=
  ∀ n, P8883913936426537161.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P4166735222273035322

`A289589(n+1)+A000108(n)-A289589(n)`
-/

namespace A000958.P4166735222273035322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289589 (n + 1) + (A000108 n - A289589 n)

end

end A000958.P4166735222273035322

namespace A000958

/-- `A289589(n+1)+A000108(n)-A289589(n)` -/
def P4166735222273035322.Spec : Prop :=
  ∀ n, P4166735222273035322.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P15854737700049047954

`A000108(n+1)+A000108(n)-A135339(n+1)`
-/

namespace A000958.P15854737700049047954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000108 n - A135339 (n + 1))

end

end A000958.P15854737700049047954

namespace A000958

/-- `A000108(n+1)+A000108(n)-A135339(n+1)` -/
def P15854737700049047954.Spec : Prop :=
  ∀ n, P15854737700049047954.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P10190983509874464493

`A000108(n+1)+A135336(n)-A135336(n+1)`
-/

namespace A000958.P10190983509874464493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A135336 n - A135336 (n + 1))

end

end A000958.P10190983509874464493

namespace A000958

/-- `A000108(n+1)+A135336(n)-A135336(n+1)` -/
def P10190983509874464493.Spec : Prop :=
  ∀ n, P10190983509874464493.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P7421866543612144808

`A289448(n+1)+A135336(n)-A289589(n+1)`
-/

namespace A000958.P7421866543612144808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289448 (n + 1) + (A135336 n - A289589 (n + 1))

end

end A000958.P7421866543612144808

namespace A000958

/-- `A289448(n+1)+A135336(n)-A289589(n+1)` -/
def P7421866543612144808.Spec : Prop :=
  ∀ n, P7421866543612144808.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P8418528403601229813

`abs(Δ[A105524(2*n+1)/2])`
-/

namespace A000958.P8418528403601229813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105524 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000958.P8418528403601229813

namespace A000958

/-- `abs(Δ[A105524(2*n+1)/2])` -/
def P8418528403601229813.Spec : Prop :=
  ∀ n, P8418528403601229813.a n = (A000958 (n + 1) : ℚ)

end A000958

/-! ## A000958.P4905627315588707153

`A005807(n)-A135339(n+1)`
-/

namespace A000958.P4905627315588707153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A135339 (n + 1)

end

end A000958.P4905627315588707153

namespace A000958

/-- `A005807(n)-A135339(n+1)` -/
def P4905627315588707153.Spec : Prop :=
  ∀ n, P4905627315588707153.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P2974950640767881053

`A104629(n)+A104629(n)-A071724(n+1)`
-/

namespace A000958.P2974950640767881053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n + (A104629 n - A071724 (n + 1))

end

end A000958.P2974950640767881053

namespace A000958

/-- `A104629(n)+A104629(n)-A071724(n+1)` -/
def P2974950640767881053.Spec : Prop :=
  ∀ n, P2974950640767881053.a n = A000958 (n + 1)

end A000958

/-! ## A000958.P2506895475730230418

`A104629(n+1)-(A118973(n+1)+A001558(n))`
-/

namespace A000958.P2506895475730230418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 (n + 1) - (A118973 (n + 1) + A001558 n)

end

end A000958.P2506895475730230418

namespace A000958

/-- `A104629(n+1)-(A118973(n+1)+A001558(n))` -/
def P2506895475730230418.Spec : Prop :=
  ∀ n, P2506895475730230418.a n = A000958 (n + 1)

end A000958

/-!
# A000959: Lucky numbers.

The programs for A000959, there is no canonical definition to state claims against.
-/

/-! ## A000959.P9543020461194118314

`A000040(n+1)+A032600(n+1)`
-/

namespace A000959.P9543020461194118314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A032600 (n + 1)

end

end A000959.P9543020461194118314

/-! ## A000959.P6370344372557532446

`sqrt(A032598(n+1))`
-/

namespace A000959.P6370344372557532446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ)

end

end A000959.P6370344372557532446

/-! ## A000959.P16890456429795038044

`A139269(n+1)/2`
-/

namespace A000959.P16890456429795038044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (n + 1) : ℚ) / 2

end

end A000959.P16890456429795038044

/-! ## A000959.P10570517934894241507

`2*A049781(n+1)-1`
-/

namespace A000959.P10570517934894241507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1) - 1

end

end A000959.P10570517934894241507

/-! ## A000959.P17164096973056867367

`A032599(n+1)^(1/3)`
-/

namespace A000959.P17164096973056867367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A000959.P17164096973056867367

/-! ## A000959.P15902144056461414915

`A031883(n)+a(n-1)` with `a(0)=1`
-/

namespace A000959.P15902144056461414915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031883 n + a (n - 1)

end

end A000959.P15902144056461414915

/-! ## A000959.P5167435707628116739

`A118125(n+1)+A045954(n+1)`
-/

namespace A000959.P5167435707628116739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118125 (n + 1) + A045954 (n + 1)

end

end A000959.P5167435707628116739

/-! ## A000959.P11208870502044893535

`A032602(n+1)-A000040(n+1)`
-/

namespace A000959.P11208870502044893535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A000040 (n + 1)

end

end A000959.P11208870502044893535

/-! ## A000959.P2685645462219108317

`A032601(n+1)/A000040(n+1)`
-/

namespace A000959.P2685645462219108317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A000959.P2685645462219108317

/-! ## A000959.P8140459005784711324

`A032599(n+1)/A032598(n+1)`
-/

namespace A000959.P8140459005784711324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℚ) / (A032598 (n + 1) : ℚ)

end

end A000959.P8140459005784711324

/-! ## A000959.P14473996154850600899

`A032603(n+1)%A001750(n+1)`
-/

namespace A000959.P14473996154850600899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032603 (n + 1)) (A001750 (n + 1))

end

end A000959.P14473996154850600899

/-! ## A000959.P5408362076981447084

`A032598(n+1)%A139269(n+1)`
-/

namespace A000959.P5408362076981447084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032598 (n + 1)) (A139269 (n + 1))

end

end A000959.P5408362076981447084

/-! ## A000959.P14163926078633811798

`A032599(n+1)%A139269(n+1)`
-/

namespace A000959.P14163926078633811798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032599 (n + 1)) (A139269 (n + 1))

end

end A000959.P14163926078633811798

/-! ## A000959.P694873988670849734

`A237122(n+1)%A139269(n+1)`
-/

namespace A000959.P694873988670849734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237122 (n + 1)) (A139269 (n + 1))

end

end A000959.P694873988670849734

/-! ## A000959.P2918819793048962702

`∪[A031157(n+1), A031879(n+1)]`
-/

namespace A000959.P2918819793048962702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000959.P2918819793048962702

/-! ## A000959.P2447580270521767297

`∪[A031879(n+1), A043772(n+1)]`
-/

namespace A000959.P2447580270521767297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000959.P2447580270521767297

/-! ## A000959.P746249531191548286

`∪[A031879(n+1), A118643(n+1)]`
-/

namespace A000959.P746249531191548286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000959.P746249531191548286

/-! ## A000959.P15848867522599173141

`∪[A099988(n+1), A099989(n+1)]`
-/

namespace A000959.P15848867522599173141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000959.P15848867522599173141

/-! ## A000959.P6565470736223950035

`∪[A137164(n+1), A137165(n+1)]`
-/

namespace A000959.P6565470736223950035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000959.P6565470736223950035

/-! ## A000959.P8385061059724451093

`∪[A137168(n+1), A137170(n+1)]`
-/

namespace A000959.P8385061059724451093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000959.P8385061059724451093

/-!
# A000960: Flavius Josephus's sieve: Start with the natural numbers; at the k-th sieving step, remove every (k+1)-st term of the sequence remaining after the (k-1)-st sieving step; iterate.

The programs for A000960, there is no canonical definition to state claims against.
-/

/-! ## A000960.P10805213208811322338

`1+A278484(n)`
-/

namespace A000960.P10805213208811322338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A278484 n

end

end A000960.P10805213208811322338

/-! ## A000960.P10243882810986693577

`xor(1, A278484(xor(1, xor(1, n))))`
-/

namespace A000960.P10243882810986693577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A278484 (Nat.xor 1 (Nat.xor 1 n)))

end

end A000960.P10243882810986693577

/-! ## A000960.P4896632924709068929

`A056526(n)+a(n-1)` with `a(0)=1`
-/

namespace A000960.P4896632924709068929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056526 n + a (n - 1)

end

end A000960.P4896632924709068929

/-! ## A000960.P5292341609346728678

`∪[A099061(n), A099062(n)]`
-/

namespace A000960.P5292341609346728678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000960.P5292341609346728678

/-! ## A000960.P3381817097316089475

`or(A040419(or(1, n)), A278484(n))`
-/

namespace A000960.P3381817097316089475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040419 (Nat.lor 1 n)) (A278484 n)

end

end A000960.P3381817097316089475

/-! ## A000960.P8179464360988781515

`∑[A056526(n+1)]+1-A056526(n+1)`
-/

namespace A000960.P8179464360988781515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A056526 (n + 1))

end

end A000960.P8179464360988781515

/-! ## A000960.P5863761486418616388

`A278484(n)-(A278482(n)-A278492(n))`
-/

namespace A000960.P5863761486418616388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n - (A278482 n - A278492 n)

end

end A000960.P5863761486418616388

/-! ## A000960.P9279581957349464581

`A113749(A034856(n+2))`
-/

namespace A000960.P9279581957349464581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A034856 (n + 2)).toNat

end

end A000960.P9279581957349464581

/-! ## A000960.P4530113123418453256

`A113749(A055999(n)+4)`
-/

namespace A000960.P4530113123418453256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055999 n + 4).toNat

end

end A000960.P4530113123418453256

/-! ## A000960.P13653294645425866441

`A113749(A055998(n+1)+1)`
-/

namespace A000960.P13653294645425866441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055998 (n + 1) + 1).toNat

end

end A000960.P13653294645425866441

/-! ## A000960.P11303968522176742494

`A278505(∑[n+1])`
-/

namespace A000960.P11303968522176742494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000960.P11303968522176742494

/-! ## A000960.P15167931979474598591

`A141310(A278484(n))`
-/

namespace A000960.P15167931979474598591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A278484 n).toNat

end

end A000960.P15167931979474598591

/-! ## A000960.P14534347257686547476

`or(A007318(∑[n]), A278484(n))`
-/

namespace A000960.P14534347257686547476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A278484 n)

end

end A000960.P14534347257686547476

/-! ## A000960.P15503599146909290588

`A113749(eq[2, A025581(n)]+1)`
-/

namespace A000960.P15503599146909290588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A000960.P15503599146909290588

/-! ## A000960.P8249925561321249831

`A278503(∑[n]+1)`
-/

namespace A000960.P8249925561321249831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000960.P8249925561321249831

/-! ## A000960.P7988800893425673664

`A278503(C(n+1, 2)+1)%(n+2)²`
-/

namespace A000960.P7988800893425673664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278503 (Nat.choose (n + 1) 2 + 1)) ((n + 2) ^ 2 : ℤ)

end

end A000960.P7988800893425673664

/-! ## A000960.P4800800627476943132

`record[A278503(A278506(n+1))]`
-/

namespace A000960.P4800800627476943132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A278506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000960.P4800800627476943132

/-! ## A000960.P14946075701289413239

`record[A278503(A004736(or(1, n))+n)]`
-/

namespace A000960.P14946075701289413239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A004736 (Nat.lor 1 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000960.P14946075701289413239

/-! ## A000960.P13710372997393833076

`eq[1, A278539(n+1)]+1`
-/

namespace A000960.P13710372997393833076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000960.P13710372997393833076

/-! ## A000960.P15329971524971887488

`lt[A278529(n+1), 1]+1`
-/

namespace A000960.P15329971524971887488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000960.P15329971524971887488

/-!
# A000961: Powers of primes. Alternatively, 1 and the prime powers (p^k, p prime, k >= 1).

The programs for A000961, the canonical program `A000961.P11514301435404104700` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000961 has offset 1).

The definition of A000961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000961.P10320142625496639561

`A025473(n+1)^A025474(n+1)`
-/

namespace A000961.P10320142625496639561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A000961.P10320142625496639561

namespace A000961

/-- `A025473(n+1)^A025474(n+1)` -/
def P10320142625496639561.Spec : Prop :=
  ∀ n, P10320142625496639561.a n = (A000961 (n + 1) : ℚ)

end A000961

/-! ## A000961.P1953006651326653320

`sqrt(A056798(n+1))`
-/

namespace A000961.P1953006651326653320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ)

end

end A000961.P1953006651326653320

namespace A000961

/-- `sqrt(A056798(n+1))` -/
def P1953006651326653320.Spec : Prop :=
  ∀ n, P1953006651326653320.a n = (A000961 (n + 1) : ℝ)

end A000961

/-! ## A000961.P15402586058211054521

`A181062(n+1)+1`
-/

namespace A000961.P15402586058211054521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + 1

end

end A000961.P15402586058211054521

namespace A000961

/-- `A181062(n+1)+1` -/
def P15402586058211054521.Spec : Prop :=
  ∀ n, P15402586058211054521.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P12681845497558678359

`A138929(n+1)/2`
-/

namespace A000961.P12681845497558678359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2

end

end A000961.P12681845497558678359

namespace A000961

/-- `A138929(n+1)/2` -/
def P12681845497558678359.Spec : Prop :=
  ∀ n, P12681845497558678359.a n = (A000961 (n + 1) : ℚ)

end A000961

/-! ## A000961.P15807180544794569098

`A057820(n)+a(n-1)` with `a(0)=1`
-/

namespace A000961.P15807180544794569098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057820 n + a (n - 1)

end

end A000961.P15807180544794569098

namespace A000961

/-- `A057820(n)+a(n-1)` -/
def P15807180544794569098.Spec : Prop :=
  ∀ n, P15807180544794569098.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P9498906965562211624

`A275120(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A000961.P9498906965562211624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A275120 n + a (n - 1)

end

end A000961.P9498906965562211624

namespace A000961

/-- `A275120(n)+a(n-1)` -/
def P9498906965562211624.Spec : Prop :=
  ∀ n, P9498906965562211624.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P15591347339835316147

`A192134(n+1)+A192015(n+1)`
-/

namespace A000961.P15591347339835316147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192134 (n + 1) + A192015 (n + 1)

end

end A000961.P15591347339835316147

namespace A000961

/-- `A192134(n+1)+A192015(n+1)` -/
def P15591347339835316147.Spec : Prop :=
  ∀ n, P15591347339835316147.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P16954306078396735127

`A246655(n+1)-A057820(n+1)`
-/

namespace A000961.P16954306078396735127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A057820 (n + 1)

end

end A000961.P16954306078396735127

namespace A000961

/-- `A246655(n+1)-A057820(n+1)` -/
def P16954306078396735127.Spec : Prop :=
  ∀ n, P16954306078396735127.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P12845173623696845767

`A001597(n+1)-A377043(n+1)`
-/

namespace A000961.P12845173623696845767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A377043 (n + 1)

end

end A000961.P12845173623696845767

namespace A000961

/-- `A001597(n+1)-A377043(n+1)` -/
def P12845173623696845767.Spec : Prop :=
  ∀ n, P12845173623696845767.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P11514301435404104700

`A309269(n+1)-A246655(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000961

/-- `A309269(n+1)-A246655(n+1)` -/
def P11514301435404104700.Spec : Prop :=
  ∀ n, P11514301435404104700.a n = A000961 (n + 1)

theorem P11514301435404104700.correct : P11514301435404104700.Spec := by
  intro n
  simp only [A000961, Nat.add_sub_cancel]

end A000961

/-! ## A000961.P13631206317901458183

`A121315(n+1)/A246655(n+1)`
-/

namespace A000961.P13631206317901458183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)

end

end A000961.P13631206317901458183

namespace A000961

/-- `A121315(n+1)/A246655(n+1)` -/
def P13631206317901458183.Spec : Prop :=
  ∀ n, P13631206317901458183.a n = (A000961 (n + 1) : ℚ)

end A000961

/-! ## A000961.P15995264696477698928

`gcd(A056798(n+1), A121315(n+1))`
-/

namespace A000961.P15995264696477698928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056798 (n + 1)) (A121315 (n + 1))

end

end A000961.P15995264696477698928

namespace A000961

/-- `gcd(A056798(n+1), A121315(n+1))` -/
def P15995264696477698928.Spec : Prop :=
  ∀ n, (P15995264696477698928.a n : ℤ) = A000961 (n + 1)

end A000961

/-! ## A000961.P5865624366124080087

`∪[A000040(n+1), A025475(n+1)]`
-/

namespace A000961.P5865624366124080087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000961.P5865624366124080087

namespace A000961

/-- `∪[A000040(n+1), A025475(n+1)]` -/
def P5865624366124080087.Spec : Prop :=
  ∀ n, (P5865624366124080087.a n : ℤ) = A000961 (n + 1)

end A000961

/-! ## A000961.P6412263875787980495

`A246655(n+1)+A377044(n+1)-A377043(n+1)`
-/

namespace A000961.P6412263875787980495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) + (A377044 (n + 1) - A377043 (n + 1))

end

end A000961.P6412263875787980495

namespace A000961

/-- `A246655(n+1)+A377044(n+1)-A377043(n+1)` -/
def P6412263875787980495.Spec : Prop :=
  ∀ n, P6412263875787980495.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P4189946950673709548

`A024918(n+2)-(A057820(n+1)+A024918(n+1))`
-/

namespace A000961.P4189946950673709548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 2) - (A057820 (n + 1) + A024918 (n + 1))

end

end A000961.P4189946950673709548

namespace A000961

/-- `A024918(n+2)-(A057820(n+1)+A024918(n+1))` -/
def P4189946950673709548.Spec : Prop :=
  ∀ n, P4189946950673709548.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P12207479323710777643

`A024918(n+1)+A309269(n+1)-A024918(n+2)`
-/

namespace A000961.P12207479323710777643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1) + (A309269 (n + 1) - A024918 (n + 2))

end

end A000961.P12207479323710777643

namespace A000961

/-- `A024918(n+1)+A309269(n+1)-A024918(n+2)` -/
def P12207479323710777643.Spec : Prop :=
  ∀ n, P12207479323710777643.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P6922656377048883037

`filter[A081061(n+1), A324290(#)]`
-/

namespace A000961.P6922656377048883037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A000961.P6922656377048883037

namespace A000961

/-- `filter[A081061(n+1), A324290(#)]` -/
def P6922656377048883037.Spec : Prop :=
  ∀ n, P6922656377048883037.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P370633424241762222

`filter[A141807(n+1), A324290(#)]`
-/

namespace A000961.P370633424241762222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A000961.P370633424241762222

namespace A000961

/-- `filter[A141807(n+1), A324290(#)]` -/
def P370633424241762222.Spec : Prop :=
  ∀ n, P370633424241762222.a n = A000961 (n + 1)

end A000961

/-! ## A000961.P12932571131915915883

`record[n/a(A001221(n))]/2` with `a(0)=2`
-/

namespace A000961.P12932571131915915883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A000961.P12932571131915915883

namespace A000961

/-- `record[n/a(A001221(n))]/2` -/
def P12932571131915915883.Spec : Prop :=
  ∀ n, P12932571131915915883.a n = (A000961 (n + 1) : ℚ)

end A000961

/-! ## A000961.P5792906864363075354

`record[(n+1)/A001221(n+1)!]`
-/

namespace A000961.P5792906864363075354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000961.P5792906864363075354

namespace A000961

/-- `record[(n+1)/A001221(n+1)!]` -/
def P5792906864363075354.Spec : Prop :=
  ∀ n, P5792906864363075354.a n = (A000961 (n + 1) : ℚ)

end A000961

/-!
# A000962: The convergent sequence A_n for the ternary continued fraction (3,1;2,2) of period 2.

The programs for A000962, there is no canonical definition to state claims against.
-/

/-! ## A000962.P9222821933159726403

`A020079(A328395(n))+A000196(A020077(n))`
-/

namespace A000962.P9222821933159726403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020079 (A328395 n).toNat + A000196 (A020077 n).toNat

end

end A000962.P9222821933159726403

/-!
# A000964: The convergent sequence C_n for the ternary continued fraction (3,1;2,2) of period 2.

The programs for A000964, the canonical program `A000964.P15364680481049967634` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000964 has offset 0).

The definition of A000964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000964.P15364680481049967634

`7*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000964

/-- `7*a(n-2)-3*a(n-4)+a(n-6)` -/
def P15364680481049967634.Spec : Prop :=
  ∀ n, P15364680481049967634.a n = A000964 n

theorem P15364680481049967634.correct : P15364680481049967634.Spec := by
  intro n
  simp only [A000964]

end A000964

/-! ## A000964.P4177420031760624152

`A065719(A002906(n)-(-1)^n)`
-/

namespace A000964.P4177420031760624152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A002906 n - (-1) ^ n).toNat

end

end A000964.P4177420031760624152

namespace A000964

/-- `A065719(A002906(n)-(-1)^n)` -/
def P4177420031760624152.Spec : Prop :=
  ∀ n, P4177420031760624152.a n = A000964 n

end A000964

/-! ## A000964.P3514227327244259236

`A065719(A015567(n+1)+A002906(n))`
-/

namespace A000964.P3514227327244259236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A015567 (n + 1) + A002906 n).toNat

end

end A000964.P3514227327244259236

namespace A000964

/-- `A065719(A015567(n+1)+A002906(n))` -/
def P3514227327244259236.Spec : Prop :=
  ∀ n, P3514227327244259236.a n = A000964 n

end A000964

/-!
# A000965: Numerators of expansion of e.g.f. sinh(x) / sin(x) (even powers only).

The programs for A000965, there is no canonical definition to state claims against.
-/

/-! ## A000965.P4492644672018585527

`A000027(A069853(n))*A000079(n)`
-/

namespace A000965.P4492644672018585527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069853 n).toNat * A000079 n

end

end A000965.P4492644672018585527

/-! ## A000965.P18064192123748525161

`A007913(A069853(n))*A069877(n)`
-/

namespace A000965.P18064192123748525161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A069853 n).toNat * A069877 n

end

end A000965.P18064192123748525161

/-! ## A000965.P13088328735429247078

`A000027(A069853(n))*A329562(n)`
-/

namespace A000965.P13088328735429247078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069853 n).toNat * A329562 n

end

end A000965.P13088328735429247078

/-! ## A000965.P15318137399282326185

`A000079(n)*A017666(A007418(2*n))`
-/

namespace A000965.P15318137399282326185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A017666 (A007418 (2 * n)).toNat

end

end A000965.P15318137399282326185

/-! ## A000965.P17054996334548716605

`A000027(A069853(n))*A017910(2*n)`
-/

namespace A000965.P17054996334548716605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069853 n).toNat * A017910 (2 * n)

end

end A000965.P17054996334548716605

/-!
# A000966: n! never ends in this many 0's.

The programs for A000966, the canonical program `A000966.P7614560313930047324` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000966 has offset 1).

The definition of A000966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000966.P7614560313930047324

`comp[a(floor(n/5))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000966

/-- `comp[a(floor(n/5))+n]` -/
def P7614560313930047324.Spec : Prop :=
  ∀ n, (P7614560313930047324.a n : ℤ) = A000966 (n + 1)

theorem P7614560313930047324.correct : P7614560313930047324.Spec := by
  intro n
  simp only [A000966, Nat.add_sub_cancel]

end A000966

/-! ## A000966.P15338944354900532404

`5*A228297(n+1)+n`
-/

namespace A000966.P15338944354900532404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A228297 (n + 1) + (n : ℤ)

end

end A000966.P15338944354900532404

namespace A000966

/-- `5*A228297(n+1)+n` -/
def P15338944354900532404.Spec : Prop :=
  ∀ n, P15338944354900532404.a n = A000966 (n + 1)

end A000966

/-! ## A000966.P8227784977197604649

`A008706(A228297(n+1))+n`
-/

namespace A000966.P8227784977197604649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A228297 (n + 1)).toNat + (n : ℤ)

end

end A000966.P8227784977197604649

namespace A000966

/-- `A008706(A228297(n+1))+n` -/
def P8227784977197604649.Spec : Prop :=
  ∀ n, P8227784977197604649.a n = A000966 (n + 1)

end A000966

/-! ## A000966.P15129890177813183625

`A007845(n+1)+n`
-/

namespace A000966.P15129890177813183625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 (n + 1) + (n : ℤ)

end

end A000966.P15129890177813183625

namespace A000966

/-- `A007845(n+1)+n` -/
def P15129890177813183625.Spec : Prop :=
  ∀ n, P15129890177813183625.a n = A000966 (n + 1)

end A000966

/-! ## A000966.P11851765237853828249

`∑[2-Δ[n-A007845(n)]]`
-/

namespace A000966.P11851765237853828249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000966.P11851765237853828249

namespace A000966

/-- `∑[2-Δ[n-A007845(n)]]` -/
def P11851765237853828249.Spec : Prop :=
  ∀ n, P11851765237853828249.a n = A000966 (n + 1)

end A000966

/-! ## A000966.P4758383138233267089

`∑[A008726(Δ[A007845(n)])]`
-/

namespace A000966.P4758383138233267089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000966.P4758383138233267089

namespace A000966

/-- `∑[A008726(Δ[A007845(n)])]` -/
def P4758383138233267089.Spec : Prop :=
  ∀ n, P4758383138233267089.a n = A000966 (n + 1)

end A000966

/-! ## A000966.P11378695197018015914

`A080066(n)+a(n-1)` with `a(0)=5`
-/

namespace A000966.P11378695197018015914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A080066 n + a (n - 1)

end

end A000966.P11378695197018015914

namespace A000966

/-- `A080066(n)+a(n-1)` -/
def P11378695197018015914.Spec : Prop :=
  ∀ n, P11378695197018015914.a n = A000966 (n + 1)

end A000966

/-!
# A000967: Sum of Fermat coefficients.

The programs for A000967, the canonical program `A000967.P7202602035930507134` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000967 has offset 1).

The definition of A000967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000967.P7202602035930507134

`round(A001610(2*(n+1))/(2*n+3))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000967

/-- `round(A001610(2*(n+1))/(2*n+3))` -/
def P7202602035930507134.Spec : Prop :=
  ∀ n, P7202602035930507134.a n = A000967 (n + 1)

theorem P7202602035930507134.correct : P7202602035930507134.Spec := by
  intro n
  simp only [A000967, Nat.add_sub_cancel]

end A000967

/-! ## A000967.P17333684500878980793

`round(∑[A000032(2*(n+1))]/(2*n+3))`
-/

namespace A000967.P17333684500878980793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 3 : ℚ))

end

end A000967.P17333684500878980793

namespace A000967

/-- `round(∑[A000032(2*(n+1))]/(2*n+3))` -/
def P17333684500878980793.Spec : Prop :=
  ∀ n, P17333684500878980793.a n = A000967 (n + 1)

end A000967

/-! ## A000967.P398452003801342199

`ceil(A020956(2*(n+1))/A005408(n+1))`
-/

namespace A000967.P398452003801342199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020956 (2 * (n + 1)) : ℚ) / (A005408 (n + 1) : ℚ)⌉

end

end A000967.P398452003801342199

namespace A000967

/-- `ceil(A020956(2*(n+1))/A005408(n+1))` -/
def P398452003801342199.Spec : Prop :=
  ∀ n, P398452003801342199.a n = A000967 (n + 1)

end A000967

/-! ## A000967.P17886495565540428778

`round(∑[A000204(2*(n+1))]/A004273(n+2))`
-/

namespace A000967.P17886495565540428778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A004273 (n + 2) : ℚ))

end

end A000967.P17886495565540428778

namespace A000967

/-- `round(∑[A000204(2*(n+1))]/A004273(n+2))` -/
def P17886495565540428778.Spec : Prop :=
  ∀ n, P17886495565540428778.a n = A000967 (n + 1)

end A000967

/-! ## A000967.P10415962258884856710

`round(A014739(2*n+1)/A293754(2*(n+1)))`
-/

namespace A000967.P10415962258884856710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014739 (2 * n + 1) : ℚ) / (A293754 (2 * (n + 1)) : ℚ))

end

end A000967.P10415962258884856710

namespace A000967

/-- `round(A014739(2*n+1)/A293754(2*(n+1)))` -/
def P10415962258884856710.Spec : Prop :=
  ∀ n, P10415962258884856710.a n = A000967 (n + 1)

end A000967

/-!
# A000968: Sum of odd Fermat coefficients rounded to nearest integer.

The programs for A000968, the canonical program `A000968.P2757355558857724068` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000968 has offset 1).

The definition of A000968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000968.P2757355558857724068

`round(A001612(2*n+3)/(4*n+6))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000968

/-- `round(A001612(2*n+3)/(4*n+6))` -/
def P2757355558857724068.Spec : Prop :=
  ∀ n, P2757355558857724068.a n = A000968 (n + 1)

theorem P2757355558857724068.correct : P2757355558857724068.Spec := by
  intro n
  simp only [A000968, Nat.add_sub_cancel]

end A000968

/-! ## A000968.P10111115787985280016

`round(A169986(2*n+3)/(4*n+6))`
-/

namespace A000968.P10111115787985280016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A169986 (2 * n + 3) : ℚ) / (4 * n + 6 : ℚ))

end

end A000968.P10111115787985280016

namespace A000968

/-- `round(A169986(2*n+3)/(4*n+6))` -/
def P10111115787985280016.Spec : Prop :=
  ∀ n, P10111115787985280016.a n = A000968 (n + 1)

end A000968

/-! ## A000968.P15605294152451036177

`round(record[A188378(n)/A016825(n)])`
-/

namespace A000968.P15605294152451036177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188378 n : ℚ) / (A016825 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A000968.P15605294152451036177

namespace A000968

/-- `round(record[A188378(n)/A016825(n)])` -/
def P15605294152451036177.Spec : Prop :=
  ∀ n, P15605294152451036177.a n = A000968 (n + 1)

end A000968

/-! ## A000968.P11247339224817310963

`round(A188378(n+1)/A016825(n+1))`
-/

namespace A000968.P11247339224817310963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A188378 (n + 1) : ℚ) / (A016825 (n + 1) : ℚ))

end

end A000968.P11247339224817310963

namespace A000968

/-- `round(A188378(n+1)/A016825(n+1))` -/
def P11247339224817310963.Spec : Prop :=
  ∀ n, P11247339224817310963.a n = A000968 (n + 1)

end A000968

/-! ## A000968.P8554946676720001679

`ceil(A133641(2*n+1)/A133653(n+2))`
-/

namespace A000968.P8554946676720001679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133641 (2 * n + 1) : ℚ) / (A133653 (n + 2) : ℚ)⌉

end

end A000968.P8554946676720001679

namespace A000968

/-- `ceil(A133641(2*n+1)/A133653(n+2))` -/
def P8554946676720001679.Spec : Prop :=
  ∀ n, P8554946676720001679.a n = A000968 (n + 1)

end A000968

/-!
# A000969: Expansion of g.f. (1 + x + 2*x^2)/((1 - x)^2*(1 - x^3)).

The programs for A000969, the canonical program `A000969.P11182623615523874096` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000969 has offset 0).

The definition of A000969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000969.P11182623615523874096

`∑[∑[(n%3)!]]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000969

/-- `∑[∑[(n%3)!]]` -/
def P11182623615523874096.Spec : Prop :=
  ∀ n, (P11182623615523874096.a n : ℤ) = A000969 n

theorem P11182623615523874096.correct : P11182623615523874096.Spec := by
  intro n
  simp only [A000969]

end A000969

/-! ## A000969.P1840527194949156976

`∑[floor(4*(n+1)/3)]`
-/

namespace A000969.P1840527194949156976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n + 1 : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000969.P1840527194949156976

namespace A000969

/-- `∑[floor(4*(n+1)/3)]` -/
def P1840527194949156976.Spec : Prop :=
  ∀ n, P1840527194949156976.a n = A000969 n

end A000969

/-! ## A000969.P10835911433018620607

`floor(C(2*n+3, 2)/3)`
-/

namespace A000969.P10835911433018620607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 3) 2 : ℚ) / 3⌋

end

end A000969.P10835911433018620607

namespace A000969

/-- `floor(C(2*n+3, 2)/3)` -/
def P10835911433018620607.Spec : Prop :=
  ∀ n, P10835911433018620607.a n = A000969 n

end A000969

/-! ## A000969.P10491146518458576096

`round(C(2*n+3, 2)/3)`
-/

namespace A000969.P10491146518458576096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 3) 2 : ℚ) / 3)

end

end A000969.P10491146518458576096

namespace A000969

/-- `round(C(2*n+3, 2)/3)` -/
def P10491146518458576096.Spec : Prop :=
  ∀ n, P10491146518458576096.a n = A000969 n

end A000969

/-! ## A000969.P14246686800641298375

`floor(∑[a(n-3)+4])` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A000969.P14246686800641298375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000969.P14246686800641298375

namespace A000969

/-- `floor(∑[a(n-3)+4])` -/
def P14246686800641298375.Spec : Prop :=
  ∀ n, (P14246686800641298375.a n : ℤ) = A000969 n

end A000969

/-! ## A000969.P8892048551555214662

`∑[record[and(n+3, n+6)]]/2`
-/

namespace A000969.P8892048551555214662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 3) (n + 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000969.P8892048551555214662

namespace A000969

/-- `∑[record[and(n+3, n+6)]]/2` -/
def P8892048551555214662.Spec : Prop :=
  ∀ n, P8892048551555214662.a n = (A000969 n : ℚ)

end A000969

/-! ## A000969.P13350833233680205181

`∑[a(n-3)+8]/2` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A000969.P13350833233680205181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000969.P13350833233680205181

namespace A000969

/-- `∑[a(n-3)+8]/2` -/
def P13350833233680205181.Spec : Prop :=
  ∀ n, P13350833233680205181.a n = (A000969 n : ℚ)

end A000969

/-! ## A000969.P1218823763804967970

`∑[∑[floor(a(n-3))]]/2` with `a(0)=2, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A000969.P1218823763804967970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000969.P1218823763804967970

namespace A000969

/-- `∑[∑[floor(a(n-3))]]/2` -/
def P1218823763804967970.Spec : Prop :=
  ∀ n, P1218823763804967970.a n = (A000969 n : ℚ)

end A000969

/-! ## A000969.P5798311205012609239

`floor(lcm(2*n+3, n+1)/3)`
-/

namespace A000969.P5798311205012609239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 3) (n + 1) : ℚ) / 3⌋

end

end A000969.P5798311205012609239

namespace A000969

/-- `floor(lcm(2*n+3, n+1)/3)` -/
def P5798311205012609239.Spec : Prop :=
  ∀ n, P5798311205012609239.a n = A000969 n

end A000969

/-! ## A000969.P11847443870901117138

`ceil((n+2)*or(1, 2*n)/3)`
-/

namespace A000969.P11847443870901117138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * ((Nat.lor 1 (2 * n) : ℚ) / 3)⌉

end

end A000969.P11847443870901117138

namespace A000969

/-- `ceil((n+2)*or(1, 2*n)/3)` -/
def P11847443870901117138.Spec : Prop :=
  ∀ n, P11847443870901117138.a n = A000969 n

end A000969

/-! ## A000969.P1169957450322427004

`round((n+2)*or(1, 2*n)/3)`
-/

namespace A000969.P1169957450322427004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.lor 1 (2 * n) : ℚ) / 3))

end

end A000969.P1169957450322427004

namespace A000969

/-- `round((n+2)*or(1, 2*n)/3)` -/
def P1169957450322427004.Spec : Prop :=
  ∀ n, P1169957450322427004.a n = A000969 n

end A000969

/-! ## A000969.P17373243110940033631

`ceil((n+2)*xor(1, 2*n)/3)`
-/

namespace A000969.P17373243110940033631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * ((Nat.xor 1 (2 * n) : ℚ) / 3)⌉

end

end A000969.P17373243110940033631

namespace A000969

/-- `ceil((n+2)*xor(1, 2*n)/3)` -/
def P17373243110940033631.Spec : Prop :=
  ∀ n, P17373243110940033631.a n = A000969 n

end A000969

/-! ## A000969.P8673766847850620661

`round((n+2)*xor(1, 2*n)/3)`
-/

namespace A000969.P8673766847850620661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.xor 1 (2 * n) : ℚ) / 3))

end

end A000969.P8673766847850620661

namespace A000969

/-- `round((n+2)*xor(1, 2*n)/3)` -/
def P8673766847850620661.Spec : Prop :=
  ∀ n, P8673766847850620661.a n = A000969 n

end A000969

/-! ## A000969.P18021277932191627578

`∑[a(n-3)+4]+1` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A000969.P18021277932191627578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 5] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000969.P18021277932191627578

namespace A000969

/-- `∑[a(n-3)+4]+1` -/
def P18021277932191627578.Spec : Prop :=
  ∀ n, (P18021277932191627578.a n : ℤ) = A000969 n

end A000969

/-! ## A000969.P12595409341122761415

`floor((2*n+1)/sin(3/(n+2)))`
-/

namespace A000969.P12595409341122761415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.sin (3 / (n + 2 : ℚ) : ℝ)⌋

end

end A000969.P12595409341122761415

namespace A000969

/-- `floor((2*n+1)/sin(3/(n+2)))` -/
def P12595409341122761415.Spec : Prop :=
  ∀ n, P12595409341122761415.a n = A000969 n

end A000969

/-! ## A000969.P8803716098889550187

`floor((n+2)/atan(3/(2*n+1)))`
-/

namespace A000969.P8803716098889550187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.arctan (3 / (2 * n + 1 : ℚ) : ℝ)⌋

end

end A000969.P8803716098889550187

namespace A000969

/-- `floor((n+2)/atan(3/(2*n+1)))` -/
def P8803716098889550187.Spec : Prop :=
  ∀ n, P8803716098889550187.a n = A000969 n

end A000969

/-! ## A000969.P9882165817574520090

`ceil((n+2)/sinh(3/(2*n+1)))`
-/

namespace A000969.P9882165817574520090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.sinh (3 / (2 * n + 1 : ℚ) : ℝ)⌉

end

end A000969.P9882165817574520090

namespace A000969

/-- `ceil((n+2)/sinh(3/(2*n+1)))` -/
def P9882165817574520090.Spec : Prop :=
  ∀ n, P9882165817574520090.a n = A000969 n

end A000969

/-! ## A000969.P1227828051790379597

`ceil(cot(3/((2*n+1)*(n+2))))`
-/

namespace A000969.P1227828051790379597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / ((2 * n + 1) * (n + 2) : ℚ) : ℝ)⌉

end

end A000969.P1227828051790379597

namespace A000969

/-- `ceil(cot(3/((2*n+1)*(n+2))))` -/
def P1227828051790379597.Spec : Prop :=
  ∀ n, P1227828051790379597.a n = A000969 n

end A000969

/-!
# A000970: Fermat coefficients.

The programs for A000970, the canonical program `A000970.P12965075946862909208` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000970 has offset 5).

The definition of A000970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000970.P12965075946862909208

`floor(C(2*n+5, 4)/5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000970

/-- `floor(C(2*n+5, 4)/5)` -/
def P12965075946862909208.Spec : Prop :=
  ∀ n, P12965075946862909208.a n = A000970 (n + 5)

theorem P12965075946862909208.correct : P12965075946862909208.Spec := by
  intro n
  simp only [A000970, Nat.add_sub_cancel]

end A000970

/-! ## A000970.P16372133000888820390

`round(C(2*n+5, 4)/5)`
-/

namespace A000970.P16372133000888820390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 5) 4 : ℚ) / 5)

end

end A000970.P16372133000888820390

namespace A000970

/-- `round(C(2*n+5, 4)/5)` -/
def P16372133000888820390.Spec : Prop :=
  ∀ n, P16372133000888820390.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P8786714198902262843

`floor(∑[∑[(4*n+3)²+1]]/10)`
-/

namespace A000970.P8786714198902262843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 3) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌋

end

end A000970.P8786714198902262843

namespace A000970

/-- `floor(∑[∑[(4*n+3)²+1]]/10)` -/
def P8786714198902262843.Spec : Prop :=
  ∀ n, P8786714198902262843.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P11395624464679369821

`round(A053126(n+4)/5)`
-/

namespace A000970.P11395624464679369821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053126 (n + 4) : ℚ) / 5)

end

end A000970.P11395624464679369821

namespace A000970

/-- `round(A053126(n+4)/5)` -/
def P11395624464679369821.Spec : Prop :=
  ∀ n, P11395624464679369821.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P15943755856002444897

`A051170(2*(n+3))`
-/

namespace A000970.P15943755856002444897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051170 (2 * (n + 3))

end

end A000970.P15943755856002444897

namespace A000970

/-- `A051170(2*(n+3))` -/
def P15943755856002444897.Spec : Prop :=
  ∀ n, P15943755856002444897.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P14255179170967466232

`∑[∑[∑[A047501(2*n+1)]]]`
-/

namespace A000970.P14255179170967466232
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000970.P14255179170967466232

namespace A000970

/-- `∑[∑[∑[A047501(2*n+1)]]]` -/
def P14255179170967466232.Spec : Prop :=
  ∀ n, P14255179170967466232.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P7566777100718038166

`A050190(2*(n+3))/(2*(n+3))`
-/

namespace A000970.P7566777100718038166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050190 (2 * (n + 3)) : ℚ) / (2 * (n + 3) : ℚ)

end

end A000970.P7566777100718038166

namespace A000970

/-- `A050190(2*(n+3))/(2*(n+3))` -/
def P7566777100718038166.Spec : Prop :=
  ∀ n, P7566777100718038166.a n = (A000970 (n + 5) : ℚ)

end A000970

/-! ## A000970.P7815100916683084754

`A008646(2*n+1)-A079998(n+3)`
-/

namespace A000970.P7815100916683084754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 (2 * n + 1) - A079998 (n + 3)

end

end A000970.P7815100916683084754

namespace A000970

/-- `A008646(2*n+1)-A079998(n+3)` -/
def P7815100916683084754.Spec : Prop :=
  ∀ n, P7815100916683084754.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P18252730156206271785

`∑[A173690(2*(n+1))]`
-/

namespace A000970.P18252730156206271785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000970.P18252730156206271785

namespace A000970

/-- `∑[A173690(2*(n+1))]` -/
def P18252730156206271785.Spec : Prop :=
  ∀ n, P18252730156206271785.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P6605640852515950700

`A011795(2*n+5)`
-/

namespace A000970.P6605640852515950700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (2 * n + 5)

end

end A000970.P6605640852515950700

namespace A000970

/-- `A011795(2*n+5)` -/
def P6605640852515950700.Spec : Prop :=
  ∀ n, P6605640852515950700.a n = A000970 (n + 5)

end A000970

/-! ## A000970.P3769698123851241703

`A378248(6*n)`
-/

namespace A000970.P3769698123851241703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378248 (6 * n)

end

end A000970.P3769698123851241703

namespace A000970

/-- `A378248(6*n)` -/
def P3769698123851241703.Spec : Prop :=
  ∀ n, P3769698123851241703.a n = A000970 (n + 5)

end A000970

/-!
# A000971: Fermat coefficients.

The programs for A000971, the canonical program `A000971.P16288018780486554196` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000971 has offset 6).

The definition of A000971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000971.P16288018780486554196

`∑[round(∑[(n+1)²]²/∑[n+1])]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000971

/-- `∑[round(∑[(n+1)²]²/∑[n+1])]` -/
def P16288018780486554196.Spec : Prop :=
  ∀ n, P16288018780486554196.a n = A000971 (n + 6)

theorem P16288018780486554196.correct : P16288018780486554196.Spec := by
  intro n
  simp only [A000971, Nat.add_sub_cancel]

end A000971

/-! ## A000971.P7533492998057268927

`round(C(2*(n+3), 2*n)/(2*n+1))`
-/

namespace A000971.P7533492998057268927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * (n + 3)) (2 * n) : ℚ) / (2 * n + 1 : ℚ))

end

end A000971.P7533492998057268927

namespace A000971

/-- `round(C(2*(n+3), 2*n)/(2*n+1))` -/
def P7533492998057268927.Spec : Prop :=
  ∀ n, P7533492998057268927.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P12341146330815813526

`round(A053132(n+5)/3)`
-/

namespace A000971.P12341146330815813526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053132 (n + 5) : ℚ) / 3)

end

end A000971.P12341146330815813526

namespace A000971

/-- `round(A053132(n+5)/3)` -/
def P12341146330815813526.Spec : Prop :=
  ∀ n, P12341146330815813526.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P10276083447581436893

`round(A053127(n+5)/6)`
-/

namespace A000971.P10276083447581436893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053127 (n + 5) : ℚ) / 6)

end

end A000971.P10276083447581436893

namespace A000971

/-- `round(A053127(n+5)/6)` -/
def P10276083447581436893.Spec : Prop :=
  ∀ n, P10276083447581436893.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P3991015695832053298

`round(A053135(n)/(2*n+1))`
-/

namespace A000971.P3991015695832053298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053135 n : ℚ) / (2 * n + 1 : ℚ))

end

end A000971.P3991015695832053298

namespace A000971

/-- `round(A053135(n)/(2*n+1))` -/
def P3991015695832053298.Spec : Prop :=
  ∀ n, P3991015695832053298.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P1788475707944141770

`round(A005995(2*n+1)/3)`
-/

namespace A000971.P1788475707944141770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005995 (2 * n + 1) : ℚ) / 3)

end

end A000971.P1788475707944141770

namespace A000971

/-- `round(A005995(2*n+1)/3)` -/
def P1788475707944141770.Spec : Prop :=
  ∀ n, P1788475707944141770.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P11668713751995065295

`round(A282081(2*n+1)/3)`
-/

namespace A000971.P11668713751995065295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A282081 (2 * n + 1) : ℚ) / 3)

end

end A000971.P11668713751995065295

namespace A000971

/-- `round(A282081(2*n+1)/3)` -/
def P11668713751995065295.Spec : Prop :=
  ∀ n, P11668713751995065295.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P8206222855573556993

`ceil(A166808(2*n+1)/6)`
-/

namespace A000971.P8206222855573556993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166808 (2 * n + 1) : ℚ) / 6⌉

end

end A000971.P8206222855573556993

namespace A000971

/-- `ceil(A166808(2*n+1)/6)` -/
def P8206222855573556993.Spec : Prop :=
  ∀ n, P8206222855573556993.a n = A000971 (n + 6)

end A000971

/-! ## A000971.P11242985320957004150

`round(A032092(2*n+7)/3)`
-/

namespace A000971.P11242985320957004150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032092 (2 * n + 7) : ℚ) / 3)

end

end A000971.P11242985320957004150

namespace A000971

/-- `round(A032092(2*n+7)/3)` -/
def P11242985320957004150.Spec : Prop :=
  ∀ n, P11242985320957004150.a n = A000971 (n + 6)

end A000971

/-!
# A000972: Fermat coefficients.

The programs for A000972, the canonical program `A000972.P17688761204794278859` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000972 has offset 7).

The definition of A000972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000972.P17688761204794278859

`floor(C(2*n+7, 2*n)/(2*n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000972

/-- `floor(C(2*n+7, 2*n)/(2*n+1))` -/
def P17688761204794278859.Spec : Prop :=
  ∀ n, P17688761204794278859.a n = A000972 (n + 7)

theorem P17688761204794278859.correct : P17688761204794278859.Spec := by
  intro n
  simp only [A000972, Nat.add_sub_cancel]

end A000972

/-! ## A000972.P2836241717852965072

`floor(A053128(n+6)/7)`
-/

namespace A000972.P2836241717852965072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053128 (n + 6) : ℚ) / 7⌋

end

end A000972.P2836241717852965072

namespace A000972

/-- `floor(A053128(n+6)/7)` -/
def P2836241717852965072.Spec : Prop :=
  ∀ n, P2836241717852965072.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P1344413635217490016

`floor(A053136(n)/A005408(n))`
-/

namespace A000972.P1344413635217490016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053136 n : ℚ) / (A005408 n : ℚ)⌋

end

end A000972.P1344413635217490016

namespace A000972

/-- `floor(A053136(n)/A005408(n))` -/
def P1344413635217490016.Spec : Prop :=
  ∀ n, P1344413635217490016.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P16724267225097793189

`A051172(2*(n+4))`
-/

namespace A000972.P16724267225097793189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051172 (2 * (n + 4))

end

end A000972.P16724267225097793189

namespace A000972

/-- `A051172(2*(n+4))` -/
def P16724267225097793189.Spec : Prop :=
  ∀ n, P16724267225097793189.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P3855224555098729339

`A051192(2*(n+4))/(2*(n+4))`
-/

namespace A000972.P3855224555098729339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051192 (2 * (n + 4)) : ℚ) / (2 * (n + 4) : ℚ)

end

end A000972.P3855224555098729339

namespace A000972

/-- `A051192(2*(n+4))/(2*(n+4))` -/
def P3855224555098729339.Spec : Prop :=
  ∀ n, P3855224555098729339.a n = (A000972 (n + 7) : ℚ)

end A000972

/-! ## A000972.P6131164628736080319

`floor(A000580(2*n+7)/(2*n+1))`
-/

namespace A000972.P6131164628736080319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000580 (2 * n + 7) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A000972.P6131164628736080319

namespace A000972

/-- `floor(A000580(2*n+7)/(2*n+1))` -/
def P6131164628736080319.Spec : Prop :=
  ∀ n, P6131164628736080319.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P8737299017886638175

`round(A000580(2*n+7)/A005408(n))`
-/

namespace A000972.P8737299017886638175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000580 (2 * n + 7) : ℚ) / (A005408 n : ℚ))

end

end A000972.P8737299017886638175

namespace A000972

/-- `round(A000580(2*n+7)/A005408(n))` -/
def P8737299017886638175.Spec : Prop :=
  ∀ n, P8737299017886638175.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P6747075576256475721

`A032192(2*(n+4))-A082784(n+4)`
-/

namespace A000972.P6747075576256475721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032192 (2 * (n + 4)) - A082784 (n + 4)

end

end A000972.P6747075576256475721

namespace A000972

/-- `A032192(2*(n+4))-A082784(n+4)` -/
def P6747075576256475721.Spec : Prop :=
  ∀ n, P6747075576256475721.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P10974783733252376498

`A011797(2*n+7)`
-/

namespace A000972.P10974783733252376498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011797 (2 * n + 7)

end

end A000972.P10974783733252376498

namespace A000972

/-- `A011797(2*n+7)` -/
def P10974783733252376498.Spec : Prop :=
  ∀ n, P10974783733252376498.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P14041358629952288869

`floor(A299338(4*n+2)/7)`
-/

namespace A000972.P14041358629952288869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299338 (4 * n + 2) : ℚ) / 7⌋

end

end A000972.P14041358629952288869

namespace A000972

/-- `floor(A299338(4*n+2)/7)` -/
def P14041358629952288869.Spec : Prop :=
  ∀ n, P14041358629952288869.a n = A000972 (n + 7)

end A000972

/-! ## A000972.P12110205671393408063

`round(A299338(A016825(n))/7)`
-/

namespace A000972.P12110205671393408063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A299338 (A016825 n).toNat : ℚ) / 7)

end

end A000972.P12110205671393408063

namespace A000972

/-- `round(A299338(A016825(n))/7)` -/
def P12110205671393408063.Spec : Prop :=
  ∀ n, P12110205671393408063.a n = A000972 (n + 7)

end A000972

/-!
# A000973: Fermat coefficients.

The programs for A000973, the canonical program `A000973.P4648763314423605707` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000973 has offset 8).

The definition of A000973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000973.P3848486688836888413

`C(2*(n+4), 7)/8`
-/

namespace A000973.P3848486688836888413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 4)) 7 : ℚ) / 8

end

end A000973.P3848486688836888413

namespace A000973

/-- `C(2*(n+4), 7)/8` -/
def P3848486688836888413.Spec : Prop :=
  ∀ n, P3848486688836888413.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P510753370389513950

`record[-(n+7)/n*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A000973.P510753370389513950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -((n + 7 : ℚ) / (n : ℚ) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000973.P510753370389513950

namespace A000973

/-- `record[-(n+7)/n*a(n-1)]` -/
def P510753370389513950.Spec : Prop :=
  ∀ n, P510753370389513950.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P4648763314423605707

`∑[∑[∑[(n+1)*∑[∑[4*n]+1]]]]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000973

/-- `∑[∑[∑[(n+1)*∑[∑[4*n]+1]]]]` -/
def P4648763314423605707.Spec : Prop :=
  ∀ n, (P4648763314423605707.a n : ℤ) = A000973 (n + 8)

theorem P4648763314423605707.correct : P4648763314423605707.Spec := by
  intro n
  simp only [A000973, Nat.add_sub_cancel]

end A000973

/-! ## A000973.P14251316200895581158

`A053129(n+7)/8`
-/

namespace A000973.P14251316200895581158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053129 (n + 7) : ℚ) / 8

end

end A000973.P14251316200895581158

namespace A000973

/-- `A053129(n+7)/8` -/
def P14251316200895581158.Spec : Prop :=
  ∀ n, P14251316200895581158.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P6251973901898851534

`A053137(n)/Δ[n²]`
-/

namespace A000973.P6251973901898851534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053137 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A000973.P6251973901898851534

namespace A000973

/-- `A053137(n)/Δ[n²]` -/
def P6251973901898851534.Spec : Prop :=
  ∀ n, P6251973901898851534.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P4795009936203929447

`gcd(A053129(n+7), A053137(n))`
-/

namespace A000973.P4795009936203929447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053129 (n + 7)) (A053137 n)

end

end A000973.P4795009936203929447

namespace A000973

/-- `gcd(A053129(n+7), A053137(n))` -/
def P4795009936203929447.Spec : Prop :=
  ∀ n, (P4795009936203929447.a n : ℤ) = A000973 (n + 8)

end A000973

/-! ## A000973.P14567776162338702229

`∑[2*A060103(n)]-A060103(n)`
-/

namespace A000973.P14567776162338702229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060103 n

end

end A000973.P14567776162338702229

namespace A000973

/-- `∑[2*A060103(n)]-A060103(n)` -/
def P14567776162338702229.Spec : Prop :=
  ∀ n, P14567776162338702229.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P1047984156438800682

`A006858(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A000973.P1047984156438800682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006858 (n + 1) + a (n - 1)

end

end A000973.P1047984156438800682

namespace A000973

/-- `A006858(n+1)+a(n-1)` -/
def P1047984156438800682.Spec : Prop :=
  ∀ n, P1047984156438800682.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P18061833415941600148

`A000330(n+1)/A006858(n+1)*A091962(n+1)`
-/

namespace A000973.P18061833415941600148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) : ℚ) / (A006858 (n + 1) : ℚ) * (A091962 (n + 1) : ℚ)

end

end A000973.P18061833415941600148

namespace A000973

/-- `A000330(n+1)/A006858(n+1)*A091962(n+1)` -/
def P18061833415941600148.Spec : Prop :=
  ∀ n, P18061833415941600148.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P10457609777265160751

`A056003(2*n)/(2*n+1)²`
-/

namespace A000973.P10457609777265160751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056003 (2 * n) : ℚ) / ((2 * n + 1) ^ 2 : ℚ)

end

end A000973.P10457609777265160751

namespace A000973

/-- `A056003(2*n)/(2*n+1)²` -/
def P10457609777265160751.Spec : Prop :=
  ∀ n, P10457609777265160751.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P16426514883146800777

`A031164(2*n)`
-/

namespace A000973.P16426514883146800777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031164 (2 * n)

end

end A000973.P16426514883146800777

namespace A000973

/-- `A031164(2*n)` -/
def P16426514883146800777.Spec : Prop :=
  ∀ n, P16426514883146800777.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P9571337299024200958

`A362906(Δ[n²])`
-/

namespace A000973.P9571337299024200958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362906 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000973.P9571337299024200958

namespace A000973

/-- `A362906(Δ[n²])` -/
def P9571337299024200958.Spec : Prop :=
  ∀ n, P9571337299024200958.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P16406251499911940242

`A059251(2*(n+1))`
-/

namespace A000973.P16406251499911940242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059251 (2 * (n + 1))

end

end A000973.P16406251499911940242

namespace A000973

/-- `A059251(2*(n+1))` -/
def P16406251499911940242.Spec : Prop :=
  ∀ n, P16406251499911940242.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P9743017859555082363

`A032193(2*n+9)`
-/

namespace A000973.P9743017859555082363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032193 (2 * n + 9)

end

end A000973.P9743017859555082363

namespace A000973

/-- `A032193(2*n+9)` -/
def P9743017859555082363.Spec : Prop :=
  ∀ n, P9743017859555082363.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P15538619286308427457

`A381291(2*n+9)`
-/

namespace A000973.P15538619286308427457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381291 (2 * n + 9)

end

end A000973.P15538619286308427457

namespace A000973

/-- `A381291(2*n+9)` -/
def P15538619286308427457.Spec : Prop :=
  ∀ n, P15538619286308427457.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P7434852690046272448

`A381350(2*n+9)`
-/

namespace A000973.P7434852690046272448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381350 (2 * n + 9)

end

end A000973.P7434852690046272448

namespace A000973

/-- `A381350(2*n+9)` -/
def P7434852690046272448.Spec : Prop :=
  ∀ n, P7434852690046272448.a n = A000973 (n + 8)

end A000973

/-! ## A000973.P7842379808403665699

`A018211(2*n+1)/4`
-/

namespace A000973.P7842379808403665699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018211 (2 * n + 1) : ℚ) / 4

end

end A000973.P7842379808403665699

namespace A000973

/-- `A018211(2*n+1)/4` -/
def P7842379808403665699.Spec : Prop :=
  ∀ n, P7842379808403665699.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P2479742609283923193

`A282083(2*n+1)/4`
-/

namespace A000973.P2479742609283923193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282083 (2 * n + 1) : ℚ) / 4

end

end A000973.P2479742609283923193

namespace A000973

/-- `A282083(2*n+1)/4` -/
def P2479742609283923193.Spec : Prop :=
  ∀ n, P2479742609283923193.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P3176935747146103313

`A000580(2*(n+4))/8`
-/

namespace A000973.P3176935747146103313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (2 * (n + 4)) : ℚ) / 8

end

end A000973.P3176935747146103313

namespace A000973

/-- `A000580(2*(n+4))/8` -/
def P3176935747146103313.Spec : Prop :=
  ∀ n, P3176935747146103313.a n = (A000973 (n + 8) : ℚ)

end A000973

/-! ## A000973.P3074604671813675952

`A032094(2*n+9)/4`
-/

namespace A000973.P3074604671813675952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032094 (2 * n + 9) : ℚ) / 4

end

end A000973.P3074604671813675952

namespace A000973

/-- `A032094(2*n+9)/4` -/
def P3074604671813675952.Spec : Prop :=
  ∀ n, P3074604671813675952.a n = (A000973 (n + 8) : ℚ)

end A000973

/-!
# A000974: Conjecturally the number of even integers the sum of two primes in exactly n ways.

The programs for A000974, there is no canonical definition to state claims against.
-/

/-! ## A000974.P16786486525320604580

`A229492(n)-A240352(n)`
-/

namespace A000974.P16786486525320604580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A240352 n

end

end A000974.P16786486525320604580

/-! ## A000974.P4391169187294353546

`A229492(n)-A240354(n)`
-/

namespace A000974.P4391169187294353546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A240354 n

end

end A000974.P4391169187294353546

/-! ## A000974.P2052585636334346170

`A229492(n)-A240356(n)`
-/

namespace A000974.P2052585636334346170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A240356 n

end

end A000974.P2052585636334346170

/-! ## A000974.P3276330936063210837

`A229492(n)-A154955(n+1)`
-/

namespace A000974.P3276330936063210837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A154955 (n + 1)

end

end A000974.P3276330936063210837

/-! ## A000974.P11042112062470446362

`A229492(n)-A008683(A004166(n))`
-/

namespace A000974.P11042112062470446362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A008683 (A004166 n).toNat

end

end A000974.P11042112062470446362

/-! ## A000974.P13119139151490573015

`A229492(n)-A008683(A006501(n))`
-/

namespace A000974.P13119139151490573015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A008683 (A006501 n).toNat

end

end A000974.P13119139151490573015

/-! ## A000974.P7263854165667106517

`A229492(n)-A008683(A062383(n))`
-/

namespace A000974.P7263854165667106517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A008683 (A062383 n).toNat

end

end A000974.P7263854165667106517

/-! ## A000974.P10986824188988195091

`A229492(n)-A008683(A118029(n))`
-/

namespace A000974.P10986824188988195091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A008683 (A118029 n).toNat

end

end A000974.P10986824188988195091

/-! ## A000974.P4380938228334445560

`A229492(n)-A008683(A069050(n+1))`
-/

namespace A000974.P4380938228334445560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229492 n - A008683 (A069050 (n + 1)).toNat

end

end A000974.P4380938228334445560

/-!
# A000975: a(2n) = 2*a(2n-1), a(2n+1) = 2*a(2n)+1 (also a(n) is the n-th number without consecutive equal binary digits).

The programs for A000975, the canonical program `A000975.P9032410233494570423` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000975 has offset 0).

The definition of A000975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000975.P9032410233494570423

`ceil(2*(2^n-1)/3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000975

/-- `ceil(2*(2^n-1)/3)` -/
def P9032410233494570423.Spec : Prop :=
  ∀ n, P9032410233494570423.a n = A000975 n

theorem P9032410233494570423.correct : P9032410233494570423.Spec := by
  intro n
  simp only [A000975]

end A000975

/-! ## A000975.P15567335857656957537

`a(n-2)+2^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A000975.P15567335857656957537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A000975.P15567335857656957537

namespace A000975

/-- `a(n-2)+2^(n-1)` -/
def P15567335857656957537.Spec : Prop :=
  ∀ n, P15567335857656957537.a n = (A000975 n : ℚ)

end A000975

/-! ## A000975.P3291628355293464447

`a(n-1)+2*a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A000975.P3291628355293464447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 1

end

end A000975.P3291628355293464447

namespace A000975

/-- `a(n-1)+2*a(n-2)+1` -/
def P3291628355293464447.Spec : Prop :=
  ∀ n, (P3291628355293464447.a n : ℤ) = A000975 n

end A000975

/-! ## A000975.P12270791274512312953

`A005578(n+1)-1`
-/

namespace A000975.P12270791274512312953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) - 1

end

end A000975.P12270791274512312953

namespace A000975

/-- `A005578(n+1)-1` -/
def P12270791274512312953.Spec : Prop :=
  ∀ n, P12270791274512312953.a n = A000975 n

end A000975

/-! ## A000975.P3087323987990921532

`A001045(n+1)-A059841(n)`
-/

namespace A000975.P3087323987990921532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A059841 n

end

end A000975.P3087323987990921532

namespace A000975

/-- `A001045(n+1)-A059841(n)` -/
def P3087323987990921532.Spec : Prop :=
  ∀ n, P3087323987990921532.a n = A000975 n

end A000975

/-! ## A000975.P1075073109310951883

`floor(A051049(n+1)/3)`
-/

namespace A000975.P1075073109310951883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051049 (n + 1) : ℚ) / 3⌋

end

end A000975.P1075073109310951883

namespace A000975

/-- `floor(A051049(n+1)/3)` -/
def P1075073109310951883.Spec : Prop :=
  ∀ n, P1075073109310951883.a n = A000975 n

end A000975

/-! ## A000975.P6075237941345760308

`A081254(n+1)-2^n`
-/

namespace A000975.P6075237941345760308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 1) - (2 ^ n : ℤ)

end

end A000975.P6075237941345760308

namespace A000975

/-- `A081254(n+1)-2^n` -/
def P6075237941345760308.Spec : Prop :=
  ∀ n, P6075237941345760308.a n = A000975 n

end A000975

/-! ## A000975.P7924507554038593146

`A153772(n+3)/4`
-/

namespace A000975.P7924507554038593146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153772 (n + 3) : ℚ) / 4

end

end A000975.P7924507554038593146

namespace A000975

/-- `A153772(n+3)/4` -/
def P7924507554038593146.Spec : Prop :=
  ∀ n, P7924507554038593146.a n = (A000975 n : ℚ)

end A000975

/-!
# A000976: Period of 1/n! in base 10.

The programs for A000976, there is no canonical definition to state claims against.
-/

/-! ## A000976.P1800554087011057246

`A051626(∏[dr(A097706(n+1))])`
-/

namespace A000976.P1800554087011057246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097706 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000976.P1800554087011057246

/-! ## A000976.P3259827489882014581

`A051626(∏[dr(A248101(n+1))])`
-/

namespace A000976.P3259827489882014581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A248101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000976.P3259827489882014581

/-! ## A000976.P17242163594610654660

`A051626(∏[A248101(n+1)])`
-/

namespace A000976.P17242163594610654660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000976.P17242163594610654660

/-! ## A000976.P7175882247681693064

`A051626(∏[dr(A132740(n+1))])`
-/

namespace A000976.P7175882247681693064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A132740 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000976.P7175882247681693064

/-! ## A000976.P13745415583300472851

`A051626(∏[dr(A173478(n+1))])`
-/

namespace A000976.P13745415583300472851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A173478 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000976.P13745415583300472851

/-!
# A000977: Numbers that are divisible by at least three different primes.

The programs for A000977, the canonical program `A000977.P17233491019449324668` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000977 has offset 1).

The definition of A000977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000977.P9215397438277642077

`lt[2, A001221(n+1)]+1`
-/

namespace A000977.P9215397438277642077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P9215397438277642077

namespace A000977

/-- `lt[2, A001221(n+1)]+1` -/
def P9215397438277642077.Spec : Prop :=
  ∀ n, (P9215397438277642077.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P6834155808585234982

`lt[2, A001221(gcd(n, C(2, n)))]`
-/

namespace A000977.P6834155808585234982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000977.P6834155808585234982

namespace A000977

/-- `lt[2, A001221(gcd(n, C(2, n)))]` -/
def P6834155808585234982.Spec : Prop :=
  ∀ n, (P6834155808585234982.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P5359720066590244341

`eq[2, 2%A001221(n+2)]+2`
-/

namespace A000977.P5359720066590244341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A001221 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A000977.P5359720066590244341

namespace A000977

/-- `eq[2, 2%A001221(n+2)]+2` -/
def P5359720066590244341.Spec : Prop :=
  ∀ n, (P5359720066590244341.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P12306144351606103667

`lt[2, A001222(A007947(n+1))]+1`
-/

namespace A000977.P12306144351606103667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P12306144351606103667

namespace A000977

/-- `lt[2, A001222(A007947(n+1))]+1` -/
def P12306144351606103667.Spec : Prop :=
  ∀ n, (P12306144351606103667.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P17233491019449324668

`lt[2, A259936(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000977

/-- `lt[2, A259936(n+1)]+1` -/
def P17233491019449324668.Spec : Prop :=
  ∀ n, (P17233491019449324668.a n : ℤ) = A000977 (n + 1)

theorem P17233491019449324668.correct : P17233491019449324668.Spec := by
  intro n
  simp only [A000977, Nat.add_sub_cancel]

end A000977

/-! ## A000977.P4174346049212561245

`lt[1, A297155(n+1)]+1`
-/

namespace A000977.P4174346049212561245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P4174346049212561245

namespace A000977

/-- `lt[1, A297155(n+1)]+1` -/
def P4174346049212561245.Spec : Prop :=
  ∀ n, (P4174346049212561245.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P8592913263658231933

`lt[1, A062513(n+1)]+1`
-/

namespace A000977.P8592913263658231933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P8592913263658231933

namespace A000977

/-- `lt[1, A062513(n+1)]+1` -/
def P8592913263658231933.Spec : Prop :=
  ∀ n, (P8592913263658231933.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P16022562471736612569

`lt[1, A081400(n+1)]+1`
-/

namespace A000977.P16022562471736612569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P16022562471736612569

namespace A000977

/-- `lt[1, A081400(n+1)]+1` -/
def P16022562471736612569.Spec : Prop :=
  ∀ n, (P16022562471736612569.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P10667038155557136713

`lt[2, A007875(n+1)]+1`
-/

namespace A000977.P10667038155557136713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P10667038155557136713

namespace A000977

/-- `lt[2, A007875(n+1)]+1` -/
def P10667038155557136713.Spec : Prop :=
  ∀ n, (P10667038155557136713.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P15700525866039579049

`lt[2, A333175(n+1)]+1`
-/

namespace A000977.P15700525866039579049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P15700525866039579049

namespace A000977

/-- `lt[2, A333175(n+1)]+1` -/
def P15700525866039579049.Spec : Prop :=
  ∀ n, (P15700525866039579049.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P18154446517675109378

`lt[2, A372192(n+1)]+1`
-/

namespace A000977.P18154446517675109378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P18154446517675109378

namespace A000977

/-- `lt[2, A372192(n+1)]+1` -/
def P18154446517675109378.Spec : Prop :=
  ∀ n, (P18154446517675109378.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P17536813235703681317

`lt[A158377(n+1), n]+1`
-/

namespace A000977.P17536813235703681317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158377 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000977.P17536813235703681317

namespace A000977

/-- `lt[A158377(n+1), n]+1` -/
def P17536813235703681317.Spec : Prop :=
  ∀ n, (P17536813235703681317.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P9227338174475739273

`lt[A304233(n+1), n]+1`
-/

namespace A000977.P9227338174475739273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304233 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000977.P9227338174475739273

namespace A000977

/-- `lt[A304233(n+1), n]+1` -/
def P9227338174475739273.Spec : Prop :=
  ∀ n, (P9227338174475739273.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P10804537788222922821

`eq[5, 5%A034444(n+1)]+1`
-/

namespace A000977.P10804537788222922821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A034444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000977.P10804537788222922821

namespace A000977

/-- `eq[5, 5%A034444(n+1)]+1` -/
def P10804537788222922821.Spec : Prop :=
  ∀ n, (P10804537788222922821.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P5403419457600408764

`lt[1, A062513(A028310(n))]`
-/

namespace A000977.P5403419457600408764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000977.P5403419457600408764

namespace A000977

/-- `lt[1, A062513(A028310(n))]` -/
def P5403419457600408764.Spec : Prop :=
  ∀ n, (P5403419457600408764.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P98185230278636472

`lt[2, A001221(A257088(n))]`
-/

namespace A000977.P98185230278636472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000977.P98185230278636472

namespace A000977

/-- `lt[2, A001221(A257088(n))]` -/
def P98185230278636472.Spec : Prop :=
  ∀ n, (P98185230278636472.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P16827666052451926849

`lt[A092976(n), A066882(n)²]`
-/

namespace A000977.P16827666052451926849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000977.P16827666052451926849

namespace A000977

/-- `lt[A092976(n), A066882(n)²]` -/
def P16827666052451926849.Spec : Prop :=
  ∀ n, (P16827666052451926849.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P11015456936710197052

`lt[2, A001221(A055456(n+1))]`
-/

namespace A000977.P11015456936710197052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000977.P11015456936710197052

namespace A000977

/-- `lt[2, A001221(A055456(n+1))]` -/
def P11015456936710197052.Spec : Prop :=
  ∀ n, (P11015456936710197052.a n : ℤ) = A000977 (n + 1)

end A000977

/-! ## A000977.P8346085483265265849

`lt[A002265(n)+1, A066882(n)]`
-/

namespace A000977.P8346085483265265849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000977.P8346085483265265849

namespace A000977

/-- `lt[A002265(n)+1, A066882(n)]` -/
def P8346085483265265849.Spec : Prop :=
  ∀ n, (P8346085483265265849.a n : ℤ) = A000977 (n + 1)

end A000977

/-!
# A000978: Wagstaff numbers: numbers k such that (2^k + 1)/3 is prime.

The programs for A000978, there is no canonical definition to state claims against.
-/

/-! ## A000978.P10287706986037132202

`A127965(n+1)+1`
-/

namespace A000978.P10287706986037132202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127965 (n + 1) + 1

end

end A000978.P10287706986037132202

/-! ## A000978.P12498462346755907366

`2*A127936(n+1)+1`
-/

namespace A000978.P12498462346755907366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127936 (n + 1) + 1

end

end A000978.P12498462346755907366

/-! ## A000978.P10457674836311659164

`2*A127963(n+1)-1`
-/

namespace A000978.P10457674836311659164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127963 (n + 1) - 1

end

end A000978.P10457674836311659164

/-! ## A000978.P14870008270405990715

`2*A127964(n+1)+3`
-/

namespace A000978.P14870008270405990715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127964 (n + 1) + 3

end

end A000978.P14870008270405990715

/-! ## A000978.P616473560936446961

`A107036(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A000978.P616473560936446961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A000978.P616473560936446961

/-!
# A000979: Wagstaff primes: primes of form (2^p + 1)/3.

The programs for A000979, there is no canonical definition to state claims against.
-/

/-! ## A000979.P16348867668047118404

`record[A360475(n+2)]`
-/

namespace A000979.P16348867668047118404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000979.P16348867668047118404

/-! ## A000979.P6996337855033029927

`record[A286567(2*n+3)]`
-/

namespace A000979.P6996337855033029927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000979.P6996337855033029927

/-! ## A000979.P2937075454672592766

`A001045(A000978(n+1))`
-/

namespace A000979.P2937075454672592766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A000978 (n + 1)).toNat

end

end A000979.P2937075454672592766

/-! ## A000979.P1382186540885203322

`A007583(A127936(n+1))`
-/

namespace A000979.P1382186540885203322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A127936 (n + 1)).toNat

end

end A000979.P1382186540885203322

/-! ## A000979.P10356978253777461439

`A077925(A127965(n+1))`
-/

namespace A000979.P10356978253777461439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (A127965 (n + 1)).toNat

end

end A000979.P10356978253777461439

/-!
# A000980: Number of ways of writing 0 as Sum_{k=-n..n} e(k)*k, where e(k) is 0 or 1.

The programs for A000980, there is no canonical definition to state claims against.
-/

/-! ## A000980.P13307094592808894897

`2*A047653(n)`
-/

namespace A000980.P13307094592808894897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047653 n

end

end A000980.P13307094592808894897

/-! ## A000980.P5613779842903811491

`2*A133406(2*n+1)`
-/

namespace A000980.P5613779842903811491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133406 (2 * n + 1)

end

end A000980.P5613779842903811491

/-! ## A000980.P14165734288552444504

`A004171(n)-2*A181765(n)`
-/

namespace A000980.P14165734288552444504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - 2 * A181765 n

end

end A000980.P14165734288552444504

/-! ## A000980.P10197776931448177597

`A222955(2*n+1)`
-/

namespace A000980.P10197776931448177597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (2 * n + 1)

end

end A000980.P10197776931448177597

/-! ## A000980.P6093546752753584706

`2*(A212352(n)+1)`
-/

namespace A000980.P6093546752753584706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212352 n + 1)

end

end A000980.P6093546752753584706

/-!
# A000982: a(n) = ceiling(n^2/2).

The programs for A000982, the canonical program `A000982.P7286196366017051516` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000982 has offset 0).

The definition of A000982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/2)` (program `A000982.P7286196366017051516`, by `A000982.P7286196366017051516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000982.P7286196366017051516

`ceil(n²/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000982

/-- `ceil(n²/2)` -/
def P7286196366017051516.Spec : Prop :=
  ∀ n, P7286196366017051516.a n = A000982 n

theorem P7286196366017051516.correct : P7286196366017051516.Spec := by
  intro n
  simp only [A000982]

end A000982

/-! ## A000982.P3985795488922718075

`a(n-2)+2*n-2` with `a(0)=0, a(1)=1`
-/

namespace A000982.P3985795488922718075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (2 * n : ℤ) - 2

end

end A000982.P3985795488922718075

namespace A000982

/-- `a(n-2)+2*n-2` -/
def P3985795488922718075.Spec : Prop :=
  ∀ n, P3985795488922718075.a n = A000982 n

end A000982

/-! ## A000982.P2973148013172322970

`a(n-1)+a(n-2)-a(n-3)+2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A000982.P2973148013172322970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + 2

end

end A000982.P2973148013172322970

namespace A000982

/-- `a(n-1)+a(n-2)-a(n-3)+2` -/
def P2973148013172322970.Spec : Prop :=
  ∀ n, P2973148013172322970.a n = A000982 n

end A000982

/-! ## A000982.P8950498044330427736

`A116940(n)-A005843(n)`
-/

namespace A000982.P8950498044330427736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 n - A005843 n

end

end A000982.P8950498044330427736

namespace A000982

/-- `A116940(n)-A005843(n)` -/
def P8950498044330427736.Spec : Prop :=
  ∀ n, P8950498044330427736.a n = A000982 n

end A000982

/-! ## A000982.P3656054542400071276

`1-∑[or(1, -n)]`
-/

namespace A000982.P3656054542400071276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000982.P3656054542400071276

namespace A000982

/-- `1-∑[or(1, -n)]` -/
def P3656054542400071276.Spec : Prop :=
  ∀ n, P3656054542400071276.a n = A000982 n

end A000982

/-! ## A000982.P2019224222459356679

`round(n/(2*acot(n)))`
-/

namespace A000982.P2019224222459356679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (2 * SequenceMachineLib.acot (n : ℝ)))

end

end A000982.P2019224222459356679

namespace A000982

/-- `round(n/(2*acot(n)))` -/
def P2019224222459356679.Spec : Prop :=
  ∀ n, P2019224222459356679.a n = A000982 n

end A000982

/-! ## A000982.P13270569579481961834

`n²-∑[and(n, -2)]`
-/

namespace A000982.P13270569579481961834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000982.P13270569579481961834

namespace A000982

/-- `n²-∑[and(n, -2)]` -/
def P13270569579481961834.Spec : Prop :=
  ∀ n, P13270569579481961834.a n = A000982 n

end A000982

/-! ## A000982.P5464616015164399260

`∑[or(1, n-1)]+1`
-/

namespace A000982.P5464616015164399260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000982.P5464616015164399260

namespace A000982

/-- `∑[or(1, n-1)]+1` -/
def P5464616015164399260.Spec : Prop :=
  ∀ n, P5464616015164399260.a n = A000982 n

end A000982

/-! ## A000982.P5764374015245148488

`(n%2+n²)/2`
-/

namespace A000982.P5764374015245148488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + n ^ 2 : ℕ) : ℚ) / 2

end

end A000982.P5764374015245148488

namespace A000982

/-- `(n%2+n²)/2` -/
def P5764374015245148488.Spec : Prop :=
  ∀ n, P5764374015245148488.a n = (A000982 n : ℚ)

end A000982

/-! ## A000982.P1163882509596882498

`(and(1, n)+n²)/2`
-/

namespace A000982.P1163882509596882498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + n ^ 2 : ℚ) / 2

end

end A000982.P1163882509596882498

namespace A000982

/-- `(and(1, n)+n²)/2` -/
def P1163882509596882498.Spec : Prop :=
  ∀ n, P1163882509596882498.a n = (A000982 n : ℚ)

end A000982

/-! ## A000982.P11760374261153177109

`ceil(n/2)+C(n, 2)`
-/

namespace A000982.P11760374261153177109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (Nat.choose n 2 : ℤ)

end

end A000982.P11760374261153177109

namespace A000982

/-- `ceil(n/2)+C(n, 2)` -/
def P11760374261153177109.Spec : Prop :=
  ∀ n, P11760374261153177109.a n = A000982 n

end A000982

/-! ## A000982.P1888196769235455180

`round(C(n, 2)+n/2)`
-/

namespace A000982.P1888196769235455180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) + (n : ℚ) / 2)

end

end A000982.P1888196769235455180

namespace A000982

/-- `round(C(n, 2)+n/2)` -/
def P1888196769235455180.Spec : Prop :=
  ∀ n, P1888196769235455180.a n = A000982 n

end A000982

/-! ## A000982.P12093690502139847037

`round(and(-3, n²)/2)`
-/

namespace A000982.P12093690502139847037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (-3) (n ^ 2 : ℤ) : ℚ) / 2)

end

end A000982.P12093690502139847037

namespace A000982

/-- `round(and(-3, n²)/2)` -/
def P12093690502139847037.Spec : Prop :=
  ∀ n, P12093690502139847037.a n = A000982 n

end A000982

/-! ## A000982.P17349195095641681026

`∑[-or(1, -n)]+1`
-/

namespace A000982.P17349195095641681026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000982.P17349195095641681026

namespace A000982

/-- `∑[-or(1, -n)]+1` -/
def P17349195095641681026.Spec : Prop :=
  ∀ n, P17349195095641681026.a n = A000982 n

end A000982

/-! ## A000982.P3286010817755825808

`floor(cos(1)+n²/2)`
-/

namespace A000982.P3286010817755825808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ)⌋

end

end A000982.P3286010817755825808

namespace A000982

/-- `floor(cos(1)+n²/2)` -/
def P3286010817755825808.Spec : Prop :=
  ∀ n, P3286010817755825808.a n = A000982 n

end A000982

/-! ## A000982.P16091118959473966929

`floor(sin(1)+n²/2)`
-/

namespace A000982.P16091118959473966929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ)⌋

end

end A000982.P16091118959473966929

namespace A000982

/-- `floor(sin(1)+n²/2)` -/
def P16091118959473966929.Spec : Prop :=
  ∀ n, P16091118959473966929.a n = A000982 n

end A000982

/-! ## A000982.P11206003149603531451

`round((cos(1)+n²)/2)`
-/

namespace A000982.P11206003149603531451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (1 : ℝ) + (n ^ 2 : ℝ)) / 2)

end

end A000982.P11206003149603531451

namespace A000982

/-- `round((cos(1)+n²)/2)` -/
def P11206003149603531451.Spec : Prop :=
  ∀ n, P11206003149603531451.a n = A000982 n

end A000982

/-! ## A000982.P13019043474999157590

`floor((tan(1)+n²)/2)`
-/

namespace A000982.P13019043474999157590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tan (1 : ℝ) + (n ^ 2 : ℝ)) / 2⌋

end

end A000982.P13019043474999157590

namespace A000982

/-- `floor((tan(1)+n²)/2)` -/
def P13019043474999157590.Spec : Prop :=
  ∀ n, P13019043474999157590.a n = A000982 n

end A000982

/-! ## A000982.P5087412377065785492

`round((sin(1)+n²)/2)`
-/

namespace A000982.P5087412377065785492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (1 : ℝ) + (n ^ 2 : ℝ)) / 2)

end

end A000982.P5087412377065785492

namespace A000982

/-- `round((sin(1)+n²)/2)` -/
def P5087412377065785492.Spec : Prop :=
  ∀ n, P5087412377065785492.a n = A000982 n

end A000982

/-! ## A000982.P10593442695458331680

`floor(n²/2-cos(3))`
-/

namespace A000982.P10593442695458331680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℚ) / 2 : ℝ) - Real.cos (3 : ℝ)⌋

end

end A000982.P10593442695458331680

namespace A000982

/-- `floor(n²/2-cos(3))` -/
def P10593442695458331680.Spec : Prop :=
  ∀ n, P10593442695458331680.a n = A000982 n

end A000982

/-!
# A000983: Size of minimal binary covering code of length n and covering radius 1.

The programs for A000983, there is no canonical definition to state claims against.
-/

/-! ## A000983.P14703975119139054621

`A060438(∑[n]+1)`
-/

namespace A000983.P14703975119139054621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060438 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000983.P14703975119139054621

/-! ## A000983.P12500379202632913803

`A247181(n+2)/2`
-/

namespace A000983.P12500379202632913803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247181 (n + 2) : ℚ) / 2

end

end A000983.P12500379202632913803

/-! ## A000983.P9474269399493258497

`A230014(∑[n+1]+1)/2`
-/

namespace A000983.P9474269399493258497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230014 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A000983.P9474269399493258497

/-! ## A000983.P12128483259106214174

`A096036(A149814(n))`
-/

namespace A000983.P12128483259106214174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096036 (A149814 n).toNat

end

end A000983.P12128483259106214174

/-! ## A000983.P10729192163210084062

`A143038(A356549(n))`
-/

namespace A000983.P10729192163210084062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143038 (A356549 n).toNat

end

end A000983.P10729192163210084062

/-!
# A000984: Central binomial coefficients: binomial(2*n,n) = (2*n)!/(n!)^2.

The programs for A000984, the canonical program `A000984.P17393449527703609683` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000984 has offset 0).

The definition of A000984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000984.P6494957634159889871

`a(n-1)*(4-2/n)` with `a(0)=1`
-/

namespace A000984.P6494957634159889871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (4 - 2 / (n : ℚ))

end

end A000984.P6494957634159889871

namespace A000984

/-- `a(n-1)*(4-2/n)` -/
def P6494957634159889871.Spec : Prop :=
  ∀ n, P6494957634159889871.a n = (A000984 n : ℚ)

end A000984

/-! ## A000984.P17393449527703609683

`(n+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000984

/-- `(n+1)*A000108(n)` -/
def P17393449527703609683.Spec : Prop :=
  ∀ n, P17393449527703609683.a n = A000984 n

theorem P17393449527703609683.correct : P17393449527703609683.Spec := by
  intro n
  simp only [A000984]

end A000984

/-! ## A000984.P6787554349278862748

`4*a(n-1)+A002420(n)` with `a(0)=1`
-/

namespace A000984.P6787554349278862748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A002420 n

end

end A000984.P6787554349278862748

namespace A000984

/-- `4*a(n-1)+A002420(n)` -/
def P6787554349278862748.Spec : Prop :=
  ∀ n, P6787554349278862748.a n = A000984 n

end A000984

/-! ## A000984.P2544471934564165277

`A001791(n)+A000108(n)`
-/

namespace A000984.P2544471934564165277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + A000108 n

end

end A000984.P2544471934564165277

namespace A000984

/-- `A001791(n)+A000108(n)` -/
def P2544471934564165277.Spec : Prop :=
  ∀ n, P2544471934564165277.a n = A000984 n

end A000984

/-! ## A000984.P9543263756952792047

`A056040(2*n)`
-/

namespace A000984.P9543263756952792047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n)

end

end A000984.P9543263756952792047

namespace A000984

/-- `A056040(2*n)` -/
def P9543263756952792047.Spec : Prop :=
  ∀ n, P9543263756952792047.a n = A000984 n

end A000984

/-! ## A000984.P538035728694928742

`sqrt(A002894(n))`
-/

namespace A000984.P538035728694928742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ)

end

end A000984.P538035728694928742

namespace A000984

/-- `sqrt(A002894(n))` -/
def P538035728694928742.Spec : Prop :=
  ∀ n, P538035728694928742.a n = (A000984 n : ℝ)

end A000984

/-! ## A000984.P9674911659615891899

`A006480(n)/A005809(n)`
-/

namespace A000984.P9674911659615891899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A005809 n : ℚ)

end

end A000984.P9674911659615891899

namespace A000984

/-- `A006480(n)/A005809(n)` -/
def P9674911659615891899.Spec : Prop :=
  ∀ n, P9674911659615891899.a n = (A000984 n : ℚ)

end A000984

/-! ## A000984.P3538285534864781082

`A001813(n)/A000142(n)`
-/

namespace A000984.P3538285534864781082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / (A000142 n : ℚ)

end

end A000984.P3538285534864781082

namespace A000984

/-- `A001813(n)/A000142(n)` -/
def P3538285534864781082.Spec : Prop :=
  ∀ n, P3538285534864781082.a n = (A000984 n : ℚ)

end A000984

/-!
# A000985: Number of n X n symmetric matrices with nonnegative entries and all row sums 2.

The programs for A000985, there is no canonical definition to state claims against.
-/

/-! ## A000985.P8556212515453318755

`A188403(A133263(n))`
-/

namespace A000985.P8556212515453318755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A133263 n).toNat

end

end A000985.P8556212515453318755

/-! ## A000985.P13513809455408611346

`A188403(A238531(n+1))`
-/

namespace A000985.P13513809455408611346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A238531 (n + 1)).toNat

end

end A000985.P13513809455408611346

/-! ## A000985.P12973287238759013212

`A188403(∑[A254667(n)]+1)`
-/

namespace A000985.P12973287238759013212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A000985.P12973287238759013212

/-! ## A000985.P13183447012392567740

`A188403(A089071(n+1)+n)`
-/

namespace A000985.P13183447012392567740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A089071 (n + 1) + (n : ℤ)).toNat

end

end A000985.P13183447012392567740

/-!
# A000986: Number of n X n symmetric matrices with (0,1) entries and all row sums 2.

The programs for A000986, there is no canonical definition to state claims against.
-/

/-! ## A000986.P9272268137868807919

`lcm(1-n, A333157(A133263(n)))`
-/

namespace A000986.P9272268137868807919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (A333157 (A133263 n).toNat)

end

end A000986.P9272268137868807919

/-! ## A000986.P1175982642249100840

`A333157(A133263(n))-A063524(n)`
-/

namespace A000986.P1175982642249100840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A133263 n).toNat - A063524 n

end

end A000986.P1175982642249100840

/-! ## A000986.P874942092197340688

`A060576(n)*A333157(A133263(n))`
-/

namespace A000986.P874942092197340688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A333157 (A133263 n).toNat

end

end A000986.P874942092197340688

/-! ## A000986.P11396220038617527294

`A060576(n)*A333157(A152948(n+2))`
-/

namespace A000986.P11396220038617527294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A333157 (A152948 (n + 2)).toNat

end

end A000986.P11396220038617527294

/-! ## A000986.P3072119109567666814

`lcm(A057979(n), A333157(A152948(n+2)))`
-/

namespace A000986.P3072119109567666814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057979 n) (A333157 (A152948 (n + 2)).toNat)

end

end A000986.P3072119109567666814

/-!
# A000987: Number of stochastic matrices of integers.

The programs for A000987, there is no canonical definition to state claims against.
-/

/-! ## A000987.P447181543303519606

`(n-2)*a(n-1)+A000985(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000987.P447181543303519606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 2) * a (n - 1) + A000985 (n - 2)

end

end A000987.P447181543303519606

/-! ## A000987.P5768852472204385034

`A062790(A166444(n)+n!)`
-/

namespace A000987.P5768852472204385034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (A166444 n + (Nat.factorial n : ℤ)).toNat

end

end A000987.P5768852472204385034

/-! ## A000987.P2808991949813989342

`A062790(A166444(n)+∏[A347623(n)])`
-/

namespace A000987.P2808991949813989342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (A166444 n + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000987.P2808991949813989342

/-! ## A000987.P13674380149628810272

`A062790(A217832(n+1)+∏[A347623(n)])`
-/

namespace A000987.P13674380149628810272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (A217832 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000987.P13674380149628810272

/-!
# A000988: Number of one-sided polyominoes with n cells.

The programs for A000988, there is no canonical definition to state claims against.
-/

/-! ## A000988.P14968449308016801389

`2*A030228(n)+A030227(n)`
-/

namespace A000988.P14968449308016801389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030228 n + A030227 n

end

end A000988.P14968449308016801389

/-! ## A000988.P18144280596303523486

`2*A000105(n)-A030227(n)`
-/

namespace A000988.P18144280596303523486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000105 n - A030227 n

end

end A000988.P18144280596303523486

/-! ## A000988.P18135968891190969374

`A030228(n)+A000105(n)`
-/

namespace A000988.P18135968891190969374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 n + A000105 n

end

end A000988.P18135968891190969374

/-! ## A000988.P16300616304498253942

`A030228(n)+A006765(A028310(n))+1`
-/

namespace A000988.P16300616304498253942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 n + (A006765 (A028310 n).toNat + 1)

end

end A000988.P16300616304498253942

/-! ## A000988.P5870444557517398234

`A001168(n)+A030228(n)-A283108(n)`
-/

namespace A000988.P5870444557517398234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n + (A030228 n - A283108 n)

end

end A000988.P5870444557517398234

/-! ## A000988.P2975248267433730759

`A030228(n)+A006765(A004277(n)-n)+1`
-/

namespace A000988.P2975248267433730759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 n + (A006765 (A004277 n - (n : ℤ)).toNat + 1)

end

end A000988.P2975248267433730759

/-!
# A000989: 3-adic valuation of binomial(2*n, n): largest k such that 3^k divides binomial(2*n, n).

The programs for A000989, the canonical program `A000989.P3200241698253008454` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000989 has offset 0).

The definition of A000989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000989.P3200241698253008454

`A007949(n+1)+A067397(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000989

/-- `A007949(n+1)+A067397(n)` -/
def P3200241698253008454.Spec : Prop :=
  ∀ n, P3200241698253008454.a n = A000989 n

theorem P3200241698253008454.correct : P3200241698253008454.Spec := by
  intro n
  simp only [A000989]

end A000989

/-! ## A000989.P18195038972214637733

`A127427(n)-A004128(n)`
-/

namespace A000989.P18195038972214637733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n - A004128 n

end

end A000989.P18195038972214637733

namespace A000989

/-- `A127427(n)-A004128(n)` -/
def P18195038972214637733.Spec : Prop :=
  ∀ n, P18195038972214637733.a n = A000989 n

end A000989

/-! ## A000989.P18065598659638741176

`A053735(n)-A089643(n)`
-/

namespace A000989.P18065598659638741176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A089643 n

end

end A000989.P18065598659638741176

namespace A000989

/-- `A053735(n)-A089643(n)` -/
def P18065598659638741176.Spec : Prop :=
  ∀ n, P18065598659638741176.a n = A000989 n

end A000989

/-! ## A000989.P15294359771467438162

`A089643(n)-A065363(n)`
-/

namespace A000989.P15294359771467438162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n - A065363 n

end

end A000989.P15294359771467438162

namespace A000989

/-- `A089643(n)-A065363(n)` -/
def P15294359771467438162.Spec : Prop :=
  ∀ n, P15294359771467438162.a n = A000989 n

end A000989

/-! ## A000989.P17887543485161888835

`∑{digits}[A344892(n), A102669(#)]`
-/

namespace A000989.P17887543485161888835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102669 x).sum

end

end A000989.P17887543485161888835

namespace A000989

/-- `∑{digits}[A344892(n), A102669(#)]` -/
def P17887543485161888835.Spec : Prop :=
  ∀ n, P17887543485161888835.a n = A000989 n

end A000989

/-! ## A000989.P483753505762652630

`∑{digits}[A344892(n), A106747(#)]`
-/

namespace A000989.P483753505762652630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A106747 x).sum

end

end A000989.P483753505762652630

namespace A000989

/-- `∑{digits}[A344892(n), A106747(#)]` -/
def P483753505762652630.Spec : Prop :=
  ∀ n, P483753505762652630.a n = A000989 n

end A000989

/-! ## A000989.P2091052560948266437

`(A053735(n)-A065363(n))/2`
-/

namespace A000989.P2091052560948266437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n - A065363 n : ℚ) / 2

end

end A000989.P2091052560948266437

namespace A000989

/-- `(A053735(n)-A065363(n))/2` -/
def P2091052560948266437.Spec : Prop :=
  ∀ n, P2091052560948266437.a n = (A000989 n : ℚ)

end A000989

/-! ## A000989.P15786390252478834190

`n-(A344853(n)+A089643(n))`
-/

namespace A000989.P15786390252478834190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A344853 n + A089643 n)

end

end A000989.P15786390252478834190

namespace A000989

/-- `n-(A344853(n)+A089643(n))` -/
def P15786390252478834190.Spec : Prop :=
  ∀ n, P15786390252478834190.a n = A000989 n

end A000989

/-! ## A000989.P4590562638813196639

`A173523(n+1)-(A089643(n)+1)`
-/

namespace A000989.P4590562638813196639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - (A089643 n + 1)

end

end A000989.P4590562638813196639

namespace A000989

/-- `A173523(n+1)-(A089643(n)+1)` -/
def P4590562638813196639.Spec : Prop :=
  ∀ n, P4590562638813196639.a n = A000989 n

end A000989

/-! ## A000989.P17017269292917197660

`A007949(n+1)+∑[A253786(n)-A007949(n+1)]`
-/

namespace A000989.P17017269292917197660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n - A007949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000989.P17017269292917197660

namespace A000989

/-- `A007949(n+1)+∑[A253786(n)-A007949(n+1)]` -/
def P17017269292917197660.Spec : Prop :=
  ∀ n, P17017269292917197660.a n = A000989 n

end A000989

/-! ## A000989.P17857373908642211700

`A160384(A117966(2*n)+n)`
-/

namespace A000989.P17857373908642211700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A117966 (2 * n) + (n : ℤ)).toNat

end

end A000989.P17857373908642211700

namespace A000989

/-- `A160384(A117966(2*n)+n)` -/
def P17857373908642211700.Spec : Prop :=
  ∀ n, P17857373908642211700.a n = A000989 n

end A000989

/-! ## A000989.P16547578476046276951

`A160384(A004488(2*n)-n)`
-/

namespace A000989.P16547578476046276951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A004488 (2 * n) - (n : ℤ)).toNat

end

end A000989.P16547578476046276951

namespace A000989

/-- `A160384(A004488(2*n)-n)` -/
def P16547578476046276951.Spec : Prop :=
  ∀ n, P16547578476046276951.a n = A000989 n

end A000989

/-! ## A000989.P12433927112150009153

`val(A190906(2*n), 3)`
-/

namespace A000989.P12433927112150009153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A190906 (2 * n)).toNat 3

end

end A000989.P12433927112150009153

namespace A000989

/-- `val(A190906(2*n), 3)` -/
def P12433927112150009153.Spec : Prop :=
  ∀ n, (P12433927112150009153.a n : ℤ) = A000989 n

end A000989

/-! ## A000989.P11052883373781500176

`A001222(A190906(2*n))`
-/

namespace A000989.P11052883373781500176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A190906 (2 * n)).toNat

end

end A000989.P11052883373781500176

namespace A000989

/-- `A001222(A190906(2*n))` -/
def P11052883373781500176.Spec : Prop :=
  ∀ n, P11052883373781500176.a n = A000989 n

end A000989

/-! ## A000989.P10893278512119801570

`A054861(2*n)-A344853(n)`
-/

namespace A000989.P10893278512119801570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (2 * n) - A344853 n

end

end A000989.P10893278512119801570

namespace A000989

/-- `A054861(2*n)-A344853(n)` -/
def P10893278512119801570.Spec : Prop :=
  ∀ n, P10893278512119801570.a n = A000989 n

end A000989

/-! ## A000989.P10932071972247991779

`A054861(2*n)-A005843(A054861(n))`
-/

namespace A000989.P10932071972247991779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (2 * n) - A005843 (A054861 n).toNat

end

end A000989.P10932071972247991779

namespace A000989

/-- `A054861(2*n)-A005843(A054861(n))` -/
def P10932071972247991779.Spec : Prop :=
  ∀ n, P10932071972247991779.a n = A000989 n

end A000989

/-! ## A000989.P10838727905733591912

`A053735(n)-A107408(A053735(2*n))`
-/

namespace A000989.P10838727905733591912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A107408 (A053735 (2 * n)).toNat

end

end A000989.P10838727905733591912

namespace A000989

/-- `A053735(n)-A107408(A053735(2*n))` -/
def P10838727905733591912.Spec : Prop :=
  ∀ n, P10838727905733591912.a n = A000989 n

end A000989

/-! ## A000989.P3867565136094100320

`A001281(A344853(2*n))-A344853(n)`
-/

namespace A000989.P3867565136094100320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A344853 (2 * n)).toNat - A344853 n

end

end A000989.P3867565136094100320

namespace A000989

/-- `A001281(A344853(2*n))-A344853(n)` -/
def P3867565136094100320.Spec : Prop :=
  ∀ n, P3867565136094100320.a n = A000989 n

end A000989

/-! ## A000989.P1441852492624097315

`A053735(n)-A053735(A005843(n))/2`
-/

namespace A000989.P1441852492624097315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n : ℚ) - (A053735 (A005843 n).toNat : ℚ) / 2

end

end A000989.P1441852492624097315

namespace A000989

/-- `A053735(n)-A053735(A005843(n))/2` -/
def P1441852492624097315.Spec : Prop :=
  ∀ n, P1441852492624097315.a n = (A000989 n : ℚ)

end A000989

/-! ## A000989.P16192916380447936486

`A230641(n)-A230641(A005843(n))/2`
-/

namespace A000989.P16192916380447936486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230641 n : ℚ) - (A230641 (A005843 n).toNat : ℚ) / 2

end

end A000989.P16192916380447936486

namespace A000989

/-- `A230641(n)-A230641(A005843(n))/2` -/
def P16192916380447936486.Spec : Prop :=
  ∀ n, P16192916380447936486.a n = (A000989 n : ℚ)

end A000989

/-!
# A000990: Number of plane partitions of n with at most two rows.

The programs for A000990, there is no canonical definition to state claims against.
-/

/-! ## A000990.P4236813591739507281

`∑[A147766(n)]`
-/

namespace A000990.P4236813591739507281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000990.P4236813591739507281

/-! ## A000990.P6276158585855414523

`∑[∑[A186417(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A000990.P6276158585855414523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A186417 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000990.P6276158585855414523

/-! ## A000990.P2883351387617287654

`abs(Δ[A000712(abs(1-n))])`
-/

namespace A000990.P2883351387617287654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000990.P2883351387617287654

/-! ## A000990.P7419985572877319209

`A003292(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000990.P7419985572877319209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003292 n + a (n - 2)

end

end A000990.P7419985572877319209

/-! ## A000990.P14757201190155712892

`Δ[A000712(n+1)]-A003292(n+2)`
-/

namespace A000990.P14757201190155712892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003292 (n + 2)

end

end A000990.P14757201190155712892

/-! ## A000990.P4390440816716102332

`A242642(A238531(n))`
-/

namespace A000990.P4390440816716102332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A238531 n).toNat

end

end A000990.P4390440816716102332

/-! ## A000990.P14379894985738465131

`A242641(∑[n+2])`
-/

namespace A000990.P14379894985738465131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000990.P14379894985738465131

/-! ## A000990.P15951535529969212479

`∑[A147767(∑[n])]`
-/

namespace A000990.P15951535529969212479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147767 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000990.P15951535529969212479

/-!
# A000991: Number of 3-line partitions of n.

The programs for A000991, there is no canonical definition to state claims against.
-/

/-! ## A000991.P16661675746350238590

`A242641(∑[n+3]+1)`
-/

namespace A000991.P16661675746350238590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000991.P16661675746350238590

/-! ## A000991.P10678310463974300152

`or(char[2], A242641(A034856(n+2)))`
-/

namespace A000991.P10678310463974300152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A242641 (A034856 (n + 2)).toNat)

end

end A000991.P10678310463974300152

/-! ## A000991.P16372018105578482302

`A242641(A034856(n+2))%A256096(n)`
-/

namespace A000991.P16372018105578482302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A034856 (n + 2)).toNat) (A256096 n)

end

end A000991.P16372018105578482302

/-! ## A000991.P4667367174130806664

`A242641(A055999(n)+4)%A000051(n)`
-/

namespace A000991.P4667367174130806664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A055999 n + 4).toNat) (A000051 n)

end

end A000991.P4667367174130806664

/-! ## A000991.P8098367500473297489

`char[A003188(n)]*A242641(A034856(n+2))`
-/

namespace A000991.P8098367500473297489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A242641 (A034856 (n + 2)).toNat

end

end A000991.P8098367500473297489

/-! ## A000991.P4509632225769097433

`A242641(A034856(n+2))+A008683(8*n+4)`
-/

namespace A000991.P4509632225769097433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A034856 (n + 2)).toNat + A008683 (8 * n + 4)

end

end A000991.P4509632225769097433

/-! ## A000991.P9000354044733842849

`A242641(A034856(n+2))^A014963(4*n+2)`
-/

namespace A000991.P9000354044733842849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242641 (A034856 (n + 2)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A000991.P9000354044733842849

/-! ## A000991.P8934808618693010329

`-A008683(A007918(n))*A242641(A034856(n+2))`
-/

namespace A000991.P8934808618693010329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A007918 n).toNat * A242641 (A034856 (n + 2)).toNat)

end

end A000991.P8934808618693010329

/-! ## A000991.P3279473203694773053

`A001221(A023201(n+1))*A242641(A034856(n+2))`
-/

namespace A000991.P3279473203694773053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A023201 (n + 1)).toNat * A242641 (A034856 (n + 2)).toNat

end

end A000991.P3279473203694773053

/-! ## A000991.P4456395248353207644

`A001221(A046118(n+1))*A242641(A034856(n+2))`
-/

namespace A000991.P4456395248353207644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A046118 (n + 1)).toNat * A242641 (A034856 (n + 2)).toNat

end

end A000991.P4456395248353207644

/-! ## A000991.P13314013045898780019

`A001221(A046119(n+1))*A242641(A034856(n+2))`
-/

namespace A000991.P13314013045898780019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A046119 (n + 1)).toNat * A242641 (A034856 (n + 2)).toNat

end

end A000991.P13314013045898780019

/-! ## A000991.P3264419305449602083

`A001221(A078587(n+4))*A242641(A034856(n+2))`
-/

namespace A000991.P3264419305449602083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078587 (n + 4)).toNat * A242641 (A034856 (n + 2)).toNat

end

end A000991.P3264419305449602083

/-!
# A000992: "Half-Catalan numbers": a(n) = Sum_{k=1..floor(n/2)} a(k)*a(n-k) with a(1) = 1.

The programs for A000992, there is no canonical definition to state claims against.
-/

/-! ## A000992.P6448594570043156277

`A248748(n+1)/2^n`
-/

namespace A000992.P6448594570043156277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248748 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A000992.P6448594570043156277

/-! ## A000992.P14448805260227687486

`floor(A248748(n+1)/A000079(n))`
-/

namespace A000992.P14448805260227687486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248748 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A000992.P14448805260227687486

/-! ## A000992.P16169255920410667379

`A248748(n+1)/A000079(n)*char[A061579(n)]`
-/

namespace A000992.P16169255920410667379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248748 (n + 1) : ℚ) / (A000079 n : ℚ) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A000992.P16169255920410667379

/-! ## A000992.P3366001051483802106

`A248748(n+1)/A000079(n)*A007318(C(2, n+2))`
-/

namespace A000992.P3366001051483802106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248748 (n + 1) : ℚ) / (A000079 n : ℚ) * (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A000992.P3366001051483802106

/-! ## A000992.P11089213710334533031

`A248748(n+1)/A000079(n)*char[A038722(n+1)-1]`
-/

namespace A000992.P11089213710334533031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248748 (n + 1) : ℚ) / (A000079 n : ℚ) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A000992.P11089213710334533031

/-! ## A000992.P220686815093190423

`A248748(n+1)/A000079(n)*A010122(A248201(n+1))`
-/

namespace A000992.P220686815093190423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248748 (n + 1) : ℚ) / (A000079 n : ℚ) * (A010122 (A248201 (n + 1)).toNat : ℚ)

end

end A000992.P220686815093190423

/-! ## A000992.P1928854166890341610

`A301368(∑[n+1])`
-/

namespace A000992.P1928854166890341610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000992.P1928854166890341610

/-!
# A000993: Number of distinct quadratic residues mod 10^n; also number of distinct n-digit endings of base-10 squares.

The programs for A000993, the canonical program `A000993.P3300221671943470633` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000993 has offset 0).

The definition of A000993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000993.P3300221671943470633

`(floor(∑[5^n/3])+1)*floor((2^n+10)/6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000993

/-- `(floor(∑[5^n/3])+1)*floor((2^n+10)/6)` -/
def P3300221671943470633.Spec : Prop :=
  ∀ n, P3300221671943470633.a n = A000993 n

theorem P3300221671943470633.correct : P3300221671943470633.Spec := by
  intro n
  simp only [A000993]

end A000993

/-! ## A000993.P12192469716647907059

`lcm(floor(∑[5^n/3])+1, A023105(n))`
-/

namespace A000993.P12192469716647907059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1) (A023105 n)

end

end A000993.P12192469716647907059

namespace A000993

/-- `lcm(floor(∑[5^n/3])+1, A023105(n))` -/
def P12192469716647907059.Spec : Prop :=
  ∀ n, (P12192469716647907059.a n : ℤ) = A000993 n

end A000993

/-! ## A000993.P8509383052741687177

`ceil((or(1, ∑[5^n])+2)/3*(A167167(n)+3)/2)`
-/

namespace A000993.P8509383052741687177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℚ) / 3 * ((A167167 n + 3 : ℚ) / 2)⌉

end

end A000993.P8509383052741687177

namespace A000993

/-- `ceil((or(1, ∑[5^n])+2)/3*(A167167(n)+3)/2)` -/
def P8509383052741687177.Spec : Prop :=
  ∀ n, P8509383052741687177.a n = A000993 n

end A000993

/-! ## A000993.P2537153327804609572

`lcm(A023105(n), A039302(n))`
-/

namespace A000993.P2537153327804609572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023105 n) (A039302 n)

end

end A000993.P2537153327804609572

namespace A000993

/-- `lcm(A023105(n), A039302(n))` -/
def P2537153327804609572.Spec : Prop :=
  ∀ n, (P2537153327804609572.a n : ℤ) = A000993 n

end A000993

/-! ## A000993.P8027009926210827738

`floor((A102239(n)+2)/3*A023105(n))`
-/

namespace A000993.P8027009926210827738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102239 n + 2 : ℚ) / 3 * (A023105 n : ℚ)⌋

end

end A000993.P8027009926210827738

namespace A000993

/-- `floor((A102239(n)+2)/3*A023105(n))` -/
def P8027009926210827738.Spec : Prop :=
  ∀ n, P8027009926210827738.a n = A000993 n

end A000993

/-! ## A000993.P16054196454330295918

`ceil((A167167(n)+3)/2*A039302(n))`
-/

namespace A000993.P16054196454330295918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A167167 n + 3 : ℚ) / 2 * (A039302 n : ℚ)⌉

end

end A000993.P16054196454330295918

namespace A000993

/-- `ceil((A167167(n)+3)/2*A039302(n))` -/
def P16054196454330295918.Spec : Prop :=
  ∀ n, P16054196454330295918.a n = A000993 n

end A000993

/-! ## A000993.P13612206779792233201

`A039302(n)*A039303(n)/A039300(n)`
-/

namespace A000993.P13612206779792233201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039302 n * A039303 n : ℚ) / (A039300 n : ℚ)

end

end A000993.P13612206779792233201

namespace A000993

/-- `A039302(n)*A039303(n)/A039300(n)` -/
def P13612206779792233201.Spec : Prop :=
  ∀ n, P13612206779792233201.a n = (A000993 n : ℚ)

end A000993

/-!
# A000994: Shifts 2 places left under binomial transform.

The programs for A000994, there is no canonical definition to state claims against.
-/

/-! ## A000994.P10511558126724250893

`A007476(n)-A000995(n)`
-/

namespace A000994.P10511558126724250893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n - A000995 n

end

end A000994.P10511558126724250893

/-! ## A000994.P17686312157882419158

`A143983(A238531(n))-char[1]`
-/

namespace A000994.P17686312157882419158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A238531 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000994.P17686312157882419158

/-! ## A000994.P17833582764846861186

`A060576(n)*A143983(A238531(n))`
-/

namespace A000994.P17833582764846861186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A143983 (A238531 n).toNat

end

end A000994.P17833582764846861186

/-! ## A000994.P10771880356188846563

`A210545(A027379(n)-n)-A000995(n)`
-/

namespace A000994.P10771880356188846563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A027379 n - (n : ℤ)).toNat - A000995 n

end

end A000994.P10771880356188846563

/-! ## A000994.P8983534526269531996

`A245163(A106232(n+1))-A000995(n)`
-/

namespace A000994.P8983534526269531996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A106232 (n + 1)).toNat - A000995 n

end

end A000994.P8983534526269531996

/-! ## A000994.P8678830730708867635

`A245163(A132209(n)+1)-A000995(n)`
-/

namespace A000994.P8678830730708867635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A132209 n + 1).toNat - A000995 n

end

end A000994.P8678830730708867635

/-! ## A000994.P16683631889402575788

`A245163(A056220(n+1))-A000995(n)`
-/

namespace A000994.P16683631889402575788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A056220 (n + 1)).toNat - A000995 n

end

end A000994.P16683631889402575788

/-! ## A000994.P15353987430620434389

`A245163(A142463(n+1))-A000995(n)`
-/

namespace A000994.P15353987430620434389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A142463 (n + 1)).toNat - A000995 n

end

end A000994.P15353987430620434389

/-!
# A000995: Shifts left two terms under the binomial transform.

The programs for A000995, there is no canonical definition to state claims against.
-/

/-! ## A000995.P17263689129595892719

`A007476(n)-A000994(n)`
-/

namespace A000995.P17263689129595892719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n - A000994 n

end

end A000995.P17263689129595892719

/-! ## A000995.P16261291412034656897

`A210545(A347553(n+3))-A000994(n)`
-/

namespace A000995.P16261291412034656897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A347553 (n + 3)).toNat - A000994 n

end

end A000995.P16261291412034656897

/-! ## A000995.P15179113765576390210

`A210545(A027379(n)-n)-A000994(n)`
-/

namespace A000995.P15179113765576390210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A027379 n - (n : ℤ)).toNat - A000994 n

end

end A000995.P15179113765576390210

/-! ## A000995.P13507706216355956002

`A245163(A106232(n+1))-A000994(n)`
-/

namespace A000995.P13507706216355956002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A106232 (n + 1)).toNat - A000994 n

end

end A000995.P13507706216355956002

/-! ## A000995.P15894998880631449105

`A245163(A132209(n)+1)-A000994(n)`
-/

namespace A000995.P15894998880631449105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A132209 n + 1).toNat - A000994 n

end

end A000995.P15894998880631449105

/-! ## A000995.P6236553517736531227

`A245163(A056220(n+1))-A000994(n)`
-/

namespace A000995.P6236553517736531227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A056220 (n + 1)).toNat - A000994 n

end

end A000995.P6236553517736531227

/-! ## A000995.P3401590280686421990

`A245163(A142463(n+1))-A000994(n)`
-/

namespace A000995.P3401590280686421990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A142463 (n + 1)).toNat - A000994 n

end

end A000995.P3401590280686421990

/-!
# A000996: Shifts 3 places left under binomial transform.

The programs for A000996, there is no canonical definition to state claims against.
-/

/-! ## A000996.P11841690118311906751

`A346052(n)-A000997(n)`
-/

namespace A000996.P11841690118311906751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346052 n - A000997 n

end

end A000996.P11841690118311906751

/-! ## A000996.P1059982456310011823

`A210540(n)-A346050(n)`
-/

namespace A000996.P1059982456310011823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210540 n - A346050 n

end

end A000996.P1059982456310011823

/-! ## A000996.P5665589011411842379

`A000997(n)+A346051(n)-A346050(n)`
-/

namespace A000996.P5665589011411842379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000997 n + (A346051 n - A346050 n)

end

end A000996.P5665589011411842379

/-! ## A000996.P9077788395617282577

`A346051(n)+A346052(n)-A210540(n)`
-/

namespace A000996.P9077788395617282577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 n + (A346052 n - A210540 n)

end

end A000996.P9077788395617282577

/-! ## A000996.P17499108639394243455

`A210545(A034856(n+1))-A346050(n)`
-/

namespace A000996.P17499108639394243455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A034856 (n + 1)).toNat - A346050 n

end

end A000996.P17499108639394243455

/-!
# A000997: From a differential equation.

The programs for A000997, there is no canonical definition to state claims against.
-/

/-! ## A000997.P553221892516440064

`A346052(n)-A000996(n)`
-/

namespace A000997.P553221892516440064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346052 n - A000996 n

end

end A000997.P553221892516440064

/-! ## A000997.P11113974761061438111

`A210540(n)-A346051(n)`
-/

namespace A000997.P11113974761061438111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210540 n - A346051 n

end

end A000997.P11113974761061438111

/-! ## A000997.P670246335908674784

`A000996(n)+A346050(n)-A346051(n)`
-/

namespace A000997.P670246335908674784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000996 n + (A346050 n - A346051 n)

end

end A000997.P670246335908674784

/-! ## A000997.P785174688245133452

`A210545(A034856(n+1))-A346051(n)`
-/

namespace A000997.P785174688245133452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A034856 (n + 1)).toNat - A346051 n

end

end A000997.P785174688245133452

/-! ## A000997.P2766065028627506722

`A346052(n)-(A210545(A034856(n+1))-A346050(n))`
-/

namespace A000997.P2766065028627506722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346052 n - (A210545 (A034856 (n + 1)).toNat - A346050 n)

end

end A000997.P2766065028627506722

/-!
# A000998: From a differential equation.

The programs for A000998, there is no canonical definition to state claims against.
-/

/-! ## A000998.P11089165355964637102

`A346051(n+5)-record[A000996(n)]`
-/

namespace A000998.P11089165355964637102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000998.P11089165355964637102

/-! ## A000998.P4203307944364754874

`A346051(n+5)-A000996(n+5)`
-/

namespace A000998.P4203307944364754874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 (n + 5) - A000996 (n + 5)

end

end A000998.P4203307944364754874

/-! ## A000998.P5423930274987415123

`A210540(n+5)-A346052(n+5)`
-/

namespace A000998.P5423930274987415123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210540 (n + 5) - A346052 (n + 5)

end

end A000998.P5423930274987415123

/-! ## A000998.P6823872882129159996

`record[A346050(A028310(n))-A000997(n)]`
-/

namespace A000998.P6823872882129159996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346050 (A028310 n).toNat - A000997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000998.P6823872882129159996

/-! ## A000998.P6105967140815336061

`record[A346051(n)-A000996(A028310(n))]`
-/

namespace A000998.P6105967140815336061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 n - A000996 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000998.P6105967140815336061

/-!
# A000999: 5-adic valuation of binomial(2*n,n): largest k such that 5^k divides binomial(2*n, n).

The programs for A000999, the canonical program `A000999.P15242886502305852120` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000999 has offset 0).

The definition of A000999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000999.P15242886502305852120

`(2*A053824(n)-A053824(2*n))/4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000999

/-- `(2*A053824(n)-A053824(2*n))/4` -/
def P15242886502305852120.Spec : Prop :=
  ∀ n, P15242886502305852120.a n = (A000999 n : ℚ)

end A000999

/-! ## A000999.P2701676666902136130

`A027868(2*n)-A005843(A027868(n))`
-/

namespace A000999.P2701676666902136130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (2 * n) - A005843 (A027868 n).toNat

end

end A000999.P2701676666902136130

namespace A000999

/-- `A027868(2*n)-A005843(A027868(n))` -/
def P2701676666902136130.Spec : Prop :=
  ∀ n, P2701676666902136130.a n = A000999 n

end A000999

/-! ## A000999.P119920946044110359

`A191610(A005843(n)+1)-A005843(A191610(n+1))`
-/

namespace A000999.P119920946044110359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (A005843 n + 1).toNat - A005843 (A191610 (n + 1)).toNat

end

end A000999.P119920946044110359

namespace A000999

/-- `A191610(A005843(n)+1)-A005843(A191610(n+1))` -/
def P119920946044110359.Spec : Prop :=
  ∀ n, P119920946044110359.a n = A000999 n

end A000999

/-! ## A000999.P17643568301846660187

`A102673(A007091(2*n)-A007091(n))`
-/

namespace A000999.P17643568301846660187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A007091 (2 * n) - A007091 n).toNat

end

end A000999.P17643568301846660187

namespace A000999

/-- `A102673(A007091(2*n)-A007091(n))` -/
def P17643568301846660187.Spec : Prop :=
  ∀ n, P17643568301846660187.a n = A000999 n

end A000999

/-! ## A000999.P10415249770212389875

`A102677(A007091(2*n)-A007091(n))`
-/

namespace A000999.P10415249770212389875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A007091 (2 * n) - A007091 n).toNat

end

end A000999.P10415249770212389875

namespace A000999

/-- `A102677(A007091(2*n)-A007091(n))` -/
def P10415249770212389875.Spec : Prop :=
  ∀ n, P10415249770212389875.a n = A000999 n

end A000999

/-! ## A000999.P7008931825172406185

`A196564(eq[A065031(2*n), A065031(n)])`
-/

namespace A000999.P7008931825172406185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A000999.P7008931825172406185

namespace A000999

/-- `A196564(eq[A065031(2*n), A065031(n)])` -/
def P7008931825172406185.Spec : Prop :=
  ∀ n, P7008931825172406185.a n = A000999 n

end A000999

/-! ## A000999.P1749095022867785409

`A196564(A014263(2*n+1)-A014263(n+1))`
-/

namespace A000999.P1749095022867785409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A014263 (2 * n + 1) - A014263 (n + 1)).toNat

end

end A000999.P1749095022867785409

namespace A000999

/-- `A196564(A014263(2*n+1)-A014263(n+1))` -/
def P1749095022867785409.Spec : Prop :=
  ∀ n, P1749095022867785409.a n = A000999 n

end A000999

/-! ## A000999.P2848731603049537116

`val(A001790(n), 5)`
-/

namespace A000999.P2848731603049537116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001790 n).toNat 5

end

end A000999.P2848731603049537116

namespace A000999

/-- `val(A001790(n), 5)` -/
def P2848731603049537116.Spec : Prop :=
  ∀ n, (P2848731603049537116.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P9739660501146071702

`val(A000984(n), 5)`
-/

namespace A000999.P9739660501146071702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000984 n).toNat 5

end

end A000999.P9739660501146071702

namespace A000999

/-- `val(A000984(n), 5)` -/
def P9739660501146071702.Spec : Prop :=
  ∀ n, (P9739660501146071702.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P12470670786819601270

`val(A029651(n), 5)`
-/

namespace A000999.P12470670786819601270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029651 n).toNat 5

end

end A000999.P12470670786819601270

namespace A000999

/-- `val(A029651(n), 5)` -/
def P12470670786819601270.Spec : Prop :=
  ∀ n, (P12470670786819601270.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P13131132305078013568

`val(A088218(n), 5)`
-/

namespace A000999.P13131132305078013568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088218 n).toNat 5

end

end A000999.P13131132305078013568

namespace A000999

/-- `val(A088218(n), 5)` -/
def P13131132305078013568.Spec : Prop :=
  ∀ n, (P13131132305078013568.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P7043870762138455079

`val(A001405(2*n), 5)`
-/

namespace A000999.P7043870762138455079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001405 (2 * n)).toNat 5

end

end A000999.P7043870762138455079

namespace A000999

/-- `val(A001405(2*n), 5)` -/
def P7043870762138455079.Spec : Prop :=
  ∀ n, (P7043870762138455079.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P4044060794317069488

`val(A036069(2*n), 5)`
-/

namespace A000999.P4044060794317069488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036069 (2 * n)).toNat 5

end

end A000999.P4044060794317069488

namespace A000999

/-- `val(A036069(2*n), 5)` -/
def P4044060794317069488.Spec : Prop :=
  ∀ n, (P4044060794317069488.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P14258755658686270753

`val(A050168(2*n), 5)`
-/

namespace A000999.P14258755658686270753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050168 (2 * n)).toNat 5

end

end A000999.P14258755658686270753

namespace A000999

/-- `val(A050168(2*n), 5)` -/
def P14258755658686270753.Spec : Prop :=
  ∀ n, (P14258755658686270753.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P3027450166621385233

`val(A063886(2*n), 5)`
-/

namespace A000999.P3027450166621385233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063886 (2 * n)).toNat 5

end

end A000999.P3027450166621385233

namespace A000999

/-- `val(A063886(2*n), 5)` -/
def P3027450166621385233.Spec : Prop :=
  ∀ n, (P3027450166621385233.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P4935490681501632626

`val(A081668(2*n), 5)`
-/

namespace A000999.P4935490681501632626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081668 (2 * n)).toNat 5

end

end A000999.P4935490681501632626

namespace A000999

/-- `val(A081668(2*n), 5)` -/
def P4935490681501632626.Spec : Prop :=
  ∀ n, (P4935490681501632626.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P1441753654689301263

`val(A089849(2*n), 5)`
-/

namespace A000999.P1441753654689301263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089849 (2 * n)).toNat 5

end

end A000999.P1441753654689301263

namespace A000999

/-- `val(A089849(2*n), 5)` -/
def P1441753654689301263.Spec : Prop :=
  ∀ n, (P1441753654689301263.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P3687319526751609070

`val(A126869(2*n), 5)`
-/

namespace A000999.P3687319526751609070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126869 (2 * n)).toNat 5

end

end A000999.P3687319526751609070

namespace A000999

/-- `val(A126869(2*n), 5)` -/
def P3687319526751609070.Spec : Prop :=
  ∀ n, (P3687319526751609070.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P4095629255655754751

`val(A126930(2*n), 5)`
-/

namespace A000999.P4095629255655754751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126930 (2 * n)).toNat 5

end

end A000999.P4095629255655754751

namespace A000999

/-- `val(A126930(2*n), 5)` -/
def P4095629255655754751.Spec : Prop :=
  ∀ n, (P4095629255655754751.a n : ℤ) = A000999 n

end A000999

/-! ## A000999.P13304261339130901560

`val(A128014(2*n), 5)`
-/

namespace A000999.P13304261339130901560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A128014 (2 * n)).toNat 5

end

end A000999.P13304261339130901560

namespace A000999

/-- `val(A128014(2*n), 5)` -/
def P13304261339130901560.Spec : Prop :=
  ∀ n, (P13304261339130901560.a n : ℤ) = A000999 n

end A000999

