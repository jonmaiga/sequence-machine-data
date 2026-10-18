import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B001.C000
import Seq.B001.C001
import Seq.B006.C000
import Seq.Opaque.C001

/-!
# A021904: Expansion of 1/((1-x)(1-4x)(1-8x)(1-9x)).

The programs for A021904, the canonical program `A021904.P11080168878951395664` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021904 has offset 0).

The definition of A021904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021904.P11080168878951395664

`(21*9^(n+3)-30*8^(n+3)+14*4^(n+3)-5)/840`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021904

/-- `(21*9^(n+3)-30*8^(n+3)+14*4^(n+3)-5)/840` -/
def P11080168878951395664.Spec : Prop :=
  ∀ n, P11080168878951395664.a n = (A021904 n : ℚ)

end A021904

/-! ## A021904.P6312379590062120063

`∑[A019664(n)]`
-/

namespace A021904.P6312379590062120063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021904.P6312379590062120063

namespace A021904

/-- `∑[A019664(n)]` -/
def P6312379590062120063.Spec : Prop :=
  ∀ n, P6312379590062120063.a n = A021904 n

end A021904

/-! ## A021904.P9292212960363796411

`A016256(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021904.P9292212960363796411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016256 n + 4 * a (n - 1)

end

end A021904.P9292212960363796411

namespace A021904

/-- `A016256(n)+4*a(n-1)` -/
def P9292212960363796411.Spec : Prop :=
  ∀ n, P9292212960363796411.a n = A021904 n

end A021904

/-! ## A021904.P1707689057333398612

`A002451(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A021904.P1707689057333398612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002451 n + 8 * a (n - 1)

end

end A021904.P1707689057333398612

namespace A021904

/-- `A002451(n)+8*a(n-1)` -/
def P1707689057333398612.Spec : Prop :=
  ∀ n, P1707689057333398612.a n = A021904 n

end A021904

/-! ## A021904.P17109473967607006078

`2*A021864(n)-A021854(n)`
-/

namespace A021904.P17109473967607006078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021864 n - A021854 n

end

end A021904.P17109473967607006078

namespace A021904

/-- `2*A021864(n)-A021854(n)` -/
def P17109473967607006078.Spec : Prop :=
  ∀ n, P17109473967607006078.a n = A021904 n

end A021904

/-! ## A021904.P2452024025914426292

`A021764(n)+A022469(n)-A021772(n)`
-/

namespace A021904.P2452024025914426292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021764 n + (A022469 n - A021772 n)

end

end A021904.P2452024025914426292

namespace A021904

/-- `A021764(n)+A022469(n)-A021772(n)` -/
def P2452024025914426292.Spec : Prop :=
  ∀ n, P2452024025914426292.a n = A021904 n

end A021904

/-! ## A021904.P3038304278471937863

`2*A021914(n)-A021954(n)`
-/

namespace A021904.P3038304278471937863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021914 n - A021954 n

end

end A021904.P3038304278471937863

namespace A021904

/-- `2*A021914(n)-A021954(n)` -/
def P3038304278471937863.Spec : Prop :=
  ∀ n, P3038304278471937863.a n = A021904 n

end A021904

/-!
# A021913: Period 4: repeat [0, 0, 1, 1].

The programs for A021913, the canonical program `A021913.P3902253882929539198` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021913 has offset 0).

The definition of A021913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021913.P3902253882929539198

