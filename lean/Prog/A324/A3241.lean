import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A324100: A000120-deficiency of n permuted by A156552: a(n) = A192895(A156552(n)).

The programs for A324100, the canonical program `A324100.P9130433949466707403` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324100 has offset 2).

The definition of A324100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324100.P9130433949466707403

`A192895(A156552(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324100

/-- `A192895(A156552(n+2))` -/
def P9130433949466707403.Spec : Prop :=
  ∀ n, P9130433949466707403.a n = A324100 (n + 2)

theorem P9130433949466707403.correct : P9130433949466707403.Spec := by
  intro n
  simp only [A324100, Nat.add_sub_cancel]

end A324100

/-! ## A324100.P16700855159586279470

`A192895(A246677(n+1))`
-/

namespace A324100.P16700855159586279470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A246677 (n + 1)).toNat

end

end A324100.P16700855159586279470

namespace A324100

/-- `A192895(A246677(n+1))` -/
def P16700855159586279470.Spec : Prop :=
  ∀ n, P16700855159586279470.a n = A324100 (n + 2)

end A324100

/-! ## A324100.P9670561694000993635

`xor(A025465(n²²), A192895(n+1))`
-/

namespace A324100.P9670561694000993635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025465 ((n ^ 2) ^ 2)) (A192895 (n + 1))

end

end A324100.P9670561694000993635

namespace A324100

/-- `xor(A025465(n²²), A192895(n+1))` -/
def P9670561694000993635.Spec : Prop :=
  ∀ n, P9670561694000993635.a n = A324100 (n + 2)

end A324100

/-! ## A324100.P9555521103975372746

`A100073(A108951(n+1))-Δ[A001222(n+1)]`
-/

namespace A324100.P9555521103975372746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (A108951 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A324100.P9555521103975372746

namespace A324100

/-- `A100073(A108951(n+1))-Δ[A001222(n+1)]` -/
def P9555521103975372746.Spec : Prop :=
  ∀ n, P9555521103975372746.a n = A324100 (n + 2)

end A324100

/-! ## A324100.P9563164849857524375

`A324194(A054427(n+1)-A057427(2^(n+2)))`
-/

namespace A324100.P9563164849857524375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324194 (A054427 (n + 1) - A057427 (2 ^ (n + 2))).toNat

end

end A324100.P9563164849857524375

namespace A324100

/-- `A324194(A054427(n+1)-A057427(2^(n+2)))` -/
def P9563164849857524375.Spec : Prop :=
  ∀ n, P9563164849857524375.a n = A324100 (n + 2)

end A324100

/-!
# A324101: Numbers whose "unary-binary encoded prime factorization" (A156552) is not A000120-deficient.

The programs for A324101, the canonical program `A324101.P2405185789892390183` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324101 has offset 1).

The definition of A324101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324101.P14202572724945730822

`comp[and(n+2, A324113(n+2))]`
-/

namespace A324101.P14202572724945730822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A324113 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324101.P14202572724945730822

namespace A324101

/-- `comp[and(n+2, A324113(n+2))]` -/
def P14202572724945730822.Spec : Prop :=
  ∀ n, (P14202572724945730822.a n : ℤ) = A324101 (n + 1)

end A324101

/-! ## A324101.P12398910915489470570

`eq[char[A324102(n+1)], A169585(n)]`
-/

namespace A324101.P12398910915489470570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324101.P12398910915489470570

namespace A324101

/-- `eq[char[A324102(n+1)], A169585(n)]` -/
def P12398910915489470570.Spec : Prop :=
  ∀ n, (P12398910915489470570.a n : ℤ) = A324101 (n + 1)

end A324101

/-! ## A324101.P2405185789892390183

`lt[A057428(n), A324100(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324101

/-- `lt[A057428(n), A324100(n+2)]+2` -/
def P2405185789892390183.Spec : Prop :=
  ∀ n, (P2405185789892390183.a n : ℤ) = A324101 (n + 1)

theorem P2405185789892390183.correct : P2405185789892390183.Spec := by
  intro n
  simp only [A324101, Nat.add_sub_cancel]

end A324101

/-! ## A324101.P1654763265349225552

`lt[A057428(n), A324100(A233583(n+1))]`
-/

namespace A324101.P1654763265349225552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324101.P1654763265349225552

namespace A324101

/-- `lt[A057428(n), A324100(A233583(n+1))]` -/
def P1654763265349225552.Spec : Prop :=
  ∀ n, (P1654763265349225552.a n : ℤ) = A324101 (n + 1)

end A324101

/-! ## A324101.P16445181038612759494

`lt[n/3, A324865(n+1)²²]+1`
-/

namespace A324101.P16445181038612759494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324865 (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A324101.P16445181038612759494

namespace A324101

/-- `lt[n/3, A324865(n+1)²²]+1` -/
def P16445181038612759494.Spec : Prop :=
  ∀ n, (P16445181038612759494.a n : ℤ) = A324101 (n + 1)

end A324101

/-! ## A324101.P7603119230570677154

`lt[A323244(A091090(n²)), A324865(n+1)]+1`
-/

namespace A324101.P7603119230570677154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (A091090 (n ^ 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324101.P7603119230570677154

namespace A324101

/-- `lt[A323244(A091090(n²)), A324865(n+1)]+1` -/
def P7603119230570677154.Spec : Prop :=
  ∀ n, (P7603119230570677154.a n : ℤ) = A324101 (n + 1)

end A324101

/-!
# A324102: Numbers whose "unary-binary encoded prime factorization" (A156552) is A000120-deficient.

The programs for A324102, the canonical program `A324102.P754138083570063638` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324102 has offset 1).

The definition of A324102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324102.P754138083570063638

`eq[1, Δ[char[A324101(n+1)]]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324102

/-- `eq[1, Δ[char[A324101(n+1)]]]` -/
def P754138083570063638.Spec : Prop :=
  ∀ n, (P754138083570063638.a n : ℤ) = A324102 (n + 1)

theorem P754138083570063638.correct : P754138083570063638.Spec := by
  intro n
  simp only [A324102, Nat.add_sub_cancel]

end A324102

/-! ## A324102.P16126545492311575871

`record[2-n*A324113(n+2)]`
-/

namespace A324102.P16126545492311575871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ) * A324113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324102.P16126545492311575871

namespace A324102

/-- `record[2-n*A324113(n+2)]` -/
def P16126545492311575871.Spec : Prop :=
  ∀ n, P16126545492311575871.a n = A324102 (n + 1)

end A324102

/-! ## A324102.P11727571248365856753

`A321220(record[and(n, A324113(n+2))])`
-/

namespace A324102.P11727571248365856753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A324113 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324102.P11727571248365856753

namespace A324102

/-- `A321220(record[and(n, A324113(n+2))])` -/
def P11727571248365856753.Spec : Prop :=
  ∀ n, P11727571248365856753.a n = A324102 (n + 1)

end A324102

/-! ## A324102.P10819361594535117865

`record[A321220(n)/(A324113(n+2)+2)]`
-/

namespace A324102.P10819361594535117865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321220 n : ℚ) / (A324113 (n + 2) + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324102.P10819361594535117865

namespace A324102

/-- `record[A321220(n)/(A324113(n+2)+2)]` -/
def P10819361594535117865.Spec : Prop :=
  ∀ n, P10819361594535117865.a n = (A324102 (n + 1) : ℚ)

end A324102

/-! ## A324102.P18256249855838103850

`record[and(A020725(n+1), A324113(n+2))]`
-/

namespace A324102.P18256249855838103850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020725 (n + 1)) (A324113 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324102.P18256249855838103850

namespace A324102

/-- `record[and(A020725(n+1), A324113(n+2))]` -/
def P18256249855838103850.Spec : Prop :=
  ∀ n, P18256249855838103850.a n = A324102 (n + 1)

end A324102

/-! ## A324102.P5182782667250162933

`record[and(A103889(n+1), A324113(n+2))]`
-/

namespace A324102.P5182782667250162933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103889 (n + 1)) (A324113 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324102.P5182782667250162933

namespace A324102

/-- `record[and(A103889(n+1), A324113(n+2))]` -/
def P5182782667250162933.Spec : Prop :=
  ∀ n, P5182782667250162933.a n = A324102 (n + 1)

end A324102

/-! ## A324102.P15409633663836562264

`lt[char[A324101(n+1)], A324113(n+3)]`
-/

namespace A324102.P15409633663836562264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324101 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324113 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A324102.P15409633663836562264

namespace A324102

/-- `lt[char[A324101(n+1)], A324113(n+3)]` -/
def P15409633663836562264.Spec : Prop :=
  ∀ n, (P15409633663836562264.a n : ℤ) = A324102 (n + 1)

end A324102

/-! ## A324102.P10470094427979595893

`eq[A008683(A020483(n)), A324113(n+2)]+2`
-/

namespace A324102.P10470094427979595893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A324102.P10470094427979595893

namespace A324102

/-- `eq[A008683(A020483(n)), A324113(n+2)]+2` -/
def P10470094427979595893.Spec : Prop :=
  ∀ n, (P10470094427979595893.a n : ℤ) = A324102 (n + 1)

end A324102

/-! ## A324102.P10225353059985678923

`lt[A324865(n+1), A001221(n²+1)]+1`
-/

namespace A324102.P10225353059985678923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324102.P10225353059985678923

namespace A324102

/-- `lt[A324865(n+1), A001221(n²+1)]+1` -/
def P10225353059985678923.Spec : Prop :=
  ∀ n, (P10225353059985678923.a n : ℤ) = A324102 (n + 1)

end A324102

/-!
# A324103: a(1) = 0; for n > 1, a(n) = A083254(A156552(n)).

The programs for A324103, there is no canonical definition to state claims against.
-/

/-! ## A324103.P11552589736101932295

`2*A324104(n+1)-A156552(n+1)`
-/

namespace A324103.P11552589736101932295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n + 1) - A156552 (n + 1)

end

end A324103.P11552589736101932295

/-! ## A324103.P67666467854653598

`A324104(n+1)-(A324865(n+1)+A323244(n+1)-A324104(n+1))`
-/

namespace A324103.P67666467854653598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (n + 1) - (A324865 (n + 1) + A323244 (n + 1) - A324104 (n + 1))

end

end A324103.P67666467854653598

/-! ## A324103.P4687580555540462285

`A324104(n+1)+A324104(n+1)-(A323905(2*(n+1))-A323905(n+1))`
-/

namespace A324103.P4687580555540462285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (n + 1) + (A324104 (n + 1) - (A323905 (2 * (n + 1)) - A323905 (n + 1)))

end

end A324103.P4687580555540462285

/-! ## A324103.P13953116897871332457

`A324104(n+1)+A324104(n+1)-A305418(A091202(n+1))`
-/

namespace A324103.P13953116897871332457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (n + 1) + (A324104 (n + 1) - A305418 (A091202 (n + 1)).toNat)

end

end A324103.P13953116897871332457

/-! ## A324103.P6219525633526860060

`2*A324104(n+1)-A269388(A302025(n+1))`
-/

namespace A324103.P6219525633526860060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n + 1) - A269388 (A302025 (n + 1)).toNat

end

end A324103.P6219525633526860060

/-! ## A324103.P225424487614065703

`2*A156552(A342654(n+1))-A156552(n+1)`
-/

namespace A324103.P225424487614065703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (A342654 (n + 1)).toNat - A156552 (n + 1)

end

end A324103.P225424487614065703

/-! ## A324103.P11545975898336209896

`A005408(A324104(n+1))-A005941(n+1)`
-/

namespace A324103.P11545975898336209896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A324104 (n + 1)).toNat - A005941 (n + 1)

end

end A324103.P11545975898336209896

/-! ## A324103.P15239679832451482136

`A005843(A324104(n+1))-A156552(n+1)`
-/

namespace A324103.P15239679832451482136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A324104 (n + 1)).toNat - A156552 (n + 1)

end

end A324103.P15239679832451482136

/-! ## A324103.P2354838924459448927

`2*A324104(n+1)-A003188(A243354(n+1))`
-/

namespace A324103.P2354838924459448927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n + 1) - A003188 (A243354 (n + 1)).toNat

end

end A324103.P2354838924459448927

/-! ## A324103.P8496212958258648176

`A005843(A324104(n+1))-(A322993(2*(n+1))-1)/2`
-/

namespace A324103.P8496212958258648176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A324104 (n + 1)).toNat : ℚ) - (A322993 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A324103.P8496212958258648176

/-!
# A324104: a(1) = 0; for n > 1, a(n) = A000010(A156552(n)).

The programs for A324104, there is no canonical definition to state claims against.
-/

/-! ## A324104.P4944165488587635543

`(A324103(n+1)+A156552(n+1))/2`
-/

namespace A324104.P4944165488587635543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324103 (n + 1) + A156552 (n + 1) : ℚ) / 2

end

end A324104.P4944165488587635543

/-! ## A324104.P4533143093659496848

`(A324103(n+1)+∑{d}[n+1, A055615(#)*A329372((n+1)/#)])/2`
-/

namespace A324104.P4533143093659496848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A324103 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A055615 d * A329372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 2

end

end A324104.P4533143093659496848

/-! ## A324104.P11942780449007928819

`(A324103(n+1)+(A322993(2*(n+1))-1)/2)/2`
-/

namespace A324104.P11942780449007928819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A324103 (n + 1) : ℚ) + (A322993 (2 * (n + 1)) - 1 : ℚ) / 2) / 2

end

end A324104.P11942780449007928819

/-! ## A324104.P15057975119627970995

`(A324103(n+1)+A323243(n+1)-A324865(n+1))/2`
-/

namespace A324104.P15057975119627970995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324103 (n + 1) + (A323243 (n + 1) - A324865 (n + 1)) : ℚ) / 2

end

end A324104.P15057975119627970995

/-! ## A324104.P9561409127015472587

`(A324103(n+1)+A252754(A250245(n+1)))/2`
-/

namespace A324104.P9561409127015472587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324103 (n + 1) + A252754 (A250245 (n + 1)).toNat : ℚ) / 2

end

end A324104.P9561409127015472587

/-! ## A324104.P14351720099413819310

`(A324103(n+1)+A269388(A302025(n+1)))/2`
-/

namespace A324104.P14351720099413819310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324103 (n + 1) + A269388 (A302025 (n + 1)).toNat : ℚ) / 2

end

end A324104.P14351720099413819310

/-! ## A324104.P17502147671397461641

`A000010(A156552(a(2%n)+n))` with `a(0)=0, a(1)=1`
-/

namespace A324104.P17502147671397461641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (A156552 (a (2 % n) + (n : ℤ)).toNat).toNat

end

end A324104.P17502147671397461641

/-! ## A324104.P14067424694150295385

`A000010(A156552(abs(1-n)+2))-A000007(n)`
-/

namespace A324104.P14067424694150295385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156552 (|1 - (n : ℤ)| + 2).toNat).toNat - A000007 n

end

end A324104.P14067424694150295385

/-! ## A324104.P18004212288305240376

`A000010(A156552(abs(1-n)+2))*A057427(n)`
-/

namespace A324104.P18004212288305240376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156552 (|1 - (n : ℤ)| + 2).toNat).toNat * A057427 n

end

end A324104.P18004212288305240376

/-! ## A324104.P18068021716943538313

`A000010(A156552(abs(1-n)+2))%A053808(n)`
-/

namespace A324104.P18068021716943538313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A156552 (|1 - (n : ℤ)| + 2).toNat).toNat) (A053808 n)

end

end A324104.P18068021716943538313

/-!
# A324105: a(1) = 0; for n > 1, a(n) = A000005(A156552(n)).

The programs for A324105, there is no canonical definition to state claims against.
-/

/-! ## A324105.P7106391678285867889

`A055396(n+1)*A324117(n+1)`
-/

namespace A324105.P7106391678285867889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A324117 (n + 1)

end

end A324105.P7106391678285867889

/-! ## A324105.P7040951715699960768

`A000720(A020639(n+1))*A324117(n+1)`
-/

namespace A324105.P7040951715699960768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (n + 1)).toNat * A324117 (n + 1)

end

end A324105.P7040951715699960768

/-! ## A324105.P16046170243910294061

`A061395(A028233(n+1))*A324117(n+1)`
-/

namespace A324105.P16046170243910294061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028233 (n + 1)).toNat * A324117 (n + 1)

end

end A324105.P16046170243910294061

/-! ## A324105.P6902294452259278604

`A324117(n+1)*A336315(A117365(n+1))`
-/

namespace A324105.P6902294452259278604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (n + 1) * A336315 (A117365 (n + 1)).toNat

end

end A324105.P6902294452259278604

/-! ## A324105.P11356561689078795665

`A003963(A074828(n+1))*A324117(n+1)`
-/

namespace A324105.P11356561689078795665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A074828 (n + 1)).toNat * A324117 (n + 1)

end

end A324105.P11356561689078795665

/-! ## A324105.P5119824004794331074

`∑{d}[A156552(n+1), gcd(59, #)]`
-/

namespace A324105.P5119824004794331074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 59 d

end

end A324105.P5119824004794331074

/-! ## A324105.P7181325291814467671

`∑{d}[A156552(n+1), A054977(n)^#]`
-/

namespace A324105.P7181325291814467671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 n ^ d

end

end A324105.P7181325291814467671

/-! ## A324105.P15838797194854525598

`∑{d}[A156552(n+1), #^A151933(n)]`
-/

namespace A324105.P15838797194854525598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A151933 n : ℤ)

end

end A324105.P15838797194854525598

/-! ## A324105.P16252956917945277033

`∑{d}[A156552(n+1), A178334(n)^#]`
-/

namespace A324105.P16252956917945277033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A178334 n ^ d

end

end A324105.P16252956917945277033

/-! ## A324105.P11548202058625365726

`∏{e}[A156552(n+1), #+1]-A000007(n)`
-/

namespace A324105.P11548202058625365726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - A000007 n

end

end A324105.P11548202058625365726

/-!
# A324106: Multiplicative with a(p^e) = A005940(p^e).

The programs for A324106, there is no canonical definition to state claims against.
-/

/-! ## A324106.P10057932925682906008

`A005940(n+1)-A340362(n+1)`
-/

namespace A324106.P10057932925682906008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - A340362 (n + 1)

end

end A324106.P10057932925682906008

/-! ## A324106.P11470379881736559131

`A340364(n+1)*A340366(n+1)`
-/

namespace A324106.P11470379881736559131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340364 (n + 1) * A340366 (n + 1)

end

end A324106.P11470379881736559131

/-! ## A324106.P5448238677027150213

`A340364(n+1)*A340365(n+1)-A340362(n+1)`
-/

namespace A324106.P5448238677027150213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340364 (n + 1) * A340365 (n + 1) - A340362 (n + 1)

end

end A324106.P5448238677027150213

/-! ## A324106.P2679427236941644644

`A005940(n+1)/A340365(n+1)*A340366(n+1)`
-/

namespace A324106.P2679427236941644644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A340365 (n + 1) : ℚ) * (A340366 (n + 1) : ℚ)

end

end A324106.P2679427236941644644

/-! ## A324106.P8846795417524056094

`A292602(4*n+3)-A340362(n+1)`
-/

namespace A324106.P8846795417524056094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 (4 * n + 3) - A340362 (n + 1)

end

end A324106.P8846795417524056094

/-!
# A324107: Fixed points of A324106, where A324106 is a multiplicative function with A324106(p^e) = A005940(p^e).

The programs for A324107, there is no canonical definition to state claims against.
-/

/-! ## A324107.P6607238084343005106

`eq[n+1, A324106(n+1)]+1`
-/

namespace A324107.P6607238084343005106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324107.P6607238084343005106

/-! ## A324107.P12981453516223197737

`eq[A000203(n+1), A324108(n+1)]+1`
-/

namespace A324107.P12981453516223197737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324107.P12981453516223197737

/-! ## A324107.P14989458789755974699

`eq[n, A324106(A028310(n))]`
-/

namespace A324107.P14989458789755974699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324106 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324107.P14989458789755974699

/-! ## A324107.P1911124947496509944

`A018744(A076084(n+1))`
-/

namespace A324107.P1911124947496509944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A076084 (n + 1)).toNat

end

end A324107.P1911124947496509944

/-! ## A324107.P13100558537387352029

`A018744(A151764(n+1))`
-/

namespace A324107.P13100558537387352029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A151764 (n + 1)).toNat

end

end A324107.P13100558537387352029

/-!
# A324108: Multiplicative with a(p^e) = A324054((p^e)-1).

The programs for A324108, there is no canonical definition to state claims against.
-/

/-! ## A324108.P15363860477539193805

`A000203(A324106(n+1))%A230713(n+1)`
-/

namespace A324108.P15363860477539193805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A324106 (n + 1)).toNat) (A230713 (n + 1))

end

end A324108.P15363860477539193805

/-! ## A324108.P9552213484026828951

`A000203(A324106(n+1)%A236371(n+1))`
-/

namespace A324108.P9552213484026828951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A324106 (n + 1)) (A236371 (n + 1))).toNat

end

end A324108.P9552213484026828951

/-! ## A324108.P7152977209756107237

`A070039(A155555(2*n+1)*A324106(n+1))`
-/

namespace A324108.P7152977209756107237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (A155555 (2 * n + 1) * A324106 (n + 1)).toNat

end

end A324108.P7152977209756107237

/-! ## A324108.P16413995849255586040

`A000203(A324106(n+1)+A217148(n+1)²²)`
-/

namespace A324108.P16413995849255586040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A324106 (n + 1) + (A217148 (n + 1) ^ 2) ^ 2).toNat

end

end A324108.P16413995849255586040

/-! ## A324108.P10478414162480877939

`A000203(A324106(n+1)+A217149(n+1)²²)`
-/

namespace A324108.P10478414162480877939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A324106 (n + 1) + (A217149 (n + 1) ^ 2) ^ 2).toNat

end

end A324108.P10478414162480877939

/-!
# A324109: Numbers n such that A324108(n) = A324054(n-1).

The programs for A324109, there is no canonical definition to state claims against.
-/

/-! ## A324109.P6194645604741411054

`eq[A324054(n), A324108(n+1)]+1`
-/

namespace A324109.P6194645604741411054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324109.P6194645604741411054

/-! ## A324109.P15658065438107897072

`eq[A000203(A005940(n+1)), A324108(n+1)]+1`
-/

namespace A324109.P15658065438107897072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324109.P15658065438107897072

/-! ## A324109.P6880740328156268824

`eq[A000203(A292602(3*(n+1)+n)), A324108(n+1)]+1`
-/

namespace A324109.P6880740328156268824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A292602 (3 * (n + 1) + n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324109.P6880740328156268824

/-! ## A324109.P1708746684703483802

`lt[A332288(n+1), val(n+1, 2)+2]+1`
-/

namespace A324109.P1708746684703483802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324109.P1708746684703483802

/-! ## A324109.P3668930791479653938

`lt[A332288(n+1), A085058(n)]+1`
-/

namespace A324109.P3668930791479653938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324109.P3668930791479653938

/-! ## A324109.P10187820792672746116

`A321193(n+1)/A141310((2*n+1)²)`
-/

namespace A324109.P10187820792672746116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321193 (n + 1) : ℚ) / (A141310 ((2 * n + 1) ^ 2) : ℚ)

end

end A324109.P10187820792672746116

/-! ## A324109.P3142404450230079302

`A004525(A321193(n+1)^A178489(n))`
-/

namespace A324109.P3142404450230079302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A321193 (n + 1) : ℚ) ^ (A178489 n : ℤ))).toNat

end

end A324109.P3142404450230079302

/-! ## A324109.P7477568937590469529

`A321193(n+1)/A000005(A123252(n+1))`
-/

namespace A324109.P7477568937590469529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321193 (n + 1) : ℚ) / (A000005 (A123252 (n + 1)).toNat : ℚ)

end

end A324109.P7477568937590469529

/-! ## A324109.P1848637821949325839

`A321193(n+1)/A020639(A123252(n+1)+1)`
-/

namespace A324109.P1848637821949325839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321193 (n + 1) : ℚ) / (A020639 (A123252 (n + 1) + 1).toNat : ℚ)

end

end A324109.P1848637821949325839

/-! ## A324109.P2573821028560156123

`A321193(n+1)/A020639(2*A048670(n+1))`
-/

namespace A324109.P2573821028560156123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321193 (n + 1) : ℚ) / (A020639 (2 * A048670 (n + 1)).toNat : ℚ)

end

end A324109.P2573821028560156123

/-!
# A324110: Numbers k such that A324108(k) != A324054(k-1).

The programs for A324110, there is no canonical definition to state claims against.
-/

/-! ## A324110.P15711051906343005082

`comp[A324109(n+1)-1]+1`
-/

namespace A324110.P15711051906343005082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324110.P15711051906343005082

/-! ## A324110.P1081653190812785783

