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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061600: a(n) = n^3 - n + 1.

The programs for A061600, the canonical program `A061600.P7583863552806792530` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061600 has offset 0).

The definition of A061600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061600.P7583863552806792530

`1+n^3-n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061600

/-- `1+n^3-n` -/
def P7583863552806792530.Spec : Prop :=
  ∀ n, P7583863552806792530.a n = A061600 n

theorem P7583863552806792530.correct : P7583863552806792530.Spec := by
  intro n
  simp only [A061600]

end A061600

/-! ## A061600.P4897623571295187914

`or(1, n^3-n)`
-/

namespace A061600.P4897623571295187914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 3 : ℤ) - (n : ℤ))

end

end A061600.P4897623571295187914

namespace A061600

/-- `or(1, n^3-n)` -/
def P4897623571295187914.Spec : Prop :=
  ∀ n, P4897623571295187914.a n = A061600 n

end A061600

/-! ## A061600.P7858796991096615147

`xor(1, n^3-n)`
-/

namespace A061600.P7858796991096615147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 3 : ℤ) - (n : ℤ))

end

end A061600.P7858796991096615147

namespace A061600

/-- `xor(1, n^3-n)` -/
def P7858796991096615147.Spec : Prop :=
  ∀ n, P7858796991096615147.a n = A061600 n

end A061600

/-! ## A061600.P15547630938216426294

`(24*C(n+1, 3)+4)/4`
-/

namespace A061600.P15547630938216426294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 * Nat.choose (n + 1) 3 + 4 : ℚ) / 4

end

end A061600.P15547630938216426294

namespace A061600

/-- `(24*C(n+1, 3)+4)/4` -/
def P15547630938216426294.Spec : Prop :=
  ∀ n, P15547630938216426294.a n = (A061600 n : ℚ)

end A061600

/-! ## A061600.P16486433252104826869

`abs(or(1, (n-1)*(n²+n)))`
-/

namespace A061600.P16486433252104826869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((n : ℤ) - 1) * (n ^ 2 + n : ℤ))|

end

end A061600.P16486433252104826869

namespace A061600

/-- `abs(or(1, (n-1)*(n²+n)))` -/
def P16486433252104826869.Spec : Prop :=
  ∀ n, P16486433252104826869.a n = A061600 n

end A061600

/-! ## A061600.P4771391783103420401

`abs(xor(1, (n+1)*(n²-n)))`
-/

namespace A061600.P4771391783103420401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n + 1 : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ)))|

end

end A061600.P4771391783103420401

namespace A061600

/-- `abs(xor(1, (n+1)*(n²-n)))` -/
def P4771391783103420401.Spec : Prop :=
  ∀ n, P4771391783103420401.a n = A061600 n

end A061600

/-! ## A061600.P7613684396273352608

`abs((n-1)*lcm(n, n+1)+1)`
-/

namespace A061600.P7613684396273352608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * (Nat.lcm n (n + 1) : ℤ) + 1|

end

end A061600.P7613684396273352608

namespace A061600

/-- `abs((n-1)*lcm(n, n+1)+1)` -/
def P7613684396273352608.Spec : Prop :=
  ∀ n, P7613684396273352608.a n = A061600 n

end A061600

/-! ## A061600.P13931526704966384939

`abs(n-1-gcd(n, 2*n)^3)`
-/

namespace A061600.P13931526704966384939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (Nat.gcd n (2 * n) ^ 3 : ℤ)|

end

end A061600.P13931526704966384939

namespace A061600

/-- `abs(n-1-gcd(n, 2*n)^3)` -/
def P13931526704966384939.Spec : Prop :=
  ∀ n, P13931526704966384939.a n = A061600 n

end A061600

/-! ## A061600.P2577614540495593983

`-xor((n-1)*∑[2*n], -1)`
-/

namespace A061600.P2577614540495593983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (-1)

end

end A061600.P2577614540495593983

namespace A061600

/-- `-xor((n-1)*∑[2*n], -1)` -/
def P2577614540495593983.Spec : Prop :=
  ∀ n, P2577614540495593983.a n = A061600 n

end A061600

/-! ## A061600.P16915654007947488963

`floor(a(n-1)+3*(n²-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A061600.P16915654007947488963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A061600.P16915654007947488963

namespace A061600

/-- `floor(a(n-1)+3*(n²-n))` -/
def P16915654007947488963.Spec : Prop :=
  ∀ n, P16915654007947488963.a n = A061600 n

theorem P16915654007947488963.correct : P16915654007947488963.Spec := by
  intro n
  induction n with
  | zero => simp [A061600, A061600.P16915654007947488963.a, A061600.P7583863552806792530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A061600, Nat.add_sub_cancel, A061600.P16915654007947488963.a, A061600.P7583863552806792530.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A061600

/-! ## A061600.P14132774972798408758

`3*(∑[∑[a(n-2)+4]]+1/3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A061600.P14132774972798408758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (1 : ℚ) / 3)

end

end A061600.P14132774972798408758

namespace A061600

/-- `3*(∑[∑[a(n-2)+4]]+1/3)` -/
def P14132774972798408758.Spec : Prop :=
  ∀ n, P14132774972798408758.a n = (A061600 n : ℚ)

end A061600

/-! ## A061600.P3799071265763388851

`∑[(gcd(n-1, a(n-1))+2*n+1)*(n-1)]` with `a(0)=1`
-/

namespace A061600.P3799071265763388851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Int.gcd ((n : ℤ) - 1) (f1 (n - 1)) + (2 * n + 1) : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061600.P3799071265763388851

namespace A061600

/-- `∑[(gcd(n-1, a(n-1))+2*n+1)*(n-1)]` -/
def P3799071265763388851.Spec : Prop :=
  ∀ n, P3799071265763388851.a n = A061600 n

end A061600

/-! ## A061600.P10465149343776612737

`∑[abs(2-A077588(n))]`
-/

namespace A061600.P10465149343776612737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A077588 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061600.P10465149343776612737

namespace A061600

/-- `∑[abs(2-A077588(n))]` -/
def P10465149343776612737.Spec : Prop :=
  ∀ n, P10465149343776612737.a n = A061600 n

end A061600

/-! ## A061600.P10454670922278449047

`ceil(sqrt(A002604(n))-n)`
-/

namespace A061600.P10454670922278449047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002604 n : ℝ) - (n : ℝ)⌉

end

end A061600.P10454670922278449047

namespace A061600

/-- `ceil(sqrt(A002604(n))-n)` -/
def P10454670922278449047.Spec : Prop :=
  ∀ n, P10454670922278449047.a n = A061600 n

end A061600

/-! ## A061600.P11212123016641433181

`ceil(sqrt(A060883(n))-n)`
-/

namespace A061600.P11212123016641433181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060883 n : ℝ) - (n : ℝ)⌉

end

end A061600.P11212123016641433181

namespace A061600

/-- `ceil(sqrt(A060883(n))-n)` -/
def P11212123016641433181.Spec : Prop :=
  ∀ n, P11212123016641433181.a n = A061600 n

end A061600

/-! ## A061600.P15301626601350256259

`abs(A000578(n)+1-n)`
-/

namespace A061600.P15301626601350256259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n + (1 - (n : ℤ))|

end

end A061600.P15301626601350256259

namespace A061600

/-- `abs(A000578(n)+1-n)` -/
def P15301626601350256259.Spec : Prop :=
  ∀ n, P15301626601350256259.a n = A061600 n

end A061600

/-! ## A061600.P17535482223605269450

`(A007588(n)+2-n)/2`
-/

namespace A061600.P17535482223605269450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007588 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A061600.P17535482223605269450

namespace A061600

/-- `(A007588(n)+2-n)/2` -/
def P17535482223605269450.Spec : Prop :=
  ∀ n, P17535482223605269450.a n = (A061600 n : ℚ)

end A061600

/-! ## A061600.P15092338673495239574

`A060889(n)%A184537(n)`
-/

namespace A061600.P15092338673495239574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060889 n) (A184537 n)

end

end A061600.P15092338673495239574

namespace A061600

/-- `A060889(n)%A184537(n)` -/
def P15092338673495239574.Spec : Prop :=
  ∀ n, P15092338673495239574.a n = A061600 n

end A061600

/-! ## A061600.P6755773392665059696

`A060892(n)%A106229(n+1)`
-/

namespace A061600.P6755773392665059696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060892 n) (A106229 (n + 1))

end

end A061600.P6755773392665059696

namespace A061600

/-- `A060892(n)%A106229(n+1)` -/
def P6755773392665059696.Spec : Prop :=
  ∀ n, P6755773392665059696.a n = A061600 n

end A061600

/-! ## A061600.P16409964867823806203

`Δ[C(n, 2)²-∑[n-2]]`
-/

namespace A061600.P16409964867823806203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061600.P16409964867823806203

namespace A061600

/-- `Δ[C(n, 2)²-∑[n-2]]` -/
def P16409964867823806203.Spec : Prop :=
  ∀ n, P16409964867823806203.a n = A061600 n

end A061600

/-!
# A061601: 9's complement of n: a(n) = 10^d - 1 - n where d is the number of digits in n. If a is a digit in n replace it with 9 - a.

The programs for A061601, the canonical program `A061601.P16047037002631305352` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061601 has offset 0).

The definition of A061601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061601.P13939462050641857096

`A178914(n)-1`
-/

namespace A061601.P13939462050641857096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 n - 1

end

end A061601.P13939462050641857096

namespace A061601

/-- `A178914(n)-1` -/
def P13939462050641857096.Spec : Prop :=
  ∀ n, P13939462050641857096.a n = A061601 n

end A061601

/-! ## A061601.P16047037002631305352

`10^A055642(n)-(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061601

/-- `10^A055642(n)-(n+1)` -/
def P16047037002631305352.Spec : Prop :=
  ∀ n, P16047037002631305352.a n = (A061601 n : ℚ)

end A061601

/-! ## A061601.P10499962601378482662

`A111708(n)/(n+1)-n`
-/

namespace A061601.P10499962601378482662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111708 n : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A061601.P10499962601378482662

namespace A061601

/-- `A111708(n)/(n+1)-n` -/
def P10499962601378482662.Spec : Prop :=
  ∀ n, P10499962601378482662.a n = (A061601 n : ℚ)

end A061601

/-! ## A061601.P9962050781508709277

`∏{digits}[n, A340085(#+1)+9]-(n+1)`
-/

namespace A061601.P9962050781508709277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A340085 (x + 1) + 9).prod - (n + 1 : ℤ)

end

end A061601.P9962050781508709277

namespace A061601

/-- `∏{digits}[n, A340085(#+1)+9]-(n+1)` -/
def P9962050781508709277.Spec : Prop :=
  ∀ n, P9962050781508709277.a n = A061601 n

end A061601

/-! ## A061601.P17360945613586168183

`∏{digits}[n, A161114(#+1)+10]-(n+1)`
-/

namespace A061601.P17360945613586168183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A161114 (x + 1) + 10).prod - (n + 1 : ℤ)

end

end A061601.P17360945613586168183

namespace A061601

/-- `∏{digits}[n, A161114(#+1)+10]-(n+1)` -/
def P17360945613586168183.Spec : Prop :=
  ∀ n, P17360945613586168183.a n = A061601 n

end A061601

/-! ## A061601.P14338379134285425960

`A055120(A048379(n))`
-/

namespace A061601.P14338379134285425960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A048379 n).toNat

end

end A061601.P14338379134285425960

namespace A061601

/-- `A055120(A048379(n))` -/
def P14338379134285425960.Spec : Prop :=
  ∀ n, P14338379134285425960.a n = A061601 n

end A061601

/-! ## A061601.P15764595161127804957

`A267193(n)-A056965(n)`
-/

namespace A061601.P15764595161127804957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n - A056965 n

end

end A061601.P15764595161127804957

namespace A061601

/-- `A267193(n)-A056965(n)` -/
def P15764595161127804957.Spec : Prop :=
  ∀ n, P15764595161127804957.a n = A061601 n

end A061601

/-! ## A061601.P10293412584500932400

`A002283(∑{digits}[n, A036370(#)])-n`
-/

namespace A061601.P10293412584500932400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum.toNat - (n : ℤ)

end

end A061601.P10293412584500932400

namespace A061601

/-- `A002283(∑{digits}[n, A036370(#)])-n` -/
def P10293412584500932400.Spec : Prop :=
  ∀ n, P10293412584500932400.a n = A061601 n

end A061601

/-! ## A061601.P1616258239657092655

`A002283(∑{digits}[n, A053632(#)])-n`
-/

namespace A061601.P1616258239657092655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A053632 x).sum.toNat - (n : ℤ)

end

end A061601.P1616258239657092655

namespace A061601

/-- `A002283(∑{digits}[n, A053632(#)])-n` -/
def P1616258239657092655.Spec : Prop :=
  ∀ n, P1616258239657092655.a n = A061601 n

end A061601

/-! ## A061601.P15284955353475508765

`A002283(∑{digits}[n, A097876(#)])-n`
-/

namespace A061601.P15284955353475508765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A097876 x).sum.toNat - (n : ℤ)

end

end A061601.P15284955353475508765

namespace A061601

/-- `A002283(∑{digits}[n, A097876(#)])-n` -/
def P15284955353475508765.Spec : Prop :=
  ∀ n, P15284955353475508765.a n = A061601 n

end A061601

/-! ## A061601.P1986817629067205988

`A002283(∑{digits}[n, A105586(#)])-n`
-/

namespace A061601.P1986817629067205988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105586 x).sum.toNat - (n : ℤ)

end

end A061601.P1986817629067205988

namespace A061601

/-- `A002283(∑{digits}[n, A105586(#)])-n` -/
def P1986817629067205988.Spec : Prop :=
  ∀ n, P1986817629067205988.a n = A061601 n

end A061601

/-! ## A061601.P16870466801413870565

`A002283(∑{digits}[n, A105591(#)])-n`
-/

namespace A061601.P16870466801413870565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105591 x).sum.toNat - (n : ℤ)

end

end A061601.P16870466801413870565

namespace A061601

/-- `A002283(∑{digits}[n, A105591(#)])-n` -/
def P16870466801413870565.Spec : Prop :=
  ∀ n, P16870466801413870565.a n = A061601 n

end A061601

/-! ## A061601.P14121938392694947567

`A002283(∑{digits}[n, A105592(#)])-n`
-/

namespace A061601.P14121938392694947567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105592 x).sum.toNat - (n : ℤ)

end

end A061601.P14121938392694947567

namespace A061601

/-- `A002283(∑{digits}[n, A105592(#)])-n` -/
def P14121938392694947567.Spec : Prop :=
  ∀ n, P14121938392694947567.a n = A061601 n

