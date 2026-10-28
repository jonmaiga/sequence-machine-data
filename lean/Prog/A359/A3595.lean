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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
# A359502: a(n) = a(n-2)^2 + a(n-1) + 1 for n >= 2 with a(0) = 0 and a(1) = 1.

The programs for A359502, the canonical program `A359502.P6509010548633112882` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359502 has offset 0).

The definition of A359502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)²+a(n-1)+1` (program `A359502.P6509010548633112882`, by `A359502.P6509010548633112882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A359502.P6509010548633112882

`a(n-2)²+a(n-1)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A359502

/-- `a(n-2)²+a(n-1)+1` -/
def P6509010548633112882.Spec : Prop :=
  ∀ n, (P6509010548633112882.a n : ℤ) = A359502 n

theorem P6509010548633112882.correct : P6509010548633112882.Spec := by
  intro n
  simp only [A359502]

end A359502

/-! ## A359502.P37036142491913777

`a(n-1)+a(n-2)²+1` with `a(0)=0, a(1)=1`
-/

namespace A359502.P37036142491913777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) ^ 2 + 1

end

end A359502.P37036142491913777

namespace A359502

/-- `a(n-1)+a(n-2)²+1` -/
def P37036142491913777.Spec : Prop :=
  ∀ n, (P37036142491913777.a n : ℤ) = A359502 n

end A359502

/-! ## A359502.P7173550505807594519

`a(n-1)+a(n-2)*a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A359502.P7173550505807594519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) * a (n - 2) + 1)

end

end A359502.P7173550505807594519

namespace A359502

/-- `a(n-1)+a(n-2)*a(n-2)+1` -/
def P7173550505807594519.Spec : Prop :=
  ∀ n, (P7173550505807594519.a n : ℤ) = A359502 n

end A359502

/-!
# A359503: Partial sums of A066839.

The programs for A359503, the canonical program `A359503.P5281046467530968970` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359503 has offset 1).

The definition of A359503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359503.P14028988052289740974

`∑[A066839(n+1)]`
-/

namespace A359503.P14028988052289740974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359503.P14028988052289740974

namespace A359503

/-- `∑[A066839(n+1)]` -/
def P14028988052289740974.Spec : Prop :=
  ∀ n, P14028988052289740974.a n = A359503 (n + 1)

end A359503

/-! ## A359503.P5281046467530968970

`∑[A333751(n+1)+A097974(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A359503

/-- `∑[A333751(n+1)+A097974(n+1)]` -/
def P5281046467530968970.Spec : Prop :=
  ∀ n, P5281046467530968970.a n = A359503 (n + 1)

theorem P5281046467530968970.correct : P5281046467530968970.Spec := by
  intro n
  simp only [A359503, Nat.add_sub_cancel]

end A359503

/-! ## A359503.P11816301763881820927

`∑[A060866(n+1)-A070038(n+1)]`
-/

namespace A359503.P11816301763881820927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A070038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359503.P11816301763881820927

namespace A359503

/-- `∑[A060866(n+1)-A070038(n+1)]` -/
def P11816301763881820927.Spec : Prop :=
  ∀ n, P11816301763881820927.a n = A359503 (n + 1)

theorem P11816301763881820927.correct : P11816301763881820927.Spec := by
  intro n
  simp only [A359503, Nat.add_sub_cancel, A359503.P11816301763881820927.f1, A359503.P11816301763881820927.a, A359503.P5281046467530968970.f1, A359503.P5281046467530968970.a, A060866, A060866.P6702575079618569107.a, A070038, A070038.P10485026428736281518.a, A097974, A097974.P5758962285217898307.f1, A097974.P5758962285217898307.a, A333751, A333751.P276282366171106930.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A072504, A072504.P15978785907571623922.a, A079667, A079667.P14511190976572101937.a, A000194, A000194.P3625933274776871084.a, A000196, A000196.P15434771586934192083.a, A003418, A003418.P6976248655893080794.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359503

/-! ## A359503.P6968388556044570405

`∑[A070038(n+1)-A079667(n+1)]`
-/

namespace A359503.P6968388556044570405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A079667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359503.P6968388556044570405

namespace A359503

/-- `∑[A070038(n+1)-A079667(n+1)]` -/
def P6968388556044570405.Spec : Prop :=
  ∀ n, P6968388556044570405.a n = A359503 (n + 1)

end A359503

/-! ## A359503.P111965763896692642

`∑[A000203(n+1)-A238535(n+1)]`
-/

namespace A359503.P111965763896692642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A238535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359503.P111965763896692642

namespace A359503

/-- `∑[A000203(n+1)-A238535(n+1)]` -/
def P111965763896692642.Spec : Prop :=
  ∀ n, P111965763896692642.a n = A359503 (n + 1)

end A359503

/-! ## A359503.P17515042845976240020

`∑[A069292((n+1)²)]`
-/

namespace A359503.P17515042845976240020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069292 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359503.P17515042845976240020

namespace A359503

/-- `∑[A069292((n+1)²)]` -/
def P17515042845976240020.Spec : Prop :=
  ∀ n, P17515042845976240020.a n = A359503 (n + 1)

end A359503

/-!
# A359506: a(n) is the least integer m such that there exists a strictly increasing integer sequence n = b_1 < b_2 < ... < b_t = m with the property that b_1 XOR b_2 XOR ... XOR b_t = 0.

The programs for A359506, the canonical program `A359506.P15800780769918502959` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359506 has offset 0).

The definition of A359506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359506.P15800780769918502959

`(xor(n, n+1)+2)%∑{d}[∏{p}[n+1, #], (n+1)/#]+n`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A359506

/-- `(xor(n, n+1)+2)%∑{d}[∏{p}[n+1, #], (n+1)/#]+n` -/
def P15800780769918502959.Spec : Prop :=
  ∀ n, P15800780769918502959.a n = A359506 n

theorem P15800780769918502959.correct : P15800780769918502959.Spec := by
  intro n
  simp only [A359506]

end A359506

/-! ## A359506.P17199583282797272169

`A359507(n)+n`
-/

namespace A359506.P17199583282797272169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359507 n + (n : ℤ)

end

end A359506.P17199583282797272169

namespace A359506

/-- `A359507(n)+n` -/
def P17199583282797272169.Spec : Prop :=
  ∀ n, P17199583282797272169.a n = A359506 n

theorem P17199583282797272169.correct : P17199583282797272169.Spec := by
  intro n
  simp only [A359506, Nat.add_sub_cancel, A359506.P17199583282797272169.a, A359506.P15800780769918502959.f2, A359506.P15800780769918502959.f1, A359506.P15800780769918502959.a, A359507, A359507.P5582106978947893081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359506

/-! ## A359506.P3006704398689684504

`A084964(xor(A006257(n+1), A006257(n)))+n`
-/

namespace A359506.P3006704398689684504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (Int.xor (A006257 (n + 1)) (A006257 n)).toNat + (n : ℤ)

end

end A359506.P3006704398689684504

namespace A359506

/-- `A084964(xor(A006257(n+1), A006257(n)))+n` -/
def P3006704398689684504.Spec : Prop :=
  ∀ n, P3006704398689684504.a n = A359506 n

end A359506

/-! ## A359506.P17701429329671361133

`2*(n+1)-A065173(A065175(2*(n+1)))`
-/

namespace A359506.P17701429329671361133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A065173 (A065175 (2 * (n + 1))).toNat

end

end A359506.P17701429329671361133

namespace A359506

/-- `2*(n+1)-A065173(A065175(2*(n+1)))` -/
def P17701429329671361133.Spec : Prop :=
  ∀ n, P17701429329671361133.a n = A359506 n

end A359506

/-! ## A359506.P6305487130053262243

`A076877(A006519(n+1))%A008619(3*n+1)+n`
-/

namespace A359506.P6305487130053262243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076877 (A006519 (n + 1)).toNat) (A008619 (3 * n + 1)) + (n : ℤ)

end

end A359506.P6305487130053262243

namespace A359506

/-- `A076877(A006519(n+1))%A008619(3*n+1)+n` -/
def P6305487130053262243.Spec : Prop :=
  ∀ n, P6305487130053262243.a n = A359506 n

end A359506

/-!
# A359507: a(n) is the least integer k such that there exists a strictly increasing integer sequence n = b_1 < b_2 < ... < b_t = n + k with the property that b_1 XOR b_2 XOR ... XOR b_t = 0.

The programs for A359507, the canonical program `A359507.P5582106978947893081` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359507 has offset 0).

The definition of A359507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359506, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359507.P5582106978947893081

`A359506(n)-n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A359507

/-- `A359506(n)-n` -/
def P5582106978947893081.Spec : Prop :=
  ∀ n, P5582106978947893081.a n = A359507 n

theorem P5582106978947893081.correct : P5582106978947893081.Spec := by
  intro n
  simp only [A359507]

end A359507

/-! ## A359507.P1173460101074827370

`(xor(n, n+1)+2)%∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A359507.P1173460101074827370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor n (n + 1) + 2 : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)))

end

end A359507.P1173460101074827370

namespace A359507

/-- `(xor(n, n+1)+2)%∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P1173460101074827370.Spec : Prop :=
  ∀ n, P1173460101074827370.a n = A359507 n

theorem P1173460101074827370.correct : P1173460101074827370.Spec := by
  intro n
  simp only [A359507, Nat.add_sub_cancel, A359507.P1173460101074827370.f2, A359507.P1173460101074827370.f1, A359507.P1173460101074827370.a, A359507.P5582106978947893081.a, A359506, A359506.P15800780769918502959.f2, A359506.P15800780769918502959.f1, A359506.P15800780769918502959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359507

/-! ## A359507.P14410839169587516144

`(2*and(n+1, -(n+1))+1)%((n+1)*∏{p}[n+1, #-1/#])`
-/

namespace A359507.P14410839169587516144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ)))))

end

end A359507.P14410839169587516144

namespace A359507

/-- `(2*and(n+1, -(n+1))+1)%((n+1)*∏{p}[n+1, #-1/#])` -/
def P14410839169587516144.Spec : Prop :=
  ∀ n, P14410839169587516144.a n = A359507 n

end A359507

/-! ## A359507.P1455095775166655046

`(2*(1-and(n, n+1)+n)+1)%((n+1)*∏{p}[n+1, #-1/#])`
-/

namespace A359507.P1455095775166655046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ)))))

end

end A359507.P1455095775166655046

namespace A359507

/-- `(2*(1-and(n, n+1)+n)+1)%((n+1)*∏{p}[n+1, #-1/#])` -/
def P1455095775166655046.Spec : Prop :=
  ∀ n, P1455095775166655046.a n = A359507 n

end A359507

/-! ## A359507.P14939798343104572828

`(xor(n, n+1)+2)%A288934(n+1)`
-/

namespace A359507.P14939798343104572828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor n (n + 1) + 2 : ℤ) (A288934 (n + 1))

end

end A359507.P14939798343104572828

namespace A359507

/-- `(xor(n, n+1)+2)%A288934(n+1)` -/
def P14939798343104572828.Spec : Prop :=
  ∀ n, P14939798343104572828.a n = A359507 n

end A359507

/-! ## A359507.P8103907321165002759

`A000051(val(n+1, 2)+1)%∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A359507.P8103907321165002759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (SequenceMachineLib.valuation (n + 1) 2 + 1)) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)))

end

end A359507.P8103907321165002759

namespace A359507

/-- `A000051(val(n+1, 2)+1)%∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P8103907321165002759.Spec : Prop :=
  ∀ n, P8103907321165002759.a n = A359507 n

end A359507

/-! ## A359507.P6239403720141058175

`A005408(2^val(n+1, 2))%∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A359507.P6239403720141058175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (2 ^ SequenceMachineLib.valuation (n + 1) 2)) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)))

end

end A359507.P6239403720141058175

namespace A359507

/-- `A005408(2^val(n+1, 2))%∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P6239403720141058175.Spec : Prop :=
  ∀ n, P6239403720141058175.a n = A359507 n

end A359507

/-! ## A359507.P926995881131204820

`(A171977(n+1)+1)%(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-xor(n, -1))`
-/

namespace A359507.P926995881131204820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171977 (n + 1) + 1) (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ) - (Int.xor (n : ℤ) (-1) : ℚ)))

end

end A359507.P926995881131204820

namespace A359507

/-- `(A171977(n+1)+1)%(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-xor(n, -1))` -/
def P926995881131204820.Spec : Prop :=
  ∀ n, P926995881131204820.a n = A359507 n

end A359507

/-! ## A359507.P7154709093041474655

`A000051(val(n+1, 2)+1)%A001615(n+1)`
-/

namespace A359507.P7154709093041474655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (SequenceMachineLib.valuation (n + 1) 2 + 1)) (A001615 (n + 1))

end

end A359507.P7154709093041474655

namespace A359507

/-- `A000051(val(n+1, 2)+1)%A001615(n+1)` -/
def P7154709093041474655.Spec : Prop :=
  ∀ n, P7154709093041474655.a n = A359507 n

end A359507

/-! ## A359507.P7684706920381060859

`A065168(xor(n, n+1))%∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A359507.P7684706920381060859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065168 (Nat.xor n (n + 1))) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)))

end

end A359507.P7684706920381060859

namespace A359507

/-- `A065168(xor(n, n+1))%∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P7684706920381060859.Spec : Prop :=
  ∀ n, P7684706920381060859.a n = A359507 n

end A359507

/-!
# A359508: a(n) = log_2(A359507(n) - 1).

The programs for A359508, the canonical program `A359508.P10292830697766331420` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359508 has offset 1).

The definition of A359508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359508.P10292830697766331420

`abs(A378218(n+2))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A359508

/-- `abs(A378218(n+2))` -/
def P10292830697766331420.Spec : Prop :=
  ∀ n, P10292830697766331420.a n = A359508 (n + 1)

theorem P10292830697766331420.correct : P10292830697766331420.Spec := by
  intro n
  simp only [A359508, Nat.add_sub_cancel]

end A359508

/-! ## A359508.P8723438620512228456

`log2(A359507(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359508.P8723438620512228456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A359507 (n + 1) - 1 : ℝ)

end

end A359508.P8723438620512228456

namespace A359508

/-- `log2(A359507(n+1)-1)` -/
def P8723438620512228456.Spec : Prop :=
  ∀ n, P8723438620512228456.a n = (A359508 (n + 1) : ℝ)

end A359508

/-! ## A359508.P2452344923157305413

`A000523(A359507(n+1)-1)`
-/

namespace A359508.P2452344923157305413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A359507 (n + 1) - 1).toNat

end

end A359508.P2452344923157305413

namespace A359508

/-- `A000523(A359507(n+1)-1)` -/
def P2452344923157305413.Spec : Prop :=
  ∀ n, P2452344923157305413.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P12612901949629260847

`a(gcd(n, floor(n/2))-1)+1` with `a(0)=0`
-/

namespace A359508.P12612901949629260847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋ - 1) + 1

end

end A359508.P12612901949629260847

namespace A359508

/-- `a(gcd(n, floor(n/2))-1)+1` -/
def P12612901949629260847.Spec : Prop :=
  ∀ n, (P12612901949629260847.a n : ℤ) = A359508 (n + 1)

end A359508

/-! ## A359508.P2015540611729867832

`Δ[a(floor((n-1)/2))+n-1]` with `a(0)=0`
-/

namespace A359508.P2015540611729867832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359508.P2015540611729867832

namespace A359508

/-- `Δ[a(floor((n-1)/2))+n-1]` -/
def P2015540611729867832.Spec : Prop :=
  ∀ n, P2015540611729867832.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P9763091895036316674

`a(n-lcm(2, xor(n, -2))/2)+1` with `a(0)=0`
-/

namespace A359508.P9763091895036316674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2)).toNat + 1

end

end A359508.P9763091895036316674

namespace A359508

/-- `a(n-lcm(2, xor(n, -2))/2)+1` -/
def P9763091895036316674.Spec : Prop :=
  ∀ n, (P9763091895036316674.a n : ℤ) = A359508 (n + 1)

end A359508

/-! ## A359508.P14562631158468388578

`a(∑[char[or(2, n)]]-1)+1-n%2` with `a(0)=0, a(1)=1`
-/

namespace A359508.P14562631158468388578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1 - ((n % 2 : ℕ) : ℤ)

end

end A359508.P14562631158468388578

namespace A359508

/-- `a(∑[char[or(2, n)]]-1)+1-n%2` -/
def P14562631158468388578.Spec : Prop :=
  ∀ n, P14562631158468388578.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P16311513347911151945

`a(n-A029579(n))+1` with `a(0)=0`
-/

namespace A359508.P16311513347911151945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A029579 n).toNat + 1

end

end A359508.P16311513347911151945

namespace A359508

/-- `a(n-A029579(n))+1` -/
def P16311513347911151945.Spec : Prop :=
  ∀ n, (P16311513347911151945.a n : ℤ) = A359508 (n + 1)

end A359508

/-! ## A359508.P11444521816225519510

`a(n-(A029578(n)+1))+1` with `a(0)=0, a(1)=1`
-/

namespace A359508.P11444521816225519510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - (A029578 n + 1)).toNat + 1

end

end A359508.P11444521816225519510

namespace A359508

/-- `a(n-(A029578(n)+1))+1` -/
def P11444521816225519510.Spec : Prop :=
  ∀ n, (P11444521816225519510.a n : ℤ) = A359508 (n + 1)

end A359508

/-! ## A359508.P845292375154798

`Δ[a(n-A008619(n))-1+n]` with `a(0)=1`
-/

namespace A359508.P845292375154798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n : ℤ) - A008619 n).toNat - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359508.P845292375154798

namespace A359508

/-- `Δ[a(n-A008619(n))-1+n]` -/
def P845292375154798.Spec : Prop :=
  ∀ n, P845292375154798.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P5298131755712620243

`a(floor((n-1)/A078649(n^(n%2))))+1` with `a(0)=0`
-/

namespace A359508.P5298131755712620243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / (A078649 (n ^ (n % 2)) : ℚ)⌋.toNat + 1

end

end A359508.P5298131755712620243

namespace A359508

/-- `a(floor((n-1)/A078649(n^(n%2))))+1` -/
def P5298131755712620243.Spec : Prop :=
  ∀ n, (P5298131755712620243.a n : ℤ) = A359508 (n + 1)

end A359508

/-! ## A359508.P14483743162805772101

`A007814(A359507(n+1)-1)`
-/

namespace A359508.P14483743162805772101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A359507 (n + 1) - 1).toNat

end

end A359508.P14483743162805772101

namespace A359508

/-- `A007814(A359507(n+1)-1)` -/
def P14483743162805772101.Spec : Prop :=
  ∀ n, P14483743162805772101.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P2790965836749658116

`A091090(n+1)-A036987(n+1)`
-/

namespace A359508.P2790965836749658116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (n + 1) - A036987 (n + 1)

end

end A359508.P2790965836749658116

namespace A359508

/-- `A091090(n+1)-A036987(n+1)` -/
def P2790965836749658116.Spec : Prop :=
  ∀ n, P2790965836749658116.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P16193918264228841234

`A000523(A359506(n+1)-(n+2))`
-/

namespace A359508.P16193918264228841234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A359506 (n + 1) - (n + 2 : ℤ)).toNat

end

end A359508.P16193918264228841234

namespace A359508

/-- `A000523(A359506(n+1)-(n+2))` -/
def P16193918264228841234.Spec : Prop :=
  ∀ n, P16193918264228841234.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P15874903942977563550

`A006577(A359506(n+1)-(n+2))`
-/

namespace A359508.P15874903942977563550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A359506 (n + 1) - (n + 2 : ℤ)).toNat

end

end A359508.P15874903942977563550

namespace A359508

/-- `A006577(A359506(n+1)-(n+2))` -/
def P15874903942977563550.Spec : Prop :=
  ∀ n, P15874903942977563550.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P11852978704712094855

`A007814(A359506(n+1)-(n+2))`
-/

namespace A359508.P11852978704712094855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A359506 (n + 1) - (n + 2 : ℤ)).toNat

end

end A359508.P11852978704712094855

namespace A359508

/-- `A007814(A359506(n+1)-(n+2))` -/
def P11852978704712094855.Spec : Prop :=
  ∀ n, P11852978704712094855.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P3695059636664751380

`A378218(2*n+1)*A378218(n+2)`
-/

namespace A359508.P3695059636664751380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378218 (2 * n + 1) * A378218 (n + 2)

end

end A359508.P3695059636664751380

namespace A359508

/-- `A378218(2*n+1)*A378218(n+2)` -/
def P3695059636664751380.Spec : Prop :=
  ∀ n, P3695059636664751380.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P13904105216691210550

`A091090(n+1)-A000120(A135416(n+1))`
-/

namespace A359508.P13904105216691210550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (n + 1) - A000120 (A135416 (n + 1)).toNat

end

end A359508.P13904105216691210550

namespace A359508

/-- `A091090(n+1)-A000120(A135416(n+1))` -/
def P13904105216691210550.Spec : Prop :=
  ∀ n, P13904105216691210550.a n = A359508 (n + 1)

end A359508

/-! ## A359508.P7322204877743374431

`A091090(n+1)-A135416(n+1)/A135517(n+1)`
-/

namespace A359508.P7322204877743374431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091090 (n + 1) : ℚ) - (A135416 (n + 1) : ℚ) / (A135517 (n + 1) : ℚ)

end

end A359508.P7322204877743374431

namespace A359508

/-- `A091090(n+1)-A135416(n+1)/A135517(n+1)` -/
def P7322204877743374431.Spec : Prop :=
  ∀ n, P7322204877743374431.a n = (A359508 (n + 1) : ℚ)

end A359508

/-! ## A359508.P17629147538453415403

`a(A057979(n+1)-1)+1` with `a(0)=0`
-/

namespace A359508.P17629147538453415403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A057979 (n + 1) - 1).toNat + 1

end

end A359508.P17629147538453415403

namespace A359508

/-- `a(A057979(n+1)-1)+1` -/
def P17629147538453415403.Spec : Prop :=
  ∀ n, (P17629147538453415403.a n : ℤ) = A359508 (n + 1)

end A359508

/-!
# A359509: a(n) is the number of subsets {b_1, b_2, ..., b_t} of {n, n+1, ..., A359506(n)} containing n with the property that b_1 XOR b_2 XOR ... XOR b_t = 0.

The programs for A359509, there is no canonical definition to state claims against.
-/

/-! ## A359509.P6935456269922960190

`A004731(xor(n, A153152(n)))`
-/

namespace A359509.P6935456269922960190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (Int.xor (n : ℤ) (A153152 n)).toNat

end

end A359509.P6935456269922960190

/-! ## A359509.P15756382206869337442

`A060818(xor(n, A153152(n)))`
-/

namespace A359509.P15756382206869337442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (Int.xor (n : ℤ) (A153152 n)).toNat

end

end A359509.P15756382206869337442

/-! ## A359509.P16363021369409208589

`A203315(n%2*a(floor(n/2))+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A359509.P16363021369409208589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A203315 (((n % 2 : ℕ) : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat + 1).toNat

end

end A359509.P16363021369409208589

/-! ## A359509.P10426631307050438709

`A037075(gcd(n+1, 2*a(floor(n/2))))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A359509.P10426631307050438709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A037075 (Int.gcd (n + 1 : ℤ) (2 * a ⌊(n : ℚ) / 2⌋.toNat))

end

end A359509.P10426631307050438709

/-! ## A359509.P13840511680146636153

`A385318(A386410(A385729(A386436(A385662(n+1)))))`
-/

namespace A359509.P13840511680146636153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385318 (A386410 (A385729 (A386436 (A385662 (n + 1)).toNat).toNat).toNat).toNat

end

end A359509.P13840511680146636153

/-!
# A359511: Number of partitions of n into at most 2 positive Fibonacci numbers (with a single type of 1).

The programs for A359511, there is no canonical definition to state claims against.
-/

/-! ## A359511.P801292549565865999

`A319395(n)+A010056(n)`
-/

namespace A359511.P801292549565865999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + A010056 n

end

end A359511.P801292549565865999

/-! ## A359511.P18135345036394152627

`A319395(n)+char[A000045(n)]`
-/

namespace A359511.P18135345036394152627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P18135345036394152627