`∩[A070537(n+1), comp[A324109(n+1)]]`
-/

namespace A324110.P1081653190812785783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A324110.P1081653190812785783

/-! ## A324110.P3178404736273937010

`lt[2^val(n+1, 2), A335450(n+1)]+1`
-/

namespace A324110.P3178404736273937010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324110.P3178404736273937010

/-! ## A324110.P418262086445879315

`lt[A091090(n), A335450(n+1)]+1`
-/

namespace A324110.P418262086445879315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324110.P418262086445879315

/-! ## A324110.P14702862955339317760

`∩[A070537(n+1), A137353(n+1)]`
-/

namespace A324110.P14702862955339317760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324110.P14702862955339317760

/-!
# A324111: Numbers n for which A324108(n) = A324054(n-1) and which are neither prime powers nor of the form 2^i * p^j, where p is an odd prime, with either exponent i or j > 0.

The programs for A324111, there is no canonical definition to state claims against.
-/

/-! ## A324111.P13201714755754372047

`∩[A070537(n+1), A324109(n+1)]`
-/

namespace A324111.P13201714755754372047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324111.P13201714755754372047

/-! ## A324111.P11195590109222329347

`Δ[A029578(Δ[A304613(n)])]`
-/

namespace A324111.P11195590109222329347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324111.P11195590109222329347

/-!
# A324113: a(n) = -1, 0 or +1 depending on whether A156552(n) is A000120-deficient, -perfect or -abundant: a(n) = sign(A324100(n)).

The programs for A324113, the canonical program `A324113.P3350041187226729639` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324113 has offset 2).

The definition of A324113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324113.P3350041187226729639

`round(sin(atan(A324100(n+2))))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324113

/-- `round(sin(atan(A324100(n+2))))` -/
def P3350041187226729639.Spec : Prop :=
  ∀ n, P3350041187226729639.a n = A324113 (n + 2)

theorem P3350041187226729639.correct : P3350041187226729639.Spec := by
  intro n
  simp only [A324113, Nat.add_sub_cancel]

end A324113

/-! ## A324113.P6149584019751464010

`round(tanh(A324100(n+2)))`
-/

namespace A324113.P6149584019751464010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A324100 (n + 2) : ℝ))

end

end A324113.P6149584019751464010

namespace A324113

/-- `round(tanh(A324100(n+2)))` -/
def P6149584019751464010.Spec : Prop :=
  ∀ n, P6149584019751464010.a n = A324113 (n + 2)

end A324113

/-! ## A324113.P8103022545072933604

`round(atan(A324100(n+2)))^A001844(n)`
-/

namespace A324113.P8103022545072933604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.arctan (A324100 (n + 2) : ℝ)) : ℚ) ^ (A001844 n : ℤ)

end

end A324113.P8103022545072933604

namespace A324113

/-- `round(atan(A324100(n+2)))^A001844(n)` -/
def P8103022545072933604.Spec : Prop :=
  ∀ n, P8103022545072933604.a n = (A324113 (n + 2) : ℚ)

end A324113

/-! ## A324113.P13176528397270843830

`round(atan(A324100(n+2)))^A008514(n)`
-/

namespace A324113.P13176528397270843830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.arctan (A324100 (n + 2) : ℝ)) : ℚ) ^ (A008514 n : ℤ)

end

end A324113.P13176528397270843830

namespace A324113

/-- `round(atan(A324100(n+2)))^A008514(n)` -/
def P13176528397270843830.Spec : Prop :=
  ∀ n, P13176528397270843830.a n = (A324113 (n + 2) : ℚ)

end A324113

/-! ## A324113.P7927736137025264491

`round(atan(A324100(n+2)))^A000203((n+1)²)`
-/

namespace A324113.P7927736137025264491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.arctan (A324100 (n + 2) : ℝ)) : ℚ) ^ (A000203 ((n + 1) ^ 2) : ℤ)

end

end A324113.P7927736137025264491

namespace A324113

/-- `round(atan(A324100(n+2)))^A000203((n+1)²)` -/
def P7927736137025264491.Spec : Prop :=
  ∀ n, P7927736137025264491.a n = (A324113 (n + 2) : ℚ)

end A324113

/-!
# A324114: A000120-deficiency of n permuted by Doudna-sequence: a(n) = A192895(A005940(1+n)).

The programs for A324114, the canonical program `A324114.P1737227159885335025` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324114 has offset 0).

The definition of A324114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324114.P1737227159885335025

`A192895(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A324114

/-- `A192895(A005940(1+n))` -/
def P1737227159885335025.Spec : Prop :=
  ∀ n, P1737227159885335025.a n = A324114 n

theorem P1737227159885335025.correct : P1737227159885335025.Spec := by
  intro n
  simp only [A324114]

end A324114

/-! ## A324114.P18361792181862505423

`A324194(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A324114.P18361792181862505423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324194 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A324114.P18361792181862505423

namespace A324114

/-- `A324194(∏[char[2^n]+char[1]+1]-n-1)` -/
def P18361792181862505423.Spec : Prop :=
  ∀ n, P18361792181862505423.a n = A324114 n

end A324114

/-! ## A324114.P1594326731896436663

`A292257(A337375(n)*A337376(n))-A295894(n)`
-/

namespace A324114.P1594326731896436663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (A337375 n * A337376 n).toNat - A295894 n

end

end A324114.P1594326731896436663

namespace A324114

/-- `A292257(A337375(n)*A337376(n))-A295894(n)` -/
def P1594326731896436663.Spec : Prop :=
  ∀ n, P1594326731896436663.a n = A324114 n

end A324114

/-! ## A324114.P13191206735568862628

`A292257((A324055(n)+A324054(n))/2)-A295894(n)`
-/

namespace A324114.P13191206735568862628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat - A295894 n

end

end A324114.P13191206735568862628

namespace A324114

/-- `A292257((A324055(n)+A324054(n))/2)-A295894(n)` -/
def P13191206735568862628.Spec : Prop :=
  ∀ n, P13191206735568862628.a n = A324114 n

end A324114

/-! ## A324114.P11280530628568643722

`A292257(A340364(n+1)*A340365(n+1))-A295894(n)`
-/

namespace A324114.P11280530628568643722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (A340364 (n + 1) * A340365 (n + 1)).toNat - A295894 n

end

end A324114.P11280530628568643722

namespace A324114

/-- `A292257(A340364(n+1)*A340365(n+1))-A295894(n)` -/
def P11280530628568643722.Spec : Prop :=
  ∀ n, P11280530628568643722.a n = A324114 n

end A324114

/-! ## A324114.P17998749291933852926

`A292257(A337375(2*n)*A337377(2*n))-A295894(n)`
-/

namespace A324114.P17998749291933852926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (A337375 (2 * n) * A337377 (2 * n)).toNat - A295894 n

end

end A324114.P17998749291933852926

namespace A324114

/-- `A292257(A337375(2*n)*A337377(2*n))-A295894(n)` -/
def P17998749291933852926.Spec : Prop :=
  ∀ n, P17998749291933852926.a n = A324114 n

end A324114

/-! ## A324114.P3987040881494016616

`A192895(A324394(n)*A324395(n))`
-/

namespace A324114.P3987040881494016616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A324394 n * A324395 n).toNat

end

end A324114.P3987040881494016616

namespace A324114

/-- `A192895(A324394(n)*A324395(n))` -/
def P3987040881494016616.Spec : Prop :=
  ∀ n, P3987040881494016616.a n = A324114 n

end A324114

/-! ## A324114.P5347169072425906876

`A192895(A337375(n)*A337376(n))`
-/

namespace A324114.P5347169072425906876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A337375 n * A337376 n).toNat

end

end A324114.P5347169072425906876

namespace A324114

/-- `A192895(A337375(n)*A337376(n))` -/
def P5347169072425906876.Spec : Prop :=
  ∀ n, P5347169072425906876.a n = A324114 n

end A324114

/-! ## A324114.P15756090042794787480

`A192895(A340362(n+1)+A324106(n+1))`
-/

namespace A324114.P15756090042794787480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A324114.P15756090042794787480

namespace A324114

/-- `A192895(A340362(n+1)+A324106(n+1))` -/
def P15756090042794787480.Spec : Prop :=
  ∀ n, P15756090042794787480.a n = A324114 n

end A324114

/-! ## A324114.P12869429564187374446

`A192895(A324641(n+1)-A324640(n+1))`
-/

namespace A324114.P12869429564187374446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A324114.P12869429564187374446

namespace A324114

/-- `A192895(A324641(n+1)-A324640(n+1))` -/
def P12869429564187374446.Spec : Prop :=
  ∀ n, P12869429564187374446.a n = A324114 n

end A324114

/-! ## A324114.P513135996177079869

`A192895(A340364(n+1)*A340365(n+1))`
-/

namespace A324114.P513135996177079869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A324114.P513135996177079869

namespace A324114

/-- `A192895(A340364(n+1)*A340365(n+1))` -/
def P513135996177079869.Spec : Prop :=
  ∀ n, P513135996177079869.a n = A324114 n

end A324114

/-!
# A324115: a(n) = A002487(A323244(n)).

The programs for A324115, there is no canonical definition to state claims against.
-/

/-! ## A324115.P3853466457072222880

`A002487(and(2^n-1, A323244(n+1)))`
-/

namespace A324115.P3853466457072222880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land ((2 ^ n : ℤ) - 1) (A323244 (n + 1))).toNat

end

end A324115.P3853466457072222880

/-! ## A324115.P2725826841999676564

`A002487(A323244(n+1)^A010146(n))`
-/

namespace A324115.P2725826841999676564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A323244 (n + 1) : ℚ) ^ (A010146 n : ℤ))).toNat

end

end A324115.P2725826841999676564

/-! ## A324115.P14949599141259146406

`A002487(A323244(n+1)^A010156(n))`
-/

namespace A324115.P14949599141259146406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A323244 (n + 1) : ℚ) ^ (A010156 n : ℤ))).toNat

end

end A324115.P14949599141259146406

/-! ## A324115.P15887358303067678628

`A002487(A323244(n+1)^A288872(n))`
-/

namespace A324115.P15887358303067678628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A323244 (n + 1) : ℚ) ^ (A288872 n : ℤ))).toNat

end

end A324115.P15887358303067678628

/-! ## A324115.P3968598857210289529

`A283976(A323244(n+1)^A288872(n))`
-/

namespace A324115.P3968598857210289529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (SequenceMachineLib.roundAway ((A323244 (n + 1) : ℚ) ^ (A288872 n : ℤ))).toNat

end

end A324115.P3968598857210289529

/-!
# A324116: a(n) = A002487(1+A323247(n)) = A324288(A156552(n)).

The programs for A324116, the canonical program `A324116.P13696409420747170641` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324116 has offset 1).

The definition of A324116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A324288, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324116.P13696409420747170641

`A324288(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324116

/-- `A324288(A156552(n+1))` -/
def P13696409420747170641.Spec : Prop :=
  ∀ n, P13696409420747170641.a n = A324116 (n + 1)

theorem P13696409420747170641.correct : P13696409420747170641.Spec := by
  intro n
  simp only [A324116, Nat.add_sub_cancel]

end A324116

/-! ## A324116.P8888478207738852807

`A002487(1+A323247(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324116.P8888478207738852807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A323247 (n + 1)).toNat

end

end A324116.P8888478207738852807

namespace A324116

/-- `A002487(1+A323247(n+1))` -/
def P8888478207738852807.Spec : Prop :=
  ∀ n, P8888478207738852807.a n = A324116 (n + 1)

end A324116

/-! ## A324116.P1557359763924765223

`A324288(A005941(n+1)-1)`
-/

namespace A324116.P1557359763924765223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (A005941 (n + 1) - 1).toNat

end

end A324116.P1557359763924765223

namespace A324116

/-- `A324288(A005941(n+1)-1)` -/
def P1557359763924765223.Spec : Prop :=
  ∀ n, P1557359763924765223.a n = A324116 (n + 1)

end A324116

/-! ## A324116.P15134009653712656697

`A324288(∑{d}[n+1, A297112(#)])`
-/

namespace A324116.P15134009653712656697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A324116.P15134009653712656697

namespace A324116

/-- `A324288(∑{d}[n+1, A297112(#)])` -/
def P15134009653712656697.Spec : Prop :=
  ∀ n, P15134009653712656697.a n = A324116 (n + 1)

end A324116

/-! ## A324116.P6814552173549013579

`A324288((A322993(2*(n+1))-1)/2)`
-/

namespace A324116.P6814552173549013579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A324116.P6814552173549013579

namespace A324116

/-- `A324288((A322993(2*(n+1))-1)/2)` -/
def P6814552173549013579.Spec : Prop :=
  ∀ n, P6814552173549013579.a n = A324116 (n + 1)

end A324116

/-! ## A324116.P12026062532797750162

`A324288(A057428(n)+A005941(n+1))`
-/

namespace A324116.P12026062532797750162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (A057428 n + A005941 (n + 1)).toNat

end

end A324116.P12026062532797750162

namespace A324116

/-- `A324288(A057428(n)+A005941(n+1))` -/
def P12026062532797750162.Spec : Prop :=
  ∀ n, P12026062532797750162.a n = A324116 (n + 1)

end A324116

/-! ## A324116.P6118887307060747964

`A324288(A323905(n+1)+A048675(n+1))`
-/

namespace A324116.P6118887307060747964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (A323905 (n + 1) + A048675 (n + 1)).toNat

end

end A324116.P6118887307060747964

namespace A324116

/-- `A324288(A323905(n+1)+A048675(n+1))` -/
def P6118887307060747964.Spec : Prop :=
  ∀ n, P6118887307060747964.a n = A324116 (n + 1)

end A324116

/-! ## A324116.P1684647555717011217

`A324288(A292382(n+1)+A292380(n+1))`
-/

namespace A324116.P1684647555717011217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (A292382 (n + 1) + A292380 (n + 1)).toNat

end

end A324116.P1684647555717011217

namespace A324116

/-- `A324288(A292382(n+1)+A292380(n+1))` -/
def P1684647555717011217.Spec : Prop :=
  ∀ n, P1684647555717011217.a n = A324116 (n + 1)

end A324116

/-!
# A324117: Number of odd divisors in A156552(n): a(1) = 0, for n > 1, a(n) = A001227(A156552(n)) = A000005(A322993(n)).

The programs for A324117, there is no canonical definition to state claims against.
-/

/-! ## A324117.P3412175224016040690

`A324105(A348717(n+1))`
-/

namespace A324117.P3412175224016040690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A348717 (n + 1)).toNat

end

end A324117.P3412175224016040690

/-! ## A324117.P3472616269139498911

`A324105(n+1)/A028310(A055396(n+1))`
-/

namespace A324117.P3472616269139498911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324105 (n + 1) : ℚ) / (A028310 (A055396 (n + 1)).toNat : ℚ)

end

end A324117.P3472616269139498911

/-! ## A324117.P10219366226278895937

`A324105(A003961(n+1))-A324105(n+1)`
-/

namespace A324117.P10219366226278895937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A003961 (n + 1)).toNat - A324105 (n + 1)

end

end A324117.P10219366226278895937

/-! ## A324117.P11476600476049793072

`gcd(A324105(A118306(n+1)), A324105(n+1))`
-/

namespace A324117.P11476600476049793072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324105 (A118306 (n + 1)).toNat) (A324105 (n + 1))

end

end A324117.P11476600476049793072

/-! ## A324117.P16479299721314936653

`A324105(A243501(n+1)-1)-A324105(n+1)`
-/

namespace A324117.P16479299721314936653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A243501 (n + 1) - 1).toNat - A324105 (n + 1)

end

end A324117.P16479299721314936653

/-! ## A324117.P4969215931546121651

`A324105(A014681(A243501(n+1)))-A324105(n+1)`
-/

namespace A324117.P4969215931546121651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A014681 (A243501 (n + 1)).toNat).toNat - A324105 (n + 1)

end

end A324117.P4969215931546121651

/-! ## A324117.P2978379908470566766

`A324105(A137502(A137502(n+1)))`
-/

namespace A324117.P2978379908470566766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A137502 (A137502 (n + 1)).toNat).toNat

end

end A324117.P2978379908470566766

/-! ## A324117.P17740682025282655785

`∑{d}[A322993(n+1), #%2]`
-/

namespace A324117.P17740682025282655785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A324117.P17740682025282655785

/-! ## A324117.P7785546044437113816

`∑{d}[∑{d}[n+1, A322994(#)], and(1, #)]`
-/

namespace A324117.P7785546044437113816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A322994 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A324117.P7785546044437113816

/-! ## A324117.P15211962011205671947

`∑{d}[A322993(n+1), gcd(#, A000040(n+1))]`
-/

namespace A324117.P15211962011205671947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 (n + 1))

end

end A324117.P15211962011205671947

/-! ## A324117.P4970375067302093563

`∑{d}[A322993(n+1), A322812(A000005(#)+2)]`
-/

namespace A324117.P4970375067302093563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322812 (A000005 d + 2).toNat

end

end A324117.P4970375067302093563

/-! ## A324117.P9212959672971381471

`∑{d}[A322993(n+1), A324119(A000005(#)+2)]`
-/

namespace A324117.P9212959672971381471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A324119 (A000005 d + 2).toNat

end

end A324117.P9212959672971381471

/-!
# A324118: Sum of odd divisors in A156552(n): a(1) = 0, for n > 1, a(n) = A000593(A156552(n)) = A000203(A322993(n)).

The programs for A324118, there is no canonical definition to state claims against.
-/

/-! ## A324118.P13031191040764295160

`∑{d}[n+1, A324542(#)]`
-/

namespace A324118.P13031191040764295160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324542 d

end

end A324118.P13031191040764295160

/-! ## A324118.P6228008249762699143

`A324865(A348717(n+1))+A322993(n+1)`
-/

namespace A324118.P6228008249762699143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (A348717 (n + 1)).toNat + A322993 (n + 1)

end

end A324118.P6228008249762699143

/-! ## A324118.P8574643877616054844

`A323243(A348717(n+1))`
-/

namespace A324118.P8574643877616054844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A348717 (n + 1)).toNat

end

end A324118.P8574643877616054844

/-! ## A324118.P15282836640752380370

`∑{d}[A348717(n+1), A324543(#)]`
-/

namespace A324118.P15282836640752380370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A324543 d

end

end A324118.P15282836640752380370

/-! ## A324118.P13214316879926380409

`A323243(∑{d}[n+1, A354185(#)])`
-/

namespace A324118.P13214316879926380409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (∑ d ∈ Nat.divisors (f1 n), A354185 d).toNat

end

end A324118.P13214316879926380409

/-! ## A324118.P17770853809363818193

`A323243(A000007(n)+2*A246277(n+1))`
-/

namespace A324118.P17770853809363818193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A000007 n + 2 * A246277 (n + 1)).toNat

end

end A324118.P17770853809363818193

/-! ## A324118.P18019651092737607313

`A323243(A246277(n+1)+A246277(n+1)+A000007(n))`
-/

namespace A324118.P18019651092737607313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A246277 (n + 1) + (A246277 (n + 1) + A000007 n)).toNat

end

end A324118.P18019651092737607313

/-! ## A324118.P1972409124807218842

`gcd(A323243(A003961(n+1)), A323243(n+1))`
-/

namespace A324118.P1972409124807218842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323243 (A003961 (n + 1)).toNat) (A323243 (n + 1))

end

end A324118.P1972409124807218842

/-! ## A324118.P6777760523638541500

`A323243(A137502(A137502(n+1)))`
-/

namespace A324118.P6777760523638541500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A137502 (A137502 (n + 1)).toNat).toNat

end

end A324118.P6777760523638541500

/-! ## A324118.P16478652208011856985

`∑{d}[A322993(n+1), #]`
-/

namespace A324118.P16478652208011856985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324118.P16478652208011856985

/-! ## A324118.P8073295544029882211

`∑{d}[∑{d}[n+1, A322994(#)], #]`
-/

namespace A324118.P8073295544029882211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A322994 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324118.P8073295544029882211

/-! ## A324118.P14206326827428082937

`∑{d}[2/A000079(A055396(n+1))*A156552(n+1), #]`
-/

namespace A324118.P14206326827428082937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 (A055396 (n + 1)).toNat : ℚ) * (A156552 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A324118.P14206326827428082937

/-!
# A324119: a(n) = A001221(A156552(n)).

The programs for A324119, the canonical program `A324119.P3213486586023766556` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324119 has offset 2).

The definition of A324119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324119.P3213486586023766556

`A001221(A156552(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324119

/-- `A001221(A156552(n+2))` -/
def P3213486586023766556.Spec : Prop :=
  ∀ n, P3213486586023766556.a n = A324119 (n + 2)

theorem P3213486586023766556.correct : P3213486586023766556.Spec := by
  intro n
  simp only [A324119, Nat.add_sub_cancel]

end A324119

/-! ## A324119.P9670617742398797400

`∑{e}[A331602(n+2), #]`
-/

namespace A324119.P9670617742398797400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324119.P9670617742398797400

namespace A324119

/-- `∑{e}[A331602(n+2), #]` -/
def P9670617742398797400.Spec : Prop :=
  ∀ n, (P9670617742398797400.a n : ℤ) = A324119 (n + 2)

end A324119

/-! ## A324119.P2121023026707449337

`A023966(∏{e}[A331602(n+2), #+1])`
-/

namespace A324119.P2121023026707449337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023966 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A324119.P2121023026707449337

namespace A324119

/-- `A023966(∏{e}[A331602(n+2), #+1])` -/
def P2121023026707449337.Spec : Prop :=
  ∀ n, P2121023026707449337.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P13751840848942886402

`val(∏{e}[A331602(n+2), A000040(#)], 2)`
-/

namespace A324119.P13751840848942886402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat 2

end

end A324119.P13751840848942886402

namespace A324119

/-- `val(∏{e}[A331602(n+2), A000040(#)], 2)` -/
def P13751840848942886402.Spec : Prop :=
  ∀ n, (P13751840848942886402.a n : ℤ) = A324119 (n + 2)

end A324119

/-! ## A324119.P14411746630671777762

`A100995(∏{e}[A331602(n+2), A000040(#)])`
-/

namespace A324119.P14411746630671777762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A324119.P14411746630671777762

namespace A324119

/-- `A100995(∏{e}[A331602(n+2), A000040(#)])` -/
def P14411746630671777762.Spec : Prop :=
  ∀ n, P14411746630671777762.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P16967072961691384628

`A334206(∏{e}[A331602(n+2), A000040(#)])`
-/

namespace A324119.P16967072961691384628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334206 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A324119.P16967072961691384628

namespace A324119

/-- `A334206(∏{e}[A331602(n+2), A000040(#)])` -/
def P16967072961691384628.Spec : Prop :=
  ∀ n, P16967072961691384628.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P16149849297901795329

`∑{p}[A331602(n+2), A001221(#)]`
-/

namespace A324119.P16149849297901795329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A324119.P16149849297901795329

namespace A324119

/-- `∑{p}[A331602(n+2), A001221(#)]` -/
def P16149849297901795329.Spec : Prop :=
  ∀ n, P16149849297901795329.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P11478657992964187925

`∑{p}[A331602(n+2), A001222(#)]`
-/

namespace A324119.P11478657992964187925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A324119.P11478657992964187925

namespace A324119

/-- `∑{p}[A331602(n+2), A001222(#)]` -/
def P11478657992964187925.Spec : Prop :=
  ∀ n, P11478657992964187925.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P10466812310058928036

`∑{p}[A331602(n+2), A005361(#)]`
-/

namespace A324119.P10466812310058928036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005361 p

end

end A324119.P10466812310058928036

namespace A324119

/-- `∑{p}[A331602(n+2), A005361(#)]` -/
def P10466812310058928036.Spec : Prop :=
  ∀ n, P10466812310058928036.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P4906456317643709219

`∑{p}[A331602(n+2), A050377(#)]`
-/

namespace A324119.P4906456317643709219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A050377 p

end

end A324119.P4906456317643709219

namespace A324119

/-- `∑{p}[A331602(n+2), A050377(#)]` -/
def P4906456317643709219.Spec : Prop :=
  ∀ n, P4906456317643709219.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P7035882335475449916

`∑{p}[A331602(n+2), A050379(#)]`
-/

namespace A324119.P7035882335475449916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A050379 p

end

end A324119.P7035882335475449916

namespace A324119

/-- `∑{p}[A331602(n+2), A050379(#)]` -/
def P7035882335475449916.Spec : Prop :=
  ∀ n, P7035882335475449916.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P1278921203712887357

`A032741(∏{p}[A331602(n+2), A001222(#)+2])`
-/

namespace A324119.P1278921203712887357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001222 p + 2)).toNat

end

end A324119.P1278921203712887357

namespace A324119

