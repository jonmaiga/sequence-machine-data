import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

/-!
# A287801: {0->100, 1->001}-transform of the infinite Fibonacci word A003849.

The programs for A287801, the canonical program `A287801.P16564018995618813451` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287801 has offset 1).

The definition of A287801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287801.P15823140190594679788

`char[A287803(n+1)-1]`
-/

namespace A287801.P15823140190594679788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287803 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287801.P15823140190594679788

namespace A287801

/-- `char[A287803(n+1)-1]` -/
def P15823140190594679788.Spec : Prop :=
  ∀ n, (P15823140190594679788.a n : ℤ) = A287801 (n + 1)

end A287801

/-! ## A287801.P16564018995618813451

`A079978(A287773(n+1)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A287801

/-- `A079978(A287773(n+1)+n)` -/
def P16564018995618813451.Spec : Prop :=
  ∀ n, P16564018995618813451.a n = A287801 (n + 1)

theorem P16564018995618813451.correct : P16564018995618813451.Spec := by
  intro n
  simp only [A287801, Nat.add_sub_cancel]

end A287801

/-! ## A287801.P5738440094342190981

`A287674(A287664(n+1)-A287795(n+1))`
-/

namespace A287801.P5738440094342190981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (A287664 (n + 1) - A287795 (n + 1)).toNat

end

end A287801.P5738440094342190981

namespace A287801

/-- `A287674(A287664(n+1)-A287795(n+1))` -/
def P5738440094342190981.Spec : Prop :=
  ∀ n, P5738440094342190981.a n = A287801 (n + 1)

end A287801

/-! ## A287801.P9641180186599265566

`A287674(comp[3*A060143(n)+n]+4)`
-/

namespace A287801.P9641180186599265566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060143 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4)

end

end A287801.P9641180186599265566

namespace A287801

/-- `A287674(comp[3*A060143(n)+n]+4)` -/
def P9641180186599265566.Spec : Prop :=
  ∀ n, P9641180186599265566.a n = A287801 (n + 1)

end A287801

/-! ## A287801.P15391750602564657952

`A287674(comp[3*(lt[A329130(n), n+1]-(n+1))+n+3]+4)`
-/

namespace A287801.P15391750602564657952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n + 1 : ℤ)) + (n + 3 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4)

end

end A287801.P15391750602564657952

namespace A287801

/-- `A287674(comp[3*(lt[A329130(n), n+1]-(n+1))+n+3]+4)` -/
def P15391750602564657952.Spec : Prop :=
  ∀ n, P15391750602564657952.a n = A287801 (n + 1)

end A287801

/-! ## A287801.P6967228215856274860

`A079978(A287790(n+1)+C(n+1, 2))`
-/

namespace A287801.P6967228215856274860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A287790 (n + 1) + (Nat.choose (n + 1) 2 : ℤ)).toNat

end

end A287801.P6967228215856274860

namespace A287801

/-- `A079978(A287790(n+1)+C(n+1, 2))` -/
def P6967228215856274860.Spec : Prop :=
  ∀ n, P6967228215856274860.a n = A287801 (n + 1)

end A287801

/-!
# A287802: Positions of 0 in A287801; complement of A287803.

The programs for A287802, the canonical program `A287802.P16887405492664947401` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287802 has offset 1).

The definition of A287802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287802.P81534700929644473

`comp[A287803(n+1)-1]+1`
-/

namespace A287802.P81534700929644473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287803 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A287802.P81534700929644473

namespace A287802

/-- `comp[A287803(n+1)-1]+1` -/
def P81534700929644473.Spec : Prop :=
  ∀ n, (P81534700929644473.a n : ℤ) = A287802 (n + 1)

end A287802

/-! ## A287802.P16887405492664947401

`A120613(ceil((n+3)/2))+n+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A287802

/-- `A120613(ceil((n+3)/2))+n+1` -/
def P16887405492664947401.Spec : Prop :=
  ∀ n, P16887405492664947401.a n = A287802 (n + 1)

theorem P16887405492664947401.correct : P16887405492664947401.Spec := by
  intro n
  simp only [A287802, Nat.add_sub_cancel]

end A287802

/-! ## A287802.P17752092457452629564

`∪[A287792(n+1), A016789(n)]`
-/

namespace A287802.P17752092457452629564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287802.P17752092457452629564

namespace A287802

/-- `∪[A287792(n+1), A016789(n)]` -/
def P17752092457452629564.Spec : Prop :=
  ∀ n, (P17752092457452629564.a n : ℤ) = A287802 (n + 1)

end A287802

/-! ## A287802.P4480355035059966148

`comp[A287791(n+1)-A114986(n)]`
-/

namespace A287802.P4480355035059966148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287791 (n + 1) - A114986 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287802.P4480355035059966148

namespace A287802

/-- `comp[A287791(n+1)-A114986(n)]` -/
def P4480355035059966148.Spec : Prop :=
  ∀ n, (P4480355035059966148.a n : ℤ) = A287802 (n + 1)

end A287802

/-! ## A287802.P17084461145496225682

`A004956(A005206(∑[(n+1)%2]))+n`
-/

namespace A287802.P17084461145496225682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A005206 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)

end

end A287802.P17084461145496225682

namespace A287802

/-- `A004956(A005206(∑[(n+1)%2]))+n` -/
def P17084461145496225682.Spec : Prop :=
  ∀ n, P17084461145496225682.a n = A287802 (n + 1)

end A287802

/-! ## A287802.P17151125465463781499

`A004956(A005206(∑[and(1, n+1)]))+n`
-/

namespace A287802.P17151125465463781499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A005206 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)

end

end A287802.P17151125465463781499

namespace A287802

/-- `A004956(A005206(∑[and(1, n+1)]))+n` -/
def P17151125465463781499.Spec : Prop :=
  ∀ n, P17151125465463781499.a n = A287802 (n + 1)

end A287802

/-! ## A287802.P2772449299917762154

`A004526(n)+A014675(A004526(n))+n`
-/

namespace A287802.P2772449299917762154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A014675 (A004526 n).toNat + (n : ℤ))

end

end A287802.P2772449299917762154

namespace A287802

/-- `A004526(n)+A014675(A004526(n))+n` -/
def P2772449299917762154.Spec : Prop :=
  ∀ n, P2772449299917762154.a n = A287802 (n + 1)

end A287802

/-! ## A287802.P12100418166522197728

`A001651(n+1)+Δ[Δ[A187485(n+1)]]²`
-/

namespace A287802.P12100418166522197728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A287802.P12100418166522197728

namespace A287802

/-- `A001651(n+1)+Δ[Δ[A187485(n+1)]]²` -/
def P12100418166522197728.Spec : Prop :=
  ∀ n, P12100418166522197728.a n = A287802 (n + 1)

end A287802

/-! ## A287802.P9369027092941234884

`eq[n, n+1-A287790(a(n-1)+1)]` with `a(0)=6`
-/

namespace A287802.P9369027092941234884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  (n + 1 : ℤ) - A287790 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287802.P9369027092941234884

namespace A287802

/-- `eq[n, n+1-A287790(a(n-1)+1)]` -/
def P9369027092941234884.Spec : Prop :=
  ∀ n, (P9369027092941234884.a n : ℤ) = A287802 (n + 1)

end A287802

/-!
# A287803: Positions of 1 in A287801; complement of A287802.

The programs for A287803, the canonical program `A287803.P12111255639484665447` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287803 has offset 1).

The definition of A287803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287803.P12111255639484665447

`2*A380960(n)+n+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287803

/-- `2*A380960(n)+n+1` -/
def P12111255639484665447.Spec : Prop :=
  ∀ n, P12111255639484665447.a n = A287803 (n + 1)

theorem P12111255639484665447.correct : P12111255639484665447.Spec := by
  intro n
  simp only [A287803, Nat.add_sub_cancel]

end A287803

/-! ## A287803.P1659733990899470629

`2*A287658(n+1)-(n+1)`
-/

namespace A287803.P1659733990899470629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287658 (n + 1) - (n + 1 : ℤ)

end

end A287803.P1659733990899470629

namespace A287803

/-- `2*A287658(n+1)-(n+1)` -/
def P1659733990899470629.Spec : Prop :=
  ∀ n, P1659733990899470629.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P14369870528896620841

`2*(A003849(n)+n)+1+n`
-/

namespace A287803.P14369870528896620841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003849 n + (n : ℤ)) + 1 + (n : ℤ)

end

end A287803.P14369870528896620841

namespace A287803

/-- `2*(A003849(n)+n)+1+n` -/
def P14369870528896620841.Spec : Prop :=
  ∀ n, P14369870528896620841.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P9869002175150883999

`A063834(2-Δ[floor((n+1)/ϕ)])+3*n`
-/

namespace A287803.P9869002175150883999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 (2 - (f1 (n + 1) - f1 n)).toNat + (3 * n : ℤ)

end

end A287803.P9869002175150883999

namespace A287803

/-- `A063834(2-Δ[floor((n+1)/ϕ)])+3*n` -/
def P9869002175150883999.Spec : Prop :=
  ∀ n, P9869002175150883999.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P3867231399402071369

`A380960(n)+A287658(n+1)`
-/

namespace A287803.P3867231399402071369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 n + A287658 (n + 1)

end

end A287803.P3867231399402071369

namespace A287803

/-- `A380960(n)+A287658(n+1)` -/
def P3867231399402071369.Spec : Prop :=
  ∀ n, P3867231399402071369.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P1665200343695812424

`A005408(A003849(n)+n)+n`
-/

namespace A287803.P1665200343695812424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003849 n + (n : ℤ)).toNat + (n : ℤ)

end

end A287803.P1665200343695812424

namespace A287803

/-- `A005408(A003849(n)+n)+n` -/
def P1665200343695812424.Spec : Prop :=
  ∀ n, P1665200343695812424.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P8160162289622038960

`A287658(n+1)+A003849(n)+n`
-/

namespace A287803.P8160162289622038960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1) + (A003849 n + (n : ℤ))

end

end A287803.P8160162289622038960

namespace A287803

/-- `A287658(n+1)+A003849(n)+n` -/
def P8160162289622038960.Spec : Prop :=
  ∀ n, P8160162289622038960.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P11044837888004996416

`3*n+A003849(n)+A003842(n)`
-/

namespace A287803.P11044837888004996416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A003849 n + A003842 n)

end

end A287803.P11044837888004996416

namespace A287803

/-- `3*n+A003849(n)+A003842(n)` -/
def P11044837888004996416.Spec : Prop :=
  ∀ n, P11044837888004996416.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P7128950371429746507

`A050140(n+1)+2*A005206(A005206(n))`
-/

namespace A287803.P7128950371429746507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1) + 2 * A005206 (A005206 n).toNat

end

end A287803.P7128950371429746507

namespace A287803

/-- `A050140(n+1)+2*A005206(A005206(n))` -/
def P7128950371429746507.Spec : Prop :=
  ∀ n, P7128950371429746507.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P17162377944485618240

`A035336(A019446(n+1))-A019446(n+1)+n`
-/

namespace A287803.P17162377944485618240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A019446 (n + 1)).toNat - A019446 (n + 1) + (n : ℤ)

end

end A287803.P17162377944485618240

namespace A287803

/-- `A035336(A019446(n+1))-A019446(n+1)+n` -/
def P17162377944485618240.Spec : Prop :=
  ∀ n, P17162377944485618240.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P5798240398666651932

`A003623(n+1)-(A005206(n+1)+A005206(n+1))`
-/

namespace A287803.P5798240398666651932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - (A005206 (n + 1) + A005206 (n + 1))

end

end A287803.P5798240398666651932

namespace A287803

/-- `A003623(n+1)-(A005206(n+1)+A005206(n+1))` -/
def P5798240398666651932.Spec : Prop :=
  ∀ n, P5798240398666651932.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P126343907149979743

`A003622(n+1)+A005206(A005206(n))+A003849(n)`
-/

namespace A287803.P126343907149979743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A005206 (A005206 n).toNat + A003849 n)

end

end A287803.P126343907149979743

namespace A287803

/-- `A003622(n+1)+A005206(A005206(n))+A003849(n)` -/
def P126343907149979743.Spec : Prop :=
  ∀ n, P126343907149979743.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P11020032899888489817

`A287658(A287658(n+1)-n)+n`
-/

namespace A287803.P11020032899888489817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (A287658 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A287803.P11020032899888489817

namespace A287803

/-- `A287658(A287658(n+1)-n)+n` -/
def P11020032899888489817.Spec : Prop :=
  ∀ n, P11020032899888489817.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P16107577154339616905

`A285682(n+2)-2*A000201(n+2)`
-/

namespace A287803.P16107577154339616905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285682 (n + 2) - 2 * A000201 (n + 2)

end

end A287803.P16107577154339616905

namespace A287803

/-- `A285682(n+2)-2*A000201(n+2)` -/
def P16107577154339616905.Spec : Prop :=
  ∀ n, P16107577154339616905.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P13658687223997126604

`3*(n+2)-A000040(Δ[A001950(n+1)])`
-/

namespace A287803.P13658687223997126604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - A000040 (f1 (n + 1) - f1 n).toNat

end

end A287803.P13658687223997126604

namespace A287803

/-- `3*(n+2)-A000040(Δ[A001950(n+1)])` -/
def P13658687223997126604.Spec : Prop :=
  ∀ n, P13658687223997126604.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P1652787224299433185

`A276855(n+1)+A003849(n)-A000201(n+2)`
-/

namespace A287803.P1652787224299433185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 (n + 1) + (A003849 n - A000201 (n + 2))

end

end A287803.P1652787224299433185

namespace A287803

/-- `A276855(n+1)+A003849(n)-A000201(n+2)` -/
def P1652787224299433185.Spec : Prop :=
  ∀ n, P1652787224299433185.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P7445872183579806539

`A283234(n+2)-(A284625(n+2)+A050141(n+1))`
-/

namespace A287803.P7445872183579806539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 2) - (A284625 (n + 2) + A050141 (n + 1))

end

end A287803.P7445872183579806539

namespace A287803

/-- `A283234(n+2)-(A284625(n+2)+A050141(n+1))` -/
def P7445872183579806539.Spec : Prop :=
  ∀ n, P7445872183579806539.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P6590667918125278086

`A184903(A063732(n+2))`
-/

namespace A287803.P6590667918125278086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184903 (A063732 (n + 2)).toNat

end

end A287803.P6590667918125278086

namespace A287803

/-- `A184903(A063732(n+2))` -/
def P6590667918125278086.Spec : Prop :=
  ∀ n, P6590667918125278086.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P3661616024033540253

`A287791(A000201(n+1))`
-/

namespace A287803.P3661616024033540253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287791 (A000201 (n + 1)).toNat

end

end A287803.P3661616024033540253

namespace A287803

/-- `A287791(A000201(n+1))` -/
def P3661616024033540253.Spec : Prop :=
  ∀ n, P3661616024033540253.a n = A287803 (n + 1)

end A287803

/-! ## A287803.P11080898625146815030

`A287791(A066096(n+1))`
-/

namespace A287803.P11080898625146815030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287791 (A066096 (n + 1)).toNat

end

end A287803.P11080898625146815030

namespace A287803

/-- `A287791(A066096(n+1))` -/
def P11080898625146815030.Spec : Prop :=
  ∀ n, P11080898625146815030.a n = A287803 (n + 1)

end A287803

/-!
# A287804: Number of quinary sequences of length n such that no two consecutive terms have distance 1.

The programs for A287804, the canonical program `A287804.P17465274808748869139` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287804 has offset 0).

The definition of A287804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287804.P17465274808748869139

`5*a(n-1)-5*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287804

/-- `5*a(n-1)-5*a(n-2)-a(n-3)` -/
def P17465274808748869139.Spec : Prop :=
  ∀ n, P17465274808748869139.a n = A287804 n

theorem P17465274808748869139.correct : P17465274808748869139.Spec := by
  intro n
  simp only [A287804]

end A287804

/-! ## A287804.P17835318693344909729

`A026741(A098184(n+1)+A007483(n))`
-/

namespace A287804.P17835318693344909729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A098184 (n + 1) + A007483 n).toNat

end

end A287804.P17835318693344909729

namespace A287804

/-- `A026741(A098184(n+1)+A007483(n))` -/
def P17835318693344909729.Spec : Prop :=
  ∀ n, P17835318693344909729.a n = A287804 n

end A287804

/-!
# A287805: Number of quinary sequences of length n such that no two consecutive terms have distance 2.

The programs for A287805, the canonical program `A287805.P17757287299708323442` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287805 has offset 0).

The definition of A287805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287805.P17757287299708323442

`4*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=73`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287805

/-- `4*a(n-1)+a(n-2)-6*a(n-3)` -/
def P17757287299708323442.Spec : Prop :=
  ∀ n, P17757287299708323442.a n = A287805 n

theorem P17757287299708323442.correct : P17757287299708323442.Spec := by
  intro n
  simp only [A287805]

end A287805

/-!
# A287806: Number of senary sequences of length n such that no two consecutive terms have distance 1.

The programs for A287806, the canonical program `A287806.P2256122727307724822` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287806 has offset 0).

The definition of A287806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287806.P2256122727307724822

`5*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=6, a(2)=26, a(3)=114`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287806

