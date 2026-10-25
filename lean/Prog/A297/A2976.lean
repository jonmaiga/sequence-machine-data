import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A297600: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297600, there is no canonical definition to state claims against.
-/

/-! ## A297600.P16840320415538861546

`A297595(A167499(n+5)+2)`
-/

namespace A297600.P16840320415538861546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A167499 (n + 5) + 2).toNat

end

end A297600.P16840320415538861546

/-! ## A297600.P10347659391030947020

`A297595(A000217(n+6)+7)`
-/

namespace A297600.P10347659391030947020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A000217 (n + 6) + 7).toNat

end

end A297600.P10347659391030947020

/-! ## A297600.P10896980640258575777

`A297595(A141214(n+3)+10)`
-/

namespace A297600.P10896980640258575777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A141214 (n + 3) + 10).toNat

end

end A297600.P10896980640258575777

/-! ## A297600.P10424491335678829644

`A297595(A034856(n+5)+9)`
-/

namespace A297600.P10424491335678829644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A034856 (n + 5) + 9).toNat

end

end A297600.P10424491335678829644

/-! ## A297600.P9782103897415302362

`A297595(Δ[A027965(n+5)]+9)`
-/

namespace A297600.P9782103897415302362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (f1 (n + 1) - f1 n + 9).toNat

end

end A297600.P9782103897415302362

/-!
# A297601: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1's.

The programs for A297601, there is no canonical definition to state claims against.
-/

/-! ## A297601.P3998210450620788651

`A297607(∑[4*n]+1)`
-/

namespace A297601.P3998210450620788651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297601.P3998210450620788651

/-! ## A297601.P5051074830998814000

`A297607(A001844(n))+A054900(n)`
-/

namespace A297601.P5051074830998814000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A001844 n).toNat + A054900 n

end

end A297601.P5051074830998814000

/-! ## A297601.P4999293373664071677

`A297607(A001844(n))+A055965(n)`
-/

namespace A297601.P4999293373664071677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A001844 n).toNat + A055965 n

end

end A297601.P4999293373664071677

/-! ## A297601.P14351700681004344955

`A015720(n)*A297607(A001844(n))`
-/

namespace A297601.P14351700681004344955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A297607 (A001844 n).toNat

end

end A297601.P14351700681004344955

/-! ## A297601.P17447710234653746413

`A297607(A001844(n))+A008683(4*(n+1))`
-/

namespace A297601.P17447710234653746413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A297601.P17447710234653746413

/-!
# A297602: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297602, there is no canonical definition to state claims against.
-/

/-! ## A297602.P206941248161194672

`A297607(∑[n+3]+1)`
-/

namespace A297602.P206941248161194672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297602.P206941248161194672

/-!
# A297603: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297603, there is no canonical definition to state claims against.
-/

/-! ## A297603.P12039656556294256491

`A297607(A141214(n+1))`
-/

namespace A297603.P12039656556294256491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A141214 (n + 1)).toNat

end

end A297603.P12039656556294256491

/-! ## A297603.P17225560141028575098

`A297607(eq[2, A350529(n)])`
-/

namespace A297603.P17225560141028575098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297603.P17225560141028575098

/-! ## A297603.P14873302751808697649

`A297607(eq[3, A193592(n)])`
-/

namespace A297603.P14873302751808697649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297603.P14873302751808697649

/-! ## A297603.P6438246929138905822

`A297607(A052905(n+1)+2)`
-/

namespace A297603.P6438246929138905822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A052905 (n + 1) + 2).toNat

end

end A297603.P6438246929138905822

/-! ## A297603.P2643195108626673619

`A297607(eq[3, A025581(n)]+1)`
-/

namespace A297603.P2643195108626673619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297603.P2643195108626673619

/-!
# A297604: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297604, there is no canonical definition to state claims against.
-/

/-! ## A297604.P7303372096109531124

`A297607(Δ[A264443(n)])`
-/

namespace A297604.P7303372096109531124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (f1 (n + 1) - f1 n).toNat

end

end A297604.P7303372096109531124

/-! ## A297604.P1178251001424401186

`A297607(eq[4, A193592(n)])`
-/

namespace A297604.P1178251001424401186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297604.P1178251001424401186

/-! ## A297604.P7659345758113526876

`A297607(Δ[A023545(n+1)])`
-/

namespace A297604.P7659345758113526876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (f1 (n + 1) - f1 n).toNat

end

end A297604.P7659345758113526876

/-! ## A297604.P15403269402260279059

`A297607(eq[5, A200370(n+1)])`
-/

namespace A297604.P15403269402260279059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297604.P15403269402260279059

/-! ## A297604.P4736277528856478725

`A297607(eq[6, A185782(n+1)])`
-/

namespace A297604.P4736277528856478725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297604.P4736277528856478725

/-!
# A297605: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297605, there is no canonical definition to state claims against.
-/

/-! ## A297605.P10421610899358152550

`A297607(A052905(n+3))`
-/

namespace A297605.P10421610899358152550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A052905 (n + 3)).toNat

end

end A297605.P10421610899358152550

/-! ## A297605.P3348360746254821823

`A297607(eq[3, A219347(n)])`
-/

namespace A297605.P3348360746254821823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297605.P3348360746254821823

/-! ## A297605.P15189144752896707956

`A297607(eq[5, A193592(n)])`
-/

namespace A297605.P15189144752896707956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297605.P15189144752896707956

/-! ## A297605.P14707669157281505292

`A297607(eq[5, A025581(n)]+1)`
-/

namespace A297605.P14707669157281505292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297605.P14707669157281505292

/-! ## A297605.P7719952849750061818

`A297607(eq[6, A200370(n+1)])`
-/

namespace A297605.P7719952849750061818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297605.P7719952849750061818

/-!
# A297606: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297606, there is no canonical definition to state claims against.
-/

/-! ## A297606.P8891008745939845576

`A297607(eq[4, A219347(n)])`
-/

namespace A297606.P8891008745939845576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297606.P8891008745939845576

/-! ## A297606.P9836805539322191609

`A297607(eq[6, A193592(n)])`
-/

namespace A297606.P9836805539322191609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297606.P9836805539322191609

/-! ## A297606.P11954362358411522450

`A297607(A052905(n+4)-1)`
-/

namespace A297606.P11954362358411522450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A052905 (n + 4) - 1).toNat

end

end A297606.P11954362358411522450

/-! ## A297606.P15535640348321820655

`A297607(eq[7, A200370(n+1)])`
-/

namespace A297606.P15535640348321820655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297606.P15535640348321820655

/-! ## A297606.P12434410382269797910

`A297607(eq[10, A185782(n+1)])`
-/

namespace A297606.P12434410382269797910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297606.P12434410382269797910

/-!
# A297607: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297607, there is no canonical definition to state claims against.
-/

/-! ## A297607.P8595319087981741186

`A295253(A032555(n+1))+char[5]`
-/

namespace A297607.P8595319087981741186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A032555 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297607.P8595319087981741186

/-! ## A297607.P17487870304702828124

`A295253(A248794(n+1))+char[5]`
-/

namespace A297607.P17487870304702828124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A248794 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297607.P17487870304702828124

/-! ## A297607.P10308358662790246648

`A295253(A276142(n+1))+char[5]`
-/

namespace A297607.P10308358662790246648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A276142 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297607.P10308358662790246648

/-! ## A297607.P4748197550043106768

`A295652(C(A378926(n+1), n))+char[5]`
-/

namespace A297607.P4748197550043106768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (Nat.choose (A378926 (n + 1)).toNat n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297607.P4748197550043106768

/-! ## A297607.P17884890693781985011

`char[5]+A005171(4^n)*A295652(n+1)`
-/

namespace A297607.P17884890693781985011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A005171 (4 ^ n) * A295652 (n + 1)

end

end A297607.P17884890693781985011

/-!
# A297608: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297608, the canonical program `A297608.P7059571503194207480` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297608 has offset 1).

The definition of A297608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297608.P7059571503194207480

`a(n-1)+3*a(n-2)+4*a(n-3)+12*a(n-4)-12*a(n-6)` with `a(0)=4, a(1)=11, a(2)=35, a(3)=96, a(4)=281, a(5)=829`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297608

/-- `a(n-1)+3*a(n-2)+4*a(n-3)+12*a(n-4)-12*a(n-6)` -/
def P7059571503194207480.Spec : Prop :=
  ∀ n, P7059571503194207480.a n = A297608 (n + 1)

theorem P7059571503194207480.correct : P7059571503194207480.Spec := by
  intro n
  simp only [A297608, Nat.add_sub_cancel]

end A297608

/-! ## A297608.P12228021269892359512

`A297607(∑[n+1]+2)`
-/

namespace A297608.P12228021269892359512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297608.P12228021269892359512

namespace A297608

/-- `A297607(∑[n+1]+2)` -/
def P12228021269892359512.Spec : Prop :=
  ∀ n, P12228021269892359512.a n = A297608 (n + 1)

end A297608

/-! ## A297608.P4199634191042486484

`lcm(A008836(n+1), A297607(A133263(n+1)))`
-/

namespace A297608.P4199634191042486484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A297607 (A133263 (n + 1)).toNat)

end

end A297608.P4199634191042486484

namespace A297608

/-- `lcm(A008836(n+1), A297607(A133263(n+1)))` -/
def P4199634191042486484.Spec : Prop :=
  ∀ n, (P4199634191042486484.a n : ℤ) = A297608 (n + 1)

end A297608

/-! ## A297608.P12159532100918560687

`A007318(C(n, 2))*A297607(A133263(n+1))`
-/

namespace A297608.P12159532100918560687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A297607 (A133263 (n + 1)).toNat

end

end A297608.P12159532100918560687

namespace A297608

/-- `A007318(C(n, 2))*A297607(A133263(n+1))` -/
def P12159532100918560687.Spec : Prop :=
  ∀ n, P12159532100918560687.a n = A297608 (n + 1)

end A297608

/-! ## A297608.P13760745729977589852

`A014963(10*(n+1))*A297607(A133263(n+1))`
-/

namespace A297608.P13760745729977589852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A297607 (A133263 (n + 1)).toNat

end

end A297608.P13760745729977589852

namespace A297608

/-- `A014963(10*(n+1))*A297607(A133263(n+1))` -/
def P13760745729977589852.Spec : Prop :=
  ∀ n, P13760745729977589852.a n = A297608 (n + 1)

end A297608

/-!
# A297609: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297609, there is no canonical definition to state claims against.
-/

/-! ## A297609.P17460646644747040603

`A297607(∑[n+2]+4)`
-/

namespace A297609.P17460646644747040603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297609.P17460646644747040603

/-! ## A297609.P6891070914174169179

`lcm((-1)^n, A297607(A167614(n+1)))`
-/

namespace A297609.P6891070914174169179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A297607 (A167614 (n + 1)).toNat)

end

end A297609.P6891070914174169179

/-! ## A297609.P3740277057207683132

`A297607(A167614(n+1))+A185255(n)`
-/

namespace A297609.P3740277057207683132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A167614 (n + 1)).toNat + A185255 n

end

end A297609.P3740277057207683132

/-! ## A297609.P16630409094209182534

`A297607(A167614(n+1))+A185284(n)`
-/

namespace A297609.P16630409094209182534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A167614 (n + 1)).toNat + A185284 n

end

end A297609.P16630409094209182534

/-! ## A297609.P7220324914311385585

`A262681(n)*A297607(A167614(n+1))`
-/

namespace A297609.P7220324914311385585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A297607 (A167614 (n + 1)).toNat

end

end A297609.P7220324914311385585

/-!
# A297610: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297610, there is no canonical definition to state claims against.
-/

/-! ## A297610.P15036711005437177085

`A297607(A141214(n)+7)`
-/

namespace A297610.P15036711005437177085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A141214 n + 7).toNat

end

end A297610.P15036711005437177085

/-! ## A297610.P4256624341557811882

`A297607(A052905(n)+9)`
-/

namespace A297610.P4256624341557811882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A052905 n + 9).toNat

end

end A297610.P4256624341557811882

/-! ## A297610.P7619870507197406497

`A297607(A055999(n)+10)`
-/

namespace A297610.P7619870507197406497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A055999 n + 10).toNat

end

end A297610.P7619870507197406497

/-! ## A297610.P9278855002091789002

`A297607(A167614(n+2)+1)`
-/

namespace A297610.P9278855002091789002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A167614 (n + 2) + 1).toNat

end

end A297610.P9278855002091789002

/-! ## A297610.P9852604116587472217

`A297607(A166136(n+2)-2)`
-/

namespace A297610.P9852604116587472217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A166136 (n + 2) - 2).toNat

end

end A297610.P9852604116587472217

/-!
# A297611: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297611, there is no canonical definition to state claims against.
-/

/-! ## A297611.P12459723464506718892

`A297607(A167499(n+3))`
-/

namespace A297611.P12459723464506718892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A167499 (n + 3)).toNat

end

end A297611.P12459723464506718892

/-! ## A297611.P7360830853257082576

`A297607(A155212(n)+13)`
-/

namespace A297611.P7360830853257082576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A155212 n + 13).toNat

end

end A297611.P7360830853257082576

/-! ## A297611.P4050458113593450082

`A297607(A056000(n)+15)`
-/

namespace A297611.P4050458113593450082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A056000 n + 15).toNat

end

end A297611.P4050458113593450082

/-! ## A297611.P3289648423520673311

`A297607(A167614(n+3)+2)`
-/

namespace A297611.P3289648423520673311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A167614 (n + 3) + 2).toNat

end

end A297611.P3289648423520673311

/-! ## A297611.P4636803957794339705

`A297607(A051936(n+4)+14)`
-/

namespace A297611.P4636803957794339705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A051936 (n + 4) + 14).toNat

end

end A297611.P4636803957794339705

/-!
# A297612: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297612, there is no canonical definition to state claims against.
-/

/-! ## A297612.P6439102274322273906

`A297607(A166136(n+4))`
-/

namespace A297612.P6439102274322273906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A166136 (n + 4)).toNat

end

end A297612.P6439102274322273906

/-! ## A297612.P3270908435617875045

`A297607(A056115(n)+21)`
-/

namespace A297612.P3270908435617875045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A056115 n + 21).toNat

end

end A297612.P3270908435617875045

/-! ## A297612.P5729465388503521577

`A297607(A167614(n+4)+3)`
-/

namespace A297612.P5729465388503521577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A167614 (n + 4) + 3).toNat

end

end A297612.P5729465388503521577

/-! ## A297612.P16686195096292422581

`A297607(A046691(n+3)+10)`
-/

namespace A297612.P16686195096292422581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A046691 (n + 3) + 10).toNat

end

end A297612.P16686195096292422581

/-! ## A297612.P8238723957663682049

`A297607(eq[7, A131818(n+1)])`
-/

namespace A297612.P8238723957663682049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297612.P8238723957663682049

/-!
# A297613: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A297613, there is no canonical definition to state claims against.
-/

/-! ## A297613.P2778755400578614149

`A297607(eq[11, A066657(n)])`
-/

namespace A297613.P2778755400578614149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297613.P2778755400578614149

/-! ## A297613.P5465229959704112251

`A297607(A000096(n+5)+8)`
-/

namespace A297613.P5465229959704112251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A000096 (n + 5) + 8).toNat

end

end A297613.P5465229959704112251

/-! ## A297613.P1207049164081419108

`A297607(A000217(n+6)+7)`
-/

namespace A297613.P1207049164081419108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A000217 (n + 6) + 7).toNat

end

end A297613.P1207049164081419108

/-! ## A297613.P14811389609602810050

`A297607(eq[8, A131818(n+1)])`
-/

namespace A297613.P14811389609602810050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297613.P14811389609602810050

/-! ## A297613.P6999961650429565751

`A297607(A155212(n+4)-A005843(n))`
-/

namespace A297613.P6999961650429565751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (A155212 (n + 4) - A005843 n).toNat

end

end A297613.P6999961650429565751

/-!
# A297614: Numbers with property that both the digit sum and the sum of the prime factors (counted with multiplicity) have only digits 0 and 1 in base 10.

The programs for A297614, there is no canonical definition to state claims against.
-/

/-! ## A297614.P6030518023429469553

`A001065(A101301(n+1)*A218678(n))`
-/

namespace A297614.P6030518023429469553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A101301 (n + 1) * A218678 n).toNat

end

end A297614.P6030518023429469553

/-!
# A297616: a(n) is the number of connected components in the graph with vertices 1..n and adjacency criterion i and j not coprime.

The programs for A297616, the canonical program `A297616.P7077646546483356359` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297616 has offset 1).

The definition of A297616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297616.P7077646546483356359