end A061601

/-! ## A061601.P16965522366754091175

`A002283(∑{digits}[n, A113010(#)])-n`
-/

namespace A061601.P16965522366754091175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A113010 x).sum.toNat - (n : ℤ)

end

end A061601.P16965522366754091175

namespace A061601

/-- `A002283(∑{digits}[n, A113010(#)])-n` -/
def P16965522366754091175.Spec : Prop :=
  ∀ n, P16965522366754091175.a n = A061601 n

end A061601

/-! ## A061601.P12729730386421827105

`A002283(∑{digits}[n, A194673(#)])-n`
-/

namespace A061601.P12729730386421827105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A194673 x).sum.toNat - (n : ℤ)

end

end A061601.P12729730386421827105

namespace A061601

/-- `A002283(∑{digits}[n, A194673(#)])-n` -/
def P12729730386421827105.Spec : Prop :=
  ∀ n, P12729730386421827105.a n = A061601 n

end A061601

/-! ## A061601.P8081057950914355890

`A002283(∑{digits}[n, A260529(#)])-n`
-/

namespace A061601.P8081057950914355890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A260529 x).sum.toNat - (n : ℤ)

end

end A061601.P8081057950914355890

namespace A061601

/-- `A002283(∑{digits}[n, A260529(#)])-n` -/
def P8081057950914355890.Spec : Prop :=
  ∀ n, P8081057950914355890.a n = A061601 n

end A061601

/-!
# A061602: Sum of factorials of the digits of n.

The programs for A061602, the canonical program `A061602.P6084715743619966137` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061602 has offset 0).

The definition of A061602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061602.P6084715743619966137

`∑{digits}[n, #!]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061602

/-- `∑{digits}[n, #!]` -/
def P6084715743619966137.Spec : Prop :=
  ∀ n, (P6084715743619966137.a n : ℤ) = A061602 n

theorem P6084715743619966137.correct : P6084715743619966137.Spec := by
  intro n
  simp only [A061602]

end A061602

/-! ## A061602.P13653581988906383316

`∑{digits}[n, A000142(#)]`
-/

namespace A061602.P13653581988906383316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000142 x).sum

end

end A061602.P13653581988906383316

namespace A061602

/-- `∑{digits}[n, A000142(#)]` -/
def P13653581988906383316.Spec : Prop :=
  ∀ n, P13653581988906383316.a n = A061602 n

end A061602

/-! ## A061602.P11183515707756168716

`∑{digits}[n, A033647(#)]`
-/

namespace A061602.P11183515707756168716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A033647 x).sum

end

end A061602.P11183515707756168716

namespace A061602

/-- `∑{digits}[n, A033647(#)]` -/
def P11183515707756168716.Spec : Prop :=
  ∀ n, P11183515707756168716.a n = A061602 n

end A061602

/-! ## A061602.P9796372270319177055

`∑{digits}[n, A062919(#)]`
-/

namespace A061602.P9796372270319177055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A062919 x).sum

end

end A061602.P9796372270319177055

namespace A061602

/-- `∑{digits}[n, A062919(#)]` -/
def P9796372270319177055.Spec : Prop :=
  ∀ n, P9796372270319177055.a n = A061602 n

end A061602

/-! ## A061602.P15759627318869157075

`∑{digits}[n, A066459(#)]`
-/

namespace A061602.P15759627318869157075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A066459 x).sum

end

end A061602.P15759627318869157075

namespace A061602

/-- `∑{digits}[n, A066459(#)]` -/
def P15759627318869157075.Spec : Prop :=
  ∀ n, P15759627318869157075.a n = A061602 n

end A061602

/-! ## A061602.P16437163155987017223

`∑{digits}[n, A072133(#)]`
-/

namespace A061602.P16437163155987017223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A072133 x).sum

end

end A061602.P16437163155987017223

namespace A061602

/-- `∑{digits}[n, A072133(#)]` -/
def P16437163155987017223.Spec : Prop :=
  ∀ n, P16437163155987017223.a n = A061602 n

end A061602

/-! ## A061602.P17756034593542802289

`∑{digits}[n, A154657(#)]`
-/

namespace A061602.P17756034593542802289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A154657 x).sum

end

end A061602.P17756034593542802289

namespace A061602

/-- `∑{digits}[n, A154657(#)]` -/
def P17756034593542802289.Spec : Prop :=
  ∀ n, P17756034593542802289.a n = A061602 n

end A061602

/-! ## A061602.P12178385966840717006

`∑{digits}[n, A154658(#)]`
-/

namespace A061602.P12178385966840717006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A154658 x).sum

end

end A061602.P12178385966840717006

namespace A061602

/-- `∑{digits}[n, A154658(#)]` -/
def P12178385966840717006.Spec : Prop :=
  ∀ n, P12178385966840717006.a n = A061602 n

end A061602

/-! ## A061602.P2669837745106230378

`∑{digits}[n, A154659(#)]`
-/

namespace A061602.P2669837745106230378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A154659 x).sum

end

end A061602.P2669837745106230378

namespace A061602

/-- `∑{digits}[n, A154659(#)]` -/
def P2669837745106230378.Spec : Prop :=
  ∀ n, P2669837745106230378.a n = A061602 n

end A061602

/-! ## A061602.P5608239270892056223

`∑{digits}[n, A173849(#)]`
-/

namespace A061602.P5608239270892056223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A173849 x).sum

end

end A061602.P5608239270892056223

namespace A061602

/-- `∑{digits}[n, A173849(#)]` -/
def P5608239270892056223.Spec : Prop :=
  ∀ n, P5608239270892056223.a n = A061602 n

end A061602

/-! ## A061602.P7755186329322095575

`∑{digits}[n, A173850(#)]`
-/

namespace A061602.P7755186329322095575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A173850 x).sum

end

end A061602.P7755186329322095575

namespace A061602

/-- `∑{digits}[n, A173850(#)]` -/
def P7755186329322095575.Spec : Prop :=
  ∀ n, P7755186329322095575.a n = A061602 n

end A061602

/-! ## A061602.P11611914870498227551

`∑{digits}[n, A177280(#)]`
-/

namespace A061602.P11611914870498227551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A177280 x).sum

end

end A061602.P11611914870498227551

namespace A061602

/-- `∑{digits}[n, A177280(#)]` -/
def P11611914870498227551.Spec : Prop :=
  ∀ n, P11611914870498227551.a n = A061602 n

end A061602

/-! ## A061602.P10741067831829739588

`∑{digits}[n, A177281(#)]`
-/

namespace A061602.P10741067831829739588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A177281 x).sum

end

end A061602.P10741067831829739588

namespace A061602

/-- `∑{digits}[n, A177281(#)]` -/
def P10741067831829739588.Spec : Prop :=
  ∀ n, P10741067831829739588.a n = A061602 n

end A061602

/-! ## A061602.P17019726192685037467

`∑{digits}[n, A182287(#)]`
-/

namespace A061602.P17019726192685037467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A182287 x).sum

end

end A061602.P17019726192685037467

namespace A061602

/-- `∑{digits}[n, A182287(#)]` -/
def P17019726192685037467.Spec : Prop :=
  ∀ n, P17019726192685037467.a n = A061602 n

end A061602

/-! ## A061602.P7844427567940638775

`∑{digits}[n, A230232(#)]`
-/

namespace A061602.P7844427567940638775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A230232 x).sum

end

end A061602.P7844427567940638775

namespace A061602

/-- `∑{digits}[n, A230232(#)]` -/
def P7844427567940638775.Spec : Prop :=
  ∀ n, P7844427567940638775.a n = A061602 n

end A061602

/-! ## A061602.P13196154323474751071

`∑{digits}[n, A230233(#)]`
-/

namespace A061602.P13196154323474751071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A230233 x).sum

end

end A061602.P13196154323474751071

namespace A061602

/-- `∑{digits}[n, A230233(#)]` -/
def P13196154323474751071.Spec : Prop :=
  ∀ n, P13196154323474751071.a n = A061602 n

end A061602

/-! ## A061602.P5868320471411772318

`∑{digits}[n, A232985(#)]`
-/

namespace A061602.P5868320471411772318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A232985 x).sum

end

end A061602.P5868320471411772318

namespace A061602

/-- `∑{digits}[n, A232985(#)]` -/
def P5868320471411772318.Spec : Prop :=
  ∀ n, P5868320471411772318.a n = A061602 n

end A061602

/-! ## A061602.P237045110431917601

`∑{digits}[n, A254523(#)]`
-/

namespace A061602.P237045110431917601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A254523 x).sum

end

end A061602.P237045110431917601

namespace A061602

/-- `∑{digits}[n, A254523(#)]` -/
def P237045110431917601.Spec : Prop :=
  ∀ n, P237045110431917601.a n = A061602 n

end A061602

/-! ## A061602.P2825559393369759089

`∑{digits}[n, A267389(#)]`
-/

namespace A061602.P2825559393369759089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A267389 x).sum

end

end A061602.P2825559393369759089

namespace A061602

/-- `∑{digits}[n, A267389(#)]` -/
def P2825559393369759089.Spec : Prop :=
  ∀ n, P2825559393369759089.a n = A061602 n

end A061602

/-!
# A061603: a(n) = n! / {product of factorials of the digits of n}.

The programs for A061603, the canonical program `A061603.P7123521768897570186` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061603 has offset 0).

The definition of A061603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061603.P7123521768897570186

`A000142(n)/A066459(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061603

/-- `A000142(n)/A066459(n)` -/
def P7123521768897570186.Spec : Prop :=
  ∀ n, P7123521768897570186.a n = (A061603 n : ℚ)

end A061603

/-! ## A061603.P16530552371604410397

`n!/∏{digits}[n, #!]`
-/

namespace A061603.P16530552371604410397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ)

end

end A061603.P16530552371604410397

namespace A061603

/-- `n!/∏{digits}[n, #!]` -/
def P16530552371604410397.Spec : Prop :=
  ∀ n, P16530552371604410397.a n = (A061603 n : ℚ)

end A061603

/-! ## A061603.P12995938179233937298

`∏[A028310(n)]/A066459(n)`
-/

namespace A061603.P12995938179233937298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A066459 n : ℚ)

end

end A061603.P12995938179233937298

namespace A061603

/-- `∏[A028310(n)]/A066459(n)` -/
def P12995938179233937298.Spec : Prop :=
  ∀ n, P12995938179233937298.a n = (A061603 n : ℚ)

end A061603

/-! ## A061603.P2911930265199483874

`A000142(n)/∏{digits}[n, A000142(#)]`
-/

namespace A061603.P2911930265199483874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000142 x).prod : ℤ) : ℚ)

end

end A061603.P2911930265199483874

namespace A061603

/-- `A000142(n)/∏{digits}[n, A000142(#)]` -/
def P2911930265199483874.Spec : Prop :=
  ∀ n, P2911930265199483874.a n = (A061603 n : ℚ)

end A061603

/-! ## A061603.P9345620203821272807

`A000142(n)/A269221(n)*A384955(n)`
-/

namespace A061603.P9345620203821272807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A269221 n : ℚ) * (A384955 n : ℚ)

end

end A061603.P9345620203821272807

namespace A061603

/-- `A000142(n)/A269221(n)*A384955(n)` -/
def P9345620203821272807.Spec : Prop :=
  ∀ n, P9345620203821272807.a n = (A061603 n : ℚ)

end A061603

/-!
# A061604: Smallest multiple of n containing all 10 digits from 0 to 9.

The programs for A061604, there is no canonical definition to state claims against.
-/

/-! ## A061604.P14916692005409094725

`(n+1)*A218770(n+1)`
-/

namespace A061604.P14916692005409094725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A218770 (n + 1)

end

end A061604.P14916692005409094725

/-!
# A061605: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061605, the canonical program `A061605.P5287570905539050970` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061605 has offset 0).

The definition of A061605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061605.P5287570905539050970

`(n+1)*∑[A059600(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061605

/-- `(n+1)*∑[A059600(n)]` -/
def P5287570905539050970.Spec : Prop :=
  ∀ n, P5287570905539050970.a n = A061605 n

theorem P5287570905539050970.correct : P5287570905539050970.Spec := by
  intro n
  simp only [A061605]

end A061605

/-!
# A061608: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061608, there is no canonical definition to state claims against.
-/

/-! ## A061608.P14584594856081459319

`floor(((n+3)/2)²*C(n+3, 3))`
-/

namespace A061608.P14584594856081459319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℚ) / 2) ^ 2 * (Nat.choose (n + 3) 3 : ℚ)⌋

end

end A061608.P14584594856081459319

/-!
# A061609: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061609, there is no canonical definition to state claims against.
-/

/-! ## A061609.P15910982557634943112

`2*(A104670(n)+A050483(n))`
-/

namespace A061609.P15910982557634943112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104670 n + A050483 n)

end

end A061609.P15910982557634943112

/-!
# A061612: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061612, there is no canonical definition to state claims against.
-/

/-! ## A061612.P17594269215658374428

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=4, a(1)=8`
-/

namespace A061612.P17594269215658374428
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061612.P17594269215658374428

/-!
# A061616: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061616, there is no canonical definition to state claims against.
-/

/-! ## A061616.P2984984753413818980

`A261796(A261754(n+1))+A115523(2*(n+1))`
-/

namespace A061616.P2984984753413818980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261796 (A261754 (n + 1)).toNat + A115523 (2 * (n + 1))

end

end A061616.P2984984753413818980

/-!
# A061620: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061620, there is no canonical definition to state claims against.
-/

/-! ## A061620.P16377462455829234702

`∑[∑[∑[∑[5*(n+1)]+4]]]`
-/

namespace A061620.P16377462455829234702
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061620.P16377462455829234702

/-!
# A061624: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

The programs for A061624, there is no canonical definition to state claims against.
-/

/-! ## A061624.P3223510220070572224

`∑[∑[∑[A274285(3*n+5)]]]`
-/

namespace A061624.P3223510220070572224
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274285 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061624.P3223510220070572224

/-!
# A061629: Ooguri-Vafa invariants of disk degeneracies with boundary class -4 in the O(K) -> P^2 geometry (brane I or II).

The programs for A061629, there is no canonical definition to state claims against.
-/

/-! ## A061629.P16164553638871347496

`A053825(n+1)%A355028(A001519(n))`
-/

namespace A061629.P16164553638871347496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053825 (n + 1)) (A355028 (A001519 n).toNat)

end

end A061629.P16164553638871347496

/-! ## A061629.P13809335136047180959

`A328640(n+1)%A355028(A001519(n))`
-/

namespace A061629.P13809335136047180959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328640 (n + 1)) (A355028 (A001519 n).toNat)

