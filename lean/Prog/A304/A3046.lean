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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A304600: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304600, there is no canonical definition to state claims against.
-/

/-! ## A304600.P4928347553029480293

`A304604(∑[n+3]+7)`
-/

namespace A304600.P4928347553029480293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304600.P4928347553029480293

/-! ## A304600.P2609851020173802010

`A304604(A141214(n+1))%A303959(n+1)`
-/

namespace A304600.P2609851020173802010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304604 (A141214 (n + 1)).toNat) (A303959 (n + 1))

end

end A304600.P2609851020173802010

/-! ## A304600.P14951357745709673593

`A304604(A027379(n+2))%A303959(n+1)`
-/

namespace A304600.P14951357745709673593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304604 (A027379 (n + 2)).toNat) (A303959 (n + 1))

end

end A304600.P14951357745709673593

/-! ## A304600.P6942565559301545164

`or(A016389(n+1), A304604(A141214(n+1)))`
-/

namespace A304600.P6942565559301545164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (n + 1)) (A304604 (A141214 (n + 1)).toNat)

end

end A304600.P6942565559301545164

/-! ## A304600.P10034377592492758688

`A316867(2*n+1)+A304604(A141214(n+1))`
-/

namespace A304600.P10034377592492758688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (2 * n + 1) + A304604 (A141214 (n + 1)).toNat

end

end A304600.P10034377592492758688

/-!
# A304601: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304601, there is no canonical definition to state claims against.
-/

/-! ## A304601.P5881466596955816482

`A304604(∑[n+4]+11)`
-/

namespace A304601.P5881466596955816482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304601.P5881466596955816482

/-! ## A304601.P1766204036819142079

`lcm(A033999(n), A304604(A167499(n+3)))`
-/

namespace A304601.P1766204036819142079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A304604 (A167499 (n + 3)).toNat)

end

end A304601.P1766204036819142079

/-! ## A304601.P877194044282343771

`A304604(A167499(n+3))+A000007(n+2)`
-/

namespace A304601.P877194044282343771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167499 (n + 3)).toNat + A000007 (n + 2)

end

end A304601.P877194044282343771

/-! ## A304601.P17372662389987908396

`A304604(A167499(n+3))%A252545(n+1)`
-/

namespace A304601.P17372662389987908396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304604 (A167499 (n + 3)).toNat) (A252545 (n + 1))

end

end A304601.P17372662389987908396

/-! ## A304601.P16644167961276417067

`A304604(A056000(n)+15)%A304603(n+1)`
-/

namespace A304601.P16644167961276417067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304604 (A056000 n + 15).toNat) (A304603 (n + 1))

end

end A304601.P16644167961276417067

/-!
# A304602: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304602, there is no canonical definition to state claims against.
-/

/-! ## A304602.P2013129387992584690

`A304604(A056115(n)+21)`
-/

namespace A304602.P2013129387992584690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A056115 n + 21).toNat

end

end A304602.P2013129387992584690

/-! ## A304602.P11331848085267727606

`A304604(∑[A020710(n)]+16)`
-/

namespace A304602.P11331848085267727606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A304602.P11331848085267727606

/-! ## A304602.P5523920178890575602

`A304604(A167499(n+4)+1)`
-/

namespace A304602.P5523920178890575602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167499 (n + 4) + 1).toNat

end

end A304602.P5523920178890575602

/-! ## A304602.P9825679913912550542

`A304604(A167614(n+4)+3)`
-/

namespace A304602.P9825679913912550542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167614 (n + 4) + 3).toNat

end

end A304602.P9825679913912550542

/-! ## A304602.P757280358144489823

`A304604(A133263(n+5)+4)`
-/

namespace A304602.P757280358144489823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A133263 (n + 5) + 4).toNat

end

end A304602.P757280358144489823

/-!
# A304603: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304603, there is no canonical definition to state claims against.
-/

/-! ## A304603.P16855397275572259069

`A304604(A167487(n+5))`
-/

namespace A304603.P16855397275572259069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167487 (n + 5)).toNat

end

end A304603.P16855397275572259069

/-! ## A304603.P16830889380749909630

`A304604(A056119(n)+28)`
-/

namespace A304603.P16830889380749909630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A056119 n + 28).toNat

end

end A304603.P16830889380749909630

/-! ## A304603.P12509083824719543426

`A304604(eq[11, A066657(n)])`
-/

namespace A304603.P12509083824719543426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304603.P12509083824719543426

/-! ## A304603.P9453294532616294806

`A304604(A167614(n+5)+4)`
-/

namespace A304603.P9453294532616294806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167614 (n + 5) + 4).toNat

end

end A304603.P9453294532616294806

/-! ## A304603.P16633277575674493100

`A304604(A000124(n+6)+6)`
-/

namespace A304603.P16633277575674493100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A000124 (n + 6) + 6).toNat

end

end A304603.P16633277575674493100

/-!
# A304604: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304604, there is no canonical definition to state claims against.
-/

/-! ## A304604.P2237687660522758488

`A303961(n+1)+A082858(A059441(n+1))`
-/

namespace A304604.P2237687660522758488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (n + 1) + A082858 (A059441 (n + 1)).toNat

end

end A304604.P2237687660522758488

/-! ## A304604.P3018529211044848908

`A303961(n+1)+A289618(A317525(n+1))`
-/

namespace A304604.P3018529211044848908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (n + 1) + A289618 (A317525 (n + 1)).toNat

end

end A304604.P3018529211044848908

/-! ## A304604.P612184658462064177

`A316420(n+1)-A321936(A174545(n)+2)`
-/

namespace A304604.P612184658462064177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) - A321936 (A174545 n + 2).toNat

end

end A304604.P612184658462064177

/-! ## A304604.P16338737559371092482

`A316420(n+1)-A321936(A001263(n+1))²`
-/

namespace A304604.P16338737559371092482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) - A321936 (A001263 (n + 1)).toNat ^ 2

end

end A304604.P16338737559371092482

/-! ## A304604.P2503989526869193945

`A316420(n+1)-A124762(A143007(n))`
-/

namespace A304604.P2503989526869193945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) - A124762 (A143007 n).toNat

end

end A304604.P2503989526869193945

/-!
# A304605: a(n) = 48*2^n + 26 (n>=1).

The programs for A304605, the canonical program `A304605.P6033134809895808055` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304605 has offset 1).

The definition of A304605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*2^(n+1)+26` (program `A304605.P6033134809895808055`, by `A304605.P6033134809895808055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304605.P6033134809895808055

`48*2^(n+1)+26`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304605

/-- `48*2^(n+1)+26` -/
def P6033134809895808055.Spec : Prop :=
  ∀ n, (P6033134809895808055.a n : ℤ) = A304605 (n + 1)

theorem P6033134809895808055.correct : P6033134809895808055.Spec := by
  intro n
  simp only [A304605, Nat.add_sub_cancel]

end A304605

/-! ## A304605.P11932195735869057331

`2*(A211715(n+2)+3)`
-/

namespace A304605.P11932195735869057331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211715 (n + 2) + 3)

end

end A304605.P11932195735869057331

namespace A304605

/-- `2*(A211715(n+2)+3)` -/
def P11932195735869057331.Spec : Prop :=
  ∀ n, P11932195735869057331.a n = A304605 (n + 1)

theorem P11932195735869057331.correct : P11932195735869057331.Spec := by
  intro n
  simp only [A304605, Nat.add_sub_cancel, A304605.P11932195735869057331.a, A304605.P6033134809895808055.a, A211715, A211715.P383817245176996411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304605

/-! ## A304605.P8025443256402099425

`lcm(2, 24*A020737(n)+2)`
-/

namespace A304605.P8025443256402099425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (24 * A020737 n + 2)

end

end A304605.P8025443256402099425

namespace A304605

/-- `lcm(2, 24*A020737(n)+2)` -/
def P8025443256402099425.Spec : Prop :=
  ∀ n, (P8025443256402099425.a n : ℤ) = A304605 (n + 1)

end A304605

/-! ## A304605.P2555320837186532657

`A113770(A164094(n+1))`
-/

namespace A304605.P2555320837186532657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 (A164094 (n + 1)).toNat

end

end A304605.P2555320837186532657

namespace A304605

/-- `A113770(A164094(n+1))` -/
def P2555320837186532657.Spec : Prop :=
  ∀ n, P2555320837186532657.a n = A304605 (n + 1)

end A304605

/-! ## A304605.P2000769524972944635

`A026472(A175161(n+1))`
-/

namespace A304605.P2000769524972944635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026472 (A175161 (n + 1)).toNat

end

end A304605.P2000769524972944635

namespace A304605

/-- `A026472(A175161(n+1))` -/
def P2000769524972944635.Spec : Prop :=
  ∀ n, P2000769524972944635.a n = A304605 (n + 1)

end A304605

/-!
# A304606: a(n) = 54*2^n + 28 (n >= 1).

The programs for A304606, the canonical program `A304606.P7418615758207653953` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304606 has offset 1).

The definition of A304606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*2^(n+1)+28` (program `A304606.P7418615758207653953`, by `A304606.P7418615758207653953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304606.P7418615758207653953

`54*2^(n+1)+28`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304606

/-- `54*2^(n+1)+28` -/
def P7418615758207653953.Spec : Prop :=
  ∀ n, (P7418615758207653953.a n : ℤ) = A304606 (n + 1)

theorem P7418615758207653953.correct : P7418615758207653953.Spec := by
  intro n
  simp only [A304606, Nat.add_sub_cancel]

end A304606

/-! ## A304606.P17168688140554680336

`4*(A175806(n)+7)`
-/

namespace A304606.P17168688140554680336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A175806 n + 7)

end

end A304606.P17168688140554680336

namespace A304606

/-- `4*(A175806(n)+7)` -/
def P17168688140554680336.Spec : Prop :=
  ∀ n, P17168688140554680336.a n = A304606 (n + 1)

theorem P17168688140554680336.correct : P17168688140554680336.Spec := by
  intro n
  simp only [A304606, Nat.add_sub_cancel, A304606.P17168688140554680336.a, A304606.P7418615758207653953.a, A175806, A175806.P10746636583835692110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304606

/-! ## A304606.P10500012836644680444

`lcm(2, 3*A305154(n)+1)`
-/

namespace A304606.P10500012836644680444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * A305154 n + 1)

end

end A304606.P10500012836644680444

namespace A304606

/-- `lcm(2, 3*A305154(n)+1)` -/
def P10500012836644680444.Spec : Prop :=
  ∀ n, (P10500012836644680444.a n : ℤ) = A304606 (n + 1)

end A304606

/-! ## A304606.P12784121396962345094

`4*(9*A004119(n+1)-2)`
-/

namespace A304606.P12784121396962345094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (9 * A004119 (n + 1) - 2)

end

end A304606.P12784121396962345094

namespace A304606

/-- `4*(9*A004119(n+1)-2)` -/
def P12784121396962345094.Spec : Prop :=
  ∀ n, P12784121396962345094.a n = A304606 (n + 1)

end A304606

/-! ## A304606.P7662484330173990734

`2*(9*A164094(n+1)-4)`
-/

namespace A304606.P7662484330173990734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (9 * A164094 (n + 1) - 4)

end

end A304606.P7662484330173990734

namespace A304606

/-- `2*(9*A164094(n+1)-4)` -/
def P7662484330173990734.Spec : Prop :=
  ∀ n, P7662484330173990734.a n = A304606 (n + 1)

theorem P7662484330173990734.correct : P7662484330173990734.Spec := by
  intro n
  simp only [A304606, Nat.add_sub_cancel, A304606.P7662484330173990734.a, A304606.P7418615758207653953.a, A164094, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304606

/-!
# A304607: a(n) = 252*2^n + 140 (n>=1).

The programs for A304607, the canonical program `A304607.P11155976739498072822` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304607 has offset 1).

The definition of A304607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `252*2^(n+1)+140` (program `A304607.P11155976739498072822`, by `A304607.P11155976739498072822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304607.P11155976739498072822

`252*2^(n+1)+140`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304607

/-- `252*2^(n+1)+140` -/
def P11155976739498072822.Spec : Prop :=
  ∀ n, (P11155976739498072822.a n : ℤ) = A304607 (n + 1)

theorem P11155976739498072822.correct : P11155976739498072822.Spec := by
  intro n
  simp only [A304607, Nat.add_sub_cancel]

end A304607

/-! ## A304607.P6836863232033301131

`14*(A182464(n)+22)`
-/

namespace A304607.P6836863232033301131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (A182464 n + 22)

end

end A304607.P6836863232033301131

namespace A304607

/-- `14*(A182464(n)+22)` -/
def P6836863232033301131.Spec : Prop :=
  ∀ n, P6836863232033301131.a n = A304607 (n + 1)

end A304607

/-! ## A304607.P3957095030426926295

`4*(A196657(n)+34)`
-/

namespace A304607.P3957095030426926295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A196657 n + 34)

end

end A304607.P3957095030426926295

namespace A304607

/-- `4*(A196657(n)+34)` -/
def P3957095030426926295.Spec : Prop :=
  ∀ n, P3957095030426926295.a n = A304607 (n + 1)

theorem P3957095030426926295.correct : P3957095030426926295.Spec := by
  intro n
  simp only [A304607, Nat.add_sub_cancel, A304607.P3957095030426926295.a, A304607.P11155976739498072822.a, A196657, A196657.P10101108946596074271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304607

/-! ## A304607.P6104900445513367343

`14*Δ[A250765(n+1)]`
-/

namespace A304607.P6104900445513367343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (f1 (n + 1) - f1 n)

end

end A304607.P6104900445513367343

namespace A304607

/-- `14*Δ[A250765(n+1)]` -/
def P6104900445513367343.Spec : Prop :=
  ∀ n, P6104900445513367343.a n = A304607 (n + 1)

theorem P6104900445513367343.correct : P6104900445513367343.Spec := by
  intro n
  simp only [A304607, Nat.add_sub_cancel, A304607.P6104900445513367343.f1, A304607.P6104900445513367343.a, A304607.P11155976739498072822.a, A250765, A250765.P12194201720444158958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304607

/-! ## A304607.P9109075436992311861

`28*(A122041(n+1)-A028399(n+2))`
-/

namespace A304607.P9109075436992311861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * (A122041 (n + 1) - A028399 (n + 2))

end

end A304607.P9109075436992311861

namespace A304607

/-- `28*(A122041(n+1)-A028399(n+2))` -/
def P9109075436992311861.Spec : Prop :=
  ∀ n, P9109075436992311861.a n = A304607 (n + 1)

end A304607

/-! ## A304607.P6749853830927676525

`(A008596(2*n+1)-A008596(2*n))*A305060(n+1)`
-/

namespace A304607.P6749853830927676525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008596 (2 * n + 1) - A008596 (2 * n)) * A305060 (n + 1)

end

end A304607.P6749853830927676525

namespace A304607

/-- `(A008596(2*n+1)-A008596(2*n))*A305060(n+1)` -/
def P6749853830927676525.Spec : Prop :=
  ∀ n, P6749853830927676525.a n = A304607 (n + 1)

theorem P6749853830927676525.correct : P6749853830927676525.Spec := by
  intro n
  simp only [A304607, Nat.add_sub_cancel, A304607.P6749853830927676525.a, A304607.P11155976739498072822.a, A008596, A008596.P5483684624845691048.a, A305060, A305060.P11071758838076518638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304607

/-! ## A304607.P617821139234376670

`(A305064(n+7)-A305064(n+2))%A305064(n+4)`
-/

namespace A304607.P617821139234376670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305064 (n + 7) - A305064 (n + 2)) (A305064 (n + 4))

end

end A304607.P617821139234376670

namespace A304607

/-- `(A305064(n+7)-A305064(n+2))%A305064(n+4)` -/
def P617821139234376670.Spec : Prop :=
  ∀ n, P617821139234376670.a n = A304607 (n + 1)

end A304607

/-!
# A304608: a(n) = 288*2^n + 178 (n >= 1).

The programs for A304608, the canonical program `A304608.P13819328881160574775` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304608 has offset 1).

The definition of A304608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `288*2^(n+1)+178` (program `A304608.P13819328881160574775`, by `A304608.P13819328881160574775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304608.P13819328881160574775

`288*2^(n+1)+178`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304608

/-- `288*2^(n+1)+178` -/
def P13819328881160574775.Spec : Prop :=
  ∀ n, (P13819328881160574775.a n : ℤ) = A304608 (n + 1)

theorem P13819328881160574775.correct : P13819328881160574775.Spec := by
  intro n
  simp only [A304608, Nat.add_sub_cancel]

end A304608

/-! ## A304608.P8111139110369803506

`2*(A253155(n+6)-3)`
-/

namespace A304608.P8111139110369803506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253155 (n + 6) - 3)

end

end A304608.P8111139110369803506

namespace A304608

/-- `2*(A253155(n+6)-3)` -/
def P8111139110369803506.Spec : Prop :=
  ∀ n, P8111139110369803506.a n = A304608 (n + 1)

end A304608

/-! ## A304608.P1348511495475507361

`2*(Δ[Δ[A250608(n+2)]]+5)`
-/

namespace A304608.P1348511495475507361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250608 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 5)

end

end A304608.P1348511495475507361

namespace A304608