/-! ## A359511.P2050860358007600680

`A319395(n)+char[A103609(n)]`
-/

namespace A359511.P2050860358007600680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P2050860358007600680

/-! ## A359511.P18041785922454650330

`A319395(n)+char[A129982(n)]`
-/

namespace A359511.P18041785922454650330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P18041785922454650330

/-! ## A359511.P7961039211755358209

`A319395(n)+char[A212804(n)]`
-/

namespace A359511.P7961039211755358209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P7961039211755358209

/-! ## A359511.P16639760382364397547

`A319395(n)+char[abs(A236191(n))]`
-/

namespace A359511.P16639760382364397547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P16639760382364397547

/-! ## A359511.P6280851042150032758

`A319395(n)+char[A001611(n)-1]`
-/

namespace A359511.P6280851042150032758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P6280851042150032758

/-! ## A359511.P9091288100824732667

`A319395(n)+char[A157725(n)-2]`
-/

namespace A359511.P9091288100824732667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P9091288100824732667

/-! ## A359511.P1107749139126325332

`A319395(n)+char[A157726(n)-3]`
-/

namespace A359511.P1107749139126325332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359511.P1107749139126325332

/-!
# A359512: Number of partitions of n into at most 3 positive Fibonacci numbers (with a single type of 1).

The programs for A359512, there is no canonical definition to state claims against.
-/

/-! ## A359512.P4721385475044942218

`A359511(n)+A319396(n)`
-/

namespace A359512.P4721385475044942218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359511 n + A319396 n

end

end A359512.P4721385475044942218

/-! ## A359512.P4596576637588991600

`A359513(n)-A319397(n)`
-/

namespace A359512.P4596576637588991600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359513 n - A319397 n

end

end A359512.P4596576637588991600

/-! ## A359512.P13471941367790493419

`A319396(n)+A319395(n)+char[A129982(n)]`
-/

namespace A359512.P13471941367790493419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n + (A319395 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A359512.P13471941367790493419

/-! ## A359512.P2915027023946787845

`A359511(n)+A319394(A145018(n+1)-1)+A159075(n)`
-/

namespace A359512.P2915027023946787845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359511 n + (A319394 (A145018 (n + 1) - 1).toNat + A159075 n)

end

end A359512.P2915027023946787845

/-!
# A359513: Number of partitions of n into at most 4 positive Fibonacci numbers (with a single type of 1).

The programs for A359513, there is no canonical definition to state claims against.
-/

/-! ## A359513.P16762270029730591041

`A359512(n)+A319397(n)`
-/

namespace A359513.P16762270029730591041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359512 n + A319397 n

end

end A359513.P16762270029730591041

/-!
# A359514: Number of compositions (ordered partitions) of n into at most 2 positive Fibonacci numbers (with a single type of 1).

The programs for A359514, there is no canonical definition to state claims against.
-/

/-! ## A359514.P7802770301818698255

`A359537(n)+A319395(n)`
-/

namespace A359514.P7802770301818698255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359537 n + A319395 n

end

end A359514.P7802770301818698255

/-! ## A359514.P8146257021615270487

`A359538(ceil(n*ϕ²)+1)+A319395(n)`
-/

namespace A359514.P8146257021615270487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359538 (⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1).toNat + A319395 n

end

end A359514.P8146257021615270487

/-! ## A359514.P573950716874184544

`A319395(n)+A174296(A204503(2*n+1))-A007895(n)`
-/

namespace A359514.P573950716874184544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + (A174296 (A204503 (2 * n + 1)).toNat - A007895 n)

end

end A359514.P573950716874184544

/-! ## A359514.P15511191619433259131

`A319395(n)+A190427(A112835(n)+A091316(n+1))`
-/

namespace A359514.P15511191619433259131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + A190427 (A112835 n + A091316 (n + 1)).toNat

end

end A359514.P15511191619433259131

/-! ## A359514.P3094593484311596737

`xor(A332297(A332295(n)), A348040(n+1))`
-/

namespace A359514.P3094593484311596737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A332297 (A332295 n).toNat) (A348040 (n + 1))

end

end A359514.P3094593484311596737

/-!
# A359516: Number of compositions (ordered partitions) of n into at most 4 positive Fibonacci numbers (with a single type of 1).

The programs for A359516, there is no canonical definition to state claims against.
-/

/-! ## A359516.P140242026858219692

`∑[A326031(A271218(n))]`
-/

namespace A359516.P140242026858219692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (A271218 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359516.P140242026858219692

/-! ## A359516.P2789084308382879133

`∑[n-A010815(A347004(n))]`
-/

namespace A359516.P2789084308382879133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010815 (A347004 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359516.P2789084308382879133

/-! ## A359516.P13273425002052101099

`A340205(A235394(n+1)+1)`
-/

namespace A359516.P13273425002052101099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A235394 (n + 1) + 1).toNat

end

end A359516.P13273425002052101099

/-! ## A359516.P10161490428687651668

`∑[abs(A010815(A056330(n+1))-n)]`
-/

namespace A359516.P10161490428687651668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 (A056330 (n + 1)).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359516.P10161490428687651668

/-! ## A359516.P11174543147094238791

`∑[∑[A092673(A343718(2*n+3)+1)+1]]`
-/

namespace A359516.P11174543147094238791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A343718 (2 * n + 3) + 1).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359516.P11174543147094238791

/-!
# A359517: Inverse permutation (conjectured) of A359356.

The programs for A359517, there is no canonical definition to state claims against.
-/

/-! ## A359517.P8513766534929713866

`lt[A359356(n), 5]`
-/

namespace A359517.P8513766534929713866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359356 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359517.P8513766534929713866

/-!
# A359518: Integers k such that A110299(k) is prime.

The programs for A359518, there is no canonical definition to state claims against.
-/

/-! ## A359518.P7299941650206377530

`A346130(A085897(n))`
-/

namespace A359518.P7299941650206377530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A085897 n).toNat

end

end A359518.P7299941650206377530

/-!
# A359519: Number of free polyominoes of n cells with multiply-connected interiors.

The programs for A359519, there is no canonical definition to state claims against.
-/

/-! ## A359519.P13376498604493438159

`A000105(n+1)-A342537(n+1)`
-/

namespace A359519.P13376498604493438159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A342537 (n + 1)

end

end A359519.P13376498604493438159

/-! ## A359519.P4819152073570973955

`Δ[A173271(n)]-A342537(n+1)`
-/

namespace A359519.P4819152073570973955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A342537 (n + 1)

end

end A359519.P4819152073570973955

/-! ## A359519.P13358294643853153136

`A001419(n+1)-A359520(n+1)`
-/

namespace A359519.P13358294643853153136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001419 (n + 1) - A359520 (n + 1)

end

end A359519.P13358294643853153136

/-! ## A359519.P10048547722524800827

`A000105(A087156(n+1))%A342537(n+1)`
-/

namespace A359519.P10048547722524800827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000105 (A087156 (n + 1)).toNat) (A342537 (n + 1))

end

end A359519.P10048547722524800827

/-! ## A359519.P10031846520843822757

`A000105(A153679(n+1))%A342537(n+1)`
-/

namespace A359519.P10031846520843822757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000105 (A153679 (n + 1)).toNat) (A342537 (n + 1))

end

end A359519.P10031846520843822757

/-!
# A359520: Number of free holey polyominoes of n cells with simply-connected interiors.

The programs for A359520, there is no canonical definition to state claims against.
-/

/-! ## A359520.P11048199037252734948

`A342537(n+1)-A000104(n+1)`
-/

namespace A359520.P11048199037252734948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342537 (n + 1) - A000104 (n + 1)

end

end A359520.P11048199037252734948

/-! ## A359520.P7883829835954928856

`A001419(n+1)-A359519(n+1)`
-/

namespace A359520.P7883829835954928856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001419 (n + 1) - A359519 (n + 1)

end

end A359520.P7883829835954928856

/-! ## A359520.P14854374882648563539

`A342537(A357875(n+1))%A000104(n+1)`
-/

namespace A359520.P14854374882648563539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342537 (A357875 (n + 1)).toNat) (A000104 (n + 1))

end

end A359520.P14854374882648563539

/-! ## A359520.P10254046130671708214

`Δ[A173271(n)]-A000104(n+1)-A359519(n+1)`
-/

namespace A359520.P10254046130671708214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000104 (n + 1) - A359519 (n + 1)

end

end A359520.P10254046130671708214

/-!
# A359521: Number of free mature snake polyominoes of n cells, where mature means that the snake cannot grow in either direction.

The programs for A359521, there is no canonical definition to state claims against.
-/

/-! ## A359521.P192726765265193259

`(2^n+3^n)*A000122(7^n)`
-/

namespace A359521.P192726765265193259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 3 ^ n : ℤ) * A000122 (7 ^ n)

end

end A359521.P192726765265193259

/-!
# A359522: Number of free, holey, treelike polyominoes of n cells.

The programs for A359522, there is no canonical definition to state claims against.
-/

/-! ## A359522.P7079398977845777546

`A131482(n+1)-A350030(n+1)`
-/

namespace A359522.P7079398977845777546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131482 (n + 1) - A350030 (n + 1)

end

end A359522.P7079398977845777546

/-! ## A359522.P17403729939131581586

`A342243(∑[n+1])-A350030(n+1)`
-/

namespace A359522.P17403729939131581586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (∑ j ∈ Finset.range (n + 1), f1 j) - A350030 (n + 1)

end

end A359522.P17403729939131581586

/-! ## A359522.P6240870881095976038

`A342243(A025747(n))%A350030(n+1)`
-/

namespace A359522.P6240870881095976038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342243 (A025747 n).toNat) (A350030 (n + 1))

end

end A359522.P6240870881095976038

/-! ## A359522.P6992812067985222401

`A131482(A000027(n+1))%A350030(n+1)`
-/

namespace A359522.P6992812067985222401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131482 (A000027 (n + 1)).toNat) (A350030 (n + 1))

end

end A359522.P6992812067985222401

/-! ## A359522.P2537626021121031853

`A131482(n+1)-A308300(∑[A083479(n)]+1)`
-/

namespace A359522.P2537626021121031853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131482 (n + 1) - A308300 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A359522.P2537626021121031853

/-!
# A359523: Number of free polyiamonds of n cells with multiply-connected interiors.

The programs for A359523, there is no canonical definition to state claims against.
-/

/-! ## A359523.P5314642589640342278

`A070764(n+12)-A359524(n+12)`
-/

namespace A359523.P5314642589640342278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070764 (n + 12) - A359524 (n + 12)

end

end A359523.P5314642589640342278

/-!
# A359524: Number of free holey polyiamonds of n cells with simply-connected interiors.

The programs for A359524, there is no canonical definition to state claims against.
-/

/-! ## A359524.P17655947230838164045

`A248232(A155084(n))`
-/

namespace A359524.P17655947230838164045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248232 (A155084 n).toNat

end

end A359524.P17655947230838164045

/-!
# A359525: Number of well-connected free polyiamonds with n cells, where a polyiamond is defined as well-connected if, for all the triangles it contains, the removal of that single triangle would result in an intact polyiamond.

The programs for A359525, there is no canonical definition to state claims against.
-/

/-! ## A359525.P15200534268025963018

`A004525(A166861(n))%A048793(2*(n+1))`
-/

namespace A359525.P15200534268025963018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A166861 n).toNat) (A048793 (2 * (n + 1)))

end

end A359525.P15200534268025963018

/-! ## A359525.P10321198462713594262

`xor(A035263(n+2), A345197(A269303(n+1)))`
-/

namespace A359525.P10321198462713594262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035263 (n + 2)) (A345197 (A269303 (n + 1)).toNat)

end

end A359525.P10321198462713594262

/-!
# A359526: Number of unbiased (balanced) free polyiamonds with 2n cells.

The programs for A359526, there is no canonical definition to state claims against.
-/

/-! ## A359526.P17206085799112496962

`A369715(A067971(n))`
-/

namespace A359526.P17206085799112496962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A067971 n).toNat

end

end A359526.P17206085799112496962

/-!
# A359527: Nonnegative numbers k such that if 2^i and 2^j appear in the binary expansion of k, then 2^(i OR j) also appears in the binary expansion of k (where OR denotes the bitwise OR operator).

The programs for A359527, there is no canonical definition to state claims against.
-/

/-! ## A359527.P2741698407939922332

`record[A059905(A326875(n+1))]`
-/

namespace A359527.P2741698407939922332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A326875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359527.P2741698407939922332

/-! ## A359527.P12861841439343705407

`lt[n, A070502(A070549(n+5))]`
-/

namespace A359527.P12861841439343705407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070502 (A070549 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359527.P12861841439343705407

/-! ## A359527.P2173220379619552412

`lt[∑[A262626(n+1)], A089851(2*(n+1))]`
-/

namespace A359527.P2173220379619552412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A359527.P2173220379619552412

/-! ## A359527.P17895529311306722153

`lt[A102084(n+1), A273947(A070939(n))]`
-/

namespace A359527.P17895529311306722153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273947 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359527.P17895529311306722153

/-! ## A359527.P2010346697764381223

`lt[A109827(A002264(n)), A048647(2*n+1)]`
-/

namespace A359527.P2010346697764381223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 (A002264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359527.P2010346697764381223

/-!
# A359528: Nonnegative numbers k such that if 2^i and 2^j appear in the binary expansion of k, then 2^(i AND j) also appears in the binary expansion of k (where AND denotes the bitwise AND operator).

The programs for A359528, there is no canonical definition to state claims against.
-/

/-! ## A359528.P14114192564647414221

`record[A059905(A326880(n+1))]`
-/

namespace A359528.P14114192564647414221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A326880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359528.P14114192564647414221

/-! ## A359528.P7372511339977124277

`record[A334476(A326905(n+1))]`
-/

namespace A359528.P7372511339977124277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334476 (A326905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359528.P7372511339977124277

/-! ## A359528.P16220953101874766531

`lt[A070289(A326054(3*n+2)), A129024(n+1)]`
-/

namespace A359528.P16220953101874766531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070289 (A326054 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359528.P16220953101874766531

/-! ## A359528.P9624930816917965072

`lt[A053471(n+4), A058277(A132411(3*n+1))]`
-/

namespace A359528.P9624930816917965072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053471 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (A132411 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359528.P9624930816917965072

/-! ## A359528.P894930115938363606

`eq[A054439(n), A186746(n)]`
-/

namespace A359528.P894930115938363606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359528.P894930115938363606

/-!
# A359530: Multiplicative with a(p^e) = (p + 4)^e.

The programs for A359530, there is no canonical definition to state claims against.
-/

/-! ## A359530.P4180481229782400070

`∏{e}[A181821(n+1), A175221(#)]`
-/

namespace A359530.P4180481229782400070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A175221 (Nat.factorization (f1 n).natAbs p)

end

end A359530.P4180481229782400070

/-! ## A359530.P5558160142551497707

`∏{e}[A259939(n), #+5]`
-/

namespace A359530.P5558160142551497707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 5)

end

end A359530.P5558160142551497707

/-! ## A359530.P18187936948586689610

`∏{e}[A037019(n+1), #+5]`
-/

namespace A359530.P18187936948586689610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 5)

end

end A359530.P18187936948586689610

/-! ## A359530.P5184465428811322876

`∏{e}[A018782(n+1), #+5]`
-/

namespace A359530.P5184465428811322876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 5)

end

end A359530.P5184465428811322876

/-! ## A359530.P1952238118521684317

`∏{e}[A340388(A043320(n+1)), #+5]`
-/

namespace A359530.P1952238118521684317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (A043320 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 5)

end

end A359530.P1952238118521684317

/-!
# A359531: a(1) = 1, a(2) = -9; a(n) = -n^3 * Sum_{d|n, d < n} a(d) / d^3.

The programs for A359531, the canonical program `A359531.P10907581095316182680` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359531 has offset 1).

The definition of A359531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359531.P10486453605461823404

`∑{d}[n+1, A063453(#)*A092673((n+1)/#)]`
-/

namespace A359531.P10486453605461823404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063453 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359531.P10486453605461823404

namespace A359531

/-- `∑{d}[n+1, A063453(#)*A092673((n+1)/#)]` -/
def P10486453605461823404.Spec : Prop :=
  ∀ n, P10486453605461823404.a n = A359531 (n + 1)

end A359531

/-! ## A359531.P10907581095316182680

`∑{d}[n+1, A053825(#)*A059841((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359531

/-- `∑{d}[n+1, A053825(#)*A059841((n+1)/#-1)]` -/
def P10907581095316182680.Spec : Prop :=
  ∀ n, P10907581095316182680.a n = A359531 (n + 1)

theorem P10907581095316182680.correct : P10907581095316182680.Spec := by
  intro n
  simp only [A359531, Nat.add_sub_cancel]

end A359531

/-! ## A359531.P13637602628677077919

`Δ[A139250(n)%2*A360658(A028310(n))]`
-/

namespace A359531.P13637602628677077919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139250 n) 2 * A360658 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359531.P13637602628677077919

namespace A359531

/-- `Δ[A139250(n)%2*A360658(A028310(n))]` -/
def P13637602628677077919.Spec : Prop :=
  ∀ n, P13637602628677077919.a n = A359531 (n + 1)

end A359531

/-! ## A359531.P11609291316503027905

`A360658(n+1)+A000079(n)%2-A360658(A028310(n))`
-/

namespace A359531.P11609291316503027905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360658 (n + 1) + (Int.tmod (A000079 n) 2 - A360658 (A028310 n).toNat)

end

end A359531.P11609291316503027905

namespace A359531

/-- `A360658(n+1)+A000079(n)%2-A360658(A028310(n))` -/
def P11609291316503027905.Spec : Prop :=
  ∀ n, P11609291316503027905.a n = A359531 (n + 1)

end A359531

/-! ## A359531.P13634840224361142424

`A360658(n+1)+A001787(2*n+1)%2-A360658(A028310(n))`
-/

namespace A359531.P13634840224361142424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360658 (n + 1) + (Int.tmod (A001787 (2 * n + 1)) 2 - A360658 (A028310 n).toNat)

end

end A359531.P13634840224361142424

namespace A359531

/-- `A360658(n+1)+A001787(2*n+1)%2-A360658(A028310(n))` -/
def P13634840224361142424.Spec : Prop :=
  ∀ n, P13634840224361142424.a n = A359531 (n + 1)

end A359531

/-! ## A359531.P17722272912223402537

`A360658(n+1)+A011782(3*n+1)%2-A360658(A028310(n))`
-/

namespace A359531.P17722272912223402537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360658 (n + 1) + (Int.tmod (A011782 (3 * n + 1)) 2 - A360658 (A028310 n).toNat)

end

end A359531.P17722272912223402537

namespace A359531

/-- `A360658(n+1)+A011782(3*n+1)%2-A360658(A028310(n))` -/
def P17722272912223402537.Spec : Prop :=
  ∀ n, P17722272912223402537.a n = A359531 (n + 1)

end A359531

/-!
# A359536: a(n) is the size of the largest subset of {0,1,...,n} such that the sum of two (not necessarily distinct) elements is never a power of 2.

The programs for A359536, the canonical program `A359536.P8223662673911763191` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359536 has offset 0).

The definition of A359536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359536.P9635345816220420311

`∑[char[or(n, abs(xor(n, -n)))]]`
-/

namespace A359536.P9635345816220420311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) |Int.xor (n : ℤ) (-(n : ℤ))|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P9635345816220420311

namespace A359536

/-- `∑[char[or(n, abs(xor(n, -n)))]]` -/
def P9635345816220420311.Spec : Prop :=
  ∀ n, (P9635345816220420311.a n : ℤ) = A359536 n

end A359536

/-! ## A359536.P8459537612993594606

`∑[char[or(n, n-1)+n+1]]`
-/

namespace A359536.P8459537612993594606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P8459537612993594606

namespace A359536

/-- `∑[char[or(n, n-1)+n+1]]` -/
def P8459537612993594606.Spec : Prop :=
  ∀ n, (P8459537612993594606.a n : ℤ) = A359536 n

end A359536

/-! ## A359536.P10209200151932798493

`∑[char[comp[and(n, n-1)+n]]]+1`
-/

namespace A359536.P10209200151932798493
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359536.P10209200151932798493

namespace A359536

/-- `∑[char[comp[and(n, n-1)+n]]]+1` -/
def P10209200151932798493.Spec : Prop :=
  ∀ n, (P10209200151932798493.a n : ℤ) = A359536 n

end A359536

/-! ## A359536.P59288554551698875

`2-∑[char[and(n, n-1)+n]]+n`
-/

namespace A359536.P59288554551698875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A359536.P59288554551698875

namespace A359536

/-- `2-∑[char[and(n, n-1)+n]]+n` -/
def P59288554551698875.Spec : Prop :=
  ∀ n, P59288554551698875.a n = A359536 n

end A359536

/-! ## A359536.P8223662673911763191