end

end A061629.P13809335136047180959

/-!
# A061630: Ooguri-Vafa invariants of disk degeneracies with boundary class -3 in the O(K) -> P^2 geometry (brane I or II).

The programs for A061630, there is no canonical definition to state claims against.
-/

/-! ## A061630.P10203916232702414439

`A117335(2^n+1)%(3^n-2^(n+1))`
-/

namespace A061630.P10203916232702414439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117335 (2 ^ n + 1)) ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ))

end

end A061630.P10203916232702414439

/-! ## A061630.P11798569449097146667

`A091263(A068096(n))-A068096(n)`
-/

namespace A061630.P11798569449097146667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091263 (A068096 n).toNat - A068096 n

end

end A061630.P11798569449097146667

/-!
# A061631: Ooguri-Vafa invariants of disk degeneracies with boundary class -2 in the O(K) -> P^2 geometry (brane I or II).

The programs for A061631, there is no canonical definition to state claims against.
-/

/-! ## A061631.P5217687646173522851

`(-1)^∑{e}[n+1, #]*A002265(A341036(n+1))`
-/

namespace A061631.P5217687646173522851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A002265 (A341036 (n + 1)).toNat

end

end A061631.P5217687646173522851

/-! ## A061631.P16879279879756903121

`A002265(A341036(n+1))*A105812(n)`
-/

namespace A061631.P16879279879756903121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A341036 (n + 1)).toNat * A105812 n

end

end A061631.P16879279879756903121

/-!
# A061632: Ooguri-Vafa invariants of disk degeneracies with boundary class -1 in the O(K) -> P^2 geometry (brane I or II).

The programs for A061632, there is no canonical definition to state claims against.
-/

/-! ## A061632.P4277195496685247115

`A097198(A148060(n+1))`
-/

namespace A061632.P4277195496685247115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097198 (A148060 (n + 1)).toNat

end

end A061632.P4277195496685247115

/-!
# A061633: Ooguri-Vafa invariants of disk degeneracies with boundary class 1 in the O(K) -> P^2 geometry (brane I or II).

The programs for A061633, there is no canonical definition to state claims against.
-/

/-! ## A061633.P14883000968324060527

`A051162(A228867(n+1))*A228863(n+1)`
-/

namespace A061633.P14883000968324060527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A228867 (n + 1)).toNat * A228863 (n + 1)

end

end A061633.P14883000968324060527

/-!
# A061636: Ooguri-Vafa invariants of disk degeneracies with boundary class 4 in the O(K) -> P^2 geometry (brane I or II).

The programs for A061636, there is no canonical definition to state claims against.
-/

/-! ## A061636.P16305836536476254861

`A110556(n)*A123068(A024718(n))`
-/

namespace A061636.P16305836536476254861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A123068 (A024718 n).toNat

end

end A061636.P16305836536476254861

/-!
# A061638: Primes p such that the greatest prime divisor of p-1 is 7.

The programs for A061638, there is no canonical definition to state claims against.
-/

/-! ## A061638.P11071221553860421184

`∩[A080194(n+1)+1, A219697(n+1)]`
-/

namespace A061638.P11071221553860421184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061638.P11071221553860421184

/-! ## A061638.P15485337196039498980

`p?[A080194(n+1)+1]`
-/

namespace A061638.P15485337196039498980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061638.P15485337196039498980

/-! ## A061638.P15283582582881547533

`p?[7*A002473(n+1)+1]`
-/

namespace A061638.P15283582582881547533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002473 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061638.P15283582582881547533

/-! ## A061638.P7055062716308229982

`∩[A140444(n+1), A174144(n+1)]`
-/

namespace A061638.P7055062716308229982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061638.P7055062716308229982

/-! ## A061638.P1720144011241938553

`∩[A004619(n+1), A174144(n+1)]`
-/

namespace A061638.P1720144011241938553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061638.P1720144011241938553

/-! ## A061638.P2312763604958332202

`p?[7*(lt[A006530(n+1), 8]+1)+1]`
-/

namespace A061638.P2312763604958332202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A061638.P2312763604958332202

/-! ## A061638.P848846154619034700

`A131877(A125871(n+1))`
-/

namespace A061638.P848846154619034700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 (A125871 (n + 1)).toNat

end

end A061638.P848846154619034700

/-! ## A061638.P12101299758590546257

`∩[A174144(n+1), A131877(n)]`
-/

namespace A061638.P12101299758590546257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061638.P12101299758590546257

/-!
# A061639: Number of planar planted trees with n non-root nodes and every 2-valent node isolated.

The programs for A061639, there is no canonical definition to state claims against.
-/

/-! ## A061639.P2147051203770638639

`A008676(A099214(n)+A016777(n))`
-/

namespace A061639.P2147051203770638639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A099214 n + A016777 n).toNat

end

end A061639.P2147051203770638639

/-! ## A061639.P13480537318051165548

`A008676(A152955(n+1)+A099214(n))`
-/

namespace A061639.P13480537318051165548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A152955 (n + 1) + A099214 n).toNat

end

end A061639.P13480537318051165548

/-! ## A061639.P8449045723297847986

`A008676(A099214(n)+A070952(2*(n+1)))`
-/

namespace A061639.P8449045723297847986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A099214 n + A070952 (2 * (n + 1))).toNat

end

end A061639.P8449045723297847986

/-!
# A061640: a(n) = !n*n!.

The programs for A061640, the canonical program `A061640.P12760700799484753330` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061640 has offset 0).

The definition of A061640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061640.P12760700799484753330

`A000142(n)*A003422(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061640

/-- `A000142(n)*A003422(n)` -/
def P12760700799484753330.Spec : Prop :=
  ∀ n, P12760700799484753330.a n = A061640 n

theorem P12760700799484753330.correct : P12760700799484753330.Spec := by
  intro n
  simp only [A061640]

end A061640

/-! ## A061640.P7684942998073618252

`(∑[n!]-n!)*n!`
-/

namespace A061640.P7684942998073618252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ)) * (Nat.factorial n : ℤ)

end

end A061640.P7684942998073618252

namespace A061640

/-- `(∑[n!]-n!)*n!` -/
def P7684942998073618252.Spec : Prop :=
  ∀ n, P7684942998073618252.a n = A061640 n

end A061640

/-! ## A061640.P11660550378124620064

`n*(a(n-1)+(n-1)!²)` with `a(0)=0`
-/

namespace A061640.P11660550378124620064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat ^ 2)

end

end A061640.P11660550378124620064

namespace A061640

/-- `n*(a(n-1)+(n-1)!²)` -/
def P11660550378124620064.Spec : Prop :=
  ∀ n, (P11660550378124620064.a n : ℤ) = A061640 n

end A061640

/-! ## A061640.P2437954057174063242

`n!*∑[A104150(n)]`
-/

namespace A061640.P2437954057174063242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061640.P2437954057174063242

namespace A061640

/-- `n!*∑[A104150(n)]` -/
def P2437954057174063242.Spec : Prop :=
  ∀ n, P2437954057174063242.a n = A061640 n

end A061640

/-!
# A061641: Pure numbers in the Collatz (3x+1) iteration. Also called pure hailstone numbers.

The programs for A061641, there is no canonical definition to state claims against.
-/

/-! ## A061641.P15370028560347655298

`A177729(n+1)-char[1-n²]`
-/

namespace A061641.P15370028560347655298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A061641.P15370028560347655298

/-! ## A061641.P9536546682830926085

`xor(A169585(n), A177729(n+1))`
-/

namespace A061641.P9536546682830926085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 n) (A177729 (n + 1))

end

end A061641.P9536546682830926085

/-! ## A061641.P17481098747935672539

`∪[A127633(n+1), A008585(n)]`
-/

namespace A061641.P17481098747935672539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061641.P17481098747935672539

/-! ## A061641.P3962148129992872540

`A184985(A177729(n+1))`
-/

namespace A061641.P3962148129992872540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A177729 (n + 1)).toNat

end

end A061641.P3962148129992872540

/-! ## A061641.P8295241534902606274

`A184985(record[A070167(n+1)])`
-/

namespace A061641.P8295241534902606274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061641.P8295241534902606274

/-! ## A061641.P80105842940652344

`record[A070167(n+1)-A036987(n)]`
-/

namespace A061641.P80105842940652344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1) - A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061641.P80105842940652344

/-! ## A061641.P8296002324262243484

`record[xor(A070167(n+1), A169585(n))]`
-/

namespace A061641.P8296002324262243484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A070167 (n + 1)) (A169585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061641.P8296002324262243484

/-! ## A061641.P16836696478340364110

`record[A070167(n+1)%A014689(n+1)]`
-/

namespace A061641.P16836696478340364110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070167 (n + 1)) (A014689 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061641.P16836696478340364110

/-! ## A061641.P11262333651321132813

`record[A070167(n+1)]-A000045(floor(2/(n+1)))`
-/

namespace A061641.P11262333651321132813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000045 ⌊2 / (n + 1 : ℚ)⌋.toNat

end

end A061641.P11262333651321132813

/-! ## A061641.P3686436626242727639

`eq[A070167(A257088(n)), A257088(n)]`
-/

namespace A061641.P3686436626242727639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061641.P3686436626242727639

/-! ## A061641.P17232298485421395774

`comp[A134191(n+1)]%A134207(n)`
-/

namespace A061641.P17232298485421395774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A134207 n)

end

end A061641.P17232298485421395774

/-!
# A061645: a(n) is the number of divisors of n-th even perfect number.

The programs for A061645, there is no canonical definition to state claims against.
-/

/-! ## A061645.P3463550552459459803

`2*A000043(n+1)`
-/

namespace A061645.P3463550552459459803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000043 (n + 1)

end

end A061645.P3463550552459459803

/-! ## A061645.P6229230747496151307

`A133033(n+1)+1`
-/

namespace A061645.P6229230747496151307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133033 (n + 1) + 1

end

end A061645.P6229230747496151307

/-! ## A061645.P3850102817273604870

`2*(A090748(n+1)+1)`
-/

namespace A061645.P3850102817273604870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090748 (n + 1) + 1)

end

end A061645.P3850102817273604870

/-! ## A061645.P607729828851093141

`2*(A050475(n+1)-1)`
-/

namespace A061645.P607729828851093141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A050475 (n + 1) - 1)

end

end A061645.P607729828851093141

/-! ## A061645.P15252764080011622052

`2*(A153798(n+1)+2)`
-/

namespace A061645.P15252764080011622052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153798 (n + 1) + 2)

end

end A061645.P15252764080011622052

/-!
# A061646: a(n) = 2*a(n-1) + 2*a(n-2) - a(n-3) with a(-1) = 1, a(0) = 1, a(1) = 1.

The programs for A061646, there is no canonical definition to state claims against.
-/

/-! ## A061646.P1476026709473947997

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061646.P1476026709473947997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A061646.P1476026709473947997

/-! ## A061646.P658794853827368809

`or(1, floor(ϕ²*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A061646.P658794853827368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lor 1 ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A061646.P658794853827368809

/-! ## A061646.P6820029887469419429

`or(1, floor(ϕ*ϕ*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A061646.P6820029887469419429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lor 1 ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A061646.P6820029887469419429

/-! ## A061646.P13374305670896025709

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A061646.P13374305670896025709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A061646.P13374305670896025709

/-! ## A061646.P11372134400706957509

`A295671(2*n)`
-/

namespace A061646.P11372134400706957509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * n)

end

end A061646.P11372134400706957509

/-! ## A061646.P1218035831796490756

`A126116(abs(2*(1-n)))`
-/

namespace A061646.P1218035831796490756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 |2 * (1 - (n : ℤ))|.toNat

end

end A061646.P1218035831796490756

/-! ## A061646.P2015547069686583292

`A079472(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A061646.P2015547069686583292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079472 (n - 1) + a (n - 1)

end

end A061646.P2015547069686583292

/-! ## A061646.P13052740813748856171

`2*A212804(n)²-A033999(n)`
-/

namespace A061646.P13052740813748856171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 n ^ 2 - A033999 n

end

end A061646.P13052740813748856171

/-! ## A061646.P11469374558517704809

`A295675(2*n)+A295675(2*n)-A295676(2*n)`
-/

namespace A061646.P11469374558517704809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 (2 * n) + (A295675 (2 * n) - A295676 (2 * n))

end

end A061646.P11469374558517704809

/-! ## A061646.P17445311996296470298

`A295675(2*n+1)+A295672(2*n)-A295672(2*n+1)`
-/

namespace A061646.P17445311996296470298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 (2 * n + 1) + (A295672 (2 * n) - A295672 (2 * n + 1))

end

end A061646.P17445311996296470298

/-! ## A061646.P1985753407687506456

`A052995(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A061646.P1985753407687506456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052995 (n - 1) - a (n - 1)

end

end A061646.P1985753407687506456

/-! ## A061646.P15971080534785514139

`A055819(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A061646.P15971080534785514139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A055819 (n - 1) - a (n - 1)

end

end A061646.P15971080534785514139

/-! ## A061646.P17170975567956805182

`A192921(n)-A007598(n)`
-/

namespace A061646.P17170975567956805182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n - A007598 n

end

end A061646.P17170975567956805182

/-! ## A061646.P8061735047842416957

`A245306(n)-A107387(n)`
-/

namespace A061646.P8061735047842416957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - A107387 n

end

end A061646.P8061735047842416957

/-! ## A061646.P4814553998301684376

`A192921(n)-A000045(n)²`
-/

namespace A061646.P4814553998301684376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n - A000045 n ^ 2

end

end A061646.P4814553998301684376

/-! ## A061646.P13629106378791902391

`A226205(n+1)-A128535(n)`
-/

namespace A061646.P13629106378791902391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) - A128535 n

end

end A061646.P13629106378791902391

/-! ## A061646.P14655903600634120722

`A152163(2*n)+A001654(n)`
-/

namespace A061646.P14655903600634120722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (2 * n) + A001654 n

end

end A061646.P14655903600634120722

/-! ## A061646.P16967188843175023976

`A118658(n)²/2-A033999(n)`
-/

namespace A061646.P16967188843175023976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n ^ 2 : ℚ) / 2 - (A033999 n : ℚ)

end

end A061646.P16967188843175023976

/-!
# A061647: Beginning at the well for the topograph of a positive definite quadratic form with values 1, 1, 1 at a superbase (i.e., 1, 1 and 1 are the vonorms of the superbase), these numbers indicate the labels of the edges of the topograph on a path of greatest ascent.

The programs for A061647, the canonical program `A061647.P711720868545875222` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061647 has offset 1).

The definition of A061647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061647.P711720868545875222

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061647

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P711720868545875222.Spec : Prop :=
  ∀ n, P711720868545875222.a n = A061647 (n + 1)

theorem P711720868545875222.correct : P711720868545875222.Spec := by
  intro n
  simp only [A061647, Nat.add_sub_cancel]

end A061647

/-! ## A061647.P11716077421654560266

`round(4/5*ϕ^(2*n+1))`
-/

namespace A061647.P11716077421654560266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 : ℚ) / 5 : ℝ) * Real.goldenRatio ^ (2 * n + 1))