`∑[round(A140254(n+1)/(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A297616

/-- `∑[round(A140254(n+1)/(n+1))]` -/
def P7077646546483356359.Spec : Prop :=
  ∀ n, P7077646546483356359.a n = A297616 (n + 1)

theorem P7077646546483356359.correct : P7077646546483356359.Spec := by
  intro n
  simp only [A297616, Nat.add_sub_cancel]

end A297616

/-! ## A297616.P14632591362485940800

`A056171(n+1)+(2-C(2, n))!`
-/

namespace A297616.P14632591362485940800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) + (Nat.factorial (2 - (Nat.choose 2 n : ℤ)).toNat : ℤ)

end

end A297616.P14632591362485940800

namespace A297616

/-- `A056171(n+1)+(2-C(2, n))!` -/
def P14632591362485940800.Spec : Prop :=
  ∀ n, P14632591362485940800.a n = A297616 (n + 1)

end A297616

/-! ## A297616.P16532839528193597916

`∑[A154955(A078897(n+1))]`
-/

namespace A297616.P16532839528193597916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A078897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297616.P16532839528193597916

namespace A297616

/-- `∑[A154955(A078897(n+1))]` -/
def P16532839528193597916.Spec : Prop :=
  ∀ n, P16532839528193597916.a n = A297616 (n + 1)

end A297616

/-! ## A297616.P15062458162836719315

`A329683(n)+A056171(n+1)`
-/

namespace A297616.P15062458162836719315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n + A056171 (n + 1)

end

end A297616.P15062458162836719315

namespace A297616

/-- `A329683(n)+A056171(n+1)` -/
def P15062458162836719315.Spec : Prop :=
  ∀ n, P15062458162836719315.a n = A297616 (n + 1)

end A297616

/-! ## A297616.P17210060487195008007

`2-∑[A008683(A079065(n+1))]`
-/

namespace A297616.P17210060487195008007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A079065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297616.P17210060487195008007

namespace A297616

/-- `2-∑[A008683(A079065(n+1))]` -/
def P17210060487195008007.Spec : Prop :=
  ∀ n, P17210060487195008007.a n = A297616 (n + 1)

end A297616

/-! ## A297616.P3829926952674893210

`A329683(n)+log2(A056672(n+1))`
-/

namespace A297616.P3829926952674893210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A329683 n : ℝ) + Real.logb 2 (A056672 (n + 1) : ℝ)

end

end A297616.P3829926952674893210

namespace A297616

/-- `A329683(n)+log2(A056672(n+1))` -/
def P3829926952674893210.Spec : Prop :=
  ∀ n, P3829926952674893210.a n = (A297616 (n + 1) : ℝ)

end A297616

/-! ## A297616.P12274746471298164661

`A056171(n+1)+A020639(A249807(n))`
-/

namespace A297616.P12274746471298164661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) + A020639 (A249807 n).toNat

end

end A297616.P12274746471298164661

namespace A297616

/-- `A056171(n+1)+A020639(A249807(n))` -/
def P12274746471298164661.Spec : Prop :=
  ∀ n, P12274746471298164661.a n = A297616 (n + 1)

end A297616

/-! ## A297616.P8939366063816062190

`∑[A097945(A351425(n+1))%2]`
-/

namespace A297616.P8939366063816062190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097945 (A351425 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297616.P8939366063816062190

namespace A297616

/-- `∑[A097945(A351425(n+1))%2]` -/
def P8939366063816062190.Spec : Prop :=
  ∀ n, P8939366063816062190.a n = A297616 (n + 1)

end A297616

/-! ## A297616.P2899606580092311688

`A056171(n+1)+A020639(A136494(n))`
-/

namespace A297616.P2899606580092311688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) + A020639 (A136494 n).toNat

end

end A297616.P2899606580092311688

namespace A297616

/-- `A056171(n+1)+A020639(A136494(n))` -/
def P2899606580092311688.Spec : Prop :=
  ∀ n, P2899606580092311688.a n = A297616 (n + 1)

end A297616

/-!
# A297617: Square array T(n, k) read by antidiagonals upwards, n > 0 and k > 0: T(n, k) is the least nonnegative value such that each quadruple of terms on a 1 X 1 square sums to a distinct prime number.

The programs for A297617, there is no canonical definition to state claims against.
-/

/-! ## A297617.P397670809894107824

`A090079(A056505(n))%A022166(n)`
-/

namespace A297617.P397670809894107824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090079 (A056505 n).toNat) (A022166 n)

end

end A297617.P397670809894107824

/-! ## A297617.P18254329887306487155

`comp[or(2, n)+n]%A131302(A299060(n+1))`
-/

namespace A297617.P18254329887306487155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A131302 (A299060 (n + 1)).toNat)

end

end A297617.P18254329887306487155

/-! ## A297617.P373666174768810038

`A285189(A286674(n)%A168290(n))`
-/

namespace A297617.P373666174768810038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (Int.tmod (A286674 n) (A168290 n)).toNat

end

end A297617.P373666174768810038

/-! ## A297617.P10667198950326618428

`A004526(A001202(n+1))%A063394(n)`
-/

namespace A297617.P10667198950326618428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A001202 (n + 1)).toNat) (A063394 n)

end

end A297617.P10667198950326618428

/-! ## A297617.P16028853244931407067

`A007930(A275778(n))%A209417(n+1)`
-/

namespace A297617.P16028853244931407067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007930 (A275778 n).toNat) (A209417 (n + 1))

end

end A297617.P16028853244931407067

/-!
# A297618: a(n) is the length of longest subsequence common to both the n-th Thue-Morse word and its bitwise complement.

The programs for A297618, there is no canonical definition to state claims against.
-/

/-! ## A297618.P9341735126646675846

`A052146(A071755(n))+A018099(n)`
-/

namespace A297618.P9341735126646675846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A071755 n).toNat + A018099 n

end

end A297618.P9341735126646675846

/-! ## A297618.P13071531089841527458

`∑[A183988(A128761(n))]`
-/

namespace A297618.P13071531089841527458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (A128761 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297618.P13071531089841527458

/-! ## A297618.P2324813760271354612

`A317137(A291886(n+1))`
-/

namespace A297618.P2324813760271354612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A291886 (n + 1)).toNat

end

end A297618.P2324813760271354612

/-! ## A297618.P10234094748303249311

`∑[floor(3*2^(n-2))]+A000005(A275593(n+1))`
-/

namespace A297618.P10234094748303249311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (A275593 (n + 1)).toNat

end

end A297618.P10234094748303249311

/-!
# A297619: a(n) = 2*a(n-1) + 2*a(n-2) - 4*a(n-3), a(1) = 0, a(2) = 0, a(3) = 8.

The programs for A297619, the canonical program `A297619.P13939536868255806860` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297619 has offset 1).

The definition of A297619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-4*a(n-3)` (program `A297619.P13939536868255806860`, by `A297619.P13939536868255806860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297619.P18015439727342061188

`2^(n+2)-2^(floor((n+1)/2)+2)`
-/

namespace A297619.P18015439727342061188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℚ) - (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ + 2 : ℤ)

end

end A297619.P18015439727342061188

namespace A297619

/-- `2^(n+2)-2^(floor((n+1)/2)+2)` -/
def P18015439727342061188.Spec : Prop :=
  ∀ n, P18015439727342061188.a n = (A297619 (n + 1) : ℚ)

end A297619

/-! ## A297619.P13939536868255806860

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297619

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P13939536868255806860.Spec : Prop :=
  ∀ n, P13939536868255806860.a n = A297619 (n + 1)

theorem P13939536868255806860.correct : P13939536868255806860.Spec := by
  intro n
  simp only [A297619, Nat.add_sub_cancel]

end A297619

/-! ## A297619.P12424607953467048484

`ogf(8x^2/(1-2x-2x^2+4x^3))`
-/

namespace A297619.P12424607953467048484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 8] [1, -2, -2, 4] n

end

end A297619.P12424607953467048484

namespace A297619

/-- `ogf(8x^2/(1-2x-2x^2+4x^3))` -/
def P12424607953467048484.Spec : Prop :=
  ∀ n, P12424607953467048484.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P11919518387791743023

`2*(a(n-2)+2^n)` with `a(0)=0, a(1)=0`
-/

namespace A297619.P11919518387791743023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (a (n - 2) + 2 ^ n)

end

end A297619.P11919518387791743023

namespace A297619

/-- `2*(a(n-2)+2^n)` -/
def P11919518387791743023.Spec : Prop :=
  ∀ n, (P11919518387791743023.a n : ℤ) = A297619 (n + 1)

end A297619

/-! ## A297619.P5073208269029478738

`4*(2^n-∏[gcd(2, n+1)])`
-/

namespace A297619.P5073208269029478738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((2 ^ n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A297619.P5073208269029478738

namespace A297619

/-- `4*(2^n-∏[gcd(2, n+1)])` -/
def P5073208269029478738.Spec : Prop :=
  ∀ n, P5073208269029478738.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P8400763112663101932

`4*(2^n-∑[2*a(n-2)])` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A297619.P8400763112663101932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A297619.P8400763112663101932

namespace A297619

/-- `4*(2^n-∑[2*a(n-2)])` -/
def P8400763112663101932.Spec : Prop :=
  ∀ n, P8400763112663101932.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P367428340716842294

`4*A233411(n)`
-/

namespace A297619.P367428340716842294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A233411 n

end

end A297619.P367428340716842294

namespace A297619

/-- `4*A233411(n)` -/
def P367428340716842294.Spec : Prop :=
  ∀ n, P367428340716842294.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P8788813354861587898

`2*A208901(n+1)`
-/

namespace A297619.P8788813354861587898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208901 (n + 1)

end

end A297619.P8788813354861587898

namespace A297619

/-- `2*A208901(n+1)` -/
def P8788813354861587898.Spec : Prop :=
  ∀ n, P8788813354861587898.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P13135193458796629414

`2*(A208900(n+1)-2)`
-/

namespace A297619.P13135193458796629414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A208900 (n + 1) - 2)

end

end A297619.P13135193458796629414

namespace A297619

/-- `2*(A208900(n+1)-2)` -/
def P13135193458796629414.Spec : Prop :=
  ∀ n, P13135193458796629414.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P12288114604657755570

`xor(A107659(n), A143095(n))`
-/

namespace A297619.P12288114604657755570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107659 n) (A143095 n)

end

end A297619.P12288114604657755570

namespace A297619

/-- `xor(A107659(n), A143095(n))` -/
def P12288114604657755570.Spec : Prop :=
  ∀ n, P12288114604657755570.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P12740083152633774711

`2*(A274638(n)+A274230(n))`
-/

namespace A297619.P12740083152633774711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A274638 n + A274230 n)

end

end A297619.P12740083152633774711

namespace A297619

/-- `2*(A274638(n)+A274230(n))` -/
def P12740083152633774711.Spec : Prop :=
  ∀ n, P12740083152633774711.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P17634971970725310164

`2*(A122746(n)-A060546(n))`
-/

namespace A297619.P17634971970725310164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122746 n - A060546 n)

end

end A297619.P17634971970725310164

namespace A297619

/-- `2*(A122746(n)-A060546(n))` -/
def P17634971970725310164.Spec : Prop :=
  ∀ n, P17634971970725310164.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P570700441969080405

`2*(A290234(n)-A097110(n))`
-/

namespace A297619.P570700441969080405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A290234 n - A097110 n)

end

end A297619.P570700441969080405

namespace A297619

/-- `2*(A290234(n)-A097110(n))` -/
def P570700441969080405.Spec : Prop :=
  ∀ n, P570700441969080405.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P11162730546896121027

`4*(A000079(n)-A060546(n))`
-/

namespace A297619.P11162730546896121027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000079 n - A060546 n)

end

end A297619.P11162730546896121027

namespace A297619

/-- `4*(A000079(n)-A060546(n))` -/
def P11162730546896121027.Spec : Prop :=
  ∀ n, P11162730546896121027.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P11971555929398949405

`2*xor(A278755(n), A279872(n))`
-/

namespace A297619.P11971555929398949405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A278755 n) (A279872 n)

end

end A297619.P11971555929398949405

namespace A297619

/-- `2*xor(A278755(n), A279872(n))` -/
def P11971555929398949405.Spec : Prop :=
  ∀ n, P11971555929398949405.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P7306923586910956612

`(A052551(n)²-1)*A000034(n)`
-/

namespace A297619.P7306923586910956612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052551 n ^ 2 - 1) * A000034 n

end

end A297619.P7306923586910956612

namespace A297619

/-- `(A052551(n)²-1)*A000034(n)` -/
def P7306923586910956612.Spec : Prop :=
  ∀ n, P7306923586910956612.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P13818961636848700985

`4*Δ[A000079(n)-A027383(n)]`
-/

namespace A297619.P13818961636848700985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A297619.P13818961636848700985

namespace A297619

/-- `4*Δ[A000079(n)-A027383(n)]` -/
def P13818961636848700985.Spec : Prop :=
  ∀ n, P13818961636848700985.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P12649898728082636042

`and(∑[A122746(n)], A233411(n+2))`
-/

namespace A297619.P12649898728082636042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A233411 (n + 2))

end

end A297619.P12649898728082636042

namespace A297619

/-- `and(∑[A122746(n)], A233411(n+2))` -/
def P12649898728082636042.Spec : Prop :=
  ∀ n, P12649898728082636042.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P16371157230422691330

`A056453(n+1)*A060546(n+2)`
-/

namespace A297619.P16371157230422691330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056453 (n + 1) * A060546 (n + 2)

end

end A297619.P16371157230422691330

namespace A297619

/-- `A056453(n+1)*A060546(n+2)` -/
def P16371157230422691330.Spec : Prop :=
  ∀ n, P16371157230422691330.a n = A297619 (n + 1)

end A297619

/-! ## A297619.P1166325077798261633

`Δ[4*A027556(n)]`
-/

namespace A297619.P1166325077798261633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297619.P1166325077798261633

namespace A297619

/-- `Δ[4*A027556(n)]` -/
def P1166325077798261633.Spec : Prop :=
  ∀ n, P1166325077798261633.a n = A297619 (n + 1)

end A297619

/-!
# A297620: Positive numbers n such that n^2 == p (mod q) and n^2 == q (mod p) for some consecutive primes p,q.

The programs for A297620, there is no canonical definition to state claims against.
-/

/-! ## A297620.P7856068329809610420

`A074924(n+1)-A199969(A309861(n))`
-/

namespace A297620.P7856068329809610420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1) - A199969 (A309861 n).toNat

end

end A297620.P7856068329809610420

/-! ## A297620.P12513493504914744613

`sqrt(A062703(n+1))-A199969(A309861(n))`
-/

namespace A297620.P12513493504914744613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062703 (n + 1) : ℝ) - (A199969 (A309861 n).toNat : ℝ)

end

end A297620.P12513493504914744613

/-! ## A297620.P13133641301758817283

`2*A139013(n+1)-A199969(A309861(n))`
-/

namespace A297620.P13133641301758817283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1) - A199969 (A309861 n).toNat

end

end A297620.P13133641301758817283

/-! ## A297620.P10514680982671869564

`A004277(A139013(n+1))-A199969(A309861(n))`
-/

namespace A297620.P10514680982671869564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A139013 (n + 1)).toNat - A199969 (A309861 n).toNat

end

end A297620.P10514680982671869564

/-! ## A297620.P10290163655552590227

`A004275(A139013(n+1)+1)-A199969(A309861(n))`
-/

namespace A297620.P10290163655552590227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A139013 (n + 1) + 1).toNat - A199969 (A309861 n).toNat

end

end A297620.P10290163655552590227

/-!
# A297621: a(0) = 1; for n > 0, a(n) = 1 + Sum_{k = 1..n} 2^k a(floor(log_2(k))).

The programs for A297621, there is no canonical definition to state claims against.
-/

/-! ## A297621.P6482683605638790348

`∑[∏[A253641(A001105(n)²)]]`
-/

namespace A297621.P6482683605638790348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A001105 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297621.P6482683605638790348

/-! ## A297621.P7962787732623564299

`∑[∏[A136697(A265281(n))]]`
-/

namespace A297621.P7962787732623564299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136697 (A265281 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297621.P7962787732623564299

/-! ## A297621.P7688450876713641841

`∑[record[A046523(A287629(n))]]`
-/

namespace A297621.P7688450876713641841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A287629 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297621.P7688450876713641841

/-!
# A297622: Triangle read by rows: a(n,k) is the number of k X n matrices which are the first k rows of an alternating sign matrix of size n.

The programs for A297622, there is no canonical definition to state claims against.
-/

/-! ## A297622.P8029179782987238779

`A137706(A008279(n))%A344360(n+1)`
-/

namespace A297622.P8029179782987238779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137706 (A008279 n).toNat) (A344360 (n + 1))

end

end A297622.P8029179782987238779

/-!
# A297624: Numbers k such that Fibonacci(2*k+1) and Fibonacci(2*k-1) are prime.

The programs for A297624, there is no canonical definition to state claims against.
-/

/-! ## A297624.P5918938872171639199

`(A281087(n+1)+1)/2`
-/

namespace A297624.P5918938872171639199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281087 (n + 1) + 1 : ℚ) / 2

end

end A297624.P5918938872171639199

/-!
# A297625: Primes of the form (2^(p^k) - 1)/(2^(p^(k - 1)) - 1), with p prime and k > 1.

The programs for A297625, there is no canonical definition to state claims against.
-/

/-! ## A297625.P5670717343016045458

`A187823(A060233(n+1))`
-/

namespace A297625.P5670717343016045458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187823 (A060233 (n + 1)).toNat

end

end A297625.P5670717343016045458

/-! ## A297625.P9263097340413716454

`A245730(A187473(n+1))`
-/

namespace A297625.P9263097340413716454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245730 (A187473 (n + 1)).toNat

end

end A297625.P9263097340413716454

/-! ## A297625.P14872259083783127672

`A187823(A087504(n)+n)`
-/

namespace A297625.P14872259083783127672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187823 (A087504 n + (n : ℤ)).toNat

end

end A297625.P14872259083783127672

/-!
# A297626: Triangle read by rows in which row n gives a partition of n with the most subpartitions.

The programs for A297626, there is no canonical definition to state claims against.
-/

/-! ## A297626.P2446549070210242842

`A117500(A242474(n+1)%(n+2)²)`
-/

namespace A297626.P2446549070210242842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (Int.tmod (A242474 (n + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A297626.P2446549070210242842

/-! ## A297626.P4335705735570261874

`A185284(A004273(n))+A117500(n+1)`
-/

namespace A297626.P4335705735570261874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004273 n).toNat + A117500 (n + 1)

end

end A297626.P4335705735570261874

/-! ## A297626.P7956205774037291176

`A117500(n+1)+A011744(A185036(n))`
-/

namespace A297626.P7956205774037291176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (n + 1) + A011744 (A185036 n).toNat

end

end A297626.P7956205774037291176

/-! ## A297626.P10727563980148012510

`A117500(n+1)+A011744(A185236(n))`
-/

namespace A297626.P10727563980148012510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (n + 1) + A011744 (A185236 n).toNat

end

end A297626.P10727563980148012510

/-! ## A297626.P4226592337451895349

`A117500(A351374(n+1)%A184548(n+1))`
-/

namespace A297626.P4226592337451895349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (Int.tmod (A351374 (n + 1)) (A184548 (n + 1))).toNat

end

end A297626.P4226592337451895349

/-!
# A297629: a(n) = A297628(n,1).

The programs for A297629, there is no canonical definition to state claims against.
-/

/-! ## A297629.P12039611997850883164

`A297630(abs(1-n))%A297630(n)`
-/

namespace A297629.P12039611997850883164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297630 |1 - (n : ℤ)|.toNat) (A297630 n)

end

end A297629.P12039611997850883164

/-! ## A297629.P14066729657331862240

`record[ratio[A297628(n)]-C(2, n+2)]`
-/

namespace A297629.P14066729657331862240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297628 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - (Nat.choose 2 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297629.P14066729657331862240

/-! ## A297629.P15996635376306097605

`record[A297628(n)%A245732(n)]`
-/

namespace A297629.P15996635376306097605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297628 n) (A245732 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297629.P15996635376306097605

/-! ## A297629.P13544528587562725905

`record[ratio[A297628(n)]-A151934(n)]`
-/

namespace A297629.P13544528587562725905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297628 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - (A151934 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297629.P13544528587562725905

/-! ## A297629.P694618519721370340

`A297628(A000124(n))-char[10*n]`
-/

namespace A297629.P694618519721370340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297628 (A000124 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297629.P694618519721370340

/-!
# A297630: Row sums of A297628.

The programs for A297630, there is no canonical definition to state claims against.
-/

/-! ## A297630.P16224454331231646799

`A297629(n+1)`
-/

namespace A297630.P16224454331231646799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297629 (n + 1)

end

end A297630.P16224454331231646799

/-! ## A297630.P8056965627885089729

`∑[abs(Δ[A297629(n)])]`
-/

namespace A297630.P8056965627885089729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297630.P8056965627885089729

/-! ## A297630.P8241449228365538889

`record[A297629(abs(1-n))]`
-/

namespace A297630.P8241449228365538889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297629 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297630.P8241449228365538889

/-! ## A297630.P16916668158482389269

`record[Δ[A297629(A025581(n))]]`
-/

namespace A297630.P16916668158482389269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297629 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297630.P16916668158482389269

/-! ## A297630.P7216180254446143466

`∑[Δ[A297629(n)]-A002483(2*n)]`
-/

namespace A297630.P7216180254446143466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002483 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297630.P7216180254446143466

/-!
# A297631: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1's.

The programs for A297631, there is no canonical definition to state claims against.
-/

/-! ## A297631.P12618020729441095595

`A297637(∑[4*n]+1)`
-/

namespace A297631.P12618020729441095595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297631.P12618020729441095595

/-! ## A297631.P11287151155434301612

`record[A297637(A286145(n)+1)]`
-/

namespace A297631.P11287151155434301612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297631.P11287151155434301612

/-! ## A297631.P13504592646083527823

`record[A003982(n)*A297637(n+1)]`
-/

namespace A297631.P13504592646083527823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297631.P13504592646083527823

/-! ## A297631.P8511607059514352842

`record[gcd(A037012(n), A297637(n+1))]`
-/

namespace A297631.P8511607059514352842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A297637 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297631.P8511607059514352842

/-! ## A297631.P12257530695425549160

`A007318(C(2, n))*A297637(A001844(n))`
-/

namespace A297631.P12257530695425549160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297637 (A001844 n).toNat

end

end A297631.P12257530695425549160

/-!
# A297632: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297632, there is no canonical definition to state claims against.
-/

/-! ## A297632.P1279261681332579799

`A297637(∑[n+3]+1)`
-/

namespace A297632.P1279261681332579799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297632.P1279261681332579799

/-! ## A297632.P16972436045569529379

`A297637(A034856(n+2))%A374497(n+1)`
-/

namespace A297632.P16972436045569529379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297637 (A034856 (n + 2)).toNat) (A374497 (n + 1))

end

end A297632.P16972436045569529379

/-!
# A297633: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297633, there is no canonical definition to state claims against.
-/

/-! ## A297633.P7580340733383783674

`A297637(A141214(n+1))`
-/

namespace A297633.P7580340733383783674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A141214 (n + 1)).toNat

end

end A297633.P7580340733383783674

/-! ## A297633.P12512530418107701000

`A297637(A027379(n+2))`
-/

namespace A297633.P12512530418107701000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A027379 (n + 2)).toNat

end

end A297633.P12512530418107701000

/-! ## A297633.P10464913490126187146

`A297637(A155212(n)+5)`
-/

namespace A297633.P10464913490126187146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A155212 n + 5).toNat

end

end A297633.P10464913490126187146

/-! ## A297633.P4899787068017279713

`A297637(A056000(n)+7)`
-/

namespace A297633.P4899787068017279713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A056000 n + 7).toNat

end

end A297633.P4899787068017279713

/-! ## A297633.P13608428751684782692

`A297637(eq[3, A193592(n)])`
-/

namespace A297633.P13608428751684782692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297633.P13608428751684782692

/-!
# A297634: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297634, there is no canonical definition to state claims against.
-/

/-! ## A297634.P3109743722134001839

`A297637(Δ[A264443(n)])`
-/

namespace A297634.P3109743722134001839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (f1 (n + 1) - f1 n).toNat

end

end A297634.P3109743722134001839

/-! ## A297634.P3193500251367443499

`A297637(A046691(n+3))`
-/

namespace A297634.P3193500251367443499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A046691 (n + 3)).toNat

end

end A297634.P3193500251367443499

/-! ## A297634.P16402979849548264798

`A297637(eq[2, A092921(n)])`
-/

namespace A297634.P16402979849548264798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297634.P16402979849548264798

/-! ## A297634.P10791224828696501761

`A297637(eq[4, A193592(n)])`
-/

namespace A297634.P10791224828696501761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297634.P10791224828696501761

/-! ## A297634.P8896912554090038710

`A297637(eq[8, A166065(n)])`
-/

namespace A297634.P8896912554090038710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297634.P8896912554090038710

/-!
# A297635: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297635, there is no canonical definition to state claims against.
-/

/-! ## A297635.P8371174004867899284

`A297637(A052905(n+3))`
-/

namespace A297635.P8371174004867899284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A052905 (n + 3)).toNat

end

end A297635.P8371174004867899284

/-! ## A297635.P18429948730792444106

`A297637(eq[3, A219347(n)])`
-/

namespace A297635.P18429948730792444106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297635.P18429948730792444106

/-! ## A297635.P1730801736007064294

`A297637(eq[5, A193592(n)])`
-/

namespace A297635.P1730801736007064294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297635.P1730801736007064294

/-! ## A297635.P8716954457100313306

`A297637(eq[16, A166065(n)])`
-/

namespace A297635.P8716954457100313306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297635.P8716954457100313306

/-! ## A297635.P9439860123098322815

`A297637(A000217(n+6)-5)`
-/

namespace A297635.P9439860123098322815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A000217 (n + 6) - 5).toNat

end

end A297635.P9439860123098322815

/-!
# A297636: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297636, there is no canonical definition to state claims against.
-/

/-! ## A297636.P2237164937416222451

`A297637(eq[4, A219347(n)])`
-/

namespace A297636.P2237164937416222451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297636.P2237164937416222451

/-! ## A297636.P1470557574915718084

`A297637(eq[6, A193592(n)])`
-/

namespace A297636.P1470557574915718084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297636.P1470557574915718084

/-! ## A297636.P5973916276816805080

`A297637(A134869(n+7)-7)`
-/

namespace A297636.P5973916276816805080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A134869 (n + 7) - 7).toNat

end

end A297636.P5973916276816805080

/-! ## A297636.P12889479754073373258

`A297637(eq[7, A200370(n+1)])`
-/

namespace A297636.P12889479754073373258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297636.P12889479754073373258

/-! ## A297636.P1198286611822163434

`A297637(eq[10, A185782(n+1)])`
-/

namespace A297636.P1198286611822163434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297636.P1198286611822163434

/-!
# A297638: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297638, there is no canonical definition to state claims against.
-/

/-! ## A297638.P1337030447071806006

`A297637(∑[n+1]+2)`
-/

namespace A297638.P1337030447071806006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297638.P1337030447071806006

/-! ## A297638.P1604259075434450308

`A297637(A133263(n+1))+char[33]`
-/

namespace A297638.P1604259075434450308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297638.P1604259075434450308

/-! ## A297638.P11153115855874021624

`A010894(n)!*A297637(A133263(n+1))`
-/

namespace A297638.P11153115855874021624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010894 (n + 21)).toNat : ℤ) * A297637 (A133263 (n + 1)).toNat

end

end A297638.P11153115855874021624

/-! ## A297638.P8454106370702672274

`A297637(A133263(n+1))%A000045(n+15)²`
-/

namespace A297638.P8454106370702672274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297637 (A133263 (n + 1)).toNat) (A000045 (n + 15) ^ 2)

end

end A297638.P8454106370702672274

/-! ## A297638.P9140582711089865659

`A000108(gcd(n, n+1))*A297637(A133263(n+1))`
-/

namespace A297638.P9140582711089865659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A297637 (A133263 (n + 1)).toNat

end

end A297638.P9140582711089865659

/-!
# A297639: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297639, there is no canonical definition to state claims against.
-/

/-! ## A297639.P12541672505963804310

`A297637(∑[n+2]+4)`
-/

namespace A297639.P12541672505963804310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297639.P12541672505963804310

/-! ## A297639.P7354650329844086142

`A297637(A167614(n+1))+A185284(n)`
-/

namespace A297639.P7354650329844086142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A167614 (n + 1)).toNat + A185284 n

end

end A297639.P7354650329844086142

/-! ## A297639.P16009116975873033336

`A062513(n+1)*A297637(A167614(n+1))`
-/

namespace A297639.P16009116975873033336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A297637 (A167614 (n + 1)).toNat

end

end A297639.P16009116975873033336

/-! ## A297639.P8355417361573022958

`A297637(A167614(n+1))/A062513(n+2)`
-/

namespace A297639.P8355417361573022958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297637 (A167614 (n + 1)).toNat : ℚ) / (A062513 (n + 2) : ℚ)

end

end A297639.P8355417361573022958

/-! ## A297639.P11914352898358835905

`A297637(A167614(n+1))%A001553(n+1)`
-/

namespace A297639.P11914352898358835905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297637 (A167614 (n + 1)).toNat) (A001553 (n + 1))

end

end A297639.P11914352898358835905

/-!
# A297640: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297640, there is no canonical definition to state claims against.
-/

/-! ## A297640.P13835067692300957877

`A297637(A141214(n)+7)`
-/

namespace A297640.P13835067692300957877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A141214 n + 7).toNat

end

end A297640.P13835067692300957877

/-! ## A297640.P12408580093819617035

`A297637(A052905(n)+9)`
-/

namespace A297640.P12408580093819617035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A052905 n + 9).toNat

end

end A297640.P12408580093819617035

/-! ## A297640.P15606639371031895878

`A297637(A055999(n)+10)`
-/

namespace A297640.P15606639371031895878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A055999 n + 10).toNat

end

end A297640.P15606639371031895878

/-! ## A297640.P6018660910631620448

`A297637(A167614(n+2)+1)`
-/

namespace A297640.P6018660910631620448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A167614 (n + 2) + 1).toNat

end

end A297640.P6018660910631620448

/-! ## A297640.P7272840317200113954

`A297637(A166136(n+2)-2)`
-/

namespace A297640.P7272840317200113954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A166136 (n + 2) - 2).toNat

end

end A297640.P7272840317200113954

/-!
# A297641: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297641, there is no canonical definition to state claims against.
-/

/-! ## A297641.P16594912265875751004

`A297637(A155212(n)+13)`
-/

namespace A297641.P16594912265875751004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A155212 n + 13).toNat

end

end A297641.P16594912265875751004

/-! ## A297641.P4032852724250271355

`A297637(A056000(n)+15)`
-/

namespace A297641.P4032852724250271355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A056000 n + 15).toNat

end

end A297641.P4032852724250271355

/-! ## A297641.P15936976400653513623

`A297637(eq[7, A066657(n)])`
-/

namespace A297641.P15936976400653513623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297641.P15936976400653513623

/-! ## A297641.P17771337155961214285

`A297637(A167614(n+3)+2)`
-/

namespace A297641.P17771337155961214285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A167614 (n + 3) + 2).toNat

end

end A297641.P17771337155961214285

/-! ## A297641.P5836718567690324281

`A297637(A141214(n+1)+8)`
-/

namespace A297641.P5836718567690324281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A141214 (n + 1) + 8).toNat

end

end A297641.P5836718567690324281

/-!
# A297642: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297642, there is no canonical definition to state claims against.
-/

/-! ## A297642.P660256202724351131

`A297637(A166136(n+4))`
-/

namespace A297642.P660256202724351131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A166136 (n + 4)).toNat

end

end A297642.P660256202724351131

/-! ## A297642.P6210979353759903992

`A297637(A167499(n+4)+1)`
-/

namespace A297642.P6210979353759903992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A167499 (n + 4) + 1).toNat

end

end A297642.P6210979353759903992

/-! ## A297642.P4868715018466503084

`A297637(A000217(n+5)+6)`
-/

namespace A297642.P4868715018466503084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A000217 (n + 5) + 6).toNat

end

end A297642.P4868715018466503084

/-! ## A297642.P12539765303278106539

`A297637(A141214(n+2)+9)`
-/

namespace A297642.P12539765303278106539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A141214 (n + 2) + 9).toNat

end

end A297642.P12539765303278106539

/-! ## A297642.P1729002092596541968

`A297637(eq[7, A131818(n+1)])`
-/

namespace A297642.P1729002092596541968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297642.P1729002092596541968

/-!
# A297643: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A297643, there is no canonical definition to state claims against.
-/

/-! ## A297643.P9739345999663756729

`A297637(eq[11, A066657(n)])`
-/

namespace A297643.P9739345999663756729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297643.P9739345999663756729

/-! ## A297643.P11175922230595008375

`A297637(A167499(n+5)+2)`
-/

namespace A297643.P11175922230595008375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A167499 (n + 5) + 2).toNat

end

end A297643.P11175922230595008375

/-! ## A297643.P5068476951039166880

`A297637(A134869(n+6)+6)`
-/

namespace A297643.P5068476951039166880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A134869 (n + 6) + 6).toNat

end

end A297643.P5068476951039166880

/-! ## A297643.P3150278038546562659

`A297637(A034856(n+5)+9)`
-/

namespace A297643.P3150278038546562659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (A034856 (n + 5) + 9).toNat

end

end A297643.P3150278038546562659

/-! ## A297643.P8323706196444419114

`A297637(eq[8, A131818(n+1)])`
-/

namespace A297643.P8323706196444419114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297643.P8323706196444419114

/-!
# A297644: Pentagonal numbers (A000326) in which parity of digits alternates.

The programs for A297644, there is no canonical definition to state claims against.
-/

/-! ## A297644.P3635971091381825647

`∩[A030141(n+2), A000326(n)]`
-/

namespace A297644.P3635971091381825647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297644.P3635971091381825647

/-! ## A297644.P13306794802056595554

`filter[A000326(n+1), A228710(#)]`
-/

namespace A297644.P13306794802056595554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297644.P13306794802056595554

/-! ## A297644.P16711216252587290672

`filter[A027626(3*n), A228710(#)]`
-/

namespace A297644.P16711216252587290672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297644.P16711216252587290672

/-! ## A297644.P7951516928468496198

`filter[A236343(3*n), A228710(#)]`
-/

namespace A297644.P7951516928468496198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297644.P7951516928468496198

/-! ## A297644.P4485031183659789922

`filter[A001318(2*n+1), A228710(#)]`
-/

namespace A297644.P4485031183659789922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297644.P4485031183659789922

/-!
# A297645: Hexagonal numbers (A000384) in which parity of digits alternates.

The programs for A297645, there is no canonical definition to state claims against.
-/

/-! ## A297645.P540719410125251471

`∩[A068882(n+1), A000384(n)]`
-/

namespace A297645.P540719410125251471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P540719410125251471

/-! ## A297645.P6520366597933356022

`∩[A068882(n+1), A084265(n)]`
-/

namespace A297645.P6520366597933356022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P6520366597933356022

/-! ## A297645.P1037357116352582255

`∩[A068882(n+1), A260699(n)]`
-/

namespace A297645.P1037357116352582255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P1037357116352582255

/-! ## A297645.P5480837715653639341

`∩[A068882(n+1), A265225(n)]`
-/

namespace A297645.P5480837715653639341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P5480837715653639341

/-! ## A297645.P7839817885646760024

`∩[A068882(n+1), A266304(n)]`
-/

namespace A297645.P7839817885646760024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P7839817885646760024

/-! ## A297645.P5630252367381630842

`∩[A068882(n+1), A266665(n)]`
-/

namespace A297645.P5630252367381630842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P5630252367381630842

/-! ## A297645.P3275853755049367187

`∩[A068882(n+1), A093005(n+1)]`
-/

namespace A297645.P3275853755049367187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297645.P3275853755049367187

/-!
# A297646: Heptagonal numbers (A000566) in which parity of digits alternates.

The programs for A297646, there is no canonical definition to state claims against.
-/

/-! ## A297646.P7198326132345786641

`∩[A030141(n+2), A000566(n)]`
-/

namespace A297646.P7198326132345786641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297646.P7198326132345786641

/-! ## A297646.P5435598436634080698

`filter[A000566(n+1), A228710(#)]`
-/

namespace A297646.P5435598436634080698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297646.P5435598436634080698

/-! ## A297646.P4057866344054421469

`filter[A212985(3*n), A228710(#)]`
-/

namespace A297646.P4057866344054421469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212985 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297646.P4057866344054421469

/-! ## A297646.P5937855203201213223

`filter[A238738(3*n), A228710(#)]`
-/

namespace A297646.P5937855203201213223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238738 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297646.P5937855203201213223

/-! ## A297646.P15717088961492889125

`filter[A085787(2*n+1), A228710(#)]`
-/

namespace A297646.P15717088961492889125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297646.P15717088961492889125

/-!
# A297647: Octagonal numbers (A000567) in which parity of digits alternates.

The programs for A297647, there is no canonical definition to state claims against.
-/

/-! ## A297647.P6552349994465591294

`∩[A030141(n+2), A000567(n)]`
-/

namespace A297647.P6552349994465591294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297647.P6552349994465591294

/-! ## A297647.P6806973887796090939

`∩[A001082(2*(n+1)), A030141(n+1)]`
-/

namespace A297647.P6806973887796090939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297647.P6806973887796090939

/-! ## A297647.P2021854821880067997

`filter[A000567(n+1), A228710(#)]`
-/

namespace A297647.P2021854821880067997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297647.P2021854821880067997

/-! ## A297647.P5922580295721514044

`filter[A014255(2*n), A228710(#)]`
-/

namespace A297647.P5922580295721514044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297647.P5922580295721514044

/-! ## A297647.P11370523959498709524

`filter[A357946(2*n), A228710(#)]`
-/

namespace A297647.P11370523959498709524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357946 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297647.P11370523959498709524

/-!
# A297648: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A297648, there is no canonical definition to state claims against.
-/

/-! ## A297648.P17631071514532152692

`A297654(∑[4*n]+1)`
-/

namespace A297648.P17631071514532152692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297648.P17631071514532152692

/-! ## A297648.P12604208896084966293

`record[A297654(A286145(n)+1)]`
-/

namespace A297648.P12604208896084966293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297648.P12604208896084966293

/-! ## A297648.P6883439506948002185

`or(A000007(n), A297654(A001844(n)))`
-/

namespace A297648.P6883439506948002185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297654 (A001844 n).toNat)

end

end A297648.P6883439506948002185

/-! ## A297648.P17497091294066520374

`A297654(A001844(n))+A070206(n+1)`
-/

namespace A297648.P17497091294066520374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A001844 n).toNat + A070206 (n + 1)

end

end A297648.P17497091294066520374

/-! ## A297648.P7511374495777678525

`A001987(n+1)*A297654(A001844(n))`
-/

namespace A297648.P7511374495777678525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 (n + 1) * A297654 (A001844 n).toNat

end

end A297648.P7511374495777678525

/-!
# A297649: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297649, there is no canonical definition to state claims against.
-/

/-! ## A297649.P15941917323964469713

`A297654(∑[n+3]+1)`
-/

namespace A297649.P15941917323964469713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297649.P15941917323964469713

/-! ## A297649.P15545897713222238145

`record[A297654(A198464(n+1))]`
-/

namespace A297649.P15545897713222238145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297649.P15545897713222238145

/-! ## A297649.P3287576244885575851

`record[ratio[A297654(A130297(n+1))]]`
-/

namespace A297649.P3287576244885575851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A130297 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297649.P3287576244885575851

/-! ## A297649.P2075521222350591422

`A001221(A051081(n+1))*A297654(A034856(n+2))`
-/

namespace A297649.P2075521222350591422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051081 (n + 1)).toNat * A297654 (A034856 (n + 2)).toNat