/-- `2*(Δ[Δ[A250608(n+2)]]+5)` -/
def P1348511495475507361.Spec : Prop :=
  ∀ n, P1348511495475507361.a n = A304608 (n + 1)

theorem P1348511495475507361.correct : P1348511495475507361.Spec := by
  intro n
  simp only [A304608, Nat.add_sub_cancel, A304608.P1348511495475507361.f2, A304608.P1348511495475507361.f1, A304608.P1348511495475507361.a, A304608.P13819328881160574775.a, A250608, A250608.P10006167449874516969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304608

/-!
# A304609: a(n) = 114*n - 20.

The programs for A304609, the canonical program `A304609.P12324045362695345156` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304609 has offset 1).

The definition of A304609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `114*(n+1)-20` (program `A304609.P12324045362695345156`, by `A304609.P12324045362695345156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304609.P12324045362695345156

`114*(n+1)-20`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304609

/-- `114*(n+1)-20` -/
def P12324045362695345156.Spec : Prop :=
  ∀ n, P12324045362695345156.a n = A304609 (n + 1)

theorem P12324045362695345156.correct : P12324045362695345156.Spec := by
  intro n
  simp only [A304609, Nat.add_sub_cancel]

end A304609

/-!
# A304610: a(n) = 157*n - 40 (n>=1).

The programs for A304610, the canonical program `A304610.P16456618211450829592` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304610 has offset 1).

The definition of A304610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `157*(n+1)-40` (program `A304610.P16456618211450829592`, by `A304610.P16456618211450829592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304610.P16456618211450829592

`157*(n+1)-40`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304610

/-- `157*(n+1)-40` -/
def P16456618211450829592.Spec : Prop :=
  ∀ n, P16456618211450829592.a n = A304610 (n + 1)

theorem P16456618211450829592.correct : P16456618211450829592.Spec := by
  intro n
  simp only [A304610, Nat.add_sub_cancel]

end A304610

/-!
# A304611: a(n) = 155*n - 38.

The programs for A304611, the canonical program `A304611.P1771020756992507388` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304611 has offset 1).

The definition of A304611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `155*(n+1)-38` (program `A304611.P1771020756992507388`, by `A304611.P1771020756992507388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304611.P1771020756992507388

`155*(n+1)-38`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304611

/-- `155*(n+1)-38` -/
def P1771020756992507388.Spec : Prop :=
  ∀ n, P1771020756992507388.a n = A304611 (n + 1)

theorem P1771020756992507388.correct : P1771020756992507388.Spec := by
  intro n
  simp only [A304611, Nat.add_sub_cancel]

end A304611

/-!
# A304612: a(n) = 75*2^n - 38.

The programs for A304612, the canonical program `A304612.P12006408916224947038` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304612 has offset 0).

The definition of A304612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `75*2^n-38` (program `A304612.P12006408916224947038`, by `A304612.P12006408916224947038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304612.P12006408916224947038

`75*2^n-38`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304612

/-- `75*2^n-38` -/
def P12006408916224947038.Spec : Prop :=
  ∀ n, P12006408916224947038.a n = A304612 n

theorem P12006408916224947038.correct : P12006408916224947038.Spec := by
  intro n
  simp only [A304612]

end A304612

/-! ## A304612.P12488062997136757086

`2*(a(n-1)+19)` with `a(0)=37`
-/

namespace A304612.P12488062997136757086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [37] fun n a =>
  2 * (a (n - 1) + 19)

end

end A304612.P12488062997136757086

namespace A304612

/-- `2*(a(n-1)+19)` -/
def P12488062997136757086.Spec : Prop :=
  ∀ n, (P12488062997136757086.a n : ℤ) = A304612 n

theorem P12488062997136757086.correct : P12488062997136757086.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304612, Nat.add_sub_cancel, A304612.P12488062997136757086.a, A304612.P12006408916224947038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304612, Nat.add_sub_cancel, A304612.P12488062997136757086.a, A304612.P12006408916224947038.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304612

/-! ## A304612.P12934290578345004961

`∑[or(2*a(n-1), A011782(n))]` with `a(0)=37`
-/

namespace A304612.P12934290578345004961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  Int.lor (2 * f1 (n - 1)) (A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304612.P12934290578345004961

namespace A304612

/-- `∑[or(2*a(n-1), A011782(n))]` -/
def P12934290578345004961.Spec : Prop :=
  ∀ n, P12934290578345004961.a n = A304612 n

end A304612

/-! ## A304612.P11190582397449627476

`∑[A171390(n+1)+A094373(n)]`
-/

namespace A304612.P11190582397449627476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171390 (n + 1) + A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304612.P11190582397449627476

namespace A304612

/-- `∑[A171390(n+1)+A094373(n)]` -/
def P11190582397449627476.Spec : Prop :=
  ∀ n, P11190582397449627476.a n = A304612 n

end A304612

/-! ## A304612.P6565750491967375872

`∑[A110288(n+1)-A011782(n)]`
-/

namespace A304612.P6565750491967375872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110288 (n + 1) - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304612.P6565750491967375872

namespace A304612

/-- `∑[A110288(n+1)-A011782(n)]` -/
def P6565750491967375872.Spec : Prop :=
  ∀ n, P6565750491967375872.a n = A304612 n

end A304612

/-! ## A304612.P46568598129147543

`∑[2*A110288(n)-A011782(n)]`
-/

namespace A304612.P46568598129147543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110288 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304612.P46568598129147543

namespace A304612

/-- `∑[2*A110288(n)-A011782(n)]` -/
def P46568598129147543.Spec : Prop :=
  ∀ n, P46568598129147543.a n = A304612 n

end A304612

/-! ## A304612.P2231328097002769644

`∑[A003945(n)+3*A003945(n+3)]`
-/

namespace A304612.P2231328097002769644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + 3 * A003945 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304612.P2231328097002769644

namespace A304612

/-- `∑[A003945(n)+3*A003945(n+3)]` -/
def P2231328097002769644.Spec : Prop :=
  ∀ n, P2231328097002769644.a n = A304612 n

end A304612

/-! ## A304612.P6613890524099892591

`Δ[∑[A304171(n)]-A304172(n)]`
-/

namespace A304612.P6613890524099892591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304171 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A304172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304612.P6613890524099892591

namespace A304612

/-- `Δ[∑[A304171(n)]-A304172(n)]` -/
def P6613890524099892591.Spec : Prop :=
  ∀ n, P6613890524099892591.a n = A304612 n

end A304612

/-!
# A304613: a(n) = 87*2^n - 45.

The programs for A304613, the canonical program `A304613.P12481074168801310373` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304613 has offset 0).

The definition of A304613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `87*2^n-45` (program `A304613.P12481074168801310373`, by `A304613.P12481074168801310373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304613.P12481074168801310373

`87*2^n-45`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304613

/-- `87*2^n-45` -/
def P12481074168801310373.Spec : Prop :=
  ∀ n, P12481074168801310373.a n = A304613 n

theorem P12481074168801310373.correct : P12481074168801310373.Spec := by
  intro n
  simp only [A304613]

end A304613

/-! ## A304613.P2941928106711109531

`abs(7-A304171(n))`
-/

namespace A304613.P2941928106711109531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A304171 n|

end

end A304613.P2941928106711109531

namespace A304613

/-- `abs(7-A304171(n))` -/
def P2941928106711109531.Spec : Prop :=
  ∀ n, P2941928106711109531.a n = A304613 n

end A304613

/-! ## A304613.P18311252400715846608

`(A304171(n)-7)%A304172(n)`
-/

namespace A304613.P18311252400715846608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304171 n - 7) (A304172 n)

end

end A304613.P18311252400715846608

namespace A304613

/-- `(A304171(n)-7)%A304172(n)` -/
def P18311252400715846608.Spec : Prop :=
  ∀ n, P18311252400715846608.a n = A304613 n

end A304613

/-! ## A304613.P14581541008334562103

`(A304612(n)+A304172(n))%A304171(n)`
-/

namespace A304613.P14581541008334562103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304612 n + A304172 n) (A304171 n)

end

end A304613.P14581541008334562103

namespace A304613

/-- `(A304612(n)+A304172(n))%A304171(n)` -/
def P14581541008334562103.Spec : Prop :=
  ∀ n, P14581541008334562103.a n = A304613 n

end A304613

/-! ## A304613.P9898653414067230293

`(A304171(n)-7)*A054977(A332063(n+1))`
-/

namespace A304613.P9898653414067230293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304171 n - 7) * A054977 (A332063 (n + 1)).toNat

end

end A304613.P9898653414067230293

namespace A304613

/-- `(A304171(n)-7)*A054977(A332063(n+1))` -/
def P9898653414067230293.Spec : Prop :=
  ∀ n, P9898653414067230293.a n = A304613 n

end A304613

/-!
# A304614: a(n) = 420*2^n - 222.

The programs for A304614, the canonical program `A304614.P6337094618371216629` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304614 has offset 0).

The definition of A304614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `420*2^n-222` (program `A304614.P6337094618371216629`, by `A304614.P6337094618371216629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304614.P6337094618371216629

`420*2^n-222`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304614

/-- `420*2^n-222` -/
def P6337094618371216629.Spec : Prop :=
  ∀ n, P6337094618371216629.a n = A304614 n

theorem P6337094618371216629.correct : P6337094618371216629.Spec := by
  intro n
  simp only [A304614]

end A304614

/-! ## A304614.P6826781352867120173

`A072702(A173873(n+2))`
-/

namespace A304614.P6826781352867120173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072702 (A173873 (n + 2)).toNat

end

end A304614.P6826781352867120173

namespace A304614

/-- `A072702(A173873(n+2))` -/
def P6826781352867120173.Spec : Prop :=
  ∀ n, P6826781352867120173.a n = A304614 n

end A304614

/-! ## A304614.P3700158046139023257

`3*A047356(A265207(2*n+3))`
-/

namespace A304614.P3700158046139023257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047356 (A265207 (2 * n + 3)).toNat

end

end A304614.P3700158046139023257

namespace A304614

/-- `3*A047356(A265207(2*n+3))` -/
def P3700158046139023257.Spec : Prop :=
  ∀ n, P3700158046139023257.a n = A304614 n

end A304614

/-!
# A304615: a(n) = 507*2^n - 273.

The programs for A304615, the canonical program `A304615.P13663790108026372793` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304615 has offset 0).

The definition of A304615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `507*2^n-273` (program `A304615.P13663790108026372793`, by `A304615.P13663790108026372793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304615.P13663790108026372793

`507*2^n-273`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304615

/-- `507*2^n-273` -/
def P13663790108026372793.Spec : Prop :=
  ∀ n, P13663790108026372793.a n = A304615 n

theorem P13663790108026372793.correct : P13663790108026372793.Spec := by
  intro n
  simp only [A304615]

end A304615

/-! ## A304615.P7061092478930810865

`A304516(n+4)%(A304513(n+1)-A304513(n+5))`
-/

namespace A304615.P7061092478930810865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304516 (n + 4)) (A304513 (n + 1) - A304513 (n + 5))

end

end A304615.P7061092478930810865

namespace A304615

/-- `A304516(n+4)%(A304513(n+1)-A304513(n+5))` -/
def P7061092478930810865.Spec : Prop :=
  ∀ n, P7061092478930810865.a n = A304615 n

end A304615

/-!
# A304616: a(n) = 81*n^2 - 69*n + 24.

The programs for A304616, the canonical program `A304616.P9781622283682838333` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304616 has offset 0).

The definition of A304616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*n²-69*n+24` (program `A304616.P9781622283682838333`, by `A304616.P9781622283682838333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304616.P9781622283682838333

`81*n²-69*n+24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304616

/-- `81*n²-69*n+24` -/
def P9781622283682838333.Spec : Prop :=
  ∀ n, P9781622283682838333.a n = A304616 n

theorem P9781622283682838333.correct : P9781622283682838333.Spec := by
  intro n
  simp only [A304616]

end A304616

/-! ## A304616.P17946196249153159451

`∑[162+a(n-1)]` with `a(0)=24, a(1)=12`
-/

namespace A304616.P17946196249153159451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24, 12] fun n f1 =>
  162 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304616.P17946196249153159451

namespace A304616

/-- `∑[162+a(n-1)]` -/
def P17946196249153159451.Spec : Prop :=
  ∀ n, (P17946196249153159451.a n : ℤ) = A304616 n

end A304616

/-! ## A304616.P7667265543456405806

`6*(A255187(n)+4+n)`
-/

namespace A304616.P7667265543456405806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A255187 n + 4 + (n : ℤ))

end

end A304616.P7667265543456405806

namespace A304616

/-- `6*(A255187(n)+4+n)` -/
def P7667265543456405806.Spec : Prop :=
  ∀ n, P7667265543456405806.a n = A304616 n

end A304616

/-! ## A304616.P2454760240744813120

`A008588(A255187(n)+4+n)`
-/

namespace A304616.P2454760240744813120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A255187 n + 4 + (n : ℤ)).toNat

end

end A304616.P2454760240744813120

namespace A304616

/-- `A008588(A255187(n)+4+n)` -/
def P2454760240744813120.Spec : Prop :=
  ∀ n, P2454760240744813120.a n = A304616 n

end A304616

/-! ## A304616.P4027812091312004643

`A008458(A020705(A255187(n)+n))`
-/

namespace A304616.P4027812091312004643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A020705 (A255187 n + (n : ℤ)).toNat).toNat

end

end A304616.P4027812091312004643

namespace A304616

/-- `A008458(A020705(A255187(n)+n))` -/
def P4027812091312004643.Spec : Prop :=
  ∀ n, P4027812091312004643.a n = A304616 n

end A304616

/-!
# A304617: a(n) = 324*n^2 - 564*n + 321 (n>=1).

The programs for A304617, the canonical program `A304617.P5071464088220647776` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304617 has offset 1).

The definition of A304617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*(n+1)²-564*(n+1)+321` (program `A304617.P5071464088220647776`, by `A304617.P5071464088220647776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304617.P5071464088220647776

`324*(n+1)²-564*(n+1)+321`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304617

/-- `324*(n+1)²-564*(n+1)+321` -/
def P5071464088220647776.Spec : Prop :=
  ∀ n, P5071464088220647776.a n = A304617 (n + 1)

theorem P5071464088220647776.correct : P5071464088220647776.Spec := by
  intro n
  simp only [A304617, Nat.add_sub_cancel]

end A304617

/-!
# A304618: a(n) = 108*n^2 - 228*n + 114 (n>=2).

The programs for A304618, the canonical program `A304618.P2211931468448479037` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304618 has offset 2).