end

end A061647.P11716077421654560266

namespace A061647

/-- `round(4/5*ϕ^(2*n+1))` -/
def P11716077421654560266.Spec : Prop :=
  ∀ n, P11716077421654560266.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P16809434901242539676

`Δ[A038990(n)]`
-/

namespace A061647.P16809434901242539676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061647.P16809434901242539676

namespace A061647

/-- `Δ[A038990(n)]` -/
def P16809434901242539676.Spec : Prop :=
  ∀ n, P16809434901242539676.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P13966098194793962476

`2*A110035(n)-1`
-/

namespace A061647.P13966098194793962476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110035 n - 1

end

end A061647.P13966098194793962476

namespace A061647

/-- `2*A110035(n)-1` -/
def P13966098194793962476.Spec : Prop :=
  ∀ n, P13966098194793962476.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P2848296430917873236

`1-2*A110034(n+1)`
-/

namespace A061647.P2848296430917873236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A110034 (n + 1)

end

end A061647.P2848296430917873236

namespace A061647

/-- `1-2*A110034(n+1)` -/
def P2848296430917873236.Spec : Prop :=
  ∀ n, P2848296430917873236.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P2788245146878624232

`Δ[floor(4*A000032(2*n)/5)]`
-/

namespace A061647.P2788245146878624232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A000032 (2 * n) : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061647.P2788245146878624232

namespace A061647

/-- `Δ[floor(4*A000032(2*n)/5)]` -/
def P2788245146878624232.Spec : Prop :=
  ∀ n, P2788245146878624232.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P793151845903952965

`A014742(n)+A001654(n)`
-/

namespace A061647.P793151845903952965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n + A001654 n

end

end A061647.P793151845903952965

namespace A061647

/-- `A014742(n)+A001654(n)` -/
def P793151845903952965.Spec : Prop :=
  ∀ n, P793151845903952965.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P7540142130489914157

`A192914(n)+A081714(n)`
-/

namespace A061647.P7540142130489914157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n + A081714 n

end

end A061647.P7540142130489914157

namespace A061647

/-- `A192914(n)+A081714(n)` -/
def P7540142130489914157.Spec : Prop :=
  ∀ n, P7540142130489914157.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P16148682139287119240

`A192879(n)+A122367(n)`
-/

namespace A061647.P16148682139287119240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192879 n + A122367 n

end

end A061647.P16148682139287119240

namespace A061647

/-- `A192879(n)+A122367(n)` -/
def P16148682139287119240.Spec : Prop :=
  ∀ n, P16148682139287119240.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P13495593945698902300

`A002878(n)-A001654(n)`
-/

namespace A061647.P13495593945698902300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - A001654 n

end

end A061647.P13495593945698902300

namespace A061647

/-- `A002878(n)-A001654(n)` -/
def P13495593945698902300.Spec : Prop :=
  ∀ n, P13495593945698902300.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P3049992535889316288

`A048575(n)-A099016(n)`
-/

namespace A061647.P3049992535889316288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A099016 n

end

end A061647.P3049992535889316288

namespace A061647

/-- `A048575(n)-A099016(n)` -/
def P3049992535889316288.Spec : Prop :=
  ∀ n, P3049992535889316288.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P6954231031625777985

`A069921(n)-A128534(n)`
-/

namespace A061647.P6954231031625777985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069921 n - A128534 n

end

end A061647.P6954231031625777985

namespace A061647

/-- `A069921(n)-A128534(n)` -/
def P6954231031625777985.Spec : Prop :=
  ∀ n, P6954231031625777985.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P622410003254980561

`A097136(n)-A107387(n)`
-/

namespace A061647.P622410003254980561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n - A107387 n

end

end A061647.P622410003254980561

namespace A061647

/-- `A097136(n)-A107387(n)` -/
def P622410003254980561.Spec : Prop :=
  ∀ n, P622410003254980561.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P6899763770290193834

`A102714(n)-A122367(n)`
-/

namespace A061647.P6899763770290193834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102714 n - A122367 n

end

end A061647.P6899763770290193834

namespace A061647

/-- `A102714(n)-A122367(n)` -/
def P6899763770290193834.Spec : Prop :=
  ∀ n, P6899763770290193834.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P8330893869611240584

`A001654(n)+Δ[A099016(n)]`
-/

namespace A061647.P8330893869611240584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A061647.P8330893869611240584

namespace A061647

/-- `A001654(n)+Δ[A099016(n)]` -/
def P8330893869611240584.Spec : Prop :=
  ∀ n, P8330893869611240584.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P11788227100411634065

`A001906(n)+A001654(n+1)`
-/

namespace A061647.P11788227100411634065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + A001654 (n + 1)

end

end A061647.P11788227100411634065

namespace A061647

/-- `A001906(n)+A001654(n+1)` -/
def P11788227100411634065.Spec : Prop :=
  ∀ n, P11788227100411634065.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P11983928714550154191

`A236428(n)+A079472(n+1)`
-/

namespace A061647.P11983928714550154191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A079472 (n + 1)

end

end A061647.P11983928714550154191

namespace A061647

/-- `A236428(n)+A079472(n+1)` -/
def P11983928714550154191.Spec : Prop :=
  ∀ n, P11983928714550154191.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P7940151910073382418

`A215602(n)+A121646(n+1)`
-/

namespace A061647.P7940151910073382418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + A121646 (n + 1)

end

end A061647.P7940151910073382418

namespace A061647

/-- `A215602(n)+A121646(n+1)` -/
def P7940151910073382418.Spec : Prop :=
  ∀ n, P7940151910073382418.a n = A061647 (n + 1)

end A061647

/-! ## A061647.P5190372916962731400

`A226205(n+1)+A120718(n)`
-/

namespace A061647.P5190372916962731400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) + A120718 n

end

end A061647.P5190372916962731400

namespace A061647

/-- `A226205(n+1)+A120718(n)` -/
def P5190372916962731400.Spec : Prop :=
  ∀ n, P5190372916962731400.a n = A061647 (n + 1)

end A061647

/-!
# A061648: Area of all nondecreasing Dyck paths of length 2n.

The programs for A061648, there is no canonical definition to state claims against.
-/

/-! ## A061648.P15008075905466742065

`∑[A140114(8*a(n-1)+n+1)]` with `a(0)=1`
-/

namespace A061648.P15008075905466742065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A140114 (8 * f1 (n - 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061648.P15008075905466742065

/-!
# A061650: a(n) = n*20^(n-1).

The programs for A061650, there is no canonical definition to state claims against.
-/

/-! ## A061650.P2202765968851866652

`(n+1)*20^n`
-/

namespace A061650.P2202765968851866652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 20 ^ n

end

end A061650.P2202765968851866652

/-! ## A061650.P7507031503318569921

`6*5*(2/n+2)*a(n-1)/3` with `a(0)=1`
-/

namespace A061650.P7507031503318569921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * (5 * ((2 / (n : ℚ) + 2) * a (n - 1))) / 3

end

end A061650.P7507031503318569921

/-! ## A061650.P211648658775191963

`record[(n+2)/2*A099840(n)]`
-/

namespace A061650.P211648658775191963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A099840 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061650.P211648658775191963

/-! ## A061650.P12569968386023107813

`xor(22, xor(22, (n+1)*A009964(n)))`
-/

namespace A061650.P12569968386023107813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 22 (Int.xor 22 ((n + 1 : ℤ) * A009964 n))

end

end A061650.P12569968386023107813

/-! ## A061650.P4030681563006287980

`A009964(n)+n*A009964(n)`
-/

namespace A061650.P4030681563006287980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 n + (n : ℤ) * A009964 n

end

end A061650.P4030681563006287980

/-! ## A061650.P8947549295841095747

`record[A001057(n+1)*A017964(n)]`
-/

namespace A061650.P8947549295841095747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) * A017964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061650.P8947549295841095747

/-! ## A061650.P16535831995670342350

`record[(1-A001057(n))*A017964(n)]`
-/

namespace A061650.P16535831995670342350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001057 n) * A017964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061650.P16535831995670342350

/-! ## A061650.P8671354548888032313

`A017964(2*n)-A001057(2*n)*A017964(2*n)`
-/

namespace A061650.P8671354548888032313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 (2 * n) - A001057 (2 * n) * A017964 (2 * n)

end

end A061650.P8671354548888032313

/-! ## A061650.P15315103384903607106

`A053539(n+1)*A053541(n+1)/A002697(n+1)`
-/

namespace A061650.P15315103384903607106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053539 (n + 1) * A053541 (n + 1) : ℚ) / (A002697 (n + 1) : ℚ)

end

end A061650.P15315103384903607106

/-!
# A061651: Numbers with all even digits in which each nonzero digit divides the number formed by the rest, i.e., the number obtained by just removing this digit. 0 is divisible by every number.

The programs for A061651, there is no canonical definition to state claims against.
-/

/-! ## A061651.P25240441501210948

`∩[A014263(n+1), A061362(n+1)]`
-/

namespace A061651.P25240441501210948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061651.P25240441501210948

/-! ## A061651.P14687271022067355914

`record[A001613(A061362(n+1))]`
-/

namespace A061651.P14687271022067355914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A061362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061651.P14687271022067355914

/-!
# A061653: Relative class number h- of cyclotomic field Q(zeta_n).

The programs for A061653, there is no canonical definition to state claims against.
-/

/-! ## A061653.P8717902300755499564

`A081604(C(A004709(n+1), A191161(n+1)))`
-/

namespace A061653.P8717902300755499564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.choose (A004709 (n + 1)).toNat (A191161 (n + 1)).toNat)

end

end A061653.P8717902300755499564

/-! ## A061653.P5779163823309243494

`A000927(A106216(3*n+1)+A056239(n+1))`
-/

namespace A061653.P5779163823309243494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000927 (A106216 (3 * n + 1) + A056239 (n + 1)).toNat

end

end A061653.P5779163823309243494

/-! ## A061653.P2648809320883895262

`A193073(A255551(2*(n+2))^A212619(3*n+2))`
-/

namespace A061653.P2648809320883895262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (SequenceMachineLib.roundAway ((A255551 (2 * (n + 2)) : ℚ) ^ (A212619 (3 * n + 2) : ℤ))).toNat

end

end A061653.P2648809320883895262

/-! ## A061653.P11944698034378804420

`gcd(A331024(A107876(n)), A345197(3*n))`
-/

namespace A061653.P11944698034378804420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331024 (A107876 n).toNat) (A345197 (3 * n))

end

end A061653.P11944698034378804420

/-! ## A061653.P17588317845727569485

`A137865(A147312(n+1))`
-/

namespace A061653.P17588317845727569485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137865 (A147312 (n + 1)).toNat

end

end A061653.P17588317845727569485

/-!
# A061654: a(n) = (3*16^n + 2)/5.

The programs for A061654, the canonical program `A061654.P6442752219204577836` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061654 has offset 0).

The definition of A061654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061654.P6442752219204577836

`17*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061654

/-- `17*a(n-1)-16*a(n-2)` -/
def P6442752219204577836.Spec : Prop :=
  ∀ n, P6442752219204577836.a n = A061654 n

theorem P6442752219204577836.correct : P6442752219204577836.Spec := by
  intro n
  simp only [A061654]

end A061654

/-! ## A061654.P8334295357068639806

`3*A182512(n)+1`
-/

namespace A061654.P8334295357068639806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182512 n + 1

end

end A061654.P8334295357068639806

namespace A061654

/-- `3*A182512(n)+1` -/
def P8334295357068639806.Spec : Prop :=
  ∀ n, P8334295357068639806.a n = A061654 n

end A061654

/-! ## A061654.P10828885375968839155

`(3*16^n+2)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061654.P10828885375968839155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 16 ^ n + 2 : ℚ) / 5

end

end A061654.P10828885375968839155

namespace A061654

/-- `(3*16^n+2)/5` -/
def P10828885375968839155.Spec : Prop :=
  ∀ n, P10828885375968839155.a n = (A061654 n : ℚ)

end A061654

/-! ## A061654.P4316435450402433461

`16*a(n-1)-6` with `a(0)=1`
-/

namespace A061654.P4316435450402433461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) - 6

end

end A061654.P4316435450402433461

namespace A061654

/-- `16*a(n-1)-6` -/
def P4316435450402433461.Spec : Prop :=
  ∀ n, P4316435450402433461.a n = A061654 n

end A061654

/-! ## A061654.P10444310730730823188

`a(n-1)/(1/4)²-6` with `a(0)=1`
-/

namespace A061654.P10444310730730823188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - 6

end

end A061654.P10444310730730823188

namespace A061654

/-- `a(n-1)/(1/4)²-6` -/
def P10444310730730823188.Spec : Prop :=
  ∀ n, P10444310730730823188.a n = (A061654 n : ℚ)

end A061654

/-! ## A061654.P17845763466015704534

`∑[record[round(3*(-2)^(n-2))]²]`
-/

namespace A061654.P17845763466015704534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061654.P17845763466015704534

namespace A061654

/-- `∑[record[round(3*(-2)^(n-2))]²]` -/
def P17845763466015704534.Spec : Prop :=
  ∀ n, P17845763466015704534.a n = A061654 n

end A061654

/-! ## A061654.P13612958384873391326

`a(n-1)+Δ[4^(n-1)]²` with `a(0)=1`
-/

namespace A061654.P13612958384873391326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A061654.P13612958384873391326

namespace A061654

/-- `a(n-1)+Δ[4^(n-1)]²` -/
def P13612958384873391326.Spec : Prop :=
  ∀ n, P13612958384873391326.a n = (A061654 n : ℚ)

end A061654

/-! ## A061654.P17336374699912759550

`∑[A067415(n)]`
-/

namespace A061654.P17336374699912759550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061654.P17336374699912759550

namespace A061654

/-- `∑[A067415(n)]` -/
def P17336374699912759550.Spec : Prop :=
  ∀ n, P17336374699912759550.a n = A061654 n

end A061654

/-! ## A061654.P10436861649482591863

`A122117(2*n)`
-/

namespace A061654.P10436861649482591863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 (2 * n)

end

end A061654.P10436861649482591863

namespace A061654