/-- `A032741(∏{p}[A331602(n+2), A001222(#)+2])` -/
def P1278921203712887357.Spec : Prop :=
  ∀ n, P1278921203712887357.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P55489888684572347

`A001221(A331602(n+2))`
-/

namespace A324119.P55489888684572347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331602 (n + 2)).toNat

end

end A324119.P55489888684572347

namespace A324119

/-- `A001221(A331602(n+2))` -/
def P55489888684572347.Spec : Prop :=
  ∀ n, P55489888684572347.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P17955698268048642193

`A001222(∏{p}[A331602(n+2), #])`
-/

namespace A324119.P17955698268048642193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324119.P17955698268048642193

namespace A324119

/-- `A001222(∏{p}[A331602(n+2), #])` -/
def P17955698268048642193.Spec : Prop :=
  ∀ n, P17955698268048642193.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P11257012945506736519

`A001221(A322993(n+2))+n%2`
-/

namespace A324119.P11257012945506736519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322993 (n + 2)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A324119.P11257012945506736519

namespace A324119

/-- `A001221(A322993(n+2))+n%2` -/
def P11257012945506736519.Spec : Prop :=
  ∀ n, P11257012945506736519.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P15847247181550170343

`A000035(n)+A001221(A322993(n+2))`
-/

namespace A324119.P15847247181550170343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A001221 (A322993 (n + 2)).toNat

end

end A324119.P15847247181550170343

namespace A324119

/-- `A000035(n)+A001221(A322993(n+2))` -/
def P15847247181550170343.Spec : Prop :=
  ∀ n, P15847247181550170343.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P2124725123243505642

`A000005(2*A000005(A331602(n+2)))-2`
-/

namespace A324119.P2124725123243505642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000005 (A331602 (n + 2)).toNat).toNat - 2

end

end A324119.P2124725123243505642

namespace A324119

/-- `A000005(2*A000005(A331602(n+2)))-2` -/
def P2124725123243505642.Spec : Prop :=
  ∀ n, P2124725123243505642.a n = A324119 (n + 2)

end A324119

/-! ## A324119.P7719463497190106407

`A001221(A322993(n+2))+val(A020639(n+1), 2)`
-/

namespace A324119.P7719463497190106407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322993 (n + 2)).toNat + (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2 : ℤ)

end

end A324119.P7719463497190106407

namespace A324119

/-- `A001221(A322993(n+2))+val(A020639(n+1), 2)` -/
def P7719463497190106407.Spec : Prop :=
  ∀ n, P7719463497190106407.a n = A324119 (n + 2)

end A324119

/-!
# A324120: Binary weight of SumXOR variant of A297168: a(n) = A000120(A324180(n)).

The programs for A324120, there is no canonical definition to state claims against.
-/

/-! ## A324120.P619884463344596633

`A000120(A324180(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324120.P619884463344596633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324180 (n + 1)).toNat

end

end A324120.P619884463344596633

/-! ## A324120.P8043808538300505102

`∑{d}[A324180(n+1), A297115(#)]`
-/

namespace A324120.P8043808538300505102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A324120.P8043808538300505102

/-! ## A324120.P16649310962274805916

`A048881(2*A324180(n+1))`
-/

namespace A324120.P16649310962274805916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A324180 (n + 1)).toNat

end

end A324120.P16649310962274805916

/-! ## A324120.P3623270768218070880

`∑{e}[A324193(n+1), (2-#)²]`
-/

namespace A324120.P3623270768218070880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ)) ^ 2

end

end A324120.P3623270768218070880

/-! ## A324120.P9169757173657729218

`∑{e}[A324193(n+1)+A000007(n), A092037(#)]`
-/

namespace A324120.P9169757173657729218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324193 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A092037 (Nat.factorization (f1 n).natAbs p)

end

end A324120.P9169757173657729218

/-!
# A324121: a(n) = gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

The programs for A324121, the canonical program `A324121.P11277204959102543780` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324121 has offset 1).

The definition of A324121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324121.P1387016098372943663

`A324058(A156552(n+1))`
-/

namespace A324121.P1387016098372943663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324058 (A156552 (n + 1)).toNat

end

end A324121.P1387016098372943663

namespace A324121

/-- `A324058(A156552(n+1))` -/
def P1387016098372943663.Spec : Prop :=
  ∀ n, P1387016098372943663.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P11277204959102543780

`gcd(∑{d}[n+1, #], A038040(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324121

/-- `gcd(∑{d}[n+1, #], A038040(n+1))` -/
def P11277204959102543780.Spec : Prop :=
  ∀ n, (P11277204959102543780.a n : ℤ) = A324121 (n + 1)

theorem P11277204959102543780.correct : P11277204959102543780.Spec := by
  intro n
  simp only [A324121, Nat.add_sub_cancel]

end A324121

/-! ## A324121.P1469165499898622601

`A000203(n+1)-A324122(n+1)`
-/

namespace A324121.P1469165499898622601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A324122 (n + 1)

end

end A324121.P1469165499898622601

namespace A324121

/-- `A000203(n+1)-A324122(n+1)` -/
def P1469165499898622601.Spec : Prop :=
  ∀ n, P1469165499898622601.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P5881522776843174485

`A009205(n+1)*A348969(n+1)`
-/

namespace A324121.P5881522776843174485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (n + 1) * A348969 (n + 1)

end

end A324121.P5881522776843174485

namespace A324121

/-- `A009205(n+1)*A348969(n+1)` -/
def P5881522776843174485.Spec : Prop :=
  ∀ n, P5881522776843174485.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P13019659396164013837

`A000203(n+1)/A099378(n+1)`
-/

namespace A324121.P13019659396164013837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A099378 (n + 1) : ℚ)

end

end A324121.P13019659396164013837

namespace A324121

/-- `A000203(n+1)/A099378(n+1)` -/
def P13019659396164013837.Spec : Prop :=
  ∀ n, P13019659396164013837.a n = (A324121 (n + 1) : ℚ)

end A324121

/-! ## A324121.P12492701583039855910

`A038040(n+1)/A099377(n+1)`
-/

namespace A324121.P12492701583039855910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A099377 (n + 1) : ℚ)

end

end A324121.P12492701583039855910

namespace A324121

/-- `A038040(n+1)/A099377(n+1)` -/
def P12492701583039855910.Spec : Prop :=
  ∀ n, P12492701583039855910.a n = (A324121 (n + 1) : ℚ)

end A324121

/-! ## A324121.P5058798757553332466

`gcd(A000203(n+1), A038040(n+1))`
-/

namespace A324121.P5058798757553332466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A038040 (n + 1))

end

end A324121.P5058798757553332466

namespace A324121

/-- `gcd(A000203(n+1), A038040(n+1))` -/
def P5058798757553332466.Spec : Prop :=
  ∀ n, (P5058798757553332466.a n : ℤ) = A324121 (n + 1)

end A324121

/-! ## A324121.P4811687912040585485

`gcd(A009242(n+1), A094471(n+1))`
-/

namespace A324121.P4811687912040585485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009242 (n + 1)) (A094471 (n + 1))

end

end A324121.P4811687912040585485

namespace A324121

/-- `gcd(A009242(n+1), A094471(n+1))` -/
def P4811687912040585485.Spec : Prop :=
  ∀ n, (P4811687912040585485.a n : ℤ) = A324121 (n + 1)

end A324121

/-! ## A324121.P5942700235241999928

`gcd(A009278(n+1), A152211(n+1))`
-/

namespace A324121.P5942700235241999928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009278 (n + 1)) (A152211 (n + 1))

end

end A324121.P5942700235241999928

namespace A324121

/-- `gcd(A009278(n+1), A152211(n+1))` -/
def P5942700235241999928.Spec : Prop :=
  ∀ n, (P5942700235241999928.a n : ℤ) = A324121 (n + 1)

end A324121

/-! ## A324121.P18445515169803242948

`gcd(A143348(n+1), A324122(n+1))`
-/

namespace A324121.P18445515169803242948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A324122 (n + 1))

end

end A324121.P18445515169803242948

namespace A324121

/-- `gcd(A143348(n+1), A324122(n+1))` -/
def P18445515169803242948.Spec : Prop :=
  ∀ n, (P18445515169803242948.a n : ℤ) = A324121 (n + 1)

end A324121

/-! ## A324121.P5757507609532054720

`A088580(n+1)-(A324122(n+1)+1)`
-/

namespace A324121.P5757507609532054720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A324122 (n + 1) + 1)

end

end A324121.P5757507609532054720

namespace A324121

/-- `A088580(n+1)-(A324122(n+1)+1)` -/
def P5757507609532054720.Spec : Prop :=
  ∀ n, P5757507609532054720.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P10488772220732967830

`A074400(n+1)/(2*A099378(n+1))`
-/

namespace A324121.P10488772220732967830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A099378 (n + 1) : ℚ)

end

end A324121.P10488772220732967830

namespace A324121

/-- `A074400(n+1)/(2*A099378(n+1))` -/
def P10488772220732967830.Spec : Prop :=
  ∀ n, P10488772220732967830.a n = (A324121 (n + 1) : ℚ)

end A324121

/-! ## A324121.P13868299438049246848

`A001065(n+1)+1+n-A324122(n+1)`
-/

namespace A324121.P13868299438049246848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A324122 (n + 1)

end

end A324121.P13868299438049246848

namespace A324121

/-- `A001065(n+1)+1+n-A324122(n+1)` -/
def P13868299438049246848.Spec : Prop :=
  ∀ n, P13868299438049246848.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P1663660615611152725

`A064987(n+1)/(n+1)-A324122(n+1)`
-/

namespace A324121.P1663660615611152725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A324122 (n + 1) : ℚ)

end

end A324121.P1663660615611152725

namespace A324121

/-- `A064987(n+1)/(n+1)-A324122(n+1)` -/
def P1663660615611152725.Spec : Prop :=
  ∀ n, P1663660615611152725.a n = (A324121 (n + 1) : ℚ)

end A324121

/-! ## A324121.P4974319401435661944

`2*(n+1)-A033879(n+1)-A324122(n+1)`
-/

namespace A324121.P4974319401435661944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A324122 (n + 1)

end

end A324121.P4974319401435661944

namespace A324121

/-- `2*(n+1)-A033879(n+1)-A324122(n+1)` -/
def P4974319401435661944.Spec : Prop :=
  ∀ n, P4974319401435661944.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P10079481541052957385

`A000010(n+1)+A051612(n+1)-A324122(n+1)`
-/

namespace A324121.P10079481541052957385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A324122 (n + 1))

end

end A324121.P10079481541052957385

namespace A324121

/-- `A000010(n+1)+A051612(n+1)-A324122(n+1)` -/
def P10079481541052957385.Spec : Prop :=
  ∀ n, P10079481541052957385.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P350179137535248077

`A034448(n+1)+A048146(n+1)-A324122(n+1)`
-/

namespace A324121.P350179137535248077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A324122 (n + 1))

end

end A324121.P350179137535248077

namespace A324121

/-- `A034448(n+1)+A048146(n+1)-A324122(n+1)` -/
def P350179137535248077.Spec : Prop :=
  ∀ n, P350179137535248077.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P14322797053313342321

`A325965(n+1)+A325966(n+1)-A324122(n+1)`
-/

namespace A324121.P14322797053313342321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A324122 (n + 1))

end

end A324121.P14322797053313342321

namespace A324121

/-- `A325965(n+1)+A325966(n+1)-A324122(n+1)` -/
def P14322797053313342321.Spec : Prop :=
  ∀ n, P14322797053313342321.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P6470781831487354456

`A325971(n+1)+A325972(n+1)-A324122(n+1)`
-/

namespace A324121.P6470781831487354456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A324122 (n + 1))

end

end A324121.P6470781831487354456

namespace A324121

/-- `A325971(n+1)+A325972(n+1)-A324122(n+1)` -/
def P6470781831487354456.Spec : Prop :=
  ∀ n, P6470781831487354456.a n = A324121 (n + 1)

end A324121

/-! ## A324121.P12336765554736698699

`A325973(n+1)+A325974(n+1)-A324122(n+1)`
-/

namespace A324121.P12336765554736698699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A324122 (n + 1))

end

end A324121.P12336765554736698699

namespace A324121

/-- `A325973(n+1)+A325974(n+1)-A324122(n+1)` -/
def P12336765554736698699.Spec : Prop :=
  ∀ n, P12336765554736698699.a n = A324121 (n + 1)

end A324121

/-!
# A324122: a(n) = sigma(n) - gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

The programs for A324122, the canonical program `A324122.P6437590254037711062` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324122 has offset 1).

The definition of A324122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324121, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324122.P6437590254037711062

`A000203(n+1)-A324121(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324122

/-- `A000203(n+1)-A324121(n+1)` -/
def P6437590254037711062.Spec : Prop :=
  ∀ n, P6437590254037711062.a n = A324122 (n + 1)

theorem P6437590254037711062.correct : P6437590254037711062.Spec := by
  intro n
  simp only [A324122, Nat.add_sub_cancel]

end A324122

/-! ## A324122.P6705495751507536458

`∑{d}[n+1, #-(n+1)/A099377(n+1)]`
-/

namespace A324122.P6705495751507536458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℚ) - (n + 1 : ℚ) / (A099377 (n + 1) : ℚ))

end

end A324122.P6705495751507536458

namespace A324122

/-- `∑{d}[n+1, #-(n+1)/A099377(n+1)]` -/
def P6705495751507536458.Spec : Prop :=
  ∀ n, P6705495751507536458.a n = (A324122 (n + 1) : ℚ)

end A324122

/-! ## A324122.P4480813446707115579

`Δ[A160664(n)]-A324121(n+1)`
-/

namespace A324122.P4480813446707115579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324121 (n + 1)

end

end A324122.P4480813446707115579

namespace A324122

/-- `Δ[A160664(n)]-A324121(n+1)` -/
def P4480813446707115579.Spec : Prop :=
  ∀ n, P4480813446707115579.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P8751872604312234857

`(A099378(n+1)-1)*A324121(n+1)`
-/

namespace A324122.P8751872604312234857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099378 (n + 1) - 1) * A324121 (n + 1)

end

end A324122.P8751872604312234857

namespace A324122

/-- `(A099378(n+1)-1)*A324121(n+1)` -/
def P8751872604312234857.Spec : Prop :=
  ∀ n, P8751872604312234857.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P10056829283117742383

`A245092(2*n+1)-A324121(n+1)`
-/

namespace A324122.P10056829283117742383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A324121 (n + 1)

end

end A324122.P10056829283117742383

namespace A324122

/-- `A245092(2*n+1)-A324121(n+1)` -/
def P10056829283117742383.Spec : Prop :=
  ∀ n, P10056829283117742383.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P14620458072712109485

`A074400(n+1)/2-A324121(n+1)`
-/

namespace A324122.P14620458072712109485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A324121 (n + 1) : ℚ)

end

end A324122.P14620458072712109485

namespace A324122

/-- `A074400(n+1)/2-A324121(n+1)` -/
def P14620458072712109485.Spec : Prop :=
  ∀ n, P14620458072712109485.a n = (A324122 (n + 1) : ℚ)

end A324122

/-! ## A324122.P15334503158988161029

`A001065(n+1)+1+n-A324121(n+1)`
-/

namespace A324122.P15334503158988161029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A324121 (n + 1)

end

end A324122.P15334503158988161029

namespace A324122

/-- `A001065(n+1)+1+n-A324121(n+1)` -/
def P15334503158988161029.Spec : Prop :=
  ∀ n, P15334503158988161029.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P16913887879746529075

`2*(n+1)-A033879(n+1)-A324121(n+1)`
-/

namespace A324122.P16913887879746529075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A324121 (n + 1)

end

end A324122.P16913887879746529075

namespace A324122

/-- `2*(n+1)-A033879(n+1)-A324121(n+1)` -/
def P16913887879746529075.Spec : Prop :=
  ∀ n, P16913887879746529075.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P7938592988774289850

`A000010(n+1)+A051612(n+1)-A324121(n+1)`
-/

namespace A324122.P7938592988774289850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A324121 (n + 1))

end

end A324122.P7938592988774289850

namespace A324122

/-- `A000010(n+1)+A051612(n+1)-A324121(n+1)` -/
def P7938592988774289850.Spec : Prop :=
  ∀ n, P7938592988774289850.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P1637841476378678189

`A034448(n+1)+A048146(n+1)-A324121(n+1)`
-/

namespace A324122.P1637841476378678189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A324121 (n + 1))

end

end A324122.P1637841476378678189

namespace A324122

/-- `A034448(n+1)+A048146(n+1)-A324121(n+1)` -/
def P1637841476378678189.Spec : Prop :=
  ∀ n, P1637841476378678189.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P435114575173838369

`A038040(n+1)-(A324121(n+1)+A094471(n+1))`
-/

namespace A324122.P435114575173838369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - (A324121 (n + 1) + A094471 (n + 1))

end

end A324122.P435114575173838369

namespace A324122

/-- `A038040(n+1)-(A324121(n+1)+A094471(n+1))` -/
def P435114575173838369.Spec : Prop :=
  ∀ n, P435114575173838369.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P2885770838504476541

`A000593(n+1)+A146076(n+1)-A324121(n+1)`
-/

namespace A324122.P2885770838504476541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A324121 (n + 1))

end

end A324122.P2885770838504476541

namespace A324122

/-- `A000593(n+1)+A146076(n+1)-A324121(n+1)` -/
def P2885770838504476541.Spec : Prop :=
  ∀ n, P2885770838504476541.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P401229840656887765

`A325965(n+1)+A325966(n+1)-A324121(n+1)`
-/

namespace A324122.P401229840656887765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A324121 (n + 1))

end

end A324122.P401229840656887765

namespace A324122

/-- `A325965(n+1)+A325966(n+1)-A324121(n+1)` -/
def P401229840656887765.Spec : Prop :=
  ∀ n, P401229840656887765.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P3454773603580291297

`A325971(n+1)+A325972(n+1)-A324121(n+1)`
-/

namespace A324122.P3454773603580291297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A324121 (n + 1))

end

end A324122.P3454773603580291297

namespace A324122

/-- `A325971(n+1)+A325972(n+1)-A324121(n+1)` -/
def P3454773603580291297.Spec : Prop :=
  ∀ n, P3454773603580291297.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P2714789381018475781

`A325973(n+1)+A325974(n+1)-A324121(n+1)`
-/

namespace A324122.P2714789381018475781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A324121 (n + 1))

end

end A324122.P2714789381018475781

namespace A324122

/-- `A325973(n+1)+A325974(n+1)-A324121(n+1)` -/
def P2714789381018475781.Spec : Prop :=
  ∀ n, P2714789381018475781.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P5841535812126744752

`A000203(n+1)-A000203(n+1)/A099378(n+1)`
-/

namespace A324122.P5841535812126744752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ) / (A099378 (n + 1) : ℚ)

end

end A324122.P5841535812126744752

namespace A324122

/-- `A000203(n+1)-A000203(n+1)/A099378(n+1)` -/
def P5841535812126744752.Spec : Prop :=
  ∀ n, P5841535812126744752.a n = (A324122 (n + 1) : ℚ)

end A324122

/-! ## A324122.P9976670824722788417

`A000203(n+1)-gcd(A000203(n+1), A038040(n+1))`
-/

namespace A324122.P9976670824722788417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (Int.gcd (A000203 (n + 1)) (A038040 (n + 1)) : ℤ)

end

end A324122.P9976670824722788417

namespace A324122

/-- `A000203(n+1)-gcd(A000203(n+1), A038040(n+1))` -/
def P9976670824722788417.Spec : Prop :=
  ∀ n, P9976670824722788417.a n = A324122 (n + 1)

end A324122

/-! ## A324122.P13131058636710250967

`A245093(∑[n+1])-A324121(n+1)`
-/

namespace A324122.P13131058636710250967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - A324121 (n + 1)

end

end A324122.P13131058636710250967

namespace A324122

/-- `A245093(∑[n+1])-A324121(n+1)` -/
def P13131058636710250967.Spec : Prop :=
  ∀ n, P13131058636710250967.a n = A324122 (n + 1)

end A324122

/-!
# A324124: Triangle T(n,k), read by rows: coefficients for numerical integration near a singularity (n >= 0 and 0 <= k <= n).

The programs for A324124, there is no canonical definition to state claims against.
-/

/-! ## A324124.P3382156090708241987

`A007895(A116779(n+1))*A306343(n)`
-/

namespace A324124.P3382156090708241987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A116779 (n + 1)).toNat * A306343 n

end

end A324124.P3382156090708241987

/-! ## A324124.P13211209125564716162

`A006641(∑[A006648(n+2)+A006627(n+1)])`
-/

namespace A324124.P13211209125564716162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006648 (n + 2) + A006627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324124.P13211209125564716162

/-!
# A324125: The asymptotic growth constant for the n-th two-dimensional Sierpinski graph can be written as log(c_n)/d_n; sequence gives d_n.

The programs for A324125, there is no canonical definition to state claims against.
-/

/-! ## A324125.P12003477477605906678

`lcm(A078899(A002110(n)), A141214(n))`
-/

namespace A324125.P12003477477605906678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078899 (A002110 n).toNat) (A141214 n)

end

end A324125.P12003477477605906678

/-!
# A324127: Partial sums of A175046.

The programs for A324127, there is no canonical definition to state claims against.
-/

/-! ## A324127.P9697983290180093016

`∑[A175046(n+1)]`
-/

namespace A324127.P9697983290180093016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324127.P9697983290180093016

/-! ## A324127.P2885477814259223579

`∑[A319407(n+1)+1+n]`
-/

namespace A324127.P2885477814259223579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324127.P2885477814259223579

/-! ## A324127.P9182815752227150199

`∑[A320038(or(1, n)+n+2)]`
-/