`∑[A089013(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359536

/-- `∑[A089013(n)]` -/
def P8223662673911763191.Spec : Prop :=
  ∀ n, P8223662673911763191.a n = A359536 n

theorem P8223662673911763191.correct : P8223662673911763191.Spec := by
  intro n
  simp only [A359536]

end A359536

/-! ## A359536.P1649464702414240291

`A255070(n)+1`
-/

namespace A359536.P1649464702414240291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 n + 1

end

end A359536.P1649464702414240291

namespace A359536

/-- `A255070(n)+1` -/
def P1649464702414240291.Spec : Prop :=
  ∀ n, P1649464702414240291.a n = A359536 n

end A359536

/-! ## A359536.P7793459169018636620

`∑[char[A322015(n)]]`
-/

namespace A359536.P7793459169018636620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P7793459169018636620

namespace A359536

/-- `∑[char[A322015(n)]]` -/
def P7793459169018636620.Spec : Prop :=
  ∀ n, (P7793459169018636620.a n : ℤ) = A359536 n

end A359536

/-! ## A359536.P3494437136731523709

`∑[A038189(n)]+1`
-/

namespace A359536.P3494437136731523709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359536.P3494437136731523709

namespace A359536

/-- `∑[A038189(n)]+1` -/
def P3494437136731523709.Spec : Prop :=
  ∀ n, P3494437136731523709.a n = A359536 n

end A359536

/-! ## A359536.P2381684158319279676

`∑[A090678(4*n)]`
-/

namespace A359536.P2381684158319279676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P2381684158319279676

namespace A359536

/-- `∑[A090678(4*n)]` -/
def P2381684158319279676.Spec : Prop :=
  ∀ n, P2381684158319279676.a n = A359536 n

end A359536

/-! ## A359536.P5429078178115081472

`∑[A110037(4*n)]`
-/

namespace A359536.P5429078178115081472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110037 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P5429078178115081472

namespace A359536

/-- `∑[A110037(4*n)]` -/
def P5429078178115081472.Spec : Prop :=
  ∀ n, P5429078178115081472.a n = A359536 n

end A359536

/-! ## A359536.P11561684645835763856

`A236840(n)/2+1`
-/

namespace A359536.P11561684645835763856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236840 n : ℚ) / 2 + 1

end

end A359536.P11561684645835763856

namespace A359536

/-- `A236840(n)/2+1` -/
def P11561684645835763856.Spec : Prop :=
  ∀ n, P11561684645835763856.a n = (A359536 n : ℚ)

end A359536

/-! ## A359536.P13889917786843332086

`∑[1-char[A339597(n)]]`
-/

namespace A359536.P13889917786843332086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P13889917786843332086

namespace A359536

/-- `∑[1-char[A339597(n)]]` -/
def P13889917786843332086.Spec : Prop :=
  ∀ n, P13889917786843332086.a n = A359536 n

end A359536

/-! ## A359536.P5449162523166960010

`∑[1-A082410(n+1)]`
-/

namespace A359536.P5449162523166960010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P5449162523166960010

namespace A359536

/-- `∑[1-A082410(n+1)]` -/
def P5449162523166960010.Spec : Prop :=
  ∀ n, P5449162523166960010.a n = A359536 n

end A359536

/-! ## A359536.P10456892771657500119

`∑[A301850(2*n)]+1`
-/

namespace A359536.P10456892771657500119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301850 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359536.P10456892771657500119

namespace A359536

/-- `∑[A301850(2*n)]+1` -/
def P10456892771657500119.Spec : Prop :=
  ∀ n, P10456892771657500119.a n = A359536 n

end A359536

/-! ## A359536.P14040721041814340697

`2-A088023(n+1)+n`
-/

namespace A359536.P14040721041814340697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088023 (n + 1) + (n : ℤ)

end

end A359536.P14040721041814340697

namespace A359536

/-- `2-A088023(n+1)+n` -/
def P14040721041814340697.Spec : Prop :=
  ∀ n, P14040721041814340697.a n = A359536 n

end A359536

/-! ## A359536.P7424230735732756469

`∑[char[A091067(n+1)]]+1`
-/

namespace A359536.P7424230735732756469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359536.P7424230735732756469

namespace A359536

/-- `∑[char[A091067(n+1)]]+1` -/
def P7424230735732756469.Spec : Prop :=
  ∀ n, (P7424230735732756469.a n : ℤ) = A359536 n

end A359536

/-! ## A359536.P3871545423657337243

`∑[char[A269363(n+1)]]+1`
-/

namespace A359536.P3871545423657337243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359536.P3871545423657337243

namespace A359536

/-- `∑[char[A269363(n+1)]]+1` -/
def P3871545423657337243.Spec : Prop :=
  ∀ n, (P3871545423657337243.a n : ℤ) = A359536 n

end A359536

/-! ## A359536.P1792204915006717579

`∑[1-A073089(2*n+1)]`
-/

namespace A359536.P1792204915006717579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073089 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P1792204915006717579

namespace A359536

/-- `∑[1-A073089(2*n+1)]` -/
def P1792204915006717579.Spec : Prop :=
  ∀ n, P1792204915006717579.a n = A359536 n

end A359536

/-! ## A359536.P17539406281714783221

`A008619(A236840(n))`
-/

namespace A359536.P17539406281714783221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A236840 n).toNat

end

end A359536.P17539406281714783221

namespace A359536

/-- `A008619(A236840(n))` -/
def P17539406281714783221.Spec : Prop :=
  ∀ n, P17539406281714783221.a n = A359536 n

end A359536

/-! ## A359536.P9686334033728067034

`A008619(n)-A033264(n)`
-/

namespace A359536.P9686334033728067034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A033264 n

end

end A359536.P9686334033728067034

namespace A359536

/-- `A008619(n)-A033264(n)` -/
def P9686334033728067034.Spec : Prop :=
  ∀ n, P9686334033728067034.a n = A359536 n

end A359536

/-!
# A359537: Number of partitions of n into at most 2 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A359537, there is no canonical definition to state claims against.
-/

/-! ## A359537.P8648149223810816462

`floor((A218396(n)+1)/2)%3`
-/

namespace A359537.P8648149223810816462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A218396 n + 1 : ℚ) / 2⌋ 3

end

end A359537.P8648149223810816462

/-! ## A359537.P8948076961357480690

`A359514(n)-A319395(n)`
-/

namespace A359537.P8948076961357480690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 n - A319395 n

end

end A359537.P8948076961357480690

/-! ## A359537.P4142006867668131862

`C(A046698(n), A007895(n))`
-/

namespace A359537.P4142006867668131862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046698 n).toNat (A007895 n).toNat

end

end A359537.P4142006867668131862

/-! ## A359537.P13814706404960111340

`ceil(A359514(n)/A342297(n+1))`
-/

namespace A359537.P13814706404960111340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359514 n : ℚ) / (A342297 (n + 1) : ℚ)⌉

end

end A359537.P13814706404960111340

/-! ## A359537.P9140762294917120988

`A359511(n)-char[A006355(n+2)]`
-/

namespace A359537.P9140762294917120988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359511 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359537.P9140762294917120988

/-! ## A359537.P11023183593896639156

`A007895(C(n+2-A007895(n), n))`
-/

namespace A359537.P11023183593896639156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.choose ((n + 2 : ℤ) - A007895 n).toNat n)

end

end A359537.P11023183593896639156

/-! ## A359537.P7398706109302622430

`C(A046698(n), A000120(A003714(n)))`
-/

namespace A359537.P7398706109302622430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046698 n).toNat (A000120 (A003714 n).toNat).toNat

end

end A359537.P7398706109302622430

/-! ## A359537.P15455633377520527863

`C(A087436(A078972(n+3)), A007895(n))`
-/

namespace A359537.P15455633377520527863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087436 (A078972 (n + 3)).toNat).toNat (A007895 n).toNat

end

end A359537.P15455633377520527863

/-!
# A359538: Number of partitions of n into at most 3 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A359538, there is no canonical definition to state claims against.
-/

/-! ## A359538.P17886354535446855087

`A359539(A007066(n+1))`
-/

namespace A359538.P17886354535446855087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359539 (A007066 (n + 1)).toNat

end

end A359538.P17886354535446855087

/-! ## A359538.P5369397908282354256

`A359539(A026352(n)+1)`
-/

namespace A359538.P5369397908282354256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359539 (A026352 n + 1).toNat

end

end A359538.P5369397908282354256

/-! ## A359538.P2462918148573931309

`A359539(A026356(n+1))`
-/

namespace A359538.P2462918148573931309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359539 (A026356 (n + 1)).toNat

end

end A359538.P2462918148573931309

/-! ## A359538.P14083675704668147321

`A359539(A184583(n+1))`
-/

namespace A359538.P14083675704668147321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359539 (A184583 (n + 1)).toNat

end

end A359538.P14083675704668147321

/-! ## A359538.P10999709153401832443

`A359539(A184735(n+1))`
-/

namespace A359538.P10999709153401832443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359539 (A184735 (n + 1)).toNat

end

end A359538.P10999709153401832443

/-!
# A359539: Number of partitions of n into at most 4 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A359539, there is no canonical definition to state claims against.
-/

/-! ## A359539.P218475153204115849

`A000119(n)-A187946(A267836(n+1))`
-/

namespace A359539.P218475153204115849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - A187946 (A267836 (n + 1)).toNat

end

end A359539.P218475153204115849

/-! ## A359539.P14965843130624825519

`A000119(n)-A010057(A117384(3*n+4))`
-/

namespace A359539.P14965843130624825519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - A010057 (A117384 (3 * n + 4)).toNat

end

end A359539.P14965843130624825519

/-! ## A359539.P18163841640610013180

`A000119(n)-A135481(A003586(3*n+5))`
-/

namespace A359539.P18163841640610013180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - A135481 (A003586 (3 * n + 5)).toNat

end

end A359539.P18163841640610013180

/-! ## A359539.P16300647119446877898

`A003263(A190511(n+1))-A025469(A353686(3*n+2))`
-/

namespace A359539.P16300647119446877898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 (A190511 (n + 1)).toNat - A025469 (A353686 (3 * n + 2)).toNat

end

end A359539.P16300647119446877898

/-! ## A359539.P18321994291411258598

`A000119(n)-A101637(A047969(3*(n+1)))`
-/

namespace A359539.P18321994291411258598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n - A101637 (A047969 (3 * (n + 1))).toNat

end

end A359539.P18321994291411258598

/-!
# A359541: Inverse Möbius transform of A328308, which is the characteristic function of numbers that eventually reach zero when iterated with the arithmetic derivative.

The programs for A359541, there is no canonical definition to state claims against.
-/

/-! ## A359541.P12033598029708824439

`∑{d}[n+1, A328308(#)]`
-/

namespace A359541.P12033598029708824439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328308 d

end

end A359541.P12033598029708824439

/-! ## A359541.P11913222286891569693

`A000005(n+1)-A359542(n+1)`
-/

namespace A359541.P11913222286891569693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A359542 (n + 1)

end

end A359541.P11913222286891569693

/-! ## A359541.P13222623552561595122

`∑{d}[n+1, A168181(A351079(#))]`
-/

namespace A359541.P13222623552561595122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168181 (A351079 d).toNat

end

end A359541.P13222623552561595122

/-! ## A359541.P2717931775069062594

`Δ[A006218(n)]-A359542(n+1)`
-/

namespace A359541.P2717931775069062594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A359542 (n + 1)

end

end A359541.P2717931775069062594

/-! ## A359541.P7965119680871644723

`Δ[A054519(n)]-A359542(n+1)`
-/

namespace A359541.P7965119680871644723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A359542 (n + 1)

end

end A359541.P7965119680871644723

/-! ## A359541.P12283549601835164510

`A323307(A000040(n+1))-A359542(n+1)`
-/

namespace A359541.P12283549601835164510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323307 (A000040 (n + 1)).toNat - A359542 (n + 1)

end

end A359541.P12283549601835164510

/-!
# A359542: Inverse Möbius transform of A341999, which is the characteristic function of numbers that will never reach zero when iterated with the arithmetic derivative.

The programs for A359542, there is no canonical definition to state claims against.
-/

/-! ## A359542.P14560454463432309869

`∑{d}[n+1, A341999(#)]`
-/

namespace A359542.P14560454463432309869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341999 d

end

end A359542.P14560454463432309869

/-! ## A359542.P7498339434727066603

`A000005(n+1)-A359541(n+1)`
-/

namespace A359542.P7498339434727066603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A359541 (n + 1)

end

end A359542.P7498339434727066603

/-! ## A359542.P16152409533585665401

`∑{d}[n+1, (A328308(#)-1)²]`
-/

namespace A359542.P16152409533585665401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A328308 d - 1) ^ 2

end

end A359542.P16152409533585665401

/-! ## A359542.P8579696740926729803

`Δ[A006218(n)]-A359541(n+1)`
-/

namespace A359542.P8579696740926729803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A359541 (n + 1)

end

end A359542.P8579696740926729803

/-! ## A359542.P2538382798649688968

`A129492(A019278(n+1))%A001055(n+1)`
-/

namespace A359542.P2538382798649688968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129492 (A019278 (n + 1)).toNat) (A001055 (n + 1))

end

end A359542.P2538382798649688968

/-!
# A359543: a(n) = 1 if A359542(n) = 0, otherwise a(n) = 0.

The programs for A359543, there is no canonical definition to state claims against.
-/

/-! ## A359543.P6837021384801253905

`∏{d}[n+1, A328308(#)]`
-/

namespace A359543.P6837021384801253905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A328308 d

end

end A359543.P6837021384801253905

/-! ## A359543.P10988923705669749210

`char[lt[A359542(n+1), 1]]`
-/

namespace A359543.P10988923705669749210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359542 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359543.P10988923705669749210

/-! ## A359543.P17556548923492146889

`A000007(A359542(n+1))`
-/

namespace A359543.P17556548923492146889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A359542 (n + 1)).toNat

end

end A359543.P17556548923492146889

/-! ## A359543.P16808832276608755664

`A328308((2*A359542(n+1))²)`
-/

namespace A359543.P16808832276608755664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 ((2 * A359542 (n + 1)) ^ 2).toNat

end

end A359543.P16808832276608755664

/-! ## A359543.P4152415667232317223

`A049084(n+1)^A359542(n+1)`
-/

namespace A359543.P4152415667232317223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049084 (n + 1) : ℚ) ^ (A359542 (n + 1) : ℤ)

end

end A359543.P4152415667232317223

/-! ## A359543.P9160671476022585896

`C(A359541(n+1), A000005(n+1))`
-/

namespace A359543.P9160671476022585896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A359541 (n + 1)).toNat (A000005 (n + 1)).toNat

end

end A359543.P9160671476022585896

/-! ## A359543.P8099719059482674915

`A130713(∑{d}[n+1, A341999(#)]+2)`
-/

namespace A359543.P8099719059482674915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (∑ d ∈ Nat.divisors (f1 n), A341999 d + 2).toNat

end

end A359543.P8099719059482674915

/-! ## A359543.P4036748330949109940

`floor(1/A005117(A359542(n+1)+1))`
-/

namespace A359543.P4036748330949109940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A005117 (A359542 (n + 1) + 1).toNat : ℚ)⌋

end

end A359543.P4036748330949109940

/-! ## A359543.P11853209639756417763

`A130713(A000005(n+1)-A359541(n+1)+2)`
-/

namespace A359543.P11853209639756417763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A000005 (n + 1) - A359541 (n + 1) + 2).toNat

end

end A359543.P11853209639756417763

/-! ## A359543.P5161865472524122552

`A359542(A359505(n+1))^A359542(n+1)`
-/

namespace A359543.P5161865472524122552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359542 (A359505 (n + 1)).toNat : ℚ) ^ (A359542 (n + 1) : ℤ)

end

end A359543.P5161865472524122552

/-! ## A359543.P3747904267547870475

`A359542(A359504(n+1))^A359542(n+1)`
-/

namespace A359543.P3747904267547870475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359542 (A359504 (n + 1)).toNat : ℚ) ^ (A359542 (n + 1) : ℤ)

end

end A359543.P3747904267547870475

/-! ## A359543.P977567794235053496

`(A131136(n)^A359542(n+1))%2`
-/

namespace A359543.P977567794235053496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A131136 n : ℚ) ^ (A359542 (n + 1) : ℤ))) 2

end

end A359543.P977567794235053496

/-! ## A359543.P17562910182478536529

`A359578(A359563(n+4))^A359542(n+1)`
-/

namespace A359543.P17562910182478536529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359578 (A359563 (n + 4)).toNat : ℚ) ^ (A359542 (n + 1) : ℤ)

end

end A359543.P17562910182478536529

/-! ## A359543.P1436260318046045274

`A359579(A359557(3*(n+1)))^A359542(n+1)`
-/

namespace A359543.P1436260318046045274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359579 (A359557 (3 * (n + 1))).toNat : ℚ) ^ (A359542 (n + 1) : ℤ)

end

end A359543.P1436260318046045274

/-! ## A359543.P14778934052636015511

`A359548(4^A359542(n+1))`
-/

namespace A359543.P14778934052636015511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359548 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A359542 (n + 1) : ℤ))).toNat

end

end A359543.P14778934052636015511

/-! ## A359543.P12304516365698179614

`A359549(4^A359542(n+1))`
-/

namespace A359543.P12304516365698179614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359549 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A359542 (n + 1) : ℤ))).toNat

end

end A359543.P12304516365698179614

/-!
# A359544: Numbers k such that all their divisors (including k itself) are in A099308, i.e., reach eventually zero when iterated with the arithmetic derivative.

The programs for A359544, there is no canonical definition to state claims against.
-/

/-! ## A359544.P16247088117568384790

`eq[0, A359542(n+1)]+1`
-/

namespace A359544.P16247088117568384790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359544.P16247088117568384790

/-! ## A359544.P11385263449975418487

`lt[0, A359543(n+1)]+1`
-/

namespace A359544.P11385263449975418487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359544.P11385263449975418487

/-! ## A359544.P13469826248265890692

`filter[A108922(n), A359543(#)]`
-/

namespace A359544.P13469826248265890692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P13469826248265890692

/-! ## A359544.P7922063845305199142

`eq[0, A359542(A263313(n)+1)]`
-/

namespace A359544.P7922063845305199142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359542 (A263313 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359544.P7922063845305199142

/-! ## A359544.P202841018836621327

`filter[A004709(n+1), A359543(#)]`
-/

namespace A359544.P202841018836621327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P202841018836621327

/-! ## A359544.P5398615092493590930

`filter[A026185(n+1), A359543(#)]`
-/

namespace A359544.P5398615092493590930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P5398615092493590930

/-! ## A359544.P1108966685664160557

`filter[A037144(n+1), A359543(#)]`
-/

namespace A359544.P1108966685664160557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P1108966685664160557

/-! ## A359544.P2234011523345509604

`filter[A038459(n+1), A359543(#)]`
-/

namespace A359544.P2234011523345509604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P2234011523345509604

/-! ## A359544.P9588873805697552486

`filter[A042968(n+1), A359543(#)]`
-/

namespace A359544.P9588873805697552486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P9588873805697552486

/-! ## A359544.P1672487861794406575

`filter[A046100(n+1), A359543(#)]`
-/

namespace A359544.P1672487861794406575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359543 (f1 j).toNat = 1) n)

end

end A359544.P1672487861794406575

/-!
# A359545: Numbers that eventually reach zero when iterated with the arithmetic derivative (i.e., are in A099308), but some of their proper divisors will never reach it.

The programs for A359545, there is no canonical definition to state claims against.
-/

/-! ## A359545.P9007953069608308953

`∩[A223727(n+1), A335288(n+1)]`
-/

namespace A359545.P9007953069608308953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359545.P9007953069608308953

/-!
# A359546: a(n) = 1 if there is no factor of the form p^p in n, but for some k-th arithmetic derivative (k >= 1) of n such a factor exists; otherwise 0.

The programs for A359546, there is no canonical definition to state claims against.
-/

/-! ## A359546.P5849696977633773944

`A341999(n+1)-A342023(n+1)`
-/

namespace A359546.P5849696977633773944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (n + 1) - A342023 (n + 1)

end

end A359546.P5849696977633773944

/-! ## A359546.P3109847655677140790

`A359550(n+1)*A341999(n+1)`
-/

namespace A359546.P3109847655677140790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) * A341999 (n + 1)

end

end A359546.P3109847655677140790

/-! ## A359546.P17491955386348328523

`char[A359547(n+1)-1]`
-/

namespace A359546.P17491955386348328523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359547 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359546.P17491955386348328523

/-! ## A359546.P4945753732243469165

`A341999(C(A327938(n+1), n))`
-/

namespace A359546.P4945753732243469165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (Nat.choose (A327938 (n + 1)).toNat n)

end

end A359546.P4945753732243469165

/-! ## A359546.P1220844292100505588

`A359550(n+1)-A328308(n+1)`
-/

namespace A359546.P1220844292100505588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) - A328308 (n + 1)

end

end A359546.P1220844292100505588

/-! ## A359546.P13822054903618623808

`A359550((n+1)*A341999(n+1))`
-/

namespace A359546.P13822054903618623808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A341999 (n + 1)).toNat

end

end A359546.P13822054903618623808

/-! ## A359546.P15843495320414439253

`A008966(n+1)+A371084(n+1)-A328308(n+1)`
-/

namespace A359546.P15843495320414439253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + (A371084 (n + 1) - A328308 (n + 1))

end

end A359546.P15843495320414439253

/-!
# A359547: Numbers such that they are not divisible by p^p for any prime p, but for some k-th arithmetic derivative (k >= 1) of n such a factor exists.

The programs for A359547, there is no canonical definition to state claims against.
-/

/-! ## A359547.P8603415889686486213

`lt[A256750(n), 0]`
-/

namespace A359547.P8603415889686486213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359547.P8603415889686486213

/-! ## A359547.P4247591156233606327

`eq[1, A359546(n+1)]+1`
-/

namespace A359547.P4247591156233606327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359547.P4247591156233606327

/-! ## A359547.P5978735823370615319

`filter[A344180(n), A359546(#)]`
-/

namespace A359547.P5978735823370615319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P5978735823370615319

/-! ## A359547.P14718889622625373967

`filter[A305980(n+1), A359546(#)]`
-/

namespace A359547.P14718889622625373967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P14718889622625373967

/-! ## A359547.P1131897890858874427

`filter[A002808(n+1), A359546(#)]`
-/

namespace A359547.P1131897890858874427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P1131897890858874427

/-! ## A359547.P14840738036396016653

`filter[A018252(n+1), A359546(#)]`
-/

namespace A359547.P14840738036396016653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P14840738036396016653

/-! ## A359547.P4597083837211057006

`filter[A099309(n+1), A359546(#)]`
-/

namespace A359547.P4597083837211057006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P4597083837211057006

/-! ## A359547.P10011852693690148877

`filter[A099309(n+1), A359550(#)]`
-/

namespace A359547.P10011852693690148877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A359547.P10011852693690148877

/-! ## A359547.P18237674026679642284

`filter[A048103(n+1), A341999(#)]`
-/

namespace A359547.P18237674026679642284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A359547.P18237674026679642284

/-! ## A359547.P3665919467642553901

`filter[A048103(n+1), A359546(#)]`
-/

namespace A359547.P3665919467642553901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P3665919467642553901

/-! ## A359547.P13399387618542539226

`∩[A048103(n+1), A099309(n+1)]`
-/

namespace A359547.P13399387618542539226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359547.P13399387618542539226

/-! ## A359547.P12924599955938622409

`filter[A014528(n), A359546(#)]`
-/

namespace A359547.P12924599955938622409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P12924599955938622409

/-! ## A359547.P7322773873226729990

`filter[A042968(n+1), A359546(#)]`
-/

namespace A359547.P7322773873226729990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P7322773873226729990

/-! ## A359547.P13301733761759700795

`filter[A138592(n+1), A359546(#)]`
-/

namespace A359547.P13301733761759700795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P13301733761759700795

/-! ## A359547.P17843865844765610391

`filter[A176423(n+2), A359546(#)]`
-/

namespace A359547.P17843865844765610391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P17843865844765610391

/-! ## A359547.P730006976234994196

`filter[A056653(n+1), A359546(#)]`
-/

namespace A359547.P730006976234994196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P730006976234994196

/-! ## A359547.P12253513433793931463

`filter[A089088(n), A359546(#)]`
-/

namespace A359547.P12253513433793931463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P12253513433793931463

/-! ## A359547.P7364717551211294262

`filter[A065940(n), A359546(#)]`
-/

namespace A359547.P7364717551211294262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P7364717551211294262

/-! ## A359547.P7612557073290797595

`filter[A116451(n), A359546(#)]`
-/

namespace A359547.P7612557073290797595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P7612557073290797595

/-! ## A359547.P2394489577020297559

`filter[A000414(n+1), A359546(#)]`
-/

namespace A359547.P2394489577020297559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A359547.P2394489577020297559

/-!
# A359548: Dirichlet inverse of A053866, where A053866(n) gives the parity of sigma(n).

The programs for A359548, the canonical program `A359548.P8998178660707063399` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359548 has offset 1).

The definition of A359548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359548.P14948542617115594874

`A359549(n+1)*A359818(n+1)`
-/

namespace A359548.P14948542617115594874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359549 (n + 1) * A359818 (n + 1)

end

end A359548.P14948542617115594874

namespace A359548

/-- `A359549(n+1)*A359818(n+1)` -/
def P14948542617115594874.Spec : Prop :=
  ∀ n, P14948542617115594874.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P8998178660707063399

`∑{d}[n+1, A008683((n+1)/#)*A323239(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A359548

/-- `∑{d}[n+1, A008683((n+1)/#)*A323239(#)]` -/
def P8998178660707063399.Spec : Prop :=
  ∀ n, P8998178660707063399.a n = A359548 (n + 1)

theorem P8998178660707063399.correct : P8998178660707063399.Spec := by
  intro n
  simp only [A359548, Nat.add_sub_cancel]

end A359548

/-! ## A359548.P7829680634435562541

`A328729(n+1)%2`
-/

namespace A359548.P7829680634435562541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328729 (n + 1)) 2

end

end A359548.P7829680634435562541

namespace A359548

/-- `A328729(n+1)%2` -/
def P7829680634435562541.Spec : Prop :=
  ∀ n, P7829680634435562541.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P17763043814843593020

`A347238(n+1)%2`
-/

namespace A359548.P17763043814843593020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347238 (n + 1)) 2

end

end A359548.P17763043814843593020

namespace A359548

/-- `A347238(n+1)%2` -/
def P17763043814843593020.Spec : Prop :=
  ∀ n, P17763043814843593020.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P13253217264494644274

`A181563(n+1)*A189021(n+1)`
-/

namespace A359548.P13253217264494644274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (n + 1) * A189021 (n + 1)

end

end A359548.P13253217264494644274

namespace A359548

/-- `A181563(n+1)*A189021(n+1)` -/
def P13253217264494644274.Spec : Prop :=
  ∀ n, P13253217264494644274.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P4886673415549167761

`A053866(n+1)*A369454(n+1)`
-/

namespace A359548.P4886673415549167761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A369454 (n + 1)

end

end A359548.P4886673415549167761

namespace A359548

/-- `A053866(n+1)*A369454(n+1)` -/
def P4886673415549167761.Spec : Prop :=
  ∀ n, P4886673415549167761.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P10902454461891162560

`A064179(n+1)*A359549(n+1)`
-/

namespace A359548.P10902454461891162560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A359549 (n + 1)