The definition of A304618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `108*(n+2)²-228*(n+2)+114` (program `A304618.P2211931468448479037`, by `A304618.P2211931468448479037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304618.P2211931468448479037

`108*(n+2)²-228*(n+2)+114`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304618

/-- `108*(n+2)²-228*(n+2)+114` -/
def P2211931468448479037.Spec : Prop :=
  ∀ n, P2211931468448479037.a n = A304618 (n + 2)

theorem P2211931468448479037.correct : P2211931468448479037.Spec := by
  intro n
  simp only [A304618, Nat.add_sub_cancel]

end A304618

/-! ## A304618.P18410914038077424234

`3*(A304380(n+1)-2)`
-/

namespace A304618.P18410914038077424234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A304380 (n + 1) - 2)

end

end A304618.P18410914038077424234

namespace A304618

/-- `3*(A304380(n+1)-2)` -/
def P18410914038077424234.Spec : Prop :=
  ∀ n, P18410914038077424234.a n = A304618 (n + 2)

theorem P18410914038077424234.correct : P18410914038077424234.Spec := by
  intro n
  simp only [A304618, Nat.add_sub_cancel, A304618.P18410914038077424234.a, A304618.P2211931468448479037.a, A304380, A304380.P4205740382854217177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304618

/-! ## A304618.P9377565769741508607

`Δ[(A244803(n+1)+n+1)*A016777(n+1)]`
-/

namespace A304618.P9377565769741508607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244803 (n + 1) + (n : ℤ) + 1) * A016777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304618.P9377565769741508607

namespace A304618

/-- `Δ[(A244803(n+1)+n+1)*A016777(n+1)]` -/
def P9377565769741508607.Spec : Prop :=
  ∀ n, P9377565769741508607.a n = A304618 (n + 2)

theorem P9377565769741508607.correct : P9377565769741508607.Spec := by
  intro n
  simp only [A304618, Nat.add_sub_cancel, A304618.P9377565769741508607.f1, A304618.P9377565769741508607.a, A304618.P2211931468448479037.a, A016777, A016777.P9931792138852554157.a, A244803, A244803.P8350523515693649205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304618

/-! ## A304618.P10388371914473378968

`abs(A014642(3*(n+1))-6)`
-/

namespace A304618.P10388371914473378968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014642 (3 * (n + 1)) - 6|

end

end A304618.P10388371914473378968

namespace A304618

/-- `abs(A014642(3*(n+1))-6)` -/
def P10388371914473378968.Spec : Prop :=
  ∀ n, P10388371914473378968.a n = A304618 (n + 2)

end A304618

/-! ## A304618.P9197346818406023683

`A194999(A276819(n+1))`
-/

namespace A304618.P9197346818406023683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194999 (A276819 (n + 1)).toNat

end

end A304618.P9197346818406023683

namespace A304618

/-- `A194999(A276819(n+1))` -/
def P9197346818406023683.Spec : Prop :=
  ∀ n, P9197346818406023683.a n = A304618 (n + 2)

end A304618

/-!
# A304619: a(n) = 324*n^2 - 804*n + 468 (n>=2).

The programs for A304619, the canonical program `A304619.P2259313765021729219` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304619 has offset 2).

The definition of A304619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*(n+2)²-804*(n+2)+468` (program `A304619.P2259313765021729219`, by `A304619.P2259313765021729219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304619.P2259313765021729219

`324*(n+2)²-804*(n+2)+468`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304619

/-- `324*(n+2)²-804*(n+2)+468` -/
def P2259313765021729219.Spec : Prop :=
  ∀ n, P2259313765021729219.a n = A304619 (n + 2)

theorem P2259313765021729219.correct : P2259313765021729219.Spec := by
  intro n
  simp only [A304619, Nat.add_sub_cancel]

end A304619

/-! ## A304619.P1330384257654608930

`6*(A304381(n+1)-6)`
-/

namespace A304619.P1330384257654608930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A304381 (n + 1) - 6)

end

end A304619.P1330384257654608930

namespace A304619

/-- `6*(A304381(n+1)-6)` -/
def P1330384257654608930.Spec : Prop :=
  ∀ n, P1330384257654608930.a n = A304619 (n + 2)

theorem P1330384257654608930.correct : P1330384257654608930.Spec := by
  intro n
  simp only [A304619, Nat.add_sub_cancel, A304619.P1330384257654608930.a, A304619.P2259313765021729219.a, A304381, A304381.P8101329019813229722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304619

/-! ## A304619.P843621447539116502

`12*(A304503(n)+A005408(n))`
-/

namespace A304619.P843621447539116502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A304503 n + A005408 n)

end

end A304619.P843621447539116502

namespace A304619

/-- `12*(A304503(n)+A005408(n))` -/
def P843621447539116502.Spec : Prop :=
  ∀ n, P843621447539116502.a n = A304619 (n + 2)

theorem P843621447539116502.correct : P843621447539116502.Spec := by
  intro n
  simp only [A304619, Nat.add_sub_cancel, A304619.P843621447539116502.a, A304619.P2259313765021729219.a, A005408, A005408.P17437947328870227736.a, A304503, A304503.P4104484190920118502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304619

/-!
# A304620: Expansion of (1/(1 - x)) * Sum_{k>=0} x^(2*k) / Product_{j=1..2*k} (1 - x^j).

The programs for A304620, there is no canonical definition to state claims against.
-/

/-! ## A304620.P6076768222791433410

`A000070(n)-A306145(n)`
-/

namespace A304620.P6076768222791433410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A306145 n

end

end A304620.P6076768222791433410

/-! ## A304620.P13109443704891308023

`∑[A027187(n)]`
-/

namespace A304620.P13109443704891308023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P13109443704891308023

/-! ## A304620.P1307577615468812564

`∑[A081362(n)+A027193(n)]`
-/

namespace A304620.P1307577615468812564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n + A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P1307577615468812564

/-! ## A304620.P15284931108257077565

`∑[A000041(n)-A027193(n)]`
-/

namespace A304620.P15284931108257077565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P15284931108257077565

/-! ## A304620.P15858308596562303795

`∑[∑[A002865(n)]-A027193(n)]`
-/

namespace A304620.P15858308596562303795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P15858308596562303795

/-! ## A304620.P1083076029785601010

`∑[(A081362(n)+A000041(n))/2]`
-/

namespace A304620.P1083076029785601010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081362 n + A000041 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P1083076029785601010

/-! ## A304620.P3541316882914068650

`∑[A139582(n)/2-A027193(n)]`
-/

namespace A304620.P3541316882914068650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A027193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P3541316882914068650

/-! ## A304620.P15814251195215346521

`∑[∑[A085811(n+3)]-A027193(n)]`
-/

namespace A304620.P15814251195215346521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P15814251195215346521

/-! ## A304620.P10026307626349898820

`∑[A000009(n)+A047967(n)-A027193(n)]`
-/

namespace A304620.P10026307626349898820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A027193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P10026307626349898820

/-! ## A304620.P17797573605449816900

`∑[A035363(n)+A086543(n)-A027193(n)]`
-/

namespace A304620.P17797573605449816900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A027193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P17797573605449816900

/-! ## A304620.P15890833989213754049

`∑[A000726(n)+A295341(n)-A027193(n)]`
-/

namespace A304620.P15890833989213754049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A027193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P15890833989213754049

/-! ## A304620.P4155506253596823242

`A000070(n)-∑[A027193(n)]`
-/

namespace A304620.P4155506253596823242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P4155506253596823242

/-! ## A304620.P5921680051621421731

`∑[A000041(n)]-A306145(n)`
-/

namespace A304620.P5921680051621421731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A306145 n

end

end A304620.P5921680051621421731

/-! ## A304620.P7425696944124146890

`∑[A035363(2*n)-A027193(n)]`
-/

namespace A304620.P7425696944124146890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P7425696944124146890

/-! ## A304620.P4244639790672746575

`A100824(2*n+1)-A306145(n)`
-/

namespace A304620.P4244639790672746575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n + 1) - A306145 n

end

end A304620.P4244639790672746575

/-! ## A304620.P2887898847191382442

`a(n-1)+A027187(n)%A000051(n)` with `a(0)=1`
-/

namespace A304620.P2887898847191382442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A027187 n) (A000051 n)

end

end A304620.P2887898847191382442

/-! ## A304620.P6938620594215788243

`∑[A027185(∑[n]+1)]`
-/

namespace A304620.P6938620594215788243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304620.P6938620594215788243

/-!
# A304621: a(n) = 10 - n for 1 <= n <= 9. Thereafter a(n) = a(n-a(n-3)) + a(n-a(n-6)).

The programs for A304621, the canonical program `A304621.P3132686599509428931` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304621 has offset 1).

The definition of A304621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-3))+a(n-a(n-6))` (program `A304621.P3132686599509428931`, by `A304621.P3132686599509428931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304621.P3132686599509428931

`a(n-a(n-3))+a(n-a(n-6))` with `a(0)=9, a(1)=8, a(2)=7, a(3)=6, a(4)=5, a(5)=4, a(6)=3, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304621

/-- `a(n-a(n-3))+a(n-a(n-6))` -/
def P3132686599509428931.Spec : Prop :=
  ∀ n, (P3132686599509428931.a n : ℤ) = A304621 (n + 1)

theorem P3132686599509428931.correct : P3132686599509428931.Spec := by
  intro n
  simp only [A304621, Nat.add_sub_cancel]

end A304621

/-!
# A304622: a(n) = 11 - n for 1 <= n <= 10. Thereafter a(n) = a(n-a(n-2)) + a(n-a(n-4)).

The programs for A304622, the canonical program `A304622.P2716540706488772921` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304622 has offset 1).

The definition of A304622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-4))` (program `A304622.P2716540706488772921`, by `A304622.P2716540706488772921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304622.P2716540706488772921

`a(n-a(n-2))+a(n-a(n-4))` with `a(0)=10, a(1)=9, a(2)=8, a(3)=7, a(4)=6, a(5)=5, a(6)=4, a(7)=3, a(8)=2, a(9)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304622

/-- `a(n-a(n-2))+a(n-a(n-4))` -/
def P2716540706488772921.Spec : Prop :=
  ∀ n, (P2716540706488772921.a n : ℤ) = A304622 (n + 1)

theorem P2716540706488772921.correct : P2716540706488772921.Spec := by
  intro n
  simp only [A304622, Nat.add_sub_cancel]

end A304622

/-!
# A304623: Regular triangle where T(n,k) is the number of aperiodic multisets with maximum k that fit within some normal multiset of weight n.

The programs for A304623, there is no canonical definition to state claims against.
-/

/-! ## A304623.P11114521160890870001

`xor(A018843(A097755(n+1)), A097750(n))`
-/

namespace A304623.P11114521160890870001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018843 (A097755 (n + 1)).toNat) (A097750 n)

end

end A304623.P11114521160890870001

/-! ## A304623.P8519357052323991432

`A196176(A019538(n+1))`
-/

namespace A304623.P8519357052323991432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A019538 (n + 1)).toNat

end

end A304623.P8519357052323991432

/-! ## A304623.P8986538985938701267

`A195872(A176276(n)+1)`
-/

namespace A304623.P8986538985938701267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195872 (A176276 n + 1).toNat

end

end A304623.P8986538985938701267

/-! ## A304623.P3734248171656378510

`A330239(A176276(n)+3)`
-/

namespace A304623.P3734248171656378510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330239 (A176276 n + 3).toNat

end

end A304623.P3734248171656378510

/-! ## A304623.P2458808990767903703

`A350255(A108767(n+1))-1`
-/

namespace A304623.P2458808990767903703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350255 (A108767 (n + 1)).toNat - 1

end

end A304623.P2458808990767903703

/-!
# A304625: a(n) = [x^n] Product_{k>=1} ((1 - x^(n*k))/(1 - x^k))^n.

The programs for A304625, there is no canonical definition to state claims against.
-/

/-! ## A304625.P10082767383784820784

`A008485(n)-n`
-/

namespace A304625.P10082767383784820784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008485 n - (n : ℤ)

end

end A304625.P10082767383784820784

/-! ## A304625.P3668528574752807230

`A144064(∑[4*n])-n`
-/

namespace A304625.P3668528574752807230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A304625.P3668528574752807230

/-! ## A304625.P3945713298343947547

`abs(A144064(2*(n²+n))-n)`
-/

namespace A304625.P3945713298343947547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144064 (2 * (n ^ 2 + n)) - (n : ℤ)|

end

end A304625.P3945713298343947547

/-! ## A304625.P8393191067783444704

`A060850(A058331(n))-n`
-/

namespace A304625.P8393191067783444704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A058331 n).toNat - (n : ℤ)

end

end A304625.P8393191067783444704

/-! ## A304625.P5178392131183044109

`abs(n-A144064(2*A002378(n)))`
-/

namespace A304625.P5178392131183044109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A144064 (2 * A002378 n).toNat|

end

end A304625.P5178392131183044109

/-!
# A304626: a(n) = [x^n] Product_{k>=1} ((1 + x^k)/(1 + x^(n*k)))^n.

The programs for A304626, there is no canonical definition to state claims against.
-/

/-! ## A304626.P15123865190679325810

`A270913(n)-n`
-/

namespace A304626.P15123865190679325810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270913 n - (n : ℤ)

end

end A304626.P15123865190679325810

/-! ## A304626.P10453065468011796640

`A286335(∑[4*n])-n`
-/

namespace A304626.P10453065468011796640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A304626.P10453065468011796640

/-! ## A304626.P3947695530762828715

`abs(A286335(2*(n²+n))-n)`
-/

namespace A304626.P3947695530762828715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286335 (2 * (n ^ 2 + n)) - (n : ℤ)|

end

end A304626.P3947695530762828715

/-! ## A304626.P1692357126072076402

`abs(A270913(n)+A001489(n))`
-/

namespace A304626.P1692357126072076402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A270913 n + A001489 n|

end

end A304626.P1692357126072076402

/-! ## A304626.P12349560789913446847

`abs(n-A286335(A046092(n)))`
-/

namespace A304626.P12349560789913446847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A286335 (A046092 n).toNat|

end

end A304626.P12349560789913446847

/-!
# A304627: a(n) = [x^n] Product_{k>=1} (1 + x^k)*(1 - x^(n*k))/((1 - x^k)*(1 + x^(n*k))).

The programs for A304627, there is no canonical definition to state claims against.
-/

/-! ## A304627.P3390980029287856300

`abs(2-A015128(n))`
-/

namespace A304627.P3390980029287856300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A015128 n|

end

end A304627.P3390980029287856300

/-! ## A304627.P5420923764448159079

`abs(2-abs(A004402(n)))`
-/

namespace A304627.P5420923764448159079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A004402 n|)|

end

end A304627.P5420923764448159079

/-! ## A304627.P13110499875929753431

`abs(2-∑[A211971(n)])`
-/

namespace A304627.P13110499875929753431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A304627.P13110499875929753431

/-! ## A304627.P2078328896244693461

`lcm(2-A015128(n), A040001(n))`
-/

namespace A304627.P2078328896244693461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A015128 n) (A040001 n)

end

end A304627.P2078328896244693461

/-! ## A304627.P4217146768832276074

`xor(1, ∑[A211971(n)%A211971(n+1)])`
-/

namespace A304627.P4217146768832276074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211971 n) (A211971 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304627.P4217146768832276074

/-! ## A304627.P18120042825914398593

`A015128(n)-∑{d}[n, A000122(A006530(#))]`
-/

namespace A304627.P18120042825914398593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - ∑ d ∈ Nat.divisors (f1 n), A000122 (A006530 d).toNat

end

end A304627.P18120042825914398593

/-! ## A304627.P6072422489066178520

`A000122(A006530(n+1))+A015128(n)-2`
-/

namespace A304627.P6072422489066178520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A006530 (n + 1)).toNat + (A015128 n - 2)

end

end A304627.P6072422489066178520

/-! ## A304627.P12081862799857784378

`A015128(n)-A080054(a(A000122(n+1)))` with `a(0)=1`
-/

namespace A304627.P12081862799857784378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015128 n - A080054 (a (A000122 (n + 1)).toNat).toNat

end

end A304627.P12081862799857784378

/-! ## A304627.P5926693315530892153

`A300548(A000040(n+1))+A015128(n)`
-/

namespace A304627.P5926693315530892153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300548 (A000040 (n + 1)).toNat + A015128 n

end

end A304627.P5926693315530892153

/-! ## A304627.P12397854778927988731

`A000122(n²+1)+A015128(n)-2`
-/

namespace A304627.P12397854778927988731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) + (A015128 n - 2)

end

end A304627.P12397854778927988731

/-!
# A304628: a(n) = [x^n] Product_{k>=1} ((1 + x^k)/(1 + x^(4*k)))^n.

The programs for A304628, there is no canonical definition to state claims against.
-/

/-! ## A304628.P3804184206719666418

`A195120(xor(comp[2*(n+1)], A007583(n)))`
-/

namespace A304628.P3804184206719666418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A007583 n)).toNat

end

end A304628.P3804184206719666418

/-! ## A304628.P6987088697208734383

`A008615(A267528(n)+A083588(n))`
-/

namespace A304628.P6987088697208734383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A267528 n + A083588 n).toNat

end

end A304628.P6987088697208734383

/-! ## A304628.P12747309253832647745

`or(A022493(n), A247911(A149472(n)))`
-/

namespace A304628.P12747309253832647745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022493 n) (A247911 (A149472 n).toNat)

end

end A304628.P12747309253832647745

/-!
# A304629: a(n) = [x^n] Product_{k>=1} ((1 + x^k)/(1 + x^(5*k)))^n.

The programs for A304629, there is no canonical definition to state claims against.
-/

/-! ## A304629.P17395391309079765166

`A028310(or(A012864(n), A229755(n+1)))`
-/

namespace A304629.P17395391309079765166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A012864 n) (A229755 (n + 1))).toNat

end

end A304629.P17395391309079765166

/-! ## A304629.P17346831570406255070

`A370272(A073788(n))`
-/

namespace A304629.P17346831570406255070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370272 (A073788 n).toNat

end

end A304629.P17346831570406255070

/-! ## A304629.P15114378040961150662

`A370272(A004879(n+1))`
-/

namespace A304629.P15114378040961150662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370272 (A004879 (n + 1)).toNat

end

end A304629.P15114378040961150662

/-!
# A304630: Expansion of (1/(1 - x))*Product_{k>=1} (1 - x^(3*k))/(1 - x^k).

The programs for A304630, there is no canonical definition to state claims against.
-/

/-! ## A304630.P10631948222260814088

`∑[A000726(n)]`
-/

namespace A304630.P10631948222260814088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P10631948222260814088

/-! ## A304630.P1399246709909309604

`∑[A339405(n)+A339404(n)]`
-/

namespace A304630.P1399246709909309604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339405 n + A339404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P1399246709909309604

/-! ## A304630.P8165618437399329509

`∑[A116634(n+3)-A116634(n)]`
-/

namespace A304630.P8165618437399329509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116634 (n + 3) - A116634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P8165618437399329509

/-! ## A304630.P17460266549911734268

`∑[A000041(n)-A295341(n)]`
-/

namespace A304630.P17460266549911734268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P17460266549911734268

/-! ## A304630.P10109742062647749475

`∑[∑[A002865(n)]-A295341(n)]`
-/

namespace A304630.P10109742062647749475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P10109742062647749475

/-! ## A304630.P13972463287614972775

`∑[A000065(n)+1-A295341(n)]`
-/

namespace A304630.P13972463287614972775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P13972463287614972775

/-! ## A304630.P17034665296752325730

`∑[∑[A085811(n+3)]-A295341(n)]`
-/

namespace A304630.P17034665296752325730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P17034665296752325730

/-! ## A304630.P11307171975315833456

`∑[∑[A232697(n)]-n-A295341(n)]`
-/

namespace A304630.P11307171975315833456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P11307171975315833456

/-! ## A304630.P366182183360647661

`∑[A000009(n)+A047967(n)-A295341(n)]`
-/