namespace A324127.P9182815752227150199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (Nat.lor 1 n + n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324127.P9182815752227150199

/-! ## A324127.P7911382700133876522

`∑[2*A319408(n+1)+1+n]`
-/

namespace A324127.P7911382700133876522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319408 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324127.P7911382700133876522

/-! ## A324127.P4568252816229275566

`∑[A320038(gcd(2, n)+2*n+1)]`
-/

namespace A324127.P4568252816229275566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (Nat.gcd 2 n + 2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324127.P4568252816229275566

/-!
# A324128: a(n) = 2*n*Fibonacci(n) + (-1)^n + 1.

The programs for A324128, the canonical program `A324128.P7917423845990385646` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324128 has offset 0).

The definition of A324128 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324129, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324128.P7917423845990385646

`2*A324129(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324128

/-- `2*A324129(n)` -/
def P7917423845990385646.Spec : Prop :=
  ∀ n, P7917423845990385646.a n = A324128 n

theorem P7917423845990385646.correct : P7917423845990385646.Spec := by
  intro n
  simp only [A324128]

end A324128

/-! ## A324128.P1307911577169185357

`2*((n+1)%2+n*A000045(n))`
-/

namespace A324128.P1307911577169185357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((((n + 1) % 2 : ℕ) : ℤ) + (n : ℤ) * A000045 n)

end

end A324128.P1307911577169185357

namespace A324128

/-- `2*((n+1)%2+n*A000045(n))` -/
def P1307911577169185357.Spec : Prop :=
  ∀ n, P1307911577169185357.a n = A324128 n

end A324128

/-! ## A324128.P11478108760736366551

`A309874(n+2)-A022087(n)`
-/

namespace A324128.P11478108760736366551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309874 (n + 2) - A022087 n

end

end A324128.P11478108760736366551

namespace A324128

/-- `A309874(n+2)-A022087(n)` -/
def P11478108760736366551.Spec : Prop :=
  ∀ n, P11478108760736366551.a n = A324128 n

end A324128

/-! ## A324128.P7877238664799422511

`2*(A059841(n)+A045925(n))`
-/

namespace A324128.P7877238664799422511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059841 n + A045925 n)

end

end A324128.P7877238664799422511

namespace A324128

/-- `2*(A059841(n)+A045925(n))` -/
def P7877238664799422511.Spec : Prop :=
  ∀ n, P7877238664799422511.a n = A324128 n

end A324128

/-! ## A324128.P6771287006636939160

`2*(A122491(n)+A052952(n))`
-/

namespace A324128.P6771287006636939160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122491 n + A052952 n)

end

end A324128.P6771287006636939160

namespace A324128

/-- `2*(A122491(n)+A052952(n))` -/
def P6771287006636939160.Spec : Prop :=
  ∀ n, P6771287006636939160.a n = A324128 n

end A324128

/-! ## A324128.P2981981838302934293

`A324129(n-char[1])+A324129(n)`
-/

namespace A324128.P2981981838302934293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324129 (n - (if ∃ j, f1 j = n then 1 else 0)) + A324129 n

end

end A324128.P2981981838302934293

namespace A324128

/-- `A324129(n-char[1])+A324129(n)` -/
def P2981981838302934293.Spec : Prop :=
  ∀ n, P2981981838302934293.a n = A324128 n

end A324128

/-! ## A324128.P12911352395003415131

`2*(A007502(n+1)-A074331(n))`
-/

namespace A324128.P12911352395003415131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007502 (n + 1) - A074331 n)

end

end A324128.P12911352395003415131

namespace A324128

/-- `2*(A007502(n+1)-A074331(n))` -/
def P12911352395003415131.Spec : Prop :=
  ∀ n, P12911352395003415131.a n = A324128 n

end A324128

/-!
# A324129: a(n) = n*Fibonacci(n) + ((-1)^n + 1)/2.

The programs for A324129, the canonical program `A324129.P6185180708440290240` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324129 has offset 0).

The definition of A324129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324129.P15308113319995603850

`A045925(n)+char[2*n]`
-/

namespace A324129.P15308113319995603850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A324129.P15308113319995603850

namespace A324129

/-- `A045925(n)+char[2*n]` -/
def P15308113319995603850.Spec : Prop :=
  ∀ n, P15308113319995603850.a n = A324129 n

end A324129

/-! ## A324129.P11434414278255798807

`char[2*n]+n*A000045(n)`
-/

namespace A324129.P11434414278255798807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) * A000045 n

end

end A324129.P11434414278255798807

namespace A324129

/-- `char[2*n]+n*A000045(n)` -/
def P11434414278255798807.Spec : Prop :=
  ∀ n, P11434414278255798807.a n = A324129 n

end A324129

/-! ## A324129.P15624252800393901355

`char[2*n]+n*A212804(n+1)`
-/

namespace A324129.P15624252800393901355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) * A212804 (n + 1)

end

end A324129.P15624252800393901355

namespace A324129

/-- `char[2*n]+n*A212804(n+1)` -/
def P15624252800393901355.Spec : Prop :=
  ∀ n, P15624252800393901355.a n = A324129 n

end A324129

/-! ## A324129.P15775186818918992495

`char[2*n]+n*(A001611(n)-1)`
-/

namespace A324129.P15775186818918992495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) * (A001611 n - 1)

end

end A324129.P15775186818918992495

namespace A324129

/-- `char[2*n]+n*(A001611(n)-1)` -/
def P15775186818918992495.Spec : Prop :=
  ∀ n, P15775186818918992495.a n = A324129 n

end A324129

/-! ## A324129.P3413860561418969770

`xor(n*A000045(abs(n-2*n)), char[2*n])`
-/

namespace A324129.P3413860561418969770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * A000045 |(n : ℤ) - (2 * n : ℤ)|.toNat) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A324129.P3413860561418969770

namespace A324129

/-- `xor(n*A000045(abs(n-2*n)), char[2*n])` -/
def P3413860561418969770.Spec : Prop :=
  ∀ n, P3413860561418969770.a n = A324129 n

end A324129

/-! ## A324129.P6185180708440290240

`A059841(n)+A045925(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A324129

/-- `A059841(n)+A045925(n)` -/
def P6185180708440290240.Spec : Prop :=
  ∀ n, P6185180708440290240.a n = A324129 n

theorem P6185180708440290240.correct : P6185180708440290240.Spec := by
  intro n
  simp only [A324129]

end A324129

/-! ## A324129.P9982632495097625701

`A122491(n)+A052952(n)`
-/

namespace A324129.P9982632495097625701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 n + A052952 n

end

end A324129.P9982632495097625701

namespace A324129

/-- `A122491(n)+A052952(n)` -/
def P9982632495097625701.Spec : Prop :=
  ∀ n, P9982632495097625701.a n = A324129 n

end A324129

/-! ## A324129.P44815996943780146

`A045925(n)+1-A000035(n)`
-/

namespace A324129.P44815996943780146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + 1 - A000035 n

end

end A324129.P44815996943780146

namespace A324129

/-- `A045925(n)+1-A000035(n)` -/
def P44815996943780146.Spec : Prop :=
  ∀ n, P44815996943780146.a n = A324129 n

end A324129

/-! ## A324129.P10805315462124424892

`A007502(n+1)-A074331(n)`
-/

namespace A324129.P10805315462124424892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) - A074331 n

end

end A324129.P10805315462124424892

namespace A324129

/-- `A007502(n+1)-A074331(n)` -/
def P10805315462124424892.Spec : Prop :=
  ∀ n, P10805315462124424892.a n = A324129 n

end A324129

/-! ## A324129.P14084633417343727893

`A045925(n)+2-A000034(n)`
-/

namespace A324129.P14084633417343727893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + 2 - A000034 n

end

end A324129.P14084633417343727893

namespace A324129

/-- `A045925(n)+2-A000034(n)` -/
def P14084633417343727893.Spec : Prop :=
  ∀ n, P14084633417343727893.a n = A324129 n

end A324129

/-! ## A324129.P3245856766101997588

`or(A000035(n+1), A045925(n))`
-/

namespace A324129.P3245856766101997588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A045925 n)

end

end A324129.P3245856766101997588

namespace A324129

/-- `or(A000035(n+1), A045925(n))` -/
def P3245856766101997588.Spec : Prop :=
  ∀ n, P3245856766101997588.a n = A324129 n

end A324129

/-! ## A324129.P7392161814880479183

`A000035(n+1)+n*A053602(2*n)`
-/

namespace A324129.P7392161814880479183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (n : ℤ) * A053602 (2 * n)

end

end A324129.P7392161814880479183

namespace A324129

/-- `A000035(n+1)+n*A053602(2*n)` -/
def P7392161814880479183.Spec : Prop :=
  ∀ n, P7392161814880479183.a n = A324129 n

end A324129

/-! ## A324129.P10369330320743192457

`A000035(n+1)+n*A103609(2*n)`
-/

namespace A324129.P10369330320743192457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (n : ℤ) * A103609 (2 * n)

end

end A324129.P10369330320743192457

namespace A324129

/-- `A000035(n+1)+n*A103609(2*n)` -/
def P10369330320743192457.Spec : Prop :=
  ∀ n, P10369330320743192457.a n = A324129 n

end A324129

/-! ## A324129.P12556580687255417948

`A000035(n+1)+n*A272912(2*(n+1))`
-/

namespace A324129.P12556580687255417948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (n : ℤ) * A272912 (2 * (n + 1))

end

end A324129.P12556580687255417948

namespace A324129

/-- `A000035(n+1)+n*A272912(2*(n+1))` -/
def P12556580687255417948.Spec : Prop :=
  ∀ n, P12556580687255417948.a n = A324129 n

end A324129

/-! ## A324129.P6996364882311141070

`A323812(n+2)-A000045(n)-A000045(n)`
-/

namespace A324129.P6996364882311141070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323812 (n + 2) - A000045 n - A000045 n

end

end A324129.P6996364882311141070

namespace A324129

/-- `A323812(n+2)-A000045(n)-A000045(n)` -/
def P6996364882311141070.Spec : Prop :=
  ∀ n, P6996364882311141070.a n = A324129 n

end A324129

/-! ## A324129.P6253269447407329022

`A136376(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A324129.P6253269447407329022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136376 n + (1 - a (n - 1))

end

end A324129.P6253269447407329022

namespace A324129

/-- `A136376(n)+1-a(n-1)` -/
def P6253269447407329022.Spec : Prop :=
  ∀ n, P6253269447407329022.a n = A324129 n

end A324129

/-! ## A324129.P755747123919915973

`A054454(n)-(A029907(n)+A001629(n))`
-/

namespace A324129.P755747123919915973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054454 n - (A029907 n + A001629 n)

end

end A324129.P755747123919915973

namespace A324129

/-- `A054454(n)-(A029907(n)+A001629(n))` -/
def P755747123919915973.Spec : Prop :=
  ∀ n, P755747123919915973.a n = A324129 n

end A324129

/-! ## A324129.P16471330186360783508

`A324128(n)/2`
-/

namespace A324129.P16471330186360783508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324128 n : ℚ) / 2

end

end A324129.P16471330186360783508

namespace A324129

/-- `A324128(n)/2` -/
def P16471330186360783508.Spec : Prop :=
  ∀ n, P16471330186360783508.a n = (A324129 n : ℚ)

end A324129

/-! ## A324129.P762423457537788692

`(A309874(n+2)-A022087(n))/2`
-/

namespace A324129.P762423457537788692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309874 (n + 2) - A022087 n : ℚ) / 2

end

end A324129.P762423457537788692

namespace A324129

/-- `(A309874(n+2)-A022087(n))/2` -/
def P762423457537788692.Spec : Prop :=
  ∀ n, P762423457537788692.a n = (A324129 n : ℚ)

end A324129

/-!
# A324130: Number of permutations of [n] that avoid the shuffle pattern s-k-t, where s = 1 and t = 132.

The programs for A324130, there is no canonical definition to state claims against.
-/

/-! ## A324130.P14143253347449858417

`A078342((n+1)!)+1-n`
-/

namespace A324130.P14143253347449858417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078342 (Nat.factorial (n + 1)) + (1 - (n : ℤ))

end

end A324130.P14143253347449858417

/-! ## A324130.P4105608515439116133

`A003602(A193763(n))`
-/

namespace A324130.P4105608515439116133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A193763 n).toNat

end

end A324130.P4105608515439116133

/-! ## A324130.P6312643179734914139

`A008621(A193763(n)+1)`
-/

namespace A324130.P6312643179734914139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A193763 n + 1).toNat

end

end A324130.P6312643179734914139

/-!
# A324131: Number of permutations of [n] that avoid the shuffle pattern s-k-t, where s = 1 and t = 123.

The programs for A324131, there is no canonical definition to state claims against.
-/

/-! ## A324131.P12657950652063302519

`A194204((n+1)*round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A324131.P12657950652063302519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194204 ((n + 1 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A324131.P12657950652063302519

/-! ## A324131.P7585053519039210718

`n!-A159708(A226965(n+1))`
-/

namespace A324131.P7585053519039210718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A159708 (A226965 (n + 1)).toNat

end

end A324131.P7585053519039210718

/-! ## A324131.P7228431899094063804

`A004524(A008611((5*n+4)*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A324131.P7228431899094063804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004524 (A008611 ((5 * n + 4 : ℤ) * a (n - 1)).toNat).toNat

end

end A324131.P7228431899094063804

/-!
# A324132: Number of permutations of [n] that avoid the shuffle pattern s-k-t, where s = 1 and t = 1234.

The programs for A324132, there is no canonical definition to state claims against.
-/

/-! ## A324132.P10662407668026897373

`n!-A275494(A001629(n))`
-/

namespace A324132.P10662407668026897373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A275494 (A001629 n).toNat

end

end A324132.P10662407668026897373

/-! ## A324132.P15902719461515197444

`n!-A025437(A000266(n)+1)`
-/

namespace A324132.P15902719461515197444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A025437 (A000266 n + 1).toNat

end

end A324132.P15902719461515197444

/-! ## A324132.P793474477021041083

`A000142(n)-A275494(A001629(n))`
-/

namespace A324132.P793474477021041083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A275494 (A001629 n).toNat

end

end A324132.P793474477021041083

/-! ## A324132.P14172437465839630042

`A061602(n)-A275494(A001629(n))`
-/

namespace A324132.P14172437465839630042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n - A275494 (A001629 n).toNat

end

end A324132.P14172437465839630042

/-!
# A324133: Number of permutations of [n] that avoid the shuffle pattern s-k-t, where s = 12 and t = 12.

The programs for A324133, there is no canonical definition to state claims against.
-/

/-! ## A324133.P13068154601178439816

`ceil(A035009(n)/2)`
-/

namespace A324133.P13068154601178439816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035009 n : ℚ) / 2⌉

end

end A324133.P13068154601178439816

/-! ## A324133.P14844127921009979469

`ceil(A001861(n)/4)`
-/

namespace A324133.P14844127921009979469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001861 n : ℚ) / 4⌉

end

end A324133.P14844127921009979469

/-! ## A324133.P5758803174058797266

`ceil(record[A336345(n)/4])`
-/

namespace A324133.P5758803174058797266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336345 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A324133.P5758803174058797266

/-! ## A324133.P7676824547542536556

`ceil(A336345(∑[n]+n)/4)`
-/

namespace A324133.P7676824547542536556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336345 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 4⌉

end

end A324133.P7676824547542536556

/-! ## A324133.P3777207386648114421

`round(A035009(n)/A036453(n+1))`
-/

namespace A324133.P3777207386648114421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035009 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A324133.P3777207386648114421

/-! ## A324133.P13529602848728447958

`(A335975(A027379(n))+1)/2`
-/

namespace A324133.P13529602848728447958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335975 (A027379 n).toNat + 1 : ℚ) / 2

end

end A324133.P13529602848728447958

/-! ## A324133.P15233092607451914875

`(A335975(A055998(n))+1)/2`
-/

namespace A324133.P15233092607451914875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335975 (A055998 n).toNat + 1 : ℚ) / 2

end

end A324133.P15233092607451914875

/-!
# A324134: Number of permutations of [n] that avoid the shuffle pattern s-k-t, where s = 12 and t = 132.

The programs for A324134, there is no canonical definition to state claims against.
-/

/-! ## A324134.P6767265975081557917

`A222254(A177531(n))`
-/

namespace A324134.P6767265975081557917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A177531 n).toNat

end

end A324134.P6767265975081557917

/-! ## A324134.P17743033399327044971

`and(A065475(A324135(n)), A324135(n))`
-/

namespace A324134.P17743033399327044971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065475 (A324135 n).toNat) (A324135 n)

end

end A324134.P17743033399327044971

/-!
# A324138: Number of permutations of [n] that avoid the shuffle pattern s-k-t, where s = 123 and t = 132.

The programs for A324138, there is no canonical definition to state claims against.
-/

/-! ## A324138.P7407336054930570684

`A014682(A324139(n)+A324137(n))`
-/

namespace A324138.P7407336054930570684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A324139 n + A324137 n).toNat

end

end A324138.P7407336054930570684

/-! ## A324138.P1799212550933870067

`A324139(n)+A185034(A185034(n))`
-/

namespace A324138.P1799212550933870067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324139 n + A185034 (A185034 n).toNat

end

end A324138.P1799212550933870067

/-! ## A324138.P8057538321732594330

`A273943(A324139(n)+A324137(n))`
-/

namespace A324138.P8057538321732594330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A324139 n + A324137 n).toNat

end

end A324138.P8057538321732594330

/-!
# A324140: Define b(n) and c(n) by b(0)=0, b(1)=c(0)=c(1)=1; b(n)=c(n-1)*c(n-2), c(n) = (b(n-1)+c(n-1))*(b(n-2)+c(n-2)); sequence gives b(n).

The programs for A324140, there is no canonical definition to state claims against.
-/

/-! ## A324140.P5008545835944281485

`∑{e}[n+1, #]*A338986(A000392(n))`
-/

namespace A324140.P5008545835944281485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A338986 (A000392 n).toNat

end

end A324140.P5008545835944281485

/-! ## A324140.P5984887621784913429

`A004396(n)*A026741(A137704(n))`
-/

namespace A324140.P5984887621784913429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A026741 (A137704 n).toNat

end

end A324140.P5984887621784913429

/-! ## A324140.P4359202347415104627

`A026741(A137704(n))*A135671(n+1)`
-/

namespace A324140.P4359202347415104627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A137704 n).toNat * A135671 (n + 1)

end

end A324140.P4359202347415104627

/-!
# A324141: Define b(n) and c(n) by b(0)=0, b(1)=c(0)=c(1)=1; b(n)=c(n-1)*c(n-2), c(n) = (b(n-1)+c(n-1))*(b(n-2)+c(n-2)); sequence gives c(n).

The programs for A324141, there is no canonical definition to state claims against.
-/

/-! ## A324141.P12704867710831590529

`A324140(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A324141.P12704867710831590529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A324140 (n + 1) : ℚ) / a (n - 1)

end

end A324141.P12704867710831590529

/-! ## A324141.P12676780922881719552

`A073061(A319724(n!))`
-/

namespace A324141.P12676780922881719552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A319724 (Nat.factorial n)).toNat

end

end A324141.P12676780922881719552

/-! ## A324141.P469821475706941720

`∏[A305309(A337517(n))]`
-/

namespace A324141.P469821475706941720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305309 (A337517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A324141.P469821475706941720

/-!
# A324142: This sequence and A324143 are a pair of complementary sequences studied by Bode, Harborth, and Kimberling (2007).

The programs for A324142, there is no canonical definition to state claims against.
-/

/-! ## A324142.P8778878620265031384

`xor(A022425(n), A278105(n+1))`
-/

namespace A324142.P8778878620265031384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022425 n) (A278105 (n + 1))

end

end A324142.P8778878620265031384

/-! ## A324142.P16904405842053303603

`A022425(n)-A014667(A105359(n+1))`
-/

namespace A324142.P16904405842053303603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022425 n - A014667 (A105359 (n + 1)).toNat

end

end A324142.P16904405842053303603

/-! ## A324142.P11847529337016439184

`A022425(n)+A008683(A325041(n+1))`
-/

namespace A324142.P11847529337016439184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022425 n + A008683 (A325041 (n + 1)).toNat

end

end A324142.P11847529337016439184

/-! ## A324142.P2855372433347448124

`A154955(A126348(n))+A022425(n)`
-/

namespace A324142.P2855372433347448124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A126348 n).toNat + A022425 n

end

end A324142.P2855372433347448124

/-! ## A324142.P3656649289045498555

`A121373(A002511(n+6))+A022425(n)`
-/

namespace A324142.P3656649289045498555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A002511 (n + 6)).toNat + A022425 n

end

end A324142.P3656649289045498555

/-!
# A324143: This sequence and A324142 are a pair of complementary sequences studied by Bode, Harborth, and Kimberling (2007).

The programs for A324143, there is no canonical definition to state claims against.
-/

/-! ## A324143.P3908001704207414007

`A299407(n)-floor(acot(n))`
-/

namespace A324143.P3908001704207414007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A324143.P3908001704207414007

/-! ## A324143.P15040264281002478162

`comp[A324142(n+1)-1]+1`
-/

namespace A324143.P15040264281002478162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324142 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324143.P15040264281002478162

/-! ## A324143.P15952553476517272813

`A324142(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A324143.P15952553476517272813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324142 (n + 2) - a (n - 1)

end

end A324143.P15952553476517272813

/-! ## A324143.P5676115451009066997

`A022425(n+1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A324143.P5676115451009066997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A022425 (n + 1) - a (n - 1)

end

end A324143.P5676115451009066997

/-! ## A324143.P439708433920365067

`A181440(A299407(n))`
-/

namespace A324143.P439708433920365067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A299407 n).toNat

end

end A324143.P439708433920365067

/-! ## A324143.P14932172049171597845

`A299407(n)-A000007(n)`
-/

namespace A324143.P14932172049171597845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A000007 n

end

end A324143.P14932172049171597845

/-! ## A324143.P16480486471448158558

`A299407(n)-A151878(n)`
-/

namespace A324143.P16480486471448158558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A151878 n

end

end A324143.P16480486471448158558

/-! ## A324143.P17592798745491852565

`A299407(n)-A151909(n)`
-/

namespace A324143.P17592798745491852565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A151909 n

end

end A324143.P17592798745491852565

/-! ## A324143.P16093745853349112417

`A299407(n)-A151933(n)`
-/

namespace A324143.P16093745853349112417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A151933 n

end

end A324143.P16093745853349112417

/-! ## A324143.P5392173443665643166

`A299407(n)/A054977(n)`
-/

namespace A324143.P5392173443665643166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299407 n : ℚ) / (A054977 n : ℚ)

end

end A324143.P5392173443665643166

/-!
# A324145: Minimal length of a string over the alphabet A = {1,2,...,n} that contains every derangement of A as a substring exactly once.

The programs for A324145, there is no canonical definition to state claims against.
-/

/-! ## A324145.P7194494861218566550

`A008611(or(4*n, A122852(2*n+1)))`
-/

namespace A324145.P7194494861218566550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.lor (4 * n : ℤ) (A122852 (2 * n + 1))).toNat

end

end A324145.P7194494861218566550

/-! ## A324145.P16938640123475638366

`A317682(A118094(n+3)+A118052(3*n))`
-/

namespace A324145.P16938640123475638366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 (A118094 (n + 3) + A118052 (3 * n)).toNat

end

end A324145.P16938640123475638366

/-!
# A324151: a(n) = (2/((n+1)*(n+2)))*multinomial(3*n;n,n,n).

The programs for A324151, the canonical program `A324151.P8438879174853104262` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324151 has offset 0).

The definition of A324151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324151.P8438879174853104262

`A006480(n)/A000217(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324151

/-- `A006480(n)/A000217(n+1)` -/
def P8438879174853104262.Spec : Prop :=
  ∀ n, P8438879174853104262.a n = (A324151 n : ℚ)

end A324151

/-! ## A324151.P6711191859686605563

`(n+1)*A005789(n)`
-/

namespace A324151.P6711191859686605563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005789 n

end

end A324151.P6711191859686605563

namespace A324151

/-- `(n+1)*A005789(n)` -/
def P6711191859686605563.Spec : Prop :=
  ∀ n, P6711191859686605563.a n = A324151 n

end A324151

/-! ## A324151.P15939790021027863893

`C(3*n, n)/(2*n+1)*record[A126120(n)]`
-/

namespace A324151.P15939790021027863893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A324151.P15939790021027863893

namespace A324151

/-- `C(3*n, n)/(2*n+1)*record[A126120(n)]` -/
def P15939790021027863893.Spec : Prop :=
  ∀ n, P15939790021027863893.a n = (A324151 n : ℚ)

end A324151

/-! ## A324151.P4887785858176112058

`Δ[A014138(n)]*A001764(n)`
-/

namespace A324151.P4887785858176112058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001764 n

end

end A324151.P4887785858176112058

namespace A324151

/-- `Δ[A014138(n)]*A001764(n)` -/
def P4887785858176112058.Spec : Prop :=
  ∀ n, P4887785858176112058.a n = A324151 n

end A324151

/-! ## A324151.P16520187160231361321

`record[A097331(n)]*A001764(n)`
-/

namespace A324151.P16520187160231361321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001764 n

end

end A324151.P16520187160231361321

namespace A324151

/-- `record[A097331(n)]*A001764(n)` -/
def P16520187160231361321.Spec : Prop :=
  ∀ n, P16520187160231361321.a n = A324151 n

end A324151

/-! ## A324151.P13678403623627471584

`record[A126120(n)]*A001764(n)`
-/

namespace A324151.P13678403623627471584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001764 n

end

end A324151.P13678403623627471584

namespace A324151

/-- `record[A126120(n)]*A001764(n)` -/
def P13678403623627471584.Spec : Prop :=
  ∀ n, P13678403623627471584.a n = A324151 n

end A324151

/-! ## A324151.P5332980291226057242

`record[A329687(n)]*A001764(n)`
-/

namespace A324151.P5332980291226057242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001764 n

end

end A324151.P5332980291226057242

namespace A324151

/-- `record[A329687(n)]*A001764(n)` -/
def P5332980291226057242.Spec : Prop :=
  ∀ n, P5332980291226057242.a n = A324151 n

end A324151

/-! ## A324151.P18264672776157444497

`A000108(n+1)*A001764(n)`
-/

namespace A324151.P18264672776157444497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A001764 n

end

end A324151.P18264672776157444497

namespace A324151

/-- `A000108(n+1)*A001764(n)` -/
def P18264672776157444497.Spec : Prop :=
  ∀ n, P18264672776157444497.a n = A324151 n

end A324151

/-! ## A324151.P11732193927973173347

`A001764(n)*A120588(n+2)`
-/

namespace A324151.P11732193927973173347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A120588 (n + 2)

end

end A324151.P11732193927973173347

namespace A324151

/-- `A001764(n)*A120588(n+2)` -/
def P11732193927973173347.Spec : Prop :=
  ∀ n, P11732193927973173347.a n = A324151 n

end A324151

/-! ## A324151.P14661055160728797532

`abs(A168491(n+1))*A001764(n)`
-/

namespace A324151.P14661055160728797532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)| * A001764 n

end

end A324151.P14661055160728797532

namespace A324151

/-- `abs(A168491(n+1))*A001764(n)` -/
def P14661055160728797532.Spec : Prop :=
  ∀ n, P14661055160728797532.a n = A324151 n

end A324151

/-!
# A324152: a(0)=1; for n>0, a(n) = (3/((n+1)*(n+2)*(n+3))) * multinomial(4*n;n,n,n,n).

The programs for A324152, there is no canonical definition to state claims against.
-/

/-! ## A324152.P2941536772960113016

`ceil(A324478(n)/2)`
-/

namespace A324152.P2941536772960113016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324478 n : ℚ) / 2⌉

end

end A324152.P2941536772960113016

/-! ## A324152.P183506221411867723

`A324478(n)/A020639(A008195(n))`
-/

namespace A324152.P183506221411867723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324478 n : ℚ) / (A020639 (A008195 n).toNat : ℚ)

end

end A324152.P183506221411867723

/-! ## A324152.P8674971395195267748

`A324478(n)/A020639(A008458(n))`
-/

namespace A324152.P8674971395195267748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324478 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A324152.P8674971395195267748

/-! ## A324152.P7187123175512478092

`A324478(n)/A020639(A057335(n))`
-/

namespace A324152.P7187123175512478092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324478 n : ℚ) / (A020639 (A057335 n).toNat : ℚ)

end

end A324152.P7187123175512478092

/-! ## A324152.P148050622558890828

`A324478(n)/A006530(A102376(n))`
-/

namespace A324152.P148050622558890828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324478 n : ℚ) / (A006530 (A102376 n).toNat : ℚ)

