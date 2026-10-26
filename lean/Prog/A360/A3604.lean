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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A360400: a(n) = A356133(A360392(n)).

The programs for A360400, the canonical program `A360400.P9645885000250557637` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360400 has offset 1).

The definition of A360400 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360400.P9645885000250557637

`A356133(A360392(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360400

/-- `A356133(A360392(n+1))` -/
def P9645885000250557637.Spec : Prop :=
  ∀ n, P9645885000250557637.a n = A360400 (n + 1)

theorem P9645885000250557637.correct : P9645885000250557637.Spec := by
  intro n
  simp only [A360400, Nat.add_sub_cancel]

end A360400

/-! ## A360400.P15828359680739387588

`A356133(∑[2-char[xor(n, 2*n)]]+2)`
-/

namespace A360400.P15828359680739387588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A360400.P15828359680739387588

namespace A360400

/-- `A356133(∑[2-char[xor(n, 2*n)]]+2)` -/
def P15828359680739387588.Spec : Prop :=
  ∀ n, P15828359680739387588.a n = A360400 (n + 1)

end A360400

/-! ## A360400.P17082333047974420778

`A285953(∑[2-char[xor(n, 2*n)]]+2)-1`
-/

namespace A360400.P17082333047974420778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 1

end

end A360400.P17082333047974420778

namespace A360400

/-- `A285953(∑[2-char[xor(n, 2*n)]]+2)-1` -/
def P17082333047974420778.Spec : Prop :=
  ∀ n, P17082333047974420778.a n = A360400 (n + 1)

end A360400

/-! ## A360400.P12415492946287477717

`A356133(∑[2-(a(floor(n/2))+n)%2])` with `a(0)=3`
-/

namespace A360400.P12415492946287477717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - Int.tmod (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360400.P12415492946287477717

namespace A360400

/-- `A356133(∑[2-(a(floor(n/2))+n)%2])` -/
def P12415492946287477717.Spec : Prop :=
  ∀ n, P12415492946287477717.a n = A360400 (n + 1)

end A360400

/-! ## A360400.P11238775984665052748

`A356133(∑[A001285(n)]+2)`
-/

namespace A360400.P11238775984665052748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A360400.P11238775984665052748

namespace A360400

/-- `A356133(∑[A001285(n)]+2)` -/
def P11238775984665052748.Spec : Prop :=
  ∀ n, P11238775984665052748.a n = A360400 (n + 1)

end A360400

/-! ## A360400.P15094083136471808237

`A356133(A026430(n+1)+2)`
-/

namespace A360400.P15094083136471808237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A026430 (n + 1) + 2).toNat

end

end A360400.P15094083136471808237

namespace A360400

/-- `A356133(A026430(n+1)+2)` -/
def P15094083136471808237.Spec : Prop :=
  ∀ n, P15094083136471808237.a n = A360400 (n + 1)

theorem P15094083136471808237.correct : P15094083136471808237.Spec := by
  intro n
  simp only [A360400, Nat.add_sub_cancel, A360400.P15094083136471808237.a, A360400.P9645885000250557637.a, A026430, A026430.P14890685957938381463.a, A356133, A356133.P5129533171813419768.a, A360392, A360392.P6145566539357259399.a, A000069, A000069.P3917626109476666468.a, A001285, A001285.P11616636227895161122.a, A000120, A000120.P2816527436160941581.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360400

/-! ## A360400.P2860749375084789256

`A356133(A285954(n+2)+1)`
-/

namespace A360400.P2860749375084789256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A285954 (n + 2) + 1).toNat

end

end A360400.P2860749375084789256

namespace A360400

/-- `A356133(A285954(n+2)+1)` -/
def P2860749375084789256.Spec : Prop :=
  ∀ n, P2860749375084789256.a n = A360400 (n + 1)

theorem P2860749375084789256.correct : P2860749375084789256.Spec := by
  intro n
  simp only [A360400, Nat.add_sub_cancel, A360400.P2860749375084789256.a, A360400.P9645885000250557637.a, A285954, A285954.P14356408792107538698.a, A356133, A356133.P5129533171813419768.a, A360392, A360392.P6145566539357259399.a, A001285, A001285.P11616636227895161122.a, A026430, A026430.P14890685957938381463.a, A000069, A000069.P3917626109476666468.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360400

/-! ## A360400.P4150496984708697282

`A285953(A115384(n)+3+n)-1`
-/

namespace A360400.P4150496984708697282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (A115384 n + 3 + (n : ℤ)).toNat - 1

end

end A360400.P4150496984708697282

namespace A360400

/-- `A285953(A115384(n)+3+n)-1` -/
def P4150496984708697282.Spec : Prop :=
  ∀ n, P4150496984708697282.a n = A360400 (n + 1)

end A360400

/-!
# A360401: a(n) = A356133(A360393(n)).

The programs for A360401, the canonical program `A360401.P12481925379736986205` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360401 has offset 1).

The definition of A360401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360393, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360401.P12481925379736986205

`A356133(A360393(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360401

/-- `A356133(A360393(n+1))` -/
def P12481925379736986205.Spec : Prop :=
  ∀ n, P12481925379736986205.a n = A360401 (n + 1)

theorem P12481925379736986205.correct : P12481925379736986205.Spec := by
  intro n
  simp only [A360401, Nat.add_sub_cancel]

end A360401

/-! ## A360401.P5614615477440125172

`A360393(A360393(n+1)+2)-2`
-/

namespace A360401.P5614615477440125172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A360393 (n + 1) + 2).toNat - 2

end

end A360401.P5614615477440125172

namespace A360401

/-- `A360393(A360393(n+1)+2)-2` -/
def P5614615477440125172.Spec : Prop :=
  ∀ n, P5614615477440125172.a n = A360401 (n + 1)

end A360401

/-!
# A360402: a(n) = A360392(A026430(n)).

The programs for A360402, the canonical program `A360402.P17555253377108157928` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360402 has offset 1).

The definition of A360402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360402.P17555253377108157928

`A360392(A026430(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360402

/-- `A360392(A026430(n+1))` -/
def P17555253377108157928.Spec : Prop :=
  ∀ n, P17555253377108157928.a n = A360402 (n + 1)

theorem P17555253377108157928.correct : P17555253377108157928.Spec := by
  intro n
  simp only [A360402, Nat.add_sub_cancel]

end A360402

/-! ## A360402.P5343999713288712457

`A360392(∑[2-char[xor(n, 2*n)]])`
-/

namespace A360402.P5343999713288712457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360402.P5343999713288712457

namespace A360402

/-- `A360392(∑[2-char[xor(n, 2*n)]])` -/
def P5343999713288712457.Spec : Prop :=
  ∀ n, P5343999713288712457.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P3924247682031302641

`A026430(∑[2-(n-a(floor(n/2)))%2])+2` with `a(0)=1`
-/

namespace A360402.P3924247682031302641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A360402.P3924247682031302641

namespace A360402

/-- `A026430(∑[2-(n-a(floor(n/2)))%2])+2` -/
def P3924247682031302641.Spec : Prop :=
  ∀ n, P3924247682031302641.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P11006915874903165301

`A360392(∑[A001285(n)])`
-/

namespace A360402.P11006915874903165301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360402.P11006915874903165301

namespace A360402

/-- `A360392(∑[A001285(n)])` -/
def P11006915874903165301.Spec : Prop :=
  ∀ n, P11006915874903165301.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P242746723791999771

`A026430(∑[A001285(n)])+2`
-/

namespace A360402.P242746723791999771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A360402.P242746723791999771

namespace A360402

/-- `A026430(∑[A001285(n)])+2` -/
def P242746723791999771.Spec : Prop :=
  ∀ n, P242746723791999771.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P13522705964031839440

`A285954(A285954(n+2))+1`
-/

namespace A360402.P13522705964031839440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A285954 (n + 2)).toNat + 1

end

end A360402.P13522705964031839440

namespace A360402

/-- `A285954(A285954(n+2))+1` -/
def P13522705964031839440.Spec : Prop :=
  ∀ n, P13522705964031839440.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P1687157559374635655

`A360392(A360392(n+1)-2)`
-/

namespace A360402.P1687157559374635655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A360392 (n + 1) - 2).toNat

end

end A360402.P1687157559374635655

namespace A360402

/-- `A360392(A360392(n+1)-2)` -/
def P1687157559374635655.Spec : Prop :=
  ∀ n, P1687157559374635655.a n = A360402 (n + 1)

theorem P1687157559374635655.correct : P1687157559374635655.Spec := by
  intro n
  simp only [A360402, Nat.add_sub_cancel, A360402.P1687157559374635655.a, A360402.P17555253377108157928.a, A026430, A026430.P14890685957938381463.a, A360392, A360392.P6145566539357259399.a, A000069, A000069.P3917626109476666468.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360402

/-! ## A360402.P8699034202986976620

`A360392(∑[A036578(2*n)])`
-/

namespace A360402.P8699034202986976620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360402.P8699034202986976620

namespace A360402

/-- `A360392(∑[A036578(2*n)])` -/
def P8699034202986976620.Spec : Prop :=
  ∀ n, P8699034202986976620.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P13141933791150740001

`A360136(n+1)+1`
-/

namespace A360402.P13141933791150740001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360136 (n + 1) + 1

end

end A360402.P13141933791150740001

namespace A360402

/-- `A360136(n+1)+1` -/
def P13141933791150740001.Spec : Prop :=
  ∀ n, P13141933791150740001.a n = A360402 (n + 1)

end A360402

/-! ## A360402.P13777005908876852780

`A020725(A360136(n+1))`
-/

namespace A360402.P13777005908876852780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A360136 (n + 1)).toNat

end

end A360402.P13777005908876852780

namespace A360402

/-- `A020725(A360136(n+1))` -/
def P13777005908876852780.Spec : Prop :=
  ∀ n, P13777005908876852780.a n = A360402 (n + 1)

end A360402

/-!
# A360403: a(n) = A360393(A026430(n)).

The programs for A360403, the canonical program `A360403.P3962407088684523938` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360403 has offset 1).

The definition of A360403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360393, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360403.P3962407088684523938

`A360393(A026430(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360403

/-- `A360393(A026430(n+1))` -/
def P3962407088684523938.Spec : Prop :=
  ∀ n, P3962407088684523938.a n = A360403 (n + 1)

theorem P3962407088684523938.correct : P3962407088684523938.Spec := by
  intro n
  simp only [A360403, Nat.add_sub_cancel]

end A360403

/-! ## A360403.P5603599904578726785

`A360393(∑[2-char[xor(n, 2*n)]])`
-/

namespace A360403.P5603599904578726785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360403.P5603599904578726785

namespace A360403

/-- `A360393(∑[2-char[xor(n, 2*n)]])` -/
def P5603599904578726785.Spec : Prop :=
  ∀ n, P5603599904578726785.a n = A360403 (n + 1)

end A360403

/-! ## A360403.P8958446401115846302

`A360393(∑[2-(a(floor(n/2))+n)%2])` with `a(0)=1`
-/

namespace A360403.P8958446401115846302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - Int.tmod (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360403.P8958446401115846302

namespace A360403

/-- `A360393(∑[2-(a(floor(n/2))+n)%2])` -/
def P8958446401115846302.Spec : Prop :=
  ∀ n, P8958446401115846302.a n = A360403 (n + 1)

end A360403

/-! ## A360403.P4500282774464915869

`A360393(∑[A001285(n)])`
-/

namespace A360403.P4500282774464915869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360403.P4500282774464915869

namespace A360403

/-- `A360393(∑[A001285(n)])` -/
def P4500282774464915869.Spec : Prop :=
  ∀ n, P4500282774464915869.a n = A360403 (n + 1)

end A360403

/-! ## A360403.P9062874444519633648

`A360393(∑[A010060(n)+1])`
-/

namespace A360403.P9062874444519633648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360403.P9062874444519633648

namespace A360403

/-- `A360393(∑[A010060(n)+1])` -/
def P9062874444519633648.Spec : Prop :=
  ∀ n, P9062874444519633648.a n = A360403 (n + 1)

end A360403

/-! ## A360403.P14207919654464950555

`A360393(A285954(n+2)-1)`
-/

namespace A360403.P14207919654464950555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A285954 (n + 2) - 1).toNat

end

end A360403.P14207919654464950555

namespace A360403

/-- `A360393(A285954(n+2)-1)` -/
def P14207919654464950555.Spec : Prop :=
  ∀ n, P14207919654464950555.a n = A360403 (n + 1)

theorem P14207919654464950555.correct : P14207919654464950555.Spec := by
  intro n
  simp only [A360403, Nat.add_sub_cancel, A360403.P14207919654464950555.a, A360403.P3962407088684523938.a, A026430, A026430.P14890685957938381463.a, A285954, A285954.P14356408792107538698.a, A360393, A360393.P1701064018632553590.f1, A360393.P1701064018632553590.f2, A360393.P1701064018632553590.a, A000069, A000069.P3917626109476666468.a, A360395, A360395.P2153048624438428772.a, A360397, A360397.P4343971559024488872.f1, A360397.P4343971559024488872.a, A000120, A000120.P2816527436160941581.a, A285973, A285973.P13794099816013091422.a, A316826, A316826.P16423883963804976449.a, A005187, A005187.P3874015513960485494.a, A029884, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, A143331, A143331.P16828638926480326570.a, A285959, A285959.P12122029514880620375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360403

/-! ## A360403.P472865531561433956

`A360393(A360392(n+1)-2)`
-/

namespace A360403.P472865531561433956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A360392 (n + 1) - 2).toNat

end

end A360403.P472865531561433956

namespace A360403

/-- `A360393(A360392(n+1)-2)` -/
def P472865531561433956.Spec : Prop :=
  ∀ n, P472865531561433956.a n = A360403 (n + 1)

theorem P472865531561433956.correct : P472865531561433956.Spec := by
  intro n
  simp only [A360403, Nat.add_sub_cancel, A360403.P472865531561433956.a, A360403.P3962407088684523938.a, A026430, A026430.P14890685957938381463.a, A360392, A360392.P6145566539357259399.a, A360393, A360393.P1701064018632553590.f1, A360393.P1701064018632553590.f2, A360393.P1701064018632553590.a, A000069, A000069.P3917626109476666468.a, A360395, A360395.P2153048624438428772.a, A360397, A360397.P4343971559024488872.f1, A360397.P4343971559024488872.a, A000120, A000120.P2816527436160941581.a, A285973, A285973.P13794099816013091422.a, A316826, A316826.P16423883963804976449.a, A005187, A005187.P3874015513960485494.a, A029884, A029884.P4429559380778062282.f1, A029884.P4429559380778062282.a, A143331, A143331.P16828638926480326570.a, A285959, A285959.P12122029514880620375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360403

/-! ## A360403.P14387074943138981254

`A360393(A115384(n)+1+n)`
-/

namespace A360403.P14387074943138981254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A115384 n + 1 + (n : ℤ)).toNat

end

end A360403.P14387074943138981254

namespace A360403

/-- `A360393(A115384(n)+1+n)` -/
def P14387074943138981254.Spec : Prop :=
  ∀ n, P14387074943138981254.a n = A360403 (n + 1)

end A360403

/-! ## A360403.P4727311997511648454

`A360393(comp[A360393(n+1)-2])`
-/

namespace A360403.P4727311997511648454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360403.P4727311997511648454

namespace A360403

/-- `A360393(comp[A360393(n+1)-2])` -/
def P4727311997511648454.Spec : Prop :=
  ∀ n, P4727311997511648454.a n = A360403 (n + 1)

end A360403

/-!
# A360404: a(n) = A360392(A356133(n)).

The programs for A360404, the canonical program `A360404.P16518747629998351864` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360404 has offset 1).

The definition of A360404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360404.P16518747629998351864

`A360392(A356133(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360404

/-- `A360392(A356133(n+1))` -/
def P16518747629998351864.Spec : Prop :=
  ∀ n, P16518747629998351864.a n = A360404 (n + 1)

theorem P16518747629998351864.correct : P16518747629998351864.Spec := by
  intro n
  simp only [A360404, Nat.add_sub_cancel]

end A360404

/-! ## A360404.P8517220027159002867

`A360138(n+1)+1`
-/

namespace A360404.P8517220027159002867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360138 (n + 1) + 1

end

end A360404.P8517220027159002867

namespace A360404

/-- `A360138(n+1)+1` -/
def P8517220027159002867.Spec : Prop :=
  ∀ n, P8517220027159002867.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P17943663527845733453

`A360392(comp[xor(n, 2*n)]+1+n)`
-/

namespace A360404.P17943663527845733453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n)

end

end A360404.P17943663527845733453

namespace A360404

/-- `A360392(comp[xor(n, 2*n)]+1+n)` -/
def P17943663527845733453.Spec : Prop :=
  ∀ n, P17943663527845733453.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P12375609588037785622

`A360392(comp[xor(n, 2*n)]-xor(n, -1))`
-/

namespace A360404.P12375609588037785622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.xor (n : ℤ) (-1)).toNat

end

end A360404.P12375609588037785622

namespace A360404

/-- `A360392(comp[xor(n, 2*n)]-xor(n, -1))` -/
def P12375609588037785622.Spec : Prop :=
  ∀ n, P12375609588037785622.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P11260238055602255472

`A026430(comp[xor(n, 2*n)]+1+n)+2`
-/

namespace A360404.P11260238055602255472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n) + 2

end

end A360404.P11260238055602255472

namespace A360404

/-- `A026430(comp[xor(n, 2*n)]+1+n)+2` -/
def P11260238055602255472.Spec : Prop :=
  ∀ n, P11260238055602255472.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P6315444307872898509

`A285954(comp[xor(n, 2*n)]+2+n)+1`
-/

namespace A360404.P6315444307872898509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n) + 1

end

end A360404.P6315444307872898509

namespace A360404

/-- `A285954(comp[xor(n, 2*n)]+2+n)+1` -/
def P6315444307872898509.Spec : Prop :=
  ∀ n, P6315444307872898509.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P12278982223112557476

`A360392(comp[A026430(n)])`
-/

namespace A360404.P12278982223112557476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360404.P12278982223112557476

namespace A360404

/-- `A360392(comp[A026430(n)])` -/
def P12278982223112557476.Spec : Prop :=
  ∀ n, P12278982223112557476.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P3753321632186285500

`A020725(A360138(n+1))`
-/

namespace A360404.P3753321632186285500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A360138 (n + 1)).toNat

end

end A360404.P3753321632186285500

namespace A360404

/-- `A020725(A360138(n+1))` -/
def P3753321632186285500.Spec : Prop :=
  ∀ n, P3753321632186285500.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P15047398403878866195

`A026430(comp[A026430(n)])+2`
-/

namespace A360404.P15047398403878866195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 2

end

end A360404.P15047398403878866195

namespace A360404

/-- `A026430(comp[A026430(n)])+2` -/
def P15047398403878866195.Spec : Prop :=
  ∀ n, P15047398403878866195.a n = A360404 (n + 1)

end A360404

/-! ## A360404.P12217460862391052253

`A285954(A285953(n+1))+1`
-/

namespace A360404.P12217460862391052253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A285953 (n + 1)).toNat + 1

end

end A360404.P12217460862391052253

namespace A360404

/-- `A285954(A285953(n+1))+1` -/
def P12217460862391052253.Spec : Prop :=
  ∀ n, P12217460862391052253.a n = A360404 (n + 1)

end A360404

/-!
# A360405: a(n) = A360393(A356133(n)).

The programs for A360405, the canonical program `A360405.P18303608665221522570` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360405 has offset 1).

The definition of A360405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360393, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360405.P18303608665221522570

`A360393(A356133(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360405

/-- `A360393(A356133(n+1))` -/
def P18303608665221522570.Spec : Prop :=
  ∀ n, P18303608665221522570.a n = A360405 (n + 1)

theorem P18303608665221522570.correct : P18303608665221522570.Spec := by
  intro n
  simp only [A360405, Nat.add_sub_cancel]

end A360405

/-! ## A360405.P7094106286113400980

`A360393(comp[xor(n, 2*n)]+1+n)`
-/

namespace A360405.P7094106286113400980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n)

end

end A360405.P7094106286113400980

namespace A360405

/-- `A360393(comp[xor(n, 2*n)]+1+n)` -/
def P7094106286113400980.Spec : Prop :=
  ∀ n, P7094106286113400980.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P12119345313834325574

`A360393(comp[xor(n, 2*n)]-xor(n, -1))`
-/

namespace A360405.P12119345313834325574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.xor (n : ℤ) (-1)).toNat

end

end A360405.P12119345313834325574

namespace A360405

/-- `A360393(comp[xor(n, 2*n)]-xor(n, -1))` -/
def P12119345313834325574.Spec : Prop :=
  ∀ n, P12119345313834325574.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P1185256874593541327

`A360393(3*n+char[xor(n, 2*n)]+1)`
-/

namespace A360405.P1185256874593541327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (3 * n + ((if ∃ j, f1 j = n then 1 else 0) + 1))

end

end A360405.P1185256874593541327

namespace A360405

/-- `A360393(3*n+char[xor(n, 2*n)]+1)` -/
def P1185256874593541327.Spec : Prop :=
  ∀ n, P1185256874593541327.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P5704022541309359187

`A360393(eq[0, 1-a(and(n, n-1))]+n+1)` with `a(0)=1`
-/

namespace A360405.P5704022541309359187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1))