namespace A304630.P366182183360647661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P366182183360647661

/-! ## A304630.P3301863299177213421

`∑[A027187(n)+A027193(n)-A295341(n)]`
-/

namespace A304630.P3301863299177213421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P3301863299177213421

/-! ## A304630.P15503836986597738052

`∑[A035363(n)+A086543(n)-A295341(n)]`
-/

namespace A304630.P15503836986597738052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P15503836986597738052

/-! ## A304630.P12625287174234549864

`∑[A139582(n)/2-A295341(n)]`
-/

namespace A304630.P12625287174234549864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A295341 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P12625287174234549864

/-! ## A304630.P18200539171776511194

`A000070(n)-∑[A295341(n)]`
-/

namespace A304630.P18200539171776511194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P18200539171776511194

/-! ## A304630.P16686036682151427426

`∑[A035385(2*n)]`
-/

namespace A304630.P16686036682151427426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P16686036682151427426

/-! ## A304630.P1304077290394269431

`∑[A035363(2*n)-A295341(n)]`
-/

namespace A304630.P1304077290394269431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P1304077290394269431

/-! ## A304630.P3860904327543208916

`∑[A332280(n)+A332281(n)-A295341(n)]`
-/

namespace A304630.P3860904327543208916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P3860904327543208916

/-! ## A304630.P1026015739365870638

`∑[A325831(n)+A325834(n)-A295341(n)]`
-/

namespace A304630.P1026015739365870638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325831 n + (A325834 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P1026015739365870638

/-! ## A304630.P13210211456153922428

`∑[A325832(n)+A325833(n)-A295341(n)]`
-/

namespace A304630.P13210211456153922428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325832 n + (A325833 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P13210211456153922428

/-! ## A304630.P837195800681174221

`∑[A332283(n)+A332284(n)-A295341(n)]`
-/

namespace A304630.P837195800681174221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A295341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P837195800681174221

/-! ## A304630.P2279826795906064291

`∑[A116633(A001840(n))]`
-/

namespace A304630.P2279826795906064291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A001840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304630.P2279826795906064291

/-!
# A304631: Expansion of (1/(1 - x))*Product_{k>=1} (1 + x^(2*k-1)).

The programs for A304631, there is no canonical definition to state claims against.
-/

/-! ## A304631.P11093534409028215241

`∑[A000700(n)]`
-/

namespace A304631.P11093534409028215241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P11093534409028215241

/-! ## A304631.P1487456374273144105

`∑[abs(A081362(n))]`
-/

namespace A304631.P1487456374273144105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P1487456374273144105

/-! ## A304631.P10485195957333321168

`∑[gcd(A000038(n), A081362(n))]`
-/

namespace A304631.P10485195957333321168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P10485195957333321168

/-! ## A304631.P2082305507103148285

`∑[lcm(A020985(n), A081362(n))]`
-/

namespace A304631.P2082305507103148285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P2082305507103148285

/-! ## A304631.P11639985537007315470

`A096911(n+1)+A096911(n+2)`
-/

namespace A304631.P11639985537007315470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1) + A096911 (n + 2)

end

end A304631.P11639985537007315470

/-! ## A304631.P5266988200582691999

`abs(Δ[Δ[A246581(n+1)]])`
-/

namespace A304631.P5266988200582691999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A304631.P5266988200582691999

/-! ## A304631.P7333354338828105934

`∑[A046682(n)-A000701(n)]`
-/

namespace A304631.P7333354338828105934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n - A000701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P7333354338828105934

/-! ## A304631.P18416645188982766378

`∑[abs(A027187(n)-A027193(n))]`
-/

namespace A304631.P18416645188982766378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027187 n - A027193 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P18416645188982766378

/-! ## A304631.P6474898104944736179

`∑[A057077(2*n)*A081362(n)]`
-/

namespace A304631.P6474898104944736179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A081362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P6474898104944736179

/-! ## A304631.P12983488870275553697

`∑[2*A027349(n+1)]-A027349(n+1)`
-/

namespace A304631.P12983488870275553697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027349 (n + 1)

end

end A304631.P12983488870275553697

/-! ## A304631.P9668907113876756818

`∑[abs(A320835(record[A006530(n+1)]))]`
-/

namespace A304631.P9668907113876756818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P9668907113876756818

/-! ## A304631.P17429068442915677466

`∑[abs(A320835(record[A014963(n+1)]))]`
-/

namespace A304631.P17429068442915677466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P17429068442915677466

/-! ## A304631.P3677777635660975681

`∑[A027359(A179865(n+1))]`
-/

namespace A304631.P3677777635660975681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P3677777635660975681

/-! ## A304631.P6557457847894053883

`∑[A276422(∑[n]+n)]`
-/

namespace A304631.P6557457847894053883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P6557457847894053883

/-! ## A304631.P13742868268493046116

`∑[∑{d}[A081362(n), A000010(#)]]`
-/

namespace A304631.P13742868268493046116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P13742868268493046116

/-! ## A304631.P4470751787855981589

`∑[abs(A286352(∑[n+2]-1))]`
-/

namespace A304631.P4470751787855981589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286352 (∑ j ∈ Finset.range (n + 1), f2 j - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P4470751787855981589

/-! ## A304631.P10815318754359907938

`∑[A290307(A034856(n+1))]`
-/

namespace A304631.P10815318754359907938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P10815318754359907938

/-! ## A304631.P17123234770823244319

`∑[A027356(A081267(n))]`
-/

namespace A304631.P17123234770823244319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A081267 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P17123234770823244319

/-! ## A304631.P11332481074867509258

`∑[A027356(A006137(n+1))]`
-/

namespace A304631.P11332481074867509258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A006137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304631.P11332481074867509258

/-!
# A304632: Expansion of (1/(1 - x))* Product_{k>=1} (1 + x^k)/(1 + x^(3*k)).

The programs for A304632, there is no canonical definition to state claims against.
-/

/-! ## A304632.P14466618697516036951

`∑[A003105(n)]`
-/

namespace A304632.P14466618697516036951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304632.P14466618697516036951

/-! ## A304632.P6547179859851769180

`∑[abs(A227398(n))]`
-/

namespace A304632.P6547179859851769180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227398 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304632.P6547179859851769180

/-! ## A304632.P1659095108680082162

`A003105(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A304632.P1659095108680082162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003105 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A304632.P1659095108680082162

/-! ## A304632.P1590245117820483124

`∑[lcm(A008836(n+1), A227398(n))]`
-/

namespace A304632.P1590245117820483124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A227398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304632.P1590245117820483124

/-! ## A304632.P14177610350137737027

`∑[A112207(6*n)]`
-/

namespace A304632.P14177610350137737027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304632.P14177610350137737027

/-! ## A304632.P4881743775201811698

`∑[A290307(∑[n+3])]`
-/

namespace A304632.P4881743775201811698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304632.P4881743775201811698

/-!
# A304633: Expansion of 2/((1 - x)*(3 + 2*x - theta_3(x))), where theta_3() is the Jacobi theta function.

The programs for A304633, there is no canonical definition to state claims against.
-/

/-! ## A304633.P16429352323781027051

`∑[A280542(n)]`
-/

namespace A304633.P16429352323781027051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304633.P16429352323781027051

/-! ## A304633.P15435678061538900622

`A280542(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A304633.P15435678061538900622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280542 n + a (A023443 n).toNat

end

end A304633.P15435678061538900622

/-! ## A304633.P3796741864924087257

`A280542(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A304633.P3796741864924087257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280542 n + a (A028310 n - 1).toNat

end

end A304633.P3796741864924087257

/-! ## A304633.P12860139806332801628

`A280542(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A304633.P12860139806332801628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280542 n + a (A004273 n - (n : ℤ)).toNat

end

end A304633.P12860139806332801628

/-! ## A304633.P9797537582523702481

`A280542(n)+a(n-a(A327928(n)))` with `a(0)=1`
-/

namespace A304633.P9797537582523702481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280542 n + a ((n : ℤ) - a (A327928 n).toNat).toNat

end

end A304633.P9797537582523702481

/-! ## A304633.P11420853958106581959

`A280542(n)+and(1, A000040(n+1))²*a(n-1)` with `a(0)=1`
-/

namespace A304633.P11420853958106581959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280542 n + Int.land 1 (A000040 (n + 1)) ^ 2 * a (n - 1)

end

end A304633.P11420853958106581959

/-! ## A304633.P3704522977087214828

`a(n-1)+A000035(A151800(n))*A280542(n)` with `a(0)=1`
-/

namespace A304633.P3704522977087214828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000035 (A151800 n).toNat * A280542 n

end

end A304633.P3704522977087214828

/-! ## A304633.P9275788952928913790

`A000027(A280542(n)+a(n-1))` with `a(0)=1`
-/

namespace A304633.P9275788952928913790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A280542 n + a (n - 1)).toNat

end

end A304633.P9275788952928913790

/-!
# A304634: Numbers n with prime omicron 2, meaning A304465(n) = 2.

The programs for A304634, there is no canonical definition to state claims against.
-/

/-! ## A304634.P11189515785450209953

`eq[2, A304465(n+1)]+1`
-/

namespace A304634.P11189515785450209953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304634.P11189515785450209953

/-! ## A304634.P3253172621895697938

`eq[2, A304465(gcd(n, C(2, n)))]`
-/

namespace A304634.P3253172621895697938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304634.P3253172621895697938

/-! ## A304634.P10781506541871224531

`eq[2, A304465(xor(n, C(2, n)))]`
-/

namespace A304634.P10781506541871224531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (Nat.xor n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304634.P10781506541871224531

/-! ## A304634.P14737912879997605550

`lt[1, gcd(3, A320118(n+1))]+1`
-/

namespace A304634.P14737912879997605550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A320118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A304634.P14737912879997605550

/-! ## A304634.P12582330875472323205

`eq[2, A304465(A028310(n))]`
-/

namespace A304634.P12582330875472323205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304634.P12582330875472323205

/-! ## A304634.P5832071996337047368

`A020725(eq[2, A304465(n+1)])`
-/

namespace A304634.P5832071996337047368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304634.P5832071996337047368

/-! ## A304634.P5443138147601859472

`A061767(eq[2, A304465(n+1)])`
-/

namespace A304634.P5443138147601859472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304634.P5443138147601859472

/-! ## A304634.P18236885108093398918

`A113484(eq[2, A304465(n+1)])`
-/

namespace A304634.P18236885108093398918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304634.P18236885108093398918

/-! ## A304634.P12303919054918449898

`eq[2, A304465(A233583(n+1))]`
-/

namespace A304634.P12303919054918449898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304634.P12303919054918449898

/-! ## A304634.P12622575793947686525

`eq[2, A304465(A065033(2*n))]`
-/

namespace A304634.P12622575793947686525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304634.P12622575793947686525

/-!
# A304636: Numbers n with prime omicron 3, meaning A304465(n) = 3.

The programs for A304636, there is no canonical definition to state claims against.
-/

/-! ## A304636.P8388162574030752735

`eq[3, A304465(n+1)]+1`
-/

namespace A304636.P8388162574030752735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304636.P8388162574030752735

/-! ## A304636.P11547126229687487437

`eq[3, A304687(n+1)]+1`
-/

namespace A304636.P11547126229687487437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304636.P11547126229687487437

/-! ## A304636.P6920657673362825451

`eq[3, A304465(A028310(n))]`
-/

namespace A304636.P6920657673362825451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304636.P6920657673362825451

/-! ## A304636.P5346022306058471674

`A020725(eq[3, A304465(n+1)])`
-/

namespace A304636.P5346022306058471674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304636.P5346022306058471674

/-! ## A304636.P7737826520510665751

`A020725(eq[3, A304687(n+1)])`
-/

namespace A304636.P7737826520510665751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304636.P7737826520510665751

/-! ## A304636.P15038532180347118445

`eq[3, A304465(A233583(n+1))]`
-/

namespace A304636.P15038532180347118445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304636.P15038532180347118445

/-! ## A304636.P2293911444941304912

`eq[A040282(A077462(n))+2, A077462(n)]`
-/

namespace A304636.P2293911444941304912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040282 (A077462 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304636.P2293911444941304912

/-!
# A304637: G.f. A(x) satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^n - 1/A(x)^n)^n.

The programs for A304637, there is no canonical definition to state claims against.
-/

/-! ## A304637.P15217139947295851684

`A001651(A317350(n)+A218604(n))`
-/

namespace A304637.P15217139947295851684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A317350 n + A218604 n).toNat

end

end A304637.P15217139947295851684

/-!
# A304638: a(n) equals the coefficient of x^n in Sum_{m>=0} (x^m + 1/x^m)^m for n > 0.

The programs for A304638, there is no canonical definition to state claims against.
-/

/-! ## A304638.P7294090162883935320

`A316590(∑[n]+1)`
-/

namespace A304638.P7294090162883935320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316590 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304638.P7294090162883935320

/-! ## A304638.P14003809098971007549

`A316590(A000124(n))%A000051(n)`
-/

namespace A304638.P14003809098971007549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316590 (A000124 n).toNat) (A000051 n)

end

end A304638.P14003809098971007549

/-! ## A304638.P14844081984787520061

`gcd(A000038(n), A316590(A000124(n)))`
-/

namespace A304638.P14844081984787520061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316590 (A000124 n).toNat)

end

end A304638.P14844081984787520061

/-! ## A304638.P4367675510274252719

`A007318(∑[n])*A316590(A000124(n))`
-/

namespace A304638.P4367675510274252719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A316590 (A000124 n).toNat

end

end A304638.P4367675510274252719

/-! ## A304638.P689708743695409101

`A316590(A000124(n))+A000007(n+1)`
-/

namespace A304638.P689708743695409101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316590 (A000124 n).toNat + A000007 (n + 1)

end

end A304638.P689708743695409101

/-!
# A304639: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( 1/(1-x)^n - A(x) )^n.

The programs for A304639, there is no canonical definition to state claims against.
-/

/-! ## A304639.P10880400486108170920

`A063966(A005640(n))`
-/

namespace A304639.P10880400486108170920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063966 (A005640 n).toNat

end

end A304639.P10880400486108170920

/-! ## A304639.P9813632503405824606

`or(n, A239664(A113147(n)))`
-/

namespace A304639.P9813632503405824606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A239664 (A113147 n).toNat)

end

end A304639.P9813632503405824606

/-!
# A304640: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} ( exp(n*x) - A(x) )^n.

The programs for A304640, there is no canonical definition to state claims against.
-/

/-! ## A304640.P15227420075453802816

`A122633(A277918(n))`
-/

namespace A304640.P15227420075453802816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122633 (A277918 n).toNat

end

end A304640.P15227420075453802816

/-!
# A304641: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} ( exp((n+1)*x) - A(x) )^n.

The programs for A304641, there is no canonical definition to state claims against.
-/

/-! ## A304641.P7978815537766283676

`A076990(∑[A102894(n)])`
-/

namespace A304641.P7978815537766283676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304641.P7978815537766283676

/-!
# A304642: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( (1+x)^(n+1) - A(x) )^n.

The programs for A304642, there is no canonical definition to state claims against.
-/

/-! ## A304642.P13993381057586656627

`A036554(n*a(n-1))-8` with `a(0)=1, a(1)=2`
-/

namespace A304642.P13993381057586656627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A036554 ((n : ℤ) * a (n - 1)).toNat - 8

end

end A304642.P13993381057586656627

/-! ## A304642.P8790922732833565108

`A053645(3*(n+1))+A053645(A213109(n))`
-/

namespace A304642.P8790922732833565108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (3 * (n + 1)) + A053645 (A213109 n).toNat

end

end A304642.P8790922732833565108

/-!
# A304645: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( (1+x)^(n-1) - A(x)^n )^n.

The programs for A304645, there is no canonical definition to state claims against.
-/

/-! ## A304645.P10436494708288631234

`A289207(A228837(n))+A272393(n)`
-/

namespace A304645.P10436494708288631234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A228837 n).toNat + A272393 n

end

end A304645.P10436494708288631234

/-!
# A304647: Smallest term of A304636 that requires exactly n iterations to reach a fixed point under the x -> A181819(x) map.

The programs for A304647, there is no canonical definition to state claims against.
-/

/-! ## A304647.P10686506202256131177

`A181821(a(n-1))` with `a(0)=5`
-/

namespace A304647.P10686506202256131177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A181821 (a (n - 1)).toNat

end

end A304647.P10686506202256131177

/-!
# A304648: Number of different periodic multisets that fit within some normal multiset of weight n.

The programs for A304648, there is no canonical definition to state claims against.
-/

/-! ## A304648.P18404035214478537982

`A027941(n+1)-A303976(n+1)`
-/

namespace A304648.P18404035214478537982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) - A303976 (n + 1)

end

end A304648.P18404035214478537982

/-! ## A304648.P759560474104943836

`∑[A001906(n+1)]-A303976(n+1)`
-/

namespace A304648.P759560474104943836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A303976 (n + 1)

end

end A304648.P759560474104943836

/-! ## A304648.P15411067811361294133

`A027941(A028310(n)+1)%A303976(n+1)`
-/

namespace A304648.P15411067811361294133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027941 (A028310 n + 1).toNat) (A303976 (n + 1))

end

end A304648.P15411067811361294133