end

end A324152.P148050622558890828

/-!
# A324153: Digits of one of the four 13-adic integers 3^(1/4) that is congruent to 11 mod 13.

The programs for A324153, there is no canonical definition to state claims against.
-/

/-! ## A324153.P32965554704431743

`(A324084(n+1)-A324084(n))/13^n`
-/

namespace A324153.P32965554704431743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324084 (n + 1) - A324084 n : ℚ) / (13 ^ n : ℚ)

end

end A324153.P32965554704431743

/-! ## A324153.P15601042720318426087

`C(2, n+2)+12-A324085(n)`
-/

namespace A324153.P15601042720318426087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (12 - A324085 n)

end

end A324153.P15601042720318426087

/-! ## A324153.P1601717994001078971

`A054977(n)+11-A324085(n)`
-/

namespace A324153.P1601717994001078971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A324085 n)

end

end A324153.P1601717994001078971

/-! ## A324153.P5311806259852488061

`A000007(n)+12-A324085(n)`
-/

namespace A324153.P5311806259852488061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A324085 n)

end

end A324153.P5311806259852488061

/-! ## A324153.P10979513119179791221

`A057428(n)+13-A324085(n)`
-/

namespace A324153.P10979513119179791221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (13 - A324085 n)

end

end A324153.P10979513119179791221

/-! ## A324153.P3476234265450020050

`or(12-A324085(n), A055641(n))`
-/

namespace A324153.P3476234265450020050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (12 - A324085 n) (A055641 n)

end

end A324153.P3476234265450020050

/-! ## A324153.P15259366869520480619

`13-A324085(n)-abs(A062157(n))`
-/

namespace A324153.P15259366869520480619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A324085 n - |A062157 n|

end

end A324153.P15259366869520480619

/-! ## A324153.P17218592469994106644

`13-(A324085(n)+A000040(n+1)%2)`
-/

namespace A324153.P17218592469994106644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A324085 n + Int.tmod (A000040 (n + 1)) 2)

end

end A324153.P17218592469994106644

/-! ## A324153.P15962347917401317579

`13-A324085(n)-A000045(n²%(n+1))`
-/

namespace A324153.P15962347917401317579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A324085 n - A000045 (n ^ 2 % (n + 1))

end

end A324153.P15962347917401317579

/-! ## A324153.P8459086316755031812

`A008683(A008574(n))+12-A324085(n)`
-/

namespace A324153.P8459086316755031812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (12 - A324085 n)

end

end A324153.P8459086316755031812

/-!
# A324156: Irregular triangle T(n,k) read by rows in which row n lists the numbers m such that the number of prime numbers <= m is equal to the number of base-n zerofree numbers <= m.

The programs for A324156, there is no canonical definition to state claims against.
-/

/-! ## A324156.P7872304991848795051

`A007947(n+1)+A002109(A025549(n+1))`
-/

namespace A324156.P7872304991848795051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A002109 (A025549 (n + 1)).toNat

end

end A324156.P7872304991848795051

/-! ## A324156.P6456369141413497550

`A076609(n+1)-A121902(A085350(n)-1)`
-/

namespace A324156.P6456369141413497550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1) - A121902 (A085350 n - 1).toNat

end

end A324156.P6456369141413497550

/-! ## A324156.P13311588157600981081

`A030248(A187471(2*n+1))+A019555(n+1)`
-/

namespace A324156.P13311588157600981081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030248 (A187471 (2 * n + 1)).toNat + A019555 (n + 1)

end

end A324156.P13311588157600981081

/-!
# A324160: Number of zero-containing nonnegative integers <= n.

The programs for A324160, the canonical program `A324160.P10101339858213923929` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324160 has offset 0).

The definition of A324160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324160.P10101339858213923929

`∑[C(2, ∏{digits}[n, #]+2)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A324160

/-- `∑[C(2, ∏{digits}[n, #]+2)]` -/
def P10101339858213923929.Spec : Prop :=
  ∀ n, (P10101339858213923929.a n : ℤ) = A324160 n

theorem P10101339858213923929.correct : P10101339858213923929.Spec := by
  intro n
  simp only [A324160]

end A324160

/-! ## A324160.P6141092332048079797

`∑[C(2, 3*∏{digits}[n, #])]`
-/

namespace A324160.P6141092332048079797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (3 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P6141092332048079797

namespace A324160

/-- `∑[C(2, 3*∏{digits}[n, #])]` -/
def P6141092332048079797.Spec : Prop :=
  ∀ n, (P6141092332048079797.a n : ℤ) = A324160 n

end A324160

/-! ## A324160.P17267679013048400935

`∑[∏{d}[∏{digits}[n, #], 1-#]]`
-/

namespace A324160.P17267679013048400935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P17267679013048400935

namespace A324160

/-- `∑[∏{d}[∏{digits}[n, #], 1-#]]` -/
def P17267679013048400935.Spec : Prop :=
  ∀ n, P17267679013048400935.a n = A324160 n

end A324160

/-! ## A324160.P12430944383163918266

`∑[C(n-∏{digits}[n, #], n)]`
-/

namespace A324160.P12430944383163918266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P12430944383163918266

namespace A324160

/-- `∑[C(n-∏{digits}[n, #], n)]` -/
def P12430944383163918266.Spec : Prop :=
  ∀ n, (P12430944383163918266.a n : ℤ) = A324160 n

end A324160

/-! ## A324160.P3799981538816449362

`∑[A217096(n)]`
-/

namespace A324160.P3799981538816449362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P3799981538816449362

namespace A324160

/-- `∑[A217096(n)]` -/
def P3799981538816449362.Spec : Prop :=
  ∀ n, P3799981538816449362.a n = A324160 n

end A324160

/-! ## A324160.P11742398350935424081

`∑[char[A009101(n)]]`
-/

namespace A324160.P11742398350935424081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P11742398350935424081

namespace A324160

/-- `∑[char[A009101(n)]]` -/
def P11742398350935424081.Spec : Prop :=
  ∀ n, (P11742398350935424081.a n : ℤ) = A324160 n

end A324160

/-! ## A324160.P9888381311064402250

`∑[1-A168046(n)]`
-/

namespace A324160.P9888381311064402250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P9888381311064402250

namespace A324160

/-- `∑[1-A168046(n)]` -/
def P9888381311064402250.Spec : Prop :=
  ∀ n, P9888381311064402250.a n = A324160 n

end A324160

/-! ## A324160.P8367563423997111579

`∑[char[A011540(n+1)]]`
-/

namespace A324160.P8367563423997111579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P8367563423997111579

namespace A324160

/-- `∑[char[A011540(n+1)]]` -/
def P8367563423997111579.Spec : Prop :=
  ∀ n, (P8367563423997111579.a n : ℤ) = A324160 n

end A324160

/-! ## A324160.P14347108475313455972

`∑[(3^∏{digits}[n, #])%3]`
-/

namespace A324160.P14347108475313455972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324160.P14347108475313455972

namespace A324160

/-- `∑[(3^∏{digits}[n, #])%3]` -/
def P14347108475313455972.Spec : Prop :=
  ∀ n, (P14347108475313455972.a n : ℤ) = A324160 n

end A324160

/-!
# A324161: Number of zerofree nonnegative integers <= n.

The programs for A324161, the canonical program `A324161.P15800102618715637158` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324161 has offset 0).

The definition of A324161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324161.P18304949896517598577

`∑[∏{digits}[n, round(atan(#))]]`
-/

namespace A324161.P18304949896517598577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.arctan (x : ℝ))).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P18304949896517598577

namespace A324161

/-- `∑[∏{digits}[n, round(atan(#))]]` -/
def P18304949896517598577.Spec : Prop :=
  ∀ n, P18304949896517598577.a n = A324161 n

end A324161

/-! ## A324161.P1469090362934513901

`∑[∏{digits}[n, ceil(tanh(#))]]`
-/

namespace A324161.P1469090362934513901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌈Real.tanh (x : ℝ)⌉).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P1469090362934513901

namespace A324161

/-- `∑[∏{digits}[n, ceil(tanh(#))]]` -/
def P1469090362934513901.Spec : Prop :=
  ∀ n, P1469090362934513901.a n = A324161 n

end A324161

/-! ## A324161.P17457222690482016895

`∑[∏{digits}[n, round(tanh(#))]]`
-/

namespace A324161.P17457222690482016895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.tanh (x : ℝ))).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P17457222690482016895

namespace A324161

/-- `∑[∏{digits}[n, round(tanh(#))]]` -/
def P17457222690482016895.Spec : Prop :=
  ∀ n, P17457222690482016895.a n = A324161 n

end A324161

/-! ## A324161.P15800102618715637158

`∑[∏{digits}[n, ceil(#/(n+1))]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A324161

/-- `∑[∏{digits}[n, ceil(#/(n+1))]]` -/
def P15800102618715637158.Spec : Prop :=
  ∀ n, P15800102618715637158.a n = A324161 n

theorem P15800102618715637158.correct : P15800102618715637158.Spec := by
  intro n
  simp only [A324161]

end A324161

/-! ## A324161.P9539322081329899046

`∑[A168046(n)]`
-/

namespace A324161.P9539322081329899046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P9539322081329899046

namespace A324161

/-- `∑[A168046(n)]` -/
def P9539322081329899046.Spec : Prop :=
  ∀ n, P9539322081329899046.a n = A324161 n

end A324161

/-! ## A324161.P6820834562769255616

`∑[1-A217096(n)]`
-/

namespace A324161.P6820834562769255616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A217096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P6820834562769255616

namespace A324161

/-- `∑[1-A217096(n)]` -/
def P6820834562769255616.Spec : Prop :=
  ∀ n, P6820834562769255616.a n = A324161 n

end A324161

/-! ## A324161.P16064605503728688453

`1-A324160(n)+n`
-/

namespace A324161.P16064605503728688453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324160 n + (n : ℤ)

end

end A324161.P16064605503728688453

namespace A324161

/-- `1-A324160(n)+n` -/
def P16064605503728688453.Spec : Prop :=
  ∀ n, P16064605503728688453.a n = A324161 n

end A324161

/-! ## A324161.P3410611218096268512

`∑[char[A052382(n+1)]]`
-/

namespace A324161.P3410611218096268512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P3410611218096268512

namespace A324161

/-- `∑[char[A052382(n+1)]]` -/
def P3410611218096268512.Spec : Prop :=
  ∀ n, (P3410611218096268512.a n : ℤ) = A324161 n

end A324161

/-! ## A324161.P15449546542008510738

`∑[char[A306311(n+1)]]`
-/

namespace A324161.P15449546542008510738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306311 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P15449546542008510738

namespace A324161

/-- `∑[char[A306311(n+1)]]` -/
def P15449546542008510738.Spec : Prop :=
  ∀ n, (P15449546542008510738.a n : ℤ) = A324161 n

end A324161

/-! ## A324161.P2498377943398977110

`∑[A168184(n²)]`
-/

namespace A324161.P2498377943398977110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P2498377943398977110

namespace A324161

/-- `∑[A168184(n²)]` -/
def P2498377943398977110.Spec : Prop :=
  ∀ n, P2498377943398977110.a n = A324161 n

end A324161

/-! ## A324161.P14172493047520457969

`∑[1-A014029(n²)]`
-/

namespace A324161.P14172493047520457969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P14172493047520457969

namespace A324161

/-- `∑[1-A014029(n²)]` -/
def P14172493047520457969.Spec : Prop :=
  ∀ n, P14172493047520457969.a n = A324161 n

end A324161

/-! ## A324161.P10362255364959716572

`∑[A010208(n²)%2]`
-/

namespace A324161.P10362255364959716572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010208 (n ^ 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324161.P10362255364959716572

namespace A324161

/-- `∑[A010208(n²)%2]` -/
def P10362255364959716572.Spec : Prop :=
  ∀ n, P10362255364959716572.a n = A324161 n

end A324161

/-! ## A324161.P3252072542585215079

`A000194(n²)-floor(n/10)`
-/

namespace A324161.P3252072542585215079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n ^ 2) - ⌊(n : ℚ) / 10⌋

end

end A324161.P3252072542585215079

namespace A324161

/-- `A000194(n²)-floor(n/10)` -/
def P3252072542585215079.Spec : Prop :=
  ∀ n, P3252072542585215079.a n = A324161 n

end A324161

/-! ## A324161.P6842704797052088832

`n%A004277(n²+1)-floor(n/10)`
-/

namespace A324161.P6842704797052088832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004277 (n ^ 2 + 1)) - ⌊(n : ℚ) / 10⌋

end

end A324161.P6842704797052088832

namespace A324161

/-- `n%A004277(n²+1)-floor(n/10)` -/
def P6842704797052088832.Spec : Prop :=
  ∀ n, P6842704797052088832.a n = A324161 n

end A324161

/-! ## A324161.P16934302754994887597

`A081600(n*A027907(n²))`
-/

namespace A324161.P16934302754994887597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 ((n : ℤ) * A027907 (n ^ 2)).toNat

end

end A324161.P16934302754994887597

namespace A324161

/-- `A081600(n*A027907(n²))` -/
def P16934302754994887597.Spec : Prop :=
  ∀ n, P16934302754994887597.a n = A324161 n

end A324161

/-! ## A324161.P9348785134229147747

`A081600(n/A027907(n²))`
-/

namespace A324161.P9348785134229147747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (SequenceMachineLib.roundAway ((n : ℚ) / (A027907 (n ^ 2) : ℚ))).toNat

end

end A324161.P9348785134229147747

namespace A324161

/-- `A081600(n/A027907(n²))` -/
def P9348785134229147747.Spec : Prop :=
  ∀ n, P9348785134229147747.a n = A324161 n

end A324161

/-!
# A324162: Number T(n,k) of set partitions of [n] where each subset is again partitioned into k nonempty subsets; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A324162, there is no canonical definition to state claims against.
-/

/-! ## A324162.P6372606077186873407

`A127321(A172089(n)*A327547(n))`
-/

namespace A324162.P6372606077186873407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A172089 n * A327547 n).toNat

end

end A324162.P6372606077186873407

/-!
# A324163: Triangle read by rows: T(n,k) is the number of connected k-regular simple graphs on n labeled vertices, (0 <= k < n).

The programs for A324163, there is no canonical definition to state claims against.
-/

/-! ## A324163.P4682352360012898425

`A094587(n)*A189230(A320606(n+1))`
-/

namespace A324163.P4682352360012898425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A189230 (A320606 (n + 1)).toNat

end

end A324163.P4682352360012898425

/-! ## A324163.P15102852429155739194

`A094587(n)*A320606(A320606(n+1)+2)`
-/

namespace A324163.P15102852429155739194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A320606 (A320606 (n + 1) + 2).toNat

end

end A324163.P15102852429155739194

/-! ## A324163.P17645919535573344283

`A068934(n+1)^A008778(n)*A094587(n)`
-/

namespace A324163.P17645919535573344283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068934 (n + 1) : ℚ) ^ (A008778 n : ℤ) * (A094587 n : ℚ)

end

end A324163.P17645919535573344283

/-! ## A324163.P6216026150815374058

`A319368(n+1)^A000032(n)*A094587(n)`
-/

namespace A324163.P6216026150815374058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319368 (n + 1) : ℚ) ^ (A000032 n : ℤ) * (A094587 n : ℚ)

end

end A324163.P6216026150815374058

/-! ## A324163.P2380495170828949049

`A135878(n)*A244221(A131300(n))`
-/

namespace A324163.P2380495170828949049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135878 n * A244221 (A131300 n).toNat

end

end A324163.P2380495170828949049

/-!
# A324167: Number of non-crossing antichain covers of {1,...,n}.

The programs for A324167, there is no canonical definition to state claims against.
-/

/-! ## A324167.P10235355380984491441

`A057354(A247249(n))+1`
-/

namespace A324167.P10235355380984491441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A247249 n).toNat + 1

end

end A324167.P10235355380984491441

/-! ## A324167.P16402901163975860434

`A000698(n)-A027870(A002110(n))`
-/

namespace A324167.P16402901163975860434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 n - A027870 (A002110 n).toNat

end

end A324167.P16402901163975860434

/-!
# A324168: Number of non-crossing antichains of nonempty subsets of {1,...,n}.

The programs for A324168, there is no canonical definition to state claims against.
-/

/-! ## A324168.P11601282951940718427

`∑[A248183(∑[A159607(n)])]`
-/

namespace A324168.P11601282951940718427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324168.P11601282951940718427

/-! ## A324168.P17498581787598078647

`A030530((n+1)*A298691(n))`
-/

namespace A324168.P17498581787598078647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 ((n + 1 : ℤ) * A298691 n).toNat

end

end A324168.P17498581787598078647

/-!
# A324169: Number of labeled graphs covering the vertex set {1,...,n} with no crossing edges.

The programs for A324169, there is no canonical definition to state claims against.
-/

/-! ## A324169.P18324627583182887305

`A126205(∑[2^n-1]²+1)`
-/

namespace A324169.P18324627583182887305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1).toNat

end

end A324169.P18324627583182887305

/-! ## A324169.P2862627071613471347

`A357452(2^n-1)-∑[char[∑[n+1]]]`
-/

namespace A324169.P2862627071613471347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357452 (2 ^ n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A324169.P2862627071613471347

/-!
# A324171: Number of non-crossing multiset partitions of normal multisets of size n.

The programs for A324171, there is no canonical definition to state claims against.
-/

/-! ## A324171.P13266790971791959497

`A255906(n)-A326277(n)`
-/

namespace A324171.P13266790971791959497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A326277 n

end

end A324171.P13266790971791959497

/-! ## A324171.P9066227119720017745

`A326211(n)+A326212(n)-A326277(n)`
-/

namespace A324171.P9066227119720017745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326211 n + (A326212 n - A326277 n)

end

end A324171.P9066227119720017745

/-! ## A324171.P13209678926314605961

`A088462(A166229(n)+A157211(n))`
-/

namespace A324171.P13209678926314605961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A166229 n + A157211 n).toNat

end

end A324171.P13209678926314605961

/-!
# A324172: Number of subsets of {1,...,n} that cross their complement.

The programs for A324172, the canonical program `A324172.P8544491192860898438` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324172 has offset 0).

The definition of A324172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324172.P8544491192860898438

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A324172

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P8544491192860898438.Spec : Prop :=
  ∀ n, P8544491192860898438.a n = A324172 n

theorem P8544491192860898438.correct : P8544491192860898438.Spec := by
  intro n
  simp only [A324172]

end A324172

/-! ## A324172.P15302632354656590330

`2*(a(n-1)+C(n-2, 2))` with `a(0)=0, a(1)=0`
-/

namespace A324172.P15302632354656590330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (a (n - 1) + Nat.choose ((n : ℤ) - 2).toNat 2)

end

end A324172.P15302632354656590330

namespace A324172

/-- `2*(a(n-1)+C(n-2, 2))` -/
def P15302632354656590330.Spec : Prop :=
  ∀ n, (P15302632354656590330.a n : ℤ) = A324172 n

end A324172

/-! ## A324172.P913477630371431556

`∑[2*(a(n-1)+n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A324172.P913477630371431556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  2 * (f1 (n - 1) + ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324172.P913477630371431556

namespace A324172

/-- `∑[2*(a(n-1)+n-3)]` -/
def P913477630371431556.Spec : Prop :=
  ∀ n, P913477630371431556.a n = A324172 n

end A324172

/-! ## A324172.P7103921666339184276

`∑[floor(2^(n-1))-comp[2*n+3]]`
-/

namespace A324172.P7103921666339184276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324172.P7103921666339184276

namespace A324172

/-- `∑[floor(2^(n-1))-comp[2*n+3]]` -/
def P7103921666339184276.Spec : Prop :=
  ∀ n, P7103921666339184276.a n = A324172 n

end A324172

/-! ## A324172.P12541277905659062211

`2*a(n-1)+(n-2)*(n-3)` with `a(0)=0, a(1)=0`
-/

namespace A324172.P12541277905659062211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 2) * ((n : ℤ) - 3)

end

end A324172.P12541277905659062211

namespace A324172

/-- `2*a(n-1)+(n-2)*(n-3)` -/
def P12541277905659062211.Spec : Prop :=
  ∀ n, P12541277905659062211.a n = A324172 n

end A324172

/-! ## A324172.P8756141554147305315

`2^n-A386480(n)`
-/

namespace A324172.P8756141554147305315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A386480 n

end

end A324172.P8756141554147305315

namespace A324172

/-- `2^n-A386480(n)` -/
def P8756141554147305315.Spec : Prop :=
  ∀ n, P8756141554147305315.a n = A324172 n

end A324172

/-! ## A324172.P15274629705228145756

`∑[A127904(n)]-n²`
-/

namespace A324172.P15274629705228145756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A324172.P15274629705228145756

namespace A324172

/-- `∑[A127904(n)]-n²` -/
def P15274629705228145756.Spec : Prop :=
  ∀ n, P15274629705228145756.a n = A324172 n

end A324172

/-! ## A324172.P16488082085191582082

`A132074(n)-(n+1)²`
-/

namespace A324172.P16488082085191582082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132074 n - ((n + 1) ^ 2 : ℤ)

end

end A324172.P16488082085191582082

namespace A324172

/-- `A132074(n)-(n+1)²` -/
def P16488082085191582082.Spec : Prop :=
  ∀ n, P16488082085191582082.a n = A324172 n

end A324172

/-! ## A324172.P17256961433357731210

`A132736(n)-(n²+1)`
-/

namespace A324172.P17256961433357731210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n - (n ^ 2 + 1 : ℤ)

end

end A324172.P17256961433357731210

namespace A324172

/-- `A132736(n)-(n²+1)` -/
def P17256961433357731210.Spec : Prop :=
  ∀ n, P17256961433357731210.a n = A324172 n

end A324172

/-! ## A324172.P6521545460654103197

`2^n-(∑[A004275(n)]+1)`
-/

namespace A324172.P6521545460654103197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324172.P6521545460654103197

namespace A324172

/-- `2^n-(∑[A004275(n)]+1)` -/
def P6521545460654103197.Spec : Prop :=
  ∀ n, P6521545460654103197.a n = A324172 n

end A324172

/-! ## A324172.P12477623965176019942

`A255047(n)-((1-n)²+n)`
-/

namespace A324172.P12477623965176019942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

end

end A324172.P12477623965176019942

namespace A324172

/-- `A255047(n)-((1-n)²+n)` -/
def P12477623965176019942.Spec : Prop :=
  ∀ n, P12477623965176019942.a n = A324172 n

end A324172

/-! ## A324172.P1577294419572027660

`2*(A288133(n+1)-∑[n]-1)`
-/

namespace A324172.P1577294419572027660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A288133 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A324172.P1577294419572027660

namespace A324172

/-- `2*(A288133(n+1)-∑[n]-1)` -/
def P1577294419572027660.Spec : Prop :=
  ∀ n, P1577294419572027660.a n = A324172 n

end A324172

/-! ## A324172.P14410291837512455131

`2*(A011782(n)-(∑[n-1]+2))`
-/

namespace A324172.P14410291837512455131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n - (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A324172.P14410291837512455131

namespace A324172

/-- `2*(A011782(n)-(∑[n-1]+2))` -/
def P14410291837512455131.Spec : Prop :=
  ∀ n, P14410291837512455131.a n = A324172 n

end A324172

/-! ## A324172.P11710408628727648110

`abs((1-n)²-(A155559(n)-n))-1`
-/

namespace A324172.P11710408628727648110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 2 - (A155559 n - (n : ℤ))| - 1

end

end A324172.P11710408628727648110

namespace A324172

/-- `abs((1-n)²-(A155559(n)-n))-1` -/
def P11710408628727648110.Spec : Prop :=
  ∀ n, P11710408628727648110.a n = A324172 n

end A324172

/-! ## A324172.P9450475534443127387

`A006127(n)-A010000(n)`
-/

namespace A324172.P9450475534443127387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A010000 n

end

end A324172.P9450475534443127387

namespace A324172

/-- `A006127(n)-A010000(n)` -/
def P9450475534443127387.Spec : Prop :=
  ∀ n, P9450475534443127387.a n = A324172 n

end A324172

/-! ## A324172.P11935142461264905002

`A131924(n)-A005893(n)`
-/

namespace A324172.P11935142461264905002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131924 n - A005893 n

end

end A324172.P11935142461264905002

namespace A324172

/-- `A131924(n)-A005893(n)` -/
def P11935142461264905002.Spec : Prop :=
  ∀ n, P11935142461264905002.a n = A324172 n

end A324172

/-! ## A324172.P8237352404939777076

`A132072(n)-A084849(n)`
-/

namespace A324172.P8237352404939777076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132072 n - A084849 n

end

end A324172.P8237352404939777076

namespace A324172

/-- `A132072(n)-A084849(n)` -/
def P8237352404939777076.Spec : Prop :=
  ∀ n, P8237352404939777076.a n = A324172 n

end A324172

/-! ## A324172.P3629777005656633494

`A176777(n)-A103517(n)`
-/

namespace A324172.P3629777005656633494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176777 n - A103517 n

end

end A324172.P3629777005656633494

namespace A324172

/-- `A176777(n)-A103517(n)` -/
def P3629777005656633494.Spec : Prop :=
  ∀ n, P3629777005656633494.a n = A324172 n

end A324172

/-! ## A324172.P18269438472245277963

`A176778(n)-A112335(n)`
-/

namespace A324172.P18269438472245277963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176778 n - A112335 n

end

end A324172.P18269438472245277963

namespace A324172

/-- `A176778(n)-A112335(n)` -/
def P18269438472245277963.Spec : Prop :=
  ∀ n, P18269438472245277963.a n = A324172 n

end A324172

/-! ## A324172.P8143997317954445334

`xor(A002061(n), A255047(n))`
-/

namespace A324172.P8143997317954445334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002061 n) (A255047 n)

end

end A324172.P8143997317954445334

namespace A324172

/-- `xor(A002061(n), A255047(n))` -/
def P8143997317954445334.Spec : Prop :=
  ∀ n, P8143997317954445334.a n = A324172 n

end A324172

/-!
# A324173: Regular triangle read by rows where T(n,k) is the number of set partitions of {1,...,n} with k topologically connected components.

The programs for A324173, there is no canonical definition to state claims against.
-/

/-! ## A324173.P926604554839135587

`lcm(A090181(n), A353315(A283950(n+1)))`
-/

namespace A324173.P926604554839135587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090181 n) (A353315 (A283950 (n + 1)).toNat)

end

end A324173.P926604554839135587

/-! ## A324173.P11062004965803091319

`A357438(A055645(n)+1)`
-/

namespace A324173.P11062004965803091319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357438 (A055645 n + 1).toNat

end

end A324173.P11062004965803091319

/-! ## A324173.P9088398186897964649

`A357438(A262545(n+1)+1)`
-/

namespace A324173.P9088398186897964649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357438 (A262545 (n + 1) + 1).toNat

end

end A324173.P9088398186897964649

/-! ## A324173.P647548612854715075

`A357438(n+1)%A331487(n+1)`
-/

namespace A324173.P647548612854715075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357438 (n + 1)) (A331487 (n + 1))

end

end A324173.P647548612854715075

/-! ## A324173.P4312506402528593483

`A090181(n)+A055641(A111820(n))`
-/

namespace A324173.P4312506402528593483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n + A055641 (A111820 n).toNat

end

end A324173.P4312506402528593483

/-!
# A324174: Integers k such that 2*floor(sqrt(k)) divides k.

The programs for A324174, the canonical program `A324174.P77309822706795420` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324174 has offset 1).

The definition of A324174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324174.P77309822706795420

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=12, a(4)=16, a(5)=24, a(6)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A324174

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P77309822706795420.Spec : Prop :=
  ∀ n, P77309822706795420.a n = A324174 (n + 1)

theorem P77309822706795420.correct : P77309822706795420.Spec := by
  intro n
  simp only [A324174, Nat.add_sub_cancel]

end A324174

/-! ## A324174.P9788242990441581125

`A006446(2*(n+1))`
-/

namespace A324174.P9788242990441581125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (2 * (n + 1))

end

end A324174.P9788242990441581125

namespace A324174

/-- `A006446(2*(n+1))` -/
def P9788242990441581125.Spec : Prop :=
  ∀ n, P9788242990441581125.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P4856773703204592565

`∑[a(n-3)+a(n%3)]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A324174.P4856773703204592565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  f1 (n - 3) + f1 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324174.P4856773703204592565