end

end A297649.P2075521222350591422

/-! ## A297649.P761894406599553984

`A008683(A014963(n+1))²*A297654(A034856(n+2))`
-/

namespace A297649.P761894406599553984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A297654 (A034856 (n + 2)).toNat

end

end A297649.P761894406599553984

/-!
# A297650: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297650, there is no canonical definition to state claims against.
-/

/-! ## A297650.P3264884196721424015

`A297654(A141214(n+1))`
-/

namespace A297650.P3264884196721424015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A141214 (n + 1)).toNat

end

end A297650.P3264884196721424015

/-! ## A297650.P9105077247425802441

`A297654(A155212(n)+5)`
-/

namespace A297650.P9105077247425802441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A155212 n + 5).toNat

end

end A297650.P9105077247425802441

/-! ## A297650.P10333051739015227341

`A297654(A056000(n)+7)`
-/

namespace A297650.P10333051739015227341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A056000 n + 7).toNat

end

end A297650.P10333051739015227341

/-! ## A297650.P3123009274578379473

`A297654(eq[2, A054123(n)])`
-/

namespace A297650.P3123009274578379473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297650.P3123009274578379473

/-! ## A297650.P17351138593702239276

`A297654(Δ[A006416(n+2)])`
-/

namespace A297650.P17351138593702239276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (f1 (n + 1) - f1 n).toNat