end

end A359548.P10902454461891162560

namespace A359548

/-- `A064179(n+1)*A359549(n+1)` -/
def P10902454461891162560.Spec : Prop :=
  ∀ n, P10902454461891162560.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P7387478042906992861

`A076479(n+1)*A359549(n+1)`
-/

namespace A359548.P7387478042906992861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A359549 (n + 1)

end

end A359548.P7387478042906992861

namespace A359548

/-- `A076479(n+1)*A359549(n+1)` -/
def P7387478042906992861.Spec : Prop :=
  ∀ n, P7387478042906992861.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P13356517412803204181

`A129667(n+1)*A359549(n+1)`
-/

namespace A359548.P13356517412803204181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (n + 1) * A359549 (n + 1)

end

end A359548.P13356517412803204181

namespace A359548

/-- `A129667(n+1)*A359549(n+1)` -/
def P13356517412803204181.Spec : Prop :=
  ∀ n, P13356517412803204181.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P765488694772206628

`A257098(n+1)*A359549(n+1)`
-/

namespace A359548.P765488694772206628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (n + 1) * A359549 (n + 1)

end

end A359548.P765488694772206628

namespace A359548

/-- `A257098(n+1)*A359549(n+1)` -/
def P765488694772206628.Spec : Prop :=
  ∀ n, P765488694772206628.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P2157579253798091213

`A307445(n+1)*A359549(n+1)`
-/

namespace A359548.P2157579253798091213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (n + 1) * A359549 (n + 1)

end

end A359548.P2157579253798091213

namespace A359548

/-- `A307445(n+1)*A359549(n+1)` -/
def P2157579253798091213.Spec : Prop :=
  ∀ n, P2157579253798091213.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P14134930453304813976

`A356163(n+1)*A369454(n+1)`
-/

namespace A359548.P14134930453304813976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1) * A369454 (n + 1)

end

end A359548.P14134930453304813976

namespace A359548

/-- `A356163(n+1)*A369454(n+1)` -/
def P14134930453304813976.Spec : Prop :=
  ∀ n, P14134930453304813976.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P3910275577250840613

`and(A359818(n+1), A369454(n+1))`
-/

namespace A359548.P3910275577250840613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359818 (n + 1)) (A369454 (n + 1))

end

end A359548.P3910275577250840613

namespace A359548

/-- `and(A359818(n+1), A369454(n+1))` -/
def P3910275577250840613.Spec : Prop :=
  ∀ n, P3910275577250840613.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P7973279663016874516

`A327276(n+1)²*A359818(n+1)`
-/

namespace A359548.P7973279663016874516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) ^ 2 * A359818 (n + 1)

end

end A359548.P7973279663016874516

namespace A359548

/-- `A327276(n+1)²*A359818(n+1)` -/
def P7973279663016874516.Spec : Prop :=
  ∀ n, P7973279663016874516.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P974942815145189805

`∑{d}[n+1, A007427(#)*A068068((n+1)/#)]`
-/

namespace A359548.P974942815145189805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A068068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359548.P974942815145189805

namespace A359548

/-- `∑{d}[n+1, A007427(#)*A068068((n+1)/#)]` -/
def P974942815145189805.Spec : Prop :=
  ∀ n, P974942815145189805.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P3602404673704795180

`∑{d}[n+1, A007428(#)*A078644((n+1)/#)]`
-/

namespace A359548.P3602404673704795180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A078644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359548.P3602404673704795180

namespace A359548

/-- `∑{d}[n+1, A007428(#)*A078644((n+1)/#)]` -/
def P3602404673704795180.Spec : Prop :=
  ∀ n, P3602404673704795180.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P6207854603459824901

`∑{d}[n+1, A046692(#)*A159634((n+1)/#)]`
-/

namespace A359548.P6207854603459824901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359548.P6207854603459824901

namespace A359548

/-- `∑{d}[n+1, A046692(#)*A159634((n+1)/#)]` -/
def P6207854603459824901.Spec : Prop :=
  ∀ n, P6207854603459824901.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P17507041545486789648

`∑{d}[n+1, A035263(#)*A307445((n+1)/#)]`
-/

namespace A359548.P17507041545486789648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359548.P17507041545486789648

namespace A359548

/-- `∑{d}[n+1, A035263(#)*A307445((n+1)/#)]` -/
def P17507041545486789648.Spec : Prop :=
  ∀ n, P17507041545486789648.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P1226009465773913787

`∑{d}[n+1, A154269(#)*A271102((n+1)/#)]`
-/

namespace A359548.P1226009465773913787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359548.P1226009465773913787

namespace A359548

/-- `∑{d}[n+1, A154269(#)*A271102((n+1)/#)]` -/
def P1226009465773913787.Spec : Prop :=
  ∀ n, P1226009465773913787.a n = A359548 (n + 1)

end A359548

/-! ## A359548.P14428857888114647527

`∑{d}[n+1, A087003(#)*A359155((n+1)/#)]`
-/

namespace A359548.P14428857888114647527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A359155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359548.P14428857888114647527

namespace A359548

/-- `∑{d}[n+1, A087003(#)*A359155((n+1)/#)]` -/
def P14428857888114647527.Spec : Prop :=
  ∀ n, P14428857888114647527.a n = A359548 (n + 1)

end A359548

/-!
# A359549: a(n) = 1 if n is either an odd squarefree number squared or twice such a number, otherwise 0.

The programs for A359549, the canonical program `A359549.P5957096667995200325` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359549 has offset 1).

The definition of A359549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359549.P5957096667995200325

`abs(A359548(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359549

/-- `abs(A359548(n+1))` -/
def P5957096667995200325.Spec : Prop :=
  ∀ n, P5957096667995200325.a n = A359549 (n + 1)

theorem P5957096667995200325.correct : P5957096667995200325.Spec := by
  intro n
  simp only [A359549, Nat.add_sub_cancel]

end A359549

/-! ## A359549.P5493208265535992301

`A325212(n+1)%2`
-/

namespace A359549.P5493208265535992301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325212 (n + 1)) 2

end

end A359549.P5493208265535992301

namespace A359549

/-- `A325212(n+1)%2` -/
def P5493208265535992301.Spec : Prop :=
  ∀ n, P5493208265535992301.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P13485933464980587279

`A327268(n+1)%2`
-/

namespace A359549.P13485933464980587279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327268 (n + 1)) 2

end

end A359549.P13485933464980587279

namespace A359549

/-- `A327268(n+1)%2` -/
def P13485933464980587279.Spec : Prop :=
  ∀ n, P13485933464980587279.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P14042806890894187248

`and(1, A046692(n+1))`
-/

namespace A359549.P14042806890894187248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046692 (n + 1))

end

end A359549.P14042806890894187248

namespace A359549

/-- `and(1, A046692(n+1))` -/
def P14042806890894187248.Spec : Prop :=
  ∀ n, P14042806890894187248.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P18431698992777098015

`and(1, A053822(n+1))`
-/

namespace A359549.P18431698992777098015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053822 (n + 1))

end

end A359549.P18431698992777098015

namespace A359549

/-- `and(1, A053822(n+1))` -/
def P18431698992777098015.Spec : Prop :=
  ∀ n, P18431698992777098015.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P4810378478019076120

`and(1, A053825(n+1))`
-/

namespace A359549.P4810378478019076120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053825 (n + 1))

end

end A359549.P4810378478019076120

namespace A359549

/-- `and(1, A053825(n+1))` -/
def P4810378478019076120.Spec : Prop :=
  ∀ n, P4810378478019076120.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P4647534417995796874

`and(1, A053826(n+1))`
-/

namespace A359549.P4647534417995796874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053826 (n + 1))

end

end A359549.P4647534417995796874

namespace A359549

/-- `and(1, A053826(n+1))` -/
def P4647534417995796874.Spec : Prop :=
  ∀ n, P4647534417995796874.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P16918684883498969603

`and(1, A120630(n+1))`
-/

namespace A359549.P16918684883498969603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A120630 (n + 1))

end

end A359549.P16918684883498969603

namespace A359549

/-- `and(1, A120630(n+1))` -/
def P16918684883498969603.Spec : Prop :=
  ∀ n, P16918684883498969603.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P3425723555202889870

`and(1, A178448(n+1))`
-/

namespace A359549.P3425723555202889870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A178448 (n + 1))

end

end A359549.P3425723555202889870

namespace A359549

/-- `and(1, A178448(n+1))` -/
def P3425723555202889870.Spec : Prop :=
  ∀ n, P3425723555202889870.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P16641979676040262732

`and(1, A323910(n+1))`
-/

namespace A359549.P16641979676040262732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A323910 (n + 1))

end

end A359549.P16641979676040262732

namespace A359549

/-- `and(1, A323910(n+1))` -/
def P16641979676040262732.Spec : Prop :=
  ∀ n, P16641979676040262732.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P9860299999639374043

`and(1, A327276(n+1))`
-/

namespace A359549.P9860299999639374043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327276 (n + 1))

end

end A359549.P9860299999639374043

namespace A359549

/-- `and(1, A327276(n+1))` -/
def P9860299999639374043.Spec : Prop :=
  ∀ n, P9860299999639374043.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P15030839751579169043

`and(1, A327278(n+1))`
-/

namespace A359549.P15030839751579169043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327278 (n + 1))

end

end A359549.P15030839751579169043

namespace A359549

/-- `and(1, A327278(n+1))` -/
def P15030839751579169043.Spec : Prop :=
  ∀ n, P15030839751579169043.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P3561028966898139879

`and(1, A328729(n+1))`
-/

namespace A359549.P3561028966898139879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A328729 (n + 1))

end

end A359549.P3561028966898139879

namespace A359549

/-- `and(1, A328729(n+1))` -/
def P3561028966898139879.Spec : Prop :=
  ∀ n, P3561028966898139879.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P15810078271500650487

`and(1, A346235(n+1))`
-/

namespace A359549.P15810078271500650487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346235 (n + 1))

end

end A359549.P15810078271500650487

namespace A359549

/-- `and(1, A346235(n+1))` -/
def P15810078271500650487.Spec : Prop :=
  ∀ n, P15810078271500650487.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P16429784028225621512

`and(1, A347228(n+1))`
-/

namespace A359549.P16429784028225621512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347228 (n + 1))

end

end A359549.P16429784028225621512

namespace A359549

/-- `and(1, A347228(n+1))` -/
def P16429784028225621512.Spec : Prop :=
  ∀ n, P16429784028225621512.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P17861674575104611688

`and(1, A378229(n+1))`
-/

namespace A359549.P17861674575104611688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A378229 (n + 1))

end

end A359549.P17861674575104611688

namespace A359549

/-- `and(1, A378229(n+1))` -/
def P17861674575104611688.Spec : Prop :=
  ∀ n, P17861674575104611688.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P9526178674974436735

`A227291(A022998(n+1))`
-/

namespace A359549.P9526178674974436735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (A022998 (n + 1)).toNat

end

end A359549.P9526178674974436735

namespace A359549

/-- `A227291(A022998(n+1))` -/
def P9526178674974436735.Spec : Prop :=
  ∀ n, P9526178674974436735.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P1751805173505621266

`A000035(A327276(n+1)²)`
-/

namespace A359549.P1751805173505621266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A327276 (n + 1) ^ 2).toNat

end

end A359549.P1751805173505621266

namespace A359549

/-- `A000035(A327276(n+1)²)` -/
def P1751805173505621266.Spec : Prop :=
  ∀ n, P1751805173505621266.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P8964632888767527518

`A063524(A327276(n+1)²)`
-/

namespace A359549.P8964632888767527518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A327276 (n + 1) ^ 2).toNat

end

end A359549.P8964632888767527518

namespace A359549

/-- `A063524(A327276(n+1)²)` -/
def P8964632888767527518.Spec : Prop :=
  ∀ n, P8964632888767527518.a n = A359549 (n + 1)

end A359549

/-! ## A359549.P3654834484770034225

`∑{d}[A120630(n+1), A120630(#)]`
-/

namespace A359549.P3654834484770034225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120630 d

end

end A359549.P3654834484770034225

namespace A359549

/-- `∑{d}[A120630(n+1), A120630(#)]` -/
def P3654834484770034225.Spec : Prop :=
  ∀ n, P3654834484770034225.a n = A359549 (n + 1)

end A359549

/-!
# A359550: Characteristic function of A048103; From n >= 1, a(n) is multiplicative with a(p^e) = 1 if p > e, otherwise 0. a(0) = 0 by convention.

The programs for A359550, the canonical program `A359550.P13374813552768723012` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359550 has offset 0).

The definition of A359550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359550.P13374813552768723012

`char[A048103(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A359550

/-- `char[A048103(n+1)]` -/
def P13374813552768723012.Spec : Prop :=
  ∀ n, (P13374813552768723012.a n : ℤ) = A359550 n

theorem P13374813552768723012.correct : P13374813552768723012.Spec := by
  intro n
  simp only [A359550]

end A359550

/-! ## A359550.P7318015755151572616

`char[A327937(n+1)]`
-/

namespace A359550.P7318015755151572616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359550.P7318015755151572616

namespace A359550

/-- `char[A327937(n+1)]` -/
def P7318015755151572616.Spec : Prop :=
  ∀ n, (P7318015755151572616.a n : ℤ) = A359550 n

end A359550

/-! ## A359550.P6451279431463010919

`char[A327938(n+1)]`
-/

namespace A359550.P6451279431463010919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359550.P6451279431463010919

namespace A359550

/-- `char[A327938(n+1)]` -/
def P6451279431463010919.Spec : Prop :=
  ∀ n, (P6451279431463010919.a n : ℤ) = A359550 n

end A359550

/-! ## A359550.P11654986850092996925

`char[record[A392879(n+1)]]`
-/

namespace A359550.P11654986850092996925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359550.P11654986850092996925

namespace A359550

/-- `char[record[A392879(n+1)]]` -/
def P11654986850092996925.Spec : Prop :=
  ∀ n, (P11654986850092996925.a n : ℤ) = A359550 n

end A359550

/-! ## A359550.P12842491587523252915

`A267594(A256750(n)²+1)`
-/

namespace A359550.P12842491587523252915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267594 (A256750 n ^ 2 + 1).toNat

end

end A359550.P12842491587523252915

namespace A359550

/-- `A267594(A256750(n)²+1)` -/
def P12842491587523252915.Spec : Prop :=
  ∀ n, P12842491587523252915.a n = A359550 n

end A359550

/-! ## A359550.P11808437472234221317

`1-A000007(A256750(n)²)`
-/

namespace A359550.P11808437472234221317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A256750 n ^ 2).toNat

end

end A359550.P11808437472234221317

namespace A359550

/-- `1-A000007(A256750(n)²)` -/
def P11808437472234221317.Spec : Prop :=
  ∀ n, P11808437472234221317.a n = A359550 n

end A359550

/-! ## A359550.P13364420257691981723

`1-A267594(A256750(n)²)`
-/

namespace A359550.P13364420257691981723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267594 (A256750 n ^ 2).toNat

end

end A359550.P13364420257691981723

namespace A359550

/-- `1-A267594(A256750(n)²)` -/
def P13364420257691981723.Spec : Prop :=
  ∀ n, P13364420257691981723.a n = A359550 n

end A359550

/-! ## A359550.P14867267135577994057

`A341996((2*A256750(n))²)`
-/

namespace A359550.P14867267135577994057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 ((2 * A256750 n) ^ 2).toNat

end

end A359550.P14867267135577994057

namespace A359550

/-- `A341996((2*A256750(n))²)` -/
def P14867267135577994057.Spec : Prop :=
  ∀ n, P14867267135577994057.a n = A359550 n

end A359550

/-! ## A359550.P14247318304835078015

`A341999((2*A256750(n))²)`
-/

namespace A359550.P14247318304835078015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 ((2 * A256750 n) ^ 2).toNat

end

end A359550.P14247318304835078015

namespace A359550

/-- `A341999((2*A256750(n))²)` -/
def P14247318304835078015.Spec : Prop :=
  ∀ n, P14247318304835078015.a n = A359550 n

end A359550

/-! ## A359550.P6808915682493840876

`A354354(A283443(A109047(A283443(2*n))))`
-/

namespace A359550.P6808915682493840876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A283443 (A109047 (A283443 (2 * n)).toNat).toNat).toNat

end

end A359550.P6808915682493840876

namespace A359550

/-- `A354354(A283443(A109047(A283443(2*n))))` -/
def P6808915682493840876.Spec : Prop :=
  ∀ n, P6808915682493840876.a n = A359550 n

end A359550

/-! ## A359550.P7919502350349537587

`A354354(A350034(A109047(A350034(2*n))))`
-/

namespace A359550.P7919502350349537587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A350034 (A109047 (A350034 (2 * n)).toNat).toNat).toNat

end

end A359550.P7919502350349537587

namespace A359550

/-- `A354354(A350034(A109047(A350034(2*n))))` -/
def P7919502350349537587.Spec : Prop :=
  ∀ n, P7919502350349537587.a n = A359550 n

end A359550

/-!
# A359551: Dirichlet inverse of A359550, which is multiplicative sequence with a(p^e) = 1 if e < p, otherwise 0.

The programs for A359551, the canonical program `A359551.P4733184215772970261` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359551 has offset 1).

The definition of A359551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359551.P11092602770580726267

`A008683(A327938(n+1))`
-/

namespace A359551.P11092602770580726267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A327938 (n + 1)).toNat

end

end A359551.P11092602770580726267

namespace A359551

/-- `A008683(A327938(n+1))` -/
def P11092602770580726267.Spec : Prop :=
  ∀ n, P11092602770580726267.a n = A359551 (n + 1)

end A359551

/-! ## A359551.P10559623765934391320

`A008683((n+1)/A327939(n+1))`
-/

namespace A359551.P10559623765934391320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327939 (n + 1) : ℚ))).toNat

end

end A359551.P10559623765934391320

namespace A359551

/-- `A008683((n+1)/A327939(n+1))` -/
def P10559623765934391320.Spec : Prop :=
  ∀ n, P10559623765934391320.a n = A359551 (n + 1)

end A359551

/-! ## A359551.P5697190814119308857

`A400248(n+1)/A000010(n+1)`
-/

namespace A359551.P5697190814119308857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400248 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A359551.P5697190814119308857

namespace A359551

/-- `A400248(n+1)/A000010(n+1)` -/
def P5697190814119308857.Spec : Prop :=
  ∀ n, P5697190814119308857.a n = (A359551 (n + 1) : ℚ)

end A359551

/-! ## A359551.P14626611177275630164

`∑{d}[n+1, A008683(#)*A359552((n+1)/#)]`
-/

namespace A359551.P14626611177275630164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359551.P14626611177275630164

namespace A359551

/-- `∑{d}[n+1, A008683(#)*A359552((n+1)/#)]` -/
def P14626611177275630164.Spec : Prop :=
  ∀ n, P14626611177275630164.a n = A359551 (n + 1)

end A359551

/-! ## A359551.P4733184215772970261

`∑{d}[n+1, A007427(#)*A365632((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A359551

/-- `∑{d}[n+1, A007427(#)*A365632((n+1)/#)]` -/
def P4733184215772970261.Spec : Prop :=
  ∀ n, P4733184215772970261.a n = A359551 (n + 1)

theorem P4733184215772970261.correct : P4733184215772970261.Spec := by
  intro n
  simp only [A359551, Nat.add_sub_cancel]

end A359551

/-! ## A359551.P15799133062164900472

`A008683((n+1)/A085731(A085731(n+1)))`
-/

namespace A359551.P15799133062164900472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A085731 (A085731 (n + 1)).toNat : ℚ))).toNat

end

end A359551.P15799133062164900472

namespace A359551

/-- `A008683((n+1)/A085731(A085731(n+1)))` -/
def P15799133062164900472.Spec : Prop :=
  ∀ n, P15799133062164900472.a n = A359551 (n + 1)

end A359551

/-! ## A359551.P3055950266140680776

`A359432(A327938(n+1))^A003961(n+1)`
-/

namespace A359551.P3055950266140680776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359432 (A327938 (n + 1)).toNat : ℚ) ^ (A003961 (n + 1) : ℤ)

end

end A359551.P3055950266140680776

namespace A359551

/-- `A359432(A327938(n+1))^A003961(n+1)` -/
def P3055950266140680776.Spec : Prop :=
  ∀ n, P3055950266140680776.a n = (A359551 (n + 1) : ℚ)

end A359551

/-! ## A359551.P11184018202420687054

`A359432(A327938(n+1))^A007921(n+1)`
-/

namespace A359551.P11184018202420687054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359432 (A327938 (n + 1)).toNat : ℚ) ^ (A007921 (n + 1) : ℤ)

end

end A359551.P11184018202420687054

namespace A359551

/-- `A359432(A327938(n+1))^A007921(n+1)` -/
def P11184018202420687054.Spec : Prop :=
  ∀ n, P11184018202420687054.a n = (A359551 (n + 1) : ℚ)

end A359551

/-! ## A359551.P12416155337006389879

`A359432(A327938(n+1)%A004816(n+1))`
-/

namespace A359551.P12416155337006389879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (Int.tmod (A327938 (n + 1)) (A004816 (n + 1))).toNat

end

end A359551.P12416155337006389879

namespace A359551

/-- `A359432(A327938(n+1)%A004816(n+1))` -/
def P12416155337006389879.Spec : Prop :=
  ∀ n, P12416155337006389879.a n = A359551 (n + 1)

end A359551

/-! ## A359551.P2051136577059268849

`A358236(2*n+1)*A359432(A327938(n+1))`
-/

namespace A359551.P2051136577059268849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358236 (2 * n + 1) * A359432 (A327938 (n + 1)).toNat

end

end A359551.P2051136577059268849

namespace A359551

/-- `A358236(2*n+1)*A359432(A327938(n+1))` -/
def P2051136577059268849.Spec : Prop :=
  ∀ n, P2051136577059268849.a n = A359551 (n + 1)

end A359551

/-! ## A359551.P13405041936849641961

`A054527(C(A327938(n+1)+1, 2))`
-/

namespace A359551.P13405041936849641961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (Nat.choose (A327938 (n + 1) + 1).toNat 2)

end

end A359551.P13405041936849641961

namespace A359551

/-- `A054527(C(A327938(n+1)+1, 2))` -/
def P13405041936849641961.Spec : Prop :=
  ∀ n, P13405041936849641961.a n = A359551 (n + 1)

end A359551

/-!
# A359552: Multiplicative with a(p^e) = 1 if e == 0 mod p, otherwise 0.

The programs for A359552, the canonical program `A359552.P1693999533399603662` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359552 has offset 1).

The definition of A359552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359552.P14413998116129418866

`char[∏{digits}[n, #^#]-1]`
-/

namespace A359552.P14413998116129418866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ x).prod : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359552.P14413998116129418866

namespace A359552

/-- `char[∏{digits}[n, #^#]-1]` -/
def P14413998116129418866.Spec : Prop :=
  ∀ n, (P14413998116129418866.a n : ℤ) = A359552 (n + 1)

end A359552

/-! ## A359552.P573314991344055832

`∑{d}[n+1, A359551(#)]`
-/

namespace A359552.P573314991344055832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359551 d

end

end A359552.P573314991344055832

namespace A359552

/-- `∑{d}[n+1, A359551(#)]` -/
def P573314991344055832.Spec : Prop :=
  ∀ n, P573314991344055832.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P16676504168670613835

`floor(1/A083346(n+1))`
-/

namespace A359552.P16676504168670613835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A083346 (n + 1) : ℚ)⌋

end

end A359552.P16676504168670613835

namespace A359552

/-- `floor(1/A083346(n+1))` -/
def P16676504168670613835.Spec : Prop :=
  ∀ n, P16676504168670613835.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P11962179242998258890

`floor(1/A327938(n+1))`
-/

namespace A359552.P11962179242998258890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327938 (n + 1) : ℚ)⌋

end

end A359552.P11962179242998258890

namespace A359552

/-- `floor(1/A327938(n+1))` -/
def P11962179242998258890.Spec : Prop :=
  ∀ n, P11962179242998258890.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P3685511261492589146

`floor(1/A359593(n+1))`
-/

namespace A359552.P3685511261492589146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A359593 (n + 1) : ℚ)⌋