end

end A360405.P5704022541309359187

namespace A360405

/-- `A360393(eq[0, 1-a(and(n, n-1))]+n+1)` -/
def P5704022541309359187.Spec : Prop :=
  ∀ n, P5704022541309359187.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P3811217687746435021

`A360393(comp[A026430(n)])`
-/

namespace A360405.P3811217687746435021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360405.P3811217687746435021

namespace A360405

/-- `A360393(comp[A026430(n)])` -/
def P3811217687746435021.Spec : Prop :=
  ∀ n, P3811217687746435021.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P13220752498914905531

`A360393(A285953(n+1)-1)`
-/

namespace A360405.P13220752498914905531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A285953 (n + 1) - 1).toNat

end

end A360405.P13220752498914905531

namespace A360405

/-- `A360393(A285953(n+1)-1)` -/
def P13220752498914905531.Spec : Prop :=
  ∀ n, P13220752498914905531.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P13433840497118408964

`A360393(A360393(n+3)-2)`
-/

namespace A360405.P13433840497118408964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A360393 (n + 3) - 2).toNat

end

end A360405.P13433840497118408964

namespace A360405

/-- `A360393(A360393(n+3)-2)` -/
def P13433840497118408964.Spec : Prop :=
  ∀ n, P13433840497118408964.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P16617021748763346860

`A360393(A181155(n+1)+n)`
-/

namespace A360405.P16617021748763346860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A181155 (n + 1) + (n : ℤ)).toNat

end

end A360405.P16617021748763346860

namespace A360405

/-- `A360393(A181155(n+1)+n)` -/
def P16617021748763346860.Spec : Prop :=
  ∀ n, P16617021748763346860.a n = A360405 (n + 1)

end A360405

/-! ## A360405.P14215585279493687237

`A360393(A093505(2*(n+1))+n)`
-/

namespace A360405.P14215585279493687237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A093505 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A360405.P14215585279493687237

namespace A360405

/-- `A360393(A093505(2*(n+1))+n)` -/
def P14215585279493687237.Spec : Prop :=
  ∀ n, P14215585279493687237.a n = A360405 (n + 1)

end A360405

/-!
# A360411: Numbers k such that k*(k+1) does not contain the digit 2.

The programs for A360411, there is no canonical definition to state claims against.
-/

/-! ## A360411.P1953340025289152358

`eq[A240348(n), A316863(A002378(n))]`
-/

namespace A360411.P1953340025289152358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A002378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360411.P1953340025289152358

/-! ## A360411.P14106236547360811512

`lt[A316863(A002378(n)), A057427(n)]`
-/

namespace A360411.P14106236547360811512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A002378 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360411.P14106236547360811512

/-! ## A360411.P9432839579734064396

`lt[A133299(3*n+4), A053470(A250120(n+3))]`
-/

namespace A360411.P9432839579734064396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133299 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (A250120 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360411.P9432839579734064396

/-!
# A360412: Number of binary words of length 2n with an even number of 1's which are not shuffle squares.

The programs for A360412, there is no canonical definition to state claims against.
-/

/-! ## A360412.P16741011108111316809

`record[gcd(2, n+1)^n]-A191755(n)`
-/

namespace A360412.P16741011108111316809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A191755 n

end

end A360412.P16741011108111316809

/-! ## A360412.P17993402612930043481

`A081294(n)-A191755(n)`
-/

namespace A360412.P17993402612930043481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A191755 n

end

end A360412.P17993402612930043481

/-! ## A360412.P11540110382970530437

`Δ[A039301(n)]-A191755(n)`
-/

namespace A360412.P11540110382970530437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A191755 n

end

end A360412.P11540110382970530437

/-! ## A360412.P9168970203437100526

`A011782(2*n)-A191755(n)`
-/

namespace A360412.P9168970203437100526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A191755 n

end

end A360412.P9168970203437100526

/-! ## A360412.P11129739966421460516

`ceil(A024036(n)/2)%A191755(n)`
-/

namespace A360412.P11129739966421460516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A024036 n : ℚ) / 2⌉ (A191755 n)

end

end A360412.P11129739966421460516

/-!
# A360416: a(n) = 8*n^2 - 9*n + 3.

The programs for A360416, the canonical program `A360416.P5923088826062932714` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360416 has offset 0).

The definition of A360416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²-9*n+3` (program `A360416.P5923088826062932714`, by `A360416.P5923088826062932714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360416.P5923088826062932714

`8*n²-9*n+3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360416

/-- `8*n²-9*n+3` -/
def P5923088826062932714.Spec : Prop :=
  ∀ n, P5923088826062932714.a n = A360416 n

theorem P5923088826062932714.correct : P5923088826062932714.Spec := by
  intro n
  simp only [A360416]

end A360416

/-! ## A360416.P6945399481765006683

`∑[a(n-1)+16]` with `a(0)=3, a(1)=-1`
-/

namespace A360416.P6945399481765006683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360416.P6945399481765006683

namespace A360416

/-- `∑[a(n-1)+16]` -/
def P6945399481765006683.Spec : Prop :=
  ∀ n, P6945399481765006683.a n = A360416 n

end A360416

/-! ## A360416.P7068724860373032839

`abs(A051870(n)-(n-3)-n)`
-/

namespace A360416.P7068724860373032839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051870 n - ((n : ℤ) - 3) - (n : ℤ)|

end

end A360416.P7068724860373032839

namespace A360416

/-- `abs(A051870(n)-(n-3)-n)` -/
def P7068724860373032839.Spec : Prop :=
  ∀ n, P7068724860373032839.a n = A360416 n

end A360416

/-! ## A360416.P7914724965689365427

`abs(A017089(n²-n)+1-n)`
-/

namespace A360416.P7914724965689365427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017089 (n ^ 2 - n) + 1 - (n : ℤ)|

end

end A360416.P7914724965689365427

namespace A360416

/-- `abs(A017089(n²-n)+1-n)` -/
def P7914724965689365427.Spec : Prop :=
  ∀ n, P7914724965689365427.a n = A360416 n

end A360416

/-! ## A360416.P10051640527090829253

`A214929(2*A130883(n))`
-/

namespace A360416.P10051640527090829253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214929 (2 * A130883 n).toNat

end

end A360416.P10051640527090829253

namespace A360416

/-- `A214929(2*A130883(n))` -/
def P10051640527090829253.Spec : Prop :=
  ∀ n, P10051640527090829253.a n = A360416 n

end A360416

/-! ## A360416.P12238585088867904338

`A214929(A002061(2*n)+1)`
-/

namespace A360416.P12238585088867904338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214929 (A002061 (2 * n) + 1).toNat

end

end A360416.P12238585088867904338

namespace A360416

/-- `A214929(A002061(2*n)+1)` -/
def P12238585088867904338.Spec : Prop :=
  ∀ n, P12238585088867904338.a n = A360416 n

end A360416

/-! ## A360416.P15034277059801317

`A214929(2*A152947(2*n+1))`
-/

namespace A360416.P15034277059801317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214929 (2 * A152947 (2 * n + 1)).toNat

end

end A360416.P15034277059801317

namespace A360416

/-- `A214929(2*A152947(2*n+1))` -/
def P15034277059801317.Spec : Prop :=
  ∀ n, P15034277059801317.a n = A360416 n

end A360416

/-!
# A360417: a(n) = 8*n^2 - 7*n + 2.

The programs for A360417, the canonical program `A360417.P12269292350835026614` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360417 has offset 0).

The definition of A360417 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²-7*n+2` (program `A360417.P12269292350835026614`, by `A360417.P12269292350835026614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360417.P12269292350835026614

`8*n²-7*n+2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360417

/-- `8*n²-7*n+2` -/
def P12269292350835026614.Spec : Prop :=
  ∀ n, P12269292350835026614.a n = A360417 n

theorem P12269292350835026614.correct : P12269292350835026614.Spec := by
  intro n
  simp only [A360417]

end A360417

/-! ## A360417.P5563177396042508554

`∑[a(n-1)+16]` with `a(0)=2, a(1)=1`
-/

namespace A360417.P5563177396042508554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360417.P5563177396042508554

namespace A360417

/-- `∑[a(n-1)+16]` -/
def P5563177396042508554.Spec : Prop :=
  ∀ n, (P5563177396042508554.a n : ℤ) = A360417 n

end A360417

/-! ## A360417.P11133183762607496906

`abs(∑[a(n-1)-16]-1)` with `a(0)=-1, a(1)=-1`
-/

namespace A360417.P11133183762607496906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A360417.P11133183762607496906

namespace A360417

/-- `abs(∑[a(n-1)-16]-1)` -/
def P11133183762607496906.Spec : Prop :=
  ∀ n, P11133183762607496906.a n = A360417 n

end A360417

/-! ## A360417.P6208898810341030931

`(2*A051870(n)+4)/2`
-/

namespace A360417.P6208898810341030931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A051870 n + 4 : ℚ) / 2

end

end A360417.P6208898810341030931

namespace A360417

/-- `(2*A051870(n)+4)/2` -/
def P6208898810341030931.Spec : Prop :=
  ∀ n, P6208898810341030931.a n = (A360417 n : ℚ)

theorem P6208898810341030931.correct : P6208898810341030931.Spec := by
  intro n
  simp only [A360417, Nat.add_sub_cancel, A360417.P6208898810341030931.a, A360417.P12269292350835026614.a, A051870, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360417

/-! ## A360417.P8172592048575489368

`abs(abs(A139272(n)+2-n)-n)`
-/

namespace A360417.P8172592048575489368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A139272 n + 2 - (n : ℤ)| - (n : ℤ))|

end

end A360417.P8172592048575489368

namespace A360417

/-- `abs(abs(A139272(n)+2-n)-n)` -/
def P8172592048575489368.Spec : Prop :=
  ∀ n, P8172592048575489368.a n = A360417 n

end A360417

/-! ## A360417.P14670272179432675322

`A000027(A051870(n)+2)`
-/

namespace A360417.P14670272179432675322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051870 n + 2).toNat

end

end A360417.P14670272179432675322

namespace A360417

/-- `A000027(A051870(n)+2)` -/
def P14670272179432675322.Spec : Prop :=
  ∀ n, P14670272179432675322.a n = A360417 n

end A360417

/-! ## A360417.P2799327742691649384

`A007607(A054552(n))`
-/

namespace A360417.P2799327742691649384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (A054552 n).toNat

end

end A360417.P2799327742691649384

namespace A360417

/-- `A007607(A054552(n))` -/
def P2799327742691649384.Spec : Prop :=
  ∀ n, P2799327742691649384.a n = A360417 n

end A360417

/-! ## A360417.P2125154358250520072

`A007607(A001107(n)+1)`
-/

namespace A360417.P2125154358250520072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (A001107 n + 1).toNat

end

end A360417.P2125154358250520072

namespace A360417

/-- `A007607(A001107(n)+1)` -/
def P2125154358250520072.Spec : Prop :=
  ∀ n, P2125154358250520072.a n = A360417 n

end A360417

/-! ## A360417.P14661170118313275303

`∩[A061887(n), A360418(n+1)]`
-/

namespace A360417.P14661170118313275303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360417.P14661170118313275303

namespace A360417

/-- `∩[A061887(n), A360418(n+1)]` -/
def P14661170118313275303.Spec : Prop :=
  ∀ n, (P14661170118313275303.a n : ℤ) = A360417 n

end A360417

/-!
# A360418: Numbers k such that, in a listing of all congruence classes of positive integers, the k-th congruence class contains k. Here the class r mod m (with r in {1,...,m}) precedes the class a' mod b' (with r' in {1,...,m'}) iff m < m' or r > r'.

The programs for A360418, the canonical program `A360418.P17127724837986697559` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360418 has offset 1).