end

end A297650.P17351138593702239276

/-!
# A297651: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297651, there is no canonical definition to state claims against.
-/

/-! ## A297651.P2298495206983527149

`A297654(Δ[A264443(n)])`
-/

namespace A297651.P2298495206983527149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (f1 (n + 1) - f1 n).toNat

end

end A297651.P2298495206983527149

/-! ## A297651.P7846786658028281896

`A297654(A046691(n+3))`
-/

namespace A297651.P7846786658028281896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A046691 (n + 3)).toNat

end

end A297651.P7846786658028281896

/-! ## A297651.P8723183657328849103

`A297654(A056115(n)+11)`
-/

namespace A297651.P8723183657328849103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A056115 n + 11).toNat

end

end A297651.P8723183657328849103

/-! ## A297651.P15541497164812162047

`A297654(eq[4, A193592(n)])`
-/

namespace A297651.P15541497164812162047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297651.P15541497164812162047

/-! ## A297651.P7487873053991629752

`A297654(Δ[A023545(n+1)])`
-/

namespace A297651.P7487873053991629752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (f1 (n + 1) - f1 n).toNat

end

end A297651.P7487873053991629752

/-!
# A297652: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297652, there is no canonical definition to state claims against.
-/

/-! ## A297652.P18131551777363390243

`A297654(A052905(n+3))`
-/

namespace A297652.P18131551777363390243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A052905 (n + 3)).toNat

end

end A297652.P18131551777363390243

/-! ## A297652.P13243335334676991680

`A297654(eq[3, A219347(n)])`
-/

namespace A297652.P13243335334676991680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297652.P13243335334676991680

/-! ## A297652.P18336893748175420974

`A297654(eq[5, A193592(n)])`
-/

namespace A297652.P18336893748175420974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297652.P18336893748175420974

/-! ## A297652.P8283890130984475228

`A297654(eq[6, A200370(n+1)])`
-/

namespace A297652.P8283890130984475228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297652.P8283890130984475228

/-! ## A297652.P2019267255795481694

`A297654(Δ[Δ[A006504(n+1)]])`
-/

namespace A297652.P2019267255795481694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (f1 (n + 1) - f1 n).toNat

end

end A297652.P2019267255795481694

/-!
# A297653: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297653, there is no canonical definition to state claims against.
-/

/-! ## A297653.P2442019631131094773

`A297654(eq[4, A219347(n)])`
-/

namespace A297653.P2442019631131094773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297653.P2442019631131094773

/-! ## A297653.P13846696012338934910

`A297654(eq[6, A193592(n)])`
-/

namespace A297653.P13846696012338934910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297653.P13846696012338934910

/-! ## A297653.P1300203257896435090

`A297654(A052905(n+4)-1)`
-/

namespace A297653.P1300203257896435090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A052905 (n + 4) - 1).toNat

end

end A297653.P1300203257896435090

/-! ## A297653.P15402460046372866043

`A297654(A000124(n+7)-7)`
-/

namespace A297653.P15402460046372866043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A000124 (n + 7) - 7).toNat

end

end A297653.P15402460046372866043

/-! ## A297653.P15520537034000307996

`A297654(eq[7, A200370(n+1)])`
-/

namespace A297653.P15520537034000307996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297653.P15520537034000307996

/-!
# A297654: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297654, there is no canonical definition to state claims against.
-/

/-! ## A297654.P4901671533310376951

`A220993(A082743(n))-Δ[A294335(n)]`
-/

namespace A297654.P4901671533310376951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (A082743 n).toNat - (f1 (n + 1) - f1 n)

end

end A297654.P4901671533310376951

/-! ## A297654.P4350547868818928766

`A219002(n+1)-A080224(A056273(n))`
-/

namespace A297654.P4350547868818928766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (n + 1) - A080224 (A056273 n).toNat

end

end A297654.P4350547868818928766

/-! ## A297654.P14370564309534937561

`A219002(n+1)-A080224(A317652(n))`
-/

namespace A297654.P14370564309534937561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (n + 1) - A080224 (A317652 n).toNat

end

end A297654.P14370564309534937561

/-! ## A297654.P7909488116894050050

`A220993(A061219(n+1))-Δ[A294335(n)]`
-/

namespace A297654.P7909488116894050050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (A061219 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A297654.P7909488116894050050

/-! ## A297654.P8671576505895803147

`A219002(A061219(n+1))-A280051(n+2)`
-/

namespace A297654.P8671576505895803147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A061219 (n + 1)).toNat - A280051 (n + 2)

end

end A297654.P8671576505895803147

/-!
# A297655: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297655, there is no canonical definition to state claims against.
-/

/-! ## A297655.P9660768491981332029

`A297654(∑[n+1]+2)`
-/

namespace A297655.P9660768491981332029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297655.P9660768491981332029

/-! ## A297655.P17826333363092992190

`record[A297654(A130270(n+1)+2)]`
-/

namespace A297655.P17826333363092992190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297655.P17826333363092992190

/-! ## A297655.P3570317506721904902

`record[gcd(A097230(n), A297654(n+1))]`
-/

namespace A297655.P3570317506721904902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A297654 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297655.P3570317506721904902

/-! ## A297655.P10004697475928805653

`record[gcd(A213177(n+1), A297654(n+3))]`
-/

namespace A297655.P10004697475928805653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213177 (n + 1)) (A297654 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297655.P10004697475928805653

/-! ## A297655.P11268861383635855506

`record[A005369(2*(n+1))*A297654(n+3)]`
-/

namespace A297655.P11268861383635855506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * (n + 1)) * A297654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297655.P11268861383635855506

/-!
# A297656: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297656, there is no canonical definition to state claims against.
-/

/-! ## A297656.P44668367921114661

`A297654(∑[n+2]+4)`
-/

namespace A297656.P44668367921114661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297656.P44668367921114661

/-! ## A297656.P1563333533183081795

`A297654(A167614(n+1))^ceil(acot(n))`
-/

namespace A297656.P1563333533183081795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297654 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A297656.P1563333533183081795

/-! ## A297656.P9443216452951433048

`A297654(A167614(n+1))^A178334(n)`
-/

namespace A297656.P9443216452951433048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297654 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A297656.P9443216452951433048

/-! ## A297656.P18409553194624063561

`gcd(A000038(n), A297654(A167614(n+1)))`
-/

namespace A297656.P18409553194624063561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297654 (A167614 (n + 1)).toNat)

end

end A297656.P18409553194624063561

/-! ## A297656.P141830248942094775

`lcm(A020985(n), A297654(A167614(n+1)))`
-/

namespace A297656.P141830248942094775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A297654 (A167614 (n + 1)).toNat)

end

end A297656.P141830248942094775

/-!
# A297657: Number of 4 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A297657, there is no canonical definition to state claims against.
-/

/-! ## A297657.P14301176041638680147

`A297654(A141214(n)+7)`
-/

namespace A297657.P14301176041638680147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A141214 n + 7).toNat

end

end A297657.P14301176041638680147

/-! ## A297657.P16330125894203928280

`A297654(A052905(n)+9)`
-/

namespace A297657.P16330125894203928280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A052905 n + 9).toNat

end

end A297657.P16330125894203928280

/-! ## A297657.P1847142909437006333

`A297654(A055999(n)+10)`
-/

namespace A297657.P1847142909437006333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A055999 n + 10).toNat

end

end A297657.P1847142909437006333

/-! ## A297657.P1683251704091013107

`A297654(A167614(n+2)+1)`
-/

namespace A297657.P1683251704091013107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A167614 (n + 2) + 1).toNat

end

end A297657.P1683251704091013107

/-! ## A297657.P14748357524039451679

`A297654(A166136(n+2)-2)`
-/

namespace A297657.P14748357524039451679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A166136 (n + 2) - 2).toNat

end

end A297657.P14748357524039451679

/-!
# A297658: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297658, there is no canonical definition to state claims against.
-/

/-! ## A297658.P10709916224884756185

`A297654(A155212(n)+13)`
-/

namespace A297658.P10709916224884756185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A155212 n + 13).toNat

end

end A297658.P10709916224884756185

/-! ## A297658.P7575503097769694661

`A297654(A056000(n)+15)`
-/

namespace A297658.P7575503097769694661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A056000 n + 15).toNat

end

end A297658.P7575503097769694661

/-! ## A297658.P1434936404845359175

`A297654(eq[7, A066657(n)])`
-/

namespace A297658.P1434936404845359175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297658.P1434936404845359175

/-! ## A297658.P14057077007011451967

`A297654(eq[6, A131818(n+1)])`
-/

namespace A297658.P14057077007011451967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297658.P14057077007011451967

/-! ## A297658.P7886678535018195678

`A297654(A038722(Δ[A023545(n+1)]))`
-/

namespace A297658.P7886678535018195678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A297658.P7886678535018195678

/-!
# A297659: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A297659, there is no canonical definition to state claims against.
-/

/-! ## A297659.P13503100451256470997

`A297654(A166136(n+4))`
-/

namespace A297659.P13503100451256470997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A166136 (n + 4)).toNat

end

end A297659.P13503100451256470997