end

end A359552.P3685511261492589146

namespace A359552

/-- `floor(1/A359593(n+1))` -/
def P3685511261492589146.Spec : Prop :=
  ∀ n, P3685511261492589146.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P15112631820568900426

`char[A072873(n+1)-1]`
-/

namespace A359552.P15112631820568900426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359552.P15112631820568900426

namespace A359552

/-- `char[A072873(n+1)-1]` -/
def P15112631820568900426.Spec : Prop :=
  ∀ n, (P15112631820568900426.a n : ℤ) = A359552 (n + 1)

end A359552

/-! ## A359552.P6636657204107731076

`char[A327939(n+1)-1]`
-/

namespace A359552.P6636657204107731076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359552.P6636657204107731076

namespace A359552

/-- `char[A327939(n+1)-1]` -/
def P6636657204107731076.Spec : Prop :=
  ∀ n, (P6636657204107731076.a n : ℤ) = A359552 (n + 1)

end A359552

/-! ## A359552.P10443161716272185551

`char[A359594(n+1)-1]`
-/

namespace A359552.P10443161716272185551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359552.P10443161716272185551

namespace A359552

/-- `char[A359594(n+1)-1]` -/
def P10443161716272185551.Spec : Prop :=
  ∀ n, (P10443161716272185551.a n : ℤ) = A359552 (n + 1)

end A359552

/-! ## A359552.P1693999533399603662

`C(A085731(n+1), n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359552

/-- `C(A085731(n+1), n+1)` -/
def P1693999533399603662.Spec : Prop :=
  ∀ n, (P1693999533399603662.a n : ℤ) = A359552 (n + 1)

theorem P1693999533399603662.correct : P1693999533399603662.Spec := by
  intro n
  simp only [A359552, Nat.add_sub_cancel]

end A359552

/-! ## A359552.P9650066464457055649

`A087049(A083346(n+1))`
-/

namespace A359552.P9650066464457055649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A083346 (n + 1)).toNat

end

end A359552.P9650066464457055649

namespace A359552

/-- `A087049(A083346(n+1))` -/
def P9650066464457055649.Spec : Prop :=
  ∀ n, P9650066464457055649.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P1871556215076806553

`A342004(2*A083346(n+1))`
-/

namespace A359552.P1871556215076806553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (2 * A083346 (n + 1)).toNat

end

end A359552.P1871556215076806553

namespace A359552

/-- `A342004(2*A083346(n+1))` -/
def P1871556215076806553.Spec : Prop :=
  ∀ n, P1871556215076806553.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P10032233899885657996

`A400249((n+1)/A085731(n+1))`
-/

namespace A359552.P10032233899885657996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A085731 (n + 1) : ℚ))).toNat

end

end A359552.P10032233899885657996

namespace A359552

/-- `A400249((n+1)/A085731(n+1))` -/
def P10032233899885657996.Spec : Prop :=
  ∀ n, P10032233899885657996.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P7065022052227006908

`∑{d}[n+1, A008683(#)*A365632((n+1)/#)]`
-/

namespace A359552.P7065022052227006908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A365632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359552.P7065022052227006908

namespace A359552

/-- `∑{d}[n+1, A008683(#)*A365632((n+1)/#)]` -/
def P7065022052227006908.Spec : Prop :=
  ∀ n, P7065022052227006908.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P9492422117064517859

`∑{d}[n+1, A359432(#)*A368336((n+1)/#)]`
-/

namespace A359552.P9492422117064517859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359432 d * A368336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359552.P9492422117064517859

namespace A359552

/-- `∑{d}[n+1, A359432(#)*A368336((n+1)/#)]` -/
def P9492422117064517859.Spec : Prop :=
  ∀ n, P9492422117064517859.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P512700547265037828

`A342004(A083346(n+1)+A083346(n+1))`
-/

namespace A359552.P512700547265037828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (A083346 (n + 1) + A083346 (n + 1)).toNat

end

end A359552.P512700547265037828

namespace A359552

/-- `A342004(A083346(n+1)+A083346(n+1))` -/
def P512700547265037828.Spec : Prop :=
  ∀ n, P512700547265037828.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P10660576836373763082

`A080339(2*A083346(n+1))`
-/

namespace A359552.P10660576836373763082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * A083346 (n + 1)).toNat

end

end A359552.P10660576836373763082

namespace A359552

/-- `A080339(2*A083346(n+1))` -/
def P10660576836373763082.Spec : Prop :=
  ∀ n, P10660576836373763082.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P870357283368289299

`A080339(A083346(n+1)+A083346(n+1))`
-/

namespace A359552.P870357283368289299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A083346 (n + 1) + A083346 (n + 1)).toNat

end

end A359552.P870357283368289299

namespace A359552

/-- `A080339(A083346(n+1)+A083346(n+1))` -/
def P870357283368289299.Spec : Prop :=
  ∀ n, P870357283368289299.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P16407117132975015875

`A008683(A001694((n+1)/A085731(n+1)))`
-/

namespace A359552.P16407117132975015875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001694 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A085731 (n + 1) : ℚ))).toNat).toNat

end

end A359552.P16407117132975015875

namespace A359552

/-- `A008683(A001694((n+1)/A085731(n+1)))` -/
def P16407117132975015875.Spec : Prop :=
  ∀ n, P16407117132975015875.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P6414211424979045336

`A008683(A400251((n+1)/A085731(n+1)))`
-/

namespace A359552.P6414211424979045336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A400251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A085731 (n + 1) : ℚ))).toNat).toNat

end

end A359552.P6414211424979045336

namespace A359552

/-- `A008683(A400251((n+1)/A085731(n+1)))` -/
def P6414211424979045336.Spec : Prop :=
  ∀ n, P6414211424979045336.a n = A359552 (n + 1)

end A359552

/-! ## A359552.P12372465344831965319

`A008966(A083346(n+1)²)`
-/

namespace A359552.P12372465344831965319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A083346 (n + 1) ^ 2).toNat

end

end A359552.P12372465344831965319

namespace A359552

/-- `A008966(A083346(n+1)²)` -/
def P12372465344831965319.Spec : Prop :=
  ∀ n, P12372465344831965319.a n = A359552 (n + 1)

end A359552

/-!
# A359554: Denominator of the coefficient of x^(2n+1) in the Taylor series expansion of sin(sin(x)).

The programs for A359554, there is no canonical definition to state claims against.
-/

/-! ## A359554.P9667343783069440038

`A111246(∑[∑[A070952(n)]])`
-/

namespace A359554.P9667343783069440038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359554.P9667343783069440038

/-!
# A359555: Primes p such that (p-2)^2 + 2 is also prime.

The programs for A359555, there is no canonical definition to state claims against.
-/

/-! ## A359555.P3024412935677638176

`p?[A067201(n+1)+2]`
-/

namespace A359555.P3024412935677638176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359555.P3024412935677638176

/-! ## A359555.P17293491718183094792

`record[A006530(A067201(n+1)+2)]`
-/

namespace A359555.P17293491718183094792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067201 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359555.P17293491718183094792

/-! ## A359555.P3219130140608261227

`record[A008472(A067201(n+1)+2)]`
-/

namespace A359555.P3219130140608261227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A067201 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359555.P3219130140608261227

/-! ## A359555.P10581139105119559512

`record[A020639(A067201(n+1)+2)]`
-/

namespace A359555.P10581139105119559512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067201 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359555.P10581139105119559512

/-!
# A359556: Number of ways to represent the average of the n-th twin prime pair as arithmetic mean of the averages of two other twin prime pairs.

The programs for A359556, there is no canonical definition to state claims against.
-/

/-! ## A359556.P9131691363238242719

`floor(A190268(n+1)/2)`
-/

namespace A359556.P9131691363238242719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190268 (n + 1) : ℚ) / 2⌋

end

end A359556.P9131691363238242719

/-! ## A359556.P11620548599333984303

`A004524(A190268(n+1))`
-/

namespace A359556.P11620548599333984303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190268 (n + 1)).toNat

end

end A359556.P11620548599333984303

/-! ## A359556.P18078648336255135653

`A004526(A190268(n+1)-1)`
-/

namespace A359556.P18078648336255135653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190268 (n + 1) - 1).toNat

end

end A359556.P18078648336255135653

/-! ## A359556.P14223752679528567591

`A006370(A190268(n+1)-1)`
-/

namespace A359556.P14223752679528567591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A190268 (n + 1) - 1).toNat

end

end A359556.P14223752679528567591

/-! ## A359556.P3767163636628057697

`(A190268(n+1)-1)/2*A054977(n)`
-/

namespace A359556.P3767163636628057697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190268 (n + 1) - 1 : ℚ) / 2 * (A054977 n : ℚ)

end

end A359556.P3767163636628057697

/-! ## A359556.P8658803201071948293

`((A190268(n+1)-1)/2)%Δ[A007504(n)]`
-/

namespace A359556.P8658803201071948293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A190268 (n + 1) - 1 : ℚ) / 2)) (f1 (n + 1) - f1 n)

end

end A359556.P8658803201071948293

/-! ## A359556.P13331813592794502680

`ceil((A190268(n+1)-1)/2)/A054977(n+2)`
-/

namespace A359556.P13331813592794502680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A190268 (n + 1) - 1 : ℚ) / 2⌉ : ℚ) / (A054977 (n + 2) : ℚ)

end

end A359556.P13331813592794502680

/-! ## A359556.P9482648498372955003

`ceil((A190268(n+1)-1)/2)%A000037(n+1)`
-/

namespace A359556.P9482648498372955003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A190268 (n + 1) - 1 : ℚ) / 2⌉ (A000037 (n + 1))

end

end A359556.P9482648498372955003

/-! ## A359556.P3685653962572760423

`A159700(A014574(n+1))/2`
-/

namespace A359556.P3685653962572760423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159700 (A014574 (n + 1)).toNat : ℚ) / 2

end

end A359556.P3685653962572760423

/-! ## A359556.P6062325271657875709

`A302231(A014574(n+1))`
-/

namespace A359556.P6062325271657875709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (A014574 (n + 1)).toNat

end

end A359556.P6062325271657875709

/-! ## A359556.P3291009943479887870

`A302231(2*A040040(n+1))`
-/

namespace A359556.P3291009943479887870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (2 * A040040 (n + 1)).toNat

end

end A359556.P3291009943479887870

/-! ## A359556.P2798657412680445864

`A302231(2*A168497(n+2))`
-/

namespace A359556.P2798657412680445864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (2 * A168497 (n + 2)).toNat

end

end A359556.P2798657412680445864

/-! ## A359556.P16871527070005648790

`(A129363(p?[A000040(n+1)+2]-1)-1)/2`
-/

namespace A359556.P16871527070005648790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129363 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat - 1 : ℚ) / 2

end

end A359556.P16871527070005648790

/-!
# A359559: a(n) is the determinant of an n X n Hermitian Toeplitz matrix whose first row consists of 1, 2*i, ..., n*i, where i denotes the imaginary unit.

The programs for A359559, the canonical program `A359559.P1398824237323871109` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359559 has offset 0).

The definition of A359559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359559.P1398824237323871109

`ogf((1-5x+9x^2-12x^3+10x^4-4x^5)/(1-6x+18x^2-32x^3+36x^4-24x^5+8x^6))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A359559

/-- `ogf((1-5x+9x^2-12x^3+10x^4-4x^5)/(1-6x+18x^2-32x^3+36x^4-24x^5+8x^6))` -/
def P1398824237323871109.Spec : Prop :=
  ∀ n, P1398824237323871109.a n = A359559 n

theorem P1398824237323871109.correct : P1398824237323871109.Spec := by
  intro n
  simp only [A359559]

end A359559

/-!
# A359560: a(n) is the permanent of an n X n Hermitian Toeplitz matrix whose first row consists of 1, 2*i, ..., n*i, where i denotes the imaginary unit.

The programs for A359560, there is no canonical definition to state claims against.
-/

/-! ## A359560.P8018827133568086759

`A032742(record[A000171(n+1)])`
-/

namespace A359560.P8018827133568086759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359560.P8018827133568086759

/-! ## A359560.P546638669852822592

`A038572(record[A000171(n+1)])`
-/

namespace A359560.P546638669852822592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359560.P546638669852822592

/-!
# A359561: a(n) is the determinant of an n X n Hermitian Toeplitz matrix whose first row consists of n, (n-1)*i, (n-2)*i, ..., 3*i, 2*i, i, where i denotes the imaginary unit.

The programs for A359561, there is no canonical definition to state claims against.
-/

/-! ## A359561.P4122718567729034929

`a(n-1)-n^(4-a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A359561.P4122718567729034929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (n : ℝ) ^ (4 - a (n - 1))

end

end A359561.P4122718567729034929

/-!
# A359563: Odd numbers that have at least two divisors with the same value of the Euler totient function (A000010).

The programs for A359563, there is no canonical definition to state claims against.
-/

/-! ## A359563.P17216522285731103534

`∩[A359565(n+1), A016825(n)]/2`
-/

namespace A359563.P17216522285731103534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A359563.P17216522285731103534

/-! ## A359563.P12160460183612971892

`comp[∪[A004275(n), A326835(n+1)]]`
-/

namespace A359563.P12160460183612971892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359563.P12160460183612971892

/-!
# A359565: Numbers that have at least three divisors with the same value of the Euler totient function (A000010).

The programs for A359565, there is no canonical definition to state claims against.
-/

/-! ## A359565.P8451667087330990656

`lt[2, A373531(n+1)]+1`
-/

namespace A359565.P8451667087330990656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359565.P8451667087330990656

/-! ## A359565.P11876893475161564312

`∩[A227180(n+1), A354583(n+1)]`
-/

namespace A359565.P11876893475161564312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359565.P11876893475161564312

/-! ## A359565.P4558107874253988876

`∩[A111305(n+1), A354583(n+1)]`
-/

namespace A359565.P4558107874253988876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359565.P4558107874253988876

/-! ## A359565.P16195790055342246752

`∩[A354583(n+1), A371447(n+1)]`
-/

namespace A359565.P16195790055342246752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359565.P16195790055342246752

/-! ## A359565.P15443600656428875047

`∩[A074726(n+1), A110134(n+1)]`
-/

namespace A359565.P15443600656428875047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359565.P15443600656428875047

/-!
# A359566: Primitive terms of A359565: terms of A359565 with no proper divisor in A359565.

The programs for A359566, there is no canonical definition to state claims against.
-/

/-! ## A359566.P16583497063704230805

`A120211(A144582(n+1)+A070303(n+1))`
-/

namespace A359566.P16583497063704230805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120211 (A144582 (n + 1) + A070303 (n + 1)).toNat

end

end A359566.P16583497063704230805

/-!
# A359567: Numbers k such that A102370(k) = k + 2.

The programs for A359567, there is no canonical definition to state claims against.
-/

/-! ## A359567.P6062310137971809844

`eq[1, A103185(n)]`
-/

namespace A359567.P6062310137971809844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359567.P6062310137971809844

/-! ## A359567.P9763512807356734147

`eq[2, A105023(n)]`
-/

namespace A359567.P9763512807356734147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359567.P9763512807356734147

/-! ## A359567.P10846613951754860589

`eq[n+2, A102370(n)]`
-/

namespace A359567.P10846613951754860589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359567.P10846613951754860589

/-! ## A359567.P9841326311131539231

`filter[2*n+1, A103185(#)]`
-/

namespace A359567.P9841326311131539231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103185 (f1 j) = 1) n)

end

end A359567.P9841326311131539231

/-! ## A359567.P10876661971772250817

`eq[n+3, A105228(n+1)]`
-/

namespace A359567.P10876661971772250817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359567.P10876661971772250817

/-! ## A359567.P8462713179357837

`comp[xor(and(n, -2), A228367(n+1))]`
-/

namespace A359567.P8462713179357837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (n : ℤ) (-2)) (A228367 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359567.P8462713179357837

/-! ## A359567.P17879638360789037356

`lt[A103185(n)², A105023(n)]`
-/

namespace A359567.P17879638360789037356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359567.P17879638360789037356

/-! ## A359567.P12510484684364338800

`eq[2-A102370(n), A001489(n)]`
-/

namespace A359567.P12510484684364338800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A102370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359567.P12510484684364338800

/-!
# A359569: Number of vertices after n iterations of constructing circles from all current vertices using only a compass, starting with one vertex. See the Comments.

The programs for A359569, there is no canonical definition to state claims against.
-/

/-! ## A359569.P12182470877702095589

`abs(Δ[Δ[3^A119999(2*n)]+2^n])`
-/

namespace A359569.P12182470877702095589
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A119999 (2 * n) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A359569.P12182470877702095589

/-!
# A359570: Number of regions after n iterations of constructing circles from all current vertices using only a compass, starting with one vertex. See the Comments.

The programs for A359570, there is no canonical definition to state claims against.
-/

/-! ## A359570.P12738354785895292934

`A263362(A130442(n+1)-gcd(n, ∑[n]))`
-/

namespace A359570.P12738354785895292934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263362 (A130442 (n + 1) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A359570.P12738354785895292934

/-!
# A359571: Number of (curved) edges after n iterations of constructing circles from all current vertices using only a compass, starting with one vertex. See the Comments.

The programs for A359571, there is no canonical definition to state claims against.
-/

/-! ## A359571.P644183407342044188

`A278188(A263273(2*n+3))+∑[n]`
-/

namespace A359571.P644183407342044188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278188 (A263273 (2 * n + 3)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A359571.P644183407342044188

/-!
# A359573: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected and a path of 1's from upper left corner to lower right corner.

The programs for A359573, there is no canonical definition to state claims against.
-/

/-! ## A359573.P1488747276460417014

`A359575(n+1)-A185643(A023361(n))`
-/

namespace A359573.P1488747276460417014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 (n + 1) - A185643 (A023361 n).toNat

end

end A359573.P1488747276460417014

/-! ## A359573.P12617785789426509246

`A115576(A109692(n))*A203717(n+1)`
-/

namespace A359573.P12617785789426509246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (A109692 n).toNat * A203717 (n + 1)

end

end A359573.P12617785789426509246

/-! ## A359573.P12193300604807403559

`A006218(A328887(n)%A071612(n+1))`
-/

namespace A359573.P12193300604807403559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Int.tmod (A328887 n) (A071612 (n + 1))).toNat

end

end A359573.P12193300604807403559

/-! ## A359573.P11763957426195067555

`A067029(A073777(n+1))*A203717(n+1)`
-/

namespace A359573.P11763957426195067555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A073777 (n + 1)).toNat * A203717 (n + 1)

end

end A359573.P11763957426195067555

/-! ## A359573.P13412275171813209987

`A006218(A328887(n))%A247273(3*n+4)`
-/

namespace A359573.P13412275171813209987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (A328887 n).toNat) (A247273 (3 * n + 4))

end

end A359573.P13412275171813209987

/-!
# A359575: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with a path of adjacent 1's from upper right corner to lower left corner.

The programs for A359575, there is no canonical definition to state claims against.
-/

/-! ## A359575.P6433388260143019185

`A081031(A099927(n))`
-/

namespace A359575.P6433388260143019185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081031 (A099927 n).toNat

end

end A359575.P6433388260143019185

/-! ## A359575.P6070795146737608076

`A091245(A168287(n))+A048793(A168287(n))`
-/

namespace A359575.P6070795146737608076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A168287 n).toNat + A048793 (A168287 n).toNat

end

end A359575.P6070795146737608076

/-! ## A359575.P6345313026068550985

`A359573(n+1)+A185643(A023361(n))`
-/

namespace A359575.P6345313026068550985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (n + 1) + A185643 (A023361 n).toNat

end

end A359575.P6345313026068550985

/-! ## A359575.P8696299774737091052

`A349374(A008518(n))%A235142(3*n+4)`
-/

namespace A359575.P8696299774737091052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349374 (A008518 n).toNat) (A235142 (3 * n + 4))

end

end A359575.P8696299774737091052

/-!
# A359576: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A359576, there is no canonical definition to state claims against.
-/

/-! ## A359576.P17933235682222640064

`A369892(A048266(n+1))`
-/

namespace A359576.P17933235682222640064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369892 (A048266 (n + 1)).toNat

end

end A359576.P17933235682222640064

/-! ## A359576.P10291232803017390767

`A369892(n+1)+A000035(A126271(n))`
-/

namespace A359576.P10291232803017390767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369892 (n + 1) + A000035 (A126271 n).toNat

end

end A359576.P10291232803017390767

/-! ## A359576.P4314639685790887286

`A369892(n+1)%A272186(A098859(n))`
-/

namespace A359576.P4314639685790887286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369892 (n + 1)) (A272186 (A098859 n).toNat)

end

end A359576.P4314639685790887286

/-! ## A359576.P9305094446928260594

`A369892(n+1)+A000122(A285227(n+1))`
-/

namespace A359576.P9305094446928260594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369892 (n + 1) + A000122 (A285227 (n + 1)).toNat

end

end A359576.P9305094446928260594

/-! ## A359576.P3701542046127804484

`A369892(n+1)+A335520(A032702(n+2))`
-/

namespace A359576.P3701542046127804484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369892 (n + 1) + A335520 (A032702 (n + 2)).toNat

end

end A359576.P3701542046127804484

/-!
# A359577: Dirichlet inverse of A085731, where A085731 is the greatest common divisor of n and the arithmetic derivative of n.

The programs for A359577, there is no canonical definition to state claims against.
-/

/-! ## A359577.P36182354557706426

`A307428(A131322(n+1))*A327564(A085731(n+1))`
-/

namespace A359577.P36182354557706426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A131322 (n + 1)).toNat * A327564 (A085731 (n + 1)).toNat

end

end A359577.P36182354557706426

/-! ## A359577.P2826627914127751405

`A131322(A342007(n+1))*A307428(A131322(n+1))`
-/

namespace A359577.P2826627914127751405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (A342007 (n + 1)).toNat * A307428 (A131322 (n + 1)).toNat

end

end A359577.P2826627914127751405

/-! ## A359577.P8743775383672817741

`A307428(A131322(n+1))*A336651(A348049(n+1))`
-/

namespace A359577.P8743775383672817741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A131322 (n + 1)).toNat * A336651 (A348049 (n + 1)).toNat

end

end A359577.P8743775383672817741

/-!
# A359578: Dirichlet inverse of A336477, where A336477(n) = 1 if phi(n) is a power of 2, otherwise 0.

The programs for A359578, there is no canonical definition to state claims against.
-/

/-! ## A359578.P5171690494084180118

`A279484(gcd(A214854(n+1), A214854(n)))`
-/

namespace A359578.P5171690494084180118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 (Int.gcd (A214854 (n + 1)) (A214854 n))

end

end A359578.P5171690494084180118

/-! ## A359578.P7762189865738110991

`A008966(A048160(n+1))*A358839(n+1)`
-/

namespace A359578.P7762189865738110991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A048160 (n + 1)).toNat * A358839 (n + 1)

end

end A359578.P7762189865738110991

/-! ## A359578.P4764613047257768031

`A259024(A114322(n+1))`
-/

namespace A359578.P4764613047257768031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (A114322 (n + 1)).toNat

end

end A359578.P4764613047257768031

/-! ## A359578.P2360116132164284906

`A054525(A008969(n+2)+∑{p}[n+1, gcd(n, #)])`
-/

namespace A359578.P2360116132164284906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A008969 (n + 2) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A359578.P2360116132164284906

/-! ## A359578.P13742130269067467865

`(-1)^∑{e}[n+1, #]*A010054(A234251(2*n+3))`
-/

namespace A359578.P13742130269067467865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A010054 (A234251 (2 * n + 3)).toNat

end

end A359578.P13742130269067467865

/-!
# A359579: Dirichlet inverse of A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

The programs for A359579, the canonical program `A359579.P14819525977453082377` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359579 has offset 1).

The definition of A359579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359579.P14819525977453082377