/-! ## A304648.P9544114774306947271

`A027941(A181440(n+1))%A303976(n+1)`
-/

namespace A304648.P9544114774306947271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027941 (A181440 (n + 1)).toNat) (A303976 (n + 1))

end

end A304648.P9544114774306947271

/-! ## A304648.P721377058537425360

`A027941(A065033(2*n)+1)%A303976(n+1)`
-/

namespace A304648.P721377058537425360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027941 (A065033 (2 * n) + 1).toNat) (A303976 (n + 1))

end

end A304648.P721377058537425360

/-!
# A304649: Number of divisors d|n such that neither d nor n/d is a perfect power greater than 1.

The programs for A304649, the canonical program `A304649.P2069392600454254021` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304649 has offset 1).

The definition of A304649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304649.P8130267710890003867

`∑{d}[n+1, A132350(#)*A132350((n+1)/#)]`
-/

namespace A304649.P8130267710890003867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A132350 d * A132350 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304649.P8130267710890003867

namespace A304649

/-- `∑{d}[n+1, A132350(#)*A132350((n+1)/#)]` -/
def P8130267710890003867.Spec : Prop :=
  ∀ n, P8130267710890003867.a n = A304649 (n + 1)

end A304649

/-! ## A304649.P2069392600454254021

`∑{d}[n+1, A304362(#)*A304817((n+1)/#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A304649

/-- `∑{d}[n+1, A304362(#)*A304817((n+1)/#)]` -/
def P2069392600454254021.Spec : Prop :=
  ∀ n, P2069392600454254021.a n = A304649 (n + 1)

theorem P2069392600454254021.correct : P2069392600454254021.Spec := by
  intro n
  simp only [A304649, Nat.add_sub_cancel]

end A304649

/-! ## A304649.P5570944228744882683

`C(A027623(∏{p}[n+1, #]), A052409(n+1))`
-/

namespace A304649.P5570944228744882683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027623 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat (A052409 (n + 1)).toNat

end

end A304649.P5570944228744882683

namespace A304649

/-- `C(A027623(∏{p}[n+1, #]), A052409(n+1))` -/
def P5570944228744882683.Spec : Prop :=
  ∀ n, (P5570944228744882683.a n : ℤ) = A304649 (n + 1)

end A304649

/-! ## A304649.P1947185333197633182

`A343493(A112624(n+1))+A183096(n+1)`
-/

namespace A304649.P1947185333197633182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343493 (A112624 (n + 1)).toNat + A183096 (n + 1)

end

end A304649.P1947185333197633182

namespace A304649

/-- `A343493(A112624(n+1))+A183096(n+1)` -/
def P1947185333197633182.Spec : Prop :=
  ∀ n, P1947185333197633182.a n = A304649 (n + 1)

end A304649

/-!
# A304650: Number of ways to write n as a product of two positive integers, neither of which is a perfect power.

The programs for A304650, there is no canonical definition to state claims against.
-/

/-! ## A304650.P18372901982188245822

`A100361(A002033(n))%A034444(n+1)`
-/

namespace A304650.P18372901982188245822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100361 (A002033 n).toNat) (A034444 (n + 1))

end

end A304650.P18372901982188245822

/-! ## A304650.P4941924791291914604

`A087893(n+1)+A010051(A007956(n+1))`
-/

namespace A304650.P4941924791291914604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087893 (n + 1) + A010051 (A007956 (n + 1)).toNat

end

end A304650.P4941924791291914604

/-! ## A304650.P2824198337840323172

`A047439(A339948(n+1))%A034444(n+1)`
-/

namespace A304650.P2824198337840323172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047439 (A339948 (n + 1)).toNat) (A034444 (n + 1))

end

end A304650.P2824198337840323172

/-! ## A304650.P13033412721950188984

`∏{p}[n+1, 2%#²]-1-A325616(∏{e}[n+1, C(2*#, #)])`
-/

namespace A304650.P13033412721950188984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℤ) - 1 - A325616 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (2 * Nat.factorization (f2 n) p) (Nat.factorization (f2 n) p))

end

end A304650.P13033412721950188984

/-! ## A304650.P18118540764377368636

`A304760(A304649(n+1)%A304662(n))`
-/

namespace A304650.P18118540764377368636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304760 (Int.tmod (A304649 (n + 1)) (A304662 n)).toNat

end

end A304650.P18118540764377368636

/-!
# A304651: Number of coprime pairs (x,y) with x^2 + y^2 <= n.

The programs for A304651, the canonical program `A304651.P3576326114544624841` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304651 has offset 0).

The definition of A304651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304651.P3576326114544624841

`a(n-1)+4*A000089(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304651

/-- `a(n-1)+4*A000089(n)` -/
def P3576326114544624841.Spec : Prop :=
  ∀ n, P3576326114544624841.a n = A304651 n

theorem P3576326114544624841.correct : P3576326114544624841.Spec := by
  intro n
  simp only [A304651]

end A304651

/-! ## A304651.P10794588699918874569

`4*A305117(n)`
-/

namespace A304651.P10794588699918874569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A305117 n

end

end A304651.P10794588699918874569

namespace A304651

/-- `4*A305117(n)` -/
def P10794588699918874569.Spec : Prop :=
  ∀ n, P10794588699918874569.a n = A304651 n

end A304651

/-! ## A304651.P15918855699368540759

`A008586(A305117(n))`
-/

namespace A304651.P15918855699368540759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A305117 n).toNat

end

end A304651.P15918855699368540759

namespace A304651

/-- `A008586(A305117(n))` -/
def P15918855699368540759.Spec : Prop :=
  ∀ n, P15918855699368540759.a n = A304651 n

end A304651

/-! ## A304651.P6091709776506730938

`4*(∑[A000089(n+1)]-A000089(n+1))`
-/

namespace A304651.P6091709776506730938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A000089 (n + 1))

end

end A304651.P6091709776506730938

namespace A304651

/-- `4*(∑[A000089(n+1)]-A000089(n+1))` -/
def P6091709776506730938.Spec : Prop :=
  ∀ n, P6091709776506730938.a n = A304651 n

end A304651

/-! ## A304651.P9654987220880545030

`A008574(A305117(n))%A067692(n+1)`
-/

namespace A304651.P9654987220880545030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A305117 n).toNat) (A067692 (n + 1))

end

end A304651.P9654987220880545030

namespace A304651

/-- `A008574(A305117(n))%A067692(n+1)` -/
def P9654987220880545030.Spec : Prop :=
  ∀ n, P9654987220880545030.a n = A304651 n

end A304651

/-! ## A304651.P4924443742559620673

`A008574(A305117(n)+n)-A008574(n)`
-/

namespace A304651.P4924443742559620673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A305117 n + (n : ℤ)).toNat - A008574 n

end

end A304651.P4924443742559620673

namespace A304651

/-- `A008574(A305117(n)+n)-A008574(n)` -/
def P4924443742559620673.Spec : Prop :=
  ∀ n, P4924443742559620673.a n = A304651 n

end A304651

/-! ## A304651.P12084805852966267082

`A008574(A305117(n)+1+n)%A008574(n+1)`
-/

namespace A304651.P12084805852966267082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A305117 n + 1 + (n : ℤ)).toNat) (A008574 (n + 1))

end

end A304651.P12084805852966267082

namespace A304651

/-- `A008574(A305117(n)+1+n)%A008574(n+1)` -/
def P12084805852966267082.Spec : Prop :=
  ∀ n, P12084805852966267082.a n = A304651 n

end A304651

/-! ## A304651.P1958207315688272807

`2*2*A029578(A295820(n))`
-/

namespace A304651.P1958207315688272807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A029578 (A295820 n).toNat)

end

end A304651.P1958207315688272807

namespace A304651

/-- `2*2*A029578(A295820(n))` -/
def P1958207315688272807.Spec : Prop :=
  ∀ n, P1958207315688272807.a n = A304651 n

end A304651

/-!
# A304653: a(n) = (-1)^Omega(n) if n is not a perfect power > 1, and 0 otherwise.

The programs for A304653, there is no canonical definition to state claims against.
-/

/-! ## A304653.P16144862876412940273

`(∏{e}[n+1, (val(n+1, 2)+1)%#]-1)^∑{e}[n+1, #]`
-/

namespace A304653.P16144862876412940273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) 2 + 1) % Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A304653.P16144862876412940273

/-! ## A304653.P7656359237932717942

`(-1)^∑{e}[n+1, #]*A132350(n+1)`
-/

namespace A304653.P7656359237932717942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A132350 (n + 1)

end

end A304653.P7656359237932717942

/-! ## A304653.P8940811321263988639

`round((-1)^∑{e}[n+1, #]/A295924(n+1))`
-/

namespace A304653.P8940811321263988639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / (A295924 (n + 1) : ℚ))

end

end A304653.P8940811321263988639

/-! ## A304653.P6338778852714411356

`round((-1)^∑{e}[n+1, #]/A295931(n+1))`
-/

namespace A304653.P6338778852714411356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / (A295931 (n + 1) : ℚ))

end

end A304653.P6338778852714411356

/-! ## A304653.P5819629995672240445

`A132350(ceil(sqrt(n²+4)))/(-1)^∑{e}[n+1, #]`
-/

namespace A304653.P5819629995672240445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132350 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)

end

end A304653.P5819629995672240445

/-! ## A304653.P3988013756272237995

`(-1)^∑{e}[n+1, #]*A052409(n+1)!%2`
-/

namespace A304653.P3988013756272237995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * ((Nat.factorial (A052409 (n + 1)).toNat % 2 : ℕ) : ℤ)

end

end A304653.P3988013756272237995

/-! ## A304653.P4150731879496397037

`Δ[A002819(n)]*A132350(n+1)`
-/

namespace A304653.P4150731879496397037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A132350 (n + 1)

end

end A304653.P4150731879496397037

/-! ## A304653.P6404157037413691193

`Δ[A002819(n)]%A110234(n+1)`
-/

namespace A304653.P6404157037413691193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A110234 (n + 1))

end

end A304653.P6404157037413691193

/-! ## A304653.P6997672445227692815

`A008836(n+1)*A132350(n+1)`
-/

namespace A304653.P6997672445227692815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A132350 (n + 1)

end

end A304653.P6997672445227692815

/-! ## A304653.P8324997991771397166

`A132350(n+1)*A363553(n+1)`
-/

namespace A304653.P8324997991771397166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1) * A363553 (n + 1)

end

end A304653.P8324997991771397166

/-!
# A304654: a(n) = (n!)^2 * Sum_{k=1..n-1} 1/(k^2*(n-k)).

The programs for A304654, there is no canonical definition to state claims against.
-/

/-! ## A304654.P2552449704556722214

`n/2*A302827(n)`
-/

namespace A304654.P2552449704556722214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A302827 n : ℚ)

end

end A304654.P2552449704556722214

/-! ## A304654.P878929767821916573

`n*A014682(A302827(n))`
-/

namespace A304654.P878929767821916573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014682 (A302827 n).toNat

end

end A304654.P878929767821916573

/-! ## A304654.P1487941203809311819

`A010881(n)*A273943(A302827(n))`
-/

namespace A304654.P1487941203809311819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 n * A273943 (A302827 n).toNat

end

end A304654.P1487941203809311819

/-!
# A304655: a(n) = (n!)^3 * Sum_{k=1..n-1} 1/(k^3*(n-k)^2).

The programs for A304655, there is no canonical definition to state claims against.
-/

/-! ## A304655.P10879253146043424920

`n/2*A304589(n)`
-/

namespace A304655.P10879253146043424920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A304589 n : ℚ)

end

end A304655.P10879253146043424920

/-! ## A304655.P5890892994178317217

`n*A014682(A304589(n))`
-/

namespace A304655.P5890892994178317217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014682 (A304589 n).toNat

end

end A304655.P5890892994178317217

/-!
# A304657: Number of ways to represent n/100 years in Shinigami time.

The programs for A304657, there is no canonical definition to state claims against.
-/

/-! ## A304657.P2204708389645245875

`A074206(36*(n+1))`
-/

namespace A304657.P2204708389645245875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (36 * (n + 1))

end

end A304657.P2204708389645245875

/-! ## A304657.P18300549612736185027

`A002033(36*n+35)`
-/

namespace A304657.P18300549612736185027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (36 * n + 35)

end

end A304657.P18300549612736185027

/-! ## A304657.P12426914537197845703

`A067824(36*(n+1))/2`
-/

namespace A304657.P12426914537197845703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067824 (36 * (n + 1)) : ℚ) / 2

end

end A304657.P12426914537197845703

/-! ## A304657.P12265859986503001935

`lcm(2, A002033(A350055(n)))`
-/

namespace A304657.P12265859986503001935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002033 (A350055 n).toNat)

end

end A304657.P12265859986503001935

/-! ## A304657.P5672600749341013405

`2*A174725(A044102(n+1))`
-/

namespace A304657.P5672600749341013405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174725 (A044102 (n + 1)).toNat

end

end A304657.P5672600749341013405

/-! ## A304657.P3631913234449441979

`A007318(C(2, n))*A002033(A350055(n))`
-/

namespace A304657.P3631913234449441979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A002033 (A350055 n).toNat

end

end A304657.P3631913234449441979

/-! ## A304657.P15839356147181559114

`∑{d}[A074206(A044102(n+1)), A000010(#)]`
-/

namespace A304657.P15839356147181559114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A044102 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A304657.P15839356147181559114

/-! ## A304657.P1660085351065773933

`A074206(A044102(n+1))/A007318(∑[n])`
-/

namespace A304657.P1660085351065773933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A044102 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A304657.P1660085351065773933

/-! ## A304657.P13768549781205343890

`A074206(A044102(n+1))/A014963(C(n+4, 2))`
-/

namespace A304657.P13768549781205343890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A044102 (n + 1)).toNat : ℚ) / (A014963 (Nat.choose (n + 4) 2) : ℚ)

end

end A304657.P13768549781205343890

/-! ## A304657.P17641191830787462398

`A074206(A044102(n+1))^A000005(gcd(n, n+1))`
-/

namespace A304657.P17641191830787462398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A044102 (n + 1)).toNat : ℚ) ^ (A000005 (Nat.gcd n (n + 1)) : ℤ)

end

end A304657.P17641191830787462398

/-!
# A304659: a(n) = n*(n + 1)*(16*n - 1)/6.

The programs for A304659, the canonical program `A304659.P8817053283151300869` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304659 has offset 0).

The definition of A304659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(16*n-1)/6` (program `A304659.P885286585239006735`, by `A304659.P885286585239006735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304659.P885286585239006735

`n*(n+1)*(16*n-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304659.P885286585239006735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((16 * n : ℤ) - 1) : ℚ) / 6

end

end A304659.P885286585239006735

namespace A304659

/-- `n*(n+1)*(16*n-1)/6` -/
def P885286585239006735.Spec : Prop :=
  ∀ n, P885286585239006735.a n = (A304659 n : ℚ)

theorem P885286585239006735.correct : P885286585239006735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A304659, Nat.add_sub_cancel, A304659.P885286585239006735.a, A304659.P8817053283151300869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A304659, Nat.add_sub_cancel, A304659.P885286585239006735.a, A304659.P8817053283151300869.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304659

/-! ## A304659.P8817053283151300869

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=31, a(3)=94`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304659

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8817053283151300869.Spec : Prop :=
  ∀ n, P8817053283151300869.a n = A304659 n

theorem P8817053283151300869.correct : P8817053283151300869.Spec := by
  intro n
  simp only [A304659]

end A304659

/-! ## A304659.P14006459899115242957

`∑[C(4*n, 2)-n]`
-/

namespace A304659.P14006459899115242957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P14006459899115242957

namespace A304659

/-- `∑[C(4*n, 2)-n]` -/
def P14006459899115242957.Spec : Prop :=
  ∀ n, P14006459899115242957.a n = A304659 n

end A304659

/-! ## A304659.P7257350586590358284

`∑[n*record[lcm(4, n)]]+∑[n]`
-/

namespace A304659.P7257350586590358284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A304659.P7257350586590358284

namespace A304659

/-- `∑[n*record[lcm(4, n)]]+∑[n]` -/
def P7257350586590358284.Spec : Prop :=
  ∀ n, (P7257350586590358284.a n : ℤ) = A304659 n

end A304659

/-! ## A304659.P7605925531679334816

`∑[4*C(2*n, 2)]+∑[n]`
-/

namespace A304659.P7605925531679334816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A304659.P7605925531679334816

namespace A304659

/-- `∑[4*C(2*n, 2)]+∑[n]` -/
def P7605925531679334816.Spec : Prop :=
  ∀ n, (P7605925531679334816.a n : ℤ) = A304659 n

end A304659

/-! ## A304659.P3442556725074610268

`((2*n)^3+n)/3+C(5*n, 2)/5`
-/

namespace A304659.P3442556725074610268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 3 + n : ℚ) / 3 + (Nat.choose (5 * n) 2 : ℚ) / 5

end

end A304659.P3442556725074610268

namespace A304659

/-- `((2*n)^3+n)/3+C(5*n, 2)/5` -/
def P3442556725074610268.Spec : Prop :=
  ∀ n, P3442556725074610268.a n = (A304659 n : ℚ)

end A304659

/-! ## A304659.P5349947533270930699

`∑[A139273(n)]`
-/