/-- `5*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P2256122727307724822.Spec : Prop :=
  ∀ n, P2256122727307724822.a n = A287806 n

theorem P2256122727307724822.correct : P2256122727307724822.Spec := by
  intro n
  simp only [A287806]

end A287806

/-! ## A287806.P11762722476365480683

`A312309(a(n-1))+2` with `a(0)=1`
-/

namespace A287806.P11762722476365480683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A312309 (a (n - 1)).toNat + 2

end

end A287806.P11762722476365480683

namespace A287806

/-- `A312309(a(n-1))+2` -/
def P11762722476365480683.Spec : Prop :=
  ∀ n, P11762722476365480683.a n = A287806 n

end A287806

/-!
# A287807: Number of senary sequences of length n such that no two consecutive terms have distance 2.

The programs for A287807, the canonical program `A287807.P10381664705865315388` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287807 has offset 0).

The definition of A287807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287807.P10381664705865315388

`6*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=6, a(2)=28`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287807

/-- `6*a(n-1)-6*a(n-2)` -/
def P10381664705865315388.Spec : Prop :=
  ∀ n, P10381664705865315388.a n = A287807 n

theorem P10381664705865315388.correct : P10381664705865315388.Spec := by
  intro n
  simp only [A287807]

end A287807

/-! ## A287807.P5988227702472728837

`A068911(n)*A080882(n)`
-/

namespace A287807.P5988227702472728837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n * A080882 n

end

end A287807.P5988227702472728837

namespace A287807

/-- `A068911(n)*A080882(n)` -/
def P5988227702472728837.Spec : Prop :=
  ∀ n, P5988227702472728837.a n = A287807 n

end A287807

/-! ## A287807.P10026661927448802203

`Δ[Δ[A068911(n)*A080876(n)]]`
-/

namespace A287807.P10026661927448802203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n * A080876 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287807.P10026661927448802203

namespace A287807

/-- `Δ[Δ[A068911(n)*A080876(n)]]` -/
def P10026661927448802203.Spec : Prop :=
  ∀ n, P10026661927448802203.a n = A287807 n

end A287807

/-! ## A287807.P962500880788867977

`Δ[Δ[A036453(n+1)*A094433(n)]]`
-/

namespace A287807.P962500880788867977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A094433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287807.P962500880788867977

namespace A287807

/-- `Δ[Δ[A036453(n+1)*A094433(n)]]` -/
def P962500880788867977.Spec : Prop :=
  ∀ n, P962500880788867977.a n = A287807 n

end A287807

/-! ## A287807.P3943802747817412615

`A030192(n)-A094434(A028310(n))`
-/

namespace A287807.P3943802747817412615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n - A094434 (A028310 n).toNat

end

end A287807.P3943802747817412615

namespace A287807

/-- `A030192(n)-A094434(A028310(n))` -/
def P3943802747817412615.Spec : Prop :=
  ∀ n, P3943802747817412615.a n = A287807 n

end A287807

/-! ## A287807.P12423228886747057608

`floor(A094433(n+4)/18)`
-/

namespace A287807.P12423228886747057608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094433 (n + 4) : ℚ) / 18⌋

end

end A287807.P12423228886747057608

namespace A287807

/-- `floor(A094433(n+4)/18)` -/
def P12423228886747057608.Spec : Prop :=
  ∀ n, P12423228886747057608.a n = A287807 n

end A287807

/-!
# A287808: Number of septenary sequences of length n such that no two consecutive terms have distance 1.

The programs for A287808, there is no canonical definition to state claims against.
-/

/-! ## A287808.P5506609467330266487

`A002251(7*a(n-1))+a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A287808.P5506609467330266487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A002251 (7 * a (n - 1)).toNat + a (n - 1)

end

end A287808.P5506609467330266487

/-! ## A287808.P4343775837369157895

`A170949(A085351(n))+A002450(n)`
-/

namespace A287808.P4343775837369157895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (A085351 n).toNat + A002450 n

end

end A287808.P4343775837369157895

/-!
# A287809: Number of septenary sequences of length n such that no two consecutive terms have distance 2.

The programs for A287809, there is no canonical definition to state claims against.
-/

/-! ## A287809.P13497833299599228135

`or(A026168(A026156(n+1)), A097263(n+1))`
-/

namespace A287809.P13497833299599228135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026168 (A026156 (n + 1)).toNat) (A097263 (n + 1))

end

end A287809.P13497833299599228135

/-!
# A287810: Number of septenary sequences of length n such that no two consecutive terms have distance 3.

The programs for A287810, the canonical program `A287810.P5040005920403689763` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287810 has offset 0).

The definition of A287810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287810.P5040005920403689763

`6*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=7, a(2)=41, a(3)=241`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287810

/-- `6*a(n-1)+a(n-2)-10*a(n-3)` -/
def P5040005920403689763.Spec : Prop :=
  ∀ n, P5040005920403689763.a n = A287810 n

theorem P5040005920403689763.correct : P5040005920403689763.Spec := by
  intro n
  simp only [A287810]

end A287810

/-! ## A287810.P4160964436087086810

`A002264(A000400(n))+A001653(n+1)`
-/

namespace A287810.P4160964436087086810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000400 n).toNat + A001653 (n + 1)

end

end A287810.P4160964436087086810

namespace A287810

/-- `A002264(A000400(n))+A001653(n+1)` -/
def P4160964436087086810.Spec : Prop :=
  ∀ n, P4160964436087086810.a n = A287810 n

end A287810

/-!
# A287811: Number of septenary sequences of length n such that no two consecutive terms have distance 5.

The programs for A287811, the canonical program `A287811.P17171642624206598939` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287811 has offset 0).

The definition of A287811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287811.P17171642624206598939

`6*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287811

/-- `6*a(n-1)+3*a(n-2)` -/
def P17171642624206598939.Spec : Prop :=
  ∀ n, (P17171642624206598939.a n : ℤ) = A287811 n

theorem P17171642624206598939.correct : P17171642624206598939.Spec := by
  intro n
  simp only [A287811]

end A287811

/-! ## A287811.P8631604883172013928

`abs(A099842(n))`
-/

namespace A287811.P8631604883172013928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099842 n|

end

end A287811.P8631604883172013928

namespace A287811

/-- `abs(A099842(n))` -/
def P8631604883172013928.Spec : Prop :=
  ∀ n, P8631604883172013928.a n = A287811 n

end A287811

/-! ## A287811.P15135767382594386833

`A027151(2*n)`
-/

namespace A287811.P15135767382594386833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 (2 * n)

end

end A287811.P15135767382594386833

namespace A287811

/-- `A027151(2*n)` -/
def P15135767382594386833.Spec : Prop :=
  ∀ n, P15135767382594386833.a n = A287811 n

end A287811

/-! ## A287811.P6848046039055278028

`record[A027151(A014681(n))]`
-/

namespace A287811.P6848046039055278028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287811.P6848046039055278028

namespace A287811

/-- `record[A027151(A014681(n))]` -/
def P6848046039055278028.Spec : Prop :=
  ∀ n, P6848046039055278028.a n = A287811 n

end A287811

/-! ## A287811.P8399719374295238014

`ratio[A057077(n)]*A099842(n)`
-/

namespace A287811.P8399719374295238014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A099842 n : ℚ)

end

end A287811.P8399719374295238014

namespace A287811

/-- `ratio[A057077(n)]*A099842(n)` -/
def P8399719374295238014.Spec : Prop :=
  ∀ n, P8399719374295238014.a n = (A287811 n : ℚ)

end A287811

/-! ## A287811.P8873373543520836055

`A108411(n)*A144536(n+1)`
-/

namespace A287811.P8873373543520836055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A144536 (n + 1)

end

end A287811.P8873373543520836055

namespace A287811

/-- `A108411(n)*A144536(n+1)` -/
def P8873373543520836055.Spec : Prop :=
  ∀ n, P8873373543520836055.a n = A287811 n

end A287811

/-! ## A287811.P16251348782168319557

`A057077(2*n)*A099842(n)`
-/

namespace A287811.P16251348782168319557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A099842 n

end

end A287811.P16251348782168319557

namespace A287811

/-- `A057077(2*n)*A099842(n)` -/
def P16251348782168319557.Spec : Prop :=
  ∀ n, P16251348782168319557.a n = A287811 n

end A287811

/-! ## A287811.P13318786663749144886

`ceil(sqrt(A000244(n))*A001353(n+1))`
-/

namespace A287811.P13318786663749144886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000244 n : ℝ) * (A001353 (n + 1) : ℝ)⌉

end

end A287811.P13318786663749144886

namespace A287811

/-- `ceil(sqrt(A000244(n))*A001353(n+1))` -/
def P13318786663749144886.Spec : Prop :=
  ∀ n, P13318786663749144886.a n = A287811 n

end A287811

/-! ## A287811.P3098855794754269661

`A027151(A005843(n))/A033999(n)²`
-/

namespace A287811.P3098855794754269661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027151 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A287811.P3098855794754269661

namespace A287811

/-- `A027151(A005843(n))/A033999(n)²` -/
def P3098855794754269661.Spec : Prop :=
  ∀ n, P3098855794754269661.a n = (A287811 n : ℚ)

end A287811

/-! ## A287811.P10050360942372725126

`A015448(n+1)/A099843(n)*A099842(n)`
-/

namespace A287811.P10050360942372725126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015448 (n + 1) : ℚ) / (A099843 n : ℚ) * (A099842 n : ℚ)

end

end A287811.P10050360942372725126

namespace A287811

/-- `A015448(n+1)/A099843(n)*A099842(n)` -/
def P10050360942372725126.Spec : Prop :=
  ∀ n, P10050360942372725126.a n = (A287811 n : ℚ)

end A287811

/-! ## A287811.P17861392030784335528

`A109113(n)/2`
-/

namespace A287811.P17861392030784335528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109113 n : ℚ) / 2

end

end A287811.P17861392030784335528

namespace A287811

/-- `A109113(n)/2` -/
def P17861392030784335528.Spec : Prop :=
  ∀ n, P17861392030784335528.a n = (A287811 n : ℚ)

end A287811

/-! ## A287811.P16627454340284588982

`A141041(n+1)/3`
-/

namespace A287811.P16627454340284588982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141041 (n + 1) : ℚ) / 3

end

end A287811.P16627454340284588982

namespace A287811

/-- `A141041(n+1)/3` -/
def P16627454340284588982.Spec : Prop :=
  ∀ n, P16627454340284588982.a n = (A287811 n : ℚ)

end A287811

/-! ## A287811.P18338359249021609527

`A027151(Δ[n²])/3`
-/

namespace A287811.P18338359249021609527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A287811.P18338359249021609527

namespace A287811

/-- `A027151(Δ[n²])/3` -/
def P18338359249021609527.Spec : Prop :=
  ∀ n, P18338359249021609527.a n = (A287811 n : ℚ)

end A287811

/-! ## A287811.P3370362432459226778

`A141041(n+1)-A109113(n)`
-/

namespace A287811.P3370362432459226778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 (n + 1) - A109113 n

end

end A287811.P3370362432459226778

namespace A287811

/-- `A141041(n+1)-A109113(n)` -/
def P3370362432459226778.Spec : Prop :=
  ∀ n, P3370362432459226778.a n = A287811 n

end A287811

/-!
# A287812: Number of octonary sequences of length n such that no two consecutive terms have distance 1.

The programs for A287812, there is no canonical definition to state claims against.
-/

/-! ## A287812.P18266657623745503725

`A188087(A015544(n+2))-A015544(n+2)`
-/

namespace A287812.P18266657623745503725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188087 (A015544 (n + 2)).toNat - A015544 (n + 2)

end

end A287812.P18266657623745503725

/-!
# A287813: Number of octonary sequences of length n such that no two consecutive terms have distance 2.

The programs for A287813, the canonical program `A287813.P2663242914660544340` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287813 has offset 0).

The definition of A287813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287813.P2663242914660544340

`7*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=8, a(2)=52`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287813

/-- `7*a(n-1)-3*a(n-2)` -/
def P2663242914660544340.Spec : Prop :=
  ∀ n, P2663242914660544340.a n = A287813 n

theorem P2663242914660544340.correct : P2663242914660544340.Spec := by
  intro n
  simp only [A287813]

end A287813

/-!
# A287814: Number of octonary sequences of length n such that no two consecutive terms have distance 3.

The programs for A287814, the canonical program `A287814.P6408454141402776477` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287814 has offset 0).

The definition of A287814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287814.P6408454141402776477

`7*a(n-1)-10*a(n-3)` with `a(0)=1, a(1)=8, a(2)=54, a(3)=366`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287814

/-- `7*a(n-1)-10*a(n-3)` -/
def P6408454141402776477.Spec : Prop :=
  ∀ n, P6408454141402776477.a n = A287814 n

theorem P6408454141402776477.correct : P6408454141402776477.Spec := by
  intro n
  simp only [A287814]

end A287814

/-!
# A287815: Number of octonary sequences of length n such that no two consecutive terms have distance 7.

The programs for A287815, the canonical program `A287815.P16165001442458729229` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287815 has offset 0).

The definition of A287815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287815.P16165001442458729229

`7*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287815

/-- `7*a(n-1)+6*a(n-2)` -/
def P16165001442458729229.Spec : Prop :=
  ∀ n, (P16165001442458729229.a n : ℤ) = A287815 n

theorem P16165001442458729229.correct : P16165001442458729229.Spec := by
  intro n
  simp only [A287815]

end A287815

/-! ## A287815.P14696486028140658684

`A015564(n)+A015564(n+1)`
-/

namespace A287815.P14696486028140658684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015564 n + A015564 (n + 1)

end

end A287815.P14696486028140658684

namespace A287815

/-- `A015564(n)+A015564(n+1)` -/
def P14696486028140658684.Spec : Prop :=
  ∀ n, P14696486028140658684.a n = A287815 n

end A287815

/-! ## A287815.P8169874120699667631

`8*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=8, a(2)=62`
-/

namespace A287815.P8169874120699667631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 62] fun n a =>
  8 * a (n - 1) - a (n - 2) - 6 * a (n - 3)

end

end A287815.P8169874120699667631

namespace A287815

/-- `8*a(n-1)-a(n-2)-6*a(n-3)` -/
def P8169874120699667631.Spec : Prop :=
  ∀ n, P8169874120699667631.a n = A287815 n

end A287815

/-!
# A287816: Number of nonary sequences of length n such that no two consecutive terms have distance 1.

The programs for A287816, there is no canonical definition to state claims against.
-/

/-! ## A287816.P9276104867312584212

`or(1, A189784(A189801(n+1)))`
-/

namespace A287816.P9276104867312584212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189784 (A189801 (n + 1)).toNat)

end

end A287816.P9276104867312584212

/-!
# A287817: Number of nonary sequences of length n such that no two consecutive terms have distance 2.

The programs for A287817, there is no canonical definition to state claims against.
-/

/-! ## A287817.P17331844541134475872

`A000463(A028594(n)+A014918(n+1))`
-/

namespace A287817.P17331844541134475872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A028594 n + A014918 (n + 1)).toNat

end

end A287817.P17331844541134475872

/-!
# A287818: Number of nonary sequences of length n such that no two consecutive terms have distance 3.

The programs for A287818, the canonical program `A287818.P11823140996155425210` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287818 has offset 0).

The definition of A287818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287818.P11823140996155425210

`9*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=9, a(2)=69`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287818

/-- `9*a(n-1)-10*a(n-2)` -/
def P11823140996155425210.Spec : Prop :=
  ∀ n, P11823140996155425210.a n = A287818 n

theorem P11823140996155425210.correct : P11823140996155425210.Spec := by
  intro n
  simp only [A287818]

end A287818

/-!
# A287819: Number of nonary sequences of length n such that no two consecutive terms have distance 4.

The programs for A287819, the canonical program `A287819.P6107487498915436420` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287819 has offset 0).

The definition of A287819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287819.P6107487498915436420

`8*a(n-1)+a(n-2)-14*a(n-3)` with `a(0)=1, a(1)=9, a(2)=71, a(3)=561`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287819

/-- `8*a(n-1)+a(n-2)-14*a(n-3)` -/
def P6107487498915436420.Spec : Prop :=
  ∀ n, P6107487498915436420.a n = A287819 n

theorem P6107487498915436420.correct : P6107487498915436420.Spec := by
  intro n
  simp only [A287819]

end A287819

/-!
# A287820: Least number of factors to express A065108(n) as a product of Fibonacci numbers.

The programs for A287820, there is no canonical definition to state claims against.
-/

/-! ## A287820.P7103869547731603073

`A007895(lt[1, A175506(3*n+4)])`
-/

namespace A287820.P7103869547731603073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A287820.P7103869547731603073

/-! ## A287820.P14896072666442009169

`A358553(A124833(n+1))`
-/

namespace A287820.P14896072666442009169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358553 (A124833 (n + 1)).toNat

end

end A287820.P14896072666442009169

/-! ## A287820.P14237914093368627931

`A001221(A292272(A055932(n+1)²))`
-/

namespace A287820.P14237914093368627931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A292272 (A055932 (n + 1) ^ 2).toNat).toNat

end

end A287820.P14237914093368627931