namespace A324174

/-- `∑[a(n-3)+a(n%3)]` -/
def P4856773703204592565.Spec : Prop :=
  ∀ n, (P4856773703204592565.a n : ℤ) = A324174 (n + 1)

end A324174

/-! ## A324174.P1919704806142731976

`∑[lcm(2, A004523(n))+2]`
-/

namespace A324174.P1919704806142731976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004523 n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324174.P1919704806142731976

namespace A324174

/-- `∑[lcm(2, A004523(n))+2]` -/
def P1919704806142731976.Spec : Prop :=
  ∀ n, (P1919704806142731976.a n : ℤ) = A324174 (n + 1)

end A324174

/-! ## A324174.P2055066333925880659

`(A066481(n+3)+A004396(n))*A008620(n+1)`
-/

namespace A324174.P2055066333925880659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066481 (n + 3) + A004396 n) * A008620 (n + 1)

end

end A324174.P2055066333925880659

namespace A324174

/-- `(A066481(n+3)+A004396(n))*A008620(n+1)` -/
def P2055066333925880659.Spec : Prop :=
  ∀ n, P2055066333925880659.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P16037727378450735974

`(A194960(n+2)+n)*A008620(n+1)`
-/

namespace A324174.P16037727378450735974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194960 (n + 2) + (n : ℤ)) * A008620 (n + 1)

end

end A324174.P16037727378450735974

namespace A324174

/-- `(A194960(n+2)+n)*A008620(n+1)` -/
def P16037727378450735974.Spec : Prop :=
  ∀ n, P16037727378450735974.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P4878168701891647781

`A002264(n+1)+A087278(n+1)+A007980(n)`
-/

namespace A324174.P4878168701891647781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A087278 (n + 1) + A007980 n)

end

end A324174.P4878168701891647781

namespace A324174

/-- `A002264(n+1)+A087278(n+1)+A007980(n)` -/
def P4878168701891647781.Spec : Prop :=
  ∀ n, P4878168701891647781.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P3458868970528952484

`A002522(n+1)+A211547(n+1)-A071619(n)`
-/

namespace A324174.P3458868970528952484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) + (A211547 (n + 1) - A071619 n)

end

end A324174.P3458868970528952484

namespace A324174

/-- `A002522(n+1)+A211547(n+1)-A071619(n)` -/
def P3458868970528952484.Spec : Prop :=
  ∀ n, P3458868970528952484.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P10090340004808235162

`A005843(n+1)+A004523(n+1)*A004523(n)`
-/

namespace A324174.P10090340004808235162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A004523 (n + 1) * A004523 n

end

end A324174.P10090340004808235162

namespace A324174

/-- `A005843(n+1)+A004523(n+1)*A004523(n)` -/
def P10090340004808235162.Spec : Prop :=
  ∀ n, P10090340004808235162.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P10359720310606818994

`A004772(n+2)+A004396(n+1)*A004523(n+1)`
-/

namespace A324174.P10359720310606818994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 2) + A004396 (n + 1) * A004523 (n + 1)

end

end A324174.P10359720310606818994

namespace A324174

/-- `A004772(n+2)+A004396(n+1)*A004523(n+1)` -/
def P10359720310606818994.Spec : Prop :=
  ∀ n, P10359720310606818994.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P10266351862189322739

`record[2*A008624(n)*A052938(n)]`
-/

namespace A324174.P10266351862189322739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008624 n * A052938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324174.P10266351862189322739

namespace A324174

/-- `record[2*A008624(n)*A052938(n)]` -/
def P10266351862189322739.Spec : Prop :=
  ∀ n, P10266351862189322739.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P531145280568802225

`∑[2*A117910(2*n)]`
-/

namespace A324174.P531145280568802225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117910 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324174.P531145280568802225

namespace A324174

/-- `∑[2*A117910(2*n)]` -/
def P531145280568802225.Spec : Prop :=
  ∀ n, P531145280568802225.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P4602499549004129450

`A008130(2*n)+2*(n+1)`
-/

namespace A324174.P4602499549004129450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (2 * n) + (2 * (n + 1) : ℤ)

end

end A324174.P4602499549004129450

namespace A324174

/-- `A008130(2*n)+2*(n+1)` -/
def P4602499549004129450.Spec : Prop :=
  ∀ n, P4602499549004129450.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P13362504767440524976

`A008620(n+1)*A287393(2*n+1)`
-/

namespace A324174.P13362504767440524976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) * A287393 (2 * n + 1)

end

end A324174.P13362504767440524976

namespace A324174

/-- `A008620(n+1)*A287393(2*n+1)` -/
def P13362504767440524976.Spec : Prop :=
  ∀ n, P13362504767440524976.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P3698813045963462227

`A321202(2*(n+1))+A008731(2*n)`
-/

namespace A324174.P3698813045963462227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321202 (2 * (n + 1)) + A008731 (2 * n)

end

end A324174.P3698813045963462227

namespace A324174

/-- `A321202(2*(n+1))+A008731(2*n)` -/
def P3698813045963462227.Spec : Prop :=
  ∀ n, P3698813045963462227.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P10971104103834042954

`2*A086161(2*n)*A008620(n+1)`
-/

namespace A324174.P10971104103834042954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086161 (2 * n) * A008620 (n + 1)

end

end A324174.P10971104103834042954

namespace A324174

/-- `2*A086161(2*n)*A008620(n+1)` -/
def P10971104103834042954.Spec : Prop :=
  ∀ n, P10971104103834042954.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P620727484437332274

`A006446(Δ[n²]+1)%A000040(n+1)²`
-/

namespace A324174.P620727484437332274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (A000040 (n + 1) ^ 2)

end

end A324174.P620727484437332274

namespace A324174

/-- `A006446(Δ[n²]+1)%A000040(n+1)²` -/
def P620727484437332274.Spec : Prop :=
  ∀ n, P620727484437332274.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P5732040545355286974

`(A008615(2*n+1)+1)*A063200(n+2)`
-/

namespace A324174.P5732040545355286974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008615 (2 * n + 1) + 1) * A063200 (n + 2)

end

end A324174.P5732040545355286974

namespace A324174

/-- `(A008615(2*n+1)+1)*A063200(n+2)` -/
def P5732040545355286974.Spec : Prop :=
  ∀ n, P5732040545355286974.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P3692171286288973417

`A321202(2*(n+1))+A114209(2*(n+1))`
-/

namespace A324174.P3692171286288973417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321202 (2 * (n + 1)) + A114209 (2 * (n + 1))

end

end A324174.P3692171286288973417

namespace A324174

/-- `A321202(2*(n+1))+A114209(2*(n+1))` -/
def P3692171286288973417.Spec : Prop :=
  ∀ n, P3692171286288973417.a n = A324174 (n + 1)

end A324174

/-! ## A324174.P4478874535481387684

`A066377(2*(n+1))-A066377(2*n+1)`
-/

namespace A324174.P4478874535481387684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066377 (2 * (n + 1)) - A066377 (2 * n + 1)

end

end A324174.P4478874535481387684

namespace A324174

/-- `A066377(2*(n+1))-A066377(2*n+1)` -/
def P4478874535481387684.Spec : Prop :=
  ∀ n, P4478874535481387684.a n = A324174 (n + 1)

end A324174

/-!
# A324177: Integers k such that floor(sqrt(k)) + floor(sqrt(k/4)) divides k.

The programs for A324177, there is no canonical definition to state claims against.
-/

/-! ## A324177.P16515349332137181647

`∑[dr(A003056(A308819(n)))]`
-/

namespace A324177.P16515349332137181647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003056 (A308819 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324177.P16515349332137181647

/-! ## A324177.P10863278901098267119

`∑[dr(A038573(A056841(n+1)))]`
-/

namespace A324177.P10863278901098267119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038573 (A056841 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324177.P10863278901098267119

/-! ## A324177.P15926135838343608682

`record[A219488(2*n+A000035(n)*A008805(n))]`
-/

namespace A324177.P15926135838343608682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 ((2 * n : ℤ) + A000035 n * A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324177.P15926135838343608682

/-! ## A324177.P8044614587994848021

`xor(A241583(n+1), A262257(A348125(2*n+1)))`
-/

namespace A324177.P8044614587994848021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A241583 (n + 1)) (A262257 (A348125 (2 * n + 1)).toNat)

end

end A324177.P8044614587994848021

/-!
# A324178: Integers k such that floor(sqrt(k)) + floor(sqrt(k/5)) divides k.

The programs for A324178, there is no canonical definition to state claims against.
-/

/-! ## A324178.P16101474355744386087

`record[A337736(3*n+5)*A341022(n)]`
-/

namespace A324178.P16101474355744386087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (3 * n + 5) * A341022 (n + 35)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324178.P16101474355744386087

/-! ## A324178.P16641778028274047796

`record[A214570(n+1)%A285971(n+1)]`
-/

namespace A324178.P16641778028274047796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214570 (n + 1)) (A285971 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324178.P16641778028274047796

/-! ## A324178.P16443299311008568073

`A111243(lt[A183202(3*n+4), A027844(n+1)])`
-/

namespace A324178.P16443299311008568073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183202 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111243 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324178.P16443299311008568073

/-! ## A324178.P15121705380458542808

`eq[A331593(2*n+5), A332212(A331593(2*n+5))]`
-/

namespace A324178.P15121705380458542808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A331593 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324178.P15121705380458542808

/-!
# A324179: Number of distinct values A297167 obtains over divisors > 1 of n, minus number of prime factors of n counted with multiplicity: a(n) = A324190(n) - A001222(n).

The programs for A324179, there is no canonical definition to state claims against.
-/

/-! ## A324179.P14785907260896433044

`A324190(n+1)-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324179.P14785907260896433044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (n + 1) - A001222 (n + 1)

end

end A324179.P14785907260896433044

/-! ## A324179.P9103728315446229141

`A324192(n+1)-A046660(n+1)`
-/

namespace A324179.P9103728315446229141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (n + 1) - A046660 (n + 1)

end

end A324179.P9103728315446229141

/-! ## A324179.P10891556582937918965

`A081707(n+1)-A324191(n+1)`
-/

namespace A324179.P10891556582937918965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A324191 (n + 1)

end

end A324179.P10891556582937918965

/-! ## A324179.P10506692840573612623

`A324190(n+1)-A297113(A046523(n+1))`
-/

namespace A324179.P10506692840573612623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (n + 1) - A297113 (A046523 (n + 1)).toNat

end

end A324179.P10506692840573612623

/-! ## A324179.P12362701274515748870

`A324191(A046523(n+1))-A324191(n+1)`
-/

namespace A324179.P12362701274515748870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A046523 (n + 1)).toNat - A324191 (n + 1)

end

end A324179.P12362701274515748870

/-! ## A324179.P7780149826978722437

`A324191(A071364(n+1))-A324191(n+1)`
-/

namespace A324179.P7780149826978722437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A071364 (n + 1)).toNat - A324191 (n + 1)

end

end A324179.P7780149826978722437

/-! ## A324179.P14868134342415821238

`A324191(A097272(n+1))-A324191(n+1)`
-/

namespace A324179.P14868134342415821238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A097272 (n + 1)).toNat - A324191 (n + 1)

end

end A324179.P14868134342415821238

/-! ## A324179.P1166850555697402683

`A324192(n+1)-A324192(A097272(n+1))`
-/

namespace A324179.P1166850555697402683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (n + 1) - A324192 (A097272 (n + 1)).toNat

end

end A324179.P1166850555697402683

/-! ## A324179.P15989463739042993067

`A000005(n+1)-(A324191(n+1)+A001222(n+1))`
-/

namespace A324179.P15989463739042993067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A324191 (n + 1) + A001222 (n + 1))

end

end A324179.P15989463739042993067

/-! ## A324179.P4038354102920781294

`A001221(n+1)+A324192(n+1)-A001222(n+1)`
-/

namespace A324179.P4038354102920781294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A324192 (n + 1) - A001222 (n + 1))

end

end A324179.P4038354102920781294

/-! ## A324179.P1142489700915954861

`A324190(n+1)-A324190(A332462(n+1))`
-/

namespace A324179.P1142489700915954861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (n + 1) - A324190 (A332462 (n + 1)).toNat

end

end A324179.P1142489700915954861

/-!
# A324180: SumXOR variant of A297168.

The programs for A324180, there is no canonical definition to state claims against.
-/

/-! ## A324180.P1579793311962075385

`A248663(A324193(n+1)+A000007(n))`
-/

namespace A324180.P1579793311962075385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A324193 (n + 1) + A000007 n).toNat

end

end A324180.P1579793311962075385

/-! ## A324180.P12121085449534966307

`A248663(or(A290079(n), A324193(n+1)))`
-/

namespace A324180.P12121085449534966307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (Int.lor (A290079 n) (A324193 (n + 1))).toNat

end

end A324180.P12121085449534966307

/-! ## A324180.P11724374133453572001

`A248663(gcd(A324193(n+1), A332461(n+1)))`
-/

namespace A324180.P11724374133453572001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (Int.gcd (A324193 (n + 1)) (A332461 (n + 1)))

end

end A324180.P11724374133453572001

/-! ## A324180.P6909393799389466853

`A248663(A324193(n+1)+1-A211666(n+1))`
-/

namespace A324180.P6909393799389466853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A324193 (n + 1) + (1 - A211666 (n + 1))).toNat

end

end A324180.P6909393799389466853

/-! ## A324180.P9043188106126444605

`A187445(A303552(n+1))`
-/

namespace A324180.P9043188106126444605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187445 (A303552 (n + 1)).toNat

end

end A324180.P9043188106126444605

/-!
# A324181: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A324180(n) for n > 1 and f(1) = -1.

The programs for A324181, there is no canonical definition to state claims against.
-/

/-! ## A324181.P17475766447265258793

`dr(A073298(A343371(A187829(n+1))))`
-/

namespace A324181.P17475766447265258793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A073298 (A343371 (A187829 (n + 1)).toNat).toNat)

end

end A324181.P17475766447265258793

/-! ## A324181.P3854135892639402774

`A174956(n+1)+A055091(A165836(n+1))`
-/

namespace A324181.P3854135892639402774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (n + 1) + A055091 (A165836 (n + 1)).toNat

end

end A324181.P3854135892639402774

/-! ## A324181.P16269617724423689067

`A324343(A342022(n)%A330431(n+1))`
-/

namespace A324181.P16269617724423689067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 (Int.tmod (A342022 n) (A330431 (n + 1))).toNat

end

end A324181.P16269617724423689067

/-! ## A324181.P6299706669010390423

`A324197(n+1)-A005171(A004733(n)-1)`
-/

namespace A324181.P6299706669010390423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324197 (n + 1) - A005171 (A004733 n - 1).toNat

end

end A324181.P6299706669010390423

/-! ## A324181.P17992672331933946422

`A124767(31*A275870(3*n+1))`
-/

namespace A324181.P17992672331933946422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (31 * A275870 (3 * n + 1)).toNat

end

end A324181.P17992672331933946422

/-!
# A324182: a(n) = A083254(A163511(n)), where A083254(n) = 2*phi(n) - n, the Möbius transform of the deficiency of n.

The programs for A324182, the canonical program `A324182.P8996620141129556705` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324182 has offset 0).

The definition of A324182 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324182.P8996620141129556705

`A083254(A163511(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A324182

/-- `A083254(A163511(n))` -/
def P8996620141129556705.Spec : Prop :=
  ∀ n, P8996620141129556705.a n = A324182 n

theorem P8996620141129556705.correct : P8996620141129556705.Spec := by
  intro n
  simp only [A324182]

end A324182

/-! ## A324182.P10054034900478680653

`A324052(A233279(xor(n, floor(n/2))))`
-/

namespace A324182.P10054034900478680653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A233279 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A324182.P10054034900478680653

namespace A324182

/-- `A324052(A233279(xor(n, floor(n/2))))` -/
def P10054034900478680653.Spec : Prop :=
  ∀ n, P10054034900478680653.a n = A324182 n

end A324182

/-! ## A324182.P12992125467578738473

`A324052(A233279(xor(2*n, and(n, -2))/2))`
-/

namespace A324182.P12992125467578738473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A233279 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat).toNat

end

end A324182.P12992125467578738473

namespace A324182

/-- `A324052(A233279(xor(2*n, and(n, -2))/2))` -/
def P12992125467578738473.Spec : Prop :=
  ∀ n, P12992125467578738473.a n = A324182 n

end A324182

/-! ## A324182.P5838733279611447281

`A324052(A233279(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A324182.P5838733279611447281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A233279 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A324182.P5838733279611447281

namespace A324182

/-- `A324052(A233279(ceil(xor(n-1, 2*n)/2)))` -/
def P5838733279611447281.Spec : Prop :=
  ∀ n, P5838733279611447281.a n = A324182 n

end A324182

/-! ## A324182.P16772517730195771785

`A324052(A233279(-ceil(xor(2*n, -n)/2)))`
-/

namespace A324182.P16772517730195771785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A233279 (-⌈(Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉).toNat).toNat

end

end A324182.P16772517730195771785

namespace A324182

/-- `A324052(A233279(-ceil(xor(2*n, -n)/2)))` -/
def P16772517730195771785.Spec : Prop :=
  ∀ n, P16772517730195771785.a n = A324182 n

end A324182

/-! ## A324182.P8887842287316893744

`A324052(A286546(n)+A233279(n))`
-/

namespace A324182.P8887842287316893744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A286546 n + A233279 n).toNat

end

end A324182.P8887842287316893744

namespace A324182

/-- `A324052(A286546(n)+A233279(n))` -/
def P8887842287316893744.Spec : Prop :=
  ∀ n, P8887842287316893744.a n = A324182 n

end A324182

/-! ## A324182.P17062159643971568957

`A324052(A234025(xor(n, A280507(n))))`
-/

namespace A324182.P17062159643971568957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A324182.P17062159643971568957

namespace A324182

/-- `A324052(A234025(xor(n, A280507(n))))` -/
def P17062159643971568957.Spec : Prop :=
  ∀ n, P17062159643971568957.a n = A324182 n

end A324182

/-! ## A324182.P14938728849668926410

`A324185(n)-A297159(A163511(n))`
-/

namespace A324182.P14938728849668926410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 n - A297159 (A163511 n).toNat

end

end A324182.P14938728849668926410

namespace A324182

/-- `A324185(n)-A297159(A163511(n))` -/
def P14938728849668926410.Spec : Prop :=
  ∀ n, P14938728849668926410.a n = A324182 n

end A324182

/-! ## A324182.P13768201061758399118

`A083254(A122111(A253565(n)))`
-/

namespace A324182.P13768201061758399118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A122111 (A253565 n).toNat).toNat

end

end A324182.P13768201061758399118

namespace A324182

/-- `A083254(A122111(A253565(n)))` -/
def P13768201061758399118.Spec : Prop :=
  ∀ n, P13768201061758399118.a n = A324182 n

end A324182

/-!
# A324183: a(n) = d(A163511(n)), where d(n) is A000005, the number of divisors of n.

The programs for A324183, the canonical program `A324183.P17718046273459172401` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324183 has offset 0).

The definition of A324183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324183.P17718046273459172401

`A000005(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324183

/-- `A000005(A163511(n))` -/
def P17718046273459172401.Spec : Prop :=
  ∀ n, P17718046273459172401.a n = A324183 n

theorem P17718046273459172401.correct : P17718046273459172401.Spec := by
  intro n
  simp only [A324183]

end A324183

/-! ## A324183.P14487538301221904795

`A366797(Δ[n²])`
-/

namespace A324183.P14487538301221904795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366797 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A324183.P14487538301221904795

namespace A324183

/-- `A366797(Δ[n²])` -/
def P14487538301221904795.Spec : Prop :=
  ∀ n, P14487538301221904795.a n = A324183 n

end A324183

/-! ## A324183.P2964093016776352659

`A366797(2*n+1)%(n+2)`
-/

namespace A324183.P2964093016776352659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366797 (2 * n + 1)) (n + 2 : ℤ)

end

end A324183.P2964093016776352659

namespace A324183

/-- `A366797(2*n+1)%(n+2)` -/
def P2964093016776352659.Spec : Prop :=
  ∀ n, P2964093016776352659.a n = A324183 n

end A324183

/-! ## A324183.P9018245552380313701

`A124758(A004761(n+2))`
-/

namespace A324183.P9018245552380313701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A004761 (n + 2)).toNat

end

end A324183.P9018245552380313701

namespace A324183

/-- `A124758(A004761(n+2))` -/
def P9018245552380313701.Spec : Prop :=
  ∀ n, P9018245552380313701.a n = A324183 n

end A324183

/-! ## A324183.P6335507071369910714

`A124758(A053644(n)+n)`
-/

namespace A324183.P6335507071369910714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A053644 n + (n : ℤ)).toNat

end

end A324183.P6335507071369910714

namespace A324183

/-- `A124758(A053644(n)+n)` -/
def P6335507071369910714.Spec : Prop :=
  ∀ n, P6335507071369910714.a n = A324183 n

end A324183

/-! ## A324183.P14165732891727162713

`A054429(A054429(A366797(2*n+1)))`
-/

namespace A324183.P14165732891727162713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A054429 (A366797 (2 * n + 1)).toNat).toNat