/-- `A122117(2*n)` -/
def P10436861649482591863.Spec : Prop :=
  ∀ n, P10436861649482591863.a n = A061654 n

end A061654

/-!
# A061656: Numbers k > 1 such that, in base 2, k and k^2 contain the same digits in the same proportion.

The programs for A061656, there is no canonical definition to state claims against.
-/

/-! ## A061656.P14007111692576203031

`A002154(A176448(n)/A034888(n))`
-/

namespace A061656.P14007111692576203031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002154 (SequenceMachineLib.roundAway ((A176448 n : ℚ) / (A034888 n : ℚ))).toNat

end

end A061656.P14007111692576203031

/-!
# A061667: a(n) = Fibonacci(2*n+1) - 2^(n-1).

The programs for A061667, the canonical program `A061667.P6698465324237973844` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061667 has offset 1).

The definition of A061667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061667.P6698465324237973844

`2*A001906(n+1)-A001906(n)-A000079(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061667

/-- `2*A001906(n+1)-A001906(n)-A000079(n)` -/
def P6698465324237973844.Spec : Prop :=
  ∀ n, P6698465324237973844.a n = A061667 (n + 1)

theorem P6698465324237973844.correct : P6698465324237973844.Spec := by
  intro n
  simp only [A061667, Nat.add_sub_cancel]

end A061667

/-! ## A061667.P2136544800798949973

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A061667.P2136544800798949973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 2 * a (n - 3)

end

end A061667.P2136544800798949973

namespace A061667

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P2136544800798949973.Spec : Prop :=
  ∀ n, P2136544800798949973.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P17933005191928659470

`Δ[A105693(n)]`
-/

namespace A061667.P17933005191928659470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061667.P17933005191928659470

namespace A061667

/-- `Δ[A105693(n)]` -/
def P17933005191928659470.Spec : Prop :=
  ∀ n, P17933005191928659470.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P15901249007379852618

`A079284(2*n)`
-/

namespace A061667.P15901249007379852618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 (2 * n)

end

end A061667.P15901249007379852618

namespace A061667

/-- `A079284(2*n)` -/
def P15901249007379852618.Spec : Prop :=
  ∀ n, P15901249007379852618.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P14971784668633596436

`A079289(Δ[n²])`
-/

namespace A061667.P14971784668633596436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061667.P14971784668633596436

namespace A061667

/-- `A079289(Δ[n²])` -/
def P14971784668633596436.Spec : Prop :=
  ∀ n, P14971784668633596436.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P2806820680768801464

`∑[∑[A341104(n)]]`
-/

namespace A061667.P2806820680768801464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341104 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061667.P2806820680768801464

namespace A061667

/-- `∑[∑[A341104(n)]]` -/
def P2806820680768801464.Spec : Prop :=
  ∀ n, P2806820680768801464.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P4583510197781448572

`∑[A079289(2*n)]`
-/

namespace A061667.P4583510197781448572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061667.P4583510197781448572

namespace A061667

/-- `∑[A079289(2*n)]` -/
def P4583510197781448572.Spec : Prop :=
  ∀ n, P4583510197781448572.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P338740525852738486

`Δ[A079285(2*n)]`
-/

namespace A061667.P338740525852738486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061667.P338740525852738486

namespace A061667

/-- `Δ[A079285(2*n)]` -/
def P338740525852738486.Spec : Prop :=
  ∀ n, P338740525852738486.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P14448232363960533051

`Δ[A005672(Δ[n²])]`
-/

namespace A061667.P14448232363960533051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061667.P14448232363960533051

namespace A061667

/-- `Δ[A005672(Δ[n²])]` -/
def P14448232363960533051.Spec : Prop :=
  ∀ n, P14448232363960533051.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P12268147928110145160

`A048575(n)-2^n`
-/

namespace A061667.P12268147928110145160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - (2 ^ n : ℤ)

end

end A061667.P12268147928110145160

namespace A061667

/-- `A048575(n)-2^n` -/
def P12268147928110145160.Spec : Prop :=
  ∀ n, P12268147928110145160.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P8663263743717329409

`A122367(n+1)-2^n`
-/

namespace A061667.P8663263743717329409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (n + 1) - (2 ^ n : ℤ)

end

end A061667.P8663263743717329409

namespace A061667

/-- `A122367(n+1)-2^n` -/
def P8663263743717329409.Spec : Prop :=
  ∀ n, P8663263743717329409.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P10651110900552479690

`A001519(n+2)-2^n`
-/

namespace A061667.P10651110900552479690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - (2 ^ n : ℤ)

end

end A061667.P10651110900552479690

namespace A061667

/-- `A001519(n+2)-2^n` -/
def P10651110900552479690.Spec : Prop :=
  ∀ n, P10651110900552479690.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P16294714016013883876

`A020695(2*n)-2^n`
-/

namespace A061667.P16294714016013883876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n) - (2 ^ n : ℤ)

end

end A061667.P16294714016013883876

namespace A061667

/-- `A020695(2*n)-2^n` -/
def P16294714016013883876.Spec : Prop :=
  ∀ n, P16294714016013883876.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P16467887501074621184

`A000045(2*n+3)-2^n`
-/

namespace A061667.P16467887501074621184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 3) - (2 ^ n : ℤ)

end

end A061667.P16467887501074621184

namespace A061667

/-- `A000045(2*n+3)-2^n` -/
def P16467887501074621184.Spec : Prop :=
  ∀ n, P16467887501074621184.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P1758780989590349335

`A318941(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A061667.P1758780989590349335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318941 (n + 2) - a (n - 1)

end

end A061667.P1758780989590349335

namespace A061667

/-- `A318941(n+2)-a(n-1)` -/
def P1758780989590349335.Spec : Prop :=
  ∀ n, P1758780989590349335.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P6773633496107929960

`A001906(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A061667.P6773633496107929960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001906 n + 2 * a (n - 1)

end

end A061667.P6773633496107929960

namespace A061667

/-- `A001906(n)+2*a(n-1)` -/
def P6773633496107929960.Spec : Prop :=
  ∀ n, P6773633496107929960.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P12462054085767175739

`record[A000045(xor(1, n+2))]-2^n`
-/

namespace A061667.P12462054085767175739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A061667.P12462054085767175739

namespace A061667

/-- `record[A000045(xor(1, n+2))]-2^n` -/
def P12462054085767175739.Spec : Prop :=
  ∀ n, P12462054085767175739.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P2613093783603431889

`∑[∑[A000045(Δ[n²])]]+1-2^n`
-/

namespace A061667.P2613093783603431889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (2 ^ n : ℤ))

end

end A061667.P2613093783603431889

namespace A061667

/-- `∑[∑[A000045(Δ[n²])]]+1-2^n` -/
def P2613093783603431889.Spec : Prop :=
  ∀ n, P2613093783603431889.a n = A061667 (n + 1)

end A061667

/-! ## A061667.P7801752196160920879

`floor(A000045(2*n)+2*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A061667.P7801752196160920879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (2 * n) + 2 * a (n - 1)

end

end A061667.P7801752196160920879

namespace A061667

/-- `floor(A000045(2*n)+2*a(n-1))` -/
def P7801752196160920879.Spec : Prop :=
  ∀ n, P7801752196160920879.a n = A061667 (n + 1)

end A061667

/-!
# A061668: Numbers k such that x-4, x-2, x+2, x+4 are primes, where x = 30*k - 15.

The programs for A061668, there is no canonical definition to state claims against.
-/

/-! ## A061668.P13101150360427782778

`A014561(n+1)+1`
-/

namespace A061668.P13101150360427782778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) + 1

end

end A061668.P13101150360427782778

/-! ## A061668.P16731642990984591357

`ceil(A112540(n+1)/2)`
-/

namespace A061668.P16731642990984591357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112540 (n + 1) : ℚ) / 2⌉

end

end A061668.P16731642990984591357

/-! ## A061668.P5022388327394519337

`ceil(A007811(n+1)/3)`
-/

namespace A061668.P5022388327394519337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007811 (n + 1) : ℚ) / 3⌉

end

end A061668.P5022388327394519337

/-! ## A061668.P6748248560721163783

`∑[A159910(n+1)]+1`
-/

namespace A061668.P6748248560721163783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061668.P6748248560721163783

/-! ## A061668.P2075982959007923013

`(A064975(n+1)+1)/3`
-/

namespace A061668.P2075982959007923013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064975 (n + 1) + 1 : ℚ) / 3

end

end A061668.P2075982959007923013

/-! ## A061668.P9730406163668898040

`(A178082(n+1)/3+1)/2`
-/

namespace A061668.P9730406163668898040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A178082 (n + 1) : ℚ) / 3 + 1) / 2

end

end A061668.P9730406163668898040

/-! ## A061668.P7982481903285705637

`A064975(n+1)-A112540(n+1)`
-/

namespace A061668.P7982481903285705637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1) - A112540 (n + 1)

end

end A061668.P7982481903285705637

/-! ## A061668.P2240608099301648023

`A007811(n+1)+1-A112540(n+1)`
-/

namespace A061668.P2240608099301648023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) + (1 - A112540 (n + 1))

end

end A061668.P2240608099301648023

/-! ## A061668.P16020556879817559631

`(A115095(n+2)+1)/3`
-/

namespace A061668.P16020556879817559631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115095 (n + 2) + 1 : ℚ) / 3

end

end A061668.P16020556879817559631

/-! ## A061668.P3415097202962884564

`A115095(n+2)-A112540(n+1)`
-/

namespace A061668.P3415097202962884564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 2) - A112540 (n + 1)

end

end A061668.P3415097202962884564

/-! ## A061668.P6793790007713665120

`A025459(A048929(n+1))+floor(A007811(n+1)/3)`
-/

namespace A061668.P6793790007713665120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A048929 (n + 1)).toNat + ⌊(A007811 (n + 1) : ℚ) / 3⌋

end

end A061668.P6793790007713665120

/-! ## A061668.P6315900351449061870

`∩[A089160(n+1), A089161(n+1)]+1`
-/

namespace A061668.P6315900351449061870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A061668.P6315900351449061870

/-! ## A061668.P18219794762835339790

`A014682(A112540(n+1)+1)`
-/

namespace A061668.P18219794762835339790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112540 (n + 1) + 1).toNat

end

end A061668.P18219794762835339790

/-!
# A061669: a(n) = n*(mu(n) + 1), where mu(n) is the Moebius function A008683.

The programs for A061669, the canonical program `A061669.P17942856662074478601` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061669 has offset 1).

The definition of A061669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061669.P17942856662074478601