namespace A304659.P5349947533270930699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P5349947533270930699

namespace A304659

/-- `∑[A139273(n)]` -/
def P5349947533270930699.Spec : Prop :=
  ∀ n, P5349947533270930699.a n = A304659 n

end A304659

/-! ## A304659.P11212131842363760039

`∑[A028994(n)/2]`
-/

namespace A304659.P11212131842363760039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028994 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P11212131842363760039

namespace A304659

/-- `∑[A028994(n)/2]` -/
def P11212131842363760039.Spec : Prop :=
  ∀ n, P11212131842363760039.a n = (A304659 n : ℚ)

end A304659

/-! ## A304659.P17079915334054264984

`∑[A085250(n)+n]`
-/

namespace A304659.P17079915334054264984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P17079915334054264984

namespace A304659

/-- `∑[A085250(n)+n]` -/
def P17079915334054264984.Spec : Prop :=
  ∀ n, P17079915334054264984.a n = A304659 n

end A304659

/-! ## A304659.P2511598726402870447

`∑[A014635(n)-n]`
-/

namespace A304659.P2511598726402870447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P2511598726402870447

namespace A304659

/-- `∑[A014635(n)-n]` -/
def P2511598726402870447.Spec : Prop :=
  ∀ n, P2511598726402870447.a n = A304659 n

end A304659

/-! ## A304659.P12317563228190136595

`∑[A152743(n)-n²]`
-/

namespace A304659.P12317563228190136595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P12317563228190136595

namespace A304659

/-- `∑[A152743(n)-n²]` -/
def P12317563228190136595.Spec : Prop :=
  ∀ n, P12317563228190136595.a n = A304659 n

end A304659

/-! ## A304659.P824401704286882286

`∑[A185438(n)-(n+1)]`
-/

namespace A304659.P824401704286882286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304659.P824401704286882286

namespace A304659

/-- `∑[A185438(n)-(n+1)]` -/
def P824401704286882286.Spec : Prop :=
  ∀ n, P824401704286882286.a n = A304659 n

end A304659

/-! ## A304659.P15349398707807013498

`∑[n]+2*A268684(n)`
-/

namespace A304659.P15349398707807013498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A268684 n

end

end A304659.P15349398707807013498

namespace A304659

/-- `∑[n]+2*A268684(n)` -/
def P15349398707807013498.Spec : Prop :=
  ∀ n, P15349398707807013498.a n = A304659 n

end A304659

/-! ## A304659.P9801864945216410612

`2*A132124(n)-∑[n]`
-/

namespace A304659.P9801864945216410612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132124 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A304659.P9801864945216410612

namespace A304659

/-- `2*A132124(n)-∑[n]` -/
def P9801864945216410612.Spec : Prop :=
  ∀ n, P9801864945216410612.a n = A304659 n

end A304659

/-! ## A304659.P3621490535096958471

`∑[n]+A258582(n)-n`
-/

namespace A304659.P3621490535096958471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A258582 n - (n : ℤ))

end

end A304659.P3621490535096958471

namespace A304659

/-- `∑[n]+A258582(n)-n` -/
def P3621490535096958471.Spec : Prop :=
  ∀ n, P3621490535096958471.a n = A304659 n

end A304659

/-! ## A304659.P14491620395297426066

`3*(n+1)*n²-A000330(n)`
-/

namespace A304659.P14491620395297426066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) * n ^ 2 : ℤ) - A000330 n

end

end A304659.P14491620395297426066

namespace A304659

/-- `3*(n+1)*n²-A000330(n)` -/
def P14491620395297426066.Spec : Prop :=
  ∀ n, P14491620395297426066.a n = A304659 n

end A304659

/-! ## A304659.P5965935264202686466

`A007585(n)+A002492(n)`
-/

namespace A304659.P5965935264202686466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n + A002492 n

end

end A304659.P5965935264202686466

namespace A304659

/-- `A007585(n)+A002492(n)` -/
def P5965935264202686466.Spec : Prop :=
  ∀ n, P5965935264202686466.a n = A304659 n

end A304659

/-! ## A304659.P5412952705318401053

`A132112(n)+A002413(n)`
-/

namespace A304659.P5412952705318401053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n + A002413 n

end

end A304659.P5412952705318401053

namespace A304659

/-- `A132112(n)+A002413(n)` -/
def P5412952705318401053.Spec : Prop :=
  ∀ n, P5412952705318401053.a n = A304659 n

end A304659

/-! ## A304659.P3941566400370675745

`A143166(n)+A005476(n)`
-/

namespace A304659.P3941566400370675745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n + A005476 n

end

end A304659.P3941566400370675745

namespace A304659

/-- `A143166(n)+A005476(n)` -/
def P3941566400370675745.Spec : Prop :=
  ∀ n, P3941566400370675745.a n = A304659 n

end A304659

/-! ## A304659.P11337830502526765707

`A147875(n)+A063523(n)`
-/

namespace A304659.P11337830502526765707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + A063523 n

end

end A304659.P11337830502526765707

namespace A304659

/-- `A147875(n)+A063523(n)` -/
def P11337830502526765707.Spec : Prop :=
  ∀ n, P11337830502526765707.a n = A304659 n

end A304659

/-!
# A304660: A run-length describing inverse to A181819. The multiplicity of prime(k) in a(n) is the k-th smallest prime index of n, which is A112798(n,k).

The programs for A304660, there is no canonical definition to state claims against.
-/

/-! ## A304660.P2073901076305908480

`A057335(A333220(n+1))`
-/

namespace A304660.P2073901076305908480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A333220 (n + 1)).toNat

end

end A304660.P2073901076305908480

/-! ## A304660.P7732152432937839003

`A320389(A181821(n+1))`
-/

namespace A304660.P7732152432937839003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320389 (A181821 (n + 1)).toNat

end

end A304660.P7732152432937839003

/-! ## A304660.P15768039787538436964

`A322825(A243354(n+1))`
-/

namespace A304660.P15768039787538436964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322825 (A243354 (n + 1)).toNat

end

end A304660.P15768039787538436964

/-! ## A304660.P13967921351696376504

`A334031(A233249(n+1))`
-/

namespace A304660.P13967921351696376504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (A233249 (n + 1)).toNat

end

end A304660.P13967921351696376504

/-! ## A304660.P8651395358082922914

`A334031(∑{p}[A358137(n+1), A296188(#)])`
-/

namespace A304660.P8651395358082922914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A296188 p).toNat

end

end A304660.P8651395358082922914

/-!
# A304661: Numbers n that are log_2(n-1)-smooth, i.e., such that all the prime factors of n are less than log_2(n).

The programs for A304661, there is no canonical definition to state claims against.
-/

/-! ## A304661.P2816203424644251343

`lt[∑{p}[n, 4^#], n²]`
-/

namespace A304661.P2816203424644251343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), 4 ^ p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A304661.P2816203424644251343

/-! ## A304661.P14514582365736634554

`record[A003557(A100966(n+9))]`
-/

namespace A304661.P14514582365736634554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A100966 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304661.P14514582365736634554

/-! ## A304661.P11450020972639445170

`lt[A005067(A375461(3*n+5)), A093679(n+1)]`
-/

namespace A304661.P11450020972639445170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (A375461 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304661.P11450020972639445170

/-! ## A304661.P6653233583632161427

`A321177(n+1)+C(2, n)*A061579(n)`
-/

namespace A304661.P6653233583632161427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + (Nat.choose 2 n : ℤ) * A061579 n

end

end A304661.P6653233583632161427

/-! ## A304661.P11642025103262951715

`A003586(n+5)%A250120(A018038(n))`
-/

namespace A304661.P11642025103262951715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003586 (n + 5)) (A250120 (A018038 n).toNat)

end

end A304661.P11642025103262951715

/-!
# A304662: Total number of domino tilings of Ferrers-Young diagrams summed over all partitions of 2n.

The programs for A304662, there is no canonical definition to state claims against.
-/

/-! ## A304662.P8136763489466477897

`A304680(2*n)`
-/

namespace A304662.P8136763489466477897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304680 (2 * n)

end

end A304662.P8136763489466477897

/-! ## A304662.P2746062421087999582

`record[A304680(n)/(-1)^n]`
-/

namespace A304662.P2746062421087999582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304680 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304662.P2746062421087999582

/-! ## A304662.P15342157630524631771

`record[A304680(n^log2(gcd(2, n)))]`
-/

namespace A304662.P15342157630524631771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304680 (SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304662.P15342157630524631771

/-! ## A304662.P7877185180676890944

`record[A304680(floor(n/(n%2+1)))]`
-/

namespace A304662.P7877185180676890944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304680 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304662.P7877185180676890944

/-! ## A304662.P12821824069027825177

`record[A304680(A083220(n))]`
-/

namespace A304662.P12821824069027825177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304680 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304662.P12821824069027825177

/-!
# A304663: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304663, there is no canonical definition to state claims against.
-/

/-! ## A304663.P12963030570210594780

`A304669(∑[4*n]+1)`
-/

namespace A304663.P12963030570210594780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304663.P12963030570210594780

/-! ## A304663.P17049980967779752744

`record[A304669(Δ[A235355(n)])]`
-/

namespace A304663.P17049980967779752744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304663.P17049980967779752744

/-! ## A304663.P17138292314713821839

`A304669(A001844(n))+char[11]`
-/

namespace A304663.P17138292314713821839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304663.P17138292314713821839

/-! ## A304663.P2742753099886017039

`record[A003982(n)*A304669(n+1)]`
-/

namespace A304663.P2742753099886017039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304663.P2742753099886017039

/-! ## A304663.P13700848122778795788

`A304669(A001844(n))%A282733(n)`
-/

namespace A304663.P13700848122778795788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304669 (A001844 n).toNat) (A282733 n)

end

end A304663.P13700848122778795788

/-!
# A304664: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304664, there is no canonical definition to state claims against.
-/

/-! ## A304664.P10173805871243749156

`A304669(∑[n+2]+4)`
-/

namespace A304664.P10173805871243749156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304664.P10173805871243749156

/-! ## A304664.P924908455032337034

`or(char[1], A304669(A167614(n+1)))`
-/

namespace A304664.P924908455032337034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304669 (A167614 (n + 1)).toNat)

end

end A304664.P924908455032337034

/-! ## A304664.P6705468503075598788

`A304669(A167499(n)+n)+char[27]`
-/

namespace A304664.P6705468503075598788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304664.P6705468503075598788

/-! ## A304664.P17385926931068478486

`record[root(A304669(n+4), A004736(n+1))]`
-/

namespace A304664.P17385926931068478486
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A304669 (n + 4) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304664.P17385926931068478486

/-! ## A304664.P11558963107875452723

`A304669(A167614(n+1))%A041354(n)`
-/

namespace A304664.P11558963107875452723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304669 (A167614 (n + 1)).toNat) (A041354 n)

end

end A304664.P11558963107875452723

/-!
# A304665: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304665, there is no canonical definition to state claims against.
-/

/-! ## A304665.P10380518807342225028

`A304669(∑[n+3]+7)`
-/

namespace A304665.P10380518807342225028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304665.P10380518807342225028

/-! ## A304665.P5963507833749307929

`A304669(A052905(n)+9)+char[20]`
-/

namespace A304665.P5963507833749307929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304665.P5963507833749307929

/-! ## A304665.P2809797168733964097

`record[A304669(n+5)/A124576(n+1)]`
-/

namespace A304665.P2809797168733964097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304669 (n + 5) : ℚ) / (A124576 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304665.P2809797168733964097

/-! ## A304665.P387800017999345306

`A304669(A052905(n)+9)%A000108(n+4)`
-/

namespace A304665.P387800017999345306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304669 (A052905 n + 9).toNat) (A000108 (n + 4))

end

end A304665.P387800017999345306

/-! ## A304665.P2261548107060309149

`A007318(C(2, n))*A304669(A052905(n)+9)`
-/

namespace A304665.P2261548107060309149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304669 (A052905 n + 9).toNat

end

end A304665.P2261548107060309149

/-!
# A304666: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304666, there is no canonical definition to state claims against.
-/

/-! ## A304666.P4196098091681536946

`A304669(A374005(n+1))`
-/

namespace A304666.P4196098091681536946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A374005 (n + 1)).toNat

end

end A304666.P4196098091681536946

/-! ## A304666.P5132283911939752013

`A304669(A155212(n)+13)`
-/

namespace A304666.P5132283911939752013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A155212 n + 13).toNat

end

end A304666.P5132283911939752013

/-! ## A304666.P12175126445285812300

`A304669(A056000(n)+15)`
-/

namespace A304666.P12175126445285812300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A056000 n + 15).toNat

end

end A304666.P12175126445285812300

/-! ## A304666.P15141816375902629127

`A304669(eq[7, A066657(n)])`
-/

namespace A304666.P15141816375902629127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304666.P15141816375902629127

/-! ## A304666.P10282370020772849681

`A304669(A000124(n+4)+4)`
-/

namespace A304666.P10282370020772849681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A000124 (n + 4) + 4).toNat

end

end A304666.P10282370020772849681

/-!
# A304667: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304667, there is no canonical definition to state claims against.
-/

/-! ## A304667.P1248819187344660860

`A304669(A374007(n+1))`
-/

namespace A304667.P1248819187344660860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A374007 (n + 1)).toNat

end

end A304667.P1248819187344660860

/-! ## A304667.P2734612209774511379

`A304669(A056115(n)+21)`
-/

namespace A304667.P2734612209774511379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A056115 n + 21).toNat

end

end A304667.P2734612209774511379

/-! ## A304667.P4401763464576056538

`A304669(A167614(n+4)+3)`
-/

namespace A304667.P4401763464576056538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A167614 (n + 4) + 3).toNat

end

end A304667.P4401763464576056538

/-! ## A304667.P2211964529403924296

`A304669(A000124(n+5)+5)`
-/

namespace A304667.P2211964529403924296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A000124 (n + 5) + 5).toNat

end

end A304667.P2211964529403924296

/-! ## A304667.P5758934293247892961

`A304669(A000096(n+4)+7)`
-/

namespace A304667.P5758934293247892961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A000096 (n + 4) + 7).toNat

end

end A304667.P5758934293247892961

/-!
# A304668: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304668, there is no canonical definition to state claims against.
-/

/-! ## A304668.P16983676622360281097

`A304669(A374008(n+1))`
-/

namespace A304668.P16983676622360281097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A374008 (n + 1)).toNat

end

end A304668.P16983676622360281097

/-! ## A304668.P7699678487490022054

`A304669(A056119(n)+28)`
-/

namespace A304668.P7699678487490022054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A056119 n + 28).toNat

end

end A304668.P7699678487490022054

/-! ## A304668.P16379999078716329871

`A304669(eq[11, A066657(n)])`
-/

namespace A304668.P16379999078716329871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304668.P16379999078716329871

/-! ## A304668.P11953105427057171681

`A304669(A000124(n+6)+6)`
-/

namespace A304668.P11953105427057171681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A000124 (n + 6) + 6).toNat

end

end A304668.P11953105427057171681

/-! ## A304668.P13899660395911362053

`A304669(A000217(n+6)+7)`
-/

namespace A304668.P13899660395911362053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A000217 (n + 6) + 7).toNat

end

end A304668.P13899660395911362053

/-!
# A304669: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304669, there is no canonical definition to state claims against.
-/

/-! ## A304669.P12222135622854376489

`A026730(8*A306172(n+1))`
-/

namespace A304669.P12222135622854376489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (8 * A306172 (n + 1)).toNat

end

end A304669.P12222135622854376489

/-! ## A304669.P3126722209754395534

`A106609(8*A306172(n+1))`
-/

namespace A304669.P3126722209754395534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (8 * A306172 (n + 1)).toNat

end

end A304669.P3126722209754395534

/-! ## A304669.P16843571592444538108

`A194516(8*A306172(n+1))`
-/

namespace A304669.P16843571592444538108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194516 (8 * A306172 (n + 1)).toNat

end

end A304669.P16843571592444538108

/-! ## A304669.P9195100819655610851

`A306172(n+1)%A059611(n+1)`
-/

namespace A304669.P9195100819655610851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306172 (n + 1)) (A059611 (n + 1))

end

end A304669.P9195100819655610851

/-! ## A304669.P6241801304248170397

`A306172(n+1)+A209229(A309480(n))`
-/

namespace A304669.P6241801304248170397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (n + 1) + A209229 (A309480 n).toNat

end

end A304669.P6241801304248170397

/-!
# A304670: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304670, there is no canonical definition to state claims against.
-/

/-! ## A304670.P11879578859573061405

`A304676(∑[4*n]+1)`
-/

namespace A304670.P11879578859573061405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304670.P11879578859573061405

/-! ## A304670.P3565162158848614230

`and(-1, A304676(A001844(n)))`
-/

namespace A304670.P3565162158848614230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304676 (A001844 n).toNat)

end

end A304670.P3565162158848614230

/-! ## A304670.P9848663884232609968

`record[A304676(A330613(n+1))]`
-/

namespace A304670.P9848663884232609968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304670.P9848663884232609968

/-! ## A304670.P11413876218504880568

`record[A003982(n)*A304676(n+1)]`
-/

namespace A304670.P11413876218504880568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304670.P11413876218504880568

/-! ## A304670.P7506230281167661022