/-! ## A297659.P12057196060578809433

`A297654(A056115(n)+21)`
-/

namespace A297659.P12057196060578809433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A056115 n + 21).toNat

end

end A297659.P12057196060578809433

/-! ## A297659.P17665166579357635112

`A297654(A167614(n+4)+3)`
-/

namespace A297659.P17665166579357635112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A167614 (n + 4) + 3).toNat

end

end A297659.P17665166579357635112

/-! ## A297659.P6297016637712799504

`A297654(A246172(n+1)+20)`
-/

namespace A297659.P6297016637712799504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A246172 (n + 1) + 20).toNat

end

end A297659.P6297016637712799504

/-! ## A297659.P18336318909929692996

`A297654(eq[6, A130270(n+1)])`
-/

namespace A297659.P18336318909929692996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297659.P18336318909929692996

/-!
# A297660: Number of 7 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A297660, there is no canonical definition to state claims against.
-/

/-! ## A297660.P14107988119342508697

`A297654(eq[11, A066657(n)])`
-/

namespace A297660.P14107988119342508697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297660.P14107988119342508697

/-! ## A297660.P2719417622535901167

`A297654(A000124(n+6)+6)`
-/

namespace A297660.P2719417622535901167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A000124 (n + 6) + 6).toNat

end

end A297660.P2719417622535901167

/-! ## A297660.P5220271283370588679

`A297654(A000217(n+6)+7)`
-/

namespace A297660.P5220271283370588679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (A000217 (n + 6) + 7).toNat

end

end A297660.P5220271283370588679

/-! ## A297660.P18256711890809265625

`A297654(eq[6, A002262(n)]+1)`
-/

namespace A297660.P18256711890809265625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297660.P18256711890809265625

/-! ## A297660.P4710987360885480815

`A297654(eq[8, A131818(n+1)])`
-/

namespace A297660.P4710987360885480815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297660.P4710987360885480815

/-!
# A297661: a(n) = n + 2*cos((n*Pi)/3) + Lucas(n).

The programs for A297661, the canonical program `A297661.P17704728327641608974` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297661 has offset 1).

The definition of A297661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297661.P17704728327641608974

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-5)+a(n-6)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=10, a(4)=17, a(5)=26`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297661

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-5)+a(n-6)` -/
def P17704728327641608974.Spec : Prop :=
  ∀ n, P17704728327641608974.a n = A297661 (n + 1)

theorem P17704728327641608974.correct : P17704728327641608974.Spec := by
  intro n
  simp only [A297661, Nat.add_sub_cancel]

end A297661

/-! ## A297661.P2783435414285432936

`A007039(n+1)+1+n`
-/

namespace A297661.P2783435414285432936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (n + 1) + 1 + (n : ℤ)

end

end A297661.P2783435414285432936

namespace A297661

/-- `A007039(n+1)+1+n` -/
def P2783435414285432936.Spec : Prop :=
  ∀ n, P2783435414285432936.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P16686979071550818896

`A395933(n+1)+A004442(n)`
-/

namespace A297661.P16686979071550818896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395933 (n + 1) + A004442 n

end

end A297661.P16686979071550818896

namespace A297661

/-- `A395933(n+1)+A004442(n)` -/
def P16686979071550818896.Spec : Prop :=
  ∀ n, P16686979071550818896.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P11600671920720915119

`record[A141256(n)+A007039(A141256(n))]`
-/

namespace A297661.P11600671920720915119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n + A007039 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297661.P11600671920720915119

namespace A297661

/-- `record[A141256(n)+A007039(A141256(n))]` -/
def P11600671920720915119.Spec : Prop :=
  ∀ n, P11600671920720915119.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P14062098561794220897

`record[A154958(n)+A007039(A154958(n))]`
-/

namespace A297661.P14062098561794220897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n + A007039 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297661.P14062098561794220897

namespace A297661

/-- `record[A154958(n)+A007039(A154958(n))]` -/
def P14062098561794220897.Spec : Prop :=
  ∀ n, P14062098561794220897.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P10536016852336209301

`Δ[ogf((4-2x)/(1-2x+x^2-x^4))]+1+n`
-/

namespace A297661.P10536016852336209301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2] [1, -2, 1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A297661.P10536016852336209301

namespace A297661

/-- `Δ[ogf((4-2x)/(1-2x+x^2-x^4))]+1+n` -/
def P10536016852336209301.Spec : Prop :=
  ∀ n, P10536016852336209301.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P8582154869815966045

`Δ[A297667(n+2)]+n`
-/

namespace A297661.P8582154869815966045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A297661.P8582154869815966045

namespace A297661

/-- `Δ[A297667(n+2)]+n` -/
def P8582154869815966045.Spec : Prop :=
  ∀ n, P8582154869815966045.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P9553229413095520842

`Δ[2*Δ[A199935(n+3)]]+n+1`
-/

namespace A297661.P9553229413095520842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A297661.P9553229413095520842

namespace A297661

/-- `Δ[2*Δ[A199935(n+3)]]+n+1` -/
def P9553229413095520842.Spec : Prop :=
  ∀ n, P9553229413095520842.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P5082687802088038928

`Δ[A000124(n)+2*Δ[A199935(n+3)]]`
-/

namespace A297661.P5082687802088038928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297661.P5082687802088038928

namespace A297661

/-- `Δ[A000124(n)+2*Δ[A199935(n+3)]]` -/
def P5082687802088038928.Spec : Prop :=
  ∀ n, P5082687802088038928.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P15246296629911029138

`Δ[A000217(n)+2*Δ[A199935(n+3)]]`
-/

namespace A297661.P15246296629911029138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297661.P15246296629911029138

namespace A297661

/-- `Δ[A000217(n)+2*Δ[A199935(n+3)]]` -/
def P15246296629911029138.Spec : Prop :=
  ∀ n, P15246296629911029138.a n = A297661 (n + 1)

end A297661

/-! ## A297661.P9713604866753468040

`record[A028920(n)+A007039(A028920(n))]`
-/

namespace A297661.P9713604866753468040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n + A007039 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297661.P9713604866753468040

namespace A297661

/-- `record[A028920(n)+A007039(A028920(n))]` -/
def P9713604866753468040.Spec : Prop :=
  ∀ n, P9713604866753468040.a n = A297661 (n + 1)

end A297661

/-!
# A297662: Number of chordless cycles in the complete tripartite graph K_{n,n,n}.

The programs for A297662, the canonical program `A297662.P5808401980666699367` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297662 has offset 1).

The definition of A297662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297662.P4027010820215475611

`3*C(n+1, 2)²`
-/

namespace A297662.P4027010820215475611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) 2 ^ 2

end

end A297662.P4027010820215475611

namespace A297662

/-- `3*C(n+1, 2)²` -/
def P4027010820215475611.Spec : Prop :=
  ∀ n, (P4027010820215475611.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P520560811529792165

`3*(n+1)²*n²/4`
-/

namespace A297662.P520560811529792165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 * n ^ 2 : ℚ) / 4

end

end A297662.P520560811529792165

namespace A297662

/-- `3*(n+1)²*n²/4` -/
def P520560811529792165.Spec : Prop :=
  ∀ n, P520560811529792165.a n = (A297662 (n + 1) : ℚ)

theorem P520560811529792165.correct : P520560811529792165.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A297662, Nat.add_sub_cancel, A297662.P520560811529792165.a, A297662.P5808401980666699367.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A297662, Nat.add_sub_cancel, A297662.P520560811529792165.a, A297662.P5808401980666699367.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A297662

/-! ## A297662.P5808401980666699367

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=27, a(3)=108, a(4)=300`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297662

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5808401980666699367.Spec : Prop :=
  ∀ n, P5808401980666699367.a n = A297662 (n + 1)

theorem P5808401980666699367.correct : P5808401980666699367.Spec := by
  intro n
  simp only [A297662, Nat.add_sub_cancel]

end A297662

/-! ## A297662.P8864410498229340267

`3*A000537(n)`
-/

namespace A297662.P8864410498229340267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000537 n

end

end A297662.P8864410498229340267

namespace A297662

/-- `3*A000537(n)` -/
def P8864410498229340267.Spec : Prop :=
  ∀ n, P8864410498229340267.a n = A297662 (n + 1)

end A297662

/-! ## A297662.P11255733343647475913

`lcm(3, 3*∑[n]^2)`
-/

namespace A297662.P11255733343647475913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A297662.P11255733343647475913

namespace A297662

/-- `lcm(3, 3*∑[n]^2)` -/
def P11255733343647475913.Spec : Prop :=
  ∀ n, (P11255733343647475913.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P3581022372119019012

`∑[3*n^acos(cos(3))]`
-/

namespace A297662.P3581022372119019012
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * (n : ℝ) ^ (Real.arccos (Real.cos (3 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P3581022372119019012

namespace A297662

/-- `∑[3*n^acos(cos(3))]` -/
def P3581022372119019012.Spec : Prop :=
  ∀ n, P3581022372119019012.a n = (A297662 (n + 1) : ℝ)

end A297662

/-! ## A297662.P14966190955976658708

`∑[n^3/tan(acot(3))]`
-/

namespace A297662.P14966190955976658708
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P14966190955976658708

namespace A297662

/-- `∑[n^3/tan(acot(3))]` -/
def P14966190955976658708.Spec : Prop :=
  ∀ n, P14966190955976658708.a n = (A297662 (n + 1) : ℝ)

end A297662

/-! ## A297662.P10371651505922550416

`∑[n^3/cot(atan(3))]`
-/

namespace A297662.P10371651505922550416
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.cot (Real.arctan (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P10371651505922550416

namespace A297662

/-- `∑[n^3/cot(atan(3))]` -/
def P10371651505922550416.Spec : Prop :=
  ∀ n, P10371651505922550416.a n = (A297662 (n + 1) : ℝ)

end A297662

/-! ## A297662.P12055899082628845335

`sqrt(9*C(n+1, 2)^4)`
-/

namespace A297662.P12055899082628845335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (9 * Nat.choose (n + 1) 2 ^ 4 : ℝ)

end

end A297662.P12055899082628845335

namespace A297662

/-- `sqrt(9*C(n+1, 2)^4)` -/
def P12055899082628845335.Spec : Prop :=
  ∀ n, P12055899082628845335.a n = (A297662 (n + 1) : ℝ)

end A297662

/-! ## A297662.P18011364468694583752

`∑[3*(n%(n+1))^3]`
-/

namespace A297662.P18011364468694583752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % (n + 1)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P18011364468694583752

namespace A297662

/-- `∑[3*(n%(n+1))^3]` -/
def P18011364468694583752.Spec : Prop :=
  ∀ n, (P18011364468694583752.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P15967139522070464723

`∑[3*gcd(n, 2*n)^3]`
-/

namespace A297662.P15967139522070464723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (2 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P15967139522070464723

namespace A297662

/-- `∑[3*gcd(n, 2*n)^3]` -/
def P15967139522070464723.Spec : Prop :=
  ∀ n, (P15967139522070464723.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P8250191082745489020

`∑[a(n-1)+sqrt(3)]²` with `a(0)=0`
-/

namespace A297662.P8250191082745489020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Real.sqrt (3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A297662.P8250191082745489020

namespace A297662

/-- `∑[a(n-1)+sqrt(3)]²` -/
def P8250191082745489020.Spec : Prop :=
  ∀ n, P8250191082745489020.a n = (A297662 (n + 1) : ℝ)

end A297662

/-! ## A297662.P8139877613973420810

`a(n-1)+3*n^3` with `a(0)=0`
-/

namespace A297662.P8139877613973420810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * n ^ 3

end

end A297662.P8139877613973420810

namespace A297662

/-- `a(n-1)+3*n^3` -/
def P8139877613973420810.Spec : Prop :=
  ∀ n, (P8139877613973420810.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P15575506930802701553

`lcm((n+1)², n²)-∑[n]²`
-/

namespace A297662.P15575506930802701553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 1) ^ 2) (n ^ 2) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A297662.P15575506930802701553

namespace A297662

/-- `lcm((n+1)², n²)-∑[n]²` -/
def P15575506930802701553.Spec : Prop :=
  ∀ n, P15575506930802701553.a n = A297662 (n + 1)

end A297662

/-! ## A297662.P15711081921261887053

`floor(∑[a(n-1)-3]²/3)` with `a(0)=0`
-/

namespace A297662.P15711081921261887053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 3⌋

end

end A297662.P15711081921261887053

namespace A297662

/-- `floor(∑[a(n-1)-3]²/3)` -/
def P15711081921261887053.Spec : Prop :=
  ∀ n, P15711081921261887053.a n = A297662 (n + 1)

end A297662

/-! ## A297662.P2115890134699076968

`∑[n*∑[a(n-1)+6]]` with `a(0)=0, a(1)=3`
-/

namespace A297662.P2115890134699076968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P2115890134699076968

namespace A297662

/-- `∑[n*∑[a(n-1)+6]]` -/
def P2115890134699076968.Spec : Prop :=
  ∀ n, (P2115890134699076968.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P13061978027049470504

`floor(a(n-1)+3*n*n²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A297662.P13061978027049470504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * (n * n ^ 2)

end

end A297662.P13061978027049470504

namespace A297662

/-- `floor(a(n-1)+3*n*n²)` -/
def P13061978027049470504.Spec : Prop :=
  ∀ n, (P13061978027049470504.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P2532185547836547963

`∑[n*(∑[2*n]+C(2*n, 2))]`
-/

namespace A297662.P2532185547836547963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose (2 * n) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297662.P2532185547836547963

namespace A297662

/-- `∑[n*(∑[2*n]+C(2*n, 2))]` -/
def P2532185547836547963.Spec : Prop :=
  ∀ n, (P2532185547836547963.a n : ℤ) = A297662 (n + 1)

end A297662

/-! ## A297662.P11656651040878948605

`∑[a(n-1)+2]²-∑[n]²` with `a(0)=0`
-/

namespace A297662.P11656651040878948605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A297662.P11656651040878948605

namespace A297662

/-- `∑[a(n-1)+2]²-∑[n]²` -/
def P11656651040878948605.Spec : Prop :=
  ∀ n, P11656651040878948605.a n = A297662 (n + 1)

end A297662

/-! ## A297662.P6580826744059057261

`floor(a(n-1))+3*n*n*n` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A297662.P6580826744059057261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * (n * (n * n))

end

end A297662.P6580826744059057261

namespace A297662

/-- `floor(a(n-1))+3*n*n*n` -/
def P6580826744059057261.Spec : Prop :=
  ∀ n, (P6580826744059057261.a n : ℤ) = A297662 (n + 1)

end A297662

/-!
# A297663: a(n) = 5*n + 2^n.

The programs for A297663, the canonical program `A297663.P2635247335739481626` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297663 has offset 0).

The definition of A297663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+2^n` (program `A297663.P2635247335739481626`, by `A297663.P2635247335739481626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297663.P2635247335739481626

`5*n+2^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297663

/-- `5*n+2^n` -/
def P2635247335739481626.Spec : Prop :=
  ∀ n, (P2635247335739481626.a n : ℤ) = A297663 n

theorem P2635247335739481626.correct : P2635247335739481626.Spec := by
  intro n
  simp only [A297663]

end A297663

/-! ## A297663.P13420004007111565595

`∑[ogf((1+3x-9x^2)/(1-3x+2x^2))]`
-/

namespace A297663.P13420004007111565595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -9] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297663.P13420004007111565595

namespace A297663

/-- `∑[ogf((1+3x-9x^2)/(1-3x+2x^2))]` -/
def P13420004007111565595.Spec : Prop :=
  ∀ n, P13420004007111565595.a n = A297663 n

end A297663

/-! ## A297663.P6195565527439396705

`ogf((1+3x-9x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A297663.P6195565527439396705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -9] [1, -4, 5, -2] n

end

end A297663.P6195565527439396705

namespace A297663

/-- `ogf((1+3x-9x^2)/(1-4x+5x^2-2x^3))` -/
def P6195565527439396705.Spec : Prop :=
  ∀ n, P6195565527439396705.a n = A297663 n

end A297663

/-! ## A297663.P1711331002869418404

`∑[2*a(n-1)-5]` with `a(0)=1, a(1)=6`
-/

namespace A297663.P1711331002869418404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 * f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297663.P1711331002869418404

namespace A297663

/-- `∑[2*a(n-1)-5]` -/
def P1711331002869418404.Spec : Prop :=
  ∀ n, P1711331002869418404.a n = A297663 n

end A297663

/-! ## A297663.P16814748085594267543

`∑[a(n-1)+a(n-1)-5]` with `a(0)=1, a(1)=6`
-/

namespace A297663.P16814748085594267543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297663.P16814748085594267543

namespace A297663

/-- `∑[a(n-1)+a(n-1)-5]` -/
def P16814748085594267543.Spec : Prop :=
  ∀ n, P16814748085594267543.a n = A297663 n

end A297663

/-! ## A297663.P18363124276536326806

`∑[a(n-1)-(5-a(n-1))]` with `a(0)=1, a(1)=6`
-/

namespace A297663.P18363124276536326806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) - (5 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297663.P18363124276536326806

namespace A297663

/-- `∑[a(n-1)-(5-a(n-1))]` -/
def P18363124276536326806.Spec : Prop :=
  ∀ n, P18363124276536326806.a n = A297663 n

end A297663

/-! ## A297663.P8803320349698983735

`∑[5-A154589(n)]`
-/

namespace A297663.P8803320349698983735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A154589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297663.P8803320349698983735

namespace A297663

/-- `∑[5-A154589(n)]` -/
def P8803320349698983735.Spec : Prop :=
  ∀ n, P8803320349698983735.a n = A297663 n

end A297663

/-! ## A297663.P15752029560623446539

`(10*n+A000079(n+1))/2`
-/

namespace A297663.P15752029560623446539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n : ℤ) + A000079 (n + 1) : ℚ) / 2