`floor(n%4/2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021913

/-- `floor(n%4/2)` -/
def P3902253882929539198.Spec : Prop :=
  ∀ n, P3902253882929539198.a n = A021913 n

theorem P3902253882929539198.correct : P3902253882929539198.Spec := by
  intro n
  simp only [A021913]

end A021913

/-!
# A021914: Expansion of 1/((1-x)(1-4x)(1-8x)(1-10x)).

The programs for A021914, the canonical program `A021914.P6376640922673671551` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021914 has offset 0).

The definition of A021914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021914.P6376640922673671551

`∑[A019671(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021914

/-- `∑[A019671(n)]` -/
def P6376640922673671551.Spec : Prop :=
  ∀ n, P6376640922673671551.a n = A021914 n

theorem P6376640922673671551.correct : P6376640922673671551.Spec := by
  intro n
  simp only [A021914]

end A021914

/-! ## A021914.P10598178313677260425

`∑[2^n*A016282(n)]`
-/

namespace A021914.P10598178313677260425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021914.P10598178313677260425

namespace A021914

/-- `∑[2^n*A016282(n)]` -/
def P10598178313677260425.Spec : Prop :=
  ∀ n, P10598178313677260425.a n = A021914 n

end A021914

/-! ## A021914.P11663400351846862124

`A016257(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021914.P11663400351846862124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016257 n + 4 * a (n - 1)

end

end A021914.P11663400351846862124

namespace A021914

/-- `A016257(n)+4*a(n-1)` -/
def P11663400351846862124.Spec : Prop :=
  ∀ n, P11663400351846862124.a n = A021914 n

end A021914

/-! ## A021914.P16047187868169527592

`A019671(n%(n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A021914.P16047187868169527592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019671 (n % (n + 1) ^ 2) + a (n - 1)

end

end A021914.P16047187868169527592

namespace A021914

/-- `A019671(n%(n+1)²)+a(n-1)` -/
def P16047187868169527592.Spec : Prop :=
  ∀ n, P16047187868169527592.a n = A021914 n

end A021914

/-! ## A021914.P6167353024061509416

`A019671(lcm(2, 2*n)/2)+a(n-1)` with `a(0)=1`
-/

namespace A021914.P6167353024061509416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019671 (SequenceMachineLib.roundAway ((Nat.lcm 2 (2 * n) : ℚ) / 2)).toNat + a (n - 1)

end

end A021914.P6167353024061509416

namespace A021914

/-- `A019671(lcm(2, 2*n)/2)+a(n-1)` -/
def P6167353024061509416.Spec : Prop :=
  ∀ n, P6167353024061509416.a n = A021914 n

end A021914

/-! ## A021914.P16190901090922830131

`2*A021829(n)-A021814(n)`
-/

namespace A021914.P16190901090922830131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - A021814 n

end

end A021914.P16190901090922830131

namespace A021914

/-- `2*A021829(n)-A021814(n)` -/
def P16190901090922830131.Spec : Prop :=
  ∀ n, P16190901090922830131.a n = A021914 n

end A021914

/-! ## A021914.P13049055952452514975

`(A021954(n)+A021904(n))/2`
-/

namespace A021914.P13049055952452514975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021954 n + A021904 n : ℚ) / 2

end

end A021914.P13049055952452514975

namespace A021914

/-- `(A021954(n)+A021904(n))/2` -/
def P13049055952452514975.Spec : Prop :=
  ∀ n, P13049055952452514975.a n = (A021914 n : ℚ)

end A021914

/-! ## A021914.P1509741908930512878

`(A024438(n)+A021854(n))/2`
-/

namespace A021914.P1509741908930512878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024438 n + A021854 n : ℚ) / 2

end

end A021914.P1509741908930512878

namespace A021914

/-- `(A024438(n)+A021854(n))/2` -/
def P1509741908930512878.Spec : Prop :=
  ∀ n, P1509741908930512878.a n = (A021914 n : ℚ)

end A021914

/-!
# A021924: Expansion of 1/((1-x)(1-4x)(1-8x)(1-11x)).

The programs for A021924, there is no canonical definition to state claims against.
-/

/-! ## A021924.P5367042918540812666

`∑[A019672(n)]`
-/

namespace A021924.P5367042918540812666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021924.P5367042918540812666

/-! ## A021924.P6774722520417876080

`A016259(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021924.P6774722520417876080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 4 * a (n - 1)

end

end A021924.P6774722520417876080

/-! ## A021924.P18103072910801251460

`A016226(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A021924.P18103072910801251460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016226 n + 8 * a (n - 1)

end

end A021924.P18103072910801251460

/-! ## A021924.P127773914144058239

`A019672(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A021924.P127773914144058239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019672 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A021924.P127773914144058239

/-! ## A021924.P3638069794508180807

`2*A021784(n)-A021764(n)`
-/

namespace A021924.P3638069794508180807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021784 n - A021764 n

end

end A021924.P3638069794508180807

/-! ## A021924.P4395317768536928684

`A021854(n)+A024439(n)-A021884(n)`
-/

namespace A021924.P4395317768536928684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n + (A024439 n - A021884 n)

end

end A021924.P4395317768536928684

/-! ## A021924.P3005851272902732518

`A021394(n)+A028030(n)-A021764(n)`
-/

namespace A021924.P3005851272902732518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021394 n + (A028030 n - A021764 n)

end

end A021924.P3005851272902732518

/-!
# A021929: Decimal expansion of 1/925.

The programs for A021929, the canonical program `A021929.P16187935444123050814` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021929 has offset 0).

The definition of A021929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021929.P16187935444123050814

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021929

/-- `a(n-3)` -/
def P16187935444123050814.Spec : Prop :=
  ∀ n, (P16187935444123050814.a n : ℤ) = A021929 n

theorem P16187935444123050814.correct : P16187935444123050814.Spec := by
  intro n
  simp only [A021929]

end A021929

/-!
# A021934: Decimal expansion of 1/930.

The programs for A021934, there is no canonical definition to state claims against.
-/

/-! ## A021934.P7088142169837689545

`A021097(n-A025794(a(n-1)))` with `a(0)=0`
-/

namespace A021934.P7088142169837689545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A021097 ((n : ℤ) - A025794 (a (n - 1)).toNat).toNat

end

end A021934.P7088142169837689545

/-!
# A021944: Expansion of 1/((1-x)*(1-4*x)*(1-8*x)*(1-12*x)).

The programs for A021944, there is no canonical definition to state claims against.
-/

/-! ## A021944.P490065682151434806

`∑[A019677(n)]`
-/

namespace A021944.P490065682151434806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P490065682151434806

/-! ## A021944.P13108956558627410126

`∑[4^n*A000392(n+3)]`
-/

namespace A021944.P13108956558627410126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000392 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P13108956558627410126

/-! ## A021944.P16827232951299693796

`A019677(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A021944.P16827232951299693796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019677 (n % (n + 1)) + a (n - 1)

end

end A021944.P16827232951299693796

/-! ## A021944.P5505499402348514418

`A019677(n+1-floor(atan(n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A021944.P5505499402348514418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019677 ((n + 1 : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat + a (n - 1)

end

end A021944.P5505499402348514418

/-! ## A021944.P14149052653640313234

`∑[∑[A001047(n+1)]*A000079(n)²]`
-/

namespace A021944.P14149052653640313234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P14149052653640313234

/-! ## A021944.P8715695278020489729

`∑[A000392(n+3)*A011782(n+1)²]`
-/

namespace A021944.P8715695278020489729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 3) * A011782 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P8715695278020489729

/-! ## A021944.P13002184098148199970

`∑[∑[A001047(n+1)]*A000079(2*n)]`
-/

namespace A021944.P13002184098148199970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P13002184098148199970

/-! ## A021944.P12707039782569455973

`∑[A000392(n+3)*A011782(2*n+1)]`
-/

namespace A021944.P12707039782569455973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 3) * A011782 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P12707039782569455973

/-! ## A021944.P17260148946428053449

`∑[∑[A001047(n+1)]*A011782(n+1)²]`
-/

namespace A021944.P17260148946428053449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P17260148946428053449

/-! ## A021944.P13696360875376699134

`∑[∑[A001047(n+1)]*A011782(2*n+1)]`
-/

namespace A021944.P13696360875376699134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021944.P13696360875376699134

/-!
# A021949: Decimal expansion of 1/945.

The programs for A021949, the canonical program `A021949.P2275516452730271419` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021949 has offset 0).

The definition of A021949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021949.P2275516452730271419

`8-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021949

/-- `8-(a(n-2)+a(n-4))` -/
def P2275516452730271419.Spec : Prop :=
  ∀ n, P2275516452730271419.a n = A021949 n

theorem P2275516452730271419.correct : P2275516452730271419.Spec := by
  intro n
  simp only [A021949]

end A021949

/-!
# A021954: Expansion of 1/((1-x)(1-4x)(1-9x)(1-10x)).

The programs for A021954, there is no canonical definition to state claims against.
-/

/-! ## A021954.P16095410017187446278

`∑[A019682(n)]`
-/

namespace A021954.P16095410017187446278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021954.P16095410017187446278

/-! ## A021954.P1055261187266818406

`2*A021914(n)-A021904(n)`
-/

namespace A021954.P1055261187266818406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021914 n - A021904 n

end

end A021954.P1055261187266818406

/-! ## A021954.P17649659020384280130

`(A028124(n)+A021774(n))/2`
-/

namespace A021954.P17649659020384280130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028124 n + A021774 n : ℚ) / 2

end

end A021954.P17649659020384280130

/-! ## A021954.P16272555338241700535

`∑[(A020970(n)+A019613(n))/2]`
-/

namespace A021954.P16272555338241700535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020970 n + A019613 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021954.P16272555338241700535

/-! ## A021954.P17203021314506030256

`A021854(n)+A024438(n)-A021904(n)`
-/

namespace A021954.P17203021314506030256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n + (A024438 n - A021904 n)

end

end A021954.P17203021314506030256

/-! ## A021954.P16502991595214615583

`2*A021964(n)-A021984(n)`
-/

namespace A021954.P16502991595214615583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021964 n - A021984 n

end

end A021954.P16502991595214615583

/-!
# A021964: Expansion of g.f. 1/((1-x)*(1-4*x)*(1-9*x)*(1-11*x)).

The programs for A021964, there is no canonical definition to state claims against.
-/

/-! ## A021964.P10100307725056566932

`∑[A019687(n)]`
-/

namespace A021964.P10100307725056566932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021964.P10100307725056566932

/-! ## A021964.P7438053347521448903

`A016262(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021964.P7438053347521448903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016262 n + 4 * a (n - 1)

end

end A021964.P7438053347521448903

/-! ## A021964.P6906010328927069720

`2*A021884(n)-A021864(n)`
-/

namespace A021964.P6906010328927069720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021884 n - A021864 n

end

end A021964.P6906010328927069720

/-! ## A021964.P3821611728793827042

`A019687(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021964.P3821611728793827042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019687 n + a (A023443 n).toNat

end

end A021964.P3821611728793827042

/-! ## A021964.P16175111920923749389

`A021094(n)+A021294(n)-A021084(n)`
-/

namespace A021964.P16175111920923749389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021094 n + (A021294 n - A021084 n)

end

end A021964.P16175111920923749389

/-! ## A021964.P9714398957764925572

`(A021984(n)+A021954(n))/2`
-/

namespace A021964.P9714398957764925572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021984 n + A021954 n : ℚ) / 2

end

end A021964.P9714398957764925572

/-!
# A021966: Decimal expansion of 1/962.

The programs for A021966, the canonical program `A021966.P17644527202577626942` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021966 has offset 0).

The definition of A021966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021966.P17644527202577626942

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021966

/-- `9-(a(n-2)+a(n-4))` -/
def P17644527202577626942.Spec : Prop :=
  ∀ n, P17644527202577626942.a n = A021966 n

theorem P17644527202577626942.correct : P17644527202577626942.Spec := by
  intro n
  simp only [A021966]

end A021966

/-!
# A021974: Expansion of g.f. 1/((1-x)*(1-4*x)*(1-9*x)*(1-12*x)).

The programs for A021974, there is no canonical definition to state claims against.
-/

/-! ## A021974.P2299254710953773522

`∑[A019722(n)]`
-/

namespace A021974.P2299254710953773522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021974.P2299254710953773522

/-! ## A021974.P11663015580047152307

`A016263(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021974.P11663015580047152307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016263 n + 4 * a (n - 1)

end

end A021974.P11663015580047152307

/-! ## A021974.P14808294688281220264

`2*A021844(n)-A021824(n)`
-/

namespace A021974.P14808294688281220264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021844 n - A021824 n

end

end A021974.P14808294688281220264

/-! ## A021974.P2740204061886496629

`a(n-1)+A019722(n)+A000007(n)` with `a(0)=1`
-/

namespace A021974.P2740204061886496629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019722 n + A000007 n)

end

end A021974.P2740204061886496629

/-! ## A021974.P11229280108547449155

`a(n-1)+A019722(n)*A057427(n)` with `a(0)=1`
-/

namespace A021974.P11229280108547449155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A019722 n * A057427 n

end

end A021974.P11229280108547449155

/-!
# A021979: Decimal expansion of 1/975.

The programs for A021979, the canonical program `A021979.P13417165036691263870` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021979 has offset 0).

The definition of A021979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021979.P13417165036691263870

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021979

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P13417165036691263870.Spec : Prop :=
  ∀ n, P13417165036691263870.a n = A021979 n

theorem P13417165036691263870.correct : P13417165036691263870.Spec := by
  intro n
  simp only [A021979]

end A021979

/-!
# A021984: Expansion of 1/((1-x)(1-4x)(1-10x)(1-11x)).

The programs for A021984, there is no canonical definition to state claims against.
-/

/-! ## A021984.P12569760648143341117

`∑[4^n*∑[(5/2)^n]]+11*a(n-1)` with `a(0)=1`
-/

namespace A021984.P12569760648143341117
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 11 * a (n - 1)

end

end A021984.P12569760648143341117

/-! ## A021984.P15879060259303820139

`∑[A019742(n)]`
-/

namespace A021984.P15879060259303820139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021984.P15879060259303820139

/-! ## A021984.P12160568972096859890

`2*A021964(n)-A021954(n)`
-/

namespace A021984.P12160568972096859890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021964 n - A021954 n

end

end A021984.P12160568972096859890

/-! ## A021984.P10316907952049296584

`(A024444(n)+A021884(n))/2`
-/

namespace A021984.P10316907952049296584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024444 n + A021884 n : ℚ) / 2

end

end A021984.P10316907952049296584

/-! ## A021984.P16089614415399473442

`A016226(n+1)-A016225(n+1)`
-/

namespace A021984.P16089614415399473442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 (n + 1) - A016225 (n + 1)

end

end A021984.P16089614415399473442

/-! ## A021984.P13471986155664572810

`A021394(n)+A021714(n)-A021384(n)`
-/

namespace A021984.P13471986155664572810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021394 n + (A021714 n - A021384 n)

end

end A021984.P13471986155664572810

/-! ## A021984.P6349461497816324907

`A021092(n)+A025983(n)-A021094(n)`
-/

namespace A021984.P6349461497816324907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n + (A025983 n - A021094 n)

end

end A021984.P6349461497816324907

/-! ## A021984.P5343179852637960065

`2*A021994(n)-A022000(n)`
-/

namespace A021984.P5343179852637960065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021994 n - A022000 n

end

end A021984.P5343179852637960065

/-!
# A021988: Decimal expansion of 1/984.

The programs for A021988, the canonical program `A021988.P6413502429168806542` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021988 has offset 0).

The definition of A021988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021988.P6413502429168806542

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=6, a(6)=2, a(7)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021988

/-- `a(n-5)` -/
def P6413502429168806542.Spec : Prop :=
  ∀ n, (P6413502429168806542.a n : ℤ) = A021988 n

theorem P6413502429168806542.correct : P6413502429168806542.Spec := by
  intro n
  simp only [A021988]

end A021988

/-!
# A021994: G.f.: 1/((1-x)(1-4x)(1-10x)(1-12x)).

The programs for A021994, there is no canonical definition to state claims against.
-/

/-! ## A021994.P11404528665179418677

`∑[A019747(n)]`
-/

namespace A021994.P11404528665179418677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021994.P11404528665179418677

/-! ## A021994.P16452966298161689119

`∑[2^n*A016295(n)]`
-/

namespace A021994.P16452966298161689119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021994.P16452966298161689119

/-! ## A021994.P3427040191535689886

`A019747(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A021994.P3427040191535689886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019747 (n % (n + 1)) + a (n - 1)

end

end A021994.P3427040191535689886

/-! ## A021994.P1801682815630662801

`A019747(abs(n-2*n))+a(n-1)` with `a(0)=1`
-/

namespace A021994.P1801682815630662801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019747 |(n : ℤ) - (2 * n : ℤ)|.toNat + a (n - 1)

end

end A021994.P1801682815630662801

/-! ## A021994.P7439399925909421872

`∑[lcm(A000079(n), A016295(n))]`
-/

namespace A021994.P7439399925909421872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021994.P7439399925909421872

/-! ## A021994.P15598198326316503998

`2*A021944(n)-A021914(n)`
-/

namespace A021994.P15598198326316503998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021944 n - A021914 n

end

end A021994.P15598198326316503998

/-! ## A021994.P13906115047159590753

`(A022000(n)+A021984(n))/2`
-/

namespace A021994.P13906115047159590753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022000 n + A021984 n : ℚ) / 2

end

end A021994.P13906115047159590753

/-! ## A021994.P14373157039402704033

`∑[A016295(n)*A117303(2*n+1)]`
-/

namespace A021994.P14373157039402704033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n * A117303 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021994.P14373157039402704033

