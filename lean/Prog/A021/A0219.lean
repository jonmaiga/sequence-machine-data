import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C011
import Seq.B006.C000
import Seq.Opaque.C001
import Seq.Opaque.C015

/-!
# A021904: Expansion of 1/((1-x)(1-4x)(1-8x)(1-9x)).

The programs for A021904, the canonical program `A021904.P7020825903415638066` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021904 has offset 0).

The definition of A021904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-22x+161x^2-428x^3+288x^4))` (program `A021904.P7020825903415638066`, by `A021904.P7020825903415638066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021904.P7020825903415638066

`ogf(1/(1-22x+161x^2-428x^3+288x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021904

/-- `ogf(1/(1-22x+161x^2-428x^3+288x^4))` -/
def P7020825903415638066.Spec : Prop :=
  ∀ n, P7020825903415638066.a n = A021904 n

theorem P7020825903415638066.correct : P7020825903415638066.Spec := by
  intro n
  simp only [A021904]

end A021904

/-! ## A021904.P11080168878951395664

`(21*9^(n+3)-30*8^(n+3)+14*4^(n+3)-5)/840`
-/

namespace A021904.P11080168878951395664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 9 ^ (n + 3) : ℤ) - (30 * 8 ^ (n + 3) : ℤ) + (14 * 4 ^ (n + 3) : ℤ) - 5 : ℚ) / 840

end

end A021904.P11080168878951395664

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

The programs for A021913, the canonical program `A021913.P3902253882929539198` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021913 has offset 0).

The definition of A021913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021913.P3902253882929539198

`floor(n%4/2)`

The canonical program, it is in `Seq.B000.C005`.
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

The programs for A021914, the canonical program `A021914.P14156928625881319412` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021914 has offset 0).

The definition of A021914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-23x+174x^2-472x^3+320x^4))` (program `A021914.P14156928625881319412`, by `A021914.P14156928625881319412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021914.P14156928625881319412

`ogf(1/(1-23x+174x^2-472x^3+320x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021914

/-- `ogf(1/(1-23x+174x^2-472x^3+320x^4))` -/
def P14156928625881319412.Spec : Prop :=
  ∀ n, P14156928625881319412.a n = A021914 n

theorem P14156928625881319412.correct : P14156928625881319412.Spec := by
  intro n
  simp only [A021914]

end A021914

/-! ## A021914.P6376640922673671551

`∑[A019671(n)]`
-/

namespace A021914.P6376640922673671551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021914.P6376640922673671551

namespace A021914

/-- `∑[A019671(n)]` -/
def P6376640922673671551.Spec : Prop :=
  ∀ n, P6376640922673671551.a n = A021914 n

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

The programs for A021924, the canonical program `A021924.P5924130423377341986` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021924 has offset 0).

The definition of A021924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-24x+187x^2-516x^3+352x^4))` (program `A021924.P5924130423377341986`, by `A021924.P5924130423377341986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021924.P5924130423377341986