`(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)+n+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061669

/-- `(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)+n+1` -/
def P17942856662074478601.Spec : Prop :=
  ∀ n, P17942856662074478601.a n = A061669 (n + 1)

theorem P17942856662074478601.correct : P17942856662074478601.Spec := by
  intro n
  simp only [A061669, Nat.add_sub_cancel]

end A061669

/-! ## A061669.P16073763981767298218

`n+1+A055615(n+1)`
-/

namespace A061669.P16073763981767298218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A055615 (n + 1)

end

end A061669.P16073763981767298218

namespace A061669

/-- `n+1+A055615(n+1)` -/
def P16073763981767298218.Spec : Prop :=
  ∀ n, P16073763981767298218.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P17266445584278502499

`A080848(n+1)-(n+1)`
-/

namespace A061669.P17266445584278502499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080848 (n + 1) - (n + 1 : ℤ)

end

end A061669.P17266445584278502499

namespace A061669

/-- `A080848(n+1)-(n+1)` -/
def P17266445584278502499.Spec : Prop :=
  ∀ n, P17266445584278502499.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P6271070930365496560

`(n+1)*A007423(n+1)`
-/

namespace A061669.P6271070930365496560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007423 (n + 1)

end

end A061669.P6271070930365496560

namespace A061669

/-- `(n+1)*A007423(n+1)` -/
def P6271070930365496560.Spec : Prop :=
  ∀ n, P6271070930365496560.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P5804744912292451845

`abs((n+1)*A076544(n+1))`
-/

namespace A061669.P5804744912292451845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A076544 (n + 1)|

end

end A061669.P5804744912292451845

namespace A061669

/-- `abs((n+1)*A076544(n+1))` -/
def P5804744912292451845.Spec : Prop :=
  ∀ n, P5804744912292451845.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P9904449998917605232

`(n+1)*(A008683(n+1)+1)`
-/

namespace A061669.P9904449998917605232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (n + 1) + 1)

end

end A061669.P9904449998917605232

namespace A061669

/-- `(n+1)*(A008683(n+1)+1)` -/
def P9904449998917605232.Spec : Prop :=
  ∀ n, P9904449998917605232.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P5717657238868781188

`(n+1)*(A080847(n+1)-1)`
-/

namespace A061669.P5717657238868781188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A080847 (n + 1) - 1)

end

end A061669.P5717657238868781188

namespace A061669

/-- `(n+1)*(A080847(n+1)-1)` -/
def P5717657238868781188.Spec : Prop :=
  ∀ n, P5717657238868781188.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P8926199262703972945

`A062004(n+1)/2+n+1`
-/

namespace A061669.P8926199262703972945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A061669.P8926199262703972945

namespace A061669

/-- `A062004(n+1)/2+n+1` -/
def P8926199262703972945.Spec : Prop :=
  ∀ n, P8926199262703972945.a n = (A061669 (n + 1) : ℚ)

end A061669

/-! ## A061669.P12317531846575389832

`(n+1)*(A231821(n+1)-2)`
-/

namespace A061669.P12317531846575389832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A231821 (n + 1) - 2)

end

end A061669.P12317531846575389832

namespace A061669

/-- `(n+1)*(A231821(n+1)-2)` -/
def P12317531846575389832.Spec : Prop :=
  ∀ n, P12317531846575389832.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P892734494295106982

`(n+1)*(3-A129979(n+1))`
-/

namespace A061669.P892734494295106982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A129979 (n + 1))

end

end A061669.P892734494295106982

namespace A061669

/-- `(n+1)*(3-A129979(n+1))` -/
def P892734494295106982.Spec : Prop :=
  ∀ n, P892734494295106982.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P378247697144469454

`(n+1)*(A076369(n+1)-n)`
-/

namespace A061669.P378247697144469454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076369 (n + 1) - (n : ℤ))

end

end A061669.P378247697144469454

namespace A061669

/-- `(n+1)*(A076369(n+1)-n)` -/
def P378247697144469454.Spec : Prop :=
  ∀ n, P378247697144469454.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P8954736321692349569

`(n+1)*(A162512(n+1)%2+1)`
-/

namespace A061669.P8954736321692349569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (Int.tmod (A162512 (n + 1)) 2 + 1)

end

end A061669.P8954736321692349569

namespace A061669

/-- `(n+1)*(A162512(n+1)%2+1)` -/
def P8954736321692349569.Spec : Prop :=
  ∀ n, P8954736321692349569.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P4872043732055678363

`A334657(n+1)/(n+1)+n+1`
-/

namespace A061669.P4872043732055678363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334657 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A061669.P4872043732055678363

namespace A061669

/-- `A334657(n+1)/(n+1)+n+1` -/
def P4872043732055678363.Spec : Prop :=
  ∀ n, P4872043732055678363.a n = (A061669 (n + 1) : ℚ)

end A061669

/-! ## A061669.P6997597924362477563

`A080849(n+1)/(n+1)-(n+1)`
-/

namespace A061669.P6997597924362477563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080849 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A061669.P6997597924362477563

namespace A061669

/-- `A080849(n+1)/(n+1)-(n+1)` -/
def P6997597924362477563.Spec : Prop :=
  ∀ n, P6997597924362477563.a n = (A061669 (n + 1) : ℚ)

end A061669

/-! ## A061669.P7263959736513535912

`(n+1)*A000122(A074823(n+1))`
-/

namespace A061669.P7263959736513535912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000122 (A074823 (n + 1)).toNat

end

end A061669.P7263959736513535912

namespace A061669

/-- `(n+1)*A000122(A074823(n+1))` -/
def P7263959736513535912.Spec : Prop :=
  ∀ n, P7263959736513535912.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P1840719510750681585

`(n+1)*A036586(A293227(n+1))`
-/

namespace A061669.P1840719510750681585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036586 (A293227 (n + 1)).toNat

end

end A061669.P1840719510750681585

namespace A061669

/-- `(n+1)*A036586(A293227(n+1))` -/
def P1840719510750681585.Spec : Prop :=
  ∀ n, P1840719510750681585.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P2272962542440328146

`(n+1)*A007877(A349912(n+1))`
-/

namespace A061669.P2272962542440328146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007877 (A349912 (n + 1)).toNat

end

end A061669.P2272962542440328146

namespace A061669

/-- `(n+1)*A007877(A349912(n+1))` -/
def P2272962542440328146.Spec : Prop :=
  ∀ n, P2272962542440328146.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P18327175146488306389

`A009441(n+1)%A080848(n+1)`
-/

namespace A061669.P18327175146488306389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009441 (n + 1)) (A080848 (n + 1))

end

end A061669.P18327175146488306389

namespace A061669

/-- `A009441(n+1)%A080848(n+1)` -/
def P18327175146488306389.Spec : Prop :=
  ∀ n, P18327175146488306389.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P3728756433508341954

`A020332(n+1)%A080848(n+1)`
-/

namespace A061669.P3728756433508341954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020332 (n + 1)) (A080848 (n + 1))

end

end A061669.P3728756433508341954

namespace A061669

/-- `A020332(n+1)%A080848(n+1)` -/
def P3728756433508341954.Spec : Prop :=
  ∀ n, P3728756433508341954.a n = A061669 (n + 1)

end A061669

/-! ## A061669.P6361959479160619541

`A020338(n+1)%A080848(n+1)`
-/

namespace A061669.P6361959479160619541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020338 (n + 1)) (A080848 (n + 1))

end

end A061669.P6361959479160619541

namespace A061669

/-- `A020338(n+1)%A080848(n+1)` -/
def P6361959479160619541.Spec : Prop :=
  ∀ n, P6361959479160619541.a n = A061669 (n + 1)

end A061669

/-!
# A061670: Distance to nearest prime power p^k, k=0 and k >= 2 (A025475).

The programs for A061670, there is no canonical definition to state claims against.
-/

/-! ## A061670.P6180193234269039297

`n/round(acot(n)+n)*A301296(n+1)`
-/

namespace A061670.P6180193234269039297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) * (A301296 (n + 1) : ℚ)

end

end A061670.P6180193234269039297

/-! ## A061670.P2922235738015211201

`A301296(n+1)-A169585(xor(1, n))`
-/

namespace A061670.P2922235738015211201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301296 (n + 1) - A169585 (Nat.xor 1 n)

end

end A061670.P2922235738015211201

/-! ## A061670.P9483821167236010326

`n/A233583(n+1)*A301296(n+1)`
-/

namespace A061670.P9483821167236010326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A233583 (n + 1) : ℚ) * (A301296 (n + 1) : ℚ)

end

end A061670.P9483821167236010326

/-! ## A061670.P1746804960915651928

`lcm(A097807(a(n-2)), A301296(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A061670.P1746804960915651928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (A097807 (a (n - 2))) (A301296 (n + 1))

end

end A061670.P1746804960915651928

/-! ## A061670.P18165325953337618680

`round(n/A124195(n+3)*A301296(n+1))`
-/

namespace A061670.P18165325953337618680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A124195 (n + 3) : ℚ) * (A301296 (n + 1) : ℚ))

end

end A061670.P18165325953337618680

/-! ## A061670.P7932989883439709948

`A301296(ceil(acot(n))*A137734((1-n)²)+2)`
-/

namespace A061670.P7932989883439709948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301296 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A137734 ((1 - (n : ℤ)) ^ 2).toNat + 2).toNat

end

end A061670.P7932989883439709948

/-! ## A061670.P11860963541849136559

`A301296(n+1)-C(A301295(n+1)+3, n+2)`
-/

namespace A061670.P11860963541849136559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301296 (n + 1) - (Nat.choose (A301295 (n + 1) + 3).toNat (n + 2) : ℤ)

end

end A061670.P11860963541849136559

/-! ## A061670.P12781499950578657981

`xor(A169585(A028310(n)), A301296(n+1))`
-/

namespace A061670.P12781499950578657981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 (A028310 n).toNat) (A301296 (n + 1))

end

end A061670.P12781499950578657981

/-! ## A061670.P18248408183675169970

`xor(A169585(A124195(n+1)), A301296(n+1))`
-/

namespace A061670.P18248408183675169970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 (A124195 (n + 1)).toNat) (A301296 (n + 1))

end

end A061670.P18248408183675169970

/-! ## A061670.P17028622900948813226

`xor(A063667(A103609(n)), A301296(n+1))`
-/

namespace A061670.P17028622900948813226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063667 (A103609 n).toNat) (A301296 (n + 1))

end

end A061670.P17028622900948813226

/-!
# A061672: Smallest positive number formed by a set of digits whose product = sum of the digits.

The programs for A061672, there is no canonical definition to state claims against.
-/

/-! ## A061672.P15713870337240998681

`∩[A034710(n+1), A274125(n+1)]`
-/

namespace A061672.P15713870337240998681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061672.P15713870337240998681

/-! ## A061672.P16281591833699220981

`∩[A034710(n+1), A274124(n+1)]`
-/

namespace A061672.P16281591833699220981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061672.P16281591833699220981

/-! ## A061672.P9869795688350457757

`∩[A254621(n+1), A274124(n+1)]`
-/

namespace A061672.P9869795688350457757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061672.P9869795688350457757

/-! ## A061672.P4801380860645640460

`∩[A274124(n+1), A342048(n+1)]`
-/

namespace A061672.P4801380860645640460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061672.P4801380860645640460

/-! ## A061672.P8234722154933662547

`∩[A055933(n+1), A274124(n+1)]`
-/

namespace A061672.P8234722154933662547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061672.P8234722154933662547

/-!
# A061673: Even numbers k such that k+1 and k-1 are both composite.

The programs for A061673, the canonical program `A061673.P6703242266188128252` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061673 has offset 1).

The definition of A061673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061673.P14166912734593557488

`A269345(n+1)+1`
-/

namespace A061673.P14166912734593557488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1) + 1

end

end A061673.P14166912734593557488

namespace A061673

/-- `A269345(n+1)+1` -/
def P14166912734593557488.Spec : Prop :=
  ∀ n, P14166912734593557488.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P9195380467826905956

`A025583(n+1)-1`
-/

namespace A061673.P9195380467826905956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1) - 1

end

end A061673.P9195380467826905956

namespace A061673

/-- `A025583(n+1)-1` -/
def P9195380467826905956.Spec : Prop :=
  ∀ n, P9195380467826905956.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P3133959184446080008

`2*A104278(n+1)`
-/

namespace A061673.P3133959184446080008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104278 (n + 1)

end

end A061673.P3133959184446080008

namespace A061673

/-- `2*A104278(n+1)` -/
def P3133959184446080008.Spec : Prop :=
  ∀ n, P3133959184446080008.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P5388155433634214728

`A298366(n+1)-4`
-/

namespace A061673.P5388155433634214728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1) - 4

end

end A061673.P5388155433634214728

namespace A061673

/-- `A298366(n+1)-4` -/
def P5388155433634214728.Spec : Prop :=
  ∀ n, P5388155433634214728.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P7384064989535308181

`2*sqrt(A296304(n+2))`
-/

namespace A061673.P7384064989535308181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A296304 (n + 2) : ℝ)

end

end A061673.P7384064989535308181

namespace A061673

/-- `2*sqrt(A296304(n+2))` -/
def P7384064989535308181.Spec : Prop :=
  ∀ n, P7384064989535308181.a n = (A061673 (n + 1) : ℝ)

end A061673

/-! ## A061673.P6703242266188128252

`2*lt[3, A175851(2*n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061673

/-- `2*lt[3, A175851(2*n+1)]` -/
def P6703242266188128252.Spec : Prop :=
  ∀ n, (P6703242266188128252.a n : ℤ) = A061673 (n + 1)

theorem P6703242266188128252.correct : P6703242266188128252.Spec := by
  intro n
  simp only [A061673, Nat.add_sub_cancel]

end A061673

/-! ## A061673.P15768906593375731963

`xor(1, A025583(A000027(n+1)))`
-/

namespace A061673.P15768906593375731963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025583 (A000027 (n + 1)).toNat)

end

end A061673.P15768906593375731963

namespace A061673

/-- `xor(1, A025583(A000027(n+1)))` -/
def P15768906593375731963.Spec : Prop :=
  ∀ n, P15768906593375731963.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P13419641007937949930

`A104278(n+1)+A296304(n+2)/A104278(n+1)`
-/

namespace A061673.P13419641007937949930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104278 (n + 1) : ℚ) + (A296304 (n + 2) : ℚ) / (A104278 (n + 1) : ℚ)

end

end A061673.P13419641007937949930

namespace A061673

/-- `A104278(n+1)+A296304(n+2)/A104278(n+1)` -/
def P13419641007937949930.Spec : Prop :=
  ∀ n, P13419641007937949930.a n = (A061673 (n + 1) : ℚ)

end A061673

/-! ## A061673.P10172603722471694846

`A109934(n+3)-1`
-/

namespace A061673.P10172603722471694846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 3) - 1

end

end A061673.P10172603722471694846

namespace A061673

/-- `A109934(n+3)-1` -/
def P10172603722471694846.Spec : Prop :=
  ∀ n, P10172603722471694846.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P912747639308105119

`A164376(n+3)-1`
-/

namespace A061673.P912747639308105119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 3) - 1

end

end A061673.P912747639308105119

namespace A061673

/-- `A164376(n+3)-1` -/
def P912747639308105119.Spec : Prop :=
  ∀ n, P912747639308105119.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P11561097248499868058

`filter[A186193(n+1), A323162(#)]`
-/

namespace A061673.P11561097248499868058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A061673.P11561097248499868058

namespace A061673

/-- `filter[A186193(n+1), A323162(#)]` -/
def P11561097248499868058.Spec : Prop :=
  ∀ n, P11561097248499868058.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P8935246986803773537

`filter[A396571(n+1), A292438(#)]`
-/

namespace A061673.P8935246986803773537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A061673.P8935246986803773537

namespace A061673

/-- `filter[A396571(n+1), A292438(#)]` -/
def P8935246986803773537.Spec : Prop :=
  ∀ n, P8935246986803773537.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P14695687845471489391

`filter[A396571(n+1), A323162(#)]`
-/

namespace A061673.P14695687845471489391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A061673.P14695687845471489391

namespace A061673

/-- `filter[A396571(n+1), A323162(#)]` -/
def P14695687845471489391.Spec : Prop :=
  ∀ n, P14695687845471489391.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P205216608079007298

`A309355(A196276(n+1))`
-/

namespace A061673.P205216608079007298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (A196276 (n + 1)).toNat

end

end A061673.P205216608079007298

namespace A061673

/-- `A309355(A196276(n+1))` -/
def P205216608079007298.Spec : Prop :=
  ∀ n, P205216608079007298.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P3720022020320108617

`filter[A309355(n+1), A323162(#)]`
-/

namespace A061673.P3720022020320108617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A061673.P3720022020320108617

namespace A061673

/-- `filter[A309355(n+1), A323162(#)]` -/
def P3720022020320108617.Spec : Prop :=
  ∀ n, P3720022020320108617.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P12782712324295891394

`∩[A072492(n+1), A020742(n)]-1`
-/

namespace A061673.P12782712324295891394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A061673.P12782712324295891394

namespace A061673

/-- `∩[A072492(n+1), A020742(n)]-1` -/
def P12782712324295891394.Spec : Prop :=
  ∀ n, P12782712324295891394.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P16621959106848120735

`2*(lt[3, A049653(n+2)]+1)`
-/

namespace A061673.P16621959106848120735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A061673.P16621959106848120735

namespace A061673

/-- `2*(lt[3, A049653(n+2)]+1)` -/
def P16621959106848120735.Spec : Prop :=
  ∀ n, (P16621959106848120735.a n : ℤ) = A061673 (n + 1)

end A061673

/-! ## A061673.P18086450560195355692

`A004277(A104278(n+1))`
-/

namespace A061673.P18086450560195355692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A104278 (n + 1)).toNat

end

end A061673.P18086450560195355692

namespace A061673

/-- `A004277(A104278(n+1))` -/
def P18086450560195355692.Spec : Prop :=
  ∀ n, P18086450560195355692.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P15433076241640717137

`A103517(A104278(n+1)-1)`
-/

namespace A061673.P15433076241640717137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A104278 (n + 1) - 1).toNat

end

end A061673.P15433076241640717137

namespace A061673

/-- `A103517(A104278(n+1)-1)` -/
def P15433076241640717137.Spec : Prop :=
  ∀ n, P15433076241640717137.a n = A061673 (n + 1)

end A061673

/-! ## A061673.P9228042563855487379

`∩[A072492(n+1), A062545(n)]-1`
-/

namespace A061673.P9228042563855487379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A061673.P9228042563855487379

namespace A061673

/-- `∩[A072492(n+1), A062545(n)]-1` -/
def P9228042563855487379.Spec : Prop :=
  ∀ n, P9228042563855487379.a n = A061673 (n + 1)