The definition of A360418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360418.P17127724837986697559

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=13, a(5)=17, a(6)=20, a(7)=25, a(8)=41`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360418

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P17127724837986697559.Spec : Prop :=
  ∀ n, P17127724837986697559.a n = A360418 (n + 1)

theorem P17127724837986697559.correct : P17127724837986697559.Spec := by
  intro n
  simp only [A360418, Nat.add_sub_cancel]

end A360418

/-! ## A360418.P17119480039575498746

`record[A110963(∑[A008619(n)+1])]`
-/

namespace A360418.P17119480039575498746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360418.P17119480039575498746

namespace A360418

/-- `record[A110963(∑[A008619(n)+1])]` -/
def P17119480039575498746.Spec : Prop :=
  ∀ n, P17119480039575498746.a n = A360418 (n + 1)

end A360418

/-! ## A360418.P11115932652272672952

`record[A152271(Δ[A190798(n)])]`
-/

namespace A360418.P11115932652272672952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190798 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360418.P11115932652272672952

namespace A360418

/-- `record[A152271(Δ[A190798(n)])]` -/
def P11115932652272672952.Spec : Prop :=
  ∀ n, P11115932652272672952.a n = A360418 (n + 1)

end A360418

/-! ## A360418.P18273840593395813668

`eq[1, A030528(A016825(n))]+1`
-/

namespace A360418.P18273840593395813668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360418.P18273840593395813668

namespace A360418

/-- `eq[1, A030528(A016825(n))]+1` -/
def P18273840593395813668.Spec : Prop :=
  ∀ n, (P18273840593395813668.a n : ℤ) = A360418 (n + 1)

end A360418

/-! ## A360418.P3013380156806171877

`eq[1, A238009(A017113(n))]+1`
-/

namespace A360418.P3013380156806171877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238009 (A017113 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360418.P3013380156806171877

namespace A360418

/-- `eq[1, A238009(A017113(n))]+1` -/
def P3013380156806171877.Spec : Prop :=
  ∀ n, (P3013380156806171877.a n : ℤ) = A360418 (n + 1)

end A360418

/-!
# A360419: a(n) = the number of U-frame polyominoes with n cells, reduced for symmetry.

The programs for A360419, there is no canonical definition to state claims against.
-/

/-! ## A360419.P16950598451810856793

`A353847(A282044(n))`
-/

namespace A360419.P16950598451810856793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A282044 n).toNat

end

end A360419.P16950598451810856793

/-! ## A360419.P1747156758459665273

`A282044(A062399(n))`
-/

namespace A360419.P1747156758459665273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282044 (A062399 n).toNat

end

end A360419.P1747156758459665273

/-! ## A360419.P7257420667790481422

`A282044(A120126(n))`
-/

namespace A360419.P7257420667790481422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282044 (A120126 n).toNat

end

end A360419.P7257420667790481422

/-! ## A360419.P6513259496351463857

`A282044(A351870(n))`
-/

namespace A360419.P6513259496351463857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282044 (A351870 n).toNat

end

end A360419.P6513259496351463857

/-! ## A360419.P3028675398250518631

`A282044(A004905(n+1))`
-/

namespace A360419.P3028675398250518631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282044 (A004905 (n + 1)).toNat

end

end A360419.P3028675398250518631

/-!
# A360420: a(n) = the number of Z-frame polyominoes with n cells, reduced for symmetry.

The programs for A360420, there is no canonical definition to state claims against.
-/

/-! ## A360420.P15007726156786007797

`∑[A347709(3^n)²]-A000120(A263396(2*n+2))`
-/

namespace A360420.P15007726156786007797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (3 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 (A263396 (2 * n + 2)).toNat

end

end A360420.P15007726156786007797

/-! ## A360420.P15403652270781552679

`A228651(A177485(n))-A228651(n+1)`
-/

namespace A360420.P15403652270781552679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228651 (A177485 n).toNat - A228651 (n + 1)

end

end A360420.P15403652270781552679

/-! ## A360420.P14916555450507759793

`A028247(n+1)-A005171(A244077(2*(n+2)))`
-/

namespace A360420.P14916555450507759793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028247 (n + 1) - A005171 (A244077 (2 * (n + 2))).toNat

end

end A360420.P14916555450507759793

/-!
# A360421: a(n) = the number of X-frame polyominoes with n cells, reduced for symmetry.

The programs for A360421, there is no canonical definition to state claims against.
-/

/-! ## A360421.P2098802590964754599

`A140140(A027383(n))%A335596(n+1)`
-/

namespace A360421.P2098802590964754599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140140 (A027383 n).toNat) (A335596 (n + 1))

end

end A360421.P2098802590964754599

/-! ## A360421.P1982074550744981037

`A326468(2*n+1)+A325106(A326468(2*n+1))`
-/

namespace A360421.P1982074550744981037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326468 (2 * n + 1) + A325106 (A326468 (2 * n + 1)).toNat

end

end A360421.P1982074550744981037

/-! ## A360421.P5125381229332765088

`A227083(A148136(n))`
-/

namespace A360421.P5125381229332765088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227083 (A148136 n).toNat

end

end A360421.P5125381229332765088

/-! ## A360421.P11967011457902080818

`A375576(A186738(n))`
-/

namespace A360421.P11967011457902080818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375576 (A186738 n).toNat

end

end A360421.P11967011457902080818

/-! ## A360421.P3378992580142726074

`A225355(A369584(n+1))`
-/

namespace A360421.P3378992580142726074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225355 (A369584 (n + 1)).toNat

end

end A360421.P3378992580142726074

/-!
# A360423: Positive integers n (with k digits) such that if a positive integer m with k+1 digits is divisible by n, then all the rotations of m are divisible by n.

The programs for A360423, there is no canonical definition to state claims against.
-/

/-! ## A360423.P3399319395139153653

`or(1, A356377(A290292(n)))`
-/

namespace A360423.P3399319395139153653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A356377 (A290292 n).toNat)

end

end A360423.P3399319395139153653

/-!
# A360425: Indices of records in A018804.

The programs for A360425, there is no canonical definition to state claims against.
-/

/-! ## A360425.P8915379681384659494

`lt[A003106(n), A174973(A326842(n))]`
-/

namespace A360425.P8915379681384659494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360425.P8915379681384659494

/-! ## A360425.P7315014198442437767

`lt[A002865(n), A005448(A326842(n))]`
-/

namespace A360425.P7315014198442437767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360425.P7315014198442437767

/-! ## A360425.P7255443554379672270

`lt[A098743(n), A324751(comp[10*n])]`
-/

namespace A360425.P7255443554379672270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098743 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360425.P7255443554379672270

/-! ## A360425.P5822545036638742205

`A112587(A333501(n+1))`
-/

namespace A360425.P5822545036638742205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (A333501 (n + 1)).toNat

end

end A360425.P5822545036638742205

/-! ## A360425.P1698889802360304728

`A112587(A247809(n+2))`
-/

namespace A360425.P1698889802360304728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (A247809 (n + 2)).toNat

end

end A360425.P1698889802360304728

/-!
# A360426: Number of permutations of [2n] having exactly n alternating up/down runs where the first run is not a down run.

The programs for A360426, there is no canonical definition to state claims against.
-/

/-! ## A360426.P12907332937512628662

`A008970(4*C(n, 2)+2)`
-/

namespace A360426.P12907332937512628662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (4 * Nat.choose n 2 + 2)

end

end A360426.P12907332937512628662

/-! ## A360426.P10112632382539228587

`A008970(2*((1-n)²+n))`
-/

namespace A360426.P10112632382539228587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (2 * ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A360426.P10112632382539228587

/-! ## A360426.P10168274478581428513

`A059427(A051890(n))/2`
-/

namespace A360426.P10168274478581428513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059427 (A051890 n).toNat : ℚ) / 2

end

end A360426.P10168274478581428513

/-! ## A360426.P14683813476736296266

`A008970(A051890(n))+A000038(2*n+3)`
-/

namespace A360426.P14683813476736296266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A051890 n).toNat + A000038 (2 * n + 3)

end

end A360426.P14683813476736296266

/-! ## A360426.P6555296614628141710

`A008970(A051890(n))+A000122(3*n+2)`
-/

namespace A360426.P6555296614628141710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A051890 n).toNat + A000122 (3 * n + 2)

end

end A360426.P6555296614628141710

/-!
# A360428: Inverse Mobius transformation of A338164.

The programs for A360428, the canonical program `A360428.P9068250880525305499` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360428 has offset 1).

The definition of A360428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360428.P9068250880525305499

`∑{d}[n+1, A338164(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A360428

/-- `∑{d}[n+1, A338164(#)]` -/
def P9068250880525305499.Spec : Prop :=
  ∀ n, P9068250880525305499.a n = A360428 (n + 1)

theorem P9068250880525305499.correct : P9068250880525305499.Spec := by
  intro n
  simp only [A360428, Nat.add_sub_cancel]

end A360428

/-! ## A360428.P13476238883042158317

`∑{d}[n+1, A008683(#)*A034714((n+1)/#)]`
-/

namespace A360428.P13476238883042158317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034714 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P13476238883042158317

namespace A360428

/-- `∑{d}[n+1, A008683(#)*A034714((n+1)/#)]` -/
def P13476238883042158317.Spec : Prop :=
  ∀ n, P13476238883042158317.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P15935947341126505341

`∑{d}[n+1, A002618(#)*A069097((n+1)/#)]`
-/

namespace A360428.P15935947341126505341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P15935947341126505341

namespace A360428

/-- `∑{d}[n+1, A002618(#)*A069097((n+1)/#)]` -/
def P15935947341126505341.Spec : Prop :=
  ∀ n, P15935947341126505341.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P6399180484746833486

`∑{d}[n+1, A063445(#)*A064987((n+1)/#)]`
-/

namespace A360428.P6399180484746833486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P6399180484746833486

namespace A360428

/-- `∑{d}[n+1, A063445(#)*A064987((n+1)/#)]` -/
def P6399180484746833486.Spec : Prop :=
  ∀ n, P6399180484746833486.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P14750161318686515723

`∑{d}[n+1, A001157(#)*A321322((n+1)/#)]`
-/

namespace A360428.P14750161318686515723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P14750161318686515723

namespace A360428

/-- `∑{d}[n+1, A001157(#)*A321322((n+1)/#)]` -/
def P14750161318686515723.Spec : Prop :=
  ∀ n, P14750161318686515723.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P75512139579742986

`∑{d}[n+1, A007428(#)*A328490((n+1)/#)]`
-/

namespace A360428.P75512139579742986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A328490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P75512139579742986

namespace A360428

/-- `∑{d}[n+1, A007428(#)*A328490((n+1)/#)]` -/
def P75512139579742986.Spec : Prop :=
  ∀ n, P75512139579742986.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P14896466615925519699

`∑{d}[n+1, A007427(#)*A360429((n+1)/#)]`
-/

namespace A360428.P14896466615925519699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A360429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P14896466615925519699

namespace A360428

/-- `∑{d}[n+1, A007427(#)*A360429((n+1)/#)]` -/
def P14896466615925519699.Spec : Prop :=
  ∀ n, P14896466615925519699.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P3408357155773302249

`∑{d}[n+1, A057660(#)*A341772((n+1)/#)]`
-/

namespace A360428.P3408357155773302249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P3408357155773302249

namespace A360428

/-- `∑{d}[n+1, A057660(#)*A341772((n+1)/#)]` -/
def P3408357155773302249.Spec : Prop :=
  ∀ n, P3408357155773302249.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P4730371937873876028

`∑{d}[n+1, A029935(#)*A373059((n+1)/#)]`
-/

namespace A360428.P4730371937873876028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360428.P4730371937873876028

namespace A360428

/-- `∑{d}[n+1, A029935(#)*A373059((n+1)/#)]` -/
def P4730371937873876028.Spec : Prop :=
  ∀ n, P4730371937873876028.a n = A360428 (n + 1)

end A360428

/-! ## A360428.P7218512682818547605

`A372938(∑[n+2])`
-/

namespace A360428.P7218512682818547605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360428.P7218512682818547605

namespace A360428

/-- `A372938(∑[n+2])` -/
def P7218512682818547605.Spec : Prop :=
  ∀ n, P7218512682818547605.a n = A360428 (n + 1)

end A360428

/-!
# A360429: Inverse Mobius transformation of A034714.

The programs for A360429, the canonical program `A360429.P5562470391516954265` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360429 has offset 1).

The definition of A360429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360429.P5562470391516954265

`∑{d}[n+1, A034714(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360429

/-- `∑{d}[n+1, A034714(#)]` -/
def P5562470391516954265.Spec : Prop :=
  ∀ n, P5562470391516954265.a n = A360429 (n + 1)

theorem P5562470391516954265.correct : P5562470391516954265.Spec := by
  intro n
  simp only [A360429, Nat.add_sub_cancel]

end A360429

/-! ## A360429.P8089100100298135523

`∑{d}[n+1, #*A038040(#)]`
-/

namespace A360429.P8089100100298135523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038040 d

end

end A360429.P8089100100298135523

namespace A360429

/-- `∑{d}[n+1, #*A038040(#)]` -/
def P8089100100298135523.Spec : Prop :=
  ∀ n, P8089100100298135523.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P16531797668885842070

`∑{d}[n+1, #²*A000005(#)]`
-/

namespace A360429.P16531797668885842070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A000005 d

end

end A360429.P16531797668885842070

namespace A360429

/-- `∑{d}[n+1, #²*A000005(#)]` -/
def P16531797668885842070.Spec : Prop :=
  ∀ n, P16531797668885842070.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P16141598489313034890

`∑{d}[n+1, A001001(#)*A002618((n+1)/#)]`
-/

namespace A360429.P16141598489313034890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P16141598489313034890

namespace A360429

/-- `∑{d}[n+1, A001001(#)*A002618((n+1)/#)]` -/
def P16141598489313034890.Spec : Prop :=
  ∀ n, P16141598489313034890.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P4795415508737786899

`∑{d}[n+1, A007433(#)*A007434((n+1)/#)]`
-/

namespace A360429.P4795415508737786899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P4795415508737786899

namespace A360429

/-- `∑{d}[n+1, A007433(#)*A007434((n+1)/#)]` -/
def P4795415508737786899.Spec : Prop :=
  ∀ n, P4795415508737786899.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P9279044161219252275

`∑{d}[n+1, A057660(#)*A064987((n+1)/#)]`
-/

namespace A360429.P9279044161219252275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P9279044161219252275

namespace A360429

/-- `∑{d}[n+1, A057660(#)*A064987((n+1)/#)]` -/
def P9279044161219252275.Spec : Prop :=
  ∀ n, P9279044161219252275.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P4978301959998694853

`∑{d}[n+1, A078306(#)*A091519((n+1)/#)]`
-/

namespace A360429.P4978301959998694853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078306 d * A091519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P4978301959998694853

namespace A360429

/-- `∑{d}[n+1, A078306(#)*A091519((n+1)/#)]` -/
def P4978301959998694853.Spec : Prop :=
  ∀ n, P4978301959998694853.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P10543853772230404172

`∑{d}[n+1, A008683(#)*A328490((n+1)/#)]`
-/

namespace A360429.P10543853772230404172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A328490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P10543853772230404172

namespace A360429

/-- `∑{d}[n+1, A008683(#)*A328490((n+1)/#)]` -/
def P10543853772230404172.Spec : Prop :=
  ∀ n, P10543853772230404172.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P12645972008271494069

`∑{d}[n+1, A007425(#)*A338164((n+1)/#)]`
-/

namespace A360429.P12645972008271494069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A338164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P12645972008271494069

namespace A360429

/-- `∑{d}[n+1, A007425(#)*A338164((n+1)/#)]` -/
def P12645972008271494069.Spec : Prop :=
  ∀ n, P12645972008271494069.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P9160432789836978629

`∑{d}[n+1, A000005(#)*A360428((n+1)/#)]`
-/

namespace A360429.P9160432789836978629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P9160432789836978629

namespace A360429

/-- `∑{d}[n+1, A000005(#)*A360428((n+1)/#)]` -/
def P9160432789836978629.Spec : Prop :=
  ∀ n, P9160432789836978629.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P2827602113629731176

`∑{d}[n+1, A034676(#)*A351600((n+1)/#)]`
-/

namespace A360429.P2827602113629731176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P2827602113629731176

namespace A360429

/-- `∑{d}[n+1, A034676(#)*A351600((n+1)/#)]` -/
def P2827602113629731176.Spec : Prop :=
  ∀ n, P2827602113629731176.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P2040413389499750300

`∑{d}[n+1, A065958(#)*A328271((n+1)/#)]`
-/

namespace A360429.P2040413389499750300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A328271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P2040413389499750300

namespace A360429

/-- `∑{d}[n+1, A065958(#)*A328271((n+1)/#)]` -/
def P2040413389499750300.Spec : Prop :=
  ∀ n, P2040413389499750300.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P785160703169895877

`∑{d}[n+1, A076577(#)*A328407((n+1)/#)]`
-/

namespace A360429.P785160703169895877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076577 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P785160703169895877

namespace A360429

/-- `∑{d}[n+1, A076577(#)*A328407((n+1)/#)]` -/
def P785160703169895877.Spec : Prop :=
  ∀ n, P785160703169895877.a n = A360429 (n + 1)

end A360429

/-! ## A360429.P13219296384873572855

`∑{d}[n+1, A087726(#)*A198286((n+1)/#)]`
-/

namespace A360429.P13219296384873572855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087726 d * A198286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360429.P13219296384873572855

namespace A360429

/-- `∑{d}[n+1, A087726(#)*A198286((n+1)/#)]` -/
def P13219296384873572855.Spec : Prop :=
  ∀ n, P13219296384873572855.a n = A360429 (n + 1)

end A360429

/-!
# A360430: Dirichlet convolution of Dedekind psi by A038040.

The programs for A360430, the canonical program `A360430.P11552111043147388928` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360430 has offset 1).

The definition of A360430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360430.P11369714343420241058

`∑{d}[n+1, #*A327251((n+1)/#)]`
-/

namespace A360430.P11369714343420241058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P11369714343420241058

namespace A360430

/-- `∑{d}[n+1, #*A327251((n+1)/#)]` -/
def P11369714343420241058.Spec : Prop :=
  ∀ n, P11369714343420241058.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P1354912136563552485

`∑{d}[n+1, A001615(#)*A038040((n+1)/#)]`
-/

namespace A360430.P1354912136563552485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P1354912136563552485

namespace A360430

/-- `∑{d}[n+1, A001615(#)*A038040((n+1)/#)]` -/
def P1354912136563552485.Spec : Prop :=
  ∀ n, P1354912136563552485.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P5904441336890502912

`∑{d}[n+1, A008966(#)*A034718((n+1)/#)]`
-/

namespace A360430.P5904441336890502912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A034718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P5904441336890502912

namespace A360430

/-- `∑{d}[n+1, A008966(#)*A034718((n+1)/#)]` -/
def P5904441336890502912.Spec : Prop :=
  ∀ n, P5904441336890502912.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P9282874417464117586

`∑{d}[n+1, A018804(#)*A060648((n+1)/#)]`
-/

namespace A360430.P9282874417464117586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P9282874417464117586

namespace A360430

/-- `∑{d}[n+1, A018804(#)*A060648((n+1)/#)]` -/
def P9282874417464117586.Spec : Prop :=
  ∀ n, P9282874417464117586.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P13427763908506458902

`∑{d}[n+1, A029935(#)*A060724((n+1)/#)]`
-/

namespace A360430.P13427763908506458902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P13427763908506458902

namespace A360430

/-- `∑{d}[n+1, A029935(#)*A060724((n+1)/#)]` -/
def P13427763908506458902.Spec : Prop :=
  ∀ n, P13427763908506458902.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P267611162934897016

`∑{d}[n+1, A060640(#)*A063659((n+1)/#)]`
-/

namespace A360430.P267611162934897016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P267611162934897016

namespace A360430

/-- `∑{d}[n+1, A060640(#)*A063659((n+1)/#)]` -/
def P267611162934897016.Spec : Prop :=
  ∀ n, P267611162934897016.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P18315103692670721315

`∑{d}[n+1, A034761(#)*A130107((n+1)/#)]`
-/

namespace A360430.P18315103692670721315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P18315103692670721315

namespace A360430

/-- `∑{d}[n+1, A034761(#)*A130107((n+1)/#)]` -/
def P18315103692670721315.Spec : Prop :=
  ∀ n, P18315103692670721315.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P12770432901842991038

`∑{d}[n+1, A062369(#)*A143275((n+1)/#)]`
-/

namespace A360430.P12770432901842991038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062369 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P12770432901842991038

namespace A360430

/-- `∑{d}[n+1, A062369(#)*A143275((n+1)/#)]` -/
def P12770432901842991038.Spec : Prop :=
  ∀ n, P12770432901842991038.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P12420445671059087983

`∑{d}[n+1, A000203(#)*A322577((n+1)/#)]`
-/

namespace A360430.P12420445671059087983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P12420445671059087983

namespace A360430

/-- `∑{d}[n+1, A000203(#)*A322577((n+1)/#)]` -/
def P12420445671059087983.Spec : Prop :=
  ∀ n, P12420445671059087983.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P8384817388414773444

`∑{d}[n+1, A000010(#)*A365649((n+1)/#)]`
-/

namespace A360430.P8384817388414773444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P8384817388414773444

namespace A360430

/-- `∑{d}[n+1, A000010(#)*A365649((n+1)/#)]` -/
def P8384817388414773444.Spec : Prop :=
  ∀ n, P8384817388414773444.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P5114303997415330386

`∑{d}[n+1, A035116(#)*A344683((n+1)/#)]`
-/

namespace A360430.P5114303997415330386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P5114303997415330386

namespace A360430

/-- `∑{d}[n+1, A035116(#)*A344683((n+1)/#)]` -/
def P5114303997415330386.Spec : Prop :=
  ∀ n, P5114303997415330386.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P3071289233217116096

`∑{d}[n+1, A034444(#)*A390258((n+1)/#)]`
-/

namespace A360430.P3071289233217116096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P3071289233217116096

namespace A360430

/-- `∑{d}[n+1, A034444(#)*A390258((n+1)/#)]` -/
def P3071289233217116096.Spec : Prop :=
  ∀ n, P3071289233217116096.a n = A360430 (n + 1)

end A360430

/-! ## A360430.P11552111043147388928

`∑{d}[n+1, A174466(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A360430

/-- `∑{d}[n+1, A174466(#)*A271102((n+1)/#)]` -/
def P11552111043147388928.Spec : Prop :=
  ∀ n, P11552111043147388928.a n = A360430 (n + 1)

theorem P11552111043147388928.correct : P11552111043147388928.Spec := by
  intro n
  simp only [A360430, Nat.add_sub_cancel]

end A360430

/-! ## A360430.P17845616932052821420

`∑{d}[n+1, A206369(#)*A306379((n+1)/#)]`
-/

namespace A360430.P17845616932052821420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A306379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360430.P17845616932052821420

namespace A360430

/-- `∑{d}[n+1, A206369(#)*A306379((n+1)/#)]` -/
def P17845616932052821420.Spec : Prop :=
  ∀ n, P17845616932052821420.a n = A360430 (n + 1)

end A360430

/-!
# A360432: E.g.f. satisfies A(x) = x * exp(A(x) + x^2).

The programs for A360432, there is no canonical definition to state claims against.
-/

/-! ## A360432.P10312402055459853622

`n*A362690(abs(1-n))`
-/

namespace A360432.P10312402055459853622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A362690 |1 - (n : ℤ)|.toNat

end

end A360432.P10312402055459853622

/-! ## A360432.P2527287548869354234

`n*A064823(A346547(n))`
-/

namespace A360432.P2527287548869354234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064823 (A346547 n).toNat

end

end A360432.P2527287548869354234

/-!
# A360433: E.g.f. satisfies A(x) = x * exp(A(x) + x^3).

The programs for A360433, there is no canonical definition to state claims against.
-/

/-! ## A360433.P5503718537607680973

`n*A362691(abs(1-n))`
-/

namespace A360433.P5503718537607680973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A362691 |1 - (n : ℤ)|.toNat

end

end A360433.P5503718537607680973

/-! ## A360433.P3345180674392288302

`A338887(A330470(n)+n)`
-/

namespace A360433.P3345180674392288302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338887 (A330470 n + (n : ℤ)).toNat

end

end A360433.P3345180674392288302

/-!
# A360434: a(n) is the greatest number k not yet in the sequence such that A022290(n) = A022290(k).

The programs for A360434, there is no canonical definition to state claims against.
-/

/-! ## A360434.P7215984762986455557

`A307613(A345101(n)%A204559(n+1))`
-/

namespace A360434.P7215984762986455557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307613 (Int.tmod (A345101 n) (A204559 (n + 1))).toNat

end

end A360434.P7215984762986455557

/-!
# A360435: a(n) = A038547(3^n), smallest number with 3^n odd divisors.

The programs for A360435, there is no canonical definition to state claims against.
-/

/-! ## A360435.P14018507900311493222

`∏[p?[A130595(n)]²]`
-/

namespace A360435.P14018507900311493222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360435.P14018507900311493222

/-! ## A360435.P1715094401902587230

`∏[p?[A225233(n)]²]`
-/

namespace A360435.P1715094401902587230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360435.P1715094401902587230

/-! ## A360435.P11473729210681259437

`A332461(3^(n+1))²`
-/

namespace A360435.P11473729210681259437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (3 ^ (n + 1)) ^ 2

end

end A360435.P11473729210681259437

/-!
# A360436: 32-gonal numbers: a(n) = n*(15*n-14).

The programs for A360436, the canonical program `A360436.P9205183385112475839` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360436 has offset 0).

The definition of A360436 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-14)` (program `A360436.P9205183385112475839`, by `A360436.P9205183385112475839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360436.P9205183385112475839

`n*(15*n-14)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360436

/-- `n*(15*n-14)` -/
def P9205183385112475839.Spec : Prop :=
  ∀ n, P9205183385112475839.a n = A360436 n

theorem P9205183385112475839.correct : P9205183385112475839.Spec := by
  intro n
  simp only [A360436]

end A360436

/-! ## A360436.P8082050311640828386

`30*C(n, 2)+n`
-/

namespace A360436.P8082050311640828386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * Nat.choose n 2 + n

end

end A360436.P8082050311640828386

namespace A360436

/-- `30*C(n, 2)+n` -/
def P8082050311640828386.Spec : Prop :=
  ∀ n, (P8082050311640828386.a n : ℤ) = A360436 n

theorem P8082050311640828386.correct : P8082050311640828386.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P8082050311640828386.a, A360436.P9205183385112475839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P11223667520469214630

`∑[a(n-1)+30]` with `a(0)=0, a(1)=1`
-/

namespace A360436.P11223667520469214630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360436.P11223667520469214630

namespace A360436

/-- `∑[a(n-1)+30]` -/
def P11223667520469214630.Spec : Prop :=
  ∀ n, (P11223667520469214630.a n : ℤ) = A360436 n

end A360436

/-! ## A360436.P6911487401675059184

`A263226(n)-n`
-/

namespace A360436.P6911487401675059184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263226 n - (n : ℤ)

end

end A360436.P6911487401675059184

namespace A360436

/-- `A263226(n)-n` -/
def P6911487401675059184.Spec : Prop :=
  ∀ n, P6911487401675059184.a n = A360436 n

theorem P6911487401675059184.correct : P6911487401675059184.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P6911487401675059184.a, A360436.P9205183385112475839.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P6094058631599947428

`2*A051869(n)-n`
-/

namespace A360436.P6094058631599947428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051869 n - (n : ℤ)

end

end A360436.P6094058631599947428

namespace A360436

/-- `2*A051869(n)-n` -/
def P6094058631599947428.Spec : Prop :=
  ∀ n, P6094058631599947428.a n = A360436 n

end A360436

/-! ## A360436.P5544440094444607747

`A153448(n)-2*n`
-/

namespace A360436.P5544440094444607747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n - (2 * n : ℤ)

end

end A360436.P5544440094444607747

namespace A360436

/-- `A153448(n)-2*n` -/
def P5544440094444607747.Spec : Prop :=
  ∀ n, P5544440094444607747.a n = A360436 n

theorem P5544440094444607747.correct : P5544440094444607747.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P5544440094444607747.a, A360436.P9205183385112475839.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P13683090547171373424

`A153795(n)-4*n`
-/

namespace A360436.P13683090547171373424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n - (4 * n : ℤ)

end

end A360436.P13683090547171373424

namespace A360436

/-- `A153795(n)-4*n` -/
def P13683090547171373424.Spec : Prop :=
  ∀ n, P13683090547171373424.a n = A360436 n

theorem P13683090547171373424.correct : P13683090547171373424.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P13683090547171373424.a, A360436.P9205183385112475839.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P15566441042378960461

`A153786(n)-5*n`
-/

namespace A360436.P15566441042378960461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n - (5 * n : ℤ)

end

end A360436.P15566441042378960461

namespace A360436

/-- `A153786(n)-5*n` -/
def P15566441042378960461.Spec : Prop :=
  ∀ n, P15566441042378960461.a n = A360436 n

theorem P15566441042378960461.correct : P15566441042378960461.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P15566441042378960461.a, A360436.P9205183385112475839.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P15057742467996728461

`A064200(n)+A000567(n)`
-/

namespace A360436.P15057742467996728461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A000567 n

end

end A360436.P15057742467996728461

namespace A360436

/-- `A064200(n)+A000567(n)` -/
def P15057742467996728461.Spec : Prop :=
  ∀ n, P15057742467996728461.a n = A360436 n

theorem P15057742467996728461.correct : P15057742467996728461.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P15057742467996728461.a, A360436.P9205183385112475839.a, A000567, A000567.P17850767079432249295.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P16291071482611053545

`A360488(n)+A161680(n)`
-/

namespace A360436.P16291071482611053545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360488 n + A161680 n

end

end A360436.P16291071482611053545

namespace A360436

/-- `A360488(n)+A161680(n)` -/
def P16291071482611053545.Spec : Prop :=
  ∀ n, P16291071482611053545.a n = A360436 n

theorem P16291071482611053545.correct : P16291071482611053545.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P16291071482611053545.a, A360436.P9205183385112475839.a, A161680, A161680.P17206074215489759881.a, A360488, A360488.P16627206225299801977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P9955645614436636317

`A279895(n)+A263231(n)`
-/

namespace A360436.P9955645614436636317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A263231 n

end

end A360436.P9955645614436636317

namespace A360436

/-- `A279895(n)+A263231(n)` -/
def P9955645614436636317.Spec : Prop :=
  ∀ n, P9955645614436636317.a n = A360436 n

end A360436

/-! ## A360436.P9053364329708847745

`A028994(n)-A028566(n)`
-/

namespace A360436.P9053364329708847745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A028566 n

end

end A360436.P9053364329708847745

namespace A360436

/-- `A028994(n)-A028566(n)` -/
def P9053364329708847745.Spec : Prop :=
  ∀ n, P9053364329708847745.a n = A360436 n

theorem P9053364329708847745.correct : P9053364329708847745.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P9053364329708847745.a, A360436.P9205183385112475839.a, A028566, A028566.P16217811333001459457.a, A028994, A028994.P2614720213617424781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P7463097583641411515

`A064761(n)-A008596(n)`
-/

namespace A360436.P7463097583641411515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n - A008596 n

end

end A360436.P7463097583641411515

namespace A360436

/-- `A064761(n)-A008596(n)` -/
def P7463097583641411515.Spec : Prop :=
  ∀ n, P7463097583641411515.a n = A360436 n

theorem P7463097583641411515.correct : P7463097583641411515.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P7463097583641411515.a, A360436.P9205183385112475839.a, A008596, A008596.P5483684624845691048.a, A064761, A064761.P5984238371699821623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P18292621746085027922

`A064201(n)-A014642(n)`
-/

namespace A360436.P18292621746085027922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064201 n - A014642 n

end

end A360436.P18292621746085027922

namespace A360436

/-- `A064201(n)-A014642(n)` -/
def P18292621746085027922.Spec : Prop :=
  ∀ n, P18292621746085027922.a n = A360436 n

theorem P18292621746085027922.correct : P18292621746085027922.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P18292621746085027922.a, A360436.P9205183385112475839.a, A014642, A014642.P1230047363248524840.a, A064201, A064201.P17766213775117600719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P15219435902518230101

`A016802(n)-A098848(n)`
-/

namespace A360436.P15219435902518230101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n - A098848 n

end

end A360436.P15219435902518230101

namespace A360436

/-- `A016802(n)-A098848(n)` -/
def P15219435902518230101.Spec : Prop :=
  ∀ n, P15219435902518230101.a n = A360436 n

theorem P15219435902518230101.correct : P15219435902518230101.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P15219435902518230101.a, A360436.P9205183385112475839.a, A016802, A016802.P8146297889048034948.a, A098848, A098848.P13089362090935355705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P4992692584824895054

`A134154(n)-A016861(n)`
-/

namespace A360436.P4992692584824895054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134154 n - A016861 n

end

end A360436.P4992692584824895054

namespace A360436

/-- `A134154(n)-A016861(n)` -/
def P4992692584824895054.Spec : Prop :=
  ∀ n, P4992692584824895054.a n = A360436 n

theorem P4992692584824895054.correct : P4992692584824895054.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P4992692584824895054.a, A360436.P9205183385112475839.a, A016861, A016861.P12760207785627616280.a, A134154, A134154.P10105203805466113981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-! ## A360436.P17683463631949948521

`A022288(n)-A132756(n)`
-/

namespace A360436.P17683463631949948521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022288 n - A132756 n

end

end A360436.P17683463631949948521

namespace A360436

/-- `A022288(n)-A132756(n)` -/
def P17683463631949948521.Spec : Prop :=
  ∀ n, P17683463631949948521.a n = A360436 n

end A360436

/-! ## A360436.P2671609010249716

`A022289(n)-A132757(n)`
-/

namespace A360436.P2671609010249716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - A132757 n

end

end A360436.P2671609010249716

namespace A360436

/-- `A022289(n)-A132757(n)` -/
def P2671609010249716.Spec : Prop :=
  ∀ n, P2671609010249716.a n = A360436 n

end A360436

/-! ## A360436.P12129714247255797677

`A153875(n)-A005449(n)`
-/

namespace A360436.P12129714247255797677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n - A005449 n

end

end A360436.P12129714247255797677

namespace A360436

/-- `A153875(n)-A005449(n)` -/
def P12129714247255797677.Spec : Prop :=
  ∀ n, P12129714247255797677.a n = A360436 n

end A360436

/-! ## A360436.P2421468022727114646

`A153780(n)-A008591(n)`
-/

namespace A360436.P2421468022727114646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n - A008591 n

end

end A360436.P2421468022727114646

namespace A360436

/-- `A153780(n)-A008591(n)` -/
def P2421468022727114646.Spec : Prop :=
  ∀ n, P2421468022727114646.a n = A360436 n

theorem P2421468022727114646.correct : P2421468022727114646.Spec := by
  intro n
  simp only [A360436, Nat.add_sub_cancel, A360436.P2421468022727114646.a, A360436.P9205183385112475839.a, A008591, A008591.P8937864482545511630.a, A153780, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360436

/-!
# A360437: The number of labeled graphs on n nodes whose degree sequences realize the first n even terms of A001223 (the prime gap sequence).

The programs for A360437, there is no canonical definition to state claims against.
-/

/-! ## A360437.P12317762979337000574

`A373226(C(n+2, 6))`
-/

namespace A360437.P12317762979337000574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (Nat.choose (n + 2) 6)

end

end A360437.P12317762979337000574

/-! ## A360437.P14491703151894837994

`A111851(A000272(n))`
-/

namespace A360437.P14491703151894837994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (A000272 n).toNat

end

end A360437.P14491703151894837994

/-! ## A360437.P12340556471247779663

`A054899(A129329(n))`
-/

namespace A360437.P12340556471247779663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A129329 n).toNat

end

end A360437.P12340556471247779663

/-!
# A360438: Smallest number with 2^n odd divisors.

The programs for A360438, there is no canonical definition to state claims against.
-/

/-! ## A360438.P2959251982939957845

`A038547(2^n)`
-/

namespace A360438.P2959251982939957845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (2 ^ n)

end

end A360438.P2959251982939957845

/-! ## A360438.P3647410559311741631

`∏[A062090(n+1)]`
-/

namespace A360438.P3647410559311741631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360438.P3647410559311741631

/-! ## A360438.P17379117473447000434

`a(n-1)*A050150(n)` with `a(0)=1`
-/

namespace A360438.P17379117473447000434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A050150 n

end

end A360438.P17379117473447000434

/-! ## A360438.P11744940028981713770

`∏[record[A223490(2*n+1)]]`
-/

namespace A360438.P11744940028981713770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360438.P11744940028981713770

/-! ## A360438.P953710298059421011

`∏[record[A223491(2*n+1)]]`
-/

namespace A360438.P953710298059421011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360438.P953710298059421011

/-!
# A360439: Square array read by antidiagonals upwards: T(n,k), n>=0, k>=0, is the number of ways of choosing nonnegative numbers for k indistinguishable (p^n*q)-sided dice so that it is possible to roll every number from 0 to (p^n*q)^k-1, where p and q are distinct primes.

The programs for A360439, there is no canonical definition to state claims against.
-/

/-! ## A360439.P11596726243139584871

`A095274(A108131(n))`
-/

namespace A360439.P11596726243139584871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A108131 n).toNat

end

end A360439.P11596726243139584871

/-! ## A360439.P8694217408814464218

`A096540(A258222(n))`
-/

namespace A360439.P8694217408814464218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096540 (A258222 n).toNat

end

end A360439.P8694217408814464218

/-! ## A360439.P1290266526906341

`A104746(A316622(n))`
-/

namespace A360439.P1290266526906341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104746 (A316622 n).toNat

end

end A360439.P1290266526906341

/-! ## A360439.P4364012422566451344

`A203076(A316623(n))`
-/

namespace A360439.P4364012422566451344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 (A316623 n).toNat

end

end A360439.P4364012422566451344

/-! ## A360439.P17930861919746766953

`A366920(A202687(n))`
-/

namespace A360439.P17930861919746766953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366920 (A202687 n).toNat

end

end A360439.P17930861919746766953

/-!
# A360441: Triangle read by rows: T(n,k) is the number of pairs (c,m), where c is a covering of the 1 X (2n) grid with 1 X 2 rectangles and equal numbers of red and blue 1 X 1 squares and m is a matching between red squares and blue squares, such that exactly k matched pairs are adjacent.

The programs for A360441, there is no canonical definition to state claims against.
-/

/-! ## A360441.P14218349491837560319

`A059268(n)*A168422(n)`
-/

namespace A360441.P14218349491837560319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A168422 n

end

end A360441.P14218349491837560319

/-! ## A360441.P11487609108062330235

`2^A002262(n)*A168422(n)`
-/

namespace A360441.P11487609108062330235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A168422 n : ℚ)

end

end A360441.P11487609108062330235

/-!
# A360445: a(n) = Sum_{k=1..n} A178244(k-1).

The programs for A360445, the canonical program `A360445.P439609881080055747` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360445 has offset 0).

The definition of A360445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360445.P439609881080055747

`∑[A178244(n)]-A178244(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360445

/-- `∑[A178244(n)]-A178244(n)` -/
def P439609881080055747.Spec : Prop :=
  ∀ n, P439609881080055747.a n = A360445 n

theorem P439609881080055747.correct : P439609881080055747.Spec := by
  intro n
  simp only [A360445]

end A360445

/-! ## A360445.P1270922216299655066

`∑[A090706(2*n+1)]-A090706(2*n+1)`
-/

namespace A360445.P1270922216299655066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090706 (2 * n + 1)

end

end A360445.P1270922216299655066

namespace A360445

/-- `∑[A090706(2*n+1)]-A090706(2*n+1)` -/
def P1270922216299655066.Spec : Prop :=
  ∀ n, P1270922216299655066.a n = A360445 n

end A360445

/-!
# A360448: Indices of primes of the form p = 2^i + 2^j + 1, i > j > 0 (A081091).

The programs for A360448, there is no canonical definition to state claims against.
-/

/-! ## A360448.P18097668511249178192

`A000720(A081091(n+1))`
-/

namespace A360448.P18097668511249178192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081091 (n + 1)).toNat

end

end A360448.P18097668511249178192

/-! ## A360448.P1238897116840587904

`eq[9, A014499(n+1)²]+1`
-/

namespace A360448.P1238897116840587904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360448.P1238897116840587904

/-! ## A360448.P9566599151252750065

`A061395(or(1, A081091(n+1)))`
-/

namespace A360448.P9566599151252750065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A081091 (n + 1))).toNat