`ogf(1/(1-24x+187x^2-516x^3+352x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021924

/-- `ogf(1/(1-24x+187x^2-516x^3+352x^4))` -/
def P5924130423377341986.Spec : Prop :=
  ∀ n, P5924130423377341986.a n = A021924 n

theorem P5924130423377341986.correct : P5924130423377341986.Spec := by
  intro n
  simp only [A021924]

end A021924

/-! ## A021924.P15040111319194809831

`∑[19*a(n-1)-88*a(n-2)+4^n]` with `a(0)=1, a(1)=23`
-/

namespace A021924.P15040111319194809831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n f1 =>
  19 * f1 (n - 1) - 88 * f1 (n - 2) + (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021924.P15040111319194809831

namespace A021924

/-- `∑[19*a(n-1)-88*a(n-2)+4^n]` -/
def P15040111319194809831.Spec : Prop :=
  ∀ n, P15040111319194809831.a n = A021924 n

end A021924

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

namespace A021924

/-- `∑[A019672(n)]` -/
def P5367042918540812666.Spec : Prop :=
  ∀ n, P5367042918540812666.a n = A021924 n

end A021924

/-! ## A021924.P6774722520417876080

`A016259(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021924.P6774722520417876080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 4 * a (n - 1)

end

end A021924.P6774722520417876080

namespace A021924

/-- `A016259(n)+4*a(n-1)` -/
def P6774722520417876080.Spec : Prop :=
  ∀ n, P6774722520417876080.a n = A021924 n

end A021924

/-! ## A021924.P18103072910801251460

`A016226(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A021924.P18103072910801251460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016226 n + 8 * a (n - 1)

end

end A021924.P18103072910801251460

namespace A021924

/-- `A016226(n)+8*a(n-1)` -/
def P18103072910801251460.Spec : Prop :=
  ∀ n, P18103072910801251460.a n = A021924 n

end A021924

/-! ## A021924.P127773914144058239

`A019672(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A021924.P127773914144058239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019672 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A021924.P127773914144058239

namespace A021924

/-- `A019672(round(sqrt(n²+1)))+a(n-1)` -/
def P127773914144058239.Spec : Prop :=
  ∀ n, P127773914144058239.a n = A021924 n

end A021924

/-! ## A021924.P3638069794508180807

`2*A021784(n)-A021764(n)`
-/

namespace A021924.P3638069794508180807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021784 n - A021764 n

end

end A021924.P3638069794508180807

namespace A021924

/-- `2*A021784(n)-A021764(n)` -/
def P3638069794508180807.Spec : Prop :=
  ∀ n, P3638069794508180807.a n = A021924 n

end A021924

/-! ## A021924.P4395317768536928684

`A021854(n)+A024439(n)-A021884(n)`
-/

namespace A021924.P4395317768536928684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n + (A024439 n - A021884 n)

end

end A021924.P4395317768536928684

namespace A021924

/-- `A021854(n)+A024439(n)-A021884(n)` -/
def P4395317768536928684.Spec : Prop :=
  ∀ n, P4395317768536928684.a n = A021924 n

end A021924

/-! ## A021924.P3005851272902732518

`A021394(n)+A028030(n)-A021764(n)`
-/

namespace A021924.P3005851272902732518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021394 n + (A028030 n - A021764 n)

end

end A021924.P3005851272902732518

namespace A021924

/-- `A021394(n)+A028030(n)-A021764(n)` -/
def P3005851272902732518.Spec : Prop :=
  ∀ n, P3005851272902732518.a n = A021924 n

end A021924

/-!
# A021929: Decimal expansion of 1/925.

The programs for A021929, the canonical program `A021929.P16187935444123050814` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021929 has offset 0).

The definition of A021929 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021929.anchor (n : ℕ) : A021929 n = ((10 ^ (n + 1) / 925 % 10 : ℕ) : ℤ)` in `Proof.A021.A021929`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021929.P16187935444123050814

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=8`

The canonical program, it is in `Seq.B000.C005`.
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

The programs for A021944, the canonical program `A021944.P4322277806947205782` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021944 has offset 0).

The definition of A021944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-25x+200x^2-560x^3+384x^4))` (program `A021944.P4322277806947205782`, by `A021944.P4322277806947205782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021944.P4322277806947205782