end A061673

/-!
# A061674: Smallest k such that k*n is a palindrome or becomes a palindrome when 0's are added on the left.

The programs for A061674, there is no canonical definition to state claims against.
-/

/-! ## A061674.P16291436417748202824

`A062279(A028310(n))/A028310(n)`
-/

namespace A061674.P16291436417748202824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062279 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A061674.P16291436417748202824

/-! ## A061674.P8411648361819393436

`A062279(A233583(n+1))/A233583(n+1)`
-/

namespace A061674.P8411648361819393436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062279 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A061674.P8411648361819393436

/-! ## A061674.P13138686866529868820

`A062279(A008706(2*n))/A008706(2*n)`
-/

namespace A061674.P13138686866529868820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062279 (A008706 (2 * n)).toNat : ℚ) / (A008706 (2 * n) : ℚ)

end

end A061674.P13138686866529868820

/-! ## A061674.P9318653298446676018

`A004277(A062279(n))/A004277(n)`
-/

namespace A061674.P9318653298446676018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A062279 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A061674.P9318653298446676018

/-! ## A061674.P6930650303851860737

`A008458(A062279(n))/A008458(n)`
-/

namespace A061674.P6930650303851860737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A062279 n).toNat : ℚ) / (A008458 n : ℚ)

end

end A061674.P6930650303851860737

/-! ## A061674.P13008514123553286620

`A008486(A062279(n))/A008486(n)`
-/

namespace A061674.P13008514123553286620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A062279 n).toNat : ℚ) / (A008486 n : ℚ)

end

end A061674.P13008514123553286620

/-! ## A061674.P1487588128787664308

`A008706(A062279(n))/A008706(n)`
-/

namespace A061674.P1487588128787664308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 (A062279 n).toNat : ℚ) / (A008706 n : ℚ)

end

end A061674.P1487588128787664308

/-! ## A061674.P10837656336218197993

`A022144(A062279(n))/A022144(n)`
-/

namespace A061674.P10837656336218197993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A062279 n).toNat : ℚ) / (A022144 n : ℚ)

end

end A061674.P10837656336218197993

/-! ## A061674.P1828912976049093269

`round(A016993(A062279(n))/A016993(n))`
-/

namespace A061674.P1828912976049093269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016993 (A062279 n).toNat : ℚ) / (A016993 n : ℚ))

end

end A061674.P1828912976049093269

/-!
# A061675: a(n) = floor(Pi^n + e^n).

The programs for A061675, there is no canonical definition to state claims against.
-/

/-! ## A061675.P13965328788674937272

`A241920(A192405(n)+A155604(n))`
-/

namespace A061675.P13965328788674937272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A192405 n + A155604 n).toNat

end

end A061675.P13965328788674937272

/-! ## A061675.P17089859757310872459

`A112593(A000079(n+1))+A026290(n+4)`
-/

namespace A061675.P17089859757310872459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112593 (A000079 (n + 1)).toNat + A026290 (n + 4)

end

end A061675.P17089859757310872459

/-!
# A061676: Triangle T(n,k) of number of ways of throwing k standard dice to produce a total of n.

The programs for A061676, there is no canonical definition to state claims against.
-/

/-! ## A061676.P7304134682929396150

`A213889(comp[∑[n]])`
-/

namespace A061676.P7304134682929396150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213889 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A061676.P7304134682929396150

/-! ## A061676.P12727844330819820634

`A213889(comp[C(n, 2)])^(char[1]+1)`
-/

namespace A061676.P12727844330819820634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213889 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A061676.P12727844330819820634

/-! ## A061676.P11933523048627219871

`lcm((-1)^n, A213889(comp[C(n+1, 2)]))`
-/

namespace A061676.P11933523048627219871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A213889 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A061676.P11933523048627219871

/-! ## A061676.P13241031300132567679

`A213889(comp[C(n, 2)])-A000007(n+1)`
-/

namespace A061676.P13241031300132567679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213889 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A000007 (n + 1)

end

end A061676.P13241031300132567679

/-! ## A061676.P3227133095815186864

`A213889(A014132(n+1))^A035214(n)`
-/

namespace A061676.P3227133095815186864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213889 (A014132 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A061676.P3227133095815186864

/-! ## A061676.P12832651444338795301

`lcm(A186039(n), A213889(A014132(n+1)))`
-/

namespace A061676.P12832651444338795301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186039 n) (A213889 (A014132 (n + 1)).toNat)

end

end A061676.P12832651444338795301

/-! ## A061676.P10685845011165497822

`A000027(A213889(comp[C(n, 2)])+1)-1`
-/

namespace A061676.P10685845011165497822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A213889 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat - 1

end

end A061676.P10685845011165497822

/-! ## A061676.P8857297144856628985

`A213888(n+1)+A097805(n)`
-/

namespace A061676.P8857297144856628985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213888 (n + 1) + A097805 n

end

end A061676.P8857297144856628985

/-!
# A061677: When squared gives number composed just of the digits 1, 2, 3, 4.

The programs for A061677, there is no canonical definition to state claims against.
-/

/-! ## A061677.P12833449114960794084

`∩[A052040(n+1), A158304(n+1)]`
-/

namespace A061677.P12833449114960794084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061677.P12833449114960794084

/-! ## A061677.P14017756234147375807

`sqrt(∩[A084544(n+1), n²])`
-/

namespace A061677.P14017756234147375807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A061677.P14017756234147375807

/-! ## A061677.P8619944308688202440

`sqrt(∩[A052041(n+1), A084544(n+1)])`
-/

namespace A061677.P8619944308688202440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A061677.P8619944308688202440

/-! ## A061677.P12962137843201947846

`record[A056926(A084544(n+1))]`
-/

namespace A061677.P12962137843201947846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A084544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061677.P12962137843201947846

/-!
# A061679: Concatenation of n^3 and 7.

The programs for A061679, the canonical program `A061679.P14351732586158855318` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061679 has offset 1).

The definition of A061679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061679.P14351732586158855318

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=17, a(1)=87, a(2)=277, a(3)=647`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061679

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14351732586158855318.Spec : Prop :=
  ∀ n, P14351732586158855318.a n = A061679 (n + 1)

theorem P14351732586158855318.correct : P14351732586158855318.Spec := by
  intro n
  simp only [A061679, Nat.add_sub_cancel]

end A061679

/-! ## A061679.P1208074052505731430

`10*(n+1)^3+7`
-/

namespace A061679.P1208074052505731430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1) ^ 3 + 7

end

end A061679.P1208074052505731430

namespace A061679

/-- `10*(n+1)^3+7` -/
def P1208074052505731430.Spec : Prop :=
  ∀ n, (P1208074052505731430.a n : ℤ) = A061679 (n + 1)

end A061679

/-! ## A061679.P14531260359969497614

`A017353(Δ[∑[n]²])`
-/

namespace A061679.P14531260359969497614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061679.P14531260359969497614

namespace A061679

/-- `A017353(Δ[∑[n]²])` -/
def P14531260359969497614.Spec : Prop :=
  ∀ n, P14531260359969497614.a n = A061679 (n + 1)

end A061679

/-! ## A061679.P12146710026887215446

`sqrt(A017354((n+1)^3))`
-/

namespace A061679.P12146710026887215446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017354 ((n + 1) ^ 3) : ℝ)

end

end A061679.P12146710026887215446

namespace A061679

/-- `sqrt(A017354((n+1)^3))` -/
def P12146710026887215446.Spec : Prop :=
  ∀ n, P12146710026887215446.a n = (A061679 (n + 1) : ℝ)

end A061679

/-! ## A061679.P13588652604117268098

`A160912(Δ[∑[n]²]+2)`
-/

namespace A061679.P13588652604117268098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A061679.P13588652604117268098

namespace A061679

/-- `A160912(Δ[∑[n]²]+2)` -/
def P13588652604117268098.Spec : Prop :=
  ∀ n, P13588652604117268098.a n = A061679 (n + 1)

end A061679

/-!
# A061680: a(n) = gcd(d(n^2), d(n)).

The programs for A061680, the canonical program `A061680.P4822801586465801909` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061680 has offset 1).

The definition of A061680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061680.P4822801586465801909

`gcd(∏{e}[n+1, 2*#+1], ∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A061680

/-- `gcd(∏{e}[n+1, 2*#+1], ∏{e}[n+1, #+1])` -/
def P4822801586465801909.Spec : Prop :=
  ∀ n, (P4822801586465801909.a n : ℤ) = A061680 (n + 1)

theorem P4822801586465801909.correct : P4822801586465801909.Spec := by
  intro n
  simp only [A061680, Nat.add_sub_cancel]

end A061680

/-! ## A061680.P6316555259087952577

`gcd(∑{d}[n+1, n²%#]+1, ∑{d}[n+1, 2^A001221(#)])`
-/

namespace A061680.P6316555259087952577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f2 n), (2 : ℚ) ^ (A001221 d : ℤ)))

end

end A061680.P6316555259087952577

namespace A061680

/-- `gcd(∑{d}[n+1, n²%#]+1, ∑{d}[n+1, 2^A001221(#)])` -/
def P6316555259087952577.Spec : Prop :=
  ∀ n, (P6316555259087952577.a n : ℤ) = A061680 (n + 1)

end A061680

/-! ## A061680.P2409586035123600496

`gcd(Δ[A006218(n)], A048691(n+1))`
-/

namespace A061680.P2409586035123600496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A048691 (n + 1))

end

end A061680.P2409586035123600496

namespace A061680

/-- `gcd(Δ[A006218(n)], A048691(n+1))` -/
def P2409586035123600496.Spec : Prop :=
  ∀ n, (P2409586035123600496.a n : ℤ) = A061680 (n + 1)

end A061680

/-! ## A061680.P10992421616956091291

`A356574(n+1)/A072695(n+1)`
-/

namespace A061680.P10992421616956091291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356574 (n + 1) : ℚ) / (A072695 (n + 1) : ℚ)

end

end A061680.P10992421616956091291

namespace A061680

/-- `A356574(n+1)/A072695(n+1)` -/
def P10992421616956091291.Spec : Prop :=
  ∀ n, P10992421616956091291.a n = (A061680 (n + 1) : ℚ)

end A061680

/-! ## A061680.P10554308679126125821

`gcd(A000005(n+1), A055205(n+1))`
-/

namespace A061680.P10554308679126125821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A055205 (n + 1))

end

end A061680.P10554308679126125821

namespace A061680

/-- `gcd(A000005(n+1), A055205(n+1))` -/
def P10554308679126125821.Spec : Prop :=
  ∀ n, (P10554308679126125821.a n : ℤ) = A061680 (n + 1)

end A061680

/-! ## A061680.P4927059642854955494

`gcd(A000005((n+1)²), ∏{e}[n+1, #+1])`
-/

namespace A061680.P4927059642854955494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 ((n + 1) ^ 2)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A061680.P4927059642854955494

namespace A061680

/-- `gcd(A000005((n+1)²), ∏{e}[n+1, #+1])` -/
def P4927059642854955494.Spec : Prop :=
  ∀ n, (P4927059642854955494.a n : ℤ) = A061680 (n + 1)

end A061680

/-! ## A061680.P4930967279550455161

`gcd(A067132(n+1), A329601(A278254(n+1)))`
-/

namespace A061680.P4930967279550455161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067132 (n + 1)) (A329601 (A278254 (n + 1)).toNat)

end

end A061680.P4930967279550455161

namespace A061680

/-- `gcd(A067132(n+1), A329601(A278254(n+1)))` -/
def P4930967279550455161.Spec : Prop :=
  ∀ n, (P4930967279550455161.a n : ℤ) = A061680 (n + 1)

end A061680

/-! ## A061680.P7278561272535359143

`A063062(A015999(n+1))`
-/

namespace A061680.P7278561272535359143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063062 (A015999 (n + 1)).toNat

end

end A061680.P7278561272535359143

namespace A061680

/-- `A063062(A015999(n+1))` -/
def P7278561272535359143.Spec : Prop :=
  ∀ n, P7278561272535359143.a n = A061680 (n + 1)

end A061680

/-! ## A061680.P6516286004645978694

`A293521(A001227(A285573(n+1)))`
-/

namespace A061680.P6516286004645978694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 (A001227 (A285573 (n + 1)).toNat).toNat

end

end A061680.P6516286004645978694

namespace A061680

/-- `A293521(A001227(A285573(n+1)))` -/
def P6516286004645978694.Spec : Prop :=
  ∀ n, P6516286004645978694.a n = A061680 (n + 1)

end A061680

/-! ## A061680.P16386852321448914449

`gcd(A017629(n), A303707(n+1))`
-/

namespace A061680.P16386852321448914449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017629 n) (A303707 (n + 1))

end

end A061680.P16386852321448914449

namespace A061680

/-- `gcd(A017629(n), A303707(n+1))` -/
def P16386852321448914449.Spec : Prop :=
  ∀ n, (P16386852321448914449.a n : ℤ) = A061680 (n + 1)

end A061680

/-!
# A061681: a(0)=1; a(n) = a(n-1) + lead(a(n-1)) for n > 0 where for an integer x lead(x) is the leading digit in base 10.

The programs for A061681, there is no canonical definition to state claims against.
-/

/-! ## A061681.P900636177386231554

`a(n-1)--A004086(a(n-1))%10` with `a(0)=1`
-/

namespace A061681.P900636177386231554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.tmod (-A004086 (a (n - 1)).toNat) 10

end

end A061681.P900636177386231554

/-! ## A061681.P14480345979924044419

`A182324(a(n-1))` with `a(0)=1`
-/

namespace A061681.P14480345979924044419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182324 (a (n - 1)).toNat

end

end A061681.P14480345979924044419

/-! ## A061681.P5175126303606808287

`A000030(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A061681.P5175126303606808287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000030 (a (n - 1)).toNat + a (n - 1)

end

end A061681.P5175126303606808287

/-! ## A061681.P3538089945523090170

`A000030(ceil(a(n-1)))-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A061681.P3538089945523090170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000030 (a (n - 1)).toNat - (-a (n - 1))

end

end A061681.P3538089945523090170

/-! ## A061681.P2304738193950027966