end

end A324183.P14165732891727162713

namespace A324183

/-- `A054429(A054429(A366797(2*n+1)))` -/
def P14165732891727162713.Spec : Prop :=
  ∀ n, P14165732891727162713.a n = A324183 n

end A324183

/-! ## A324183.P11267222905182318744

`A124758(A030101(2*n+1)-1)`
-/

namespace A324183.P11267222905182318744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A030101 (2 * n + 1) - 1).toNat

end

end A324183.P11267222905182318744

namespace A324183

/-- `A124758(A030101(2*n+1)-1)` -/
def P11267222905182318744.Spec : Prop :=
  ∀ n, P11267222905182318744.a n = A324183 n

end A324183

/-! ## A324183.P5621526974915471167

`A302051(A252755(n))`
-/

namespace A324183.P5621526974915471167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302051 (A252755 n).toNat

end

end A324183.P5621526974915471167

namespace A324183

/-- `A302051(A252755(n))` -/
def P5621526974915471167.Spec : Prop :=
  ∀ n, P5621526974915471167.a n = A324183 n

end A324183

/-! ## A324183.P4180469009957774344

`A000005(A278531(n))`
-/

namespace A324183.P4180469009957774344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278531 n).toNat

end

end A324183.P4180469009957774344

namespace A324183

/-- `A000005(A278531(n))` -/
def P4180469009957774344.Spec : Prop :=
  ∀ n, P4180469009957774344.a n = A324183 n

end A324183

/-! ## A324183.P7477780570115918460

`A000005(A365425(2*n+1))`
-/

namespace A324183.P7477780570115918460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A365425 (2 * n + 1)).toNat

end

end A324183.P7477780570115918460

namespace A324183

/-- `A000005(A365425(2*n+1))` -/
def P7477780570115918460.Spec : Prop :=
  ∀ n, P7477780570115918460.a n = A324183 n

end A324183

/-! ## A324183.P13360193960724276729

`A000005(A278217(A006068(n)))`
-/

namespace A324183.P13360193960724276729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278217 (A006068 n).toNat).toNat

end

end A324183.P13360193960724276729

namespace A324183

/-- `A000005(A278217(A006068(n)))` -/
def P13360193960724276729.Spec : Prop :=
  ∀ n, P13360193960724276729.a n = A324183 n

end A324183

/-! ## A324183.P15906142314544094707

`A000005(A286580(A233278(n)))`
-/

namespace A324183.P15906142314544094707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286580 (A233278 n).toNat).toNat

end

end A324183.P15906142314544094707

namespace A324183

/-- `A000005(A286580(A233278(n)))` -/
def P15906142314544094707.Spec : Prop :=
  ∀ n, P15906142314544094707.a n = A324183 n

end A324183

/-! ## A324183.P12409605765714550932

`A000005(A286601(A234026(n)))`
-/

namespace A324183.P12409605765714550932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286601 (A234026 n).toNat).toNat

end

end A324183.P12409605765714550932

namespace A324183

/-- `A000005(A286601(A234026(n)))` -/
def P12409605765714550932.Spec : Prop :=
  ∀ n, P12409605765714550932.a n = A324183 n

end A324183

/-! ## A324183.P12948667359274944377

`A000005(A278533(A333776(n)))`
-/

namespace A324183.P12948667359274944377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278533 (A333776 n).toNat).toNat

end

end A324183.P12948667359274944377

namespace A324183

/-- `A000005(A278533(A333776(n)))` -/
def P12948667359274944377.Spec : Prop :=
  ∀ n, P12948667359274944377.a n = A324183 n

end A324183

/-! ## A324183.P4729286021373446425

`A124758(A318934(n+1))`
-/

namespace A324183.P4729286021373446425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A318934 (n + 1)).toNat

end

end A324183.P4729286021373446425

namespace A324183

/-- `A124758(A318934(n+1))` -/
def P4729286021373446425.Spec : Prop :=
  ∀ n, P4729286021373446425.a n = A324183 n

end A324183

/-! ## A324183.P4388948336433711528

`A000005(A278502(A279342(n)))`
-/

namespace A324183.P4388948336433711528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278502 (A279342 n).toNat).toNat

end

end A324183.P4388948336433711528

namespace A324183

/-- `A000005(A278502(A279342(n)))` -/
def P4388948336433711528.Spec : Prop :=
  ∀ n, P4388948336433711528.a n = A324183 n

end A324183

/-! ## A324183.P2517470400226491676

`A000005(A364297(n))`
-/

namespace A324183.P2517470400226491676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A364297 n).toNat

end

end A324183.P2517470400226491676

namespace A324183

/-- `A000005(A364297(n))` -/
def P2517470400226491676.Spec : Prop :=
  ∀ n, P2517470400226491676.a n = A324183 n

end A324183

/-! ## A324183.P8724267857744613799

`A000005(A332817(n))`
-/

namespace A324183.P8724267857744613799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A332817 n).toNat

end

end A324183.P8724267857744613799

namespace A324183

/-- `A000005(A332817(n))` -/
def P8724267857744613799.Spec : Prop :=
  ∀ n, P8724267857744613799.a n = A324183 n

end A324183

/-! ## A324183.P16895965125556286391

`A000005(A243353(A180200(n)))`
-/

namespace A324183.P16895965125556286391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A243353 (A180200 n).toNat).toNat

end

end A324183.P16895965125556286391

namespace A324183

/-- `A000005(A243353(A180200(n)))` -/
def P16895965125556286391.Spec : Prop :=
  ∀ n, P16895965125556286391.a n = A324183 n

end A324183

/-! ## A324183.P12685101716182974717

`A336315(A253565(n))`
-/

namespace A324183.P12685101716182974717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A253565 n).toNat

end

end A324183.P12685101716182974717

namespace A324183

/-- `A336315(A253565(n))` -/
def P12685101716182974717.Spec : Prop :=
  ∀ n, P12685101716182974717.a n = A324183 n

end A324183

/-!
# A324184: a(n) = sigma(A163511(n)).

The programs for A324184, the canonical program `A324184.P13572072800245294565` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324184 has offset 0).

The definition of A324184 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324184.P13572072800245294565

`A000203(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324184

/-- `A000203(A163511(n))` -/
def P13572072800245294565.Spec : Prop :=
  ∀ n, P13572072800245294565.a n = A324184 n

theorem P13572072800245294565.correct : P13572072800245294565.Spec := by
  intro n
  simp only [A324184]

end A324184

/-! ## A324184.P15244766369941408229

`A324189(n)+A324188(n)`
-/

namespace A324184.P15244766369941408229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324189 n + A324188 n

end

end A324184.P15244766369941408229

namespace A324184

/-- `A324189(n)+A324188(n)` -/
def P15244766369941408229.Spec : Prop :=
  ∀ n, P15244766369941408229.a n = A324184 n

end A324184

/-! ## A324184.P7195521473066734088

`2*A163511(n)-A324185(n)`
-/

namespace A324184.P7195521473066734088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163511 n - A324185 n

end

end A324184.P7195521473066734088

namespace A324184

/-- `2*A163511(n)-A324185(n)` -/
def P7195521473066734088.Spec : Prop :=
  ∀ n, P7195521473066734088.a n = A324184 n

end A324184

/-! ## A324184.P18271288093328708501

`A324545(A252755(n))`
-/

namespace A324184.P18271288093328708501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (A252755 n).toNat

end

end A324184.P18271288093328708501

namespace A324184

/-- `A324545(A252755(n))` -/
def P18271288093328708501.Spec : Prop :=
  ∀ n, P18271288093328708501.a n = A324184 n

end A324184

/-! ## A324184.P15080427072472122971

`∑{d}[A364258(n)+n, #]`
-/

namespace A324184.P15080427072472122971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324184.P15080427072472122971

namespace A324184

/-- `∑{d}[A364258(n)+n, #]` -/
def P15080427072472122971.Spec : Prop :=
  ∀ n, (P15080427072472122971.a n : ℤ) = A324184 n

end A324184

/-! ## A324184.P8891831532470004908

`∑{d}[A279338(A279342(n)), #]`
-/

namespace A324184.P8891831532470004908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279342 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324184.P8891831532470004908

namespace A324184

/-- `∑{d}[A279338(A279342(n)), #]` -/
def P8891831532470004908.Spec : Prop :=
  ∀ n, (P8891831532470004908.a n : ℤ) = A324184 n

end A324184

/-! ## A324184.P5615755595124813145

`A000203(A243353(A180200(n)))`
-/

namespace A324184.P5615755595124813145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A243353 (A180200 n).toNat).toNat

end

end A324184.P5615755595124813145

namespace A324184

/-- `A000203(A243353(A180200(n)))` -/
def P5615755595124813145.Spec : Prop :=
  ∀ n, P5615755595124813145.a n = A324184 n

end A324184

/-! ## A324184.P14745181887105934973

`A000203(A279338(A279342(n)))`
-/

namespace A324184.P14745181887105934973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A279338 (A279342 n).toNat).toNat

end

end A324184.P14745181887105934973

namespace A324184

/-- `A000203(A279338(A279342(n)))` -/
def P14745181887105934973.Spec : Prop :=
  ∀ n, P14745181887105934973.a n = A324184 n

end A324184

/-! ## A324184.P13296105722518780375

`A000203(A302026(A269385(n)))`
-/

namespace A324184.P13296105722518780375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A302026 (A269385 n).toNat).toNat

end

end A324184.P13296105722518780375

namespace A324184

/-- `A000203(A302026(A269385(n)))` -/
def P13296105722518780375.Spec : Prop :=
  ∀ n, P13296105722518780375.a n = A324184 n

end A324184

/-! ## A324184.P5745040903039365981

`A000203(A075157(A006068(n))+1)`
-/

namespace A324184.P5745040903039365981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A075157 (A006068 n).toNat + 1).toNat

end

end A324184.P5745040903039365981

namespace A324184

/-- `A000203(A075157(A006068(n))+1)` -/
def P5745040903039365981.Spec : Prop :=
  ∀ n, P5745040903039365981.a n = A324184 n

end A324184

/-! ## A324184.P3115674670756992393

`A000203(A241916(A253563(n)))`
-/

namespace A324184.P3115674670756992393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A241916 (A253563 n).toNat).toNat

end

end A324184.P3115674670756992393

namespace A324184

/-- `A000203(A241916(A253563(n)))` -/
def P3115674670756992393.Spec : Prop :=
  ∀ n, P3115674670756992393.a n = A324184 n

end A324184

/-! ## A324184.P7284867669356521059

`A000203(A269847(A237739(n)))`
-/

namespace A324184.P7284867669356521059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A269847 (A237739 n).toNat).toNat

end

end A324184.P7284867669356521059

namespace A324184

/-- `A000203(A269847(A237739(n)))` -/
def P7284867669356521059.Spec : Prop :=
  ∀ n, P7284867669356521059.a n = A324184 n

end A324184

/-! ## A324184.P9266886894497533567

`∑{d}[A332817(n), A332808(#)]`
-/

namespace A324184.P9266886894497533567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A332808 d

end

end A324184.P9266886894497533567

namespace A324184

/-- `∑{d}[A332817(n), A332808(#)]` -/
def P9266886894497533567.Spec : Prop :=
  ∀ n, P9266886894497533567.a n = A324184 n

end A324184

/-! ## A324184.P9417771856794857802

`A000203(A091203(A305427(n)))`
-/

namespace A324184.P9417771856794857802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A091203 (A305427 n).toNat).toNat

end

end A324184.P9417771856794857802

namespace A324184

/-- `A000203(A091203(A305427(n)))` -/
def P9417771856794857802.Spec : Prop :=
  ∀ n, P9417771856794857802.a n = A324184 n

end A324184

/-! ## A324184.P2184943793869726048

`A000203(A235027(A332817(n)))`
-/

namespace A324184.P2184943793869726048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A235027 (A332817 n).toNat).toNat

end

end A324184.P2184943793869726048

namespace A324184

/-- `A000203(A235027(A332817(n)))` -/
def P2184943793869726048.Spec : Prop :=
  ∀ n, P2184943793869726048.a n = A324184 n

end A324184

/-! ## A324184.P11018857744000727692

`A000203(A332213(A332214(n)))`
-/

namespace A324184.P11018857744000727692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A332213 (A332214 n).toNat).toNat

end

end A324184.P11018857744000727692

namespace A324184

/-- `A000203(A332213(A332214(n)))` -/
def P11018857744000727692.Spec : Prop :=
  ∀ n, P11018857744000727692.a n = A324184 n

end A324184

/-! ## A324184.P6267196179939422634

`A324189(n)+A324121(A163511(n))`
-/

namespace A324184.P6267196179939422634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324189 n + A324121 (A163511 n).toNat

end

end A324184.P6267196179939422634

namespace A324184

/-- `A324189(n)+A324121(A163511(n))` -/
def P6267196179939422634.Spec : Prop :=
  ∀ n, P6267196179939422634.a n = A324184 n

end A324184

/-! ## A324184.P15982266307728258057

`A038712(A163511(n))*A324186(n)`
-/

namespace A324184.P15982266307728258057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A163511 n).toNat * A324186 n

end

end A324184.P15982266307728258057

namespace A324184

/-- `A038712(A163511(n))*A324186(n)` -/
def P15982266307728258057.Spec : Prop :=
  ∀ n, P15982266307728258057.a n = A324184 n

end A324184

/-! ## A324184.P11477311301540631870

`A285703(A245612(n))`
-/

namespace A324184.P11477311301540631870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (A245612 n).toNat

end

end A324184.P11477311301540631870

namespace A324184

/-- `A285703(A245612(n))` -/
def P11477311301540631870.Spec : Prop :=
  ∀ n, P11477311301540631870.a n = A324184 n

end A324184

/-!
# A324185: Deficiency of n permuted by A163511: a(n) = A033879(A163511(n)) = 2*A163511(n) - sigma(A163511(n)).

The programs for A324185, the canonical program `A324185.P14252950843010352268` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324185 has offset 0).

The definition of A324185 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324185.P12853594061553393693

`2*A163511(n)-A324184(n)`
-/

namespace A324185.P12853594061553393693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163511 n - A324184 n

end

end A324185.P12853594061553393693

namespace A324185

/-- `2*A163511(n)-A324184(n)` -/
def P12853594061553393693.Spec : Prop :=
  ∀ n, P12853594061553393693.a n = A324185 n

end A324185

/-! ## A324185.P14252950843010352268

`A033879(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324185

/-- `A033879(A163511(n))` -/
def P14252950843010352268.Spec : Prop :=
  ∀ n, P14252950843010352268.a n = A324185 n

theorem P14252950843010352268.correct : P14252950843010352268.Spec := by
  intro n
  simp only [A324185]

end A324185

/-! ## A324185.P13201473490054198328

`A324055(A092569(xor(1, n)))`
-/

namespace A324185.P13201473490054198328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 (A092569 (Nat.xor 1 n)).toNat

end

end A324185.P13201473490054198328

namespace A324185

/-- `A324055(A092569(xor(1, n)))` -/
def P13201473490054198328.Spec : Prop :=
  ∀ n, P13201473490054198328.a n = A324185 n

end A324185

/-! ## A324185.P3390257740591720104

`A324055(A010078(n+1)-A053644(n))`
-/

namespace A324185.P3390257740591720104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 (A010078 (n + 1) - A053644 n).toNat

end

end A324185.P3390257740591720104

namespace A324185

/-- `A324055(A010078(n+1)-A053644(n))` -/
def P3390257740591720104.Spec : Prop :=
  ∀ n, P3390257740591720104.a n = A324185 n

end A324185

/-! ## A324185.P7903082185240215510

`A324055(A092569(2*n)/2)`
-/

namespace A324185.P7903082185240215510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A324185.P7903082185240215510

namespace A324185

/-- `A324055(A092569(2*n)/2)` -/
def P7903082185240215510.Spec : Prop :=
  ∀ n, P7903082185240215510.a n = A324185 n

end A324185

/-! ## A324185.P5400809684538195535

`A324546(A252755(n))`
-/

namespace A324185.P5400809684538195535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (A252755 n).toNat

end

end A324185.P5400809684538195535

namespace A324185

/-- `A324546(A252755(n))` -/
def P5400809684538195535.Spec : Prop :=
  ∀ n, P5400809684538195535.a n = A324185 n

end A324185

/-! ## A324185.P9579983850111933542

`A324546(A286550(n)+n)`
-/

namespace A324185.P9579983850111933542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (A286550 n + (n : ℤ)).toNat

end

end A324185.P9579983850111933542

namespace A324185

/-- `A324546(A286550(n)+n)` -/
def P9579983850111933542.Spec : Prop :=
  ∀ n, P9579983850111933542.a n = A324185 n

end A324185

/-! ## A324185.P4231943456176857262

`A033879(A005940(A337909(n+1)))`
-/

namespace A324185.P4231943456176857262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A005940 (A337909 (n + 1)).toNat).toNat

end

end A324185.P4231943456176857262

namespace A324185

/-- `A033879(A005940(A337909(n+1)))` -/
def P4231943456176857262.Spec : Prop :=
  ∀ n, P4231943456176857262.a n = A324185 n

end A324185

/-! ## A324185.P4924117435050192462

`A323174(A253565(n))`
-/

namespace A324185.P4924117435050192462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (A253565 n).toNat

end

end A324185.P4924117435050192462

namespace A324185

/-- `A323174(A253565(n))` -/
def P4924117435050192462.Spec : Prop :=
  ∀ n, P4924117435050192462.a n = A324185 n

end A324185

/-! ## A324185.P11440714564934230180

`∑{d}[A163511(n), A083254(#)]`
-/

namespace A324185.P11440714564934230180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A083254 d

end

end A324185.P11440714564934230180

namespace A324185

/-- `∑{d}[A163511(n), A083254(#)]` -/
def P11440714564934230180.Spec : Prop :=
  ∀ n, P11440714564934230180.a n = A324185 n

end A324185

/-!
# A324186: Sum of odd divisors permuted by A163511: a(n) = A000593(A163511(n)).

The programs for A324186, the canonical program `A324186.P10448595320496770779` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324186 has offset 0).

The definition of A324186 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324186.P10448595320496770779

`A000593(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324186

/-- `A000593(A163511(n))` -/
def P10448595320496770779.Spec : Prop :=
  ∀ n, P10448595320496770779.a n = A324186 n

theorem P10448595320496770779.correct : P10448595320496770779.Spec := by
  intro n
  simp only [A324186]

end A324186

/-! ## A324186.P3013639155556418131

`2*A366873(n)-A366797(n)`
-/

namespace A324186.P3013639155556418131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366873 n - A366797 n

end

end A324186.P3013639155556418131

namespace A324186

/-- `2*A366873(n)-A366797(n)` -/
def P3013639155556418131.Spec : Prop :=
  ∀ n, P3013639155556418131.a n = A324186 n

end A324186

/-! ## A324186.P939687794770886567

`gcd(A324184(2*n), A324184(n))`
-/

namespace A324186.P939687794770886567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324184 (2 * n)) (A324184 n)

end

end A324186.P939687794770886567

namespace A324186

/-- `gcd(A324184(2*n), A324184(n))` -/
def P939687794770886567.Spec : Prop :=
  ∀ n, (P939687794770886567.a n : ℤ) = A324186 n

end A324186

/-! ## A324186.P11666506107778780893

`A324056(A092569(2*n)/2)`
-/

namespace A324186.P11666506107778780893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324056 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A324186.P11666506107778780893

namespace A324186

/-- `A324056(A092569(2*n)/2)` -/
def P11666506107778780893.Spec : Prop :=
  ∀ n, P11666506107778780893.a n = A324186 n

end A324186

/-! ## A324186.P9706009560648063614

`2*A324185(2*n)-A324185(4*n)`
-/

namespace A324186.P9706009560648063614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324185 (2 * n) - A324185 (4 * n)

end

end A324186.P9706009560648063614

namespace A324186

/-- `2*A324185(2*n)-A324185(4*n)` -/
def P9706009560648063614.Spec : Prop :=
  ∀ n, P9706009560648063614.a n = A324186 n

end A324186

/-! ## A324186.P4525617194233605

`A324056(A092569(2*n+1))`
-/

namespace A324186.P4525617194233605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324056 (A092569 (2 * n + 1)).toNat

end

end A324186.P4525617194233605

namespace A324186

/-- `A324056(A092569(2*n+1))` -/
def P4525617194233605.Spec : Prop :=
  ∀ n, P4525617194233605.a n = A324186 n

end A324186

/-! ## A324186.P1984623098840308736

`A322819(A253565(n))`
-/

namespace A324186.P1984623098840308736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322819 (A253565 n).toNat

end

end A324186.P1984623098840308736

namespace A324186

/-- `A322819(A253565(n))` -/
def P1984623098840308736.Spec : Prop :=
  ∀ n, P1984623098840308736.a n = A324186 n

end A324186

/-! ## A324186.P10644967101692924252

`A389073(A332819(A332808(A332817(n))))`
-/

namespace A324186.P10644967101692924252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389073 (A332819 (A332808 (A332817 n).toNat).toNat).toNat

end

end A324186.P10644967101692924252

namespace A324186

/-- `A389073(A332819(A332808(A332817(n))))` -/
def P10644967101692924252.Spec : Prop :=
  ∀ n, P10644967101692924252.a n = A324186 n

end A324186

/-! ## A324186.P14790045466047176925

`A324184(n)/A038712(A163511(n))`
-/

namespace A324186.P14790045466047176925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324184 n : ℚ) / (A038712 (A163511 n).toNat : ℚ)

end

end A324186.P14790045466047176925

namespace A324186

/-- `A324184(n)/A038712(A163511(n))` -/
def P14790045466047176925.Spec : Prop :=
  ∀ n, P14790045466047176925.a n = (A324186 n : ℚ)

end A324186

/-!
# A324187: a(n) = A106315(A163511(n)).

The programs for A324187, the canonical program `A324187.P6887987960075682770` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324187 has offset 0).

The definition of A324187 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324187.P1898814000550676255

`(A163511(n)*A324183(n))%A324184(n)`
-/

namespace A324187.P1898814000550676255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163511 n * A324183 n) (A324184 n)

end

end A324187.P1898814000550676255

namespace A324187

/-- `(A163511(n)*A324183(n))%A324184(n)` -/
def P1898814000550676255.Spec : Prop :=
  ∀ n, P1898814000550676255.a n = A324187 n

end A324187

/-! ## A324187.P6887987960075682770

`A106315(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324187

/-- `A106315(A163511(n))` -/
def P6887987960075682770.Spec : Prop :=
  ∀ n, P6887987960075682770.a n = A324187 n

theorem P6887987960075682770.correct : P6887987960075682770.Spec := by
  intro n
  simp only [A324187]

end A324187

/-! ## A324187.P9409662057628148203

`A324057(A286548(n)+A180201(n))`
-/

namespace A324187.P9409662057628148203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324057 (A286548 n + A180201 n).toNat

end

end A324187.P9409662057628148203

namespace A324187

/-- `A324057(A286548(n)+A180201(n))` -/
def P9409662057628148203.Spec : Prop :=
  ∀ n, P9409662057628148203.a n = A324187 n

end A324187

/-! ## A324187.P13507094834123898594

`A324057(A286546(n)+A233279(n))`
-/

namespace A324187.P13507094834123898594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324057 (A286546 n + A233279 n).toNat

end

end A324187.P13507094834123898594

namespace A324187

/-- `A324057(A286546(n)+A233279(n))` -/
def P13507094834123898594.Spec : Prop :=
  ∀ n, P13507094834123898594.a n = A324187 n

end A324187

/-! ## A324187.P16241744187428572483

`A038040(A163511(n))%A324184(n)`
-/

namespace A324187.P16241744187428572483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (A163511 n).toNat) (A324184 n)

end

end A324187.P16241744187428572483

namespace A324187

/-- `A038040(A163511(n))%A324184(n)` -/
def P16241744187428572483.Spec : Prop :=
  ∀ n, P16241744187428572483.a n = A324187 n

end A324187

/-! ## A324187.P6988161476639300671

`A324057(A156552(A163511(n))%A001599(n+1))`
-/

namespace A324187.P6988161476639300671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324057 (Int.tmod (A156552 (A163511 n).toNat) (A001599 (n + 1))).toNat

end

end A324187.P6988161476639300671

namespace A324187

/-- `A324057(A156552(A163511(n))%A001599(n+1))` -/
def P6988161476639300671.Spec : Prop :=
  ∀ n, P6988161476639300671.a n = A324187 n

end A324187

/-!
# A324188: a(n) = A324121(A163511(n)).

The programs for A324188, the canonical program `A324188.P10044735737893625335` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324188 has offset 0).