end

end A360448.P9566599151252750065

/-! ## A360448.P16510173850390487059

`∑{d}[A081091(n+1), A061395(#)]`
-/

namespace A360448.P16510173850390487059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A360448.P16510173850390487059

/-! ## A360448.P1858303324657905647

`record[A344616(A084468(n+1))]`
-/

namespace A360448.P1858303324657905647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A084468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360448.P1858303324657905647

/-!
# A360452: Number of fractions c/d with |c| <= d <= 2n and odd denominator when factors of 2 are canceled.

The programs for A360452, the canonical program `A360452.P5231315610190854606` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360452 has offset 0).

The definition of A360452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360452.P5231315610190854606

`record[A049691(n)-a(n-1)]` with `a(0)=0`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360452

/-- `record[A049691(n)-a(n-1)]` -/
def P5231315610190854606.Spec : Prop :=
  ∀ n, P5231315610190854606.a n = A360452 n

theorem P5231315610190854606.correct : P5231315610190854606.Spec := by
  intro n
  simp only [A360452]

end A360452

/-! ## A360452.P13684841714504152800

`A049691(2*n)-A005843(A049690(n))`
-/

namespace A360452.P13684841714504152800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 (2 * n) - A005843 (A049690 n).toNat

end

end A360452.P13684841714504152800