/-! ## A287820.P14132576772065420633

`A124737(A095133(n+1)+∑[A054846(n)])`
-/

namespace A287820.P14132576772065420633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A095133 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287820.P14132576772065420633

/-! ## A287820.P2960273664175151894

`∑{p}[A292272(A055932(n+1)²), A001222(#)]`
-/

namespace A287820.P2960273664175151894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A055932 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A287820.P2960273664175151894

/-!
# A287821: a(n) is the index of the largest Fibonacci number A065108(n) is divisible by.

The programs for A287821, there is no canonical definition to state claims against.
-/

/-! ## A287821.P13255520985636490452

`A157893(n+1)+A102609(A211890(n))`
-/

namespace A287821.P13255520985636490452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157893 (n + 1) + A102609 (A211890 n).toNat

end

end A287821.P13255520985636490452

/-! ## A287821.P1206740828687259838

`∏{e}[lt[lcm(32, n)/32, A276150(n)], #]`
-/

namespace A287821.P1206740828687259838
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A287821.P1206740828687259838

/-! ## A287821.P4555247826584007695

`A038548(A028233(A116882(n+2)²))`
-/

namespace A287821.P4555247826584007695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A028233 (A116882 (n + 2) ^ 2).toNat).toNat

end

end A287821.P4555247826584007695

/-! ## A287821.P11663334994872309733

`A157893(n+1)+A082586(A071927(n+1))`
-/

namespace A287821.P11663334994872309733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157893 (n + 1) + A082586 (A071927 (n + 1)).toNat

end

end A287821.P11663334994872309733

/-! ## A287821.P14252524080054314565

`A326056(A000079(n+2))+A157893(n+1)`
-/

namespace A287821.P14252524080054314565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326056 (A000079 (n + 2)).toNat + A157893 (n + 1)

end

end A287821.P14252524080054314565

/-!
# A287822: Number T(n,k) of Dyck paths of semilength n such that the maximal number of peaks per level equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A287822, there is no canonical definition to state claims against.
-/

/-! ## A287822.P14051582051231428189

`A288108(n)+A151755(A176420(n))`
-/

namespace A287822.P14051582051231428189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 n + A151755 (A176420 n).toNat

end

end A287822.P14051582051231428189

/-! ## A287822.P10071055395893585404

`A281441(A330942(n))+A238802(n)`
-/

namespace A287822.P10071055395893585404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281441 (A330942 n).toNat + A238802 n

end

end A287822.P10071055395893585404

/-! ## A287822.P6647676982383289493

`A327549(n)-A347705(A145905(n))`
-/

namespace A287822.P6647676982383289493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327549 n - A347705 (A145905 n).toNat

end

end A287822.P6647676982383289493

/-! ## A287822.P12075386755086032797

`or(A128115(A022166(n)), A191347(n))`
-/

namespace A287822.P12075386755086032797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128115 (A022166 n).toNat) (A191347 n)

end

end A287822.P12075386755086032797

/-! ## A287822.P1014148330354485822

`or(A080345(A067402(n)), A238802(n))`
-/

namespace A287822.P1014148330354485822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080345 (A067402 n).toNat) (A238802 n)

end

end A287822.P1014148330354485822

/-!
# A287823: a(n) = A287729(n)*A001511(n).

The programs for A287823, there is no canonical definition to state claims against.
-/

/-! ## A287823.P4857394990747118151

`A287896(n+1)-A287824(n+1)`
-/

namespace A287823.P4857394990747118151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - A287824 (n + 1)

end

end A287823.P4857394990747118151

/-! ## A287823.P8602730568003719975

`A287729(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A287823.P8602730568003719975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (n + 1) * A001511 (n + 1)

end

end A287823.P8602730568003719975

/-! ## A287823.P9886862889146176684

`(A007814(n+1)+1)*A287729(n+1)`
-/

namespace A287823.P9886862889146176684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A287729 (n + 1)

end

end A287823.P9886862889146176684

/-! ## A287823.P6302730706406163208

`A220466(A037227(n+1))*A287729(n+1)`
-/

namespace A287823.P6302730706406163208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A037227 (n + 1)).toNat * A287729 (n + 1)

end

end A287823.P6302730706406163208

/-! ## A287823.P10992445759278407102

`A288003(n+1)+A002487(n)-A287824(n+1)`
-/

namespace A287823.P10992445759278407102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (n + 1) + (A002487 n - A287824 (n + 1))

end

end A287823.P10992445759278407102

/-! ## A287823.P4569577384339472611

`A007306(n+1)-(A288002(n+1)+A287824(n+1))`
-/

namespace A287823.P4569577384339472611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - (A288002 (n + 1) + A287824 (n + 1))

end

end A287823.P4569577384339472611

/-! ## A287823.P3055634432468456467

`(A002487(n+1)-A287730(n+1))*A001511(n+1)`
-/

namespace A287823.P3055634432468456467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A287730 (n + 1)) * A001511 (n + 1)

end

end A287823.P3055634432468456467

/-! ## A287823.P8216412160341115754

`A001511(n+1)*A002487(n+1)-A287824(n+1)`
-/

namespace A287823.P8216412160341115754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A002487 (n + 1) - A287824 (n + 1)

end

end A287823.P8216412160341115754

/-! ## A287823.P10096794979651876966

`A287824(2*(n+1))-A287729(n+1)`
-/

namespace A287823.P10096794979651876966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * (n + 1)) - A287729 (n + 1)

end

end A287823.P10096794979651876966

/-! ## A287823.P4788652752601841005

`A001511(n+1)*A287730(2*(n+1))`
-/

namespace A287823.P4788652752601841005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A287730 (2 * (n + 1))

end

end A287823.P4788652752601841005

/-! ## A287823.P9840922415683138813

`(A007814(n+1)+1)*A287730(2*(n+1))`
-/

namespace A287823.P9840922415683138813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A287730 (2 * (n + 1))

end

end A287823.P9840922415683138813

/-! ## A287823.P8823199932783255724

`A287824(2*(n+1))-A287730(2*(n+1))`
-/

namespace A287823.P8823199932783255724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (2 * (n + 1)) - A287730 (2 * (n + 1))

end

end A287823.P8823199932783255724

/-! ## A287823.P15275802898694733139

`A287824(2*(n+1))-A287824(2*(n+1))/(A001511(n+1)+1)`
-/

namespace A287823.P15275802898694733139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287824 (2 * (n + 1)) : ℚ) - (A287824 (2 * (n + 1)) : ℚ) / (A001511 (n + 1) + 1 : ℚ)

end

end A287823.P15275802898694733139

/-!
# A287824: a(n) = A287730(n)*A001511(n).

The programs for A287824, there is no canonical definition to state claims against.
-/

/-! ## A287824.P6491630349277583466

`A287896(n+1)-A287823(n+1)`
-/

namespace A287824.P6491630349277583466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - A287823 (n + 1)

end

end A287824.P6491630349277583466

/-! ## A287824.P15679376486069294839

`A287730(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A287824.P15679376486069294839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (n + 1) * A001511 (n + 1)

end

end A287824.P15679376486069294839

/-! ## A287824.P942163268874514880

`(A007814(n+1)+1)*A287730(n+1)`
-/

namespace A287824.P942163268874514880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A287730 (n + 1)

end

end A287824.P942163268874514880

/-! ## A287824.P18402230020937127540

`A000005(A006519(n+1))*A287730(n+1)`
-/

namespace A287824.P18402230020937127540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A287730 (n + 1)

end

end A287824.P18402230020937127540

/-! ## A287824.P8176849969872159057

`A288003(n+1)+A002487(n)-A287823(n+1)`
-/

namespace A287824.P8176849969872159057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (n + 1) + (A002487 n - A287823 (n + 1))

end

end A287824.P8176849969872159057

/-! ## A287824.P1869835760135328961

`A007306(n+1)-(A288002(n+1)+A287823(n+1))`
-/

namespace A287824.P1869835760135328961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - (A288002 (n + 1) + A287823 (n + 1))

end

end A287824.P1869835760135328961

/-! ## A287824.P3074594811735190696

`(A002487(n+1)-A287729(n+1))*A001511(n+1)`
-/

namespace A287824.P3074594811735190696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A287729 (n + 1)) * A001511 (n + 1)

end

end A287824.P3074594811735190696

/-! ## A287824.P13253971860883077373

`A001511(n+1)*A002487(n+1)-A287823(n+1)`
-/

namespace A287824.P13253971860883077373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A002487 (n + 1) - A287823 (n + 1)

end

end A287824.P13253971860883077373

/-! ## A287824.P10872507181830859867

`A287823(2*(n+1))-A287730(n+1)`
-/

namespace A287824.P10872507181830859867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * (n + 1)) - A287730 (n + 1)

end

end A287824.P10872507181830859867

/-! ## A287824.P14448095253708501414

`A001511(n+1)*A287729(2*(n+1))`
-/

namespace A287824.P14448095253708501414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A287729 (2 * (n + 1))

end

end A287824.P14448095253708501414

/-! ## A287824.P4299897119096317031

`(A007814(n+1)+1)*A287729(2*(n+1))`
-/

namespace A287824.P4299897119096317031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A287729 (2 * (n + 1))

end

end A287824.P4299897119096317031

/-! ## A287824.P996347380510933273

`A287823(2*(n+1))-A287729(2*(n+1))`
-/

namespace A287824.P996347380510933273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (2 * (n + 1)) - A287729 (2 * (n + 1))

end

end A287824.P996347380510933273

/-! ## A287824.P2809046079739082246

`A287823(2*(n+1))-A287823(2*(n+1))/(A001511(n+1)+1)`
-/

namespace A287824.P2809046079739082246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287823 (2 * (n + 1)) : ℚ) - (A287823 (2 * (n + 1)) : ℚ) / (A001511 (n + 1) + 1 : ℚ)

end

end A287824.P2809046079739082246

/-!
# A287825: Number of sequences over the alphabet {0,1,...,9} such that no two consecutive terms have distance 1.

The programs for A287825, there is no canonical definition to state claims against.
-/

/-! ## A287825.P7540511775016615313

`A037474(A287816(n))`
-/

namespace A287825.P7540511775016615313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A287816 n).toNat

end

end A287825.P7540511775016615313

/-!
# A287826: Number of sequences over the alphabet {0,1,...,9} such that no two consecutive terms have distance 2.

The programs for A287826, the canonical program `A287826.P15916929665810095314` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287826 has offset 0).

The definition of A287826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287826.P15916929665810095314

`10*a(n-1)-13*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=10, a(2)=84`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287826

/-- `10*a(n-1)-13*a(n-2)-2*a(n-3)` -/
def P15916929665810095314.Spec : Prop :=
  ∀ n, P15916929665810095314.a n = A287826 n

theorem P15916929665810095314.correct : P15916929665810095314.Spec := by
  intro n
  simp only [A287826]

end A287826

/-!
# A287828: Number of sequences over the alphabet {0,1,...,9} such that no two consecutive terms have distance 4.

The programs for A287828, the canonical program `A287828.P6130162798818083512` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287828 has offset 0).

The definition of A287828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287828.P6130162798818083512

`9*a(n-1)-14*a(n-3)` with `a(0)=1, a(1)=10, a(2)=88, a(3)=776`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287828

/-- `9*a(n-1)-14*a(n-3)` -/
def P6130162798818083512.Spec : Prop :=
  ∀ n, P6130162798818083512.a n = A287828 n

theorem P6130162798818083512.correct : P6130162798818083512.Spec := by
  intro n
  simp only [A287828]

end A287828

/-!
# A287829: Number of sequences over the alphabet {0,1,...,9} such that no two consecutive terms have distance 6.

The programs for A287829, the canonical program `A287829.P5929052422293776283` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287829 has offset 0).

The definition of A287829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287829.P5929052422293776283

`9*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287829

/-- `9*a(n-1)+2*a(n-2)` -/
def P5929052422293776283.Spec : Prop :=
  ∀ n, (P5929052422293776283.a n : ℤ) = A287829 n

theorem P5929052422293776283.correct : P5929052422293776283.Spec := by
  intro n
  simp only [A287829]

end A287829

/-! ## A287829.P14521418050861074004

`A015579(n)+A015579(n+1)`
-/

namespace A287829.P14521418050861074004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015579 n + A015579 (n + 1)

end

end A287829.P14521418050861074004

namespace A287829

/-- `A015579(n)+A015579(n+1)` -/
def P14521418050861074004.Spec : Prop :=
  ∀ n, P14521418050861074004.a n = A287829 n

end A287829

/-!
# A287830: Number of sequences over the alphabet {0,1,...,9} such that no two consecutive terms have distance 7.

The programs for A287830, the canonical program `A287830.P16857891753657946908` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287830 has offset 0).

The definition of A287830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287830.P16857891753657946908

`9*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287830

/-- `9*a(n-1)+4*a(n-2)` -/
def P16857891753657946908.Spec : Prop :=
  ∀ n, (P16857891753657946908.a n : ℤ) = A287830 n

theorem P16857891753657946908.correct : P16857891753657946908.Spec := by
  intro n
  simp only [A287830]

end A287830

/-! ## A287830.P18099032764290293022

`A015580(n)+A015580(n+1)`
-/

namespace A287830.P18099032764290293022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015580 n + A015580 (n + 1)

end

end A287830.P18099032764290293022

namespace A287830

/-- `A015580(n)+A015580(n+1)` -/
def P18099032764290293022.Spec : Prop :=
  ∀ n, P18099032764290293022.a n = A287830 n

end A287830

/-!
# A287831: Number of sequences over the alphabet {0,1,...,9} such that no two consecutive terms have distance 8.

The programs for A287831, the canonical program `A287831.P7415028220513845368` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287831 has offset 0).

The definition of A287831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287831.P7415028220513845368

`9*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287831

/-- `9*a(n-1)+6*a(n-2)` -/
def P7415028220513845368.Spec : Prop :=
  ∀ n, (P7415028220513845368.a n : ℤ) = A287831 n

theorem P7415028220513845368.correct : P7415028220513845368.Spec := by
  intro n
  simp only [A287831]

end A287831

/-! ## A287831.P9106354614769285203

`3*(2*a(n-2)-(a(n-1)-4*a(n-1)))` with `a(0)=1, a(1)=10`
-/

namespace A287831.P9106354614769285203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  3 * (2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1)))

end

end A287831.P9106354614769285203

namespace A287831

/-- `3*(2*a(n-2)-(a(n-1)-4*a(n-1)))` -/
def P9106354614769285203.Spec : Prop :=
  ∀ n, P9106354614769285203.a n = A287831 n

end A287831

/-! ## A287831.P8524585859010985665

`A153191(n+1)+A153191(n)`
-/

namespace A287831.P8524585859010985665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153191 (n + 1) + A153191 n

end

end A287831.P8524585859010985665

namespace A287831

/-- `A153191(n+1)+A153191(n)` -/
def P8524585859010985665.Spec : Prop :=
  ∀ n, P8524585859010985665.a n = A287831 n

end A287831

/-! ## A287831.P18224154677425618216

`Δ[Δ[A153191(n)/7]]`
-/

namespace A287831.P18224154677425618216
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153191 n : ℚ) / 7

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287831.P18224154677425618216

namespace A287831

/-- `Δ[Δ[A153191(n)/7]]` -/
def P18224154677425618216.Spec : Prop :=
  ∀ n, P18224154677425618216.a n = (A287831 n : ℚ)

end A287831

/-!
# A287832: Number of words of length n over the alphabet {0,1,...,10} such that no two consecutive terms have distance 1.

The programs for A287832, there is no canonical definition to state claims against.
-/

/-! ## A287832.P14196238724468842593

`A037477(A287825(n))`
-/

namespace A287832.P14196238724468842593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A287825 n).toNat

end

end A287832.P14196238724468842593

/-!
# A287833: Number of words of length n over the alphabet {0,1,...,10} such that no two consecutive terms have distance 2.

The programs for A287833, there is no canonical definition to state claims against.
-/

/-! ## A287833.P14283775765517575838

`record[A389633(3*a(n-1)+1)]` with `a(0)=1, a(1)=0`
-/

namespace A287833.P14283775765517575838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A389633 (3 * f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287833.P14283775765517575838

/-!
# A287835: Number of words of length n over the alphabet {0,1,...,10} such that no two consecutive terms have distance 4.

The programs for A287835, there is no canonical definition to state claims against.
-/

/-! ## A287835.P16821349091607501448

`A333448(5*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A287835.P16821349091607501448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333448 (5 * a (n - 1)).toNat + a (n - 1)

end

end A287835.P16821349091607501448

/-!
# A287836: Number of words over the alphabet {0,1,...,10} such that no two consecutive terms have distance 5.

The programs for A287836, there is no canonical definition to state claims against.
-/

/-! ## A287836.P13796991844610084637

`A138288(n)+A005843(A178501(n))`
-/

namespace A287836.P13796991844610084637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + A005843 (A178501 n).toNat

end

end A287836.P13796991844610084637

/-! ## A287836.P4787597749748544459

`A138288(n)+A005843(A232662(n+1))`
-/

namespace A287836.P4787597749748544459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + A005843 (A232662 (n + 1)).toNat

end

end A287836.P4787597749748544459

/-!
# A287837: Number of words over the alphabet {0,1,...,10} such that no two consecutive terms have distance 7.

The programs for A287837, the canonical program `A287837.P5339209522234053388` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287837 has offset 0).