`A112299(n+1)*A364252(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359579

/-- `A112299(n+1)*A364252(n+1)` -/
def P14819525977453082377.Spec : Prop :=
  ∀ n, P14819525977453082377.a n = A359579 (n + 1)

theorem P14819525977453082377.correct : P14819525977453082377.Spec := by
  intro n
  simp only [A359579, Nat.add_sub_cancel]

end A359579

/-! ## A359579.P3897942163898655953

`A358839(n+1)*A364252(n+1)`
-/

namespace A359579.P3897942163898655953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1) * A364252 (n + 1)

end

end A359579.P3897942163898655953

namespace A359579

/-- `A358839(n+1)*A364252(n+1)` -/
def P3897942163898655953.Spec : Prop :=
  ∀ n, P3897942163898655953.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P17324040049881509792

`∑{d}[n+1, A046692(#)*A379108((n+1)/#)]`
-/

namespace A359579.P17324040049881509792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A379108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359579.P17324040049881509792

namespace A359579

/-- `∑{d}[n+1, A046692(#)*A379108((n+1)/#)]` -/
def P17324040049881509792.Spec : Prop :=
  ∀ n, P17324040049881509792.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P9229089202584009238

`∑{d}[n+1, A055615(#)*A379218((n+1)/#)]`
-/

namespace A359579.P9229089202584009238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A379218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359579.P9229089202584009238

namespace A359579

/-- `∑{d}[n+1, A055615(#)*A379218((n+1)/#)]` -/
def P9229089202584009238.Spec : Prop :=
  ∀ n, P9229089202584009238.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P6670645982454212756

`A112299(n+1)*A336923(A007947(n+1))`
-/

namespace A359579.P6670645982454212756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A336923 (A007947 (n + 1)).toNat

end

end A359579.P6670645982454212756

namespace A359579

/-- `A112299(n+1)*A336923(A007947(n+1))` -/
def P6670645982454212756.Spec : Prop :=
  ∀ n, P6670645982454212756.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P1825251121234776546

`A112299(n+1)*A336923(A099985(n+1))`
-/

namespace A359579.P1825251121234776546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A336923 (A099985 (n + 1)).toNat

end

end A359579.P1825251121234776546

namespace A359579

/-- `A112299(n+1)*A336923(A099985(n+1))` -/
def P1825251121234776546.Spec : Prop :=
  ∀ n, P1825251121234776546.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P15001386874061986172

`A336923(A007947(n+1))*A358839(n+1)`
-/

namespace A359579.P15001386874061986172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A007947 (n + 1)).toNat * A358839 (n + 1)

end

end A359579.P15001386874061986172

namespace A359579

/-- `A336923(A007947(n+1))*A358839(n+1)` -/
def P15001386874061986172.Spec : Prop :=
  ∀ n, P15001386874061986172.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P16248823707674226764

`A257000(A336467(n+1)+1)*A358839(n+1)`
-/

namespace A359579.P16248823707674226764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A336467 (n + 1) + 1).toNat * A358839 (n + 1)

end

end A359579.P16248823707674226764

namespace A359579

/-- `A257000(A336467(n+1)+1)*A358839(n+1)` -/
def P16248823707674226764.Spec : Prop :=
  ∀ n, P16248823707674226764.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P8796725126621526231

`A010055(A206787(n+1))*A112299(n+1)`
-/

namespace A359579.P8796725126621526231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A206787 (n + 1)).toNat * A112299 (n + 1)

end

end A359579.P8796725126621526231

namespace A359579

/-- `A010055(A206787(n+1))*A112299(n+1)` -/
def P8796725126621526231.Spec : Prop :=
  ∀ n, P8796725126621526231.a n = A359579 (n + 1)

end A359579

/-! ## A359579.P17386435534734231153

`A010055(A206787(n+1))*A358839(n+1)`
-/

namespace A359579.P17386435534734231153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A206787 (n + 1)).toNat * A358839 (n + 1)

end

end A359579.P17386435534734231153

namespace A359579

/-- `A010055(A206787(n+1))*A358839(n+1)` -/
def P17386435534734231153.Spec : Prop :=
  ∀ n, P17386435534734231153.a n = A359579 (n + 1)

end A359579

/-!
# A359580: Numbers that are either (an odd squarefree number squared) or twice such a number.

The programs for A359580, the canonical program `A359580.P9567122532987640095` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359580 has offset 1).

The definition of A359580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359580.P9567122532987640095

`filter[A096033(n+1), A212793(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A359580

/-- `filter[A096033(n+1), A212793(#)]` -/
def P9567122532987640095.Spec : Prop :=
  ∀ n, P9567122532987640095.a n = A359580 (n + 1)

theorem P9567122532987640095.correct : P9567122532987640095.Spec := by
  intro n
  simp only [A359580, Nat.add_sub_cancel]

end A359580

/-! ## A359580.P14845812674745982500

`filter[A028982(n+1), A359549(#)]`
-/

namespace A359580.P14845812674745982500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P14845812674745982500

namespace A359580

/-- `filter[A028982(n+1), A359549(#)]` -/
def P14845812674745982500.Spec : Prop :=
  ∀ n, P14845812674745982500.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P6057708522076340982

`filter[A083854(n+1), A359549(#)]`
-/

namespace A359580.P6057708522076340982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P6057708522076340982

namespace A359580

/-- `filter[A083854(n+1), A359549(#)]` -/
def P6057708522076340982.Spec : Prop :=
  ∀ n, P6057708522076340982.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P552969053606620190

`filter[A096033(n+1), A359549(#)]`
-/

namespace A359580.P552969053606620190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P552969053606620190

namespace A359580

/-- `filter[A096033(n+1), A359549(#)]` -/
def P552969053606620190.Spec : Prop :=
  ∀ n, P552969053606620190.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P3917767134555564144

`filter[A335851(n+1), A359549(#)]`
-/

namespace A359580.P3917767134555564144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P3917767134555564144

namespace A359580

/-- `filter[A335851(n+1), A359549(#)]` -/
def P3917767134555564144.Spec : Prop :=
  ∀ n, P3917767134555564144.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P1884209178384347914

`filter[A372894(n+1), A359549(#)]`
-/

namespace A359580.P1884209178384347914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P1884209178384347914

namespace A359580

/-- `filter[A372894(n+1), A359549(#)]` -/
def P1884209178384347914.Spec : Prop :=
  ∀ n, P1884209178384347914.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P245655819670212687

`filter[A155562(n+2), A359549(#)]`
-/

namespace A359580.P245655819670212687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P245655819670212687

namespace A359580

/-- `filter[A155562(n+2), A359549(#)]` -/
def P245655819670212687.Spec : Prop :=
  ∀ n, P245655819670212687.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P13862375469296301331

`filter[A392696(n+1), A359549(#)]`
-/

namespace A359580.P13862375469296301331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P13862375469296301331

namespace A359580

/-- `filter[A392696(n+1), A359549(#)]` -/
def P13862375469296301331.Spec : Prop :=
  ∀ n, P13862375469296301331.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P15282662090537773478

`filter[A305903(n+1), A359549(#)]`
-/

namespace A359580.P15282662090537773478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P15282662090537773478

namespace A359580

/-- `filter[A305903(n+1), A359549(#)]` -/
def P15282662090537773478.Spec : Prop :=
  ∀ n, P15282662090537773478.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P17254201877175433618

`filter[A305801(n+1), A359549(#)]`
-/

namespace A359580.P17254201877175433618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P17254201877175433618

namespace A359580

/-- `filter[A305801(n+1), A359549(#)]` -/
def P17254201877175433618.Spec : Prop :=
  ∀ n, P17254201877175433618.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P3981660468854634500

`filter[A305900(n+1), A359549(#)]`
-/

namespace A359580.P3981660468854634500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P3981660468854634500

namespace A359580

/-- `filter[A305900(n+1), A359549(#)]` -/
def P3981660468854634500.Spec : Prop :=
  ∀ n, P3981660468854634500.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P14972751692043415733

`filter[A319350(n+1), A359549(#)]`
-/

namespace A359580.P14972751692043415733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P14972751692043415733

namespace A359580

/-- `filter[A319350(n+1), A359549(#)]` -/
def P14972751692043415733.Spec : Prop :=
  ∀ n, P14972751692043415733.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P9139739559352331168

`filter[A319704(n+1), A359549(#)]`
-/

namespace A359580.P9139739559352331168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P9139739559352331168

namespace A359580

/-- `filter[A319704(n+1), A359549(#)]` -/
def P9139739559352331168.Spec : Prop :=
  ∀ n, P9139739559352331168.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P12058774658787542535

`filter[A319707(n+1), A359549(#)]`
-/

namespace A359580.P12058774658787542535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P12058774658787542535

namespace A359580

/-- `filter[A319707(n+1), A359549(#)]` -/
def P12058774658787542535.Spec : Prop :=
  ∀ n, P12058774658787542535.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P14280616587787366265

`filter[A305901(n+1), A359549(#)]`
-/

namespace A359580.P14280616587787366265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P14280616587787366265

namespace A359580

/-- `filter[A305901(n+1), A359549(#)]` -/
def P14280616587787366265.Spec : Prop :=
  ∀ n, P14280616587787366265.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P10965648763953773213

`filter[A318500(n+1), A359549(#)]`
-/

namespace A359580.P10965648763953773213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P10965648763953773213

namespace A359580

/-- `filter[A318500(n+1), A359549(#)]` -/
def P10965648763953773213.Spec : Prop :=
  ∀ n, P10965648763953773213.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P18286216152608944848

`filter[A324401(n+1), A359549(#)]`
-/

namespace A359580.P18286216152608944848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P18286216152608944848

namespace A359580

/-- `filter[A324401(n+1), A359549(#)]` -/
def P18286216152608944848.Spec : Prop :=
  ∀ n, P18286216152608944848.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P17031749585625498981

`filter[A305902(n+1), A359549(#)]`
-/

namespace A359580.P17031749585625498981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P17031749585625498981

namespace A359580

/-- `filter[A305902(n+1), A359549(#)]` -/
def P17031749585625498981.Spec : Prop :=
  ∀ n, P17031749585625498981.a n = A359580 (n + 1)

end A359580

/-! ## A359580.P15504481744950243613

`filter[A046711(n+1), A359549(#)]`
-/

namespace A359580.P15504481744950243613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359549 (f1 j).toNat = 1) n)

end

end A359580.P15504481744950243613

namespace A359580

/-- `filter[A046711(n+1), A359549(#)]` -/
def P15504481744950243613.Spec : Prop :=
  ∀ n, P15504481744950243613.a n = A359580 (n + 1)

end A359580

/-!
# A359581: a(n) = (-1)^A329697(n).

The programs for A359581, the canonical program `A359581.P11413063305080841777` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359581 has offset 1).

The definition of A359581 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359581.P11413063305080841777

`(-1)^A329697(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359581

/-- `(-1)^A329697(n+1)` -/
def P11413063305080841777.Spec : Prop :=
  ∀ n, P11413063305080841777.a n = (A359581 (n + 1) : ℚ)

end A359581

/-! ## A359581.P8630936241896228925

`1-2*A359583(n+1)`
-/

namespace A359581.P8630936241896228925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A359583 (n + 1)

end

end A359581.P8630936241896228925

namespace A359581

/-- `1-2*A359583(n+1)` -/
def P8630936241896228925.Spec : Prop :=
  ∀ n, P8630936241896228925.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P14254879839754038442

`2*A073934(n+1)%2-1`
-/

namespace A359581.P14254879839754038442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A073934 (n + 1)) 2 - 1

end

end A359581.P14254879839754038442

namespace A359581

/-- `2*A073934(n+1)%2-1` -/
def P14254879839754038442.Spec : Prop :=
  ∀ n, P14254879839754038442.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P18386176243440773461

`A033999(A329697(n+1))`
-/

namespace A359581.P18386176243440773461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A329697 (n + 1)).toNat

end

end A359581.P18386176243440773461

namespace A359581

/-- `A033999(A329697(n+1))` -/
def P18386176243440773461.Spec : Prop :=
  ∀ n, P18386176243440773461.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P1820553756012548435

`A087960(A329697(n+1)²)`
-/

namespace A359581.P1820553756012548435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A329697 (n + 1) ^ 2).toNat

end

end A359581.P1820553756012548435

namespace A359581

/-- `A087960(A329697(n+1)²)` -/
def P1820553756012548435.Spec : Prop :=
  ∀ n, P1820553756012548435.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P8357561060085593894

`A165326(A329697(n+1)+1)`
-/

namespace A359581.P8357561060085593894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A329697 (n + 1) + 1).toNat

end

end A359581.P8357561060085593894

namespace A359581

/-- `A165326(A329697(n+1)+1)` -/
def P8357561060085593894.Spec : Prop :=
  ∀ n, P8357561060085593894.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P2845589849258826347

`A087960(2*A329697(n+1))`
-/

namespace A359581.P2845589849258826347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * A329697 (n + 1)).toNat

end

end A359581.P2845589849258826347

namespace A359581

/-- `A087960(2*A329697(n+1))` -/
def P2845589849258826347.Spec : Prop :=
  ∀ n, P2845589849258826347.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P1905270089978248451

`∑{d}[n+1, A008683(#)*A359586((n+1)/#)]`
-/

namespace A359581.P1905270089978248451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359586 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359581.P1905270089978248451

namespace A359581

/-- `∑{d}[n+1, A008683(#)*A359586((n+1)/#)]` -/
def P1905270089978248451.Spec : Prop :=
  ∀ n, P1905270089978248451.a n = A359581 (n + 1)

end A359581

/-! ## A359581.P12765975793740246883

`A062157(A073934(n+1))`
-/

namespace A359581.P12765975793740246883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A073934 (n + 1)).toNat

end

end A359581.P12765975793740246883

namespace A359581

/-- `A062157(A073934(n+1))` -/
def P12765975793740246883.Spec : Prop :=
  ∀ n, P12765975793740246883.a n = A359581 (n + 1)

end A359581

/-!
# A359582: a(n) is the least prime > a(n-2) such that a(n-1)+a(n) is a square.

The programs for A359582, there is no canonical definition to state claims against.
-/

/-! ## A359582.P11825563776988519568

`A062064(gcd(n, A332478(n+1)))`
-/

namespace A359582.P11825563776988519568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062064 (Int.gcd (n : ℤ) (A332478 (n + 1)))

end

end A359582.P11825563776988519568

/-! ## A359582.P12778729079266126119

`A083016(C(A002449(n), 4^n)+n)`
-/

namespace A359582.P12778729079266126119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083016 (Nat.choose (A002449 n).toNat (4 ^ n) + n)

end

end A359582.P12778729079266126119

/-! ## A359582.P12400908523443268831

`A083016(C(A002110(n), A006451(n)²)+n)`
-/

namespace A359582.P12400908523443268831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083016 (Nat.choose (A002110 n).toNat (A006451 n ^ 2).toNat + n)

end

end A359582.P12400908523443268831

/-!
# A359583: Parity of A329697.

The programs for A359583, the canonical program `A359583.P16521673374742263581` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359583 has offset 1).

The definition of A359583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359583.P16521673374742263581