namespace A360452

/-- `A049691(2*n)-A005843(A049690(n))` -/
def P13684841714504152800.Spec : Prop :=
  ∀ n, P13684841714504152800.a n = A360452 n

end A360452

/-! ## A360452.P5996847782655856689

`record[A274401(n+1)-A131738(A274401(n+1))]`
-/

namespace A360452.P5996847782655856689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274401 (n + 1) - A131738 (A274401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360452.P5996847782655856689

namespace A360452

/-- `record[A274401(n+1)-A131738(A274401(n+1))]` -/
def P5996847782655856689.Spec : Prop :=
  ∀ n, P5996847782655856689.a n = A360452 n

end A360452

/-!
# A360454: Numbers for which the prime multiplicities (or sorted signature) have the same median as the prime indices.

The programs for A360454, there is no canonical definition to state claims against.
-/

/-! ## A360454.P1288854189575620442

`A307730(A307631(n+1)^A348460(3*n+1))`
-/

namespace A360454.P1288854189575620442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (SequenceMachineLib.roundAway ((A307631 (n + 1) : ℚ) ^ (A348460 (3 * n + 1) : ℤ))).toNat

end

end A360454.P1288854189575620442

/-!
# A360457: Two times the median of the set of distinct prime indices of n; a(1) = 1.

The programs for A360457, there is no canonical definition to state claims against.
-/

/-! ## A360457.P18414599224309336817

`A390430(n+1)+A087003(A181818(n+1))`
-/

namespace A360457.P18414599224309336817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390430 (n + 1) + A087003 (A181818 (n + 1)).toNat

end

end A360457.P18414599224309336817

/-! ## A360457.P6011148707844895449

`A353862(A007947(2*(n+1)))+A055396(n+1)`
-/

namespace A360457.P6011148707844895449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (A007947 (2 * (n + 1))).toNat + A055396 (n + 1)

end

end A360457.P6011148707844895449

/-! ## A360457.P12670590553630020817

`A390430(n+1)+A000035(A334031(n))`
-/

namespace A360457.P12670590553630020817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390430 (n + 1) + A000035 (A334031 n).toNat

end

end A360457.P12670590553630020817

/-! ## A360457.P9157648186419514652

`gcd(A115386(n+1), A390430(n+1))`
-/

namespace A360457.P9157648186419514652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115386 (n + 1)) (A390430 (n + 1))

end

end A360457.P9157648186419514652

/-! ## A360457.P7775063890079432310

`A390430(n+1)+A007814(A122566(n))`
-/

namespace A360457.P7775063890079432310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390430 (n + 1) + A007814 (A122566 n).toNat

end

end A360457.P7775063890079432310

/-!
# A360458: Two times the median of the set of distinct prime factors of n; a(1) = 2.

The programs for A360458, there is no canonical definition to state claims against.
-/

/-! ## A360458.P13992838131247010746

`A360459(∏{p}[n+1, #])`
-/

namespace A360458.P13992838131247010746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A360458.P13992838131247010746

/-! ## A360458.P15374660497388260955

`A360459(exp(∑{p}[n+1, log(#)]))`
-/

namespace A360458.P15374660497388260955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (SequenceMachineLib.roundAway (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))).toNat

end

end A360458.P15374660497388260955

/-! ## A360458.P9556171463497598296

`A360459(A007947(n+1))`
-/

namespace A360458.P9556171463497598296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A007947 (n + 1)).toNat

end

end A360458.P9556171463497598296

/-! ## A360458.P3391169957445666300

`A360459(A015052(n+1))`
-/

namespace A360458.P3391169957445666300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A015052 (n + 1)).toNat

end

end A360458.P3391169957445666300

/-! ## A360458.P15816955192730337426

`A360459(A015053(n+1))`
-/

namespace A360458.P15816955192730337426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A015053 (n + 1)).toNat

end

end A360458.P15816955192730337426

/-! ## A360458.P12101054214313766524

`A360459(A053166(n+1))`
-/

namespace A360458.P12101054214313766524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A053166 (n + 1)).toNat

end

end A360458.P12101054214313766524

/-! ## A360458.P8869243501736259040

`A360459(A062759(n+1))`
-/

namespace A360458.P8869243501736259040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A062759 (n + 1)).toNat

end

end A360458.P8869243501736259040

/-! ## A360458.P11820585502926876722

`A360459(A066069(n+1))`
-/

namespace A360458.P11820585502926876722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A066069 (n + 1)).toNat

end

end A360458.P11820585502926876722

/-!
# A360459: Two times the median of the multiset of prime factors of n; a(1) = 2.

The programs for A360459, there is no canonical definition to state claims against.
-/

/-! ## A360459.P106468472998062249

`A079879(A075384(n+1))+A079879(n+1)`
-/

namespace A360459.P106468472998062249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A075384 (n + 1)).toNat + A079879 (n + 1)

end

end A360459.P106468472998062249

/-! ## A360459.P15417551523795221988

`A079879(n+1)+A079879(A117818(n+1))`
-/

namespace A360459.P15417551523795221988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) + A079879 (A117818 (n + 1)).toNat

end

end A360459.P15417551523795221988

/-! ## A360459.P15061998086140483777

`A079879(n+1)+A079879(A253560(n+1))`
-/

namespace A360459.P15061998086140483777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) + A079879 (A253560 (n + 1)).toNat

end

end A360459.P15061998086140483777

/-! ## A360459.P4081033516831495447

`A079879(n+1)+A020639(A347044(n+1))`
-/

namespace A360459.P4081033516831495447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) + A020639 (A347044 (n + 1)).toNat

end

end A360459.P4081033516831495447

/-! ## A360459.P8997301647647437815

`A079879(n+1)+A079879(A225004(n+1))`
-/

namespace A360459.P8997301647647437815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) + A079879 (A225004 (n + 1)).toNat

end

end A360459.P8997301647647437815

/-!
# A360460: Two times the median of the unordered prime signature of n; a(1) = 1.

The programs for A360460, there is no canonical definition to state claims against.
-/

/-! ## A360460.P1941140385802468077

`A086436(A304233(n+1))`
-/

namespace A360460.P1941140385802468077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A304233 (n + 1)).toNat

end

end A360460.P1941140385802468077

/-! ## A360460.P1991428835048081693

`A001222(abs(2-A304233(n+1))+2)`
-/

namespace A360460.P1991428835048081693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|2 - A304233 (n + 1)| + 2).toNat

end

end A360460.P1991428835048081693

/-! ## A360460.P16869927886477994143

`A001222(A304233(n+1)+A000007(n))`
-/

namespace A360460.P16869927886477994143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304233 (n + 1) + A000007 n).toNat

end

end A360460.P16869927886477994143

/-! ## A360460.P7002488261551062870

`A001222(A304233(n+1)+A000038(n))`
-/

namespace A360460.P7002488261551062870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304233 (n + 1) + A000038 n).toNat

end

end A360460.P7002488261551062870

/-! ## A360460.P12204065840362552897

`A073093(A304233(n+1))-A057427(n)`
-/

namespace A360460.P12204065840362552897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A304233 (n + 1)).toNat - A057427 n

end

end A360460.P12204065840362552897

/-! ## A360460.P7734367612486339320

`A001222(A054977(n)*A304233(n+1))`
-/

namespace A360460.P7734367612486339320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054977 n * A304233 (n + 1)).toNat

end

end A360460.P7734367612486339320

/-! ## A360460.P5809253590595389102

`A088388(n+1)+A005361(A034684(n+1))`
-/

namespace A360460.P5809253590595389102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1) + A005361 (A034684 (n + 1)).toNat

end

end A360460.P5809253590595389102

/-! ## A360460.P1215209224366326747

`A073093(A304233(n+1)/A088387(n+1))`
-/

namespace A360460.P1215209224366326747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((A304233 (n + 1) : ℚ) / (A088387 (n + 1) : ℚ))).toNat

end

end A360460.P1215209224366326747

/-! ## A360460.P3258642054983203858

`A001222(A014973(3*(n+1))*A304233(n+1))`
-/

namespace A360460.P3258642054983203858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014973 (3 * (n + 1)) * A304233 (n + 1)).toNat

end

end A360460.P3258642054983203858

/-! ## A360460.P17199754819420843074

`A001222(A089026(3*(n+1))*A304233(n+1))`
-/

namespace A360460.P17199754819420843074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089026 (3 * (n + 1)) * A304233 (n + 1)).toNat

end

end A360460.P17199754819420843074

/-!
# A360464: a(n) = a(n-1) + a(n-2) - a(n-3) + gcd(a(n-1), a(n-3)), with a(1) = a(2) = a(3) = 1.

The programs for A360464, the canonical program `A360464.P8246154809649604383` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360464 has offset 1).

The definition of A360464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)+gcd(a(n-1), a(n-3))` (program `A360464.P8246154809649604383`, by `A360464.P8246154809649604383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360464.P8246154809649604383