The definition of A287837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287837.P5339209522234053388

`10*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287837

/-- `10*a(n-1)+3*a(n-2)` -/
def P5339209522234053388.Spec : Prop :=
  ∀ n, (P5339209522234053388.a n : ℤ) = A287837 n

theorem P5339209522234053388.correct : P5339209522234053388.Spec := by
  intro n
  simp only [A287837]

end A287837

/-! ## A287837.P2587334119457784774

`A015588(n)+A015588(n+1)`
-/

namespace A287837.P2587334119457784774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015588 n + A015588 (n + 1)

end

end A287837.P2587334119457784774

namespace A287837

/-- `A015588(n)+A015588(n+1)` -/
def P2587334119457784774.Spec : Prop :=
  ∀ n, P2587334119457784774.a n = A287837 n

end A287837

/-!
# A287838: Number of words of length n over the alphabet {0,1,...,10} such that no two consecutive terms have distance 8.

The programs for A287838, the canonical program `A287838.P8317298233355737234` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287838 has offset 0).

The definition of A287838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287838.P8317298233355737234

`10*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287838

/-- `10*a(n-1)+5*a(n-2)` -/
def P8317298233355737234.Spec : Prop :=
  ∀ n, (P8317298233355737234.a n : ℤ) = A287838 n

theorem P8317298233355737234.correct : P8317298233355737234.Spec := by
  intro n
  simp only [A287838]

end A287838

/-! ## A287838.P3998315327540302457

`A190955(n+1)+A190955(n)`
-/

namespace A287838.P3998315327540302457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190955 (n + 1) + A190955 n

end

end A287838.P3998315327540302457

namespace A287838

/-- `A190955(n+1)+A190955(n)` -/
def P3998315327540302457.Spec : Prop :=
  ∀ n, P3998315327540302457.a n = A287838 n

end A287838

/-! ## A287838.P4075922061096506059

`A074872(n+1)*A153318(n)`
-/

namespace A287838.P4075922061096506059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) * A153318 n

end

end A287838.P4075922061096506059

namespace A287838

/-- `A074872(n+1)*A153318(n)` -/
def P4075922061096506059.Spec : Prop :=
  ∀ n, P4075922061096506059.a n = A287838 n

end A287838

/-! ## A287838.P14896389397946644462

`A000351(A004526(n))*A153318(n)`
-/

namespace A287838.P14896389397946644462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A004526 n).toNat * A153318 n

end

end A287838.P14896389397946644462

namespace A287838

/-- `A000351(A004526(n))*A153318(n)` -/
def P14896389397946644462.Spec : Prop :=
  ∀ n, P14896389397946644462.a n = A287838 n

end A287838

/-!
# A287839: Number of words of length n over the alphabet {0,1,...,10} such that no two consecutive terms have distance 9.

The programs for A287839, the canonical program `A287839.P16634011496877621402` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287839 has offset 0).

The definition of A287839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287839.P16634011496877621402

`10*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287839

/-- `10*a(n-1)+7*a(n-2)` -/
def P16634011496877621402.Spec : Prop :=
  ∀ n, (P16634011496877621402.a n : ℤ) = A287839 n

theorem P16634011496877621402.correct : P16634011496877621402.Spec := by
  intro n
  simp only [A287839]

end A287839

/-! ## A287839.P9709595828412016114

`A015589(n+1)+A015589(n)`
-/

namespace A287839.P9709595828412016114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015589 (n + 1) + A015589 n

end

end A287839.P9709595828412016114

namespace A287839

/-- `A015589(n+1)+A015589(n)` -/
def P9709595828412016114.Spec : Prop :=
  ∀ n, P9709595828412016114.a n = A287839 n

end A287839

/-! ## A287839.P1361165688672623946

`∑[A157765(n)]-Δ[A015589(n)]`
-/

namespace A287839.P1361165688672623946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A287839.P1361165688672623946

namespace A287839

/-- `∑[A157765(n)]-Δ[A015589(n)]` -/
def P1361165688672623946.Spec : Prop :=
  ∀ n, P1361165688672623946.a n = A287839 n

end A287839

/-! ## A287839.P5603985826716705161

`Δ[A157765(n)/16]`
-/

namespace A287839.P5603985826716705161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157765 n : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287839.P5603985826716705161

namespace A287839

/-- `Δ[A157765(n)/16]` -/
def P5603985826716705161.Spec : Prop :=
  ∀ n, P5603985826716705161.a n = (A287839 n : ℚ)

end A287839

/-! ## A287839.P2316615355323812688

`Δ[Δ[A015589(n)/8]]`
-/

namespace A287839.P2316615355323812688
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015589 n : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287839.P2316615355323812688

namespace A287839

/-- `Δ[Δ[A015589(n)/8]]` -/
def P2316615355323812688.Spec : Prop :=
  ∀ n, P2316615355323812688.a n = (A287839 n : ℚ)

end A287839

/-!
# A287840: Numbers that generate Carmichael numbers using Erdős's method.

The programs for A287840, there is no canonical definition to state claims against.
-/

/-! ## A287840.P10492541285169672588

`4*A295670(A108330(n+1))`
-/

namespace A287840.P10492541285169672588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A295670 (A108330 (n + 1)).toNat

end

end A287840.P10492541285169672588

/-! ## A287840.P7595166410715956402

`∩[A100715(n+1), A298000(n)]`
-/

namespace A287840.P7595166410715956402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287840.P7595166410715956402

/-!
# A287841: Number of iterations of number of distinct prime factors (A001221) needed to reach 1 starting at n (n is counted).

The programs for A287841, the canonical program `A287841.P13270344791315527012` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287841 has offset 1).

The definition of A287841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287841.P13270344791315527012

`a(A079275(n+1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287841

/-- `a(A079275(n+1))+1` -/
def P13270344791315527012.Spec : Prop :=
  ∀ n, (P13270344791315527012.a n : ℤ) = A287841 (n + 1)

theorem P13270344791315527012.correct : P13270344791315527012.Spec := by
  intro n
  simp only [A287841, Nat.add_sub_cancel]

end A287841

/-! ## A287841.P10150608051250389233

`a(A297155(n+1))+1` with `a(0)=1`
-/

namespace A287841.P10150608051250389233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A297155 (n + 1)).toNat + 1

end

end A287841.P10150608051250389233

namespace A287841

/-- `a(A297155(n+1))+1` -/
def P10150608051250389233.Spec : Prop :=
  ∀ n, (P10150608051250389233.a n : ℤ) = A287841 (n + 1)

end A287841

/-! ## A287841.P10404984611177825333

`ceil(atan(A001221(n+1)))+1`
-/

namespace A287841.P10404984611177825333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A001221 (n + 1) : ℝ)⌉ + 1

end

end A287841.P10404984611177825333

namespace A287841

/-- `ceil(atan(A001221(n+1)))+1` -/
def P10404984611177825333.Spec : Prop :=
  ∀ n, P10404984611177825333.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P5954511738576569804

`ceil(atan(A034460(n+1)))+1`
-/

namespace A287841.P5954511738576569804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A034460 (n + 1) : ℝ)⌉ + 1

end

end A287841.P5954511738576569804

namespace A287841

/-- `ceil(atan(A034460(n+1)))+1` -/
def P5954511738576569804.Spec : Prop :=
  ∀ n, P5954511738576569804.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P13783807162459045549

`floor(sqrt(2)+sqrt(A323014(n+1)))`
-/

namespace A287841.P13783807162459045549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) + Real.sqrt (A323014 (n + 1) : ℝ)⌋

end

end A287841.P13783807162459045549

namespace A287841

/-- `floor(sqrt(2)+sqrt(A323014(n+1)))` -/
def P13783807162459045549.Spec : Prop :=
  ∀ n, P13783807162459045549.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P6689699943054989436

`a(A007875(n+1)-1)+1` with `a(0)=1`
-/

namespace A287841.P6689699943054989436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A007875 (n + 1) - 1).toNat + 1

end

end A287841.P6689699943054989436

namespace A287841

/-- `a(A007875(n+1)-1)+1` -/
def P6689699943054989436.Spec : Prop :=
  ∀ n, (P6689699943054989436.a n : ℤ) = A287841 (n + 1)

end A287841

/-! ## A287841.P1280937513879408084

`a(A083399(n+1)-2)+1` with `a(0)=1`
-/

namespace A287841.P1280937513879408084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A083399 (n + 1) - 2).toNat + 1

end

end A287841.P1280937513879408084

namespace A287841

/-- `a(A083399(n+1)-2)+1` -/
def P1280937513879408084.Spec : Prop :=
  ∀ n, (P1280937513879408084.a n : ℤ) = A287841 (n + 1)

end A287841

/-! ## A287841.P460202732418389173

`A318928(2^∑{p}[n+1, gcd(n, #)])`
-/

namespace A287841.P460202732418389173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A287841.P460202732418389173

namespace A287841

/-- `A318928(2^∑{p}[n+1, gcd(n, #)])` -/
def P460202732418389173.Spec : Prop :=
  ∀ n, P460202732418389173.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P10158701799939970251

`a(C(2, A014963(n+1)²))+1` with `a(0)=1`
-/

namespace A287841.P10158701799939970251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.choose 2 (A014963 (n + 1) ^ 2).toNat) + 1

end

end A287841.P10158701799939970251

namespace A287841

/-- `a(C(2, A014963(n+1)²))+1` -/
def P10158701799939970251.Spec : Prop :=
  ∀ n, (P10158701799939970251.a n : ℤ) = A287841 (n + 1)

end A287841

/-! ## A287841.P3597397499209668567

`a(∑{p}[n+1, A001222(#)]-1)+1` with `a(0)=1`
-/

namespace A287841.P3597397499209668567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ p ∈ Nat.primeFactors (f1 n), A001222 p - 1).toNat + 1

end

end A287841.P3597397499209668567

namespace A287841

/-- `a(∑{p}[n+1, A001222(#)]-1)+1` -/
def P3597397499209668567.Spec : Prop :=
  ∀ n, (P3597397499209668567.a n : ℤ) = A287841 (n + 1)

end A287841

/-! ## A287841.P5077771585489348068

`a(A001222(∏{p}[n+1, #])-1)+1` with `a(0)=1`
-/

namespace A287841.P5077771585489348068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1).toNat + 1

end

end A287841.P5077771585489348068

namespace A287841

/-- `a(A001222(∏{p}[n+1, #])-1)+1` -/
def P5077771585489348068.Spec : Prop :=
  ∀ n, (P5077771585489348068.a n : ℤ) = A287841 (n + 1)

end A287841

/-! ## A287841.P6812734898178386449

`A049237(A034444(n+1))`
-/

namespace A287841.P6812734898178386449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A034444 (n + 1)).toNat

end

end A287841.P6812734898178386449

namespace A287841

/-- `A049237(A034444(n+1))` -/
def P6812734898178386449.Spec : Prop :=
  ∀ n, P6812734898178386449.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P13500015286298441201

`A010553(A088835(n+1))`
-/

namespace A287841.P13500015286298441201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A088835 (n + 1)).toNat

end

end A287841.P13500015286298441201

namespace A287841

/-- `A010553(A088835(n+1))` -/
def P13500015286298441201.Spec : Prop :=
  ∀ n, P13500015286298441201.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P3666812692785543297

`A380922(A034444(n+1)²)`
-/

namespace A287841.P3666812692785543297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380922 (A034444 (n + 1) ^ 2).toNat

end

end A287841.P3666812692785543297

namespace A287841

/-- `A380922(A034444(n+1)²)` -/
def P3666812692785543297.Spec : Prop :=
  ∀ n, P3666812692785543297.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P15544148670972784807

`A383292(A034444(n+1)²)`
-/

namespace A287841.P15544148670972784807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383292 (A034444 (n + 1) ^ 2).toNat

end

end A287841.P15544148670972784807

namespace A287841

/-- `A383292(A034444(n+1)²)` -/
def P15544148670972784807.Spec : Prop :=
  ∀ n, P15544148670972784807.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P13636905937895367208

`A380922(A158522(n+1)²)`
-/

namespace A287841.P13636905937895367208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380922 (A158522 (n + 1) ^ 2).toNat

end

end A287841.P13636905937895367208

namespace A287841

/-- `A380922(A158522(n+1)²)` -/
def P13636905937895367208.Spec : Prop :=
  ∀ n, P13636905937895367208.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P7677240244043784743

`A383292(A158522(n+1)²)`
-/

namespace A287841.P7677240244043784743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383292 (A158522 (n + 1) ^ 2).toNat

end

end A287841.P7677240244043784743

namespace A287841

/-- `A383292(A158522(n+1)²)` -/
def P7677240244043784743.Spec : Prop :=
  ∀ n, P7677240244043784743.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P2668577417921414702

`A036582(A034444(n+1)+1)`
-/

namespace A287841.P2668577417921414702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 (A034444 (n + 1) + 1).toNat

end

end A287841.P2668577417921414702

namespace A287841

/-- `A036582(A034444(n+1)+1)` -/
def P2668577417921414702.Spec : Prop :=
  ∀ n, P2668577417921414702.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P2605790762565362251

`A157226(A034444(n+1)+2)`
-/

namespace A287841.P2605790762565362251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157226 (A034444 (n + 1) + 2).toNat

end

end A287841.P2605790762565362251

namespace A287841

/-- `A157226(A034444(n+1)+2)` -/
def P2605790762565362251.Spec : Prop :=
  ∀ n, P2605790762565362251.a n = A287841 (n + 1)

end A287841

/-! ## A287841.P8687619140186694197

`A001222(2*A088835(n+1))`
-/

namespace A287841.P8687619140186694197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A088835 (n + 1)).toNat

end

end A287841.P8687619140186694197

namespace A287841

/-- `A001222(2*A088835(n+1))` -/
def P8687619140186694197.Spec : Prop :=
  ∀ n, P8687619140186694197.a n = A287841 (n + 1)

end A287841

/-!
# A287842: Primes of the form (1 + x)^(2^y) + x^(2^y) where x is a divisor of y.

The programs for A287842, there is no canonical definition to state claims against.
-/

/-! ## A287842.P16704487583380982282

`p?[(10*n!+1)%(2^n)]`
-/

namespace A287842.P16704487583380982282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * Nat.factorial n + 1) % 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A287842.P16704487583380982282

/-!
# A287843: Number of Dyck paths of semilength n such that each level with peaks has exactly two peaks.

The programs for A287843, there is no canonical definition to state claims against.
-/

/-! ## A287843.P16350858154174790276

`A288108(∑[n]+2)`
-/

namespace A287843.P16350858154174790276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A287843.P16350858154174790276

/-! ## A287843.P8185063355962661027

`or(char[2], A288108(A000217(n)+2))`
-/

namespace A287843.P8185063355962661027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A288108 (A000217 n + 2).toNat)

end

end A287843.P8185063355962661027

/-! ## A287843.P3356951970403430388

`A288108(A133263(n))+A000007(n)`
-/

namespace A287843.P3356951970403430388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (A133263 n).toNat + A000007 n

end

end A287843.P3356951970403430388

/-! ## A287843.P6995682527952094832

`lcm(A105812(n), A288108(A000217(n)+2))`
-/

namespace A287843.P6995682527952094832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A288108 (A000217 n + 2).toNat)

end

end A287843.P6995682527952094832

/-! ## A287843.P7083291953382728832

`∏{e}[A020639(n+1), A288108(#*A133263(n))]`
-/

namespace A287843.P7083291953382728832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288108 ((Nat.factorization (f1 n).natAbs p : ℤ) * A133263 n).toNat

end

end A287843.P7083291953382728832

/-! ## A287843.P7204724113453182801

`∏{e}[A020639(n+1), A288108(A133263(n)/#)]`
-/