`A329697(n+1)%2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359583

/-- `A329697(n+1)%2` -/
def P16521673374742263581.Spec : Prop :=
  ∀ n, P16521673374742263581.a n = A359583 (n + 1)

theorem P16521673374742263581.correct : P16521673374742263581.Spec := by
  intro n
  simp only [A359583, Nat.add_sub_cancel]

end A359583

/-! ## A359583.P11381338869465099209

`A000035(A329697(n+1))`
-/

namespace A359583.P11381338869465099209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A329697 (n + 1)).toNat

end

end A359583.P11381338869465099209

namespace A359583

/-- `A000035(A329697(n+1))` -/
def P11381338869465099209.Spec : Prop :=
  ∀ n, P11381338869465099209.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P693660578192337802

`∑[A334091(n+1)]%2`
-/

namespace A359583.P693660578192337802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A359583.P693660578192337802

namespace A359583

/-- `∑[A334091(n+1)]%2` -/
def P693660578192337802.Spec : Prop :=
  ∀ n, P693660578192337802.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P11831532050770933398

`(1-A359581(n+1))/2`
-/

namespace A359583.P11831532050770933398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A359581 (n + 1) : ℚ) / 2

end

end A359583.P11831532050770933398

namespace A359583

/-- `(1-A359581(n+1))/2` -/
def P11831532050770933398.Spec : Prop :=
  ∀ n, P11831532050770933398.a n = (A359583 (n + 1) : ℚ)

end A359583

/-! ## A359583.P7226304072306452357

`(A073934(n+1)+1)%2`
-/

namespace A359583.P7226304072306452357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073934 (n + 1) + 1) 2

end

end A359583.P7226304072306452357

namespace A359583

/-- `(A073934(n+1)+1)%2` -/
def P7226304072306452357.Spec : Prop :=
  ∀ n, P7226304072306452357.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P10070760015743279944

`and(1, A329697(2*(n+1)))`
-/

namespace A359583.P10070760015743279944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A329697 (2 * (n + 1)))

end

end A359583.P10070760015743279944

namespace A359583

/-- `and(1, A329697(2*(n+1)))` -/
def P10070760015743279944.Spec : Prop :=
  ∀ n, P10070760015743279944.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P10404230130134429172

`A098725(A329697(n+1)²)`
-/

namespace A359583.P10404230130134429172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A329697 (n + 1) ^ 2).toNat

end

end A359583.P10404230130134429172

namespace A359583

/-- `A098725(A329697(n+1)²)` -/
def P10404230130134429172.Spec : Prop :=
  ∀ n, P10404230130134429172.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P7224904236649425563

`A059841(A329697(n+1)+1)`
-/

namespace A359583.P7224904236649425563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A329697 (n + 1) + 1).toNat

end

end A359583.P7224904236649425563

namespace A359583

/-- `A059841(A329697(n+1)+1)` -/
def P7224904236649425563.Spec : Prop :=
  ∀ n, P7224904236649425563.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P6126376638781919409

`and(A043545(n), A061373(n+1))`
-/

namespace A359583.P6126376638781919409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043545 n) (A061373 (n + 1))

end

end A359583.P6126376638781919409

namespace A359583

/-- `and(A043545(n), A061373(n+1))` -/
def P6126376638781919409.Spec : Prop :=
  ∀ n, P6126376638781919409.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P10454143407007757022

`and(A054977(n), A061373(n+1))`
-/

namespace A359583.P10454143407007757022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A061373 (n + 1))

end

end A359583.P10454143407007757022

namespace A359583

/-- `and(A054977(n), A061373(n+1))` -/
def P10454143407007757022.Spec : Prop :=
  ∀ n, P10454143407007757022.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P4656966837127189337

`and(A057427(n), A061373(n+1))`
-/

namespace A359583.P4656966837127189337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A061373 (n + 1))

end

end A359583.P4656966837127189337

namespace A359583

/-- `and(A057427(n), A061373(n+1))` -/
def P4656966837127189337.Spec : Prop :=
  ∀ n, P4656966837127189337.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P2104601044246657289

`and(A061373(n+1), A157928(n))`
-/

namespace A359583.P2104601044246657289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061373 (n + 1)) (A157928 n)

end

end A359583.P2104601044246657289

namespace A359583

/-- `and(A061373(n+1), A157928(n))` -/
def P2104601044246657289.Spec : Prop :=
  ∀ n, P2104601044246657289.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P11691891214439209800

`A124762(A329697(n+1)²+2)`
-/

namespace A359583.P11691891214439209800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A329697 (n + 1) ^ 2 + 2).toNat

end

end A359583.P11691891214439209800

namespace A359583

/-- `A124762(A329697(n+1)²+2)` -/
def P11691891214439209800.Spec : Prop :=
  ∀ n, P11691891214439209800.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P9748866315098701125

`and(1, A335877(n+1)+A331410(n+1))`
-/

namespace A359583.P9748866315098701125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A335877 (n + 1) + A331410 (n + 1))

end

end A359583.P9748866315098701125

namespace A359583

/-- `and(1, A335877(n+1)+A331410(n+1))` -/
def P9748866315098701125.Spec : Prop :=
  ∀ n, P9748866315098701125.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P13645510812544610874

`A139128(A020639(A061373(n+1)))`
-/

namespace A359583.P13645510812544610874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139128 (A020639 (A061373 (n + 1)).toNat).toNat

end

end A359583.P13645510812544610874

namespace A359583

/-- `A139128(A020639(A061373(n+1)))` -/
def P13645510812544610874.Spec : Prop :=
  ∀ n, P13645510812544610874.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P4545047978461724543

`and(1, A061373(2*(n+1)))`
-/

namespace A359583.P4545047978461724543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061373 (2 * (n + 1)))

end

end A359583.P4545047978461724543

namespace A359583

/-- `and(1, A061373(2*(n+1)))` -/
def P4545047978461724543.Spec : Prop :=
  ∀ n, P4545047978461724543.a n = A359583 (n + 1)

end A359583

/-! ## A359583.P11876824017452057171

`A059841(A073934(n+1))`
-/

namespace A359583.P11876824017452057171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A073934 (n + 1)).toNat

end

end A359583.P11876824017452057171

namespace A359583

/-- `A059841(A073934(n+1))` -/
def P11876824017452057171.Spec : Prop :=
  ∀ n, P11876824017452057171.a n = A359583 (n + 1)

end A359583

/-!
# A359584: Positions of odd terms in A329697.

The programs for A359584, the canonical program `A359584.P4554964889830595715` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359584 has offset 1).

The definition of A359584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359584.P4554964889830595715

`eq[1, A359583(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359584

/-- `eq[1, A359583(n+1)]+1` -/
def P4554964889830595715.Spec : Prop :=
  ∀ n, (P4554964889830595715.a n : ℤ) = A359584 (n + 1)

theorem P4554964889830595715.correct : P4554964889830595715.Spec := by
  intro n
  simp only [A359584, Nat.add_sub_cancel]

end A359584

/-! ## A359584.P3222449389639206976

`lt[0, A329697(n+1)%2]+1`
-/

namespace A359584.P3222449389639206976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329697 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359584.P3222449389639206976

namespace A359584

/-- `lt[0, A329697(n+1)%2]+1` -/
def P3222449389639206976.Spec : Prop :=
  ∀ n, (P3222449389639206976.a n : ℤ) = A359584 (n + 1)

end A359584

/-! ## A359584.P6564910241654214991

`filter[A344180(n), A359583(#)]`
-/

namespace A359584.P6564910241654214991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P6564910241654214991

namespace A359584

/-- `filter[A344180(n), A359583(#)]` -/
def P6564910241654214991.Spec : Prop :=
  ∀ n, P6564910241654214991.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P1531274826526674939

`lt[A359581(n+1), 0]+1`
-/

namespace A359584.P1531274826526674939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359581 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359584.P1531274826526674939

namespace A359584

/-- `lt[A359581(n+1), 0]+1` -/
def P1531274826526674939.Spec : Prop :=
  ∀ n, (P1531274826526674939.a n : ℤ) = A359584 (n + 1)

end A359584

/-! ## A359584.P879605662941521421

`lt[A359581(n-2%a(n-1)), 0]` with `a(0)=2`
-/

namespace A359584.P879605662941521421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A359581 ((n : ℤ) - Int.tmod 2 (f1 (n - 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359584.P879605662941521421

namespace A359584

/-- `lt[A359581(n-2%a(n-1)), 0]` -/
def P879605662941521421.Spec : Prop :=
  ∀ n, (P879605662941521421.a n : ℤ) = A359584 (n + 1)

end A359584

/-! ## A359584.P5716534328209165466

`filter[A376573(n+1), A359583(#)]`
-/

namespace A359584.P5716534328209165466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P5716534328209165466

namespace A359584

/-- `filter[A376573(n+1), A359583(#)]` -/
def P5716534328209165466.Spec : Prop :=
  ∀ n, P5716534328209165466.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P2612241288844371273

`filter[A028983(n+1), A359583(#)]`
-/

namespace A359584.P2612241288844371273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P2612241288844371273

namespace A359584

/-- `filter[A028983(n+1), A359583(#)]` -/
def P2612241288844371273.Spec : Prop :=
  ∀ n, P2612241288844371273.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P18204472318993818717

`filter[A000037(n+1), A359583(#)]`
-/

namespace A359584.P18204472318993818717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P18204472318993818717

namespace A359584

/-- `filter[A000037(n+1), A359583(#)]` -/
def P18204472318993818717.Spec : Prop :=
  ∀ n, P18204472318993818717.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P8131084859762870403

`filter[A164514(n+1), A359583(#)]`
-/

namespace A359584.P8131084859762870403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P8131084859762870403

namespace A359584

/-- `filter[A164514(n+1), A359583(#)]` -/
def P8131084859762870403.Spec : Prop :=
  ∀ n, P8131084859762870403.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P8552334991519625091

`filter[A386267(n+1), A359583(#)]`
-/

namespace A359584.P8552334991519625091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P8552334991519625091

namespace A359584

/-- `filter[A386267(n+1), A359583(#)]` -/
def P8552334991519625091.Spec : Prop :=
  ∀ n, P8552334991519625091.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P17858345196459911091

`filter[A183300(n+1), A359583(#)]`
-/

namespace A359584.P17858345196459911091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P17858345196459911091

namespace A359584

/-- `filter[A183300(n+1), A359583(#)]` -/
def P17858345196459911091.Spec : Prop :=
  ∀ n, P17858345196459911091.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P10037128955193554582

`filter[A213367(n+1), A359583(#)]`
-/

namespace A359584.P10037128955193554582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P10037128955193554582

namespace A359584

/-- `filter[A213367(n+1), A359583(#)]` -/
def P10037128955193554582.Spec : Prop :=
  ∀ n, P10037128955193554582.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P9184953212409127934

`filter[A057716(n+1), A359583(#)]`
-/

namespace A359584.P9184953212409127934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P9184953212409127934

namespace A359584

/-- `filter[A057716(n+1), A359583(#)]` -/
def P9184953212409127934.Spec : Prop :=
  ∀ n, P9184953212409127934.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P13478751876873728499

`filter[A138591(n+1), A359583(#)]`
-/

namespace A359584.P13478751876873728499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P13478751876873728499

namespace A359584

/-- `filter[A138591(n+1), A359583(#)]` -/
def P13478751876873728499.Spec : Prop :=
  ∀ n, P13478751876873728499.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P8714041973181670516

`filter[A163162(n+1), A359583(#)]`
-/

namespace A359584.P8714041973181670516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P8714041973181670516

namespace A359584

/-- `filter[A163162(n+1), A359583(#)]` -/
def P8714041973181670516.Spec : Prop :=
  ∀ n, P8714041973181670516.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P5564450671056363586

`eq[1, ∑[A334091(n+1)]%2]+1`
-/

namespace A359584.P5564450671056363586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359584.P5564450671056363586

namespace A359584

/-- `eq[1, ∑[A334091(n+1)]%2]+1` -/
def P5564450671056363586.Spec : Prop :=
  ∀ n, (P5564450671056363586.a n : ℤ) = A359584 (n + 1)

end A359584

/-! ## A359584.P5754308691767061067

`filter[A143051(n+1), A359583(#)]`
-/

namespace A359584.P5754308691767061067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P5754308691767061067

namespace A359584

/-- `filter[A143051(n+1), A359583(#)]` -/
def P5754308691767061067.Spec : Prop :=
  ∀ n, P5754308691767061067.a n = A359584 (n + 1)

end A359584

/-! ## A359584.P18053320621037958866

`eq[1, and(A008349(n), A329697(n+1))]+1`
-/

namespace A359584.P18053320621037958866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A329697 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359584.P18053320621037958866

namespace A359584

/-- `eq[1, and(A008349(n), A329697(n+1))]+1` -/
def P18053320621037958866.Spec : Prop :=
  ∀ n, (P18053320621037958866.a n : ℤ) = A359584 (n + 1)

end A359584

/-! ## A359584.P12491739725601089782

`filter[A103354(n+1), A359583(#)]`
-/

namespace A359584.P12491739725601089782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359583 (f1 j).toNat = 1) n)

end

end A359584.P12491739725601089782

namespace A359584

/-- `filter[A103354(n+1), A359583(#)]` -/
def P12491739725601089782.Spec : Prop :=
  ∀ n, P12491739725601089782.a n = A359584 (n + 1)

end A359584

/-!
# A359585: Positions of even terms in A329697.

The programs for A359585, the canonical program `A359585.P8054096044166302466` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359585 has offset 1).

The definition of A359585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359585.P8054096044166302466

`eq[0, A359583(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359585

/-- `eq[0, A359583(n+1)]+1` -/
def P8054096044166302466.Spec : Prop :=
  ∀ n, (P8054096044166302466.a n : ℤ) = A359585 (n + 1)

theorem P8054096044166302466.correct : P8054096044166302466.Spec := by
  intro n
  simp only [A359585, Nat.add_sub_cancel]

end A359585

/-! ## A359585.P15657022060027680580

`comp[(n+3)*A359583(n+3)]`
-/

namespace A359585.P15657022060027680580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A359583 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359585.P15657022060027680580

namespace A359585

/-- `comp[(n+3)*A359583(n+3)]` -/
def P15657022060027680580.Spec : Prop :=
  ∀ n, (P15657022060027680580.a n : ℤ) = A359585 (n + 1)

end A359585

/-! ## A359585.P347409929552763614

`lt[A359583(2*(n+1)), 1]+1`
-/

namespace A359585.P347409929552763614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359583 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359585.P347409929552763614

namespace A359585

/-- `lt[A359583(2*(n+1)), 1]+1` -/
def P347409929552763614.Spec : Prop :=
  ∀ n, (P347409929552763614.a n : ℤ) = A359585 (n + 1)

end A359585

/-! ## A359585.P1966231297330739320

`eq[0, A329697(n+1)%2]+1`
-/

namespace A359585.P1966231297330739320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329697 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359585.P1966231297330739320

namespace A359585

/-- `eq[0, A329697(n+1)%2]+1` -/
def P1966231297330739320.Spec : Prop :=
  ∀ n, (P1966231297330739320.a n : ℤ) = A359585 (n + 1)

end A359585

/-! ## A359585.P16406485865972191483

`eq[1, A359581(n+1)]+1`
-/

namespace A359585.P16406485865972191483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359585.P16406485865972191483

namespace A359585

/-- `eq[1, A359581(n+1)]+1` -/
def P16406485865972191483.Spec : Prop :=
  ∀ n, (P16406485865972191483.a n : ℤ) = A359585 (n + 1)

end A359585

/-! ## A359585.P953254233462590047

`eq[1, A359581(lcm(n, a(n-1)))]` with `a(0)=2`
-/

namespace A359585.P953254233462590047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A359581 (Int.lcm (n : ℤ) (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359585.P953254233462590047

namespace A359585

/-- `eq[1, A359581(lcm(n, a(n-1)))]` -/
def P953254233462590047.Spec : Prop :=
  ∀ n, (P953254233462590047.a n : ℤ) = A359585 (n + 1)

end A359585

/-! ## A359585.P3267492565733219216

`lt[A359581(3*(n+1)), 0]+1`
-/

namespace A359585.P3267492565733219216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359581 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359585.P3267492565733219216

namespace A359585

/-- `lt[A359581(3*(n+1)), 0]+1` -/
def P3267492565733219216.Spec : Prop :=
  ∀ n, (P3267492565733219216.a n : ℤ) = A359585 (n + 1)

end A359585

/-!
# A359586: Inverse Möbius transform of A359581.

The programs for A359586, the canonical program `A359586.P7786742167987967420` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359586 has offset 1).

The definition of A359586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359581, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359586.P7786742167987967420

`∑{d}[n+1, A359581(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359586

/-- `∑{d}[n+1, A359581(#)]` -/
def P7786742167987967420.Spec : Prop :=
  ∀ n, P7786742167987967420.a n = A359586 (n + 1)

theorem P7786742167987967420.correct : P7786742167987967420.Spec := by
  intro n
  simp only [A359586, Nat.add_sub_cancel]

end A359586

/-! ## A359586.P13966227419091790068

`A035205(n+1)%A319698(A064125(2*(n+2)))`
-/

namespace A359586.P13966227419091790068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035205 (n + 1)) (A319698 (A064125 (2 * (n + 2))).toNat)

end

end A359586.P13966227419091790068

namespace A359586

/-- `A035205(n+1)%A319698(A064125(2*(n+2)))` -/
def P13966227419091790068.Spec : Prop :=
  ∀ n, P13966227419091790068.a n = A359586 (n + 1)

end A359586

/-! ## A359586.P8057788894596496279

`A035160(A211413(n+1))*A035205(n+1)`
-/

namespace A359586.P8057788894596496279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035160 (A211413 (n + 1)).toNat * A035205 (n + 1)

end

end A359586.P8057788894596496279

namespace A359586

/-- `A035160(A211413(n+1))*A035205(n+1)` -/
def P8057788894596496279.Spec : Prop :=
  ∀ n, P8057788894596496279.a n = A359586 (n + 1)

end A359586

/-! ## A359586.P3606013313994766929

`A035205(n+1)%A036263(A175752(n+1))`
-/

namespace A359586.P3606013313994766929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035205 (n + 1)) (A036263 (A175752 (n + 1)).toNat)

end

end A359586.P3606013313994766929

namespace A359586

/-- `A035205(n+1)%A036263(A175752(n+1))` -/
def P3606013313994766929.Spec : Prop :=
  ∀ n, P3606013313994766929.a n = A359586 (n + 1)

end A359586

/-! ## A359586.P6503784700594542702

`C(A035205(n+1), A103185(A158558(n)))`
-/

namespace A359586.P6503784700594542702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035205 (n + 1)).toNat (A103185 (A158558 n).toNat).toNat

end

end A359586.P6503784700594542702

namespace A359586

/-- `C(A035205(n+1), A103185(A158558(n)))` -/
def P6503784700594542702.Spec : Prop :=
  ∀ n, (P6503784700594542702.a n : ℤ) = A359586 (n + 1)

end A359586

/-!
# A359587: Fully multiplicative with a(p) = A008578(1+A329697(p)).

The programs for A359587, there is no canonical definition to state claims against.
-/

/-! ## A359587.P15652815725375556740

`A318451(n+1)+A188169(A000032(n))`
-/

namespace A359587.P15652815725375556740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1) + A188169 (A000032 n).toNat

end

end A359587.P15652815725375556740

/-! ## A359587.P9928743188377697340

`A000120(((n+1)²/∏{p}[n+1, #])^A115622(2*n+5))`
-/

namespace A359587.P9928743188377697340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (A115622 (2 * n + 5) : ℤ))).toNat

end

end A359587.P9928743188377697340

/-! ## A359587.P11682087844610786298

`A322976(A023896(n+1)%A141273(n+1))`
-/

namespace A359587.P11682087844610786298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 (Int.tmod (A023896 (n + 1)) (A141273 (n + 1))).toNat

end

end A359587.P11682087844610786298

/-!
# A359589: Dirichlet inverse of function f(n) = (-1 + gcd(A003415(n), A276086(n))), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A359589, there is no canonical definition to state claims against.
-/

/-! ## A359589.P927586907747685713

`A205479(A068873(n+1))-A327858(n+1)`
-/

namespace A359589.P927586907747685713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205479 (A068873 (n + 1)).toNat - A327858 (n + 1)

end

end A359589.P927586907747685713

/-!
# A359590: Absolute values of A355690, where A355690 is the Dirichlet inverse of the characteristic function of numbers not congruent to 2 mod 4.

The programs for A359590, the canonical program `A359590.P10814553005928793103` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359590 has offset 1).

The definition of A359590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359590.P15434113907017275269

`abs(A355690(n+1))`
-/

namespace A359590.P15434113907017275269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355690 (n + 1)|

end

end A359590.P15434113907017275269

namespace A359590

/-- `abs(A355690(n+1))` -/
def P15434113907017275269.Spec : Prop :=
  ∀ n, P15434113907017275269.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P10604258807404346659

`A359605(n+1)+A359606(n+1)`
-/

namespace A359590.P10604258807404346659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 (n + 1) + A359606 (n + 1)

end

end A359590.P10604258807404346659

namespace A359590

/-- `A359605(n+1)+A359606(n+1)` -/
def P10604258807404346659.Spec : Prop :=
  ∀ n, P10604258807404346659.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P10814553005928793103

`A359834(4*(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359590

/-- `A359834(4*(n+1))` -/
def P10814553005928793103.Spec : Prop :=
  ∀ n, P10814553005928793103.a n = A359590 (n + 1)

theorem P10814553005928793103.correct : P10814553005928793103.Spec := by
  intro n
  simp only [A359590, Nat.add_sub_cancel]

end A359590

/-! ## A359590.P2888050938618045525

`A359604(n+1)%2`
-/

namespace A359590.P2888050938618045525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359604 (n + 1)) 2

end

end A359590.P2888050938618045525

namespace A359590

/-- `A359604(n+1)%2` -/
def P2888050938618045525.Spec : Prop :=
  ∀ n, P2888050938618045525.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P11147504422218566102

`and(1, A359603(n+1))`
-/

namespace A359590.P11147504422218566102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359603 (n + 1))

end

end A359590.P11147504422218566102

namespace A359590

/-- `and(1, A359603(n+1))` -/
def P11147504422218566102.Spec : Prop :=
  ∀ n, P11147504422218566102.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P2280322739158668800

`A355690(lcm(3, n+1))²`
-/

namespace A359590.P2280322739158668800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (Nat.lcm 3 (n + 1)) ^ 2

end

end A359590.P2280322739158668800

namespace A359590

/-- `A355690(lcm(3, n+1))²` -/
def P2280322739158668800.Spec : Prop :=
  ∀ n, P2280322739158668800.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P12070170724136074561

`A000035(A359604(n+1))`
-/

namespace A359590.P12070170724136074561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359604 (n + 1)).toNat

end

end A359590.P12070170724136074561

namespace A359590

/-- `A000035(A359604(n+1))` -/
def P12070170724136074561.Spec : Prop :=
  ∀ n, P12070170724136074561.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P17712075145880238990

`A166486(A359604(n+1)²)`
-/

namespace A359590.P17712075145880238990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A359604 (n + 1) ^ 2).toNat

end

end A359590.P17712075145880238990

namespace A359590

/-- `A166486(A359604(n+1)²)` -/
def P17712075145880238990.Spec : Prop :=
  ∀ n, P17712075145880238990.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P8860595138360602490

`A059841(A359604(n+1)+1)`
-/

namespace A359590.P8860595138360602490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A359604 (n + 1) + 1).toNat

end

end A359590.P8860595138360602490

namespace A359590

/-- `A059841(A359604(n+1)+1)` -/
def P8860595138360602490.Spec : Prop :=
  ∀ n, P8860595138360602490.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P12094419750452278201

`A166486(2*A359604(n+1))`
-/

namespace A359590.P12094419750452278201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * A359604 (n + 1)).toNat

end

end A359590.P12094419750452278201

namespace A359590

/-- `A166486(2*A359604(n+1))` -/
def P12094419750452278201.Spec : Prop :=
  ∀ n, P12094419750452278201.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P1438079066000979928

`gcd(A000038(n), A355690(n+1))`
-/

namespace A359590.P1438079066000979928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A355690 (n + 1))

end

end A359590.P1438079066000979928

namespace A359590

/-- `gcd(A000038(n), A355690(n+1))` -/
def P1438079066000979928.Spec : Prop :=
  ∀ n, (P1438079066000979928.a n : ℤ) = A359590 (n + 1)

end A359590

/-! ## A359590.P10675077443264870477

`lcm(A020985(n), A355690(n+1))`
-/

namespace A359590.P10675077443264870477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A355690 (n + 1))

end

end A359590.P10675077443264870477

namespace A359590

/-- `lcm(A020985(n), A355690(n+1))` -/
def P10675077443264870477.Spec : Prop :=
  ∀ n, (P10675077443264870477.a n : ℤ) = A359590 (n + 1)

end A359590

/-! ## A359590.P2511231766452069136

`and(A060576(n), A355690(n+1))`
-/

namespace A359590.P2511231766452069136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A355690 (n + 1))

end

end A359590.P2511231766452069136

namespace A359590

/-- `and(A060576(n), A355690(n+1))` -/
def P2511231766452069136.Spec : Prop :=
  ∀ n, P2511231766452069136.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P17771059854912925632

`and(A060576(n), A359604(n+1))`
-/

namespace A359590.P17771059854912925632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A359604 (n + 1))

end

end A359590.P17771059854912925632

namespace A359590

/-- `and(A060576(n), A359604(n+1))` -/
def P17771059854912925632.Spec : Prop :=
  ∀ n, P17771059854912925632.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P6609351140964996254

`and(A076338(n), A359604(n+1))`
-/

namespace A359590.P6609351140964996254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076338 n) (A359604 (n + 1))

end

end A359590.P6609351140964996254

namespace A359590

/-- `and(A076338(n), A359604(n+1))` -/
def P6609351140964996254.Spec : Prop :=
  ∀ n, P6609351140964996254.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P5859444123941028588

`and(A158388(n), A355690(n+1))`
-/

namespace A359590.P5859444123941028588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A355690 (n + 1))

end

end A359590.P5859444123941028588

namespace A359590

/-- `and(A158388(n), A355690(n+1))` -/
def P5859444123941028588.Spec : Prop :=
  ∀ n, P5859444123941028588.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P4556806092051353162

`and(A158388(n), A359604(n+1))`
-/

namespace A359590.P4556806092051353162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A359604 (n + 1))

end

end A359590.P4556806092051353162

namespace A359590

/-- `and(A158388(n), A359604(n+1))` -/
def P4556806092051353162.Spec : Prop :=
  ∀ n, P4556806092051353162.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P18052467322212884363

`and(A158686(n), A359604(n+1))`
-/

namespace A359590.P18052467322212884363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158686 n) (A359604 (n + 1))

end

end A359590.P18052467322212884363

namespace A359590

/-- `and(A158686(n), A359604(n+1))` -/
def P18052467322212884363.Spec : Prop :=
  ∀ n, P18052467322212884363.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P2675302351053186323

`and(A176563(n), A355690(n+1))`
-/

namespace A359590.P2675302351053186323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176563 n) (A355690 (n + 1))

end

end A359590.P2675302351053186323

namespace A359590

/-- `and(A176563(n), A355690(n+1))` -/
def P2675302351053186323.Spec : Prop :=
  ∀ n, P2675302351053186323.a n = A359590 (n + 1)

end A359590

/-! ## A359590.P9696436013961313992

`A355690(n+1)^A000010(n+1)`
-/

namespace A359590.P9696436013961313992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355690 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A359590.P9696436013961313992

namespace A359590

/-- `A355690(n+1)^A000010(n+1)` -/
def P9696436013961313992.Spec : Prop :=
  ∀ n, P9696436013961313992.a n = (A359590 (n + 1) : ℚ)

end A359590

/-!
# A359591: Dirichlet inverse of A035263, where A035263(n) is parity of 2-adic valuation of 2n.

The programs for A359591, the canonical program `A359591.P9068026625313844446` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359591 has offset 1).

The definition of A359591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359591.P9068026625313844446

`(A008683(n+1)+A086831(n+1))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359591

/-- `(A008683(n+1)+A086831(n+1))/2` -/
def P9068026625313844446.Spec : Prop :=
  ∀ n, P9068026625313844446.a n = (A359591 (n + 1) : ℚ)

end A359591

/-! ## A359591.P8791728083110232150

`(3*A008683(n+1)-A361019(n+1))/2`
-/

namespace A359591.P8791728083110232150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A008683 (n + 1) - A361019 (n + 1) : ℚ) / 2

end

end A359591.P8791728083110232150

namespace A359591

/-- `(3*A008683(n+1)-A361019(n+1))/2` -/
def P8791728083110232150.Spec : Prop :=
  ∀ n, P8791728083110232150.a n = (A359591 (n + 1) : ℚ)

end A359591

/-! ## A359591.P11334976098570213104

`∑{d}[n+1, A008683(#)*A019590((n+1)/#)]`
-/

namespace A359591.P11334976098570213104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A019590 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359591.P11334976098570213104

namespace A359591

/-- `∑{d}[n+1, A008683(#)*A019590((n+1)/#)]` -/
def P11334976098570213104.Spec : Prop :=
  ∀ n, P11334976098570213104.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P3690007880953182156

`A166698(A063659(n+1))`
-/

namespace A359591.P3690007880953182156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A063659 (n + 1)).toNat

end

end A359591.P3690007880953182156

namespace A359591

/-- `A166698(A063659(n+1))` -/
def P3690007880953182156.Spec : Prop :=
  ∀ n, P3690007880953182156.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P4510163063858767323

`A355690(n+1)%A010230(n)`
-/

namespace A359591.P4510163063858767323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355690 (n + 1)) (A010230 n)

end

end A359591.P4510163063858767323

namespace A359591

/-- `A355690(n+1)%A010230(n)` -/
def P4510163063858767323.Spec : Prop :=
  ∀ n, P4510163063858767323.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P9950879676943931897

`Δ[A000120(n)]*A092673(n+1)`
-/

namespace A359591.P9950879676943931897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A092673 (n + 1)

end

end A359591.P9950879676943931897

namespace A359591

/-- `Δ[A000120(n)]*A092673(n+1)` -/
def P9950879676943931897.Spec : Prop :=
  ∀ n, P9950879676943931897.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P9873358083241961253

`A353629(n+1)-A086823(n+1)`
-/

namespace A359591.P9873358083241961253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (n + 1) - A086823 (n + 1)

end

end A359591.P9873358083241961253

namespace A359591

/-- `A353629(n+1)-A086823(n+1)` -/
def P9873358083241961253.Spec : Prop :=
  ∀ n, P9873358083241961253.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P9177886333189761424

`A397787(n+1)-A397788(n+1)`
-/

namespace A359591.P9177886333189761424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397787 (n + 1) - A397788 (n + 1)

end

end A359591.P9177886333189761424

namespace A359591

/-- `A397787(n+1)-A397788(n+1)` -/
def P9177886333189761424.Spec : Prop :=
  ∀ n, P9177886333189761424.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P11571741068432116196

`A114643(n+1)*A129667(n+1)`
-/

namespace A359591.P11571741068432116196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (n + 1) * A129667 (n + 1)

end

end A359591.P11571741068432116196

namespace A359591

/-- `A114643(n+1)*A129667(n+1)` -/
def P11571741068432116196.Spec : Prop :=
  ∀ n, P11571741068432116196.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P13484911517880050588

`A064179(n+1)*A359592(n+1)`
-/

namespace A359591.P13484911517880050588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A359592 (n + 1)

end

end A359591.P13484911517880050588

namespace A359591

/-- `A064179(n+1)*A359592(n+1)` -/
def P13484911517880050588.Spec : Prop :=
  ∀ n, P13484911517880050588.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P1793200713718558484

`A076479(n+1)*A359592(n+1)`
-/

namespace A359591.P1793200713718558484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A359592 (n + 1)

end

end A359591.P1793200713718558484

namespace A359591

/-- `A076479(n+1)*A359592(n+1)` -/
def P1793200713718558484.Spec : Prop :=
  ∀ n, P1793200713718558484.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P8411060825618295569

`A114643(n+1)*A332732(n+1)`
-/

namespace A359591.P8411060825618295569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (n + 1) * A332732 (n + 1)

end

end A359591.P8411060825618295569

namespace A359591

/-- `A114643(n+1)*A332732(n+1)` -/
def P8411060825618295569.Spec : Prop :=
  ∀ n, P8411060825618295569.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P16489154360823603493

`A129667(n+1)*A359592(n+1)`
-/

namespace A359591.P16489154360823603493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (n + 1) * A359592 (n + 1)

end

end A359591.P16489154360823603493

namespace A359591

/-- `A129667(n+1)*A359592(n+1)` -/
def P16489154360823603493.Spec : Prop :=
  ∀ n, P16489154360823603493.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P9928367708587373185

`A189021(n+1)*A361984(n+1)`
-/

namespace A359591.P9928367708587373185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A361984 (n + 1)

end

end A359591.P9928367708587373185

namespace A359591

/-- `A189021(n+1)*A361984(n+1)` -/
def P9928367708587373185.Spec : Prop :=
  ∀ n, P9928367708587373185.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P5545999294202744985

`A212793(n+1)*A355690(n+1)`
-/

namespace A359591.P5545999294202744985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A355690 (n + 1)

end

end A359591.P5545999294202744985

namespace A359591

/-- `A212793(n+1)*A355690(n+1)` -/
def P5545999294202744985.Spec : Prop :=
  ∀ n, P5545999294202744985.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P17775664586180353776