`a(n-1)+a(n-2)-a(n-3)+gcd(a(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360464

/-- `a(n-1)+a(n-2)-a(n-3)+gcd(a(n-1), a(n-3))` -/
def P8246154809649604383.Spec : Prop :=
  ∀ n, P8246154809649604383.a n = A360464 (n + 1)

theorem P8246154809649604383.correct : P8246154809649604383.Spec := by
  intro n
  simp only [A360464, Nat.add_sub_cancel]

end A360464

/-!
# A360465: E.g.f. satisfies A(x) = exp(x * exp(2*x) * A(x)).

The programs for A360465, there is no canonical definition to state claims against.
-/

/-! ## A360465.P1703468873998120123

`A064669(A149081(n))`
-/

namespace A360465.P1703468873998120123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064669 (A149081 n).toNat

end

end A360465.P1703468873998120123

/-!
# A360466: E.g.f. satisfies A(x) = exp(2 * x * exp(x) * A(x)).

The programs for A360466, there is no canonical definition to state claims against.
-/

/-! ## A360466.P1512400909929929673

`A188320(A395093(n))`
-/

namespace A360466.P1512400909929929673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (A395093 n).toNat

end

end A360466.P1512400909929929673

/-!
# A360467: a(n) = Fibonacci(4*n+2) + 3*Fibonacci(2*n+1)^2.

The programs for A360467, the canonical program `A360467.P16250033038527689112` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360467 has offset 0).

The definition of A360467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(4*n+2)+3*A000045(2*n+1)²` (program `A360467.P16250033038527689112`, by `A360467.P16250033038527689112.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360467.P11542474958229259225

`a(n-3)-8*(a(n-2)-a(n-1))` with `a(0)=4, a(1)=20, a(2)=130`
-/

namespace A360467.P11542474958229259225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 20, 130] fun n a =>
  a (n - 3) - 8 * (a (n - 2) - a (n - 1))

end

end A360467.P11542474958229259225

namespace A360467

/-- `a(n-3)-8*(a(n-2)-a(n-1))` -/
def P11542474958229259225.Spec : Prop :=
  ∀ n, P11542474958229259225.a n = A360467 n

end A360467

/-! ## A360467.P5686470366791502929

`2*A064170(n+3)`
-/

namespace A360467.P5686470366791502929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064170 (n + 3)

end

end A360467.P5686470366791502929

namespace A360467

/-- `2*A064170(n+3)` -/
def P5686470366791502929.Spec : Prop :=
  ∀ n, P5686470366791502929.a n = A360467 n

end A360467

/-! ## A360467.P8613432096937270123

`A295683(4*(n+1))`
-/

namespace A360467.P8613432096937270123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 (4 * (n + 1))

end

end A360467.P8613432096937270123

namespace A360467

/-- `A295683(4*(n+1))` -/
def P8613432096937270123.Spec : Prop :=
  ∀ n, P8613432096937270123.a n = A360467 n

end A360467

/-! ## A360467.P8998260667327368749

`A033890(n)+3*A081068(n)`
-/

namespace A360467.P8998260667327368749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 n + 3 * A081068 n

end

end A360467.P8998260667327368749

namespace A360467

/-- `A033890(n)+3*A081068(n)` -/
def P8998260667327368749.Spec : Prop :=
  ∀ n, P8998260667327368749.a n = A360467 n

end A360467

/-! ## A360467.P16062893059713867296

`2*A000045(2*n+1)*A000045(2*n+3)`
-/

namespace A360467.P16062893059713867296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (2 * n + 1) * A000045 (2 * n + 3)

end

end A360467.P16062893059713867296

namespace A360467

/-- `2*A000045(2*n+1)*A000045(2*n+3)` -/
def P16062893059713867296.Spec : Prop :=
  ∀ n, P16062893059713867296.a n = A360467 n

end A360467

/-! ## A360467.P16250033038527689112

`A000045(4*n+2)+3*A000045(2*n+1)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360467

/-- `A000045(4*n+2)+3*A000045(2*n+1)²` -/
def P16250033038527689112.Spec : Prop :=
  ∀ n, P16250033038527689112.a n = A360467 n

theorem P16250033038527689112.correct : P16250033038527689112.Spec := by
  intro n
  simp only [A360467]

end A360467

/-! ## A360467.P17937847580857670087

`A374259(2*n)`
-/

namespace A360467.P17937847580857670087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374259 (2 * n)

end

end A360467.P17937847580857670087

namespace A360467

/-- `A374259(2*n)` -/
def P17937847580857670087.Spec : Prop :=
  ∀ n, P17937847580857670087.a n = A360467 n

end A360467

/-! ## A360467.P8297331374377121389

`2*A059929(Δ[n²])`
-/

namespace A360467.P8297331374377121389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A360467.P8297331374377121389

namespace A360467

/-- `2*A059929(Δ[n²])` -/
def P8297331374377121389.Spec : Prop :=
  ∀ n, P8297331374377121389.a n = A360467 n

end A360467

/-! ## A360467.P3128787719270047008

`∑[A025169(2*n)]+2`
-/

namespace A360467.P3128787719270047008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A360467.P3128787719270047008

namespace A360467

/-- `∑[A025169(2*n)]+2` -/
def P3128787719270047008.Spec : Prop :=
  ∀ n, P3128787719270047008.a n = A360467 n

end A360467

/-! ## A360467.P345227172157327462

`2*(A049684(n+1)+1)`
-/

namespace A360467.P345227172157327462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049684 (n + 1) + 1)

end

end A360467.P345227172157327462

namespace A360467

/-- `2*(A049684(n+1)+1)` -/
def P345227172157327462.Spec : Prop :=
  ∀ n, P345227172157327462.a n = A360467 n

end A360467

/-! ## A360467.P5998901645353609586

`A175395(2*(n+1))+2`
-/

namespace A360467.P5998901645353609586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (2 * (n + 1)) + 2

end

end A360467.P5998901645353609586

namespace A360467

/-- `A175395(2*(n+1))+2` -/
def P5998901645353609586.Spec : Prop :=
  ∀ n, P5998901645353609586.a n = A360467 n

end A360467

/-! ## A360467.P4540372055375948665

`A192873(2*(n+1))+2`
-/

namespace A360467.P4540372055375948665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 (2 * (n + 1)) + 2

end

end A360467.P4540372055375948665

namespace A360467

/-- `A192873(2*(n+1))+2` -/
def P4540372055375948665.Spec : Prop :=
  ∀ n, P4540372055375948665.a n = A360467 n

end A360467

/-! ## A360467.P12902393037877502920

`A382845(2*(n+1))+3`
-/

namespace A360467.P12902393037877502920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 (2 * (n + 1)) + 3

end

end A360467.P12902393037877502920

namespace A360467

/-- `A382845(2*(n+1))+3` -/
def P12902393037877502920.Spec : Prop :=
  ∀ n, P12902393037877502920.a n = A360467 n

end A360467

/-! ## A360467.P6057220488175063616

`A392415(2*n+3)+1`
-/

namespace A360467.P6057220488175063616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (2 * n + 3) + 1

end

end A360467.P6057220488175063616

namespace A360467

/-- `A392415(2*n+3)+1` -/
def P6057220488175063616.Spec : Prop :=
  ∀ n, P6057220488175063616.a n = A360467 n

end A360467

/-! ## A360467.P56655225396604639

`2*A166516(2*(n+1))`
-/

namespace A360467.P56655225396604639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166516 (2 * (n + 1))

end

end A360467.P56655225396604639

namespace A360467

/-- `2*A166516(2*(n+1))` -/
def P56655225396604639.Spec : Prop :=
  ∀ n, P56655225396604639.a n = A360467 n

end A360467

/-! ## A360467.P5759706709631529774

`2*A245306(2*(n+1))`
-/

namespace A360467.P5759706709631529774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245306 (2 * (n + 1))

end

end A360467.P5759706709631529774

namespace A360467

/-- `2*A245306(2*(n+1))` -/
def P5759706709631529774.Spec : Prop :=
  ∀ n, P5759706709631529774.a n = A360467 n

end A360467

/-! ## A360467.P913059894795425077

`∑[A111282(2*(n+1))]+2`
-/

namespace A360467.P913059894795425077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A360467.P913059894795425077

namespace A360467

/-- `∑[A111282(2*(n+1))]+2` -/
def P913059894795425077.Spec : Prop :=
  ∀ n, P913059894795425077.a n = A360467 n

end A360467

/-! ## A360467.P6944402209709503577

`2*(A000045(2*(n+1))²+1)`
-/

namespace A360467.P6944402209709503577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (2 * (n + 1)) ^ 2 + 1)

end

end A360467.P6944402209709503577

namespace A360467

/-- `2*(A000045(2*(n+1))²+1)` -/
def P6944402209709503577.Spec : Prop :=
  ∀ n, P6944402209709503577.a n = A360467 n

end A360467

/-! ## A360467.P3430245894878258429

`2*floor(Δ[ϕ*A000045(2*n)]²)`
-/

namespace A360467.P3430245894878258429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (A000045 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A360467.P3430245894878258429

namespace A360467

/-- `2*floor(Δ[ϕ*A000045(2*n)]²)` -/
def P3430245894878258429.Spec : Prop :=
  ∀ n, P3430245894878258429.a n = A360467 n

end A360467

/-!
# A360468: Number of multisets of nonempty integer partitions with a total of n parts and total sum of 2n.

The programs for A360468, there is no canonical definition to state claims against.
-/

/-! ## A360468.P7088472619720287837

`A055884(C(2, n²)+2*n²)`
-/

namespace A360468.P7088472619720287837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055884 (Nat.choose 2 (n ^ 2) + 2 * n ^ 2)

end

end A360468.P7088472619720287837

/-! ## A360468.P7955539005319722285

`A055884(A004277(n²))`
-/

namespace A360468.P7955539005319722285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055884 (A004277 (n ^ 2)).toNat

end

end A360468.P7955539005319722285

/-! ## A360468.P3826362263344618664

`A055884(A000038(n)+2*n²)`
-/

namespace A360468.P3826362263344618664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055884 (A000038 n + (2 * n ^ 2 : ℤ)).toNat

end

end A360468.P3826362263344618664

/-! ## A360468.P5396376914077366376

`A055884(A038722(2*n²+1))`
-/

namespace A360468.P5396376914077366376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055884 (A038722 (2 * n ^ 2 + 1)).toNat

end

end A360468.P5396376914077366376

/-! ## A360468.P3811458662114808711

`A055884(A289207(2*n²+1)+1)`
-/

namespace A360468.P3811458662114808711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055884 (A289207 (2 * n ^ 2 + 1) + 1).toNat

end

end A360468.P3811458662114808711

/-!
# A360469: Only k >= 0 such that, for every odd r > 0, A093179(n) divides the generalized Fermat number (A007117(n)^r)^(2^k) + 1.

The programs for A360469, the canonical program `A360469.P3812770369488140680` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360469 has offset 3).

The definition of A360469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360469.P13130931952025614143

`n+3-val(n+5, 2)`
-/

namespace A360469.P13130931952025614143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.valuation (n + 5) 2 : ℤ)

end

end A360469.P13130931952025614143

namespace A360469

/-- `n+3-val(n+5, 2)` -/
def P13130931952025614143.Spec : Prop :=
  ∀ n, P13130931952025614143.a n = A360469 (n + 3)

end A360469

/-! ## A360469.P3812770369488140680

`n+3-A007814(n+5)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360469

/-- `n+3-A007814(n+5)` -/
def P3812770369488140680.Spec : Prop :=
  ∀ n, P3812770369488140680.a n = A360469 (n + 3)

theorem P3812770369488140680.correct : P3812770369488140680.Spec := by
  intro n
  simp only [A360469, Nat.add_sub_cancel]

end A360469

/-! ## A360469.P15082111321809102086

`∑[1-A094267(n+3)]`
-/

namespace A360469.P15082111321809102086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A094267 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360469.P15082111321809102086

namespace A360469

/-- `∑[1-A094267(n+3)]` -/
def P15082111321809102086.Spec : Prop :=
  ∀ n, P15082111321809102086.a n = A360469 (n + 3)

end A360469

/-! ## A360469.P18299051318713908610

`4-A001511(n+5)+n`
-/

namespace A360469.P18299051318713908610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A001511 (n + 5) + (n : ℤ)

end

end A360469.P18299051318713908610

namespace A360469

/-- `4-A001511(n+5)+n` -/
def P18299051318713908610.Spec : Prop :=
  ∀ n, P18299051318713908610.a n = A360469 (n + 3)

theorem P18299051318713908610.correct : P18299051318713908610.Spec := by
  intro n
  simp only [A360469, Nat.add_sub_cancel, A360469.P18299051318713908610.a, A360469.P3812770369488140680.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360469

/-! ## A360469.P4864920290897952146

`A101921(n+5)-(n+5)`
-/

namespace A360469.P4864920290897952146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101921 (n + 5) - (n + 5 : ℤ)

end

end A360469.P4864920290897952146

namespace A360469

/-- `A101921(n+5)-(n+5)` -/
def P4864920290897952146.Spec : Prop :=
  ∀ n, P4864920290897952146.a n = A360469 (n + 3)

end A360469

/-! ## A360469.P17844504834488026633

`A093049(n+5)-1`
-/

namespace A360469.P17844504834488026633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 (n + 5) - 1

end

end A360469.P17844504834488026633

namespace A360469

/-- `A093049(n+5)-1` -/
def P17844504834488026633.Spec : Prop :=
  ∀ n, P17844504834488026633.a n = A360469 (n + 3)

end A360469

/-! ## A360469.P18034983889496130318

`A093048(n+5)-2`
-/

namespace A360469.P18034983889496130318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (n + 5) - 2

end

end A360469.P18034983889496130318

namespace A360469

/-- `A093048(n+5)-2` -/
def P18034983889496130318.Spec : Prop :=
  ∀ n, P18034983889496130318.a n = A360469 (n + 3)

end A360469

/-! ## A360469.P1414175643870731735

`log2(A036296(n+3))`
-/

namespace A360469.P1414175643870731735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A036296 (n + 3) : ℝ)

end

end A360469.P1414175643870731735

namespace A360469

/-- `log2(A036296(n+3))` -/
def P1414175643870731735.Spec : Prop :=
  ∀ n, P1414175643870731735.a n = (A360469 (n + 3) : ℝ)

end A360469

/-! ## A360469.P3751617464815123169

`floor(log2(A036295(n+3)))`
-/

namespace A360469.P3751617464815123169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A036295 (n + 3)).toNat

end

end A360469.P3751617464815123169

namespace A360469

/-- `floor(log2(A036295(n+3)))` -/
def P3751617464815123169.Spec : Prop :=
  ∀ n, (P3751617464815123169.a n : ℤ) = A360469 (n + 3)

end A360469

/-! ## A360469.P11035467682576991627

`∑[log2(ratio[A075101(n+4)])]`
-/

namespace A360469.P11035467682576991627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075101 (n + 4)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360469.P11035467682576991627

namespace A360469

/-- `∑[log2(ratio[A075101(n+4)])]` -/
def P11035467682576991627.Spec : Prop :=
  ∀ n, P11035467682576991627.a n = (A360469 (n + 3) : ℝ)

end A360469

/-!
# A360470: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, the k rightmost digits of a(n+1) equal the k leftmost digits of a(n) for some k > 0.

The programs for A360470, there is no canonical definition to state claims against.
-/

/-! ## A360470.P1877477637297995805

`A327723(n+3)%A306872(n+1)`
-/

namespace A360470.P1877477637297995805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327723 (n + 3)) (A306872 (n + 1))

end

end A360470.P1877477637297995805

/-! ## A360470.P12573716230939252480

`A327723(n+3)%A327741(A327710(n))`
-/

namespace A360470.P12573716230939252480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327723 (n + 3)) (A327741 (A327710 n).toNat)

end

end A360470.P12573716230939252480

/-! ## A360470.P12606393994046764818

`A327723(A328617(n+1)+2)`
-/

namespace A360470.P12606393994046764818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327723 (A328617 (n + 1) + 2).toNat

end

end A360470.P12606393994046764818

/-! ## A360470.P10555774785453062461

`A327723(n+3)+A037011(A325994(2*n+3))`
-/

namespace A360470.P10555774785453062461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327723 (n + 3) + A037011 (A325994 (2 * n + 3)).toNat

end

end A360470.P10555774785453062461

/-! ## A360470.P16778813536757437161

`A347400(A076654(n+1))`
-/

namespace A360470.P16778813536757437161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (A076654 (n + 1)).toNat

end

end A360470.P16778813536757437161

/-!
# A360471: E.g.f. satisfies A(x) = x * exp( 2*A(x) + x * exp(2*A(x)) ).

The programs for A360471, there is no canonical definition to state claims against.
-/

/-! ## A360471.P11646513460966680311

`n*A295765(n*(n*(n-5)+5)²)`
-/

namespace A360471.P11646513460966680311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A295765 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat

end

end A360471.P11646513460966680311

/-!
# A360473: E.g.f. satisfies A(x) = exp( x * exp(x) * A(x)^2 ).

The programs for A360473, there is no canonical definition to state claims against.
-/

/-! ## A360473.P15457974935993185100

`A310800(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A360473.P15457974935993185100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A310800 ((n : ℤ) * a (n - 1)).toNat

end

end A360473.P15457974935993185100

/-!
# A360474: E.g.f. satisfies A(x) = exp( x * A(x)^2 * exp(x * A(x)^2) ).

The programs for A360474, there is no canonical definition to state claims against.
-/

/-! ## A360474.P14140102091441248147

`ceil(A182760(A098623(n))/2)`
-/

namespace A360474.P14140102091441248147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182760 (A098623 n).toNat : ℚ) / 2⌉

end

end A360474.P14140102091441248147

/-!
# A360475: Smallest prime factor of (2^prime(n) + 1) / 3.

The programs for A360475, there is no canonical definition to state claims against.
-/

/-! ## A360475.P11911077284135316486

`A286567(p?[2*n+1])`
-/

namespace A360475.P11911077284135316486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A360475.P11911077284135316486

/-! ## A360475.P17434600857258270351

`A286567(A065091(n+1))`
-/

namespace A360475.P17434600857258270351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (A065091 (n + 1)).toNat

end

end A360475.P17434600857258270351

/-! ## A360475.P2881718449556393730

`A286567(A000040(n+2))`
-/

namespace A360475.P2881718449556393730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (A000040 (n + 2)).toNat

end

end A360475.P2881718449556393730

/-! ## A360475.P17382959090903412260

`A286567(A006005(n+2))`
-/

namespace A360475.P17382959090903412260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (A006005 (n + 2)).toNat

end

end A360475.P17382959090903412260

/-! ## A360475.P12724232828796017877

`A286567(A322184(n+1))`
-/

namespace A360475.P12724232828796017877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (A322184 (n + 1)).toNat

end

end A360475.P12724232828796017877

/-!
# A360477: Numbers whose product of distinct prime factors is greater than or equal to the sum of its prime factors (with repetition).

The programs for A360477, the canonical program `A360477.P935886871947782901` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360477 has offset 1).

The definition of A360477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360477.P935886871947782901