namespace A287843.P7204724113453182801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288108 (SequenceMachineLib.roundAway ((A133263 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A287843.P7204724113453182801

/-! ## A287843.P11348841882055849525

`A288108(A000217(n+1))+A288108(A000217(n)+2)`
-/

namespace A287843.P11348841882055849525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (A000217 (n + 1)).toNat + A288108 (A000217 n + 2).toNat

end

end A287843.P11348841882055849525

/-! ## A287843.P12287404305788114708

`A001519(A151933(n))*A288108(A000217(n)+2)`
-/

namespace A287843.P12287404305788114708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A151933 n).toNat * A288108 (A000217 n + 2).toNat

end

end A287843.P12287404305788114708

/-!
# A287844: Numbers k such that k!6 + 3 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A287844, there is no canonical definition to state claims against.
-/

/-! ## A287844.P9107011760785895071

`∑[∏{e}[A250120(ceil(3^(n-1))), #+1]]`
-/

namespace A287844.P9107011760785895071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287844.P9107011760785895071

/-! ## A287844.P2775544964023203424

`A328588(record[A105248(n)])`
-/

namespace A287844.P2775544964023203424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287844.P2775544964023203424

/-! ## A287844.P11982414067160017799

`∑[A000005(A097112(n)+1)]`
-/

namespace A287844.P11982414067160017799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097112 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287844.P11982414067160017799

/-! ## A287844.P10536590073592624749

`∑[A302192(A005063(n+1))]`
-/

namespace A287844.P10536590073592624749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302192 (A005063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287844.P10536590073592624749

/-! ## A287844.P132462670017052932

`∑[A366438(A084266(n))]+1`
-/

namespace A287844.P132462670017052932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (A084266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A287844.P132462670017052932

/-!
# A287845: Number of Dyck paths of semilength n such that each positive level up to the highest nonempty level has exactly two peaks.

The programs for A287845, there is no canonical definition to state claims against.
-/

/-! ## A287845.P11804945115724426459

`A288318(∑[n]+2)`
-/

namespace A287845.P11804945115724426459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A287845.P11804945115724426459

/-! ## A287845.P4318245119631214314

`A288318(A133263(n))+A000007(n)`
-/

namespace A287845.P4318245119631214314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A133263 n).toNat + A000007 n

end

end A287845.P4318245119631214314

/-! ## A287845.P3001629083795007970

`A288318(A133263(n))+A010051(A016825(n))`
-/

namespace A287845.P3001629083795007970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A133263 n).toNat + A010051 (A016825 n).toNat

end

end A287845.P3001629083795007970

/-! ## A287845.P15693464470897465036

`A288318(A000217(n))+A288318(A133263(n))`
-/

namespace A287845.P15693464470897465036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A000217 n).toNat + A288318 (A133263 n).toNat

end

end A287845.P15693464470897465036

/-! ## A287845.P14145942228098772303

`A288318(A000217(n)+2)^A056926(A002378(n))`
-/

namespace A287845.P14145942228098772303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288318 (A000217 n + 2).toNat : ℚ) ^ (A056926 (A002378 n).toNat : ℤ)

end

end A287845.P14145942228098772303

/-! ## A287845.P3050813010129825270

`A288318(A000217(n)+2)+A046665(A068794(n+1))`
-/

namespace A287845.P3050813010129825270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A000217 n + 2).toNat + A046665 (A068794 (n + 1)).toNat

end

end A287845.P3050813010129825270

/-! ## A287845.P2404083469830933820

`A288318(A000217(n)+2)+A046665(A304181(n+1))`
-/

namespace A287845.P2404083469830933820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A000217 n + 2).toNat + A046665 (A304181 (n + 1)).toNat

end

end A287845.P2404083469830933820

/-! ## A287845.P137191931199479263

`A014963(A005279(n+1))*A288318(A000217(n)+2)`
-/

namespace A287845.P137191931199479263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005279 (n + 1)).toNat * A288318 (A000217 n + 2).toNat

end

end A287845.P137191931199479263

/-! ## A287845.P17812262079206132616

`A288318(A000217(n)+2)*A323827(A037971(n+1))`
-/

namespace A287845.P17812262079206132616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A000217 n + 2).toNat * A323827 (A037971 (n + 1)).toNat

end

end A287845.P17812262079206132616

/-! ## A287845.P9003493054541843715

`A288318(A133263(n))+A103451(A167614(n+2))`
-/

namespace A287845.P9003493054541843715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A133263 n).toNat + A103451 (A167614 (n + 2)).toNat

end

end A287845.P9003493054541843715

/-!
# A287846: Number of Dyck paths of semilength n such that each positive level up to the highest nonempty level has exactly one peak.

The programs for A287846, there is no canonical definition to state claims against.
-/

/-! ## A287846.P9260552808789064027

`A288318(∑[char[1]+n])`
-/

namespace A287846.P9260552808789064027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287846.P9260552808789064027

/-! ## A287846.P376465908419386879

`floor(A288318(A000124(n))+acot(n))`
-/

namespace A287846.P376465908419386879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288318 (A000124 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A287846.P376465908419386879

/-! ## A287846.P3398276281561286994

`A288318(∑[n]+1)+A000007(n)`
-/

namespace A287846.P3398276281561286994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A000007 n

end

end A287846.P3398276281561286994

/-! ## A287846.P15836371025123201585

`A288318(∑[n]+1)+A010051(A016825(n))`
-/

namespace A287846.P15836371025123201585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A010051 (A016825 n).toNat

end

end A287846.P15836371025123201585

/-! ## A287846.P13747151648901527277

`A288318(A000217(n)+1)+A288318(A000217(n))`
-/

namespace A287846.P13747151648901527277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A000217 n + 1).toNat + A288318 (A000217 n).toNat

end

end A287846.P13747151648901527277

/-!
# A287847: Number A(n,k) of Dyck paths of semilength n such that no level has more than k peaks; square array A(n,k), n >= 0, k >= 0, read by descending antidiagonals.

The programs for A287847, there is no canonical definition to state claims against.
-/

/-! ## A287847.P14009755871305820397

`A325678(A276921(n))+A185037(n)`
-/

namespace A287847.P14009755871305820397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A276921 n).toNat + A185037 n

end

end A287847.P14009755871305820397

/-! ## A287847.P13359183534547818433

`A232615(A247504(n)+1)`
-/

namespace A287847.P13359183534547818433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232615 (A247504 n + 1).toNat

end

end A287847.P13359183534547818433

/-! ## A287847.P12862551930465060569

`A326625(A294212(n))%7`
-/

namespace A287847.P12862551930465060569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326625 (A294212 n).toNat) 7

end

end A287847.P12862551930465060569

/-! ## A287847.P5049730573558184441

`A068063(A262163(n)^A124767(n))`
-/

namespace A287847.P5049730573558184441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (SequenceMachineLib.roundAway ((A262163 n : ℚ) ^ (A124767 n : ℤ))).toNat

end

end A287847.P5049730573558184441

/-! ## A287847.P1334680190292741822

`A262163(n)+A180989(A332275(n))`
-/

namespace A287847.P1334680190292741822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 n + A180989 (A332275 n).toNat

end

end A287847.P1334680190292741822

/-!
# A287848: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A287848, there is no canonical definition to state claims against.
-/

/-! ## A287848.P17391435085148806646

`A007088(A287850(n))`
-/

namespace A287848.P17391435085148806646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287850 n).toNat

end

end A287848.P17391435085148806646

/-! ## A287848.P12264139497999278614

`A185544(2*A287850(n))`
-/

namespace A287848.P12264139497999278614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287850 n).toNat

end

end A287848.P12264139497999278614

/-! ## A287848.P9869931416703566156

`A169964(A287850(n)+1)/5`
-/

namespace A287848.P9869931416703566156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (A287850 n + 1).toNat : ℚ) / 5

end

end A287848.P9869931416703566156

/-!
# A287849: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A287849, there is no canonical definition to state claims against.
-/

/-! ## A287849.P17401255351312654273

`A007088(A287851(n))`
-/

namespace A287849.P17401255351312654273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287851 n).toNat

end

end A287849.P17401255351312654273

/-! ## A287849.P7168446519230220571

`A185544(2*A287851(n))`
-/

namespace A287849.P7168446519230220571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287851 n).toNat

end

end A287849.P7168446519230220571

/-!
# A287850: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A287850, there is no canonical definition to state claims against.
-/

/-! ## A287850.P4029910701321658308

`A287780(n)-A053606(A185238(3*n+2))`
-/

namespace A287850.P4029910701321658308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287780 n - A053606 (A185238 (3 * n + 2)).toNat

end

end A287850.P4029910701321658308

/-!
# A287852: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A287852, there is no canonical definition to state claims against.
-/

/-! ## A287852.P3004086467014227413

`A007088(A287854(n))`
-/

namespace A287852.P3004086467014227413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287854 n).toNat

end

end A287852.P3004086467014227413

/-! ## A287852.P4094238340738503445

`A185544(2*A287854(n))`
-/

namespace A287852.P4094238340738503445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287854 n).toNat

end

end A287852.P4094238340738503445

/-! ## A287852.P3753674063142801867

`A185544(A287854(n)+A287854(n))`
-/

namespace A287852.P3753674063142801867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287854 n + A287854 n).toNat

end

end A287852.P3753674063142801867

/-! ## A287852.P8682880426414833621

`A007088(and(-(A289102(n+1)+1), A289103(n)))`
-/

namespace A287852.P8682880426414833621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-(A289102 (n + 1) + 1)) (A289103 n)).toNat

end

end A287852.P8682880426414833621

/-! ## A287852.P5092299589859647928

`A007088(Δ[A020737(n)]-(A289102(n+1)+1))`
-/

namespace A287852.P5092299589859647928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n - (A289102 (n + 1) + 1)).toNat

end

end A287852.P5092299589859647928

/-!
# A287853: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A287853, there is no canonical definition to state claims against.
-/

/-! ## A287853.P11121356330848780161

`A007088(A287855(n))`
-/

namespace A287853.P11121356330848780161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287855 n).toNat

end

end A287853.P11121356330848780161

/-! ## A287853.P9218032635422769357

`A185544(2*A287855(n))`
-/

namespace A287853.P9218032635422769357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287855 n).toNat

end

end A287853.P9218032635422769357

/-! ## A287853.P4050929631596886723

`A288698(A004892(n+1))`
-/

namespace A287853.P4050929631596886723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288698 (A004892 (n + 1)).toNat

end

end A287853.P4050929631596886723

/-! ## A287853.P8049148148183035505

`A288698(A004903(n+1))`
-/

namespace A287853.P8049148148183035505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288698 (A004903 (n + 1)).toNat

end

end A287853.P8049148148183035505

/-! ## A287853.P596188199667184812

`A288698(A029965(n+1))`
-/

namespace A287853.P596188199667184812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288698 (A029965 (n + 1)).toNat

end

end A287853.P596188199667184812

/-!
# A287854: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A287854, there is no canonical definition to state claims against.
-/

/-! ## A287854.P3228533956307093988

`and(-(A289102(n+1)+1), A289103(n))`
-/

namespace A287854.P3228533956307093988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(A289102 (n + 1) + 1)) (A289103 n)

end

end A287854.P3228533956307093988

/-! ## A287854.P12924326183521135543

`A000079(n+2)-(A289102(n+1)+1)`
-/

namespace A287854.P12924326183521135543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - (A289102 (n + 1) + 1)

end

end A287854.P12924326183521135543

/-! ## A287854.P17667948808943715084

`A289103(n+1)-and(A289102(n+1), A289103(n+1))`
-/

namespace A287854.P17667948808943715084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289103 (n + 1) - Int.land (A289102 (n + 1)) (A289103 (n + 1))

end

end A287854.P17667948808943715084

/-! ## A287854.P751363284351941256

`or(A286865(n+1), A289102(n+1))-A289102(n+1)`
-/

namespace A287854.P751363284351941256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286865 (n + 1)) (A289102 (n + 1)) - A289102 (n + 1)

end

end A287854.P751363284351941256

/-! ## A287854.P1606963576284437576

`Δ[A020737(n)]-(A289102(n+1)+1)`
-/

namespace A287854.P1606963576284437576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A289102 (n + 1) + 1)

end

end A287854.P1606963576284437576

/-! ## A287854.P8356237529309047138

`and(A289103(2*n)-A289102(n+1), A289103(n))`
-/

namespace A287854.P8356237529309047138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289103 (2 * n) - A289102 (n + 1)) (A289103 n)

end

end A287854.P8356237529309047138

/-!
# A287855: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A287855, there is no canonical definition to state claims against.
-/

/-! ## A287855.P2188663818142549736

`ceil(log(cosh(A288700(n))))`
-/

namespace A287855.P2188663818142549736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.cosh (A288700 n : ℝ))⌉

end

end A287855.P2188663818142549736

/-! ## A287855.P694362067018776208

`and(ceil(2^or(1, n-1)), A166956(2^n+n%2+1))`
-/

namespace A287855.P694362067018776208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉ (A166956 (2 ^ n + (n % 2 + 1)))

end

end A287855.P694362067018776208

/-! ## A287855.P17053493568757593660

`A018851(A288700(n)²)`
-/

namespace A287855.P17053493568757593660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A288700 n ^ 2).toNat

end

end A287855.P17053493568757593660

/-! ## A287855.P3687549993154606817

`A056926(A288700(n)²)`
-/

namespace A287855.P3687549993154606817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A288700 n ^ 2).toNat

end

end A287855.P3687549993154606817

/-! ## A287855.P3590746820185471534

`A288700(A004892(n+1))`
-/

namespace A287855.P3590746820185471534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288700 (A004892 (n + 1)).toNat

end

end A287855.P3590746820185471534

/-!
# A287856: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A287856, there is no canonical definition to state claims against.
-/

/-! ## A287856.P1838792171896105626

`A007088(A287858(n))`
-/

namespace A287856.P1838792171896105626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287858 n).toNat

end

end A287856.P1838792171896105626

/-! ## A287856.P4824303144036169873

`A185544(2*A287858(n))`
-/

namespace A287856.P4824303144036169873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287858 n).toNat

end

end A287856.P4824303144036169873

/-!
# A287857: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A287857, there is no canonical definition to state claims against.
-/

/-! ## A287857.P15240125447170826430

`A007088(A287859(n))`
-/

namespace A287857.P15240125447170826430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287859 n).toNat

end

end A287857.P15240125447170826430

/-! ## A287857.P11775047044131513698

`A185544(2*A287859(n))`
-/

namespace A287857.P11775047044131513698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287859 n).toNat

end

end A287857.P11775047044131513698

/-! ## A287857.P11419949715286710369

`A185544(2*or(2^n-n%2, A216620(n!)))`
-/

namespace A287857.P11419949715286710369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor ((2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)) (A216620 (Nat.factorial n))).toNat

end

end A287857.P11419949715286710369

/-! ## A287857.P4232037764752743471

`A007088(or(2^floor(n/2), A002260(((-2)^n+4^n)/2)))`
-/

namespace A287857.P4232037764752743471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A002260 (SequenceMachineLib.roundAway (((-2) ^ n + (4 ^ n : ℤ) : ℚ) / 2)).toNat)).toNat

end

end A287857.P4232037764752743471

/-!
# A287858: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A287858, there is no canonical definition to state claims against.
-/

/-! ## A287858.P15014726669376354192

`A059252(∑[A002378(2^n)])`
-/

namespace A287858.P15014726669376354192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287858.P15014726669376354192

/-! ## A287858.P9407930311541930041

`A287912(n)-A318652(A287860(n))`
-/

namespace A287858.P9407930311541930041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287912 n - A318652 (A287860 n).toNat

end

end A287858.P9407930311541930041

/-! ## A287858.P13617292728223533473

`or(A000005(A093856(n)), A280412(n))`
-/

namespace A287858.P13617292728223533473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A093856 n).toNat) (A280412 n)

end

end A287858.P13617292728223533473

/-!
# A287859: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A287859, there is no canonical definition to state claims against.
-/

/-! ## A287859.P12468968429409923654

`or(2^n-n%2, A216620(n!))`
-/

namespace A287859.P12468968429409923654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)) (A216620 (Nat.factorial n))

end

end A287859.P12468968429409923654

/-! ## A287859.P17295152286590423423

`or(2^floor(n/2), A002260(((-2)^n+4^n)/2))`
-/

namespace A287859.P17295152286590423423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A002260 (SequenceMachineLib.roundAway (((-2) ^ n + (4 ^ n : ℤ) : ℚ) / 2)).toNat)

end

end A287859.P17295152286590423423

/-! ## A287859.P14377452124607457795

`or(2^floor(n/2), A114327(((-2)^n+4^n)/2))`
-/

namespace A287859.P14377452124607457795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A114327 (SequenceMachineLib.roundAway (((-2) ^ n + (4 ^ n : ℤ) : ℚ) / 2)).toNat)

end

end A287859.P14377452124607457795

/-! ## A287859.P5205222464214317148

`or(A123088(ceil(2^(n-1))), A156552(n+1))`
-/

namespace A287859.P5205222464214317148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123088 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A156552 (n + 1))

end

end A287859.P5205222464214317148

/-!
# A287860: Number of Dyck paths of semilength 2n such that the maximal number of peaks per level equals n.

The programs for A287860, there is no canonical definition to state claims against.
-/

/-! ## A287860.P8041201073271082423

`A287822(∑[4*n])`
-/

namespace A287860.P8041201073271082423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287860.P8041201073271082423

/-! ## A287860.P13696856933509152938

`lcm(1-Δ[A052928(n)], A287822((n+1)*2*n))`
-/

namespace A287860.P13696856933509152938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (f1 (n + 1) - f1 n)) (A287822 ((n + 1) * (2 * n)))

end

end A287860.P13696856933509152938

/-! ## A287860.P17417847024293322923

`A287822(A046092(n))+A025439(n)`
-/

namespace A287860.P17417847024293322923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A046092 n).toNat + A025439 n

end

end A287860.P17417847024293322923

/-! ## A287860.P3719391575776384237

`A287822(A046092(n))^A178334(n)`
-/

namespace A287860.P3719391575776384237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287822 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A287860.P3719391575776384237

/-! ## A287860.P10449676909968572909

`or(A000007(n), A287822(A046092(n)))`
-/

namespace A287860.P10449676909968572909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A287822 (A046092 n).toNat)

end

end A287860.P10449676909968572909

/-! ## A287860.P2112095531554013828

`A287822(A046092(n))%(A173193(n+1)+1)`
-/