`A257098(n+1)*A359592(n+1)`
-/

namespace A359591.P17775664586180353776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (n + 1) * A359592 (n + 1)

end

end A359591.P17775664586180353776

namespace A359591

/-- `A257098(n+1)*A359592(n+1)` -/
def P17775664586180353776.Spec : Prop :=
  ∀ n, P17775664586180353776.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P8541173189312371497

`A257099(n+1)*A359592(n+1)`
-/

namespace A359591.P8541173189312371497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257099 (n + 1) * A359592 (n + 1)

end

end A359591.P8541173189312371497

namespace A359591

/-- `A257099(n+1)*A359592(n+1)` -/
def P8541173189312371497.Spec : Prop :=
  ∀ n, P8541173189312371497.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P10006433361076425599

`A307427(n+1)*A359592(n+1)`
-/

namespace A359591.P10006433361076425599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (n + 1) * A359592 (n + 1)

end

end A359591.P10006433361076425599

namespace A359591

/-- `A307427(n+1)*A359592(n+1)` -/
def P10006433361076425599.Spec : Prop :=
  ∀ n, P10006433361076425599.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P10570980391693862374

`A307445(n+1)*A359592(n+1)`
-/

namespace A359591.P10570980391693862374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (n + 1) * A359592 (n + 1)

end

end A359591.P10570980391693862374

namespace A359591

/-- `A307445(n+1)*A359592(n+1)` -/
def P10570980391693862374.Spec : Prop :=
  ∀ n, P10570980391693862374.a n = A359591 (n + 1)

end A359591

/-! ## A359591.P16533050290854223544

`A332732(n+1)*A359592(n+1)`
-/

namespace A359591.P16533050290854223544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332732 (n + 1) * A359592 (n + 1)

end

end A359591.P16533050290854223544

namespace A359591

/-- `A332732(n+1)*A359592(n+1)` -/
def P16533050290854223544.Spec : Prop :=
  ∀ n, P16533050290854223544.a n = A359591 (n + 1)

end A359591

/-!
# A359592: Parity (and also absolute values) of Dirichlet inverse of A035263, where A035263(n) is parity of 2-adic valuation of 2n.

The programs for A359592, the canonical program `A359592.P9333331553555915030` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359592 has offset 1).

The definition of A359592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359592.P9333331553555915030

`abs(A359591(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359592

/-- `abs(A359591(n+1))` -/
def P9333331553555915030.Spec : Prop :=
  ∀ n, P9333331553555915030.a n = A359592 (n + 1)

theorem P9333331553555915030.correct : P9333331553555915030.Spec := by
  intro n
  simp only [A359592, Nat.add_sub_cancel]

end A359592

/-! ## A359592.P6105433005091147563

`and(1, Δ[A309288(n)])`
-/

namespace A359592.P6105433005091147563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A359592.P6105433005091147563

namespace A359592

/-- `and(1, Δ[A309288(n)])` -/
def P6105433005091147563.Spec : Prop :=
  ∀ n, P6105433005091147563.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P9792012830782273357

`A007431(n+1)%2`
-/

namespace A359592.P9792012830782273357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007431 (n + 1)) 2

end

end A359592.P9792012830782273357

namespace A359592

/-- `A007431(n+1)%2` -/
def P9792012830782273357.Spec : Prop :=
  ∀ n, P9792012830782273357.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P9569570960270908151

`A063659(n+1)%2`
-/

namespace A359592.P9569570960270908151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063659 (n + 1)) 2

end

end A359592.P9569570960270908151

namespace A359592

/-- `A063659(n+1)%2` -/
def P9569570960270908151.Spec : Prop :=
  ∀ n, P9569570960270908151.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P14714908789732760180

`A114643(n+1)%2`
-/

namespace A359592.P14714908789732760180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114643 (n + 1)) 2

end

end A359592.P14714908789732760180

namespace A359592

/-- `A114643(n+1)%2` -/
def P14714908789732760180.Spec : Prop :=
  ∀ n, P14714908789732760180.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P906630671761457816

`A160499(n+1)%2`
-/

namespace A359592.P906630671761457816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160499 (n + 1)) 2

end

end A359592.P906630671761457816

namespace A359592

/-- `A160499(n+1)%2` -/
def P906630671761457816.Spec : Prop :=
  ∀ n, P906630671761457816.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P16367373950760996013

`A296206(n+1)%2`
-/

namespace A359592.P16367373950760996013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296206 (n + 1)) 2

end

end A359592.P16367373950760996013

namespace A359592

/-- `A296206(n+1)%2` -/
def P16367373950760996013.Spec : Prop :=
  ∀ n, P16367373950760996013.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P9250855020031143740

`A307381(n+1)%2`
-/

namespace A359592.P9250855020031143740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307381 (n + 1)) 2

end

end A359592.P9250855020031143740

namespace A359592

/-- `A307381(n+1)%2` -/
def P9250855020031143740.Spec : Prop :=
  ∀ n, P9250855020031143740.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P4247124836150927253

`A321322(n+1)%2`
-/

namespace A359592.P4247124836150927253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321322 (n + 1)) 2

end

end A359592.P4247124836150927253

namespace A359592

/-- `A321322(n+1)%2` -/
def P4247124836150927253.Spec : Prop :=
  ∀ n, P4247124836150927253.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P13045356645868827334

`A329272(n+1)%2`
-/

namespace A359592.P13045356645868827334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329272 (n + 1)) 2

end

end A359592.P13045356645868827334

namespace A359592

/-- `A329272(n+1)%2` -/
def P13045356645868827334.Spec : Prop :=
  ∀ n, P13045356645868827334.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P9775131339386128785

`A345182(n+1)%2`
-/

namespace A359592.P9775131339386128785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345182 (n + 1)) 2

end

end A359592.P9775131339386128785

namespace A359592

/-- `A345182(n+1)%2` -/
def P9775131339386128785.Spec : Prop :=
  ∀ n, P9775131339386128785.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P16153248013136180180

`A386624(n+1)%2`
-/

namespace A359592.P16153248013136180180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386624 (n + 1)) 2

end

end A359592.P16153248013136180180

namespace A359592

/-- `A386624(n+1)%2` -/
def P16153248013136180180.Spec : Prop :=
  ∀ n, P16153248013136180180.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P13728635174524743171

`and(1, A092673(n+1))`
-/

namespace A359592.P13728635174524743171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A092673 (n + 1))

end

end A359592.P13728635174524743171

namespace A359592

/-- `and(1, A092673(n+1))` -/
def P13728635174524743171.Spec : Prop :=
  ∀ n, P13728635174524743171.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P10793758139571911160

`and(1, A341635(n+1))`
-/

namespace A359592.P10793758139571911160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A341635 (n + 1))

end

end A359592.P10793758139571911160

namespace A359592

/-- `and(1, A341635(n+1))` -/
def P10793758139571911160.Spec : Prop :=
  ∀ n, P10793758139571911160.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P5935858128213773238

`and(1, A359588(n+1))`
-/

namespace A359592.P5935858128213773238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359588 (n + 1))

end

end A359592.P5935858128213773238

namespace A359592

/-- `and(1, A359588(n+1))` -/
def P5935858128213773238.Spec : Prop :=
  ∀ n, P5935858128213773238.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P17967223051114717162

`and(1, A369700(n+1))`
-/

namespace A359592.P17967223051114717162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A369700 (n + 1))

end

end A359592.P17967223051114717162

namespace A359592

/-- `and(1, A369700(n+1))` -/
def P17967223051114717162.Spec : Prop :=
  ∀ n, P17967223051114717162.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P18130199677720716184

`A000035(A007431(n+1))`
-/

namespace A359592.P18130199677720716184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007431 (n + 1)).toNat

end

end A359592.P18130199677720716184

namespace A359592

/-- `A000035(A007431(n+1))` -/
def P18130199677720716184.Spec : Prop :=
  ∀ n, P18130199677720716184.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P18362761017839702089

`A000035(A063659(n+1))`
-/

namespace A359592.P18362761017839702089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A063659 (n + 1)).toNat

end

end A359592.P18362761017839702089

namespace A359592

/-- `A000035(A063659(n+1))` -/
def P18362761017839702089.Spec : Prop :=
  ∀ n, P18362761017839702089.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P1869009687248599

`A000035(A160499(n+1))`
-/

namespace A359592.P1869009687248599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A160499 (n + 1)).toNat

end

end A359592.P1869009687248599

namespace A359592

/-- `A000035(A160499(n+1))` -/
def P1869009687248599.Spec : Prop :=
  ∀ n, P1869009687248599.a n = A359592 (n + 1)

end A359592

/-! ## A359592.P10347276712634500138

`A023533(A235872(n+1))`
-/

namespace A359592.P10347276712634500138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A235872 (n + 1)).toNat

end

end A359592.P10347276712634500138

namespace A359592

/-- `A023533(A235872(n+1))` -/
def P10347276712634500138.Spec : Prop :=
  ∀ n, P10347276712634500138.a n = A359592 (n + 1)

end A359592

/-!
# A359593: Multiplicative with a(p^e) = 1 if p divides e, p^e otherwise.

The programs for A359593, there is no canonical definition to state claims against.
-/

/-! ## A359593.P11556750857552175308

`(n+1)/A359594(n+1)`
-/

namespace A359593.P11556750857552175308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A359594 (n + 1) : ℚ)

end

end A359593.P11556750857552175308

/-! ## A359593.P8620898019751036242

`gcd(n+1, A083346(n+1)^A133299(n+2))`
-/

namespace A359593.P8620898019751036242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A083346 (n + 1) : ℚ) ^ (A133299 (n + 2) : ℤ)))

end

end A359593.P8620898019751036242

/-! ## A359593.P1191833246589515845

`(n+1)/gcd(A057521(∏{e}[n+1, #^#]), A057521(n+1))`
-/

namespace A359593.P1191833246589515845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A057521 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p)) (A057521 (n + 1)) : ℚ)

end

end A359593.P1191833246589515845

/-! ## A359593.P2285669522340869371

`A065883(n+1)^A003989(A249388(n))`
-/

namespace A359593.P2285669522340869371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065883 (n + 1) : ℚ) ^ (A003989 (A249388 n).toNat : ℤ)

end

end A359593.P2285669522340869371

/-! ## A359593.P5240190601631203658

`A056555(gcd(A056551(2*(n+1)), A056555(n+1)))`
-/

namespace A359593.P5240190601631203658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (Int.gcd (A056551 (2 * (n + 1))) (A056555 (n + 1)))

end

end A359593.P5240190601631203658

/-!
# A359594: Multiplicative with a(p^e) = p^e if p divides e, 1 otherwise.

The programs for A359594, there is no canonical definition to state claims against.
-/

/-! ## A359594.P4497965844048271540

`(n+1)/A359593(n+1)`
-/

namespace A359594.P4497965844048271540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A359593 (n + 1) : ℚ)

end

end A359594.P4497965844048271540

/-! ## A359594.P15940845554670744786

`gcd(A057521(∏{e}[n+1, #^#]), A057521(n+1))`
-/

namespace A359594.P15940845554670744786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057521 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p)) (A057521 (n + 1))

end

end A359594.P15940845554670744786

/-! ## A359594.P14548634950043173388

`gcd(A000290(A112622(n+1)), A085731(n+1))`
-/

namespace A359594.P14548634950043173388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A112622 (n + 1)).toNat) (A085731 (n + 1))

end

end A359594.P14548634950043173388

/-! ## A359594.P11906641564444617789

`gcd(A057521(n+1), A057521(A112622(n+1)))`
-/

namespace A359594.P11906641564444617789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057521 (n + 1)) (A057521 (A112622 (n + 1)).toNat)

end

end A359594.P11906641564444617789

/-! ## A359594.P4841857882625475063

`A008477(gcd(A008477(n+1), A095164(n+1)))`
-/

namespace A359594.P4841857882625475063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (Int.gcd (A008477 (n + 1)) (A095164 (n + 1)))

end

end A359594.P4841857882625475063

/-!
# A359595: Parity of A358777, where A358777 is Dirichlet inverse of the characteristic function of odd numbers with an even number of prime factors (counted with multiplicity).

The programs for A359595, there is no canonical definition to state claims against.
-/

/-! ## A359595.P1979196217944081281

`A359774(2*(n+1))`
-/

namespace A359595.P1979196217944081281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (2 * (n + 1))

end

end A359595.P1979196217944081281

/-! ## A359595.P17956792605842822355

`and(1, A358777(n+1))`
-/

namespace A359595.P17956792605842822355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A358777 (n + 1))

end

end A359595.P17956792605842822355

/-! ## A359595.P15539406051441396585

`and(1, A359589(n+1))`
-/

namespace A359595.P15539406051441396585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359589 (n + 1))

end

end A359595.P15539406051441396585

/-! ## A359595.P1648177566661852269

`and(1, A366265(n+1))`
-/

namespace A359595.P1648177566661852269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A366265 (n + 1))

end

end A359595.P1648177566661852269

/-! ## A359595.P3983385534576314462

`and(1, A359773(2*(n+1)))`
-/

namespace A359595.P3983385534576314462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359773 (2 * (n + 1)))

end

end A359595.P3983385534576314462

/-! ## A359595.P1596440253955596427

`and(1, A378523(2*(n+1)))`
-/

namespace A359595.P1596440253955596427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A378523 (2 * (n + 1)))

end

end A359595.P1596440253955596427

/-! ## A359595.P1986015572031902969

`and(n+1, A359764(n+1))`
-/

namespace A359595.P1986015572031902969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359764 (n + 1))

end

end A359595.P1986015572031902969

/-! ## A359595.P15869256581293467381

`and(n+1, A359774(n+1))`
-/

namespace A359595.P15869256581293467381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359774 (n + 1))

end

end A359595.P15869256581293467381

/-! ## A359595.P11974994133475713486

`and(n+1, A359781(n+1))`
-/

namespace A359595.P11974994133475713486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359781 (n + 1))

end

end A359595.P11974994133475713486

/-! ## A359595.P3442044753462164297

`and(n+1, A359787(n+1))`
-/

namespace A359595.P3442044753462164297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359787 (n + 1))

end

end A359595.P3442044753462164297

/-! ## A359595.P4367482402898261837

`and(n+1, A359824(n+1))`
-/

namespace A359595.P4367482402898261837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359824 (n + 1))

end

end A359595.P4367482402898261837

/-! ## A359595.P15148283003566024740

`((n+9)*A359789(n+1))%2`
-/

namespace A359595.P15148283003566024740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 9 : ℤ) * A359789 (n + 1)) 2

end

end A359595.P15148283003566024740

/-! ## A359595.P8773805204672443364

`A000035(A358777(n+1)²)`
-/

namespace A359595.P8773805204672443364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A358777 (n + 1) ^ 2).toNat

end

end A359595.P8773805204672443364

/-! ## A359595.P6488854108459617735

`A134452(A358777(n+1)²)`
-/

namespace A359595.P6488854108459617735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A358777 (n + 1) ^ 2).toNat

end

end A359595.P6488854108459617735

/-! ## A359595.P1002279485493054750

`A059841(n)*A359816(n+1)`
-/

namespace A359595.P1002279485493054750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359816 (n + 1)

end

end A359595.P1002279485493054750

/-! ## A359595.P1103303040489370919

`and(A020639(n+1), A359816(n+1))`
-/

namespace A359595.P1103303040489370919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A359816 (n + 1))

end

end A359595.P1103303040489370919

/-! ## A359595.P6613853919778679404

`and(1, A359789(2*(n+1)))`
-/

namespace A359595.P6613853919778679404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359789 (2 * (n + 1)))

end

end A359595.P6613853919778679404

/-! ## A359595.P18305307597523861628

`and(A026721(n), A359816(n+1))`
-/

namespace A359595.P18305307597523861628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026721 n) (A359816 (n + 1))

end

end A359595.P18305307597523861628

/-! ## A359595.P1779041287771413840

`lcm(A174502(n), A358777(n+1))`
-/

namespace A359595.P1779041287771413840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174502 n) (A358777 (n + 1))

end

end A359595.P1779041287771413840

/-! ## A359595.P17560435527294043923

`and(A005246(2*n+1), A359816(2*(n+1)))`
-/

namespace A359595.P17560435527294043923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005246 (2 * n + 1)) (A359816 (2 * (n + 1)))

end

end A359595.P17560435527294043923

/-!
# A359596: Positions of odd terms in A358777.

The programs for A359596, there is no canonical definition to state claims against.
-/

/-! ## A359596.P1884926522266446869

`lt[0, A359595(n+1)]+1`
-/

namespace A359596.P1884926522266446869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359596.P1884926522266446869

/-! ## A359596.P9272128984666123825

`filter[2*n+1, A359595(#)]`
-/

namespace A359596.P9272128984666123825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j) = 1) n)

end

end A359596.P9272128984666123825

/-! ## A359596.P22729150989131646

`filter[2*n+1, A359764(#)]`
-/

namespace A359596.P22729150989131646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j) = 1) n)

end

end A359596.P22729150989131646

/-! ## A359596.P9399414688429653967

`filter[2*n+1, A359774(#)]`
-/

namespace A359596.P9399414688429653967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j) = 1) n)

end

end A359596.P9399414688429653967

/-! ## A359596.P9141701256692101525

`filter[2*n+1, A359781(#)]`
-/

namespace A359596.P9141701256692101525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j) = 1) n)

end

end A359596.P9141701256692101525

/-! ## A359596.P2395479269474498716

`filter[2*n+1, A359787(#)]`
-/

namespace A359596.P2395479269474498716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j) = 1) n)

end

end A359596.P2395479269474498716

/-! ## A359596.P9797056497516740667

`filter[2*n+1, A359816(#)]`
-/

namespace A359596.P9797056497516740667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j) = 1) n)

end

end A359596.P9797056497516740667

/-! ## A359596.P15644012717756697569

`filter[2*n+1, A359824(#)]`
-/

namespace A359596.P15644012717756697569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j) = 1) n)

end

end A359596.P15644012717756697569

/-! ## A359596.P2121231888907370061

`filter[2*n+1, A369975(#)]`
-/

namespace A359596.P2121231888907370061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j) = 1) n)

end

end A359596.P2121231888907370061

/-! ## A359596.P12039590376662281679

`eq[1, gcd(2, A358777(n+1))]+1`
-/

namespace A359596.P12039590376662281679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A358777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359596.P12039590376662281679

/-! ## A359596.P18320400898486709346

`lt[n%2, A359764(n+1)]+1`
-/

namespace A359596.P18320400898486709346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359596.P18320400898486709346

/-! ## A359596.P3405521783120097311

`∩[2*n+1, A369976(n+1)]`
-/

namespace A359596.P3405521783120097311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359596.P3405521783120097311

/-! ## A359596.P6186493250208169547

`eq[(-1)^n, A359781(n+1)]+1`
-/

namespace A359596.P6186493250208169547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359596.P6186493250208169547

/-! ## A359596.P14107995217088093153

`record[(2*n+1)*A359595(2*n+1)]`
-/

namespace A359596.P14107995217088093153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A359595 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P14107995217088093153

/-! ## A359596.P8942855780348139435

`record[lcm(4, n+1)/4*A359816(n+1)]`
-/

namespace A359596.P8942855780348139435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4 * (A359816 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P8942855780348139435

/-! ## A359596.P3522712647192154268

`record[A000027(2*n+1)*A359764(2*n+1)]`
-/

namespace A359596.P3522712647192154268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1) * A359764 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P3522712647192154268

/-! ## A359596.P12573756883118134761

`record[A000027(2*n+1)*A359774(2*n+1)]`
-/

namespace A359596.P12573756883118134761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1) * A359774 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P12573756883118134761

/-! ## A359596.P11690837518327896076

`record[A000027(2*n+1)*A359781(2*n+1)]`
-/

namespace A359596.P11690837518327896076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1) * A359781 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P11690837518327896076

/-! ## A359596.P14416635144496700197

`record[A000027(2*n+1)*A359816(2*n+1)]`
-/

namespace A359596.P14416635144496700197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1) * A359816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P14416635144496700197

/-! ## A359596.P4773782708928888352

`record[A000027(2*n+1)*A369975(2*n+1)]`
-/

namespace A359596.P4773782708928888352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1) * A369975 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359596.P4773782708928888352

/-!
# A359597: Indices k such that A358777(k) is odd, and k is not an odd semiprime.

The programs for A359597, there is no canonical definition to state claims against.
-/

/-! ## A359597.P16038720533316130347

`filter[A176847(n+1), A359595(#)]`
-/

namespace A359597.P16038720533316130347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A359597.P16038720533316130347

/-! ## A359597.P5190281479088693958

`filter[A176847(n+1), A359764(#)]`
-/

namespace A359597.P5190281479088693958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359597.P5190281479088693958

/-! ## A359597.P11929694011258655816

`filter[A176847(n+1), A359774(#)]`
-/

namespace A359597.P11929694011258655816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359597.P11929694011258655816

/-! ## A359597.P669128311387129471

`filter[A176847(n+1), A359781(#)]`
-/

namespace A359597.P669128311387129471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359597.P669128311387129471

/-! ## A359597.P10165191324098984709

`filter[A176847(n+1), A359787(#)]`
-/

namespace A359597.P10165191324098984709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A359597.P10165191324098984709

/-! ## A359597.P15100014476083457875

`filter[A176847(n+1), A359816(#)]`
-/

namespace A359597.P15100014476083457875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359597.P15100014476083457875

/-! ## A359597.P15780156790796694735

`filter[A176847(n+1), A359824(#)]`
-/

namespace A359597.P15780156790796694735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359597.P15780156790796694735

/-! ## A359597.P7574118079801573518

`filter[A176847(n+1), A369975(#)]`
-/

namespace A359597.P7574118079801573518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A359597.P7574118079801573518

/-! ## A359597.P12469273690219584116

`∩[A176847(n+1), A359596(n+1)]`
-/

namespace A359597.P12469273690219584116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P12469273690219584116

/-! ## A359597.P10433256396745736163

`∩[A176847(n+1), A369976(n+1)]`
-/

namespace A359597.P10433256396745736163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P10433256396745736163

/-! ## A359597.P14944087297644941821

`∩[A176847(n+1), A359775(n+1)]`
-/

namespace A359597.P14944087297644941821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P14944087297644941821

/-! ## A359597.P13206222851203148177

`∩[A176847(n+1), A359765(n+1)]`
-/

namespace A359597.P13206222851203148177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P13206222851203148177

/-! ## A359597.P15477480693988355537

`∩[A176847(n+1), A359783(n+1)]`
-/

namespace A359597.P15477480693988355537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P15477480693988355537

/-! ## A359597.P2515506921013102422

`∩[A176847(n+1), A359817(n+1)]`
-/

namespace A359597.P2515506921013102422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P2515506921013102422

/-! ## A359597.P15041077997796892468

`∩[A176847(n+1), A359825(n+1)]`
-/

namespace A359597.P15041077997796892468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P15041077997796892468

/-! ## A359597.P13656315190367014664

`filter[A111087(n+1), A359595(#)]`
-/

namespace A359597.P13656315190367014664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A359597.P13656315190367014664

/-! ## A359597.P5350550618796591686

`∩[A111087(n+1), A359596(n+1)]`
-/

namespace A359597.P5350550618796591686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359597.P5350550618796591686

/-! ## A359597.P11729343680772917764

`filter[A100959(n+1), A359595(#)]`
-/

namespace A359597.P11729343680772917764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A359597.P11729343680772917764

/-! ## A359597.P10750766287598702469

`filter[A359596(n+1), A190938(#)]`
-/

namespace A359597.P10750766287598702469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A359597.P10750766287598702469

/-! ## A359597.P4772625702231226500

`filter[A215261(2*n+1), A359595(#)]`
-/

namespace A359597.P4772625702231226500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A359597.P4772625702231226500

/-!
# A359598: Indices of terms with record absolute values in A358777.

The programs for A359598, there is no canonical definition to state claims against.
-/

/-! ## A359598.P2606088662609357236

`A359608(lt[A335780(n+1), A359609(3*n+1)])`
-/

namespace A359598.P2606088662609357236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359609 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359608 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359598.P2606088662609357236