`ogf(1/(1-25x+200x^2-560x^3+384x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021944

/-- `ogf(1/(1-25x+200x^2-560x^3+384x^4))` -/
def P4322277806947205782.Spec : Prop :=
  ∀ n, P4322277806947205782.a n = A021944 n

theorem P4322277806947205782.correct : P4322277806947205782.Spec := by
  intro n
  simp only [A021944]

end A021944

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

namespace A021944

/-- `∑[A019677(n)]` -/
def P490065682151434806.Spec : Prop :=
  ∀ n, P490065682151434806.a n = A021944 n

end A021944

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

namespace A021944

/-- `∑[4^n*A000392(n+3)]` -/
def P13108956558627410126.Spec : Prop :=
  ∀ n, P13108956558627410126.a n = A021944 n

end A021944

/-! ## A021944.P16827232951299693796

`A019677(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A021944.P16827232951299693796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019677 (n % (n + 1)) + a (n - 1)

end

end A021944.P16827232951299693796

namespace A021944

/-- `A019677(n%(n+1))+a(n-1)` -/
def P16827232951299693796.Spec : Prop :=
  ∀ n, P16827232951299693796.a n = A021944 n

end A021944

/-! ## A021944.P5505499402348514418

`A019677(n+1-floor(atan(n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A021944.P5505499402348514418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019677 ((n + 1 : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat + a (n - 1)

end

end A021944.P5505499402348514418

namespace A021944

/-- `A019677(n+1-floor(atan(n+1)))+a(n-1)` -/
def P5505499402348514418.Spec : Prop :=
  ∀ n, P5505499402348514418.a n = A021944 n

end A021944

/-! ## A021944.P12879876466995603298

`A019677(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A021944.P12879876466995603298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019677 (A028310 n).toNat + a (n - 1)

end

end A021944.P12879876466995603298

namespace A021944

/-- `A019677(A028310(n))+a(n-1)` -/
def P12879876466995603298.Spec : Prop :=
  ∀ n, P12879876466995603298.a n = A021944 n

end A021944

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

namespace A021944

/-- `∑[∑[A001047(n+1)]*A000079(n)²]` -/
def P14149052653640313234.Spec : Prop :=
  ∀ n, P14149052653640313234.a n = A021944 n

end A021944

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

namespace A021944

/-- `∑[A000392(n+3)*A011782(n+1)²]` -/
def P8715695278020489729.Spec : Prop :=
  ∀ n, P8715695278020489729.a n = A021944 n

end A021944

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

namespace A021944

/-- `∑[∑[A001047(n+1)]*A000079(2*n)]` -/
def P13002184098148199970.Spec : Prop :=
  ∀ n, P13002184098148199970.a n = A021944 n

end A021944

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

namespace A021944

/-- `∑[A000392(n+3)*A011782(2*n+1)]` -/
def P12707039782569455973.Spec : Prop :=
  ∀ n, P12707039782569455973.a n = A021944 n

end A021944

/-!
# A021949: Decimal expansion of 1/945.

The programs for A021949, the canonical program `A021949.P2275516452730271419` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021949 has offset 0).

The definition of A021949 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021949.anchor (n : ℕ) : A021949 n = ((10 ^ (n + 1) / 945 % 10 : ℕ) : ℤ)` in `Proof.A021.A021949`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021949.P2275516452730271419

`8-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=5`

The canonical program, it is in `Seq.B000.C005`.
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

The programs for A021954, the canonical program `A021954.P9985912555844139131` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021954 has offset 0).

The definition of A021954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-24x+189x^2-526x^3+360x^4))` (program `A021954.P9985912555844139131`, by `A021954.P9985912555844139131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021954.P9985912555844139131

`ogf(1/(1-24x+189x^2-526x^3+360x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021954

/-- `ogf(1/(1-24x+189x^2-526x^3+360x^4))` -/
def P9985912555844139131.Spec : Prop :=
  ∀ n, P9985912555844139131.a n = A021954 n

theorem P9985912555844139131.correct : P9985912555844139131.Spec := by
  intro n
  simp only [A021954]

end A021954

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

namespace A021954

/-- `∑[A019682(n)]` -/
def P16095410017187446278.Spec : Prop :=
  ∀ n, P16095410017187446278.a n = A021954 n

end A021954

/-! ## A021954.P1055261187266818406

`2*A021914(n)-A021904(n)`
-/

namespace A021954.P1055261187266818406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021914 n - A021904 n

end

end A021954.P1055261187266818406

namespace A021954

/-- `2*A021914(n)-A021904(n)` -/
def P1055261187266818406.Spec : Prop :=
  ∀ n, P1055261187266818406.a n = A021954 n

end A021954

/-! ## A021954.P17649659020384280130

`(A028124(n)+A021774(n))/2`
-/

namespace A021954.P17649659020384280130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028124 n + A021774 n : ℚ) / 2

end

end A021954.P17649659020384280130

namespace A021954

/-- `(A028124(n)+A021774(n))/2` -/
def P17649659020384280130.Spec : Prop :=
  ∀ n, P17649659020384280130.a n = (A021954 n : ℚ)

end A021954

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

namespace A021954

/-- `∑[(A020970(n)+A019613(n))/2]` -/
def P16272555338241700535.Spec : Prop :=
  ∀ n, P16272555338241700535.a n = (A021954 n : ℚ)

end A021954

/-! ## A021954.P17203021314506030256

`A021854(n)+A024438(n)-A021904(n)`
-/

namespace A021954.P17203021314506030256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n + (A024438 n - A021904 n)

end

end A021954.P17203021314506030256

namespace A021954

/-- `A021854(n)+A024438(n)-A021904(n)` -/
def P17203021314506030256.Spec : Prop :=
  ∀ n, P17203021314506030256.a n = A021954 n

end A021954

/-! ## A021954.P16502991595214615583

`2*A021964(n)-A021984(n)`
-/

namespace A021954.P16502991595214615583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021964 n - A021984 n

end

end A021954.P16502991595214615583

namespace A021954

/-- `2*A021964(n)-A021984(n)` -/
def P16502991595214615583.Spec : Prop :=
  ∀ n, P16502991595214615583.a n = A021954 n

end A021954

/-!
# A021964: Expansion of g.f. 1/((1-x)*(1-4*x)*(1-9*x)*(1-11*x)).

The programs for A021964, the canonical program `A021964.P9629666442008538630` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021964 has offset 0).

The definition of A021964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-25x+203x^2-575x^3+396x^4))` (program `A021964.P9629666442008538630`, by `A021964.P9629666442008538630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021964.P9629666442008538630