namespace A287860.P2112095531554013828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287822 (A046092 n).toNat) (A173193 (n + 1) + 1)

end

end A287860.P2112095531554013828

/-! ## A287860.P2860497546426246331

`A043542(A038567(n))*A287822(A046092(n))`
-/

namespace A287860.P2860497546426246331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (A038567 n).toNat * A287822 (A046092 n).toNat

end

end A287860.P2860497546426246331

/-!
# A287861: Numbers n with a record number of Carmichael numbers that can be generated from them using Erdős's method.

The programs for A287861, there is no canonical definition to state claims against.
-/

/-! ## A287861.P15336274025231979

`A329004(36*A103057(n+1))`
-/

namespace A287861.P15336274025231979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (36 * A103057 (n + 1)).toNat

end

end A287861.P15336274025231979

/-! ## A287861.P855105405590509274

`record[A211437(A274536(∑{d}[n+1, #]))]`
-/

namespace A287861.P855105405590509274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211437 (A274536 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287861.P855105405590509274

/-!
# A287862: Numbers n with a record size of the largest Carmichael number that can be generated from them using Erdős's method.

The programs for A287862, there is no canonical definition to state claims against.
-/

/-! ## A287862.P4037539775391041619

`A287840(lt[A174616(n), A062172(n+1)])`
-/

namespace A287862.P4037539775391041619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287840 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287862.P4037539775391041619

/-!
# A287864: Consider a symmetric pyramid-shaped chessboard with rows of squares of lengths n, n-2, n-4, ..., ending with either 2 or 1 squares; a(n) is the maximal number of mutually non-attacking queens that can be placed on this board.

The programs for A287864, there is no canonical definition to state claims against.
-/

/-! ## A287864.P2039917585191124972

`ceil(n/2-A287867(n+1))`
-/

namespace A287864.P2039917585191124972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A287867 (n + 1) : ℚ)⌉

end

end A287864.P2039917585191124972

/-! ## A287864.P7389666385177764483

`A110654(n)-A287867(n+1)`
-/

namespace A287864.P7389666385177764483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A287867 (n + 1)

end

end A287864.P7389666385177764483

/-! ## A287864.P155615547127248527

`abs(A001057(n))-A287867(n+1)`
-/

namespace A287864.P155615547127248527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A287867 (n + 1)

end

end A287864.P155615547127248527

/-! ## A287864.P12626327842253211505

`∑[A000035(n)]-A287867(n+1)`
-/

namespace A287864.P12626327842253211505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287867 (n + 1)

end

end A287864.P12626327842253211505

/-! ## A287864.P9875361236668110801

`Δ[A002620(n)]-A287867(n+1)`
-/

namespace A287864.P9875361236668110801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A287867 (n + 1)

end

end A287864.P9875361236668110801

/-! ## A287864.P495445882611109474

`Δ[A033638(n)]-A287867(n+1)`
-/

namespace A287864.P495445882611109474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A287867 (n + 1)

end

end A287864.P495445882611109474

/-! ## A287864.P14128195323257360678

`A004526(n+1)-A287867(n+1)`
-/

namespace A287864.P14128195323257360678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A287867 (n + 1)

end

end A287864.P14128195323257360678

/-! ## A287864.P2147398470418218570

`A080513(n)-(A287867(n+1)+1)`
-/

namespace A287864.P2147398470418218570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - (A287867 (n + 1) + 1)

end

end A287864.P2147398470418218570

/-! ## A287864.P15115912116823175892

`A110655(2*n)-A287867(n+1)`
-/

namespace A287864.P15115912116823175892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * n) - A287867 (n + 1)

end

end A287864.P15115912116823175892

/-! ## A287864.P4327920447591179190

`∑[∑[A062157(n)]]-A287867(n+1)`
-/

namespace A287864.P4327920447591179190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287867 (n + 1)

end

end A287864.P4327920447591179190

/-! ## A287864.P8080823549633778263

`A002260(A101881(n)-A287867(n+1))`
-/

namespace A287864.P8080823549633778263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A101881 n - A287867 (n + 1)).toNat

end

end A287864.P8080823549633778263

/-! ## A287864.P17004305466633050786

`A002620(n+1)-(A287867(n+1)+A002620(n))`
-/

namespace A287864.P17004305466633050786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - (A287867 (n + 1) + A002620 n)

end

end A287864.P17004305466633050786

/-!
# A287865: a(n) = gpf(2*a(n-1)+1), with a(1)=1, where gpf = A006530.

The programs for A287865, the canonical program `A287865.P3091488576809349304` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287865 has offset 1).

The definition of A287865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287865.P3091488576809349304

`a(n-8)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=5, a(4)=11, a(5)=23, a(6)=47, a(7)=19, a(8)=13`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287865

/-- `a(n-8)` -/
def P3091488576809349304.Spec : Prop :=
  ∀ n, (P3091488576809349304.a n : ℤ) = A287865 (n + 1)

theorem P3091488576809349304.correct : P3091488576809349304.Spec := by
  intro n
  simp only [A287865, Nat.add_sub_cancel]

end A287865

/-!
# A287866: a(n) = n - A274933(n).

The programs for A287866, there is no canonical definition to state claims against.
-/

/-! ## A287866.P6637369963757418762

`A287867(Δ[n²])+1`
-/

namespace A287866.P6637369963757418762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287867 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A287866.P6637369963757418762

/-! ## A287866.P14777995610795096074

`1-A274933(n+1)+n`
-/

namespace A287866.P14777995610795096074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A274933 (n + 1) + (n : ℤ)

end

end A287866.P14777995610795096074

/-! ## A287866.P8980993016751786518

`1-A287864(Δ[n²])+n`
-/

namespace A287866.P8980993016751786518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287864 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A287866.P8980993016751786518

/-! ## A287866.P13085215553895416248

`n+1-A287864(2*n+1)`
-/

namespace A287866.P13085215553895416248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287864 (2 * n + 1)

end

end A287866.P13085215553895416248

/-! ## A287866.P1578046715936901168

`ϕ²-(ϕ-n)-A274933(ϕ²-(ϕ-n))`
-/

namespace A287866.P1578046715936901168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) - (A274933 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)

end

end A287866.P1578046715936901168

/-! ## A287866.P5807662678103593345

`A007953(Δ[n²]-A287864(Δ[n²])-n)`
-/

namespace A287866.P5807662678103593345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A287864 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A287866.P5807662678103593345

/-!
# A287867: a(n) = floor(n/2) - A287864(n).

The programs for A287867, there is no canonical definition to state claims against.
-/

/-! ## A287867.P6459488261148965486

`ceil(n/2-A287864(n+1))`
-/

namespace A287867.P6459488261148965486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A287864 (n + 1) : ℚ)⌉

end

end A287867.P6459488261148965486

/-! ## A287867.P1054153291302538143

`A110654(n)-A287864(n+1)`
-/

namespace A287867.P1054153291302538143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A287864 (n + 1)

end

end A287867.P1054153291302538143

/-! ## A287867.P2686223410140842987

`abs(A001057(n))-A287864(n+1)`
-/

namespace A287867.P2686223410140842987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A287864 (n + 1)

end

end A287867.P2686223410140842987

/-! ## A287867.P2793766280171108572

`log2(A060546(n))-A287864(n+1)`
-/

namespace A287867.P2793766280171108572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060546 n : ℝ) - (A287864 (n + 1) : ℝ)

end

end A287867.P2793766280171108572

/-! ## A287867.P16795802869876729351

`∑[A000035(n)]-A287864(n+1)`
-/

namespace A287867.P16795802869876729351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287864 (n + 1)

end

end A287867.P16795802869876729351

/-! ## A287867.P16168008325949325695

`Δ[A002620(n)]-A287864(n+1)`
-/

namespace A287867.P16168008325949325695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A287864 (n + 1)

end

end A287867.P16168008325949325695

/-! ## A287867.P17680408196247875722

`Δ[A033638(n)]-A287864(n+1)`
-/

namespace A287867.P17680408196247875722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A287864 (n + 1)

end

end A287867.P17680408196247875722

/-! ## A287867.P18145150564756247960

`A004526(n+1)-A287864(n+1)`
-/

namespace A287867.P18145150564756247960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A287864 (n + 1)

end

end A287867.P18145150564756247960

/-! ## A287867.P7288668862914863234

`A123108(n+1)-A287864(n+1)`
-/

namespace A287867.P7288668862914863234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) - A287864 (n + 1)

end

end A287867.P7288668862914863234

/-! ## A287867.P17268834860107457439

`A110655(2*n)-A287864(n+1)`
-/

namespace A287867.P17268834860107457439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * n) - A287864 (n + 1)

end

end A287867.P17268834860107457439

/-! ## A287867.P8561318296002510094

`A007494(n)-(A287864(n+1)+n)`
-/

namespace A287867.P8561318296002510094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - (A287864 (n + 1) + (n : ℤ))

end

end A287867.P8561318296002510094

/-! ## A287867.P6580441360507848041

`∑[A096271(n²)]-A287864(n+1)`
-/

namespace A287867.P6580441360507848041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287864 (n + 1)

end

end A287867.P6580441360507848041

/-! ## A287867.P7190068697853482741

`∑[log2(A000034(n))]-A287864(n+1)`
-/

namespace A287867.P7190068697853482741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A287864 (n + 1) : ℝ)

end

end A287867.P7190068697853482741

/-! ## A287867.P11074853742431928741

`∑[A059841(n+1)]-A287864(n+1)`
-/

namespace A287867.P11074853742431928741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287864 (n + 1)

end

end A287867.P11074853742431928741

/-! ## A287867.P13543147408343236621

`A002265(2*(n+1))-A287864(n+1)`
-/

namespace A287867.P13543147408343236621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 1)) - A287864 (n + 1)

end

end A287867.P13543147408343236621

/-! ## A287867.P6181677310106279756

`∑[char[A003961(n+1)]]-A287864(n+1)`
-/

namespace A287867.P6181677310106279756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A287864 (n + 1)

end

end A287867.P6181677310106279756

/-! ## A287867.P8130939658189074040

`gcd(A000217(n), A002620(n))-A287864(n+1)`
-/

namespace A287867.P8130939658189074040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000217 n) (A002620 n) : ℤ) - A287864 (n + 1)

end

end A287867.P8130939658189074040

/-! ## A287867.P7486788912192572995

`A002620(n+1)-(A287864(n+1)+A002620(n))`
-/

namespace A287867.P7486788912192572995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - (A287864 (n + 1) + A002620 n)

end

end A287867.P7486788912192572995

/-!
# A287868: Positions of 2's in A103270.

The programs for A287868, there is no canonical definition to state claims against.
-/

/-! ## A287868.P11245479068547752600

`lt[0, A103270(n+2)]+2`
-/

namespace A287868.P11245479068547752600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A287868.P11245479068547752600

/-! ## A287868.P15919943989894246821

`eq[2, A103270(n+3)]+3`
-/

namespace A287868.P15919943989894246821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A287868.P15919943989894246821

/-! ## A287868.P8229060570675754129

`A009056(lt[0, A103270(n+2)])`
-/

namespace A287868.P8229060570675754129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A287868.P8229060570675754129

/-! ## A287868.P3321446760050750880

`A009056(eq[2, A103270(n+2)])`
-/

namespace A287868.P3321446760050750880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287868.P3321446760050750880

/-! ## A287868.P11140990697318774644

`lt[0, A103270(A233583(n+1))]`
-/

namespace A287868.P11140990697318774644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287868.P11140990697318774644

/-!
# A287869: Wythoff array with one extra column, read by antidiagonals downwards.

The programs for A287869, there is no canonical definition to state claims against.
-/

/-! ## A287869.P2444929366039459262

`A287870(comp[∑[n]])`
-/

namespace A287869.P2444929366039459262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A287869.P2444929366039459262

/-! ## A287869.P1415324431247209404

`floor((A035513(n+1)+1)/ϕ)`
-/

namespace A287869.P1415324431247209404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035513 (n + 1) + 1 : ℝ) / Real.goldenRatio⌋

end

end A287869.P1415324431247209404

/-! ## A287869.P16454965962105876619

`A356874(A356875(n))`
-/

namespace A287869.P16454965962105876619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A356875 n).toNat

end

end A287869.P16454965962105876619

/-! ## A287869.P2032842066540487515

`A005206(A035513(n+1))`
-/

namespace A287869.P2032842066540487515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A035513 (n + 1)).toNat

end

end A287869.P2032842066540487515

/-! ## A287869.P9331726871280993525

`A324965(2*A356875(n))`
-/

namespace A287869.P9331726871280993525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (2 * A356875 n).toNat

end

end A287869.P9331726871280993525

/-! ## A287869.P10284810680373039342

`A022290(round(A356875(n)/2))`
-/

namespace A287869.P10284810680373039342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway ((A356875 n : ℚ) / 2)).toNat

end

end A287869.P10284810680373039342

/-! ## A287869.P7256354807790229509

`A060143(A035513(n+1)+1)`
-/

namespace A287869.P7256354807790229509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A035513 (n + 1) + 1).toNat

end

end A287869.P7256354807790229509

/-! ## A287869.P11948750340987287191

`or(char[1], A287870(A014132(n+1)))`
-/

namespace A287869.P11948750340987287191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A287870 (A014132 (n + 1)).toNat)

end

end A287869.P11948750340987287191

/-! ## A287869.P6576305722410868709

`A035513(n+1)-A287870(n+1)`
-/

namespace A287869.P6576305722410868709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) - A287870 (n + 1)

end

end A287869.P6576305722410868709

/-! ## A287869.P671433280944147530

`A035513(comp[∑[n]])-A035513(n+1)`
-/

namespace A287869.P671433280944147530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A035513 (n + 1)

end

end A287869.P671433280944147530

/-!
# A287870: The extended Wythoff array (the Wythoff array with two extra columns) read by antidiagonals downwards.

The programs for A287870, there is no canonical definition to state claims against.
-/

/-! ## A287870.P9609765690440578936

`floor((A035513(n+1)+1)/ϕ²)`
-/

namespace A287870.P9609765690440578936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035513 (n + 1) + 1 : ℝ) / Real.goldenRatio ^ 2⌋

end

end A287870.P9609765690440578936

/-! ## A287870.P18311983193483220166

`A060144(A035513(n+1)+1)`
-/

namespace A287870.P18311983193483220166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A035513 (n + 1) + 1).toNat

end

end A287870.P18311983193483220166

/-! ## A287870.P9315119213448746311

`A005206(floor(A035513(n+1)/ϕ))`
-/

namespace A287870.P9315119213448746311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ⌊(A035513 (n + 1) : ℝ) / Real.goldenRatio⌋.toNat

end

end A287870.P9315119213448746311

/-! ## A287870.P16677823852598621445

`A060143(ceil(A035513(n+1)/ϕ))`
-/

namespace A287870.P16677823852598621445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 ⌈(A035513 (n + 1) : ℝ) / Real.goldenRatio⌉.toNat

end

end A287870.P16677823852598621445

/-! ## A287870.P4622913134387376089

`A060143(A060143(A035513(n+1))+1)`
-/

namespace A287870.P4622913134387376089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A060143 (A035513 (n + 1)).toNat + 1).toNat

end

end A287870.P4622913134387376089

/-! ## A287870.P17353984311132276472

`A005206(A005206(A035513(n+1)-1))`
-/

namespace A287870.P17353984311132276472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A035513 (n + 1) - 1).toNat).toNat

end

end A287870.P17353984311132276472

/-! ## A287870.P9445375796394483427

`2*A035513(n+1)-A035513(A014132(n+1))`
-/

namespace A287870.P9445375796394483427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035513 (n + 1) - A035513 (A014132 (n + 1)).toNat

end

end A287870.P9445375796394483427

/-! ## A287870.P11890927924574678327

`A324965(A356875(n)-1)`
-/

namespace A287870.P11890927924574678327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A356875 n - 1).toNat

end

end A287870.P11890927924574678327

/-! ## A287870.P15710615321332849904

`A035513(n+1)-A287869(n+1)`
-/

namespace A287870.P15710615321332849904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) - A287869 (n + 1)

end

end A287870.P15710615321332849904

/-! ## A287870.P14858748480737109821

`A114579(A083412(n))-A287869(n+1)`
-/

namespace A287870.P14858748480737109821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114579 (A083412 n).toNat - A287869 (n + 1)

end

end A287870.P14858748480737109821

/-!
# A287873: The right-hand part of the "Empire State Building" array read by rows.

The programs for A287873, there is no canonical definition to state claims against.
-/

/-! ## A287873.P15601777815483660318

`A064692(12*A290113(n))`
-/

namespace A287873.P15601777815483660318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (12 * A290113 n).toNat

end

end A287873.P15601777815483660318

/-!
# A287874: Concatenate prime factorization as in A080670, but write everything in binary.

The programs for A287874, there is no canonical definition to state claims against.
-/

/-! ## A287874.P6931835082725213258

`A007088(A230625(n+1))`
-/

namespace A287874.P6931835082725213258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A230625 (n + 1)).toNat

end

end A287874.P6931835082725213258

/-! ## A287874.P18347250416179895235

`A230625(n+1)+A228071(A230625(n+1)%A031451(n+1))`
-/