The definition of A324188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324188.P10044735737893625335

`A324121(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324188

/-- `A324121(A163511(n))` -/
def P10044735737893625335.Spec : Prop :=
  ∀ n, P10044735737893625335.a n = A324188 n

theorem P10044735737893625335.correct : P10044735737893625335.Spec := by
  intro n
  simp only [A324188]

end A324188

/-! ## A324188.P7208423102480373953

`A324058(A092569(xor(1, n)))`
-/

namespace A324188.P7208423102480373953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324058 (A092569 (Nat.xor 1 n)).toNat

end

end A324188.P7208423102480373953

namespace A324188

/-- `A324058(A092569(xor(1, n)))` -/
def P7208423102480373953.Spec : Prop :=
  ∀ n, P7208423102480373953.a n = A324188 n

end A324188

/-! ## A324188.P2796411512396594062

`A324184(n)-A324189(n)`
-/

namespace A324188.P2796411512396594062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n - A324189 n

end

end A324188.P2796411512396594062

namespace A324188

/-- `A324184(n)-A324189(n)` -/
def P2796411512396594062.Spec : Prop :=
  ∀ n, P2796411512396594062.a n = A324188 n

end A324188

/-! ## A324188.P14274603065717879769

`gcd(A324184(n), A324187(n))`
-/

namespace A324188.P14274603065717879769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324184 n) (A324187 n)

end

end A324188.P14274603065717879769

namespace A324188

/-- `gcd(A324184(n), A324187(n))` -/
def P14274603065717879769.Spec : Prop :=
  ∀ n, (P14274603065717879769.a n : ℤ) = A324188 n

end A324188

/-! ## A324188.P8068839008205553071

`A324058(A092569(2*n)/2)`
-/

namespace A324188.P8068839008205553071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324058 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A324188.P8068839008205553071

namespace A324188

/-- `A324058(A092569(2*n)/2)` -/
def P8068839008205553071.Spec : Prop :=
  ∀ n, P8068839008205553071.a n = A324188 n

end A324188

/-! ## A324188.P11243017042805092484

`A324545(A252755(n))-A324189(n)`
-/

namespace A324188.P11243017042805092484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (A252755 n).toNat - A324189 n

end

end A324188.P11243017042805092484

namespace A324188

/-- `A324545(A252755(n))-A324189(n)` -/
def P11243017042805092484.Spec : Prop :=
  ∀ n, P11243017042805092484.a n = A324188 n

end A324188

/-! ## A324188.P4504482651800036623

`A000203(A163511(n))-A324189(n)`
-/

namespace A324188.P4504482651800036623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163511 n).toNat - A324189 n

end

end A324188.P4504482651800036623

namespace A324188

/-- `A000203(A163511(n))-A324189(n)` -/
def P4504482651800036623.Spec : Prop :=
  ∀ n, P4504482651800036623.a n = A324188 n

end A324188

/-! ## A324188.P3473055309721274514

`A336314(A253565(n))`
-/

namespace A324188.P3473055309721274514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A253565 n).toNat

end

end A324188.P3473055309721274514

namespace A324188

/-- `A336314(A253565(n))` -/
def P3473055309721274514.Spec : Prop :=
  ∀ n, P3473055309721274514.a n = A324188 n

end A324188

/-! ## A324188.P3241990385237885099

`A324184(n)-A324122(A163511(n))`
-/

namespace A324188.P3241990385237885099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n - A324122 (A163511 n).toNat

end

end A324188.P3241990385237885099

namespace A324188

/-- `A324184(n)-A324122(A163511(n))` -/
def P3241990385237885099.Spec : Prop :=
  ∀ n, P3241990385237885099.a n = A324188 n

end A324188

/-!
# A324189: a(n) = A324122(A163511(n)).

The programs for A324189, the canonical program `A324189.P7792579227676348933` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324189 has offset 0).

The definition of A324189 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324189.P179143569934270147

`A324184(n)-A324188(n)`
-/

namespace A324189.P179143569934270147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n - A324188 n

end

end A324189.P179143569934270147

namespace A324189

/-- `A324184(n)-A324188(n)` -/
def P179143569934270147.Spec : Prop :=
  ∀ n, P179143569934270147.a n = A324189 n

end A324189

/-! ## A324189.P7792579227676348933

`A324122(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324189

/-- `A324122(A163511(n))` -/
def P7792579227676348933.Spec : Prop :=
  ∀ n, P7792579227676348933.a n = A324189 n

theorem P7792579227676348933.correct : P7792579227676348933.Spec := by
  intro n
  simp only [A324189]

end A324189

/-! ## A324189.P8782635299848323473

`A324184(n)-gcd(A324184(n), A324187(n))`
-/

namespace A324189.P8782635299848323473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n - (Int.gcd (A324184 n) (A324187 n) : ℤ)

end

end A324189.P8782635299848323473

namespace A324189

/-- `A324184(n)-gcd(A324184(n), A324187(n))` -/
def P8782635299848323473.Spec : Prop :=
  ∀ n, P8782635299848323473.a n = A324189 n

end A324189

/-! ## A324189.P3761779269927091952

`A324349(floor(A054429(2*n+1)/2))`
-/

namespace A324189.P3761779269927091952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324349 ⌊(A054429 (2 * n + 1) : ℚ) / 2⌋.toNat

end

end A324189.P3761779269927091952

namespace A324189

/-- `A324349(floor(A054429(2*n+1)/2))` -/
def P3761779269927091952.Spec : Prop :=
  ∀ n, P3761779269927091952.a n = A324189 n

end A324189

/-! ## A324189.P3524102176672746573

`A324545(A252755(n))-A324188(n)`
-/

namespace A324189.P3524102176672746573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (A252755 n).toNat - A324188 n

end

end A324189.P3524102176672746573

namespace A324189

/-- `A324545(A252755(n))-A324188(n)` -/
def P3524102176672746573.Spec : Prop :=
  ∀ n, P3524102176672746573.a n = A324189 n

end A324189

/-! ## A324189.P12815205813639144995

`A000203(A163511(n))-A324188(n)`
-/

namespace A324189.P12815205813639144995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163511 n).toNat - A324188 n

end

end A324189.P12815205813639144995

namespace A324189

/-- `A000203(A163511(n))-A324188(n)` -/
def P12815205813639144995.Spec : Prop :=
  ∀ n, P12815205813639144995.a n = A324189 n

end A324189

/-! ## A324189.P13669856923789533449

`A324184(n)-A336314(A253565(n))`
-/

namespace A324189.P13669856923789533449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n - A336314 (A253565 n).toNat

end

end A324189.P13669856923789533449

namespace A324189

/-- `A324184(n)-A336314(A253565(n))` -/
def P13669856923789533449.Spec : Prop :=
  ∀ n, P13669856923789533449.a n = A324189 n

end A324189

/-! ## A324189.P3108029441244621930

`A324184(n)-A324121(A163511(n))`
-/

namespace A324189.P3108029441244621930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n - A324121 (A163511 n).toNat

end

end A324189.P3108029441244621930

namespace A324189

/-- `A324184(n)-A324121(A163511(n))` -/
def P3108029441244621930.Spec : Prop :=
  ∀ n, P3108029441244621930.a n = A324189 n

end A324189

/-!
# A324190: Number of distinct values A297167 obtains over the divisors > 1 of n; a(1) = 0.

The programs for A324190, there is no canonical definition to state claims against.
-/

/-! ## A324190.P16587030358758480538

`A001221(A324202(n+1))`
-/

namespace A324190.P16587030358758480538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324202 (n + 1)).toNat

end

end A324190.P16587030358758480538

/-! ## A324190.P11709015398610116815

`A324179(n+1)+A001222(n+1)`
-/

namespace A324190.P11709015398610116815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A001222 (n + 1)

end

end A324190.P11709015398610116815

/-! ## A324190.P7002018486642902597

`A324192(n+1)+A001221(n+1)`
-/

namespace A324190.P7002018486642902597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (n + 1) + A001221 (n + 1)

end

end A324190.P7002018486642902597

/-! ## A324190.P1921989144718501393

`A000005(n+1)-A324191(n+1)`
-/

namespace A324190.P1921989144718501393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324191 (n + 1)

end

end A324190.P1921989144718501393

/-! ## A324190.P10686264452876515134

`A001221(n+1)+A324179(n+1)+A046660(n+1)`
-/

namespace A324190.P10686264452876515134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A324179 (n + 1) + A046660 (n + 1))

end

end A324190.P10686264452876515134

/-! ## A324190.P713838052344132823

`A001222(n+1)+A324192(n+1)-A046660(n+1)`
-/

namespace A324190.P713838052344132823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A324192 (n + 1) - A046660 (n + 1))

end

end A324190.P713838052344132823

/-! ## A324190.P8080439655034625623

`∑{p}[A324202(n+1), A001222(#)]`
-/

namespace A324190.P8080439655034625623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A324190.P8080439655034625623

/-! ## A324190.P4843417024586941782

`A001222(∏{p}[A324202(n+1), #])`
-/

namespace A324190.P4843417024586941782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324190.P4843417024586941782

/-! ## A324190.P15821914785314293117

`A061395(∏{p}[A324202(n+1), #])`
-/

namespace A324190.P15821914785314293117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324190.P15821914785314293117

/-! ## A324190.P9014334658625010834

`∑{e}[A324202(n+1), A057427(#)]`
-/

namespace A324190.P9014334658625010834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p)

end

end A324190.P9014334658625010834

/-!
# A324191: Number of divisors of n minus the number of distinct values that A297167 obtains over the divisors > 1 of n: a(n) = A000005(n) - A324190(n).

The programs for A324191, there is no canonical definition to state claims against.
-/

/-! ## A324191.P4654707730178014451

`A000005(n+1)-A324190(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324191.P4654707730178014451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324190 (n + 1)

end

end A324191.P4654707730178014451

/-! ## A324191.P6694289787177132979

`Δ[A006218(n)]-A324190(n+1)`
-/

namespace A324191.P6694289787177132979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324190 (n + 1)

end

end A324191.P6694289787177132979

/-! ## A324191.P11456342890558086385

`A033273(n+1)-A324192(n+1)`
-/

namespace A324191.P11456342890558086385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A324192 (n + 1)

end

end A324191.P11456342890558086385

/-! ## A324191.P17976750805320606116

`A081707(n+1)-A324179(n+1)`
-/

namespace A324191.P17976750805320606116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A324179 (n + 1)

end

end A324191.P17976750805320606116

/-! ## A324191.P5931767522232212509

`A000005(n+1)-(A324179(n+1)+A001222(n+1))`
-/

namespace A324191.P5931767522232212509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A324179 (n + 1) + A001222 (n + 1))

end

end A324191.P5931767522232212509

/-! ## A324191.P7902416804968756188

`A073093(A324537(n+1))`
-/

namespace A324191.P7902416804968756188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A324537 (n + 1)).toNat

end

end A324191.P7902416804968756188

/-!
# A324192: Number of distinct values A297167 obtains over divisors > 1 of n, minus number of distinct prime factors of n: a(n) = A324190(n) - A001221(n).

The programs for A324192, there is no canonical definition to state claims against.
-/

/-! ## A324192.P16099130508073654460

`A324190(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324192.P16099130508073654460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (n + 1) - A001221 (n + 1)

end

end A324192.P16099130508073654460

/-! ## A324192.P18023759302577309943

`A324179(n+1)+A046660(n+1)`
-/

namespace A324192.P18023759302577309943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A046660 (n + 1)

end

end A324192.P18023759302577309943

/-! ## A324192.P8951949775312135898

`A033273(n+1)-A324191(n+1)`
-/

namespace A324192.P8951949775312135898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A324191 (n + 1)

end

end A324192.P8951949775312135898

/-! ## A324192.P13025035766865377524

`A324190(n+1)-A061395(A046523(n+1))`
-/

namespace A324192.P13025035766865377524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (n + 1) - A061395 (A046523 (n + 1)).toNat

end

end A324192.P13025035766865377524

/-! ## A324192.P1675808662900552401

`A000005(n+1)-(A324191(n+1)+A001221(n+1))`
-/

namespace A324192.P1675808662900552401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A324191 (n + 1) + A001221 (n + 1))

end

end A324192.P1675808662900552401

/-! ## A324192.P10109693536048731075

`A001222(n+1)+A324179(n+1)-A001221(n+1)`
-/

namespace A324192.P10109693536048731075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A324179 (n + 1) - A001221 (n + 1))

end

end A324192.P10109693536048731075

/-! ## A324192.P10517451899251435533

`A046660(n+1)+A324190(n+1)-A001222(n+1)`
-/

namespace A324192.P10517451899251435533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + (A324190 (n + 1) - A001222 (n + 1))

end

end A324192.P10517451899251435533

/-! ## A324192.P14087137478588558365

`A324179(A013636(n+1))`
-/

namespace A324192.P14087137478588558365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A013636 (n + 1)).toNat

end

end A324192.P14087137478588558365

/-! ## A324192.P2200068477954149891

`A324179(A053024(n+1))`
-/

namespace A324192.P2200068477954149891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A053024 (n + 1)).toNat

end

end A324192.P2200068477954149891

/-! ## A324192.P14420356276195965828

`A324179(A004928(n+1))`
-/

namespace A324192.P14420356276195965828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A004928 (n + 1)).toNat

end

end A324192.P14420356276195965828

/-! ## A324192.P14522459781114775165

`A324179(A033286(n+1))`
-/

namespace A324192.P14522459781114775165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A033286 (n + 1)).toNat

end

end A324192.P14522459781114775165

/-! ## A324192.P18414611266352059883

`A324179(A164931(n+1))`
-/

namespace A324192.P18414611266352059883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A164931 (n + 1)).toNat

end

end A324192.P18414611266352059883

/-! ## A324192.P4719894365752856229

`A324179(A117495(n+2))`
-/

namespace A324192.P4719894365752856229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A117495 (n + 2)).toNat

end

end A324192.P4719894365752856229

/-! ## A324192.P2300558494175610161

`A324179((n+1)*A000040(n+1))`
-/

namespace A324192.P2300558494175610161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A324192.P2300558494175610161

/-! ## A324192.P2816514861264323095

`A324179(A306192(n+2))`
-/

namespace A324192.P2816514861264323095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A306192 (n + 2)).toNat

end

end A324192.P2816514861264323095

/-!
# A324193: a(1) = 0; for n > 1, a(n) = Product_{d|n, d>1, d

The programs for A324193, there is no canonical definition to state claims against.
-/

/-! ## A324193.P8287068862467344099

`A052126(A332461(n+1))%(2^n)`
-/

namespace A324193.P8287068862467344099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A332461 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A324193.P8287068862467344099

/-! ## A324193.P8082062105345930717

`A052126(A332461(n+1))-A000007(n)`
-/

namespace A324193.P8082062105345930717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A332461 (n + 1)).toNat - A000007 n

end

end A324193.P8082062105345930717

/-! ## A324193.P3200056747894220239

`char[A007318(n)]*A052126(A332461(n+1))`
-/

namespace A324193.P3200056747894220239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052126 (A332461 (n + 1)).toNat

end

end A324193.P3200056747894220239

/-! ## A324193.P3968344913768969917

`A000040(n+1)%2*A052126(A332461(n+1))`
-/

namespace A324193.P3968344913768969917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A052126 (A332461 (n + 1)).toNat

end

end A324193.P3968344913768969917

/-! ## A324193.P9216897902605959862

`A052126(A332461(n+1))-A000045(C(2, n+2))`
-/

namespace A324193.P9216897902605959862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A332461 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A324193.P9216897902605959862

/-!
# A324194: A000120-deficiency of n permuted by A163511: a(n) = A192895(A163511(n)).

The programs for A324194, the canonical program `A324194.P16246264380367185644` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324194 has offset 0).

The definition of A324194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324194.P16246264380367185644

`A192895(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324194

/-- `A192895(A163511(n))` -/
def P16246264380367185644.Spec : Prop :=
  ∀ n, P16246264380367185644.a n = A324194 n

theorem P16246264380367185644.correct : P16246264380367185644.Spec := by
  intro n
  simp only [A324194]

end A324194

/-! ## A324194.P8968866784948059557

`A324114(A337909(n+1)-1)`
-/

namespace A324194.P8968866784948059557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324114 (A337909 (n + 1) - 1).toNat

end

end A324194.P8968866784948059557

namespace A324194

/-- `A324114(A337909(n+1)-1)` -/
def P8968866784948059557.Spec : Prop :=
  ∀ n, P8968866784948059557.a n = A324194 n

end A324194

/-! ## A324194.P357120858246264526

`A192895(A364258(n)+n)`
-/

namespace A324194.P357120858246264526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A364258 n + (n : ℤ)).toNat

end

end A324194.P357120858246264526

namespace A324194

/-- `A192895(A364258(n)+n)` -/
def P357120858246264526.Spec : Prop :=
  ∀ n, P357120858246264526.a n = A324194 n

end A324194

/-! ## A324194.P16449987602948517396

`A324100(A335422(n))`
-/

namespace A324194.P16449987602948517396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (A335422 n).toNat

end

end A324194.P16449987602948517396

namespace A324194

/-- `A324100(A335422(n))` -/
def P16449987602948517396.Spec : Prop :=
  ∀ n, P16449987602948517396.a n = A324194 n

end A324194

/-!
# A324195: Cumulative bitwise-OR of A297112(d), where d ranges over the divisors d of n.

The programs for A324195, there is no canonical definition to state claims against.
-/

/-! ## A324195.P10756644143201501792

`∑{p}[A332461(n+1), A048675(#)]`
-/

namespace A324195.P10756644143201501792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A324195.P10756644143201501792

/-! ## A324195.P8108226127239722616

`∑{p}[A332461(n+1), A087207(#)]`
-/

namespace A324195.P8108226127239722616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A324195.P8108226127239722616

/-! ## A324195.P1711828843246904355

`∑{p}[A332461(n+1), A156552(#)]`
-/

namespace A324195.P1711828843246904355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A324195.P1711828843246904355

/-! ## A324195.P16379887055743749432

`∑{p}[A332461(n+1), A162474(#)]`
-/

namespace A324195.P16379887055743749432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A324195.P16379887055743749432

/-! ## A324195.P12272025946092453956

`∑{p}[A332461(n+1), A233249(#)]`
-/

namespace A324195.P12272025946092453956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A324195.P12272025946092453956

/-! ## A324195.P8497303280065933685

`∑{p}[A332461(n+1), A248663(#)]`
-/

namespace A324195.P8497303280065933685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A324195.P8497303280065933685

/-! ## A324195.P8519769699601604368

`∑{p}[A332461(n+1), A252754(#)]`
-/

namespace A324195.P8519769699601604368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A324195.P8519769699601604368

/-! ## A324195.P11291350618358592796

`∑{p}[A332461(n+1), A253566(#)]`
-/

namespace A324195.P11291350618358592796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253566 p

end

end A324195.P11291350618358592796

/-! ## A324195.P12228743692595878742

`∑{p}[A332461(n+1), A277333(#)]`
-/

namespace A324195.P12228743692595878742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A324195.P12228743692595878742

/-!
# A324197: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A324195(n) for all other numbers except f(2) = -1 and f(n) = -2 when n is an odd prime.

The programs for A324197, there is no canonical definition to state claims against.
-/

/-! ## A324197.P12832527132434823916

`A329896(n+1)%A143879(n)+1`
-/

namespace A324197.P12832527132434823916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329896 (n + 1)) (A143879 n) + 1

end

end A324197.P12832527132434823916

/-! ## A324197.P6944017651717118744

`A329896(A077168(n))-A057428(n)`
-/

namespace A324197.P6944017651717118744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (A077168 n).toNat - A057428 n

end

end A324197.P6944017651717118744

/-! ## A324197.P1189633458480014070

`A329896(n+1)+A000035(A000051(n))`
-/

namespace A324197.P1189633458480014070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (n + 1) + A000035 (A000051 n).toNat

end

end A324197.P1189633458480014070

/-! ## A324197.P11485925316179401820

`A329896(n+1)+A005171(A004733(n))`
-/

namespace A324197.P11485925316179401820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (n + 1) + A005171 (A004733 n).toNat

end

end A324197.P11485925316179401820

/-! ## A324197.P4682447135076910089

`A329896(n+1)+A055396(A000079(n))`
-/

namespace A324197.P4682447135076910089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (n + 1) + A055396 (A000079 n).toNat

end

end A324197.P4682447135076910089

/-!
# A324198: a(n) = gcd(n, A276086(n)), where A276086 is the primorial base exp-function.

The programs for A324198, there is no canonical definition to state claims against.
-/

/-! ## A324198.P3143808062619626115

`gcd(n, A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324198.P3143808062619626115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276086 n)

end

end A324198.P3143808062619626115

/-! ## A324198.P17485107908469989896

`gcd(2*n, A324895(n))`
-/

namespace A324198.P17485107908469989896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A324895 n)

end

end A324198.P17485107908469989896

/-! ## A324198.P14174389434836724431

`A276086(A351254(n))`
-/

namespace A324198.P14174389434836724431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A351254 n).toNat

end

end A324198.P14174389434836724431

/-! ## A324198.P4169557002196184243

`A276086(n-A351253(n))`
-/

namespace A324198.P4169557002196184243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A351253 n).toNat

end

end A324198.P4169557002196184243

/-! ## A324198.P1620732539128105176

`A276086(n)/A351251(n)`
-/

namespace A324198.P1620732539128105176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A351251 n : ℚ)

end

end A324198.P1620732539128105176

/-! ## A324198.P17468856277091917575

`gcd(A004277(n), A351225(n))`
-/

namespace A324198.P17468856277091917575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 n) (A351225 n)

end

end A324198.P17468856277091917575

/-! ## A324198.P6101612814804784566

`A028310(n/A351250(A028310(n)))`
-/

namespace A324198.P6101612814804784566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A351250 (A028310 n).toNat : ℚ))).toNat

end

end A324198.P6101612814804784566

/-! ## A324198.P13188228712354515913

`A276086(n)/A276086(A351253(n))`
-/

namespace A324198.P13188228712354515913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 (A351253 n).toNat : ℚ)

end

end A324198.P13188228712354515913

/-! ## A324198.P2132194556346760985

`A327858(n)*A351231(n)/A351251(n)`
-/

namespace A324198.P2132194556346760985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327858 n * A351231 n : ℚ) / (A351251 n : ℚ)

end

end A324198.P2132194556346760985

/-! ## A324198.P9138221183286452299

`gcd(A324895(n)+A005843(n), A005843(n))`
-/

namespace A324198.P9138221183286452299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324895 n + A005843 n) (A005843 n)

end

end A324198.P9138221183286452299

/-! ## A324198.P11404987270109938970

`lcm(A324895(n), A351251(n))/A351251(n)`
-/

namespace A324198.P11404987270109938970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A324895 n) (A351251 n) : ℚ) / (A351251 n : ℚ)

end

end A324198.P11404987270109938970

/-!
# A324199: Numbers n such that A324187(n) = 0.

The programs for A324199, there is no canonical definition to state claims against.
-/

/-! ## A324199.P13532732551002267653

`eq[0, A324187(n)]`
-/

namespace A324199.P13532732551002267653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324199.P13532732551002267653

/-! ## A324199.P16756643138149300443

`eq[0, A324189(n)]`
-/

namespace A324199.P16756643138149300443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324199.P16756643138149300443

/-! ## A324199.P789052934705515694

`eq[A324184(n), A324188(n)]`
-/

namespace A324199.P789052934705515694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324199.P789052934705515694

/-! ## A324199.P18030501881512738722

`lt[A324187(n), acot(A000217(n))]`
-/

namespace A324199.P18030501881512738722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324187 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000217 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A324199.P18030501881512738722

/-! ## A324199.P2891874317965602345

`lt[A324187(n), A007318(C(2, n+2))]`
-/

namespace A324199.P2891874317965602345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324199.P2891874317965602345