`comp[A359869(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A360477

/-- `comp[A359869(n+1)-1]+1` -/
def P935886871947782901.Spec : Prop :=
  ∀ n, (P935886871947782901.a n : ℤ) = A360477 (n + 1)

theorem P935886871947782901.correct : P935886871947782901.Spec := by
  intro n
  simp only [A360477, Nat.add_sub_cancel]

end A360477

/-! ## A360477.P754356852425672208

`∪[A359870(n+1), Δ[A007504(n)]]`
-/

namespace A360477.P754356852425672208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P754356852425672208

namespace A360477

/-- `∪[A359870(n+1), Δ[A007504(n)]]` -/
def P754356852425672208.Spec : Prop :=
  ∀ n, (P754356852425672208.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P7712313557360183866

`∪[A359870(n+1), p?[A259153(n)]]`
-/

namespace A360477.P7712313557360183866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P7712313557360183866

namespace A360477

/-- `∪[A359870(n+1), p?[A259153(n)]]` -/
def P7712313557360183866.Spec : Prop :=
  ∀ n, (P7712313557360183866.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P7883857021553919652

`∪[A000040(n+1), A359870(n+1)]`
-/

namespace A360477.P7883857021553919652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P7883857021553919652

namespace A360477

/-- `∪[A000040(n+1), A359870(n+1)]` -/
def P7883857021553919652.Spec : Prop :=
  ∀ n, (P7883857021553919652.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P2346983620002913741

`∪[A003277(n+1), A359870(n+1)]`
-/

namespace A360477.P2346983620002913741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P2346983620002913741

namespace A360477

/-- `∪[A003277(n+1), A359870(n+1)]` -/
def P2346983620002913741.Spec : Prop :=
  ∀ n, (P2346983620002913741.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P2623056919595952665

`∪[A005117(n+1), A359870(n+1)]`
-/

namespace A360477.P2623056919595952665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P2623056919595952665

namespace A360477

/-- `∪[A005117(n+1), A359870(n+1)]` -/
def P2623056919595952665.Spec : Prop :=
  ∀ n, (P2623056919595952665.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P9270636923614964446

`∪[A008578(n+1), A359870(n+1)]`
-/

namespace A360477.P9270636923614964446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P9270636923614964446

namespace A360477

/-- `∪[A008578(n+1), A359870(n+1)]` -/
def P9270636923614964446.Spec : Prop :=
  ∀ n, (P9270636923614964446.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P12340809414800276532

`∪[A015919(n+1), A359870(n+1)]`
-/

namespace A360477.P12340809414800276532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P12340809414800276532

namespace A360477

/-- `∪[A015919(n+1), A359870(n+1)]` -/
def P12340809414800276532.Spec : Prop :=
  ∀ n, (P12340809414800276532.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P471175052791987323

`∪[A030059(n+1), A359870(n+1)]`
-/

namespace A360477.P471175052791987323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P471175052791987323

namespace A360477

/-- `∪[A030059(n+1), A359870(n+1)]` -/
def P471175052791987323.Spec : Prop :=
  ∀ n, (P471175052791987323.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P11217213234203121092

`∪[A053813(n+1), A359870(n+1)]`
-/

namespace A360477.P11217213234203121092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P11217213234203121092

namespace A360477

/-- `∪[A053813(n+1), A359870(n+1)]` -/
def P11217213234203121092.Spec : Prop :=
  ∀ n, (P11217213234203121092.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P2739919682955376910

`∪[A187731(n+1), A359870(n+1)]`
-/

namespace A360477.P2739919682955376910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P2739919682955376910

namespace A360477

/-- `∪[A187731(n+1), A359870(n+1)]` -/
def P2739919682955376910.Spec : Prop :=
  ∀ n, (P2739919682955376910.a n : ℤ) = A360477 (n + 1)

end A360477

/-! ## A360477.P596155772929482120

`∪[A005180(n+1), A359870(n+1)]`
-/

namespace A360477.P596155772929482120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360477.P596155772929482120

namespace A360477

/-- `∪[A005180(n+1), A359870(n+1)]` -/
def P596155772929482120.Spec : Prop :=
  ∀ n, (P596155772929482120.a n : ℤ) = A360477 (n + 1)

end A360477

/-!
# A360480: a(n) = number of numbers k < n, with gcd(k, n) > 1, such that there is at least one prime divisor p | k that does not divide n, and at least one prime divisor q | n that does not divide k.

The programs for A360480, there is no canonical definition to state claims against.
-/

/-! ## A360480.P2828024886481949825

`A243823(n+1)-A360543(n+1)`
-/

namespace A360480.P2828024886481949825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A360543 (n + 1)

end

end A360480.P2828024886481949825

/-! ## A360480.P14077444063154383701

`A010847(n+1)-(A360543(n+1)+A109606(n+1))`
-/

namespace A360480.P14077444063154383701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) - (A360543 (n + 1) + A109606 (n + 1))

end

end A360480.P14077444063154383701

/-! ## A360480.P7781781537640179077

`A045763(n+1)-(A360543(n+1)+A243822(n+1))`
-/

namespace A360480.P7781781537640179077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A360543 (n + 1) + A243822 (n + 1))

end

end A360480.P7781781537640179077

/-! ## A360480.P3341523844361729801

`A243822(n+1)+A300858(n+1)-A360543(n+1)`
-/

namespace A360480.P3341523844361729801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + (A300858 (n + 1) - A360543 (n + 1))

end

end A360480.P3341523844361729801

/-! ## A360480.P1176242721838611182

`(A300858(n+1)+A045763(n+1))/2-A360543(n+1)`
-/

namespace A360480.P1176242721838611182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300858 (n + 1) + A045763 (n + 1) : ℚ) / 2 - (A360543 (n + 1) : ℚ)

end

end A360480.P1176242721838611182

/-! ## A360480.P1145084554939697599

`A000005(n+1)+A045763(n+1)-A010846(n+1)-A360543(n+1)`
-/

namespace A360480.P1145084554939697599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A045763 (n + 1) - A010846 (n + 1)) - A360543 (n + 1)

end

end A360480.P1145084554939697599

/-!
# A360481: E.g.f. satisfies A(x) = x * exp(x + 2 * A(x)).

The programs for A360481, there is no canonical definition to state claims against.
-/

/-! ## A360481.P4353761365722312563

`n*A327332(n!)`
-/

namespace A360481.P4353761365722312563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327332 (Nat.factorial n)

end

end A360481.P4353761365722312563

/-!
# A360482: E.g.f. satisfies A(x) = x * exp(x + 3 * A(x)).

The programs for A360482, there is no canonical definition to state claims against.
-/

/-! ## A360482.P1888000188412810568

`n*A014684(A251574(n))`
-/

namespace A360482.P1888000188412810568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014684 (A251574 n).toNat

end

end A360482.P1888000188412810568

/-!
# A360483: E.g.f. satisfies A(x) = x * exp(x - 2 * A(x)).

The programs for A360483, there is no canonical definition to state claims against.
-/

/-! ## A360483.P11949617643415015246

`A181983(∑[A015470(n)])`
-/

namespace A360483.P11949617643415015246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360483.P11949617643415015246

/-!
# A360484: E.g.f. satisfies A(x) = x * exp(x - 3 * A(x)).

The programs for A360484, there is no canonical definition to state claims against.
-/

/-! ## A360484.P4508852172244666180

`n*A309288(A328004(n))`
-/

namespace A360484.P4508852172244666180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A309288 (A328004 n).toNat

end

end A360484.P4508852172244666180

/-!
# A360485: a(n) = index of the antidiagonal of the Wythoff array (A035513) that includes n.

The programs for A360485, the canonical program `A360485.P910775861642857530` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360485 has offset 1).

The definition of A360485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019586, A035612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360485.P910775861642857530

`A035612(n+1)+A019586(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A360485

/-- `A035612(n+1)+A019586(n+1)` -/
def P910775861642857530.Spec : Prop :=
  ∀ n, P910775861642857530.a n = A360485 (n + 1)

theorem P910775861642857530.correct : P910775861642857530.Spec := by
  intro n
  simp only [A360485, Nat.add_sub_cancel]

end A360485

/-! ## A360485.P11277041734382172812

`A035614(n)+A003603(n+1)`
-/

namespace A360485.P11277041734382172812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n + A003603 (n + 1)

end

end A360485.P11277041734382172812

namespace A360485

/-- `A035614(n)+A003603(n+1)` -/
def P11277041734382172812.Spec : Prop :=
  ∀ n, P11277041734382172812.a n = A360485 (n + 1)

theorem P11277041734382172812.correct : P11277041734382172812.Spec := by
  intro n
  simp only [A360485, Nat.add_sub_cancel, A360485.P11277041734382172812.a, A360485.P910775861642857530.a, A003603, A003603.P16957953193221149440.a, A019586, A019586.P9515353254246126569.a, A035612, A035612.P7106491847305260424.a, A035614, A035614.P1531182426394583162.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360485

/-! ## A360485.P16622134832374326776

`A019586(n+1)+A035614(n)+1`
-/

namespace A360485.P16622134832374326776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (n + 1) + (A035614 n + 1)

end

end A360485.P16622134832374326776

namespace A360485

/-- `A019586(n+1)+A035614(n)+1` -/
def P16622134832374326776.Spec : Prop :=
  ∀ n, P16622134832374326776.a n = A360485 (n + 1)

theorem P16622134832374326776.correct : P16622134832374326776.Spec := by
  intro n
  simp only [A360485, Nat.add_sub_cancel, A360485.P16622134832374326776.a, A360485.P910775861642857530.a, A019586, A019586.P9515353254246126569.a, A035612, A035612.P7106491847305260424.a, A035614, A035614.P1531182426394583162.a, A003603, A003603.P16957953193221149440.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360485

/-! ## A360485.P6352922959454275446

`A003603(n+1)+A035612(n+1)-1`
-/

namespace A360485.P6352922959454275446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1) + (A035612 (n + 1) - 1)

end

end A360485.P6352922959454275446

namespace A360485

/-- `A003603(n+1)+A035612(n+1)-1` -/
def P6352922959454275446.Spec : Prop :=
  ∀ n, P6352922959454275446.a n = A360485 (n + 1)

theorem P6352922959454275446.correct : P6352922959454275446.Spec := by
  intro n
  simp only [A360485, Nat.add_sub_cancel, A360485.P6352922959454275446.a, A360485.P910775861642857530.a, A003603, A003603.P16957953193221149440.a, A019586, A019586.P9515353254246126569.a, A035612, A035612.P7106491847305260424.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360485

/-! ## A360485.P4745231995746653512

`A003603(n+1)+val(A290258(n+2), 2)`
-/

namespace A360485.P4745231995746653512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1) + (SequenceMachineLib.valuation (A290258 (n + 2)).toNat 2 : ℤ)

end

end A360485.P4745231995746653512

namespace A360485

/-- `A003603(n+1)+val(A290258(n+2), 2)` -/
def P4745231995746653512.Spec : Prop :=
  ∀ n, P4745231995746653512.a n = A360485 (n + 1)

end A360485

/-! ## A360485.P10723276687726242162

`A035612(n+1)+A035614(n)-A191360(n+1)`
-/

namespace A360485.P10723276687726242162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) + (A035614 n - A191360 (n + 1))

end

end A360485.P10723276687726242162

namespace A360485

/-- `A035612(n+1)+A035614(n)-A191360(n+1)` -/
def P10723276687726242162.Spec : Prop :=
  ∀ n, P10723276687726242162.a n = A360485 (n + 1)

theorem P10723276687726242162.correct : P10723276687726242162.Spec := by
  intro n
  simp only [A360485, Nat.add_sub_cancel, A360485.P10723276687726242162.a, A360485.P910775861642857530.a, A019586, A019586.P9515353254246126569.a, A035612, A035612.P7106491847305260424.a, A035614, A035614.P1531182426394583162.a, A191360, A191360.P15454014504453218478.a, A003603, A003603.P16957953193221149440.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360485

/-! ## A360485.P11355841145905688573

`A007814(A048679(n+1))+A003603(n+1)`
-/

namespace A360485.P11355841145905688573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048679 (n + 1)).toNat + A003603 (n + 1)

end

end A360485.P11355841145905688573

namespace A360485

/-- `A007814(A048679(n+1))+A003603(n+1)` -/
def P11355841145905688573.Spec : Prop :=
  ∀ n, P11355841145905688573.a n = A360485 (n + 1)

end A360485

/-! ## A360485.P5301894871725959115

`A007814(A003714(n+1))+A003603(n+1)`
-/

namespace A360485.P5301894871725959115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003714 (n + 1)).toNat + A003603 (n + 1)

end

end A360485.P5301894871725959115

namespace A360485

/-- `A007814(A003714(n+1))+A003603(n+1)` -/
def P5301894871725959115.Spec : Prop :=
  ∀ n, P5301894871725959115.a n = A360485 (n + 1)

end A360485

/-! ## A360485.P488490153848577645

`A002024(A064274(n+1))`
-/

namespace A360485.P488490153848577645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A064274 (n + 1)).toNat

end

end A360485.P488490153848577645

namespace A360485

/-- `A002024(A064274(n+1))` -/
def P488490153848577645.Spec : Prop :=
  ∀ n, P488490153848577645.a n = A360485 (n + 1)

end A360485

/-!
# A360486: Convolution of A000041 and A000290.

The programs for A360486, there is no canonical definition to state claims against.
-/

/-! ## A360486.P6288796116409754226

`A144898(n)-A010051(A010904(n))`
-/

namespace A360486.P6288796116409754226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n - A010051 (A010904 n).toNat

end

end A360486.P6288796116409754226

/-! ## A360486.P4599979354023040493

`A144898(n)-A006927(A039941(n))`
-/

namespace A360486.P4599979354023040493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n - A006927 (A039941 n).toNat

end

end A360486.P4599979354023040493

/-! ## A360486.P13951704307666133817

`A144898(n)-A055641(A004110(n))`
-/

namespace A360486.P13951704307666133817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n - A055641 (A004110 n).toNat

end

end A360486.P13951704307666133817

/-! ## A360486.P14196399644999492150

`A144898(n)-A122840(A000110(n))`
-/

namespace A360486.P14196399644999492150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n - A122840 (A000110 n).toNat

end

end A360486.P14196399644999492150

/-! ## A360486.P139370677575477632

`A144898(n)-A124764(A004148(n))`
-/

namespace A360486.P139370677575477632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n - A124764 (A004148 n).toNat

end

end A360486.P139370677575477632

/-!
# A360487: Convolution of A000009 and A000290.

The programs for A360487, there is no canonical definition to state claims against.
-/

/-! ## A360487.P5328924076383712350

`A337979(A361753(n))`
-/

namespace A360487.P5328924076383712350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337979 (A361753 n).toNat

end

end A360487.P5328924076383712350

/-! ## A360487.P15770286011077166896

`A337979(A376811(n))`
-/

namespace A360487.P15770286011077166896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337979 (A376811 n).toNat

end

end A360487.P15770286011077166896

/-! ## A360487.P823890123496542841

`∑[A120401(∑[A127033(2*(n+1))])]`
-/

namespace A360487.P823890123496542841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127033 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360487.P823890123496542841

/-!
# A360488: 31-gonal numbers: a(n) = n*(29*n-27)/2.

The programs for A360488, the canonical program `A360488.P16627206225299801977` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360488 has offset 0).

The definition of A360488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n-27)/2` (program `A360488.P1893859891687193527`, by `A360488.P1893859891687193527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360488.P1893859891687193527

`n*(29*n-27)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360488.P1893859891687193527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((29 * n : ℤ) - 27) : ℚ) / 2

end

end A360488.P1893859891687193527

namespace A360488

/-- `n*(29*n-27)/2` -/
def P1893859891687193527.Spec : Prop :=
  ∀ n, P1893859891687193527.a n = (A360488 n : ℚ)

theorem P1893859891687193527.correct : P1893859891687193527.Spec := by
  intro n
  simp only [A360488, Nat.add_sub_cancel, A360488.P1893859891687193527.a, A360488.P16627206225299801977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360488

/-! ## A360488.P16627206225299801977

`29*C(n, 2)+n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360488

/-- `29*C(n, 2)+n` -/
def P16627206225299801977.Spec : Prop :=
  ∀ n, (P16627206225299801977.a n : ℤ) = A360488 n

theorem P16627206225299801977.correct : P16627206225299801977.Spec := by
  intro n
  simp only [A360488]

end A360488

/-! ## A360488.P269638252608440068

`∑[a(n-1)+29]` with `a(0)=0, a(1)=1`
-/

namespace A360488.P269638252608440068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360488.P269638252608440068

namespace A360488

/-- `∑[a(n-1)+29]` -/
def P269638252608440068.Spec : Prop :=
  ∀ n, (P269638252608440068.a n : ℤ) = A360488 n

end A360488

/-! ## A360488.P17073128082828261846

`A263226(n)-∑[n]`
-/

namespace A360488.P17073128082828261846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263226 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A360488.P17073128082828261846

namespace A360488

/-- `A263226(n)-∑[n]` -/
def P17073128082828261846.Spec : Prop :=
  ∀ n, P17073128082828261846.a n = A360488 n

end A360488

/-! ## A360488.P1235733357080124571

`A064200(n)+A000566(n)`
-/

namespace A360488.P1235733357080124571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A000566 n

end

end A360488.P1235733357080124571

namespace A360488

/-- `A064200(n)+A000566(n)` -/
def P1235733357080124571.Spec : Prop :=
  ∀ n, P1235733357080124571.a n = A360488 n

end A360488

/-! ## A360488.P12003046731871687329

`A263231(n)+A139570(n)`
-/

namespace A360488.P12003046731871687329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A139570 n

end

end A360488.P12003046731871687329

namespace A360488

/-- `A263231(n)+A139570(n)` -/
def P12003046731871687329.Spec : Prop :=
  ∀ n, P12003046731871687329.a n = A360488 n