end

end A297663.P15752029560623446539

namespace A297663

/-- `(10*n+A000079(n+1))/2` -/
def P15752029560623446539.Spec : Prop :=
  ∀ n, P15752029560623446539.a n = (A297663 n : ℚ)

theorem P15752029560623446539.correct : P15752029560623446539.Spec := by
  intro n
  simp only [A297663, Nat.add_sub_cancel, A297663.P15752029560623446539.a, A297663.P2635247335739481626.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297663

/-! ## A297663.P6925576183291820292

`(A132824(n+1)+12*n)/2`
-/

namespace A297663.P6925576183291820292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132824 (n + 1) + (12 * n : ℤ) : ℚ) / 2

end

end A297663.P6925576183291820292

namespace A297663

/-- `(A132824(n+1)+12*n)/2` -/
def P6925576183291820292.Spec : Prop :=
  ∀ n, P6925576183291820292.a n = (A297663 n : ℚ)

end A297663

/-!
# A297664: Number of chordless cycles in the n X n grid graph.

The programs for A297664, there is no canonical definition to state claims against.
-/

/-! ## A297664.P9204163965876566790

`A065712(ceil(exp(Δ[n²])))`
-/

namespace A297664.P9204163965876566790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 ⌈Real.exp ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉.toNat

end

end A297664.P9204163965876566790

/-!
# A297665: Number of chordless cycles in the n-web graph.

The programs for A297665, the canonical program `A297665.P12522682566666438318` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297665 has offset 3).

The definition of A297665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297665.P12522682566666438318

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-5)+a(n-6)` with `a(0)=3, a(1)=10, a(2)=17, a(3)=26, a(4)=37, a(5)=54, a(6)=83`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297665

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-5)+a(n-6)` -/
def P12522682566666438318.Spec : Prop :=
  ∀ n, P12522682566666438318.a n = A297665 (n + 3)

theorem P12522682566666438318.correct : P12522682566666438318.Spec := by
  intro n
  simp only [A297665, Nat.add_sub_cancel]

end A297665

/-! ## A297665.P5446765880299629910

`A297661(A171463(n+1))`
-/

namespace A297665.P5446765880299629910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (A171463 (n + 1)).toNat

end

end A297665.P5446765880299629910

namespace A297665

/-- `A297661(A171463(n+1))` -/
def P5446765880299629910.Spec : Prop :=
  ∀ n, P5446765880299629910.a n = A297665 (n + 3)

end A297665

/-! ## A297665.P16869582487030833268

`A297661(n+3)-A027656(A060264(n))`
-/

namespace A297665.P16869582487030833268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3) - A027656 (A060264 n).toNat

end

end A297665.P16869582487030833268

namespace A297665

/-- `A297661(n+3)-A027656(A060264(n))` -/
def P16869582487030833268.Spec : Prop :=
  ∀ n, P16869582487030833268.a n = A297665 (n + 3)

end A297665

/-! ## A297665.P18299705009138046815

`A297661(n+3)-A060264(n)*A130716(n+2)`
-/

namespace A297665.P18299705009138046815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3) - A060264 n * A130716 (n + 2)

end

end A297665.P18299705009138046815

namespace A297665

/-- `A297661(n+3)-A060264(n)*A130716(n+2)` -/
def P18299705009138046815.Spec : Prop :=
  ∀ n, P18299705009138046815.a n = A297665 (n + 3)

end A297665

/-! ## A297665.P14542862960989628428

`A297661(n+3)-C(A060264(n), A060530(n+1))`
-/

namespace A297665.P14542862960989628428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3) - (Nat.choose (A060264 n).toNat (A060530 (n + 1)).toNat : ℤ)

end

end A297665.P14542862960989628428

namespace A297665

/-- `A297661(n+3)-C(A060264(n), A060530(n+1))` -/
def P14542862960989628428.Spec : Prop :=
  ∀ n, P14542862960989628428.a n = A297665 (n + 3)

end A297665

/-! ## A297665.P9710785490975191667

`A297661(n+3)-C(A060264(n), A132359(n+1))`
-/

namespace A297665.P9710785490975191667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3) - (Nat.choose (A060264 n).toNat (A132359 (n + 1)).toNat : ℤ)

end

end A297665.P9710785490975191667

namespace A297665

/-- `A297661(n+3)-C(A060264(n), A132359(n+1))` -/
def P9710785490975191667.Spec : Prop :=
  ∀ n, P9710785490975191667.a n = A297665 (n + 3)

end A297665

/-! ## A297665.P8185347461337408973

`A297661(n+3)-C(A060264(n), A225297(n+1))`
-/

namespace A297665.P8185347461337408973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3) - (Nat.choose (A060264 n).toNat (A225297 (n + 1)).toNat : ℤ)

end

end A297665.P8185347461337408973

namespace A297665

/-- `A297661(n+3)-C(A060264(n), A225297(n+1))` -/
def P8185347461337408973.Spec : Prop :=
  ∀ n, P8185347461337408973.a n = A297665 (n + 3)

end A297665

/-! ## A297665.P9479584040085802044

`A297661(n+3)-C(A060264(n), A002275(n+1))`
-/

namespace A297665.P9479584040085802044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3) - (Nat.choose (A060264 n).toNat (A002275 (n + 1)).toNat : ℤ)

end

end A297665.P9479584040085802044

namespace A297665

/-- `A297661(n+3)-C(A060264(n), A002275(n+1))` -/
def P9479584040085802044.Spec : Prop :=
  ∀ n, P9479584040085802044.a n = A297665 (n + 3)

end A297665

/-!
# A297666: Number of chordless cycles in the n X n knight graph.

The programs for A297666, there is no canonical definition to state claims against.
-/

/-! ## A297666.P6405949298146603767

`A069770(A129324(n)²)`
-/

namespace A297666.P6405949298146603767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A129324 n ^ 2).toNat

end

end A297666.P6405949298146603767

/-!
# A297667: Number of chordless cycles in the n-Moebius ladder.

The programs for A297667, the canonical program `A297667.P2889463541075065575` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297667 has offset 1).

The definition of A297667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297667.P2889463541075065575

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=9, a(3)=12, a(4)=15, a(5)=22`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297667

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-5)+a(n-6)` -/
def P2889463541075065575.Spec : Prop :=
  ∀ n, P2889463541075065575.a n = A297667 (n + 1)

theorem P2889463541075065575.correct : P2889463541075065575.Spec := by
  intro n
  simp only [A297667, Nat.add_sub_cancel]

end A297667

/-! ## A297667.P9569574877586476926

`2*A108014(n)+n+1`
-/

namespace A297667.P9569574877586476926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108014 n + (n + 1 : ℤ)

end

end A297667.P9569574877586476926

namespace A297667

/-- `2*A108014(n)+n+1` -/
def P9569574877586476926.Spec : Prop :=
  ∀ n, P9569574877586476926.a n = A297667 (n + 1)

end A297667

/-! ## A297667.P5629512697114650153

`A001610(n)+∑[A131290(n)]`
-/

namespace A297667.P5629512697114650153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297667.P5629512697114650153

namespace A297667

/-- `A001610(n)+∑[A131290(n)]` -/
def P5629512697114650153.Spec : Prop :=
  ∀ n, P5629512697114650153.a n = A297667 (n + 1)

end A297667

/-! ## A297667.P8297142180782185935

`A000027(n+1)+A108014(n)+A108014(n)`
-/

namespace A297667.P8297142180782185935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A108014 n + A108014 n)

end

end A297667.P8297142180782185935

namespace A297667

/-- `A000027(n+1)+A108014(n)+A108014(n)` -/
def P8297142180782185935.Spec : Prop :=
  ∀ n, P8297142180782185935.a n = A297667 (n + 1)

end A297667

/-! ## A297667.P9068317714997626149

`Δ[A297661(n+2)]+n`
-/

namespace A297667.P9068317714997626149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A297667.P9068317714997626149

namespace A297667

/-- `Δ[A297661(n+2)]+n` -/
def P9068317714997626149.Spec : Prop :=
  ∀ n, P9068317714997626149.a n = A297667 (n + 1)

end A297667

/-! ## A297667.P9949539144590405827

`Δ[A007039(n+2)+∑[n]]`
-/

namespace A297667.P9949539144590405827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297667.P9949539144590405827

namespace A297667

/-- `Δ[A007039(n+2)+∑[n]]` -/
def P9949539144590405827.Spec : Prop :=
  ∀ n, P9949539144590405827.a n = A297667 (n + 1)

end A297667

/-! ## A297667.P11107004293861193001

`Δ[A000124(n)+2*A199935(n+2)]`
-/

namespace A297667.P11107004293861193001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 2 * A199935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297667.P11107004293861193001

namespace A297667

/-- `Δ[A000124(n)+2*A199935(n+2)]` -/
def P11107004293861193001.Spec : Prop :=
  ∀ n, P11107004293861193001.a n = A297667 (n + 1)

end A297667

/-! ## A297667.P403932013492954551

`Δ[A000217(n)+2*A199935(n+2)]`
-/

namespace A297667.P403932013492954551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 2 * A199935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297667.P403932013492954551

namespace A297667

/-- `Δ[A000217(n)+2*A199935(n+2)]` -/
def P403932013492954551.Spec : Prop :=
  ∀ n, P403932013492954551.a n = A297667 (n + 1)

end A297667

/-!
# A297668: Number of chordless cycles in the n-Fibonacci cube graph.

The programs for A297668, there is no canonical definition to state claims against.
-/

/-! ## A297668.P3219109513269414606

`floor(log(cosh(A207137(n))))`
-/

namespace A297668.P3219109513269414606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A207137 n : ℝ))⌋

end

end A297668.P3219109513269414606

/-! ## A297668.P17978855758190146830

`A070088(∑[(n+1)!]+2)`
-/

namespace A297668.P17978855758190146830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297668.P17978855758190146830

/-!
# A297670: Number of chordless cycles in the n-triangular graph.

The programs for A297670, the canonical program `A297670.P8816448242460430837` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297670 has offset 2).

The definition of A297670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297670.P8816448242460430837

`A002807(n+2)-A000292(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A297670

/-- `A002807(n+2)-A000292(n)` -/
def P8816448242460430837.Spec : Prop :=
  ∀ n, P8816448242460430837.a n = A297670 (n + 2)

theorem P8816448242460430837.correct : P8816448242460430837.Spec := by
  intro n
  simp only [A297670, Nat.add_sub_cancel]

end A297670

/-! ## A297670.P11476845223584112079

`∑[(n+1)*(a(n-1)+C(n, 2))]` with `a(0)=0`
-/

namespace A297670.P11476845223584112079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) * (f1 (n - 1) + Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P11476845223584112079

namespace A297670

/-- `∑[(n+1)*(a(n-1)+C(n, 2))]` -/
def P11476845223584112079.Spec : Prop :=
  ∀ n, (P11476845223584112079.a n : ℤ) = A297670 (n + 2)

end A297670

/-! ## A297670.P1907647024803275217

`∑[(n+1)*(a(n-1)+∑[n]-n)]` with `a(0)=0`
-/

namespace A297670.P1907647024803275217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P1907647024803275217

namespace A297670

/-- `∑[(n+1)*(a(n-1)+∑[n]-n)]` -/
def P1907647024803275217.Spec : Prop :=
  ∀ n, P1907647024803275217.a n = A297670 (n + 2)

end A297670

/-! ## A297670.P4839803855438681334

`∑[∑[A036919(n)-n]]`
-/

namespace A297670.P4839803855438681334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036919 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P4839803855438681334

namespace A297670

/-- `∑[∑[A036919(n)-n]]` -/
def P4839803855438681334.Spec : Prop :=
  ∀ n, P4839803855438681334.a n = A297670 (n + 2)

end A297670

/-! ## A297670.P94779181768237895

`∑[3*A357479(n+1)]`
-/

namespace A297670.P94779181768237895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A357479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P94779181768237895

namespace A297670

/-- `∑[3*A357479(n+1)]` -/
def P94779181768237895.Spec : Prop :=
  ∀ n, P94779181768237895.a n = A297670 (n + 2)

end A297670

/-! ## A297670.P7978970820366834446

`∑[(n+1)*A038155(n)]`
-/

namespace A297670.P7978970820366834446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P7978970820366834446

namespace A297670

/-- `∑[(n+1)*A038155(n)]` -/
def P7978970820366834446.Spec : Prop :=
  ∀ n, P7978970820366834446.a n = A297670 (n + 2)

end A297670

/-! ## A297670.P12694375051673298282

`∑[A038155(n+1)-∑[n]]`
-/

namespace A297670.P12694375051673298282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P12694375051673298282

namespace A297670

/-- `∑[A038155(n+1)-∑[n]]` -/
def P12694375051673298282.Spec : Prop :=
  ∀ n, P12694375051673298282.a n = A297670 (n + 2)

end A297670

/-! ## A297670.P12685001591250038495

`∑[(n+1)*Δ[A002807(n)]]`
-/

namespace A297670.P12685001591250038495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P12685001591250038495

namespace A297670

/-- `∑[(n+1)*Δ[A002807(n)]]` -/
def P12685001591250038495.Spec : Prop :=
  ∀ n, P12685001591250038495.a n = A297670 (n + 2)

end A297670

/-! ## A297670.P8362015890014357788

`∑[(n+1)*A038154(n)/2]`
-/

namespace A297670.P8362015890014357788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A038154 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297670.P8362015890014357788

namespace A297670

/-- `∑[(n+1)*A038154(n)/2]` -/
def P8362015890014357788.Spec : Prop :=
  ∀ n, P8362015890014357788.a n = (A297670 (n + 2) : ℚ)

end A297670

/-!
# A297671: Number of chordless cycles in the n-triangular grid graph.

The programs for A297671, there is no canonical definition to state claims against.
-/

/-! ## A297671.P17626343460704435549

`A211339(or(A065033(n), A110903(n)))`
-/

namespace A297671.P17626343460704435549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211339 (Int.lor (A065033 n) (A110903 n)).toNat

end

end A297671.P17626343460704435549

/-! ## A297671.P2262673491076031440

`A211339(or(A004525(n+1), A110903(n)))`
-/

namespace A297671.P2262673491076031440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211339 (Int.lor (A004525 (n + 1)) (A110903 n)).toNat

end

end A297671.P2262673491076031440

/-! ## A297671.P9210980076808669141

`A211339(or(A110903(n), A211339(n+2)))`
-/

namespace A297671.P9210980076808669141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211339 (Int.lor (A110903 n) (A211339 (n + 2))).toNat

end

end A297671.P9210980076808669141

/-!
# A297674: Greater of twin primes p such that 2^p-1 is prime.

The programs for A297674, there is no canonical definition to state claims against.
-/

/-! ## A297674.P1002901571143571556

`A278053(n+1)+2`
-/

namespace A297674.P1002901571143571556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278053 (n + 1) + 2

end

end A297674.P1002901571143571556

/-! ## A297674.P15210844739992408876

`A346645(lt[A085427(n), A135080(n+4)])`
-/

namespace A297674.P15210844739992408876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A297674.P15210844739992408876

/-! ## A297674.P3722822625951369320

`p?[A153798(n+1)]+2`
-/

namespace A297674.P3722822625951369320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A297674.P3722822625951369320

/-! ## A297674.P16202706326181058051

`p?[∑[A134458(n+1)]]+2`
-/

namespace A297674.P16202706326181058051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A297674.P16202706326181058051

/-! ## A297674.P16668602246425778961

`p?[A019280(n+1)-1]+2`
-/

namespace A297674.P16668602246425778961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019280 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A297674.P16668602246425778961

/-!
# A297675: a(n) = 3*(n^2+n-4)/2.

The programs for A297675, the canonical program `A297675.P10950361260694676330` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297675 has offset 2).

The definition of A297675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297675.P10950361260694676330

`3*((n+2)²+n+2-4)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297675