`ogf(1/(1-25x+203x^2-575x^3+396x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021964

/-- `ogf(1/(1-25x+203x^2-575x^3+396x^4))` -/
def P9629666442008538630.Spec : Prop :=
  ∀ n, P9629666442008538630.a n = A021964 n

theorem P9629666442008538630.correct : P9629666442008538630.Spec := by
  intro n
  simp only [A021964]

end A021964

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

namespace A021964

/-- `∑[A019687(n)]` -/
def P10100307725056566932.Spec : Prop :=
  ∀ n, P10100307725056566932.a n = A021964 n

end A021964

/-! ## A021964.P7438053347521448903

`A016262(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021964.P7438053347521448903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016262 n + 4 * a (n - 1)

end

end A021964.P7438053347521448903

namespace A021964

/-- `A016262(n)+4*a(n-1)` -/
def P7438053347521448903.Spec : Prop :=
  ∀ n, P7438053347521448903.a n = A021964 n

end A021964

/-! ## A021964.P6906010328927069720

`2*A021884(n)-A021864(n)`
-/

namespace A021964.P6906010328927069720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021884 n - A021864 n

end

end A021964.P6906010328927069720

namespace A021964

/-- `2*A021884(n)-A021864(n)` -/
def P6906010328927069720.Spec : Prop :=
  ∀ n, P6906010328927069720.a n = A021964 n

end A021964

/-! ## A021964.P3821611728793827042

`A019687(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021964.P3821611728793827042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019687 n + a (A023443 n).toNat

end

end A021964.P3821611728793827042

namespace A021964

/-- `A019687(n)+a(A023443(n))` -/
def P3821611728793827042.Spec : Prop :=
  ∀ n, P3821611728793827042.a n = A021964 n

end A021964

/-! ## A021964.P16175111920923749389

`A021094(n)+A021294(n)-A021084(n)`
-/

namespace A021964.P16175111920923749389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021094 n + (A021294 n - A021084 n)

end

end A021964.P16175111920923749389

namespace A021964

/-- `A021094(n)+A021294(n)-A021084(n)` -/
def P16175111920923749389.Spec : Prop :=
  ∀ n, P16175111920923749389.a n = A021964 n

end A021964

/-! ## A021964.P9714398957764925572

`(A021984(n)+A021954(n))/2`
-/

namespace A021964.P9714398957764925572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021984 n + A021954 n : ℚ) / 2

end

end A021964.P9714398957764925572

namespace A021964

/-- `(A021984(n)+A021954(n))/2` -/
def P9714398957764925572.Spec : Prop :=
  ∀ n, P9714398957764925572.a n = (A021964 n : ℚ)

end A021964

/-!
# A021966: Decimal expansion of 1/962.

The programs for A021966, the canonical program `A021966.P17644527202577626942` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021966 has offset 0).

The definition of A021966 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021966.anchor (n : ℕ) : A021966 n = ((10 ^ (n + 1) / 962 % 10 : ℕ) : ℤ)` in `Proof.A021.A021966`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021966.P17644527202577626942

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=3`

The canonical program, it is in `Seq.B000.C005`.
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
# A021972: Decimal expansion of 1/968.

The programs for A021972, the canonical program `A021972.P4788987987909051599` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021972 has offset 0).

The definition of A021972 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021972.anchor (n : ℕ) : A021972 n = ((10 ^ (n + 1) / 968 % 10 : ℕ) : ℤ)` in `Proof.A021.A021972`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021972.P4788987987909051599

`ogf((x^2-x^3+3x^4-3x^6+5x^7+2x^8+x^9-3x^10-4x^11+x^12+2x^13+5x^14)/(1-x+x^11-x^12))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021972

/-- `ogf((x^2-x^3+3x^4-3x^6+5x^7+2x^8+x^9-3x^10-4x^11+x^12+2x^13+5x^14)/(1-x+x^11-x^12))` -/
def P4788987987909051599.Spec : Prop :=
  ∀ n, P4788987987909051599.a n = A021972 n

theorem P4788987987909051599.correct : P4788987987909051599.Spec := by
  intro n
  simp only [A021972]

end A021972

/-!
# A021974: Expansion of g.f. 1/((1-x)*(1-4*x)*(1-9*x)*(1-12*x)).

The programs for A021974, the canonical program `A021974.P3381134916289822423` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021974 has offset 0).

The definition of A021974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-26x+217x^2-624x^3+432x^4))` (program `A021974.P3381134916289822423`, by `A021974.P3381134916289822423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021974.P3381134916289822423

`ogf(1/(1-26x+217x^2-624x^3+432x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021974

/-- `ogf(1/(1-26x+217x^2-624x^3+432x^4))` -/
def P3381134916289822423.Spec : Prop :=
  ∀ n, P3381134916289822423.a n = A021974 n

theorem P3381134916289822423.correct : P3381134916289822423.Spec := by
  intro n
  simp only [A021974]

end A021974

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

namespace A021974

/-- `∑[A019722(n)]` -/
def P2299254710953773522.Spec : Prop :=
  ∀ n, P2299254710953773522.a n = A021974 n

end A021974

/-! ## A021974.P11663015580047152307

`A016263(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021974.P11663015580047152307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016263 n + 4 * a (n - 1)

end

end A021974.P11663015580047152307

namespace A021974

/-- `A016263(n)+4*a(n-1)` -/
def P11663015580047152307.Spec : Prop :=
  ∀ n, P11663015580047152307.a n = A021974 n

end A021974

/-! ## A021974.P14808294688281220264

`2*A021844(n)-A021824(n)`
-/

namespace A021974.P14808294688281220264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021844 n - A021824 n

end

end A021974.P14808294688281220264

namespace A021974

/-- `2*A021844(n)-A021824(n)` -/
def P14808294688281220264.Spec : Prop :=
  ∀ n, P14808294688281220264.a n = A021974 n

end A021974

/-! ## A021974.P2740204061886496629

`a(n-1)+A019722(n)+A000007(n)` with `a(0)=1`
-/

namespace A021974.P2740204061886496629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019722 n + A000007 n)

end

end A021974.P2740204061886496629

namespace A021974

/-- `a(n-1)+A019722(n)+A000007(n)` -/
def P2740204061886496629.Spec : Prop :=
  ∀ n, P2740204061886496629.a n = A021974 n

end A021974

/-! ## A021974.P11229280108547449155

`a(n-1)+A019722(n)*A057427(n)` with `a(0)=1`
-/

namespace A021974.P11229280108547449155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A019722 n * A057427 n

end

end A021974.P11229280108547449155

namespace A021974

/-- `a(n-1)+A019722(n)*A057427(n)` -/
def P11229280108547449155.Spec : Prop :=
  ∀ n, P11229280108547449155.a n = A021974 n

end A021974

/-! ## A021974.P2791748518051443587

`a(n-1)+A019722(n)*A267936(n+2)` with `a(0)=1`
-/

namespace A021974.P2791748518051443587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A019722 n * A267936 (n + 2)

end

end A021974.P2791748518051443587

namespace A021974

/-- `a(n-1)+A019722(n)*A267936(n+2)` -/
def P2791748518051443587.Spec : Prop :=
  ∀ n, P2791748518051443587.a n = A021974 n

end A021974

/-!
# A021979: Decimal expansion of 1/975.

The programs for A021979, the canonical program `A021979.P13417165036691263870` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021979 has offset 0).

The definition of A021979 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021979.anchor (n : ℕ) : A021979 n = ((10 ^ (n + 1) / 975 % 10 : ℕ) : ℤ)` in `Proof.A021.A021979`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021979.P6548155139900364811

`ogf((x^2-2x^3+4x^4)/(1-2x+2x^2-x^3))`
-/

namespace A021979.P6548155139900364811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -2, 4] [1, -2, 2, -1] n

end

end A021979.P6548155139900364811

namespace A021979

/-- `ogf((x^2-2x^3+4x^4)/(1-2x+2x^2-x^3))` -/
def P6548155139900364811.Spec : Prop :=
  ∀ n, P6548155139900364811.a n = A021979 n

end A021979

/-! ## A021979.P13417165036691263870

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B000.C005`.
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

The programs for A021984, the canonical program `A021984.P2960140366943347568` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021984 has offset 0).

The definition of A021984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-26x+219x^2-634x^3+440x^4))` (program `A021984.P2960140366943347568`, by `A021984.P2960140366943347568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021984.P2960140366943347568

`ogf(1/(1-26x+219x^2-634x^3+440x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021984

/-- `ogf(1/(1-26x+219x^2-634x^3+440x^4))` -/
def P2960140366943347568.Spec : Prop :=
  ∀ n, P2960140366943347568.a n = A021984 n

theorem P2960140366943347568.correct : P2960140366943347568.Spec := by
  intro n
  simp only [A021984]

end A021984

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

namespace A021984

/-- `∑[4^n*∑[(5/2)^n]]+11*a(n-1)` -/
def P12569760648143341117.Spec : Prop :=
  ∀ n, P12569760648143341117.a n = (A021984 n : ℚ)

end A021984

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

namespace A021984

/-- `∑[A019742(n)]` -/
def P15879060259303820139.Spec : Prop :=
  ∀ n, P15879060259303820139.a n = A021984 n

end A021984

/-! ## A021984.P12160568972096859890

`2*A021964(n)-A021954(n)`
-/

namespace A021984.P12160568972096859890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021964 n - A021954 n

end

end A021984.P12160568972096859890

namespace A021984

/-- `2*A021964(n)-A021954(n)` -/
def P12160568972096859890.Spec : Prop :=
  ∀ n, P12160568972096859890.a n = A021984 n

end A021984

/-! ## A021984.P10316907952049296584

`(A024444(n)+A021884(n))/2`
-/

namespace A021984.P10316907952049296584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024444 n + A021884 n : ℚ) / 2

end

end A021984.P10316907952049296584

namespace A021984

/-- `(A024444(n)+A021884(n))/2` -/
def P10316907952049296584.Spec : Prop :=
  ∀ n, P10316907952049296584.a n = (A021984 n : ℚ)

end A021984

/-! ## A021984.P16089614415399473442

`A016226(n+1)-A016225(n+1)`
-/

namespace A021984.P16089614415399473442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 (n + 1) - A016225 (n + 1)

end

end A021984.P16089614415399473442

namespace A021984

/-- `A016226(n+1)-A016225(n+1)` -/
def P16089614415399473442.Spec : Prop :=
  ∀ n, P16089614415399473442.a n = A021984 n

end A021984

/-! ## A021984.P13471986155664572810

`A021394(n)+A021714(n)-A021384(n)`
-/

namespace A021984.P13471986155664572810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021394 n + (A021714 n - A021384 n)

end

end A021984.P13471986155664572810

namespace A021984

/-- `A021394(n)+A021714(n)-A021384(n)` -/
def P13471986155664572810.Spec : Prop :=
  ∀ n, P13471986155664572810.a n = A021984 n

end A021984

/-! ## A021984.P6349461497816324907

`A021092(n)+A025983(n)-A021094(n)`
-/

namespace A021984.P6349461497816324907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n + (A025983 n - A021094 n)

end

end A021984.P6349461497816324907

namespace A021984

/-- `A021092(n)+A025983(n)-A021094(n)` -/
def P6349461497816324907.Spec : Prop :=
  ∀ n, P6349461497816324907.a n = A021984 n

end A021984

/-! ## A021984.P5343179852637960065

`2*A021994(n)-A022000(n)`
-/

namespace A021984.P5343179852637960065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021994 n - A022000 n

end

end A021984.P5343179852637960065

namespace A021984

/-- `2*A021994(n)-A022000(n)` -/
def P5343179852637960065.Spec : Prop :=
  ∀ n, P5343179852637960065.a n = A021984 n

end A021984

/-!
# A021988: Decimal expansion of 1/984.

The programs for A021988, the canonical program `A021988.P6413502429168806542` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021988 has offset 0).

The definition of A021988 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021988.anchor (n : ℕ) : A021988 n = ((10 ^ (n + 1) / 984 % 10 : ℕ) : ℤ)` in `Proof.A021.A021988`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021988.P6413502429168806542

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=6, a(6)=2, a(7)=6`

The canonical program, it is in `Seq.B000.C005`.
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
# A021992: Decimal expansion of 1/988.

The programs for A021992, the canonical program `A021992.P9072093177260430194` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021992 has offset 0).

The definition of A021992 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021992.anchor (n : ℕ) : A021992 n = ((10 ^ (n + 1) / 988 % 10 : ℕ) : ℤ)` in `Proof.A021.A021992`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021992.P9072093177260430194

`ogf((x^2-x^3+x^4+x^5-x^6+3x^7+x^8+2x^9-3x^10+5x^11)/(1-x+x^9-x^10))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021992

/-- `ogf((x^2-x^3+x^4+x^5-x^6+3x^7+x^8+2x^9-3x^10+5x^11)/(1-x+x^9-x^10))` -/
def P9072093177260430194.Spec : Prop :=
  ∀ n, P9072093177260430194.a n = A021992 n

theorem P9072093177260430194.correct : P9072093177260430194.Spec := by
  intro n
  simp only [A021992]

end A021992

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