`record[A214505(n)*A304676(n+1)]`
-/

namespace A304670.P7506230281167661022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A304676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304670.P7506230281167661022

/-!
# A304671: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304671, there is no canonical definition to state claims against.
-/

/-! ## A304671.P6212431673275972561

`A304676(∑[n+2]+4)`
-/

namespace A304671.P6212431673275972561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304671.P6212431673275972561

/-! ## A304671.P1295471046681909607

`or(1, A304676(A167614(n+1)))`
-/

namespace A304671.P1295471046681909607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304676 (A167614 (n + 1)).toNat)

end

end A304671.P1295471046681909607

/-! ## A304671.P6706831531610920404

`record[A010054(n)*A304676(n+3)]`
-/

namespace A304671.P6706831531610920404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304676 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304671.P6706831531610920404

/-! ## A304671.P134495459696690972

`record[gcd(A303913(n), A304676(n+1))]`
-/

namespace A304671.P134495459696690972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304676 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304671.P134495459696690972

/-! ## A304671.P14423757966620935850

`or(1, A304676(A034856(n+1)+5))`
-/

namespace A304671.P14423757966620935850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304676 (A034856 (n + 1) + 5).toNat)

end

end A304671.P14423757966620935850

/-!
# A304672: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304672, there is no canonical definition to state claims against.
-/

/-! ## A304672.P7820061374677608261

`A304676(∑[n+3]+7)`
-/

namespace A304672.P7820061374677608261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304672.P7820061374677608261

/-! ## A304672.P3921806059088239254

`record[gcd(A300453(n), A304676(n+1))]`
-/

namespace A304672.P3921806059088239254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300453 n) (A304676 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304672.P3921806059088239254

/-! ## A304672.P8553539493973160343

`record[gcd(A303913(n), A304676(n+2))]`
-/

namespace A304672.P8553539493973160343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304676 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304672.P8553539493973160343

/-! ## A304672.P16326824983553158525

`A304676(Δ[A008778(n)]+6)+char[19]`
-/

namespace A304672.P16326824983553158525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304672.P16326824983553158525

/-! ## A304672.P3935676221998489692

`A304676(Δ[A008778(n)]+6)^(A000040(n+1)%2)`
-/

namespace A304672.P3935676221998489692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304676 (f1 (n + 1) - f1 n + 6).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A304672.P3935676221998489692

/-!
# A304673: Number of n X 5 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304673, there is no canonical definition to state claims against.
-/

/-! ## A304673.P10402468821660879840

`A304676(A167499(n+3))`
-/

namespace A304673.P10402468821660879840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A167499 (n + 3)).toNat

end

end A304673.P10402468821660879840

/-! ## A304673.P9951017723824497549

`A304676(A155212(n)+13)`
-/

namespace A304673.P9951017723824497549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A155212 n + 13).toNat

end

end A304673.P9951017723824497549

/-! ## A304673.P12344418701290373409

`A304676(A056000(n)+15)`
-/

namespace A304673.P12344418701290373409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A056000 n + 15).toNat

end

end A304673.P12344418701290373409

/-! ## A304673.P6373615890973600287

`A304676(eq[7, A066657(n)])`
-/

namespace A304673.P6373615890973600287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304673.P6373615890973600287

/-! ## A304673.P4371422584352951207

`A304676(A167614(n+3)+2)`
-/

namespace A304673.P4371422584352951207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A167614 (n + 3) + 2).toNat

end

end A304673.P4371422584352951207

/-!
# A304674: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304674, there is no canonical definition to state claims against.
-/

/-! ## A304674.P3268146988753866087

`A304676(∑[n+5]+16)`
-/

namespace A304674.P3268146988753866087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304674.P3268146988753866087

/-!
# A304675: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304675, there is no canonical definition to state claims against.
-/

/-! ## A304675.P48410355500447069

`A304676(A167487(n+5))`
-/

namespace A304675.P48410355500447069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A167487 (n + 5)).toNat

end

end A304675.P48410355500447069

/-! ## A304675.P6562368364318530675

`A304676(A056119(n)+28)`
-/

namespace A304675.P6562368364318530675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A056119 n + 28).toNat

end

end A304675.P6562368364318530675

/-! ## A304675.P3362529466024939465

`A304676(eq[11, A066657(n)])`
-/

namespace A304675.P3362529466024939465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304675.P3362529466024939465

/-! ## A304675.P12792186206402571762

`A304676(A167614(n+5)+4)`
-/

namespace A304675.P12792186206402571762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A167614 (n + 5) + 4).toNat

end

end A304675.P12792186206402571762

/-! ## A304675.P3686624151974729405

`A304676(A000096(n+5)+8)`
-/

namespace A304675.P3686624151974729405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (A000096 (n + 5) + 8).toNat

end

end A304675.P3686624151974729405

/-!
# A304676: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304676, there is no canonical definition to state claims against.
-/

/-! ## A304676.P7263418834265905181

`A316123(n+1)-A055641(A060854(n+1))`
-/

namespace A304676.P7263418834265905181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (n + 1) - A055641 (A060854 (n + 1)).toNat

end

end A304676.P7263418834265905181

/-! ## A304676.P8277311346519183142

`A316123(∑[∑[A111332(n)]])`
-/

namespace A304676.P8277311346519183142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304676.P8277311346519183142

/-! ## A304676.P10770453791554237111

`A316123(∑[∑[A151620(n)]])`
-/

namespace A304676.P10770453791554237111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304676.P10770453791554237111

/-! ## A304676.P2901064589587521314

`A316123(A111332(n)+1+n)`
-/

namespace A304676.P2901064589587521314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A111332 n + 1 + (n : ℤ)).toNat

end

end A304676.P2901064589587521314

/-! ## A304676.P9386246465703586596

`A316123(n+1)%A116670(n+1)`
-/

namespace A304676.P9386246465703586596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316123 (n + 1)) (A116670 (n + 1))

end

end A304676.P9386246465703586596

/-!
# A304677: Total number of tilings of Ferrers-Young diagrams using dominoes and monominoes summed over all partitions of n.

The programs for A304677, there is no canonical definition to state claims against.
-/

/-! ## A304677.P10463114045272369469

`A133431(2^n)-A192781(n+1)`
-/

namespace A304677.P10463114045272369469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133431 (2 ^ n) - A192781 (n + 1)

end

end A304677.P10463114045272369469

/-! ## A304677.P12455868115991652887

`A309250(A001862(n)*A194451(n+1))`
-/

namespace A304677.P12455868115991652887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309250 (A001862 n * A194451 (n + 1)).toNat

end

end A304677.P12455868115991652887

/-!
# A304678: Numbers with weakly increasing prime multiplicities.

The programs for A304678, there is no canonical definition to state claims against.
-/

/-! ## A304678.P4221815991730717433

`record[gcd(n+1, A085079(n+1))]`
-/

namespace A304678.P4221815991730717433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085079 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304678.P4221815991730717433

/-! ## A304678.P16912789128068670551

`lt[A085079(A028310(n)), n+1]`
-/

namespace A304678.P16912789128068670551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304678.P16912789128068670551

/-! ## A304678.P6381849324540746267

`eq[A000027(n+1), A085079(n+1)]+1`
-/

namespace A304678.P6381849324540746267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304678.P6381849324540746267

/-! ## A304678.P3424422185633131527

`A085079(eq[n+1, A085079(n+1)]+1)`
-/

namespace A304678.P3424422185633131527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A304678.P3424422185633131527

/-! ## A304678.P58782064303775255

`lt[A085079(n+1), A020725(n+1)]+1`
-/

namespace A304678.P58782064303775255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A304678.P58782064303775255

/-! ## A304678.P9373685126043542864

`A085079(record[(n+1)²/A085079(n+1)])`
-/

namespace A304678.P9373685126043542864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A085079 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A304678.P9373685126043542864

/-! ## A304678.P18337820771477587336

`A085079(record[n/(A085079(n+1)-n)]+1)`
-/

namespace A304678.P18337820771477587336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A085079 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A304678.P18337820771477587336

/-! ## A304678.P8243969063301871153

`A085079(record[2*n+1-A085079(n+1)]+1)`
-/

namespace A304678.P8243969063301871153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A304678.P8243969063301871153

/-! ## A304678.P4797754163074934933

`lt[0, char[A085079(n+1)]]`
-/

namespace A304678.P4797754163074934933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304678.P4797754163074934933

/-! ## A304678.P3057259558189452554

`eq[char[A085079(n+1)], A057427(n+1)]`
-/

namespace A304678.P3057259558189452554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304678.P3057259558189452554

/-! ## A304678.P3808734737939414189

`comp[A329142(n+1)]+floor(acot(n))`
-/

namespace A304678.P3808734737939414189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A304678.P3808734737939414189

/-!
# A304679: A prime-multiplicity (or run-length) describing recurrence: a(n+1) = A181821(a(n)).

The programs for A304679, there is no canonical definition to state claims against.
-/

/-! ## A304679.P5340566303916769129

`A304660(a(n-1))` with `a(0)=3`
-/

namespace A304679.P5340566303916769129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A304660 (a (n - 1)).toNat

end

end A304679.P5340566303916769129

/-! ## A304679.P13023170157786632603

`A276076(a(n-1)-1)` with `a(0)=3, a(1)=4`
-/

namespace A304679.P13023170157786632603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A276076 (a (n - 1) - 1).toNat

end

end A304679.P13023170157786632603

/-!
# A304685: a(n) = A000699(n) (mod 3).

The programs for A304685, the canonical program `A304685.P4730161233825574462` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304685 has offset 1).

The definition of A304685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304685.P4730161233825574462

`C(A204697(n+1), A286577(A038502(n+1)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A304685

/-- `C(A204697(n+1), A286577(A038502(n+1)))` -/
def P4730161233825574462.Spec : Prop :=
  ∀ n, (P4730161233825574462.a n : ℤ) = A304685 (n + 1)

theorem P4730161233825574462.correct : P4730161233825574462.Spec := by
  intro n
  simp only [A304685, Nat.add_sub_cancel]

end A304685

/-! ## A304685.P12202323933622601787

`A250886(n+1)%3`
-/

namespace A304685.P12202323933622601787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250886 (n + 1)) 3

end

end A304685.P12202323933622601787

namespace A304685

/-- `A250886(n+1)%3` -/
def P12202323933622601787.Spec : Prop :=
  ∀ n, P12202323933622601787.a n = A304685 (n + 1)

end A304685

/-! ## A304685.P1686169303801325652

`gcd(A001764(n), A006013(n))%3`
-/

namespace A304685.P1686169303801325652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001764 n) (A006013 n) % 3

end

end A304685.P1686169303801325652

namespace A304685

/-- `gcd(A001764(n), A006013(n))%3` -/
def P1686169303801325652.Spec : Prop :=
  ∀ n, (P1686169303801325652.a n : ℤ) = A304685 (n + 1)

end A304685

/-! ## A304685.P10311181220778633347

`((A006013(n)%3)^(A028310(n)+1))%3`
-/

namespace A304685.P10311181220778633347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Int.tmod (A006013 n) 3 : ℚ) ^ (A028310 n + 1 : ℤ))) 3

end

end A304685.P10311181220778633347

namespace A304685

/-- `((A006013(n)%3)^(A028310(n)+1))%3` -/
def P10311181220778633347.Spec : Prop :=
  ∀ n, P10311181220778633347.a n = A304685 (n + 1)

end A304685

/-! ## A304685.P150830750216423391

`A281228(n+1)/(n%2+1)`
-/

namespace A304685.P150830750216423391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A304685.P150830750216423391

namespace A304685

/-- `A281228(n+1)/(n%2+1)` -/
def P150830750216423391.Spec : Prop :=
  ∀ n, P150830750216423391.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P14783078856089471188

`A281228(∏{p}[n+1, gcd((n+1)*(n+2), #²)])/(val(n+1, 2)+1)`
-/

namespace A304685.P14783078856089471188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2)) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A304685.P14783078856089471188

namespace A304685

/-- `A281228(∏{p}[n+1, gcd((n+1)*(n+2), #²)])/(val(n+1, 2)+1)` -/
def P14783078856089471188.Spec : Prop :=
  ∀ n, P14783078856089471188.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P4636383010833629345

`A281228(n+1)/A000034(n)`
-/

namespace A304685.P4636383010833629345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A304685.P4636383010833629345

namespace A304685

/-- `A281228(n+1)/A000034(n)` -/
def P4636383010833629345.Spec : Prop :=
  ∀ n, P4636383010833629345.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P7154300641688450369

`A281228(n+1)/A010673(n)!`
-/

namespace A304685.P7154300641688450369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A304685.P7154300641688450369

namespace A304685

/-- `A281228(n+1)/A010673(n)!` -/
def P7154300641688450369.Spec : Prop :=
  ∀ n, P7154300641688450369.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P7946556957375195809

`A281228(n+1)/A001511(n+1)`
-/

namespace A304685.P7946556957375195809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A304685.P7946556957375195809

namespace A304685

/-- `A281228(n+1)/A001511(n+1)` -/
def P7946556957375195809.Spec : Prop :=
  ∀ n, P7946556957375195809.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P13344301033813024890

`A281228(n+1)/A006519(n+1)`
-/

namespace A304685.P13344301033813024890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A304685.P13344301033813024890

namespace A304685

/-- `A281228(n+1)/A006519(n+1)` -/
def P13344301033813024890.Spec : Prop :=
  ∀ n, P13344301033813024890.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P9536643401979399001

`A281228(n+1)/A085099(n+2)`
-/

namespace A304685.P9536643401979399001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A085099 (n + 2) : ℚ)

end

end A304685.P9536643401979399001

namespace A304685

/-- `A281228(n+1)/A085099(n+2)` -/
def P9536643401979399001.Spec : Prop :=
  ∀ n, P9536643401979399001.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P4072930824275145022

`A281228(n+1)/Δ[A001651(n+1)]`
-/

namespace A304685.P4072930824275145022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A304685.P4072930824275145022

namespace A304685

/-- `A281228(n+1)/Δ[A001651(n+1)]` -/
def P4072930824275145022.Spec : Prop :=
  ∀ n, P4072930824275145022.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P7037440342317689945

`A281228(n+1)/(A007814(n+1)+1)`
-/

namespace A304685.P7037440342317689945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A304685.P7037440342317689945

namespace A304685

/-- `A281228(n+1)/(A007814(n+1)+1)` -/
def P7037440342317689945.Spec : Prop :=
  ∀ n, P7037440342317689945.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P10398572071975951578

`A281228(n+1)/A001316(A135481(n))`
-/

namespace A304685.P10398572071975951578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A001316 (A135481 n).toNat : ℚ)

end

end A304685.P10398572071975951578

namespace A304685

/-- `A281228(n+1)/A001316(A135481(n))` -/
def P10398572071975951578.Spec : Prop :=
  ∀ n, P10398572071975951578.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P11355443797725924716

`A281228(n+1)/A007814(A005843(n+1))`
-/

namespace A304685.P11355443797725924716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281228 (n + 1) : ℚ) / (A007814 (A005843 (n + 1)).toNat : ℚ)

end

end A304685.P11355443797725924716

namespace A304685

/-- `A281228(n+1)/A007814(A005843(n+1))` -/
def P11355443797725924716.Spec : Prop :=
  ∀ n, P11355443797725924716.a n = (A304685 (n + 1) : ℚ)

end A304685

/-! ## A304685.P8440013606647212143

`A281228(∑{d}[(n+1)*A281228(n+1), A209229(#)])`
-/

namespace A304685.P8440013606647212143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A281228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281228 (∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d).toNat

end

end A304685.P8440013606647212143

namespace A304685

/-- `A281228(∑{d}[(n+1)*A281228(n+1), A209229(#)])` -/
def P8440013606647212143.Spec : Prop :=
  ∀ n, P8440013606647212143.a n = A304685 (n + 1)

end A304685

/-! ## A304685.P5568000171442337676

`A001316(n+1)/(2*A001316(n))*A281228(n+1)`
-/

namespace A304685.P5568000171442337676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) : ℚ) / (2 * A001316 n : ℚ) * (A281228 (n + 1) : ℚ)

end

end A304685.P5568000171442337676

namespace A304685

/-- `A001316(n+1)/(2*A001316(n))*A281228(n+1)` -/
def P5568000171442337676.Spec : Prop :=
  ∀ n, P5568000171442337676.a n = (A304685 (n + 1) : ℚ)

end A304685

/-!
# A304686: Numbers with strictly decreasing prime multiplicities.

The programs for A304686, there is no canonical definition to state claims against.
-/

/-! ## A304686.P6877567004320300553

`∪[A000961(n+1), A097320(n+1)]`
-/

namespace A304686.P6877567004320300553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304686.P6877567004320300553

/-! ## A304686.P10088767959694271226

`∪[A097320(n+1), A133813(n+1)]`
-/

namespace A304686.P10088767959694271226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304686.P10088767959694271226

/-! ## A304686.P12399099787406526911

`eq[A071364(n+1), A328400(A071364(n+1))]+1`
-/