namespace A287874.P18347250416179895235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230625 (n + 1) + A228071 (Int.tmod (A230625 (n + 1)) (A031451 (n + 1))).toNat

end

end A287874.P18347250416179895235

/-! ## A287874.P9568360078006840481

`A185544(2*A230625(n+1))`
-/

namespace A287874.P9568360078006840481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A230625 (n + 1)).toNat

end

end A287874.P9568360078006840481

/-! ## A287874.P1633940736642069356

`A185544(A230625(n+1)+A230625(n+1))`
-/

namespace A287874.P1633940736642069356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A230625 (n + 1) + A230625 (n + 1)).toNat

end

end A287874.P1633940736642069356

/-! ## A287874.P2036000202522351618

`A230625(n+1)+A228071(A230625(n+1))%A115771(n+2)`
-/

namespace A287874.P2036000202522351618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230625 (n + 1) + Int.tmod (A228071 (A230625 (n + 1)).toNat) (A115771 (n + 2))

end

end A287874.P2036000202522351618

/-!
# A287875: Iterate the map x -> A230625(x) starting at n; sequence gives the first prime (or 1) that is reached, written in base 2, or -1 if no prime is ever reached.

The programs for A287875, there is no canonical definition to state claims against.
-/

/-! ## A287875.P2054294749741648904

`∏{p}[A287874(A230625(A230625(n+1))), #]`
-/

namespace A287875.P2054294749741648904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A230625 (A230625 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A287875.P2054294749741648904

/-! ## A287875.P2606418526177388339

`∏{p}[A064795(n+1), #]`
-/

namespace A287875.P2606418526177388339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A287875.P2606418526177388339

/-! ## A287875.P6797083962877037401

`A000027(A064795(n+1))`
-/

namespace A287875.P6797083962877037401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064795 (n + 1)).toNat

end

end A287875.P6797083962877037401

/-!
# A287876: Numbers in Hebrew that do not contain the letter "Ayin".

The programs for A287876, there is no canonical definition to state claims against.
-/

/-! ## A287876.P8711765872635528830

`eq[A007095(n), A179239(A222242(n))]`
-/

namespace A287876.P8711765872635528830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287876.P8711765872635528830

/-! ## A287876.P9363656828397077793

`lt[A062504(n), A006530(A248142(3*n+4))]`
-/

namespace A287876.P9363656828397077793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248142 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287876.P9363656828397077793

/-! ## A287876.P11271616805288313215

`lt[A272730(3*n+1), A231326(A007500(n+5))]`
-/

namespace A287876.P11271616805288313215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231326 (A007500 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287876.P11271616805288313215

/-! ## A287876.P13613466206547385386

`A003056(∑[∑[A244143(n+1)]²]+n)`
-/

namespace A287876.P13613466206547385386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244143 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A287876.P13613466206547385386

/-! ## A287876.P213016086532440614

`eq[A055184(n+1), A176047(n)]`
-/

namespace A287876.P213016086532440614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287876.P213016086532440614

/-!
# A287879: Irregular triangle read by rows: normalized dimensions of certain generalized quadratic residue codes of length n.

The programs for A287879, there is no canonical definition to state claims against.
-/

/-! ## A287879.P1578185520296451338

`A009213(∪[A009220(3*(n+1)), A009245(n+4)])`
-/

namespace A287879.P1578185520296451338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009220 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009245 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009213 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A287879.P1578185520296451338

/-!
# A287880: Row sums of triangle in A287879, divided by 2.

The programs for A287880, there is no canonical definition to state claims against.
-/

/-! ## A287880.P3144765216015084331

`A204085(A051291(n))`
-/

namespace A287880.P3144765216015084331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204085 (A051291 n).toNat

end

end A287880.P3144765216015084331

/-! ## A287880.P18342205568164644128

`A204085(A135364(n))`
-/

namespace A287880.P18342205568164644128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204085 (A135364 n).toNat

end

end A287880.P18342205568164644128

/-!
# A287881: Partial sums of A080670.

The programs for A287881, there is no canonical definition to state claims against.
-/

/-! ## A287881.P12936828887091434678

`∑[A080670(n+1)]`
-/

namespace A287881.P12936828887091434678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287881.P12936828887091434678

/-! ## A287881.P13192806567250368096

`A080670(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A287881.P13192806567250368096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080670 (n + 1) + a (A023443 n).toNat

end

end A287881.P13192806567250368096

/-! ## A287881.P12531203494282801783

`∑[A080670(n-log2(1/2))%A103206(n)]`
-/

namespace A287881.P12531203494282801783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080670 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A103206 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287881.P12531203494282801783

/-! ## A287881.P3710320462091674351

`a(n-1)+A080670(n+1)+A000007(n)` with `a(0)=1, a(1)=3`
-/

namespace A287881.P3710320462091674351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A080670 (n + 1) + A000007 n)

end

end A287881.P3710320462091674351

/-! ## A287881.P10510387936471447262

`a(n-1)+A080670(n+1)%A079505(n+2)` with `a(0)=1, a(1)=3`
-/

namespace A287881.P10510387936471447262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + Int.tmod (A080670 (n + 1)) (A079505 (n + 2))

end

end A287881.P10510387936471447262

/-! ## A287881.P8739808591802635020

`A000027(∑[A080670(n-log2(1/2))])`
-/

namespace A287881.P8739808591802635020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287881.P8739808591802635020

/-!
# A287882: a(n) = Sum_{ i <= n, i squarefree} A080670(i).

The programs for A287882, there is no canonical definition to state claims against.
-/

/-! ## A287882.P9706681449880726459

`∑[A008966(n+1)*A037276(n+1)]`
-/

namespace A287882.P9706681449880726459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A037276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287882.P9706681449880726459

/-! ## A287882.P12208873769743441232

`∑[A008966(n+1)*A080670(n+1)]`
-/

namespace A287882.P12208873769743441232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287882.P12208873769743441232

/-! ## A287882.P8396954376620497303

`∑[lcm(A008683(n+1), A037276(n+1))]`
-/

namespace A287882.P8396954376620497303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A037276 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287882.P8396954376620497303

/-! ## A287882.P10859135640572035862

`∑[lcm(A069158(n+1), A080670(n+1))]`
-/

namespace A287882.P10859135640572035862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069158 (n + 1)) (A080670 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287882.P10859135640572035862

/-! ## A287882.P15586177654246114190

`∑[A008683(n+1)²*A080670(n+1)]`
-/

namespace A287882.P15586177654246114190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287882.P15586177654246114190

/-!
# A287883: Partial sums of A037276.

The programs for A287883, there is no canonical definition to state claims against.
-/

/-! ## A287883.P16964231370540612089

`∑[A037276(n+1)]`
-/

namespace A287883.P16964231370540612089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287883.P16964231370540612089

/-! ## A287883.P947267380142357857

`∑[A289660(n+1)+1+n]`
-/

namespace A287883.P947267380142357857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289660 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287883.P947267380142357857

/-! ## A287883.P1940184857749586208

`∑[A037276(n-log2(1/2))%A167498(n)]`
-/

namespace A287883.P1940184857749586208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A167498 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287883.P1940184857749586208

/-! ## A287883.P2206807779452948772

`∑[A037276(n-log2(1/2))]%A303573(n)`
-/

namespace A287883.P2206807779452948772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A303573 n)

end

end A287883.P2206807779452948772

/-! ## A287883.P13776636303988957669

`∑[A087712(A064988(n+1))]`
-/

namespace A287883.P13776636303988957669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287883.P13776636303988957669

/-! ## A287883.P2760701703886883089

`A037276(n+1)+a(A003056(A161680(n)))` with `a(0)=1`
-/

namespace A287883.P2760701703886883089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037276 (n + 1) + a (A003056 (A161680 n).toNat).toNat

end

end A287883.P2760701703886883089

/-! ## A287883.P12232766036093388239

`∑[A000027(A037276(n-log2(1/2)))]`
-/

namespace A287883.P12232766036093388239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A037276 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287883.P12232766036093388239

/-!
# A287884: a(n) = A287883(2^n).

The programs for A287884, there is no canonical definition to state claims against.
-/

/-! ## A287884.P3244498382237397034

`A287883(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A287884.P3244498382237397034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287883 (2 ^ n)

end

end A287884.P3244498382237397034

/-! ## A287884.P12023397211937628651

`record[A287883(A055248(n))]`
-/

namespace A287884.P12023397211937628651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287883 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287884.P12023397211937628651

/-! ## A287884.P2897662467882265376

`record[A287883(A059268(n))]`
-/

namespace A287884.P2897662467882265376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287883 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287884.P2897662467882265376

/-! ## A287884.P9775075613520475501

`record[A287883(A130321(n))]`
-/

namespace A287884.P9775075613520475501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287883 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287884.P9775075613520475501

/-! ## A287884.P11203448754063169117

`record[A287883(A137399(n))]`
-/

namespace A287884.P11203448754063169117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287883 (A137399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287884.P11203448754063169117

/-!
# A287885: Rooted labeled Ptolemaic graphs on n nodes.

The programs for A287885, there is no canonical definition to state claims against.
-/

/-! ## A287885.P14209461535179635641

`(n+1)*A287886(n+1)`
-/

namespace A287885.P14209461535179635641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287886 (n + 1)

end

end A287885.P14209461535179635641

/-! ## A287885.P10447790007372318513

`A287886(n+1)*A291769(n)`
-/

namespace A287885.P10447790007372318513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287886 (n + 1) * A291769 n

end

end A287885.P10447790007372318513

/-! ## A287885.P3589690543853753455

`A287886(n+1)*A348553(n)`
-/

namespace A287885.P3589690543853753455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287886 (n + 1) * A348553 n

end

end A287885.P3589690543853753455

/-!
# A287886: Unrooted labeled Ptolemaic graphs on n nodes.

The programs for A287886, there is no canonical definition to state claims against.
-/

/-! ## A287886.P9685409640119847562

`A287885(n+1)/(n+1)`
-/

namespace A287886.P9685409640119847562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287885 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A287886.P9685409640119847562

/-!
# A287887: Rooted unlabeled Ptolemaic graphs on n nodes.

The programs for A287887, there is no canonical definition to state claims against.
-/

/-! ## A287887.P1675587197882678655

`A296050(n)+A292381(A000142(n))`
-/

namespace A287887.P1675587197882678655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296050 n + A292381 (A000142 n).toNat

end

end A287887.P1675587197882678655

/-! ## A287887.P10295604407407189363

`A008621(or(A000129(n), A150868(n)))`
-/

namespace A287887.P10295604407407189363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A000129 n) (A150868 n)).toNat

end

end A287887.P10295604407407189363

/-! ## A287887.P9186109701831213375

`A008620(xor(A150647(n), A191522(n)))`
-/

namespace A287887.P9186109701831213375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.xor (A150647 n) (A191522 n)).toNat

end

end A287887.P9186109701831213375

/-!
# A287888: Unrooted unlabeled connected Ptolemaic graphs on n nodes.

The programs for A287888, there is no canonical definition to state claims against.
-/

/-! ## A287888.P7478716468293276350

`round(sqrt(A377409(2*n+1)))`
-/

namespace A287888.P7478716468293276350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A377409 (2 * n + 1) : ℝ))

end

end A287888.P7478716468293276350

/-! ## A287888.P12878431263325164439

`3*A381432(a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A287888.P12878431263325164439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * A381432 (a (n - 1)).toNat - 1

end

end A287888.P12878431263325164439

/-! ## A287888.P15497121683623081287

`A026834(A105872(n))`
-/

namespace A287888.P15497121683623081287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A105872 n).toNat

end

end A287888.P15497121683623081287

/-!
# A287889: Number of rooted labeled 4-cactus graphs on 3n+1 nodes.

The programs for A287889, the canonical program `A287889.P10328985195232109668` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287889 has offset 0).

The definition of A287889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287889.P10328985195232109668

`(3*n+1)^n*(3*n)!/(2^n*n!)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287889

/-- `(3*n+1)^n*(3*n)!/(2^n*n!)` -/
def P10328985195232109668.Spec : Prop :=
  ∀ n, P10328985195232109668.a n = (A287889 n : ℚ)

end A287889

/-!
# A287890: Number of unrooted labeled 4-cactus graphs on 3n+1 nodes.

The programs for A287890, the canonical program `A287890.P5469321248537157723` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287890 has offset 0).

The definition of A287890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287890.P5469321248537157723

`(3*n+1)^(n-1)*(3*n)!/(2^n*n!)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287890

/-- `(3*n+1)^(n-1)*(3*n)!/(2^n*n!)` -/
def P5469321248537157723.Spec : Prop :=
  ∀ n, P5469321248537157723.a n = (A287890 n : ℚ)

end A287890

/-!
# A287891: Number of rooted unlabeled 4-cactus graphs on 3n+1 nodes.

The programs for A287891, there is no canonical definition to state claims against.
-/

/-! ## A287891.P8443083610708823773

`A332648(∑[n+3]+n+3)`
-/

namespace A287891.P8443083610708823773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A287891.P8443083610708823773

/-! ## A287891.P1626874138658182410

`xor(A193074(n), A326292(A261049(n)))`
-/

namespace A287891.P1626874138658182410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193074 n) (A326292 (A261049 n).toNat)

end

end A287891.P1626874138658182410

/-!
# A287892: Number of unrooted unlabeled 4-cactus graphs on 3n+1 nodes.

The programs for A287892, there is no canonical definition to state claims against.
-/

/-! ## A287892.P18042164238420576688

`A332649(∑[n+3]+n+3)`
-/

namespace A287892.P18042164238420576688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A287892.P18042164238420576688

/-! ## A287892.P1837722398605340681

`A064823(or(A000984(n), A141214(n)))`
-/

namespace A287892.P1837722398605340681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064823 (Int.lor (A000984 n) (A141214 n)).toNat

end

end A287892.P1837722398605340681

/-!
# A287893: a(n) = floor(n*(n+2)/9).

The programs for A287893, the canonical program `A287893.P38497443737169630` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287893 has offset 0).

The definition of A287893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287893.P38497443737169630

`floor(n*(n+2)/9)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A287893

/-- `floor(n*(n+2)/9)` -/
def P38497443737169630.Spec : Prop :=
  ∀ n, P38497443737169630.a n = A287893 n

theorem P38497443737169630.correct : P38497443737169630.Spec := by
  intro n
  simp only [A287893]

end A287893

/-! ## A287893.P16089229754193158009

`ceil(record[((n-1)/3)²-1])`
-/

namespace A287893.P16089229754193158009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 3) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A287893.P16089229754193158009

namespace A287893

/-- `ceil(record[((n-1)/3)²-1])` -/
def P16089229754193158009.Spec : Prop :=
  ∀ n, P16089229754193158009.a n = A287893 n

end A287893

/-! ## A287893.P17135217396660012345

`round(((n+1)/3)²-cos(1))`
-/

namespace A287893.P17135217396660012345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1 : ℚ) / 3) ^ 2 : ℝ) - Real.cos (1 : ℝ))

end

end A287893.P17135217396660012345

namespace A287893

/-- `round(((n+1)/3)²-cos(1))` -/
def P17135217396660012345.Spec : Prop :=
  ∀ n, P17135217396660012345.a n = A287893 n

end A287893

/-! ## A287893.P7436911611961500925

`A184017(n+1)-(n+1)`
-/

namespace A287893.P7436911611961500925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184017 (n + 1) - (n + 1 : ℤ)

end

end A287893.P7436911611961500925

namespace A287893

/-- `A184017(n+1)-(n+1)` -/
def P7436911611961500925.Spec : Prop :=
  ∀ n, P7436911611961500925.a n = A287893 n

end A287893

/-! ## A287893.P18347664991804848841

`A184109(n+1)-(n+2)`
-/

namespace A287893.P18347664991804848841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184109 (n + 1) - (n + 2 : ℤ)

end

end A287893.P18347664991804848841

namespace A287893

/-- `A184109(n+1)-(n+2)` -/
def P18347664991804848841.Spec : Prop :=
  ∀ n, P18347664991804848841.a n = A287893 n

end A287893

/-! ## A287893.P4421471271398953597

`ceil(A008810(n+1)/3)-1`
-/

namespace A287893.P4421471271398953597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008810 (n + 1) : ℚ) / 3⌉ - 1

end

end A287893.P4421471271398953597

namespace A287893

/-- `ceil(A008810(n+1)/3)-1` -/
def P4421471271398953597.Spec : Prop :=
  ∀ n, P4421471271398953597.a n = A287893 n

end A287893

/-! ## A287893.P12936012135241323832

`ceil(((A028310(n)+1)/3)²)-1`
-/

namespace A287893.P12936012135241323832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A028310 n + 1 : ℚ) / 3) ^ 2⌉ - 1

end

end A287893.P12936012135241323832

namespace A287893

/-- `ceil(((A028310(n)+1)/3)²)-1` -/
def P12936012135241323832.Spec : Prop :=
  ∀ n, P12936012135241323832.a n = A287893 n

end A287893

/-! ## A287893.P18157524615372740930

`ceil(ceil(A000290(n+1)/3)/3)-1`
-/

namespace A287893.P18157524615372740930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A000290 (n + 1) : ℚ) / 3⌉ : ℚ) / 3⌉ - 1