/-- `3*((n+2)²+n+2-4)/2` -/
def P10950361260694676330.Spec : Prop :=
  ∀ n, P10950361260694676330.a n = (A297675 (n + 2) : ℚ)

end A297675

/-! ## A297675.P16582961378085049856

`lcm(3, 1-∑[n+2])`
-/

namespace A297675.P16582961378085049856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A297675.P16582961378085049856

namespace A297675

/-- `lcm(3, 1-∑[n+2])` -/
def P16582961378085049856.Spec : Prop :=
  ∀ n, (P16582961378085049856.a n : ℤ) = A297675 (n + 2)

end A297675

/-! ## A297675.P8028385881582293541

`3*C(n+3, 2)-6`
-/

namespace A297675.P8028385881582293541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 3) 2 : ℤ) - 6

end

end A297675.P8028385881582293541

namespace A297675

/-- `3*C(n+3, 2)-6` -/
def P8028385881582293541.Spec : Prop :=
  ∀ n, P8028385881582293541.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P7089119423055543364

`∑[a(n-1)+3]` with `a(0)=3, a(1)=9`
-/

namespace A297675.P7089119423055543364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P7089119423055543364

namespace A297675

/-- `∑[a(n-1)+3]` -/
def P7089119423055543364.Spec : Prop :=
  ∀ n, (P7089119423055543364.a n : ℤ) = A297675 (n + 2)

end A297675

/-! ## A297675.P17819019794109869245

`∑[ogf((3+3x-3x^2)/(1-2x+x^2))]`
-/

namespace A297675.P17819019794109869245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P17819019794109869245

namespace A297675

/-- `∑[ogf((3+3x-3x^2)/(1-2x+x^2))]` -/
def P17819019794109869245.Spec : Prop :=
  ∀ n, P17819019794109869245.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P10711423139545588718

`ogf((3+3x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A297675.P10711423139545588718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -3] [1, -3, 3, -1] n

end

end A297675.P10711423139545588718

namespace A297675

/-- `ogf((3+3x-3x^2)/(1-3x+3x^2-x^3))` -/
def P10711423139545588718.Spec : Prop :=
  ∀ n, P10711423139545588718.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P17825631251870927500

`floor(3/acot(∑[n+2]-1))`
-/

namespace A297675.P17825631251870927500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℝ)⌋

end

end A297675.P17825631251870927500

namespace A297675

/-- `floor(3/acot(∑[n+2]-1))` -/
def P17825631251870927500.Spec : Prop :=
  ∀ n, P17825631251870927500.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P1616038958117490512

`∑[3*ceil(atan(n+1)+n)]`
-/

namespace A297675.P1616038958117490512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈Real.arctan (n + 1 : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P1616038958117490512

namespace A297675

/-- `∑[3*ceil(atan(n+1)+n)]` -/
def P1616038958117490512.Spec : Prop :=
  ∀ n, P1616038958117490512.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P1992585434791000932

`a(n-1)+3*(n+2)` with `a(0)=3`
-/

namespace A297675.P1992585434791000932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 * (n + 2)

end

end A297675.P1992585434791000932

namespace A297675

/-- `a(n-1)+3*(n+2)` -/
def P1992585434791000932.Spec : Prop :=
  ∀ n, (P1992585434791000932.a n : ℤ) = A297675 (n + 2)

end A297675

/-! ## A297675.P6355408799764156348

`∑[(n+1)*3%(n+3)+3]`
-/

namespace A297675.P6355408799764156348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 % (n + 3)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P6355408799764156348

namespace A297675

/-- `∑[(n+1)*3%(n+3)+3]` -/
def P6355408799764156348.Spec : Prop :=
  ∀ n, (P6355408799764156348.a n : ℤ) = A297675 (n + 2)

end A297675

/-! ## A297675.P15139238973569092457

`∑[∪[3*(n+3), 3^(n+1)]]`
-/

namespace A297675.P15139238973569092457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P15139238973569092457

namespace A297675

/-- `∑[∪[3*(n+3), 3^(n+1)]]` -/
def P15139238973569092457.Spec : Prop :=
  ∀ n, (P15139238973569092457.a n : ℤ) = A297675 (n + 2)

end A297675

/-! ## A297675.P14009091303613340780

`record[(2-n)²-4]+∑[n+3]`
-/

namespace A297675.P14009091303613340780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A297675.P14009091303613340780

namespace A297675

/-- `record[(2-n)²-4]+∑[n+3]` -/
def P14009091303613340780.Spec : Prop :=
  ∀ n, P14009091303613340780.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P11887716829614968349

`∑[3*floor(atan(n+1)+n+1)]`
-/

namespace A297675.P11887716829614968349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊Real.arctan (n + 1 : ℝ) + (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P11887716829614968349

namespace A297675

/-- `∑[3*floor(atan(n+1)+n+1)]` -/
def P11887716829614968349.Spec : Prop :=
  ∀ n, P11887716829614968349.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P7607228389448191571

`3*n-∑[a(n-1)-3]` with `a(0)=-3`
-/

namespace A297675.P7607228389448191571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297675.P7607228389448191571

namespace A297675

/-- `3*n-∑[a(n-1)-3]` -/
def P7607228389448191571.Spec : Prop :=
  ∀ n, P7607228389448191571.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P17619678840762747059

`2*n+C(n+3, 2)+n*(n+3)`
-/

namespace A297675.P17619678840762747059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose (n + 3) 2 + n * (n + 3))

end

end A297675.P17619678840762747059

namespace A297675

/-- `2*n+C(n+3, 2)+n*(n+3)` -/
def P17619678840762747059.Spec : Prop :=
  ∀ n, (P17619678840762747059.a n : ℤ) = A297675 (n + 2)

end A297675

/-! ## A297675.P6820640976010135829

`n+1+Δ[(n+2)²]+a(n-1)` with `a(0)=3`
-/

namespace A297675.P6820640976010135829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1))

end

end A297675.P6820640976010135829

namespace A297675

/-- `n+1+Δ[(n+2)²]+a(n-1)` -/
def P6820640976010135829.Spec : Prop :=
  ∀ n, P6820640976010135829.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P6350088607009708363

`(2*n+1)*(n+3)-lcm(n, n-1)/2`
-/

namespace A297675.P6350088607009708363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 3) : ℚ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

end

end A297675.P6350088607009708363

namespace A297675

/-- `(2*n+1)*(n+3)-lcm(n, n-1)/2` -/
def P6350088607009708363.Spec : Prop :=
  ∀ n, P6350088607009708363.a n = (A297675 (n + 2) : ℚ)

end A297675

/-! ## A297675.P6742350221653770819

`A140673(n)+3`
-/

namespace A297675.P6742350221653770819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + 3

end

end A297675.P6742350221653770819

namespace A297675

/-- `A140673(n)+3` -/
def P6742350221653770819.Spec : Prop :=
  ∀ n, P6742350221653770819.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P2101847754146770851

`Δ[3*A074742(n)]`
-/

namespace A297675.P2101847754146770851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297675.P2101847754146770851

namespace A297675

/-- `Δ[3*A074742(n)]` -/
def P2101847754146770851.Spec : Prop :=
  ∀ n, P2101847754146770851.a n = A297675 (n + 2)

end A297675

/-! ## A297675.P1604405904227720639

`Δ[A154560(n)]-5`
-/

namespace A297675.P1604405904227720639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 5

end

end A297675.P1604405904227720639

namespace A297675

/-- `Δ[A154560(n)]-5` -/
def P1604405904227720639.Spec : Prop :=
  ∀ n, P1604405904227720639.a n = A297675 (n + 2)

end A297675

/-!
# A297676: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1's.

The programs for A297676, there is no canonical definition to state claims against.
-/

/-! ## A297676.P13098017056298151950

`A297682(∑[4*n]+1)`
-/

namespace A297676.P13098017056298151950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297676.P13098017056298151950

/-! ## A297676.P12543395534974384526

`record[A297682(Δ[A079824(n+1)])]`
-/

namespace A297676.P12543395534974384526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297676.P12543395534974384526

/-! ## A297676.P12128484978511797861

`record[gcd(A114327(n), A297682(n+1))]`
-/

namespace A297676.P12128484978511797861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297676.P12128484978511797861

/-! ## A297676.P6350119468741661984

`record[A077606(n+1)*A297682(n+1)]`
-/

namespace A297676.P6350119468741661984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A297682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297676.P6350119468741661984

/-! ## A297676.P9419048962163850154

`A297682(A001844(n))+A025438(n)`
-/

namespace A297676.P9419048962163850154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A001844 n).toNat + A025438 n

end

end A297676.P9419048962163850154

/-!
# A297677: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1's.

The programs for A297677, there is no canonical definition to state claims against.
-/

/-! ## A297677.P2418103105864818473

`A297682(∑[n+3]+1)`
-/

namespace A297677.P2418103105864818473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297677.P2418103105864818473

/-! ## A297677.P8539132779854590756

`record[A297682(A198464(n+1))]`
-/

namespace A297677.P8539132779854590756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297677.P8539132779854590756

/-!
# A297678: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297678, there is no canonical definition to state claims against.
-/

/-! ## A297678.P4586674709215596574

`A297682(A141214(n+1))`
-/

namespace A297678.P4586674709215596574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A141214 (n + 1)).toNat

end

end A297678.P4586674709215596574

/-! ## A297678.P13782862735435326393

`A297682(A027379(n+2))`
-/

namespace A297678.P13782862735435326393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A027379 (n + 2)).toNat

end

end A297678.P13782862735435326393

/-! ## A297678.P13766556600798186779

`A297682(A155212(n)+5)`
-/

namespace A297678.P13766556600798186779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A155212 n + 5).toNat

end

end A297678.P13766556600798186779

/-! ## A297678.P17734372168332759514

`A297682(A056000(n)+7)`
-/

namespace A297678.P17734372168332759514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A056000 n + 7).toNat

end

end A297678.P17734372168332759514

/-! ## A297678.P11331115290705894136

`A297682(eq[3, A193592(n)])`
-/

namespace A297678.P11331115290705894136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297678.P11331115290705894136

/-!
# A297679: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297679, there is no canonical definition to state claims against.
-/

/-! ## A297679.P9262294176302305546

`A297682(A046691(n+3))`
-/

namespace A297679.P9262294176302305546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A046691 (n + 3)).toNat

end

end A297679.P9262294176302305546

/-! ## A297679.P5332881090852403515

`A297682(eq[4, A193592(n)])`
-/

namespace A297679.P5332881090852403515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297679.P5332881090852403515

/-! ## A297679.P917376443623681260

`A297682(Δ[A023545(n+1)])`
-/

namespace A297679.P917376443623681260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (f1 (n + 1) - f1 n).toNat

end

end A297679.P917376443623681260

/-! ## A297679.P3499565070055526380

`A297682(eq[5, A200370(n+1)])`
-/

namespace A297679.P3499565070055526380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297679.P3499565070055526380

/-! ## A297679.P15238661077276060188

`A297682(eq[6, A185782(n+1)])`
-/

namespace A297679.P15238661077276060188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297679.P15238661077276060188

/-!
# A297680: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297680, there is no canonical definition to state claims against.
-/

/-! ## A297680.P16265035824293133460

`A297682(eq[3, A219347(n)])`
-/

namespace A297680.P16265035824293133460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297680.P16265035824293133460

/-! ## A297680.P710761466464336960

`A297682(eq[5, A193592(n)])`
-/

namespace A297680.P710761466464336960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297680.P710761466464336960

/-! ## A297680.P6240681586650296491

`A297682(eq[6, A200370(n+1)])`
-/

namespace A297680.P6240681586650296491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297680.P6240681586650296491

/-! ## A297680.P11271113684527413566

`A297682(eq[16, A057728(n+1)])`
-/

namespace A297680.P11271113684527413566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297680.P11271113684527413566

/-! ## A297680.P8605458394055633210

`A297682(Δ[Δ[A006504(n+1)]])`
-/

namespace A297680.P8605458394055633210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (f1 (n + 1) - f1 n).toNat

end

end A297680.P8605458394055633210

/-!
# A297681: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297681, there is no canonical definition to state claims against.
-/

/-! ## A297681.P1149462261390135688

`A297682(eq[4, A219347(n)])`
-/

namespace A297681.P1149462261390135688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297681.P1149462261390135688

/-! ## A297681.P10941075242429559296

`A297682(eq[6, A193592(n)])`
-/

namespace A297681.P10941075242429559296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297681.P10941075242429559296

/-! ## A297681.P10752385979939420261

`A297682(Δ[A026054(n+4)])`
-/

namespace A297681.P10752385979939420261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (f1 (n + 1) - f1 n).toNat

end

end A297681.P10752385979939420261

/-! ## A297681.P13361581577700738381

`A297682(A152947(n+9)-7)`
-/

namespace A297681.P13361581577700738381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A152947 (n + 9) - 7).toNat

end

end A297681.P13361581577700738381

/-! ## A297681.P4444399793864584125

`A297682(eq[7, A200370(n+1)])`
-/

namespace A297681.P4444399793864584125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297681.P4444399793864584125

/-!
# A297682: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297682, there is no canonical definition to state claims against.
-/

/-! ## A297682.P10514612744674549325

`A283543(n+1)+A173440(A090827(n))`
-/

namespace A297682.P10514612744674549325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) + A173440 (A090827 n).toNat

end

end A297682.P10514612744674549325

/-! ## A297682.P7607734210125704892

`A283543(n+1)+A151755(A000598(n))`
-/

namespace A297682.P7607734210125704892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) + A151755 (A000598 n).toNat

end

end A297682.P7607734210125704892

/-! ## A297682.P4988772685188741014

`A269075(n+1)+A107846(A071724(n))`
-/

namespace A297682.P4988772685188741014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) + A107846 (A071724 n).toNat

end

end A297682.P4988772685188741014

/-! ## A297682.P5979955784568847227

`A269075(n+1)+A107846(A113070(n))`
-/

namespace A297682.P5979955784568847227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) + A107846 (A113070 n).toNat

end

end A297682.P5979955784568847227

/-! ## A297682.P8627340957587556729

`A283543(n+1)+A250002(A018149(n))`
-/

namespace A297682.P8627340957587556729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) + A250002 (A018149 n).toNat

end

end A297682.P8627340957587556729

/-!
# A297683: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297683, there is no canonical definition to state claims against.
-/

/-! ## A297683.P4173802628138680012

`A297682(∑[n+2]+4)`
-/

namespace A297683.P4173802628138680012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297683.P4173802628138680012

/-! ## A297683.P2964682593169004680

`A297682(A167614(n+1))%A206728(n+1)`
-/

namespace A297683.P2964682593169004680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297682 (A167614 (n + 1)).toNat) (A206728 (n + 1))

end

end A297683.P2964682593169004680

/-! ## A297683.P4381201532099819799

`lcm(A297682(A167614(n+1)), A326297(n+1))`
-/

namespace A297683.P4381201532099819799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A297682 (A167614 (n + 1)).toNat) (A326297 (n + 1))

end

end A297683.P4381201532099819799

/-! ## A297683.P468261599877409239

`A297682(A167499(n)+n)%A297684(n+1)`
-/

namespace A297683.P468261599877409239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297682 (A167499 n + (n : ℤ)).toNat) (A297684 (n + 1))

end

end A297683.P468261599877409239

/-! ## A297683.P1905436984007645444

`lcm(A304273(n+1)!, A297682(A046691(n)+7))`
-/

namespace A297683.P1905436984007645444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A304273 (n + 1)).toNat : ℤ) (A297682 (A046691 n + 7).toNat)

end

end A297683.P1905436984007645444

/-!
# A297684: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297684, there is no canonical definition to state claims against.
-/

/-! ## A297684.P10337352188581797860

`A297682(A141214(n)+7)`
-/

namespace A297684.P10337352188581797860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A141214 n + 7).toNat

end

end A297684.P10337352188581797860

/-! ## A297684.P12572069783377662136

`A297682(A052905(n)+9)`
-/

namespace A297684.P12572069783377662136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A052905 n + 9).toNat

end

end A297684.P12572069783377662136

/-! ## A297684.P11594042035813188068

`A297682(A055999(n)+10)`
-/

namespace A297684.P11594042035813188068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A055999 n + 10).toNat

end

end A297684.P11594042035813188068

/-! ## A297684.P16691774751852536238

`A297682(A167614(n+2)+1)`
-/

namespace A297684.P16691774751852536238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A167614 (n + 2) + 1).toNat

end

end A297684.P16691774751852536238

/-! ## A297684.P944606225928086960

`A297682(A166136(n+2)-2)`
-/

namespace A297684.P944606225928086960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A166136 (n + 2) - 2).toNat

end

end A297684.P944606225928086960

/-!
# A297685: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297685, there is no canonical definition to state claims against.
-/

/-! ## A297685.P1471865394895502446

`A297682(A167499(n+3))`
-/

namespace A297685.P1471865394895502446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A167499 (n + 3)).toNat

end

end A297685.P1471865394895502446

/-! ## A297685.P10734213487263581270

`A297682(A155212(n)+13)`
-/

namespace A297685.P10734213487263581270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A155212 n + 13).toNat

end

end A297685.P10734213487263581270

/-! ## A297685.P705868485179766200

`A297682(eq[7, A066657(n)])`
-/

namespace A297685.P705868485179766200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297685.P705868485179766200

/-! ## A297685.P1185437355835272237

`A297682(A000217(n+4)+5)`
-/

namespace A297685.P1185437355835272237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A000217 (n + 4) + 5).toNat

end

end A297685.P1185437355835272237

/-! ## A297685.P12102412907959280695

`A297682(eq[6, A131818(n+1)])`
-/

namespace A297685.P12102412907959280695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297685.P12102412907959280695

/-!
# A297686: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297686, there is no canonical definition to state claims against.
-/

/-! ## A297686.P2079109312662157798

`A297682(A166136(n+4))`
-/

namespace A297686.P2079109312662157798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A166136 (n + 4)).toNat

end

end A297686.P2079109312662157798

/-! ## A297686.P1997645998676802107

`A297682(A056115(n)+21)`
-/

namespace A297686.P1997645998676802107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A056115 n + 21).toNat

end

end A297686.P1997645998676802107

/-! ## A297686.P193654732688016836

`A297682(A000124(n+5)+5)`
-/

namespace A297686.P193654732688016836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A000124 (n + 5) + 5).toNat

end

end A297686.P193654732688016836

/-! ## A297686.P1200687643050656240

`A297682(A055999(n+2)+12)`
-/

namespace A297686.P1200687643050656240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A055999 (n + 2) + 12).toNat

end

end A297686.P1200687643050656240

/-! ## A297686.P3510193655924512828

`A297682(eq[7, A131818(n+1)])`
-/

namespace A297686.P3510193655924512828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297686.P3510193655924512828

/-!
# A297687: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 1 or 4 neighboring 1s.

The programs for A297687, there is no canonical definition to state claims against.
-/

/-! ## A297687.P15096715109451089849

`A297682(A056119(n)+28)`
-/

namespace A297687.P15096715109451089849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A056119 n + 28).toNat

end

end A297687.P15096715109451089849

/-! ## A297687.P7149349692637761320

`A297682(eq[11, A066657(n)])`
-/

namespace A297687.P7149349692637761320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297687.P7149349692637761320

/-! ## A297687.P16400986597303083551

`A297682(A027379(n+4)+10)`
-/

namespace A297687.P16400986597303083551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A027379 (n + 4) + 10).toNat

end

end A297687.P16400986597303083551

/-! ## A297687.P10573965093884420196

`A297682(eq[8, A131818(n+1)])`
-/

namespace A297687.P10573965093884420196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297687.P10573965093884420196

/-! ## A297687.P15246170727217840405

`A297682(A152947(n+9)-(n+1))`
-/

namespace A297687.P15246170727217840405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297682 (A152947 (n + 9) - (n + 1 : ℤ)).toNat

end

end A297687.P15246170727217840405

/-!
# A297688: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1's.

The programs for A297688, there is no canonical definition to state claims against.
-/

/-! ## A297688.P15401786227089619237

`A297694(∑[4*n]+1)`
-/

namespace A297688.P15401786227089619237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297688.P15401786227089619237

/-! ## A297688.P16452838552016807440

`record[A003982(n)*A297694(n+1)]`
-/

namespace A297688.P16452838552016807440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297688.P16452838552016807440

/-! ## A297688.P11456916933166835632

`record[gcd(A114327(n), A297694(n+1))]`
-/

namespace A297688.P11456916933166835632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297694 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297688.P11456916933166835632

/-! ## A297688.P15796671875513523972

`gcd(A000038(n), A297694(A001844(n)))`
-/

namespace A297688.P15796671875513523972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297694 (A001844 n).toNat)

end

end A297688.P15796671875513523972

/-! ## A297688.P772757062410518909

`A340362(n+1)+A297694(A001844(n))`
-/

namespace A297688.P772757062410518909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 1) + A297694 (A001844 n).toNat

end

end A297688.P772757062410518909

/-!
# A297689: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297689, there is no canonical definition to state claims against.
-/

/-! ## A297689.P16821385929482328624

`A297694(∑[n+3]+1)`
-/

namespace A297689.P16821385929482328624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297689.P16821385929482328624

/-! ## A297689.P7264839321044605542

`∏{p}[A297694(A034856(n+2)), #]`
-/

namespace A297689.P7264839321044605542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A034856 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A297689.P7264839321044605542

/-!
# A297690: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297690, there is no canonical definition to state claims against.
-/

/-! ## A297690.P17366429099570151358

`A297694(A141214(n+1))`
-/

namespace A297690.P17366429099570151358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A141214 (n + 1)).toNat