namespace A304686.P12399099787406526911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (A071364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304686.P12399099787406526911

/-! ## A304686.P4049755529094471331

`eq[A071364(n+1), A328400(n+1)]+1`
-/

namespace A304686.P4049755529094471331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304686.P4049755529094471331

/-! ## A304686.P9566103376984763285

`filter[A242031(n+1), A351564(#)]`
-/

namespace A304686.P9566103376984763285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A304686.P9566103376984763285

/-! ## A304686.P9378194436942724350

`∩[A130091(n+1), A242031(n+1)]`
-/

namespace A304686.P9378194436942724350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304686.P9378194436942724350

/-! ## A304686.P9365459293265058048

`record[A089247(A130091(n+1))]`
-/

namespace A304686.P9365459293265058048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A130091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304686.P9365459293265058048

/-! ## A304686.P5746479342425599452

`record[A327498(A089247(n+1))]`
-/

namespace A304686.P5746479342425599452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A089247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304686.P5746479342425599452

/-! ## A304686.P1997738974046985465

`record[A327498(A242031(n+1))]`
-/

namespace A304686.P1997738974046985465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A242031 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304686.P1997738974046985465

/-! ## A304686.P9670079815872380882

`record[A089247(n+1)/A324912(A181819(n+1))]`
-/

namespace A304686.P9670079815872380882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089247 (n + 1) : ℚ) / (A324912 (A181819 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304686.P9670079815872380882

/-! ## A304686.P10627763004802584957

`∪[A097320(n+1), A219301(n+1)]`
-/

namespace A304686.P10627763004802584957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304686.P10627763004802584957

/-!
# A304687: Start with the multiset of prime multiplicities of n. Given a multiset, take the multiset of its multiplicities. Repeat until a constant multiset {k,k,...,k} is reached, and set a(n) to the sum of this multiset (k times the length).

The programs for A304687, there is no canonical definition to state claims against.
-/

/-! ## A304687.P4347710252314620104

`A304465(A238745(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A304687.P4347710252314620104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A238745 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A304687.P4347710252314620104

/-! ## A304687.P10405361792476724774

`A304465(A238745(n+1)^∑{p}[n+1, ceil(1/#)])`
-/

namespace A304687.P10405361792476724774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (SequenceMachineLib.roundAway ((A238745 (n + 1) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ))).toNat

end

end A304687.P10405361792476724774

/-! ## A304687.P7868795320471540384

`A304465(A238745(n+1)^A001221(n+1))`
-/

namespace A304687.P7868795320471540384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (SequenceMachineLib.roundAway ((A238745 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A304687.P7868795320471540384

/-! ## A304687.P10188064783099035858

`A304465(A238745(n+1)^A066922(n+1))`
-/

namespace A304687.P10188064783099035858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (SequenceMachineLib.roundAway ((A238745 (n + 1) : ℚ) ^ (A066922 (n + 1) : ℤ))).toNat

end

end A304687.P10188064783099035858

/-! ## A304687.P1956082279946271818

`A304465(A238745(n+1)^A087802(n+1))`
-/

namespace A304687.P1956082279946271818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (SequenceMachineLib.roundAway ((A238745 (n + 1) : ℚ) ^ (A087802 (n + 1) : ℤ))).toNat

end

end A304687.P1956082279946271818

/-! ## A304687.P2630884927447287953

`A304465(n+1)*A348039(A069626(n+1))`
-/

namespace A304687.P2630884927447287953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1) * A348039 (A069626 (n + 1)).toNat

end

end A304687.P2630884927447287953

/-! ## A304687.P7543855584655240049

`A304465(A328400(n+1)^A066922(n+1))`
-/

namespace A304687.P7543855584655240049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (SequenceMachineLib.roundAway ((A328400 (n + 1) : ℚ) ^ (A066922 (n + 1) : ℤ))).toNat

end

end A304687.P7543855584655240049

/-! ## A304687.P6008393217089271322

`A304465(A328400(n+1)^A087802(n+1))`
-/

namespace A304687.P6008393217089271322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (SequenceMachineLib.roundAway ((A328400 (n + 1) : ℚ) ^ (A087802 (n + 1) : ℤ))).toNat

end

end A304687.P6008393217089271322

/-! ## A304687.P18389059943460318174

`A066060(A066060(n+1))*A304465(n+1)`
-/

namespace A304687.P18389059943460318174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A066060 (n + 1)).toNat * A304465 (n + 1)

end

end A304687.P18389059943460318174

/-! ## A304687.P7796314540205000117

`gcd(A037916(A278254(n+1)), A076526(n+1))`
-/

namespace A304687.P7796314540205000117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037916 (A278254 (n + 1)).toNat) (A076526 (n + 1))

end

end A304687.P7796314540205000117

/-! ## A304687.P5068824710813331346

`lcm(A056624(A076078(n+1)), A304465(n+1))`
-/

namespace A304687.P5068824710813331346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056624 (A076078 (n + 1)).toNat) (A304465 (n + 1))

end

end A304687.P5068824710813331346

/-!
# A304688: Primes p > 5 such that there is a polygonal number P_s(k) (with s >= 3, k >= 5) equal to p-1.

The programs for A304688, there is no canonical definition to state claims against.
-/

/-! ## A304688.P6803815671570481481

`p?[lt[3, A129654(n+2)]+3]`
-/

namespace A304688.P6803815671570481481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A304688.P6803815671570481481

/-! ## A304688.P3215874884155091520

`p?[A247430(2*n+1)-15]`
-/

namespace A304688.P3215874884155091520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247430 (2 * n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304688.P3215874884155091520

/-! ## A304688.P11724806007994595169

`p?[xor(3, A038124(2*(n+2)))]`
-/

namespace A304688.P11724806007994595169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A038124 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304688.P11724806007994595169

/-!
# A304690: Primes p > 5 such that no polygonal number P_s(k) (with s >= 3, k >= 5 ) is equal to p - 1.

The programs for A304690, there is no canonical definition to state claims against.
-/

/-! ## A304690.P3333711779025806299

`p?[A177029(n+1)+1]`
-/

namespace A304690.P3333711779025806299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177029 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304690.P3333711779025806299

/-! ## A304690.P7243017859466825579

`record[A074399(A177029(n+1))]`
-/

namespace A304690.P7243017859466825579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A177029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P7243017859466825579

/-! ## A304690.P7068851773979002703

`record[A001414(A177029(n+1)+1)]`
-/

namespace A304690.P7068851773979002703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A177029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P7068851773979002703

/-! ## A304690.P7627020160566879035

`record[A006530(A177029(n+1)+1)]`
-/

namespace A304690.P7627020160566879035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A177029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P7627020160566879035

/-! ## A304690.P6635392925978242011

`record[A014963(A177029(n+1)+1)]`
-/

namespace A304690.P6635392925978242011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A177029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P6635392925978242011

/-! ## A304690.P16535528763863838732

`record[A020639(A177029(n+1)+1)]`
-/

namespace A304690.P16535528763863838732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A177029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P16535528763863838732

/-! ## A304690.P11065473263417379685

`record[A039649(A177029(n+1)+1)]`
-/

namespace A304690.P11065473263417379685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A177029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P11065473263417379685

/-! ## A304690.P7896837436839620875

`record[A000010(A177029(n+1)+1)+1]`
-/

namespace A304690.P7896837436839620875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A177029 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304690.P7896837436839620875

/-! ## A304690.P15454630492581601412

`∩[A000040(n+1), A177029(n+1)+1]`
-/

namespace A304690.P15454630492581601412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177029 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304690.P15454630492581601412

/-!
# A304691: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304691, there is no canonical definition to state claims against.
-/

/-! ## A304691.P5019183328482803259

`A304697(∑[4*n]+1)`
-/

namespace A304691.P5019183328482803259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304691.P5019183328482803259

/-! ## A304691.P10285780620334992036

`record[A304697(Δ[A235355(n)])]`
-/

namespace A304691.P10285780620334992036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304691.P10285780620334992036

/-! ## A304691.P3019420830668924599

`and(-1, A304697(A001844(n)))`
-/

namespace A304691.P3019420830668924599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304697 (A001844 n).toNat)

end

end A304691.P3019420830668924599

/-! ## A304691.P590985832162269867

`record[A304697(A330613(n+1))]`
-/

namespace A304691.P590985832162269867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304691.P590985832162269867

/-! ## A304691.P16679258048210394611

`record[A304697(Δ[A079824(n+1)])]`
-/

namespace A304691.P16679258048210394611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304691.P16679258048210394611

/-!
# A304692: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304692, there is no canonical definition to state claims against.
-/

/-! ## A304692.P12602821506196458787

`A304697(∑[n+2]+4)`
-/

namespace A304692.P12602821506196458787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304692.P12602821506196458787

/-! ## A304692.P6447414312548692147

`record[A304697(A008795(n)+3)]`
-/

namespace A304692.P6447414312548692147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304692.P6447414312548692147

/-! ## A304692.P2276576462264748658

`record[A010054(n)*A304697(n+3)]`
-/

namespace A304692.P2276576462264748658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304697 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304692.P2276576462264748658

/-! ## A304692.P8270638816271145006

`record[gcd(A303913(n), A304697(n+1))]`
-/

namespace A304692.P8270638816271145006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304697 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304692.P8270638816271145006

/-! ## A304692.P16843839716311802489

`record[gcd(A173018(n), A304697(n+4))]`
-/

namespace A304692.P16843839716311802489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173018 n) (A304697 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304692.P16843839716311802489

/-!
# A304693: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304693, there is no canonical definition to state claims against.
-/

/-! ## A304693.P13152225145929035402

`A304697(∑[n+3]+7)`
-/

namespace A304693.P13152225145929035402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304693.P13152225145929035402

/-! ## A304693.P12094225322479882302

`A304697(A145018(n+4))+char[16]`
-/

namespace A304693.P12094225322479882302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A145018 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304693.P12094225322479882302

/-! ## A304693.P17226598827315886552

`A007318(C(n, 2))*A304697(A145018(n+4))`
-/

namespace A304693.P17226598827315886552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304697 (A145018 (n + 4)).toNat

end

end A304693.P17226598827315886552

/-! ## A304693.P896523521810966617

`lcm((-1)^A007318(n), A304697(A145018(n+4)))`
-/

namespace A304693.P896523521810966617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (A304697 (A145018 (n + 4)).toNat)

end

end A304693.P896523521810966617

/-! ## A304693.P4774882684631265952

`A304697(A145018(n+4))/A007318(C(2, n+1))`
-/

namespace A304693.P4774882684631265952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304697 (A145018 (n + 4)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A304693.P4774882684631265952

/-!
# A304694: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304694, there is no canonical definition to state claims against.
-/

/-! ## A304694.P12151977874777741263

`A304697(∑[n+4]+11)`
-/

namespace A304694.P12151977874777741263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304694.P12151977874777741263

/-! ## A304694.P6776407110362917972

`A304697(A000217(n+4)+5)+char[15]`
-/

namespace A304694.P6776407110362917972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304694.P6776407110362917972

/-! ## A304694.P3029532025097690355

`A304697(A167499(n+3))+A008683(4*(n+1))`
-/

namespace A304694.P3029532025097690355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A167499 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A304694.P3029532025097690355

/-! ## A304694.P15580504400332980632

`A088421(3*n+2)*A304697(A167499(n+3))`
-/

namespace A304694.P15580504400332980632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088421 (3 * n + 2) * A304697 (A167499 (n + 3)).toNat

end

end A304694.P15580504400332980632

/-! ## A304694.P7749410351479005139

`A007318(C(2, n))*A304697(A000217(n+4)+5)`
-/

namespace A304694.P7749410351479005139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304697 (A000217 (n + 4) + 5).toNat

end

end A304694.P7749410351479005139

/-!
# A304695: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304695, there is no canonical definition to state claims against.
-/

/-! ## A304695.P8102168752729809799

`A304697(A374007(n+1))`
-/

namespace A304695.P8102168752729809799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A374007 (n + 1)).toNat

end

end A304695.P8102168752729809799

/-! ## A304695.P9963537252140168686

`A304697(A056115(n)+21)`
-/

namespace A304695.P9963537252140168686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A056115 n + 21).toNat

end

end A304695.P9963537252140168686

/-! ## A304695.P18267642644154570376

`A304697(A167499(n+4)+1)`
-/

namespace A304695.P18267642644154570376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A167499 (n + 4) + 1).toNat

end

end A304695.P18267642644154570376

/-! ## A304695.P3617592277343492950

`A304697(A167487(n+4)-1)`
-/

namespace A304695.P3617592277343492950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A167487 (n + 4) - 1).toNat

end

end A304695.P3617592277343492950

/-! ## A304695.P11055742908112074323

`A304697(A167614(n+4)+3)`
-/

namespace A304695.P11055742908112074323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A167614 (n + 4) + 3).toNat

end

end A304695.P11055742908112074323

/-!
# A304696: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304696, there is no canonical definition to state claims against.
-/

/-! ## A304696.P16814933037177108188

`A304697(A374008(n+1))`
-/

namespace A304696.P16814933037177108188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A374008 (n + 1)).toNat

end

end A304696.P16814933037177108188

/-! ## A304696.P5348330681193201267

`A304697(A056119(n)+28)`
-/

namespace A304696.P5348330681193201267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A056119 n + 28).toNat

end

end A304696.P5348330681193201267

/-! ## A304696.P9370641169103714216

`A304697(eq[11, A066657(n)])`
-/

namespace A304696.P9370641169103714216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304696.P9370641169103714216

/-! ## A304696.P8473528231296903637

`A304697(A166136(n+5)+1)`
-/

namespace A304696.P8473528231296903637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A166136 (n + 5) + 1).toNat

end

end A304696.P8473528231296903637

/-! ## A304696.P5569382746959075355

`A304697(A167499(n+5)+2)`
-/

namespace A304696.P5569382746959075355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (A167499 (n + 5) + 2).toNat

end

end A304696.P5569382746959075355

/-!
# A304697: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304697, there is no canonical definition to state claims against.
-/

/-! ## A304697.P17768615385182469234

`A316448(n+1)-A173636(A174545(n))`
-/

namespace A304697.P17768615385182469234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (n + 1) - A173636 (A174545 n).toNat

end

end A304697.P17768615385182469234

/-! ## A304697.P10023604078886879811

`A316448(n+1)+A305633(A334709(n+1))`
-/

namespace A304697.P10023604078886879811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (n + 1) + A305633 (A334709 (n + 1)).toNat

end

end A304697.P10023604078886879811

/-! ## A304697.P4359108660776414180

`A316448(n+1)-A065040(A282230(n+1))`
-/

namespace A304697.P4359108660776414180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (n + 1) - A065040 (A282230 (n + 1)).toNat

end

end A304697.P4359108660776414180

/-! ## A304697.P6015668337213769121

`A316448(n+1)-A316717(A316576(n+1))²`
-/

namespace A304697.P6015668337213769121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (n + 1) - A316717 (A316576 (n + 1)).toNat ^ 2

end

end A304697.P6015668337213769121

/-! ## A304697.P6170378518853837414

`A089867(A316130(n+1))`
-/

namespace A304697.P6170378518853837414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A316130 (n + 1)).toNat

end

end A304697.P6170378518853837414

/-!
# A304698: Number of n X n 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304698, there is no canonical definition to state claims against.
-/

/-! ## A304698.P12986601582809699838

`A304704(∑[4*n]+1)`
-/

namespace A304698.P12986601582809699838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304698.P12986601582809699838

/-! ## A304698.P3187905073339076103

`and(-1, A304704(A001844(n)))`
-/

namespace A304698.P3187905073339076103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304704 (A001844 n).toNat)

end

end A304698.P3187905073339076103

/-! ## A304698.P12249964663017480638

`record[A304704(A272267(n+1))]`
-/

namespace A304698.P12249964663017480638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304698.P12249964663017480638

/-! ## A304698.P3049005415211406361

`A304704(n²+(n+1)²)+A185229(n)`
-/

namespace A304698.P3049005415211406361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n ^ 2 + (n + 1) ^ 2) + A185229 n

end

end A304698.P3049005415211406361

/-! ## A304698.P3336569129260085595

`A304704(n²+(n+1)²)*A367516(2*n+1)`
-/

namespace A304698.P3336569129260085595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n ^ 2 + (n + 1) ^ 2) * A367516 (2 * n + 1)

end

end A304698.P3336569129260085595

/-!
# A304699: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304699, there is no canonical definition to state claims against.
-/

/-! ## A304699.P11127159894103030674

`A304704(∑[n+2]+4)`
-/

namespace A304699.P11127159894103030674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304699.P11127159894103030674

/-! ## A304699.P8324744778932612507

`and(-1, A304704(A167614(n+1)))`
-/

namespace A304699.P8324744778932612507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304704 (A167614 (n + 1)).toNat)

end

end A304699.P8324744778932612507

/-! ## A304699.P14292460967612280858

`A304704(A167499(n)+n)+char[19]`
-/

namespace A304699.P14292460967612280858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304699.P14292460967612280858

/-! ## A304699.P8305353193801793807

`A326545(n)+A304704(A167614(n+1))`
-/

namespace A304699.P8305353193801793807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A304704 (A167614 (n + 1)).toNat

end

end A304699.P8305353193801793807

/-! ## A304699.P15756336648606244888

`A304704(A167614(n+1))%A014347(n)`
-/

namespace A304699.P15756336648606244888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304704 (A167614 (n + 1)).toNat) (A014347 n)

end

end A304699.P15756336648606244888