end

end A287893.P18157524615372740930

namespace A287893

/-- `ceil(ceil(A000290(n+1)/3)/3)-1` -/
def P18157524615372740930.Spec : Prop :=
  ∀ n, P18157524615372740930.a n = A287893 n

end A287893

/-! ## A287893.P5646532321340577833

`A036407(n+1)-1`
-/

namespace A287893.P5646532321340577833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 (n + 1) - 1

end

end A287893.P5646532321340577833

namespace A287893

/-- `A036407(n+1)-1` -/
def P5646532321340577833.Spec : Prop :=
  ∀ n, P5646532321340577833.a n = A287893 n

end A287893

/-! ## A287893.P9003842973411723402

`Δ[∑[A036407(n)]-n]`
-/

namespace A287893.P9003842973411723402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287893.P9003842973411723402

namespace A287893

/-- `Δ[∑[A036407(n)]-n]` -/
def P9003842973411723402.Spec : Prop :=
  ∀ n, P9003842973411723402.a n = A287893 n

end A287893

/-! ## A287893.P2637774982094933438

`A011655(n+1)+A056838(n+1)-1`
-/

namespace A287893.P2637774982094933438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + (A056838 (n + 1) - 1)

end

end A287893.P2637774982094933438

namespace A287893

/-- `A011655(n+1)+A056838(n+1)-1` -/
def P2637774982094933438.Spec : Prop :=
  ∀ n, P2637774982094933438.a n = A287893 n

end A287893

/-! ## A287893.P9309150255773840406

`∑[A002264(A171088(2*n+1))]-1`
-/

namespace A287893.P9309150255773840406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A171088 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A287893.P9309150255773840406

namespace A287893

/-- `∑[A002264(A171088(2*n+1))]-1` -/
def P9309150255773840406.Spec : Prop :=
  ∀ n, P9309150255773840406.a n = A287893 n

end A287893

/-! ## A287893.P18277130511405465497

`A023443(A036407(n+1))`
-/

namespace A287893.P18277130511405465497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036407 (n + 1)).toNat

end

end A287893.P18277130511405465497

namespace A287893

/-- `A023443(A036407(n+1))` -/
def P18277130511405465497.Spec : Prop :=
  ∀ n, P18277130511405465497.a n = A287893 n

end A287893

/-! ## A287893.P12068903017080557053

`A004523(A089108(n+1))-(n+2)`
-/

namespace A287893.P12068903017080557053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A089108 (n + 1)).toNat - (n + 2 : ℤ)

end

end A287893.P12068903017080557053

namespace A287893

/-- `A004523(A089108(n+1))-(n+2)` -/
def P12068903017080557053.Spec : Prop :=
  ∀ n, P12068903017080557053.a n = A287893 n

end A287893

/-! ## A287893.P8310594412609823397

`A002264(A032765(n))`
-/

namespace A287893.P8310594412609823397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A032765 n).toNat

end

end A287893.P8310594412609823397

namespace A287893

/-- `A002264(A032765(n))` -/
def P8310594412609823397.Spec : Prop :=
  ∀ n, P8310594412609823397.a n = A287893 n

end A287893

/-! ## A287893.P15589366031071939888

`A002264(A008810(n+1)-1)`
-/

namespace A287893.P15589366031071939888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008810 (n + 1) - 1).toNat

end

end A287893.P15589366031071939888

namespace A287893

/-- `A002264(A008810(n+1)-1)` -/
def P15589366031071939888.Spec : Prop :=
  ∀ n, P15589366031071939888.a n = A287893 n

end A287893

/-! ## A287893.P13914043613806919995

`A002264(A128422(n+1)+n)`
-/

namespace A287893.P13914043613806919995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A128422 (n + 1) + (n : ℤ)).toNat

end

end A287893.P13914043613806919995

namespace A287893

/-- `A002264(A128422(n+1)+n)` -/
def P13914043613806919995.Spec : Prop :=
  ∀ n, P13914043613806919995.a n = A287893 n

end A287893

/-! ## A287893.P4658804705504735514

`A002264(A174709(2*n+1)+n)`
-/

namespace A287893.P4658804705504735514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A174709 (2 * n + 1) + (n : ℤ)).toNat

end

end A287893.P4658804705504735514

namespace A287893

/-- `A002264(A174709(2*n+1)+n)` -/
def P4658804705504735514.Spec : Prop :=
  ∀ n, P4658804705504735514.a n = A287893 n

end A287893

/-! ## A287893.P17458866985425640626

`A002264(A004396(n)+A000212(n))`
-/

namespace A287893.P17458866985425640626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004396 n + A000212 n).toNat

end

end A287893.P17458866985425640626

namespace A287893

/-- `A002264(A004396(n)+A000212(n))` -/
def P17458866985425640626.Spec : Prop :=
  ∀ n, P17458866985425640626.a n = A287893 n

end A287893

/-!
# A287894: Sum of the digit sums of the n-th powers of the first n positive integers.

The programs for A287894, there is no canonical definition to state claims against.
-/

/-! ## A287894.P15407002256396321657

`A287895(n)+a(n-1)` with `a(0)=1`
-/

namespace A287894.P15407002256396321657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287895 n + a (n - 1)

end

end A287894.P15407002256396321657

/-! ## A287894.P13802856198245352479

`∑[A287895(A028310(n))]-3`
-/

namespace A287894.P13802856198245352479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287895 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A287894.P13802856198245352479

/-! ## A287894.P1960730682365069778

`∑[A287895(A028310(n))%A033816(n)]`
-/

namespace A287894.P1960730682365069778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287895 (A028310 n).toNat) (A033816 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287894.P1960730682365069778

/-! ## A287894.P12434113549848450319

`∑[A287895(A028310(n))^(A019402(n+1)%2)]`
-/

namespace A287894.P12434113549848450319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287895 (A028310 n).toNat : ℚ) ^ (Int.tmod (A019402 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287894.P12434113549848450319

/-! ## A287894.P7003613835924406311

`∑[A287895(n+1)]+1-A287895(n+1)`
-/

namespace A287894.P7003613835924406311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A287895 (n + 1))

end

end A287894.P7003613835924406311

/-!
# A287895: Differences of A287894.

The programs for A287895, there is no canonical definition to state claims against.
-/

/-! ## A287895.P2064332407811605683

`Δ[A287894(n+1)]`
-/

namespace A287895.P2064332407811605683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287895.P2064332407811605683

/-! ## A287895.P1314504378063521859

`A287894(n+2)-A287894(n+1)`
-/

namespace A287895.P1314504378063521859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287894 (n + 2) - A287894 (n + 1)

end

end A287895.P1314504378063521859

/-! ## A287895.P12360295206960997981

`Δ[record[A287894(A137735(n))]]`
-/

namespace A287895.P12360295206960997981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287894 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287895.P12360295206960997981

/-!
# A287896: a(n) = A002487(n)*A001511(n).

The programs for A287896, the canonical program `A287896.P8146581605241777791` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287896 has offset 1).

The definition of A287896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287896.P14578512733018866012

`A284565(n)+A000360(n+1)`
-/

namespace A287896.P14578512733018866012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 n + A000360 (n + 1)

end

end A287896.P14578512733018866012

namespace A287896

/-- `A284565(n)+A000360(n+1)` -/
def P14578512733018866012.Spec : Prop :=
  ∀ n, P14578512733018866012.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P17382527535065972274

`A288003(n+1)+A002487(n)`
-/

namespace A287896.P17382527535065972274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (n + 1) + A002487 n

end

end A287896.P17382527535065972274

namespace A287896

/-- `A288003(n+1)+A002487(n)` -/
def P17382527535065972274.Spec : Prop :=
  ∀ n, P17382527535065972274.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P4177787421685916728

`A287824(n+1)+A287823(n+1)`
-/

namespace A287896.P4177787421685916728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 (n + 1) + A287823 (n + 1)

end

end A287896.P4177787421685916728

namespace A287896

/-- `A287824(n+1)+A287823(n+1)` -/
def P4177787421685916728.Spec : Prop :=
  ∀ n, P4177787421685916728.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P9132139540885216227

`A007306(n+1)-A288002(n+1)`
-/

namespace A287896.P9132139540885216227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A288002 (n + 1)

end

end A287896.P9132139540885216227

namespace A287896

/-- `A007306(n+1)-A288002(n+1)` -/
def P9132139540885216227.Spec : Prop :=
  ∀ n, P9132139540885216227.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P4632733652569424631

`A323900(n+1)-A323899(n+1)`
-/

namespace A287896.P4632733652569424631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323900 (n + 1) - A323899 (n + 1)

end

end A287896.P4632733652569424631

namespace A287896

/-- `A323900(n+1)-A323899(n+1)` -/
def P4632733652569424631.Spec : Prop :=
  ∀ n, P4632733652569424631.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P8146581605241777791

`A001511(n+1)*A002487(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A287896

/-- `A001511(n+1)*A002487(n+1)` -/
def P8146581605241777791.Spec : Prop :=
  ∀ n, P8146581605241777791.a n = A287896 (n + 1)

theorem P8146581605241777791.correct : P8146581605241777791.Spec := by
  intro n
  simp only [A287896, Nat.add_sub_cancel]

end A287896

/-! ## A287896.P9125434486432283781

`∑{d}[n+1, A001511(#)*A317839((n+1)/#)]`
-/

namespace A287896.P9125434486432283781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A317839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A287896.P9125434486432283781

namespace A287896

/-- `∑{d}[n+1, A001511(#)*A317839((n+1)/#)]` -/
def P9125434486432283781.Spec : Prop :=
  ∀ n, P9125434486432283781.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P17027475660014028070

`∑{d}[n+1, A087003(#)*A317838((n+1)/#)]`
-/

namespace A287896.P17027475660014028070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A317838 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A287896.P17027475660014028070

namespace A287896

/-- `∑{d}[n+1, A087003(#)*A317838((n+1)/#)]` -/
def P17027475660014028070.Spec : Prop :=
  ∀ n, P17027475660014028070.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P6411680257314802781

`A002487(A003602(n+1))+A002487(n)`
-/

namespace A287896.P6411680257314802781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003602 (n + 1)).toNat + A002487 n

end

end A287896.P6411680257314802781

namespace A287896

/-- `A002487(A003602(n+1))+A002487(n)` -/
def P6411680257314802781.Spec : Prop :=
  ∀ n, P6411680257314802781.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P646857211873322531

`A002487(A109168(n+1))+A002487(n)`
-/

namespace A287896.P646857211873322531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A109168 (n + 1)).toNat + A002487 n

end

end A287896.P646857211873322531

namespace A287896

/-- `A002487(A109168(n+1))+A002487(n)` -/
def P646857211873322531.Spec : Prop :=
  ∀ n, P646857211873322531.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P8567160594445908031

`A002487(A109170(n+1))+A002487(n)`
-/

namespace A287896.P8567160594445908031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A109170 (n + 1)).toNat + A002487 n

end

end A287896.P8567160594445908031

namespace A287896

/-- `A002487(A109170(n+1))+A002487(n)` -/
def P8567160594445908031.Spec : Prop :=
  ∀ n, P8567160594445908031.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P10392718768305648994

`A002487(n)+A002487(A140472(n+1))`
-/

namespace A287896.P10392718768305648994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + A002487 (A140472 (n + 1)).toNat

end

end A287896.P10392718768305648994

namespace A287896

/-- `A002487(n)+A002487(A140472(n+1))` -/
def P10392718768305648994.Spec : Prop :=
  ∀ n, P10392718768305648994.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P3555375767940993102

`A002487(A351565(n+1))+A002487(n)`
-/

namespace A287896.P3555375767940993102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A351565 (n + 1)).toNat + A002487 n

end

end A287896.P3555375767940993102

namespace A287896

/-- `A002487(A351565(n+1))+A002487(n)` -/
def P3555375767940993102.Spec : Prop :=
  ∀ n, P3555375767940993102.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P15064968729844089101

`A002487(n+1)*A002487(A233775(n+1))`
-/

namespace A287896.P15064968729844089101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A002487 (A233775 (n + 1)).toNat

end

end A287896.P15064968729844089101

namespace A287896

/-- `A002487(n+1)*A002487(A233775(n+1))` -/
def P15064968729844089101.Spec : Prop :=
  ∀ n, P15064968729844089101.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P15007457001646835122

`A000360(n+1)+A007306(n+1)-A284566(n)`
-/

namespace A287896.P15007457001646835122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (n + 1) + (A007306 (n + 1) - A284566 n)

end

end A287896.P15007457001646835122

namespace A287896

/-- `A000360(n+1)+A007306(n+1)-A284566(n)` -/
def P15007457001646835122.Spec : Prop :=
  ∀ n, P15007457001646835122.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P12618654846365607962

`(A005187(n+1)-A005187(n))*A002487(n+1)`
-/

namespace A287896.P12618654846365607962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A005187 n) * A002487 (n + 1)

end

end A287896.P12618654846365607962

namespace A287896

/-- `(A005187(n+1)-A005187(n))*A002487(n+1)` -/
def P12618654846365607962.Spec : Prop :=
  ∀ n, P12618654846365607962.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P14170095877315739288

`A284566(n+1)+A284556(n)`
-/

namespace A287896.P14170095877315739288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 (n + 1) + A284556 n

end

end A287896.P14170095877315739288

namespace A287896

/-- `A284566(n+1)+A284556(n)` -/
def P14170095877315739288.Spec : Prop :=
  ∀ n, P14170095877315739288.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P2753583114644108949

`A288002(n+1)+A002487(n+2)`
-/

namespace A287896.P2753583114644108949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (n + 1) + A002487 (n + 2)

end

end A287896.P2753583114644108949

namespace A287896

/-- `A288002(n+1)+A002487(n+2)` -/
def P2753583114644108949.Spec : Prop :=
  ∀ n, P2753583114644108949.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P10577771159423497530

`A007306(n+2)-A288003(n+1)`
-/

namespace A287896.P10577771159423497530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 2) - A288003 (n + 1)

end

end A287896.P10577771159423497530

namespace A287896

/-- `A007306(n+2)-A288003(n+1)` -/
def P10577771159423497530.Spec : Prop :=
  ∀ n, P10577771159423497530.a n = A287896 (n + 1)

end A287896

/-! ## A287896.P10713750811681607351

`A002487(n+1)*A002487(A038712(n+1))`
-/

namespace A287896.P10713750811681607351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A002487 (A038712 (n + 1)).toNat

end

end A287896.P10713750811681607351

namespace A287896

/-- `A002487(n+1)*A002487(A038712(n+1))` -/
def P10713750811681607351.Spec : Prop :=
  ∀ n, P10713750811681607351.a n = A287896 (n + 1)

end A287896

/-!
# A287897: Number of minimal dominating sets in the n X n white bishop graph.

The programs for A287897, there is no canonical definition to state claims against.
-/

/-! ## A287897.P2276822293240111464

`A295899(n+2)/A286886(n+2)`
-/

namespace A287897.P2276822293240111464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295899 (n + 2) : ℚ) / (A286886 (n + 2) : ℚ)

end

end A287897.P2276822293240111464

/-!
# A287898: Number of ways to go up and down n stairs, with fewer than 4 stairs at a time, stepping on each stair at least once.

The programs for A287898, there is no canonical definition to state claims against.
-/

/-! ## A287898.P4276252771663993624

`A081134(A160175(n+1))`
-/

namespace A287898.P4276252771663993624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A160175 (n + 1)).toNat

end

end A287898.P4276252771663993624

/-! ## A287898.P3602247884831258687

`A128929(A220705(n+2))`
-/

namespace A287898.P3602247884831258687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (A220705 (n + 2)).toNat

end

end A287898.P3602247884831258687

/-! ## A287898.P2837455751223204889

`A004525(floor(sqrt(A027259(n+2))))`
-/

namespace A287898.P2837455751223204889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.sqrt (A027259 (n + 2))).toNat

end

end A287898.P2837455751223204889

/-!
# A287899: Number of permutations of [2n] with exactly n cycles such that the elements of each cycle form an integer interval.

The programs for A287899, there is no canonical definition to state claims against.
-/

/-! ## A287899.P9310658752176195436

`A084938(∑[4*n])`
-/

namespace A287899.P9310658752176195436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287899.P9310658752176195436

/-! ## A287899.P13326797102293679889

`or(1, A084938(A046092(n)))`
-/

namespace A287899.P13326797102293679889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084938 (A046092 n).toNat)

end

end A287899.P13326797102293679889

/-! ## A287899.P12705396120326984163

`or(1, A084938(A106232(n+1)))`
-/

namespace A287899.P12705396120326984163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084938 (A106232 (n + 1)).toNat)

end

end A287899.P12705396120326984163

/-! ## A287899.P3880520913749638225

`and(A084938(A046092(n)), A260196(n))`
-/

namespace A287899.P3880520913749638225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084938 (A046092 n).toNat) (A260196 n)

end

end A287899.P3880520913749638225

/-! ## A287899.P3338196977932670361

`A084938(A046092(n))%A284162(n+1)`
-/

namespace A287899.P3338196977932670361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084938 (A046092 n).toNat) (A284162 (n + 1))

end

end A287899.P3338196977932670361