end

end A297690.P17366429099570151358

/-! ## A297690.P11324679365148238292

`A297694(A055998(n+2))`
-/

namespace A297690.P11324679365148238292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A055998 (n + 2)).toNat

end

end A297690.P11324679365148238292

/-! ## A297690.P2175912867853105350

`A297694(A056000(n)+7)`
-/

namespace A297690.P2175912867853105350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A056000 n + 7).toNat

end

end A297690.P2175912867853105350

/-! ## A297690.P211535986056267469

`A297694(eq[3, A193592(n)])`
-/

namespace A297690.P211535986056267469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297690.P211535986056267469

/-! ## A297690.P13049989667533553569

`A297694(A052905(n+1)+2)`
-/

namespace A297690.P13049989667533553569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A052905 (n + 1) + 2).toNat

end

end A297690.P13049989667533553569

/-!
# A297691: Number of n X 5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1's.

The programs for A297691, there is no canonical definition to state claims against.
-/

/-! ## A297691.P3576477251854255889

`A297694(Δ[A264443(n)])`
-/

namespace A297691.P3576477251854255889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (f1 (n + 1) - f1 n).toNat

end

end A297691.P3576477251854255889

/-! ## A297691.P3766765034675883355

`A297694(A046691(n+3))`
-/

namespace A297691.P3766765034675883355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A046691 (n + 3)).toNat

end

end A297691.P3766765034675883355

/-! ## A297691.P1543052124306203351

`A297694(A056115(n)+11)`
-/

namespace A297691.P1543052124306203351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A056115 n + 11).toNat

end

end A297691.P1543052124306203351

/-! ## A297691.P6173804809108577049

`A297694(eq[4, A193592(n)])`
-/

namespace A297691.P6173804809108577049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297691.P6173804809108577049

/-! ## A297691.P14915783842584315894

`A297694(Δ[A023545(n+1)])`
-/

namespace A297691.P14915783842584315894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (f1 (n + 1) - f1 n).toNat

end

end A297691.P14915783842584315894

/-!
# A297692: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297692, there is no canonical definition to state claims against.
-/

/-! ## A297692.P16863751031052290138

`A297694(A052905(n+3))`
-/

namespace A297692.P16863751031052290138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A052905 (n + 3)).toNat

end

end A297692.P16863751031052290138

/-! ## A297692.P17121677764406203898

`A297694(A056119(n)+16)`
-/

namespace A297692.P17121677764406203898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A056119 n + 16).toNat

end

end A297692.P17121677764406203898

/-! ## A297692.P18071982770137802708

`A297694(eq[5, A193592(n)])`
-/

namespace A297692.P18071982770137802708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297692.P18071982770137802708

/-! ## A297692.P15960325723702968840

`A297694(eq[16, A209439(n)])`
-/

namespace A297692.P15960325723702968840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297692.P15960325723702968840

/-! ## A297692.P16594520868170764592

`A297694(eq[6, A200370(n+1)])`
-/

namespace A297692.P16594520868170764592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297692.P16594520868170764592

/-!
# A297693: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297693, there is no canonical definition to state claims against.
-/

/-! ## A297693.P14182465011649262924

`A297694(A055999(n+4))`
-/

namespace A297693.P14182465011649262924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A055999 (n + 4)).toNat

end

end A297693.P14182465011649262924

/-! ## A297693.P854415653378831927

`A297694(eq[6, A193592(n)])`
-/

namespace A297693.P854415653378831927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297693.P854415653378831927

/-! ## A297693.P18082669677163581221

`A297694(Δ[A026054(n+4)])`
-/

namespace A297693.P18082669677163581221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (f1 (n + 1) - f1 n).toNat

end

end A297693.P18082669677163581221

/-! ## A297693.P802056060191449775

`A297694(eq[7, A200370(n+1)])`
-/

namespace A297693.P802056060191449775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297693.P802056060191449775

/-! ## A297693.P11350404912970056035

`A297694(eq[10, A185782(n+1)])`
-/

namespace A297693.P11350404912970056035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297693.P11350404912970056035

/-!
# A297694: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297694, there is no canonical definition to state claims against.
-/

/-! ## A297694.P18094150177256931301

`A336358(A297457(n+1))`
-/

namespace A297694.P18094150177256931301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A297457 (n + 1)).toNat

end

end A297694.P18094150177256931301

/-!
# A297695: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297695, the canonical program `A297695.P13980471785686007595` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297695 has offset 1).

The definition of A297695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297695.P4712257551078462710

`ogf((4-6x^2)/(1-2x-4x^2+6x^3))`
-/

namespace A297695.P4712257551078462710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -6] [1, -2, -4, 6] n

end

end A297695.P4712257551078462710

namespace A297695

/-- `ogf((4-6x^2)/(1-2x-4x^2+6x^3))` -/
def P4712257551078462710.Spec : Prop :=
  ∀ n, P4712257551078462710.a n = A297695 (n + 1)

end A297695

/-! ## A297695.P13980471785686007595

`2*a(n-1)+4*a(n-2)-6*a(n-3)` with `a(0)=4, a(1)=8, a(2)=26`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297695

/-- `2*a(n-1)+4*a(n-2)-6*a(n-3)` -/
def P13980471785686007595.Spec : Prop :=
  ∀ n, P13980471785686007595.a n = A297695 (n + 1)

theorem P13980471785686007595.correct : P13980471785686007595.Spec := by
  intro n
  simp only [A297695, Nat.add_sub_cancel]

end A297695

/-! ## A297695.P496546226267049871

`Δ[A271895(n+1)]`
-/

namespace A297695.P496546226267049871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297695.P496546226267049871

namespace A297695

/-- `Δ[A271895(n+1)]` -/
def P496546226267049871.Spec : Prop :=
  ∀ n, P496546226267049871.a n = A297695 (n + 1)

end A297695

/-! ## A297695.P5569795186043260620

`Δ[2*A271894(n)]`
-/

namespace A297695.P5569795186043260620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297695.P5569795186043260620

namespace A297695

/-- `Δ[2*A271894(n)]` -/
def P5569795186043260620.Spec : Prop :=
  ∀ n, P5569795186043260620.a n = A297695 (n + 1)

end A297695

/-! ## A297695.P3455082715179809196

`A271895(n+2)-A271895(n+1)`
-/

namespace A297695.P3455082715179809196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271895 (n + 2) - A271895 (n + 1)

end

end A297695.P3455082715179809196

namespace A297695

/-- `A271895(n+2)-A271895(n+1)` -/
def P3455082715179809196.Spec : Prop :=
  ∀ n, P3455082715179809196.a n = A297695 (n + 1)

end A297695

/-! ## A297695.P12641731420648996912

`Δ[A271893(n+2)%A271893(n+1)]`
-/

namespace A297695.P12641731420648996912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271893 (n + 2)) (A271893 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297695.P12641731420648996912

namespace A297695

/-- `Δ[A271893(n+2)%A271893(n+1)]` -/
def P12641731420648996912.Spec : Prop :=
  ∀ n, P12641731420648996912.a n = A297695 (n + 1)

end A297695

/-! ## A297695.P5998637216416070314

`A278615(n+3)%Δ[A278615(n+1)]`
-/

namespace A297695.P5998637216416070314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278615 (n + 3)) (f1 (n + 1) - f1 n)

end

end A297695.P5998637216416070314

namespace A297695

/-- `A278615(n+3)%Δ[A278615(n+1)]` -/
def P5998637216416070314.Spec : Prop :=
  ∀ n, P5998637216416070314.a n = A297695 (n + 1)

end A297695

/-!
# A297696: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297696, there is no canonical definition to state claims against.
-/

/-! ## A297696.P18171699442469776477

`A297694(∑[n+2]+4)`
-/

namespace A297696.P18171699442469776477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297696.P18171699442469776477

/-! ## A297696.P10940088396230519435

`A297694(A167614(n+1))+A185238(n)`
-/

namespace A297696.P10940088396230519435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A167614 (n + 1)).toNat + A185238 n

end

end A297696.P10940088396230519435

/-! ## A297696.P9829069835887718666

`lcm(A131554(n), A297694(A167614(n+1)))`
-/

namespace A297696.P9829069835887718666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131554 n) (A297694 (A167614 (n + 1)).toNat)

end

end A297696.P9829069835887718666

/-! ## A297696.P13068657258835461703

`or(A063524(n), A297694(A167614(n+1)))`
-/

namespace A297696.P13068657258835461703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A297694 (A167614 (n + 1)).toNat)

end

end A297696.P13068657258835461703

/-! ## A297696.P2179785968719820606

`A297694(A167614(n+1))+A000007(n+1)`
-/

namespace A297696.P2179785968719820606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A297696.P2179785968719820606

/-!
# A297697: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297697, there is no canonical definition to state claims against.
-/

/-! ## A297697.P1496837638344531840

`A297694(A141214(n)+7)`
-/

namespace A297697.P1496837638344531840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A141214 n + 7).toNat

end

end A297697.P1496837638344531840

/-! ## A297697.P13988525864769813601

`A297694(A052905(n)+9)`
-/

namespace A297697.P13988525864769813601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A052905 n + 9).toNat

end

end A297697.P13988525864769813601

/-! ## A297697.P12728096523684248532

`A297694(A167614(n+2)+1)`
-/

namespace A297697.P12728096523684248532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A167614 (n + 2) + 1).toNat

end

end A297697.P12728096523684248532

/-! ## A297697.P7595545364715007970

`A297694(Δ[A264443(n)-n²])`
-/

namespace A297697.P7595545364715007970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (f1 (n + 1) - f1 n).toNat

end

end A297697.P7595545364715007970

/-! ## A297697.P13568772322662810525

`A297694(Δ[A023545(n+1)-n²])`
-/

namespace A297697.P13568772322662810525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (f1 (n + 1) - f1 n).toNat

end

end A297697.P13568772322662810525

/-!
# A297698: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297698, there is no canonical definition to state claims against.
-/

/-! ## A297698.P7235017860617479745

`A297694(A167499(n+3))`
-/

namespace A297698.P7235017860617479745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A167499 (n + 3)).toNat

end

end A297698.P7235017860617479745

/-! ## A297698.P3269396053558884946

`A297694(A155212(n)+13)`
-/

namespace A297698.P3269396053558884946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A155212 n + 13).toNat

end

end A297698.P3269396053558884946

/-! ## A297698.P11059591072150724137

`A297694(A056000(n)+15)`
-/

namespace A297698.P11059591072150724137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A056000 n + 15).toNat

end

end A297698.P11059591072150724137

/-! ## A297698.P2118155249544941895

`A297694(eq[7, A066657(n)])`
-/

namespace A297698.P2118155249544941895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297698.P2118155249544941895

/-! ## A297698.P3535401628643590310

`A297694(eq[6, A131818(n+1)])`
-/

namespace A297698.P3535401628643590310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297698.P3535401628643590310

/-!
# A297699: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297699, there is no canonical definition to state claims against.
-/

/-! ## A297699.P16719118849802218928

`A297694(A056115(n)+21)`
-/

namespace A297699.P16719118849802218928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A056115 n + 21).toNat

end

end A297699.P16719118849802218928

/-! ## A297699.P14960694176668772874

`A297694(A133263(n+5)+4)`
-/

namespace A297699.P14960694176668772874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A133263 (n + 5) + 4).toNat

end

end A297699.P14960694176668772874

/-! ## A297699.P7248933659239337628

`A297694(A034856(n+4)+8)`
-/

namespace A297699.P7248933659239337628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A034856 (n + 4) + 8).toNat

end

end A297699.P7248933659239337628

/-! ## A297699.P9156275036288597228

`A297694(A161680(n+6)+6)`
-/

namespace A297699.P9156275036288597228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A161680 (n + 6) + 6).toNat

end

end A297699.P9156275036288597228

/-! ## A297699.P15855016974255284634

`A297694(eq[7, A131818(n+1)])`
-/

namespace A297699.P15855016974255284634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297699.P15855016974255284634