end A360488

/-! ## A360488.P8282866735305647315

`A254474(n)+A161680(n)`
-/

namespace A360488.P8282866735305647315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 n + A161680 n

end

end A360488.P8282866735305647315

namespace A360488

/-- `A254474(n)+A161680(n)` -/
def P8282866735305647315.Spec : Prop :=
  ∀ n, P8282866735305647315.a n = A360488 n

theorem P8282866735305647315.correct : P8282866735305647315.Spec := by
  intro n
  simp only [A360488, Nat.add_sub_cancel, A360488.P8282866735305647315.a, A360488.P16627206225299801977.a, A161680, A161680.P17206074215489759881.a, A254474, A254474.P15703138997127178640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360488

/-! ## A360488.P2134748129676404680

`A022286(n)-A008595(n)`
-/

namespace A360488.P2134748129676404680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n - A008595 n

end

end A360488.P2134748129676404680

namespace A360488

/-- `A022286(n)-A008595(n)` -/
def P2134748129676404680.Spec : Prop :=
  ∀ n, P2134748129676404680.a n = A360488 n

end A360488

/-! ## A360488.P8609017426437802450

`A022287(n)-A008596(n)`
-/

namespace A360488.P8609017426437802450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n - A008596 n

end

end A360488.P8609017426437802450

namespace A360488

/-- `A022287(n)-A008596(n)` -/
def P8609017426437802450.Spec : Prop :=
  ∀ n, P8609017426437802450.a n = A360488 n

end A360488

/-! ## A360488.P7979165581795407331

`A022289(n)-A098848(n)`
-/

namespace A360488.P7979165581795407331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - A098848 n

end

end A360488.P7979165581795407331

namespace A360488

/-- `A022289(n)-A098848(n)` -/
def P7979165581795407331.Spec : Prop :=
  ∀ n, P7979165581795407331.a n = A360488 n

end A360488

/-! ## A360488.P12638686964614045893

`A153448(n)-A000096(n)`
-/

namespace A360488.P12638686964614045893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n - A000096 n

end

end A360488.P12638686964614045893

namespace A360488

/-- `A153448(n)-A000096(n)` -/
def P12638686964614045893.Spec : Prop :=
  ∀ n, P12638686964614045893.a n = A360488 n

theorem P12638686964614045893.correct : P12638686964614045893.Spec := by
  intro n
  simp only [A360488, Nat.add_sub_cancel, A360488.P12638686964614045893.a, A360488.P16627206225299801977.a, A000096, A000096.P6925830517264718723.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360488

/-! ## A360488.P14677645141159235455

`A153875(n)-A001105(n)`
-/

namespace A360488.P14677645141159235455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n - A001105 n

end

end A360488.P14677645141159235455

namespace A360488

/-- `A153875(n)-A001105(n)` -/
def P14677645141159235455.Spec : Prop :=
  ∀ n, P14677645141159235455.a n = A360488 n

end A360488

/-! ## A360488.P2524800296761475143

`A022288(n)-A132759(n)`
-/

namespace A360488.P2524800296761475143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022288 n - A132759 n

end

end A360488.P2524800296761475143

namespace A360488

/-- `A022288(n)-A132759(n)` -/
def P2524800296761475143.Spec : Prop :=
  ∀ n, P2524800296761475143.a n = A360488 n

end A360488

/-! ## A360488.P3306844406530758463

`A028994(n)-A140673(n)`
-/

namespace A360488.P3306844406530758463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A140673 n

end

end A360488.P3306844406530758463

namespace A360488

/-- `A028994(n)-A140673(n)` -/
def P3306844406530758463.Spec : Prop :=
  ∀ n, P3306844406530758463.a n = A360488 n

end A360488

/-! ## A360488.P12615298170773918032

`A153797(n)-A022270(n)`
-/

namespace A360488.P12615298170773918032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n - A022270 n

end

end A360488.P12615298170773918032

namespace A360488

/-- `A153797(n)-A022270(n)` -/
def P12615298170773918032.Spec : Prop :=
  ∀ n, P12615298170773918032.a n = A360488 n

end A360488

/-! ## A360488.P4212689205832331240

`A152777(n)-A028896(n)`
-/

namespace A360488.P4212689205832331240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - A028896 n

end

end A360488.P4212689205832331240

namespace A360488

/-- `A152777(n)-A028896(n)` -/
def P4212689205832331240.Spec : Prop :=
  ∀ n, P4212689205832331240.a n = A360488 n

end A360488

/-! ## A360488.P1944522090270463028

`A064761(n)-A132756(n)`
-/

namespace A360488.P1944522090270463028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n - A132756 n

end

end A360488.P1944522090270463028

namespace A360488

/-- `A064761(n)-A132756(n)` -/
def P1944522090270463028.Spec : Prop :=
  ∀ n, P1944522090270463028.a n = A360488 n

end A360488

/-! ## A360488.P8109461765146224320

`A153786(n)-A056000(n)`
-/

namespace A360488.P8109461765146224320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n - A056000 n

end

end A360488.P8109461765146224320

namespace A360488

/-- `A153786(n)-A056000(n)` -/
def P8109461765146224320.Spec : Prop :=
  ∀ n, P8109461765146224320.a n = A360488 n

end A360488

/-! ## A360488.P16102072972559983051

`A153795(n)-A055999(n)`
-/

namespace A360488.P16102072972559983051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n - A055999 n

end

end A360488.P16102072972559983051

namespace A360488

/-- `A153795(n)-A055999(n)` -/
def P16102072972559983051.Spec : Prop :=
  ∀ n, P16102072972559983051.a n = A360488 n

end A360488

/-! ## A360488.P17171729289454789064

`A153780(n)-A056126(n)`
-/

namespace A360488.P17171729289454789064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n - A056126 n

end

end A360488.P17171729289454789064

namespace A360488

/-- `A153780(n)-A056126(n)` -/
def P17171729289454789064.Spec : Prop :=
  ∀ n, P17171729289454789064.a n = A360488 n

end A360488

/-!
# A360489: Convolution of A000219 and A001477.

The programs for A360489, there is no canonical definition to state claims against.
-/

/-! ## A360489.P16142931860322329678

`∑[A000219(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A360489.P16142931860322329678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000219 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360489.P16142931860322329678

/-! ## A360489.P13213465003712100235

`∑[A091360(n)-A000219(n)]`
-/

namespace A360489.P13213465003712100235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A000219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360489.P13213465003712100235

/-! ## A360489.P13636818939298492793

`∑[A091360(n)-A242642(A179865(n+1))]`
-/

namespace A360489.P13636818939298492793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A242642 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360489.P13636818939298492793

/-! ## A360489.P782473205593327296

`∑[A091360(n)-A257673(A133263(n)-1)]`
-/

namespace A360489.P782473205593327296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A257673 (A133263 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360489.P782473205593327296

/-! ## A360489.P13409233129828043639

`∑[∑[A242641(2*(n+1)²)]-A000219(n)]`
-/

namespace A360489.P13409233129828043639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360489.P13409233129828043639

/-!
# A360490: a(n) = (1/2) * A241102(n).

The programs for A360490, there is no canonical definition to state claims against.
-/

/-! ## A360490.P3608470683652888031

`1/2*A241102(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360490.P3608470683652888031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A241102 (n + 1) : ℚ)

end

end A360490.P3608470683652888031

/-! ## A360490.P11658599600329391523

`A241102(n+1)/2`
-/

namespace A360490.P11658599600329391523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241102 (n + 1) : ℚ) / 2

end

end A360490.P11658599600329391523

/-! ## A360490.P13346351587023845097

`∩[A243761(n+1), A158480(n)]`
-/

namespace A360490.P13346351587023845097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360490.P13346351587023845097

/-! ## A360490.P9760995279574205736

`∩[A002648(n+1), A243761(n+1)]`
-/

namespace A360490.P9760995279574205736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360490.P9760995279574205736

/-! ## A360490.P2495996483356878775

`∩[3*(A004273(n)+1)²+1, A243761(n+1)]`
-/

namespace A360490.P2495996483356878775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A004273 n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360490.P2495996483356878775

/-!
# A360491: Square of A(n,m) read by antidiagonals. A(n,m) = number of set partitions of [5n] into 5-element subsets {i, i+k, i+2k, i+3k, i+4k} with 1 <= k <= m.

The programs for A360491, there is no canonical definition to state claims against.
-/

/-! ## A360491.P5506277354867710109

`A360493(n+1)+A105348(A360246(n+1))`
-/

namespace A360491.P5506277354867710109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + A105348 (A360246 (n + 1)).toNat

end

end A360491.P5506277354867710109

/-! ## A360491.P10468062137902021588

`A360493(n+1)+A295884(A286240(3*n+2))`
-/

namespace A360491.P10468062137902021588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + A295884 (A286240 (3 * n + 2)).toNat

end

end A360491.P10468062137902021588

/-! ## A360491.P12555735403959063527

`A360492(n+1)%A112064(n+1)`
-/

namespace A360491.P12555735403959063527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360492 (n + 1)) (A112064 (n + 1))

end

end A360491.P12555735403959063527

/-! ## A360491.P7851963318142871014

`A360493(n+1)%A225552(n+6)`
-/

namespace A360491.P7851963318142871014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360493 (n + 1)) (A225552 (n + 6))

end

end A360491.P7851963318142871014

/-! ## A360491.P182813239058055485

`abs(A360493(n+1)/A301849(2*(n+1)))`
-/

namespace A360491.P182813239058055485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A360493 (n + 1) : ℚ) / (A301849 (2 * (n + 1)) : ℚ)|

end

end A360491.P182813239058055485

/-!
# A360492: Square of A(n,m) read by antidiagonals. A(n,m) = number of set partitions of [6n] into 6-element subsets {i, i+k, i+2k, i+3k, i+4k, i+5k} with 1 <= k <= m.

The programs for A360492, there is no canonical definition to state claims against.
-/

/-! ## A360492.P18440008035145376312

`A360493(n+1)+char[A166255(n+1)]`
-/

namespace A360492.P18440008035145376312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360492.P18440008035145376312

/-! ## A360492.P7472523146952930290

`A360493(n+1)+char[A051616(n+3)]`
-/

namespace A360492.P7472523146952930290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051616 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360492.P7472523146952930290

/-! ## A360492.P200491903631062005

`A360493(n+1)+char[A153774(n+5)]`
-/

namespace A360492.P200491903631062005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153774 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360492.P200491903631062005

/-! ## A360492.P15206440188519444960

`A360493(n+1)+A360480((n+1)/∏{p}[n+1, #])`
-/

namespace A360492.P15206440188519444960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + A360480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A360492.P15206440188519444960

/-! ## A360492.P11421153065455286285

`A360493(n+1)+A193243(A025338(n+1))`
-/

namespace A360492.P11421153065455286285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + A193243 (A025338 (n + 1)).toNat

end

end A360492.P11421153065455286285

/-! ## A360492.P14045230871975837149

`A360493(n+1)+A001617(A355593(n+1))`
-/

namespace A360492.P14045230871975837149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + A001617 (A355593 (n + 1)).toNat

end

end A360492.P14045230871975837149

/-! ## A360492.P8909549859215858151

`A360493(n+1)+A088722(A360119(n+1))`
-/

namespace A360492.P8909549859215858151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + A088722 (A360119 (n + 1)).toNat

end

end A360492.P8909549859215858151

/-! ## A360492.P15521500099148796084

`A360493(n+1)+char[A009996(A013658(n+1))]`
-/

namespace A360492.P15521500099148796084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (A013658 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360492.P15521500099148796084

/-! ## A360492.P1246138494859007148

`and(A059328(n), A360493(n+1))`
-/

namespace A360492.P1246138494859007148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059328 n) (A360493 (n + 1))

end

end A360492.P1246138494859007148

/-! ## A360492.P12386716632756864220

`A360493(n+1)%A360516(n+2)`
-/

namespace A360492.P12386716632756864220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360493 (n + 1)) (A360516 (n + 2))

end

end A360492.P12386716632756864220

/-!
# A360493: Square of A(n,m) read by antidiagonals. A(n,m) = number of set partitions of [7n] into 7-element subsets {i, i+k, i+2k, i+3k, i+4k, i+5k, i+6k} with 1 <= k <= m.

The programs for A360493, there is no canonical definition to state claims against.
-/

/-! ## A360493.P7317837449010184145

`A360492(n+1)-char[A115447(n+1)]`
-/

namespace A360493.P7317837449010184145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115447 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360492 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360493.P7317837449010184145

/-! ## A360493.P14268774347114156381

`A360492(n+1)-char[A198452(2*(n+2))]`
-/

namespace A360493.P14268774347114156381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360492 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360493.P14268774347114156381

/-! ## A360493.P1404395964722958192

`A360492(n+1)-A155213(A050330(n+1))`
-/

namespace A360493.P1404395964722958192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360492 (n + 1) - A155213 (A050330 (n + 1)).toNat

end

end A360493.P1404395964722958192

/-! ## A360493.P15800565696297473507

`A360492(n+1)-A322437(A363085(n+1))`
-/

namespace A360493.P15800565696297473507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360492 (n + 1) - A322437 (A363085 (n + 1)).toNat

end

end A360493.P15800565696297473507

/-!
# A360495: Triangle read by rows: T(n,k) is the minimum number of pairwise comparisons needed (in the worst case) to determine the k-th largest of n distinct numbers, for 1 <= k <= n.

The programs for A360495, there is no canonical definition to state claims against.
-/

/-! ## A360495.P15427066472690506487

`A325678(A114999(n+1)-1)`
-/

namespace A360495.P15427066472690506487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A114999 (n + 1) - 1).toNat

end

end A360495.P15427066472690506487

/-! ## A360495.P6390370924819312701

`A057526(A038221(n))`
-/

namespace A360495.P6390370924819312701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A038221 n).toNat

end

end A360495.P6390370924819312701

/-! ## A360495.P16254431270463256188

`A345378(A259101(n))`
-/

namespace A360495.P16254431270463256188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345378 (A259101 n).toNat

end

end A360495.P16254431270463256188

/-! ## A360495.P3244641545427453292

`A084506(A222169(n+1))-1`
-/

namespace A360495.P3244641545427453292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (A222169 (n + 1)).toNat - 1

end

end A360495.P3244641545427453292

/-! ## A360495.P15266891438640937858

`A090973(A229521(n+1))-2`
-/

namespace A360495.P15266891438640937858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (A229521 (n + 1)).toNat - 2

end

end A360495.P15266891438640937858

/-!
# A360496: a(n) is the remainder after dividing n by its largest prime factor plus 1, a(1) = 1.

The programs for A360496, the canonical program `A360496.P13841680591113752859` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360496 has offset 1).

The definition of A360496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360496.P13841680591113752859

`(n+1)%(1+A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360496

/-- `(n+1)%(1+A006530(n+1))` -/
def P13841680591113752859.Spec : Prop :=
  ∀ n, P13841680591113752859.a n = A360496 (n + 1)

theorem P13841680591113752859.correct : P13841680591113752859.Spec := by
  intro n
  simp only [A360496, Nat.add_sub_cancel]

end A360496

/-! ## A360496.P746004886232167126

`(n+1)%A020725(A006530(n+1))`
-/

namespace A360496.P746004886232167126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020725 (A006530 (n + 1)).toNat)

end

end A360496.P746004886232167126

namespace A360496

/-- `(n+1)%A020725(A006530(n+1))` -/
def P746004886232167126.Spec : Prop :=
  ∀ n, P746004886232167126.a n = A360496 (n + 1)

end A360496

/-! ## A360496.P4204537953592534024

`A000027(n+1)%(A111089(n+1)+1)`
-/

namespace A360496.P4204537953592534024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A111089 (n + 1) + 1)

end

end A360496.P4204537953592534024

namespace A360496

/-- `A000027(n+1)%(A111089(n+1)+1)` -/
def P4204537953592534024.Spec : Prop :=
  ∀ n, P4204537953592534024.a n = A360496 (n + 1)

end A360496

/-! ## A360496.P1596077515216736785

`A000027(n+1)%A000203(A111089(n+1))`
-/

namespace A360496.P1596077515216736785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A000203 (A111089 (n + 1)).toNat)

end

end A360496.P1596077515216736785

namespace A360496

/-- `A000027(n+1)%A000203(A111089(n+1))` -/
def P1596077515216736785.Spec : Prop :=
  ∀ n, P1596077515216736785.a n = A360496 (n + 1)

end A360496

/-! ## A360496.P12938665502449407458

`A032742(2*(n+1))%A028815(A061395(n+1))`
-/

namespace A360496.P12938665502449407458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (2 * (n + 1))) (A028815 (A061395 (n + 1)).toNat)

end

end A360496.P12938665502449407458

namespace A360496

/-- `A032742(2*(n+1))%A028815(A061395(n+1))` -/
def P12938665502449407458.Spec : Prop :=
  ∀ n, P12938665502449407458.a n = A360496 (n + 1)

end A360496

/-!
# A360498: Number of ways to tile an n X n square using oblongs with distinct dimensions.

The programs for A360498, there is no canonical definition to state claims against.
-/

/-! ## A360498.P11423832360489907736

`2*A324104(n^n)`
-/

namespace A360498.P11423832360489907736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n ^ n)

end

end A360498.P11423832360489907736