`A182324(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A061681.P2304738193950027966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182324 (a (A023443 n).toNat).toNat

end

end A061681.P2304738193950027966

/-! ## A061681.P13748062877366557754

`A255873(7*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A061681.P13748062877366557754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255873 (7 * a (n - 1)).toNat + a (n - 1)

end

end A061681.P13748062877366557754

/-!
# A061682: Length of period of continued fraction expansion of square root of (2^(2n+1)+1).

The programs for A061682, there is no canonical definition to state claims against.
-/

/-! ## A061682.P10658833456958702011

`A059926(2*n+5)`
-/

namespace A061682.P10658833456958702011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059926 (2 * n + 5)

end

end A061682.P10658833456958702011

/-! ## A061682.P18021622733748169808

`A000027(A059926(Δ[(n+2)²]))`
-/

namespace A061682.P18021622733748169808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A059926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A061682.P18021622733748169808

/-! ## A061682.P5006220973682539973

`filter[A059926(n+4), A066247(#)]`
-/

namespace A061682.P5006220973682539973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059926 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A061682.P5006220973682539973

/-! ## A061682.P12854938287237541907

`filter[A059926(n+4), A091247(#)]`
-/

namespace A061682.P12854938287237541907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059926 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A061682.P12854938287237541907

/-! ## A061682.P12449984565048888669

`filter[A059926(n+4), A178226(#)]`
-/

namespace A061682.P12449984565048888669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059926 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A061682.P12449984565048888669

/-!
# A061684: Generalized Bell numbers: column 3 of A275043.

The programs for A061684, there is no canonical definition to state claims against.
-/

/-! ## A061684.P4866399884424025172

`A275043(∑[n+3]+n+3)`
-/

namespace A061684.P4866399884424025172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A061684.P4866399884424025172

/-! ## A061684.P6800032358529165679

`or(A000007(n), A275043(A046691(n+2)))`
-/

namespace A061684.P6800032358529165679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275043 (A046691 (n + 2)).toNat)

end

end A061684.P6800032358529165679

/-! ## A061684.P8437144424730149098

`A275043(A046691(n+2))+A000007(n+4)`
-/

namespace A061684.P8437144424730149098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A046691 (n + 2)).toNat + A000007 (n + 4)

end

end A061684.P8437144424730149098

/-! ## A061684.P2940015639932206482

`A319691(2*(n+2))+A275043(A046691(n+2))`
-/

namespace A061684.P2940015639932206482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319691 (2 * (n + 2)) + A275043 (A046691 (n + 2)).toNat

end

end A061684.P2940015639932206482

/-!
# A061685: Generalized Bell numbers: column 4 of A275043.

The programs for A061685, there is no canonical definition to state claims against.
-/

/-! ## A061685.P3697737129110723331

`A275043(A052905(n+2))`
-/

namespace A061685.P3697737129110723331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A052905 (n + 2)).toNat

end

end A061685.P3697737129110723331

/-! ## A061685.P18439967961424724471

`A275043(eq[4, A025581(n)])`
-/

namespace A061685.P18439967961424724471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061685.P18439967961424724471

/-! ## A061685.P710648477816118162

`A275043(eq[5, A193739(n)])`
-/

namespace A061685.P710648477816118162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061685.P710648477816118162

/-! ## A061685.P1191715110997534920

`A275043(eq[9, A099375(n)])`
-/

namespace A061685.P1191715110997534920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061685.P1191715110997534920

/-! ## A061685.P1426314648945425048

`A275043(eq[5, A004736(n+1)])`
-/

namespace A061685.P1426314648945425048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061685.P1426314648945425048

/-!
# A061686: Generalized Bell numbers: column 5 of A275043.

The programs for A061686, there is no canonical definition to state claims against.
-/

/-! ## A061686.P5612654819175336443

`A275043(eq[5, A025581(n)])`
-/

namespace A061686.P5612654819175336443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061686.P5612654819175336443

/-! ## A061686.P15549357933214547544

`A275043(eq[6, A193739(n)])`
-/

namespace A061686.P15549357933214547544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061686.P15549357933214547544

/-! ## A061686.P1287345458082944468

`A275043(eq[11, A099375(n)])`
-/

namespace A061686.P1287345458082944468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061686.P1287345458082944468

/-! ## A061686.P17103875403947506614

`A275043(Δ[Δ[A095667(n)]])`
-/

namespace A061686.P17103875403947506614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (f1 (n + 1) - f1 n).toNat

end

end A061686.P17103875403947506614

/-! ## A061686.P15249149281600964682

`A275043(eq[6, A004736(n+1)])`
-/

namespace A061686.P15249149281600964682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061686.P15249149281600964682

/-!
# A061687: Generalized Bell numbers: column 6 of A275043.

The programs for A061687, there is no canonical definition to state claims against.
-/

/-! ## A061687.P6880865400848874229

`A275043(eq[6, A025581(n)])`
-/

namespace A061687.P6880865400848874229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061687.P6880865400848874229

/-! ## A061687.P3113666029535540612

`A275043(eq[7, A193739(n)])`
-/

namespace A061687.P3113666029535540612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061687.P3113666029535540612

/-! ## A061687.P16494095879200648311

`A275043(eq[13, A099375(n)])`
-/

namespace A061687.P16494095879200648311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061687.P16494095879200648311

/-! ## A061687.P15262819206318201466

`A275043(eq[6, A193592(n+1)])`
-/

namespace A061687.P15262819206318201466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061687.P15262819206318201466

/-! ## A061687.P5715835056681281857

`A275043(eq[7, A004736(n+1)])`
-/

namespace A061687.P5715835056681281857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061687.P5715835056681281857

/-!
# A061688: Generalized Bell numbers: column 7 of A275043.

The programs for A061688, there is no canonical definition to state claims against.
-/

/-! ## A061688.P1140061172405278530

`A275043(eq[7, A025581(n)])`
-/

namespace A061688.P1140061172405278530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061688.P1140061172405278530

/-! ## A061688.P11407208843427985277

`A275043(eq[8, A193739(n)])`
-/

namespace A061688.P11407208843427985277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061688.P11407208843427985277

/-! ## A061688.P16967321490343712512

`A275043(eq[8, A004736(n+1)])`
-/

namespace A061688.P16967321490343712512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061688.P16967321490343712512

/-!
# A061689: Generalized Stirling numbers.

The programs for A061689, there is no canonical definition to state claims against.
-/

/-! ## A061689.P15943979245864485671

`A061691(∑[n+3]+1)`
-/

namespace A061689.P15943979245864485671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061689.P15943979245864485671

/-! ## A061689.P2918049124831728586

`record[A010054(n+3)*A061691(n+1)]`
-/

namespace A061689.P2918049124831728586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A061691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061689.P2918049124831728586

/-! ## A061689.P6590146340662504353

`record[A061691(n+1)/A061691(n+4)]`
-/

namespace A061689.P6590146340662504353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061691 (n + 1) : ℚ) / (A061691 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061689.P6590146340662504353

/-! ## A061689.P14318758931239462176

`record[A061691(A194038(n))]`
-/

namespace A061689.P14318758931239462176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061691 (A194038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061689.P14318758931239462176

/-!
# A061690: Generalized Stirling numbers.

The programs for A061690, there is no canonical definition to state claims against.
-/

/-! ## A061690.P7589214554566606844

`A048720(∑[A382737(n)])`
-/

namespace A061690.P7589214554566606844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061690.P7589214554566606844

/-!
# A061691: Triangle of generalized Stirling numbers.

The programs for A061691, there is no canonical definition to state claims against.
-/

/-! ## A061691.P18346418305089571873

`A192722(n+1)/A166350(n+1)`
-/

namespace A061691.P18346418305089571873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A061691.P18346418305089571873

/-! ## A061691.P18428629626279552987

`A192722(n+1)/A002260(n+1)!`
-/

namespace A061691.P18428629626279552987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A061691.P18428629626279552987

/-! ## A061691.P9938143068842122400

`A192722(n+1)/A066667(A112367(n))`
-/

namespace A061691.P9938143068842122400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (A066667 (A112367 n).toNat : ℚ)

end

end A061691.P9938143068842122400

/-! ## A061691.P11417881260620923186

`A192722(n+1)/A233543(A080036(n))`
-/

namespace A061691.P11417881260620923186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (A233543 (A080036 n).toNat : ℚ)

end

end A061691.P11417881260620923186

/-! ## A061691.P15695019290315035032

`A192722(n+1)/A233543(A014132(n+1))`
-/

namespace A061691.P15695019290315035032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (A233543 (A014132 (n + 1)).toNat : ℚ)

end

end A061691.P15695019290315035032

/-! ## A061691.P2919251829344976031

`A192722(n+1)/A000142(abs(A140756(n+1)))`
-/

namespace A061691.P2919251829344976031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (A000142 |A140756 (n + 1)|.toNat : ℚ)

end

end A061691.P2919251829344976031

/-! ## A061691.P11978890355740146316

`A192722(n+1)/A000005(A059268(n))!`
-/

namespace A061691.P11978890355740146316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192722 (n + 1) : ℚ) / (Nat.factorial (A000005 (A059268 n).toNat).toNat : ℚ)

end

end A061691.P11978890355740146316

/-!
# A061692: Triangle of generalized Stirling numbers.

The programs for A061692, there is no canonical definition to state claims against.
-/

/-! ## A061692.P15473324505800950692

`A264975(A046899(n)^A014085(n))`
-/

namespace A061692.P15473324505800950692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (SequenceMachineLib.roundAway ((A046899 n : ℚ) ^ (A014085 n : ℤ))).toNat

end

end A061692.P15473324505800950692

/-! ## A061692.P14046400201925616026

`A337632(n+1)*A368422(A050166(n))`
-/

namespace A061692.P14046400201925616026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (n + 1) * A368422 (A050166 n).toNat

end

end A061692.P14046400201925616026

/-! ## A061692.P17637259912895780178

`A264975(A046899(n)^A289441(n+2))`
-/

namespace A061692.P17637259912895780178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (SequenceMachineLib.roundAway ((A046899 n : ℚ) ^ (A289441 (n + 2) : ℤ))).toNat

end

end A061692.P17637259912895780178

/-!
# A061693: Generalized Bell numbers.

The programs for A061693, there is no canonical definition to state claims against.
-/

/-! ## A061693.P15624503892439800231

`floor(A096191(n+1)/2)`
-/

namespace A061693.P15624503892439800231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096191 (n + 1) : ℚ) / 2⌋

end

end A061693.P15624503892439800231

/-! ## A061693.P13194213230901414313

`A000172(n+1)/2-1`
-/

namespace A061693.P13194213230901414313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000172 (n + 1) : ℚ) / 2 - 1

end

end A061693.P13194213230901414313

/-! ## A061693.P776847692804433595

`∑{d}[n+1, #*A092239(#)]`
-/

namespace A061693.P776847692804433595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092239 d

end

end A061693.P776847692804433595

/-! ## A061693.P9223441292133178237

`A033999(2*n+1)+A000172(n+1)/2`
-/

namespace A061693.P9223441292133178237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) + (A000172 (n + 1) : ℚ) / 2

end

end A061693.P9223441292133178237

/-! ## A061693.P18234765591929591017

`A285779(A007318(∑[n]))+A000172(n+1)/2`
-/

namespace A061693.P18234765591929591017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285779 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) + (A000172 (n + 1) : ℚ) / 2

end

end A061693.P18234765591929591017

/-! ## A061693.P17290749321632962161

`A008683(A002148(n))+A000172(n+1)/2`
-/

namespace A061693.P17290749321632962161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A002148 n).toNat : ℚ) + (A000172 (n + 1) : ℚ) / 2

end

end A061693.P17290749321632962161

/-!
# A061694: Generalized Bell numbers.

The programs for A061694, there is no canonical definition to state claims against.
-/

/-! ## A061694.P12956963186737082723

`(n+1)*A352729(A091266(n+1))`
-/

namespace A061694.P12956963186737082723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A352729 (A091266 (n + 1)).toNat

end

end A061694.P12956963186737082723

/-!
# A061695: Generalized Bell numbers.

The programs for A061695, there is no canonical definition to state claims against.
-/

/-! ## A061695.P10094922806699740267

`n!²*∑[n+1]^3`
-/

namespace A061695.P10094922806699740267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A061695.P10094922806699740267

/-! ## A061695.P13980052317955963051

`((n+2)!/2)²*∑[n+1]`
-/

namespace A061695.P13980052317955963051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℚ) / 2) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A061695.P13980052317955963051

/-! ## A061695.P16353904319085182790

`(∏[n+2]/2)²*∑[n+1]`
-/

namespace A061695.P16353904319085182790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A061695.P16353904319085182790

/-! ## A061695.P224467159882368193

`(n+2)^3*a(n-1)/n` with `a(0)=1`
-/

namespace A061695.P224467159882368193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 2) ^ 3 : ℚ) * a (n - 1) / (n : ℚ)

end

end A061695.P224467159882368193

/-! ## A061695.P7999782735679773171

`a(n-1)*Δ[∑[n+1]²]/n` with `a(0)=1`
-/

namespace A061695.P7999782735679773171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n : ℚ)

end

end A061695.P7999782735679773171

/-!
# A061696: Generalized Bell numbers.

The programs for A061696, there is no canonical definition to state claims against.
-/

/-! ## A061696.P17999487437725326447

`A224534(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A061696.P17999487437725326447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A224534 (a (n - 1)).toNat

end

end A061696.P17999487437725326447

/-! ## A061696.P15053511996471271328

`A331417(a(n-1)+7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A061696.P15053511996471271328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A331417 (a (n - 1) + 7).toNat

end

end A061696.P15053511996471271328

/-!
# A061697: Generalized Bell numbers.

The programs for A061697, there is no canonical definition to state claims against.
-/

/-! ## A061697.P9501780790192801944

`A245339(floor(n/3)^(2*n))`
-/

namespace A061697.P9501780790192801944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245339 (⌊(n : ℚ) / 3⌋ ^ (2 * n)).toNat

end

end A061697.P9501780790192801944

/-! ## A061697.P15512655283148287092

`floor(sinh(A288680(ceil(3*n/2))))`
-/

namespace A061697.P15512655283148287092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (A288680 ⌈3 * ((n : ℚ) / 2)⌉.toNat : ℝ)⌋

end

end A061697.P15512655283148287092

/-! ## A061697.P6368945307585159724

`A193263(10*a(and(n, n-1)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A061697.P6368945307585159724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  A193263 (10 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A061697.P6368945307585159724

/-!
# A061699: Generalized Bell numbers.

The programs for A061699, there is no canonical definition to state claims against.
-/

/-! ## A061699.P14383461102535109353

`A346877(A346968(n)+A346895(n))`
-/

namespace A061699.P14383461102535109353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (A346968 n + A346895 n).toNat

end

end A061699.P14383461102535109353

/-! ## A061699.P12379567778068226318

`A346877(A346968(n)+A346923(n))`
-/

namespace A061699.P12379567778068226318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (A346968 n + A346923 n).toNat

end

end A061699.P12379567778068226318

