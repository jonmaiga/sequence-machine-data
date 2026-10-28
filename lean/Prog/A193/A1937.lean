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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A193700: Number of arrays of -6..6 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193700, there is no canonical definition to state claims against.
-/

/-! ## A193700.P9787368079522015902

`A193702(A052905(n+3))`
-/

namespace A193700.P9787368079522015902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A052905 (n + 3)).toNat

end

end A193700.P9787368079522015902

/-! ## A193700.P16447130716036199580

`A193702(A055999(n+3)+1)`
-/

namespace A193700.P16447130716036199580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A055999 (n + 3) + 1).toNat

end

end A193700.P16447130716036199580

/-! ## A193700.P12279649898578507233

`A193702(Δ[Δ[A006504(n+1)]])`
-/

namespace A193700.P12279649898578507233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n).toNat

end

end A193700.P12279649898578507233

/-! ## A193700.P8354603173494379707

`A193702(Δ[A023545(n+2)]-1)`
-/

namespace A193700.P8354603173494379707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n - 1).toNat

end

end A193700.P8354603173494379707

/-! ## A193700.P12708103523712795523

`A193702(Δ[A005286(n+3)]-4)`
-/

namespace A193700.P12708103523712795523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n - 4).toNat

end

end A193700.P12708103523712795523

/-! ## A193700.P16878821304616961901

`A193702(n+2+Δ[A005286(n+2)])`
-/

namespace A193700.P16878821304616961901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 ((n + 2 : ℤ) + (f1 (n + 1) - f1 n)).toNat

end

end A193700.P16878821304616961901

/-! ## A193700.P13787654892356115440

`A193702(A167614(n+11)-A016969(n+10))`
-/

namespace A193700.P13787654892356115440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A167614 (n + 11) - A016969 (n + 10)).toNat

end

end A193700.P13787654892356115440

/-!
# A193701: Number of arrays of -7..7 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193701, there is no canonical definition to state claims against.
-/

/-! ## A193701.P6444190812537591359

`A193702(A055999(n+4))`
-/

namespace A193701.P6444190812537591359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A055999 (n + 4)).toNat

end

end A193701.P6444190812537591359

/-! ## A193701.P6259782541485219747

`A193702(A000096(n+6)-5)`
-/

namespace A193701.P6259782541485219747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (n + 6) - 5).toNat

end

end A193701.P6259782541485219747

/-! ## A193701.P1631366488197389329

`A193702(A000124(n+7)-7)`
-/

namespace A193701.P1631366488197389329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000124 (n + 7) - 7).toNat

end

end A193701.P1631366488197389329

/-! ## A193701.P15777128312074369633

`A193702(A000217(n+6)+n+1)`
-/

namespace A193701.P15777128312074369633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A193701.P15777128312074369633

/-! ## A193701.P6984724852527276204

`A193702(n+2+Δ[A005286(n+3)])`
-/

namespace A193701.P6984724852527276204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 ((n + 2 : ℤ) + (f1 (n + 1) - f1 n)).toNat

end

end A193701.P6984724852527276204

/-! ## A193701.P6341739043555154270

`A193702(Δ[Δ[A006504(n+1)]]+n+6)`
-/

namespace A193701.P6341739043555154270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n + (n + 6 : ℤ)).toNat

end

end A193701.P6341739043555154270

/-!
# A193702: T(n,k)=Number of arrays of -k..k integers x(1..n) with every x(i) being in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193702, there is no canonical definition to state claims against.
-/

/-! ## A193702.P5713387915781666075

`A267508(A193710(n+1))`
-/

namespace A193702.P5713387915781666075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A193710 (n + 1)).toNat

end

end A193702.P5713387915781666075

/-! ## A193702.P5802191328148819595

`A156724(A193842(n)+1)-A001414(A046563(n+1))`
-/

namespace A193702.P5802191328148819595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A193842 n + 1).toNat - A001414 (A046563 (n + 1)).toNat

end

end A193702.P5802191328148819595

/-! ## A193702.P9800104407569930364

`or(A004016(A014378(n+1)), A038738(n+1))`
-/

namespace A193702.P9800104407569930364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004016 (A014378 (n + 1)).toNat) (A038738 (n + 1))

end

end A193702.P9800104407569930364

/-!
# A193703: Number of arrays of -1..1 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193703, the canonical program `A193703.P12265291394221060254` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193703 has offset 1).

The definition of A193703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193703.P12265291394221060254

`ogf((1+x+2x^2+4x^3+5x^4+7x^5+4x^6)/(1-2x-x^2-2x^3+x^4-3x^6-4x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193703

/-- `ogf((1+x+2x^2+4x^3+5x^4+7x^5+4x^6)/(1-2x-x^2-2x^3+x^4-3x^6-4x^7))` -/
def P12265291394221060254.Spec : Prop :=
  ∀ n, P12265291394221060254.a n = A193703 (n + 1)

theorem P12265291394221060254.correct : P12265291394221060254.Spec := by
  intro n
  simp only [A193703, Nat.add_sub_cancel]

end A193703

/-! ## A193703.P12174104104983424313

`A193710(∑[n+1])`
-/

namespace A193703.P12174104104983424313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193703.P12174104104983424313

namespace A193703

/-- `A193710(∑[n+1])` -/
def P12174104104983424313.Spec : Prop :=
  ∀ n, P12174104104983424313.a n = A193703 (n + 1)

end A193703

/-! ## A193703.P3886913588515188536

`record[A193710(∑[A057979(n)])]`
-/

namespace A193703.P3886913588515188536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193703.P3886913588515188536

namespace A193703

/-- `record[A193710(∑[A057979(n)])]` -/
def P3886913588515188536.Spec : Prop :=
  ∀ n, P3886913588515188536.a n = A193703 (n + 1)

end A193703

/-! ## A193703.P6806400508245695997

`or(1, A193710(A000217(n+1)))`
-/

namespace A193703.P6806400508245695997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193710 (A000217 (n + 1)).toNat)

end

end A193703.P6806400508245695997

namespace A193703

/-- `or(1, A193710(A000217(n+1)))` -/
def P6806400508245695997.Spec : Prop :=
  ∀ n, P6806400508245695997.a n = A193703 (n + 1)

end A193703

/-! ## A193703.P13534761060062371778

`record[A023531(n)*A193710(n+1)]`
-/

namespace A193703.P13534761060062371778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A193710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193703.P13534761060062371778

namespace A193703

/-- `record[A023531(n)*A193710(n+1)]` -/
def P13534761060062371778.Spec : Prop :=
  ∀ n, P13534761060062371778.a n = A193703 (n + 1)

end A193703

/-!
# A193704: Number of arrays of -2..2 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193704, there is no canonical definition to state claims against.
-/

/-! ## A193704.P18286691811429659659

`A193710(∑[n+2])`
-/

namespace A193704.P18286691811429659659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193704.P18286691811429659659

/-! ## A193704.P3513525461361742779

`record[A193710(A000096(A126759(n)))]`
-/

namespace A193704.P3513525461361742779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193704.P3513525461361742779

/-! ## A193704.P12908712775088883638

`record[A193710(A000096(A134478(n)))]`
-/

namespace A193704.P12908712775088883638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193704.P12908712775088883638

/-! ## A193704.P14639725961023720282

`A193710(A000096(n+1))+A034536(n+1)`
-/

namespace A193704.P14639725961023720282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000096 (n + 1)).toNat + A034536 (n + 1)

end

end A193704.P14639725961023720282

/-! ## A193704.P10001946611860308066

`A193710(A000096(n+1))%Δ[A036563(n+1)]²`
-/

namespace A193704.P10001946611860308066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193710 (A000096 (n + 1)).toNat) ((f1 (n + 1) - f1 n) ^ 2)

end

end A193704.P10001946611860308066

/-!
# A193705: Number of arrays of -3..3 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193705, there is no canonical definition to state claims against.
-/

/-! ## A193705.P4509156806414905832

`A193710(∑[n+3]+1)`
-/

namespace A193705.P4509156806414905832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193705.P4509156806414905832

/-! ## A193705.P7989458913333446722

`record[A023531(n+2)*A193710(n+1)]`
-/

namespace A193705.P7989458913333446722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A193710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193705.P7989458913333446722

/-! ## A193705.P17414956419950635205

`record[A073423(n+3)*A193710(n+1)]`
-/

namespace A193705.P17414956419950635205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (n + 3) * A193710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193705.P17414956419950635205

/-! ## A193705.P9152692093436757953

`record[A193710(n+1)/A193710(n+4)]`
-/

namespace A193705.P9152692093436757953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193710 (n + 1) : ℚ) / (A193710 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193705.P9152692093436757953

/-! ## A193705.P14252421749155261938

`record[A193710(A198464(n+1))]`
-/

namespace A193705.P14252421749155261938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193705.P14252421749155261938

/-!
# A193706: Number of arrays of -4..4 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193706, there is no canonical definition to state claims against.
-/

/-! ## A193706.P9634450611495635356

`A193710(∑[n+3]+n+4)`
-/

namespace A193706.P9634450611495635356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A193706.P9634450611495635356

/-! ## A193706.P16359723522702575941

`record[A193710(A019304(n))]`
-/

namespace A193706.P16359723522702575941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193706.P16359723522702575941

/-! ## A193706.P11472300290208675735

`or(1, A193710(A141214(n+1)))`
-/

namespace A193706.P11472300290208675735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193710 (A141214 (n + 1)).toNat)

end

end A193706.P11472300290208675735

/-! ## A193706.P12031943774628641288

`A193710(A141214(n+1))+A000035(2*n)`
-/

namespace A193706.P12031943774628641288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A141214 (n + 1)).toNat + A000035 (2 * n)

end

end A193706.P12031943774628641288

/-! ## A193706.P12461300093438080244

`A000034(2*n)*A193710(A141214(n+1))`
-/

namespace A193706.P12461300093438080244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A193710 (A141214 (n + 1)).toNat

end

end A193706.P12461300093438080244

/-!
# A193707: Number of arrays of -5..5 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193707, there is no canonical definition to state claims against.
-/

/-! ## A193707.P10504322553227368626

`A193710(Δ[A264443(n)])`
-/

namespace A193707.P10504322553227368626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (f1 (n + 1) - f1 n).toNat

end

end A193707.P10504322553227368626

/-! ## A193707.P5321455075418513593

`A193710(A046691(n+3))`
-/

namespace A193707.P5321455075418513593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A046691 (n + 3)).toNat

end

end A193707.P5321455075418513593

/-! ## A193707.P13296168429247659104

`A193710(Δ[A023545(n+1)])`
-/

namespace A193707.P13296168429247659104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (f1 (n + 1) - f1 n).toNat

end

end A193707.P13296168429247659104

/-! ## A193707.P18127496316570704226

`A193710(A034856(n+4)-2)`
-/

namespace A193707.P18127496316570704226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A034856 (n + 4) - 2).toNat

end

end A193707.P18127496316570704226

/-! ## A193707.P15714252114170705717

`A193710(A000217(n+5)-4)`
-/

namespace A193707.P15714252114170705717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000217 (n + 5) - 4).toNat

end

end A193707.P15714252114170705717

/-!
# A193708: Number of arrays of -6..6 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193708, there is no canonical definition to state claims against.
-/

/-! ## A193708.P10473343581675071868

`A193710(A052905(n+3))`
-/

namespace A193708.P10473343581675071868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A052905 (n + 3)).toNat

end

end A193708.P10473343581675071868

/-! ## A193708.P6276446537190949560

`A193710(A000096(n+5)-4)`
-/

namespace A193708.P6276446537190949560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000096 (n + 5) - 4).toNat

end

end A193708.P6276446537190949560

/-! ## A193708.P18171539590453801775

`A193710(A000124(n+6)-6)`
-/

namespace A193708.P18171539590453801775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000124 (n + 6) - 6).toNat

end

end A193708.P18171539590453801775

/-! ## A193708.P8196415867462802141

`A193710(A134869(n+6)-6)`
-/

namespace A193708.P8196415867462802141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A134869 (n + 6) - 6).toNat

end

end A193708.P8196415867462802141

/-! ## A193708.P9952783406271703494

`A193710(Δ[A023551(n+1)]+1)`
-/

namespace A193708.P9952783406271703494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (f1 (n + 1) - f1 n + 1).toNat

end

end A193708.P9952783406271703494

/-!
# A193709: Number of arrays of -7..7 integers x(1..n) with every x(i) in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193709, there is no canonical definition to state claims against.
-/

/-! ## A193709.P4200865301228186013

`A193710(Δ[A023551(n+2)])`
-/

namespace A193709.P4200865301228186013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (f1 (n + 1) - f1 n).toNat

end

end A193709.P4200865301228186013

/-! ## A193709.P10785362730006305809

`A193710(A052905(n+4)-1)`
-/

namespace A193709.P10785362730006305809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A052905 (n + 4) - 1).toNat

end

end A193709.P10785362730006305809

/-! ## A193709.P556620930040443401

`A193710(A000217(n+7)-6)`
-/

namespace A193709.P556620930040443401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000217 (n + 7) - 6).toNat

end

end A193709.P556620930040443401

/-! ## A193709.P12625644892723025665

`A193710(A000124(n+7)-7)`
-/

namespace A193709.P12625644892723025665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A000124 (n + 7) - 7).toNat

end

end A193709.P12625644892723025665

/-! ## A193709.P10389217866142962310

`A193710(xor(1, 2*n)+A052905(n+2)+11)`
-/

namespace A193709.P10389217866142962310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 ((Nat.xor 1 (2 * n) : ℤ) + (A052905 (n + 2) + 11)).toNat

end

end A193709.P10389217866142962310

/-!
# A193710: T(n,k)=Number of arrays of -k..k integers x(1..n) with every x(i) being in a subsequence of length 1, 2, 3 or 4 with sum zero.

The programs for A193710, there is no canonical definition to state claims against.
-/

/-! ## A193710.P6923548849037710173

`A057561(A193842(n))`
-/

namespace A193710.P6923548849037710173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A193842 n).toNat

end

end A193710.P6923548849037710173

/-! ## A193710.P16392613945042419669

`A156724(A193842(n)+1)`
-/

namespace A193710.P16392613945042419669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A193842 n + 1).toNat

end

end A193710.P16392613945042419669

/-! ## A193710.P11573745939513818322

`A349339(A193842(n)+2)`
-/

namespace A193710.P11573745939513818322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349339 (A193842 n + 2).toNat

end

end A193710.P11573745939513818322

/-! ## A193710.P4801712806701633484

`A361640(A193842(n)%A164979(n+1))`
-/

namespace A193710.P4801712806701633484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361640 (Int.tmod (A193842 n) (A164979 (n + 1))).toNat

end

end A193710.P4801712806701633484

/-! ## A193710.P15961094647925264742

`A038372(A193842(n))`
-/

namespace A193710.P15961094647925264742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038372 (A193842 n).toNat

end

end A193710.P15961094647925264742

/-!
# A193711: Partial sums of the union of squares and triangular numbers.

The programs for A193711, the canonical program `A193711.P17544858097457569638` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193711 has offset 1).

The definition of A193711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193711.P259284956507807321

`∑[∪[(n+1)², ∑[n+1]]]`
-/

namespace A193711.P259284956507807321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P259284956507807321

namespace A193711

/-- `∑[∪[(n+1)², ∑[n+1]]]` -/
def P259284956507807321.Spec : Prop :=
  ∀ n, (P259284956507807321.a n : ℤ) = A193711 (n + 1)

end A193711

/-! ## A193711.P17544858097457569638

`∑[A005214(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193711

/-- `∑[A005214(n+1)]` -/
def P17544858097457569638.Spec : Prop :=
  ∀ n, P17544858097457569638.a n = A193711 (n + 1)

theorem P17544858097457569638.correct : P17544858097457569638.Spec := by
  intro n
  simp only [A193711, Nat.add_sub_cancel]

end A193711

/-! ## A193711.P2368128408991910987

`∑[∑[A117704(n+1)]]`
-/

namespace A193711.P2368128408991910987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117704 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P2368128408991910987

namespace A193711

/-- `∑[∑[A117704(n+1)]]` -/
def P2368128408991910987.Spec : Prop :=
  ∀ n, P2368128408991910987.a n = A193711 (n + 1)

end A193711

/-! ## A193711.P7499513924354895990

`∑[∑[Δ[A054056(n+1)]/2]]`
-/

namespace A193711.P7499513924354895990
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P7499513924354895990

namespace A193711

/-- `∑[∑[Δ[A054056(n+1)]/2]]` -/
def P7499513924354895990.Spec : Prop :=
  ∀ n, P7499513924354895990.a n = (A193711 (n + 1) : ℚ)

end A193711

/-! ## A193711.P9883089425765789126

`∑[∑[Δ[A054057(n+1)]/2]]`
-/

namespace A193711.P9883089425765789126
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P9883089425765789126

namespace A193711

/-- `∑[∑[Δ[A054057(n+1)]/2]]` -/
def P9883089425765789126.Spec : Prop :=
  ∀ n, P9883089425765789126.a n = (A193711 (n + 1) : ℚ)

end A193711

/-! ## A193711.P17548130613599748883

`∑[∑[Δ[A054796(n+1)]/2]]`
-/

namespace A193711.P17548130613599748883
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P17548130613599748883

namespace A193711

/-- `∑[∑[Δ[A054796(n+1)]/2]]` -/
def P17548130613599748883.Spec : Prop :=
  ∀ n, P17548130613599748883.a n = (A193711 (n + 1) : ℚ)

end A193711

/-! ## A193711.P6781665864268972834

`∑[record[A054686(A026366(n+1)+2)]]`
-/

namespace A193711.P6781665864268972834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A026366 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P6781665864268972834

namespace A193711

/-- `∑[record[A054686(A026366(n+1)+2)]]` -/
def P6781665864268972834.Spec : Prop :=
  ∀ n, P6781665864268972834.a n = A193711 (n + 1)

end A193711

/-! ## A193711.P9925645432791729011

`∑[record[A054686(A026366(n+4))]]`
-/

namespace A193711.P9925645432791729011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A026366 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P9925645432791729011

namespace A193711

/-- `∑[record[A054686(A026366(n+4))]]` -/
def P9925645432791729011.Spec : Prop :=
  ∀ n, P9925645432791729011.a n = A193711 (n + 1)

end A193711

/-! ## A193711.P15487403277890296798

`∑[record[A054686(A332204(n+3))]]`
-/

namespace A193711.P15487403277890296798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A332204 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P15487403277890296798

namespace A193711

/-- `∑[record[A054686(A332204(n+3))]]` -/
def P15487403277890296798.Spec : Prop :=
  ∀ n, P15487403277890296798.a n = A193711 (n + 1)

end A193711

/-! ## A193711.P8954703798580020822

`∑[record[A054686(A004736(n+1)+2)]]`
-/

namespace A193711.P8954703798580020822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A004736 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P8954703798580020822

namespace A193711

/-- `∑[record[A054686(A004736(n+1)+2)]]` -/
def P8954703798580020822.Spec : Prop :=
  ∀ n, P8954703798580020822.a n = A193711 (n + 1)

end A193711

/-!
# A193714: Positions of squares (A000290) in the union of squares and triangular numbers (A005214).

The programs for A193714, there is no canonical definition to state claims against.
-/

/-! ## A193714.P7473135904767034401

`A352241(3*n+2)+1-A055642(2*n)`
-/

namespace A193714.P7473135904767034401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (3 * n + 2) + 1 - A055642 (2 * n)

end

end A193714.P7473135904767034401

/-! ## A193714.P10132886556362456924

`A121902(A187378(n+2))+A000041(A002266(n))`
-/

namespace A193714.P10132886556362456924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A187378 (n + 2)).toNat + A000041 (A002266 n).toNat

end

end A193714.P10132886556362456924

/-! ## A193714.P13893239184688135024

`∑[∏{e}[A322840(A075463(n+1)), #+1]]+n`
-/

namespace A193714.P13893239184688135024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (A075463 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A193714.P13893239184688135024

/-! ## A193714.P600613378279111346

`A004526(A250120(n)+A242998(2*(n+1)))`
-/

namespace A193714.P600613378279111346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A250120 n + A242998 (2 * (n + 1))).toNat

end

end A193714.P600613378279111346

/-! ## A193714.P14660477811556452791

`∑[A239141(A269947(n)+A250120(n))]`
-/

namespace A193714.P14660477811556452791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239141 (A269947 n + A250120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193714.P14660477811556452791

/-!
# A193715: Positions of triangular numbers (A000217) in the union of squares and triangular numbers (A005214).

The programs for A193715, the canonical program `A193715.P12423076877082722815` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193715 has offset 1).

The definition of A193715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193715.P12423076877082722815

`∑[A186219(n+1)-comp[A186222(n+1)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193715

/-- `∑[A186219(n+1)-comp[A186222(n+1)]]` -/
def P12423076877082722815.Spec : Prop :=
  ∀ n, P12423076877082722815.a n = A193715 (n + 1)

theorem P12423076877082722815.correct : P12423076877082722815.Spec := by
  intro n
  simp only [A193715, Nat.add_sub_cancel]

end A193715

/-! ## A193715.P12191746415057353520

`A000032(C(A117704(a(n-1)+1), n+1))+a(n-1)` with `a(0)=1`
-/

namespace A193715.P12191746415057353520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (Nat.choose (A117704 (a (n - 1) + 1).toNat).toNat (n + 1)) + a (n - 1)

end

end A193715.P12191746415057353520

namespace A193715

/-- `A000032(C(A117704(a(n-1)+1), n+1))+a(n-1)` -/
def P12191746415057353520.Spec : Prop :=
  ∀ n, P12191746415057353520.a n = A193715 (n + 1)

end A193715

/-! ## A193715.P5620115717982665322

`eq[1, A002260(A005214(n+1)+1)]+1`
-/

namespace A193715.P5620115717982665322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A005214 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193715.P5620115717982665322

namespace A193715

/-- `eq[1, A002260(A005214(n+1)+1)]+1` -/
def P5620115717982665322.Spec : Prop :=
  ∀ n, (P5620115717982665322.a n : ℤ) = A193715 (n + 1)

end A193715

/-! ## A193715.P16631156159693115531

`∑[A080820(n+1)-A000196(∑[n])]`
-/

namespace A193715.P16631156159693115531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (n + 1) - A000196 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193715.P16631156159693115531

namespace A193715

/-- `∑[A080820(n+1)-A000196(∑[n])]` -/
def P16631156159693115531.Spec : Prop :=
  ∀ n, P16631156159693115531.a n = A193715 (n + 1)

end A193715

/-! ## A193715.P1620290534541289752

`eq[1, A010054(A005214(n+1))]+1`
-/

namespace A193715.P1620290534541289752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A005214 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193715.P1620290534541289752

namespace A193715

/-- `eq[1, A010054(A005214(n+1))]+1` -/
def P1620290534541289752.Spec : Prop :=
  ∀ n, (P1620290534541289752.a n : ℤ) = A193715 (n + 1)

end A193715

/-! ## A193715.P7634392011753968379

`eq[1, A010054(∑[A117704(n+1)])]+1`
-/

namespace A193715.P7634392011753968379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193715.P7634392011753968379

namespace A193715

/-- `eq[1, A010054(∑[A117704(n+1)])]+1` -/
def P7634392011753968379.Spec : Prop :=
  ∀ n, (P7634392011753968379.a n : ℤ) = A193715 (n + 1)

end A193715

/-! ## A193715.P514481742546832731

`∑[A263765((n+1)*(A181176(n+1)+A181176(n)))]`
-/

namespace A193715.P514481742546832731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 ((n + 1 : ℤ) * (A181176 (n + 1) + A181176 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193715.P514481742546832731

namespace A193715

/-- `∑[A263765((n+1)*(A181176(n+1)+A181176(n)))]` -/
def P514481742546832731.Spec : Prop :=
  ∀ n, P514481742546832731.a n = A193715 (n + 1)

end A193715

/-!
# A193722: Triangular array: the fusion of (x+1)^n and (x+2)^n; see Comments for the definition of fusion.

The programs for A193722, the canonical program `A193722.P17641466338086153155` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193722 has offset 0).

The definition of A193722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193722.P17641466338086153155

`3*T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193722

/-- `3*T(n-1,k-1)+T(n-1,k)` -/
def P17641466338086153155.Spec : Prop :=
  ∀ n, (P17641466338086153155.a n : ℤ) = A193722 n

theorem P17641466338086153155.correct : P17641466338086153155.Spec := by
  intro n
  simp only [A193722]

end A193722

/-! ## A193722.P13936425303157445315

`T(n-1,k)-3*(T(n-1,k-1)-2*T(n-1,k-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A193722.P13936425303157445315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.triUp a n - 3 * (SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUpLeft a n)

end

end A193722.P13936425303157445315

namespace A193722

/-- `T(n-1,k)-3*(T(n-1,k-1)-2*T(n-1,k-1))` -/
def P13936425303157445315.Spec : Prop :=
  ∀ n, P13936425303157445315.a n = A193722 n

end A193722

/-! ## A193722.P13124654707995782063

`(A038763(n)+A013610(n))/2`
-/

namespace A193722.P13124654707995782063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038763 n + A013610 n : ℚ) / 2

end

end A193722.P13124654707995782063

namespace A193722

/-- `(A038763(n)+A013610(n))/2` -/
def P13124654707995782063.Spec : Prop :=
  ∀ n, P13124654707995782063.a n = (A193722 n : ℚ)

end A193722

/-! ## A193722.P5836287026254714643

`A193723(A002378(n)%A080036(n))`
-/

namespace A193722.P5836287026254714643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A193722.P5836287026254714643

namespace A193722

/-- `A193723(A002378(n)%A080036(n))` -/
def P5836287026254714643.Spec : Prop :=
  ∀ n, P5836287026254714643.a n = A193722 n

end A193722

/-! ## A193722.P6725613584447111693

`A193723(char[A014132(n+1)]*A061579(n))`
-/

namespace A193722.P6725613584447111693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A193722.P6725613584447111693

namespace A193722

/-- `A193723(char[A014132(n+1)]*A061579(n))` -/
def P6725613584447111693.Spec : Prop :=
  ∀ n, P6725613584447111693.a n = A193722 n

end A193722

/-! ## A193722.P2067792104870626862

`A193723(A061579(n))`
-/

namespace A193722.P2067792104870626862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (A061579 n).toNat

end

end A193722.P2067792104870626862

namespace A193722

/-- `A193723(A061579(n))` -/
def P2067792104870626862.Spec : Prop :=
  ∀ n, P2067792104870626862.a n = A193722 n

end A193722

/-! ## A193722.P12265061181714210512

`A193723(A114327(n)+n)`
-/

namespace A193722.P12265061181714210512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (A114327 n + (n : ℤ)).toNat

end

end A193722.P12265061181714210512

namespace A193722

/-- `A193723(A114327(n)+n)` -/
def P12265061181714210512.Spec : Prop :=
  ∀ n, P12265061181714210512.a n = A193722 n

end A193722

/-! ## A193722.P12648452083264979091

`A193723(A057944(n)+A025581(n))`
-/

namespace A193722.P12648452083264979091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (A057944 n + A025581 n).toNat

end

end A193722.P12648452083264979091

namespace A193722

/-- `A193723(A057944(n)+A025581(n))` -/
def P12648452083264979091.Spec : Prop :=
  ∀ n, P12648452083264979091.a n = A193722 n

end A193722

/-! ## A193722.P5559283037662041011

`A193723(A005843(∑[n])%A080036(n))`
-/

namespace A193722.P5559283037662041011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (Int.tmod (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A080036 n)).toNat

end

end A193722.P5559283037662041011

namespace A193722

/-- `A193723(A005843(∑[n])%A080036(n))` -/
def P5559283037662041011.Spec : Prop :=
  ∀ n, P5559283037662041011.a n = A193722 n

end A193722

/-! ## A193722.P9171859566108143402

`A038763(n)+A014682(A013610(n)-A038763(n))`
-/

namespace A193722.P9171859566108143402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 n + A014682 (A013610 n - A038763 n).toNat

end

end A193722.P9171859566108143402

namespace A193722

/-- `A038763(n)+A014682(A013610(n)-A038763(n))` -/
def P9171859566108143402.Spec : Prop :=
  ∀ n, P9171859566108143402.a n = A193722 n

end A193722

/-!
# A193723: Mirror of the fusion triangle A193722.

The programs for A193723, the canonical program `A193723.P9321591250898106811` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193723 has offset 0).

The definition of A193723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193723.P9321591250898106811

`T(n-1,k-1)+3*T(n-1,k)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193723

/-- `T(n-1,k-1)+3*T(n-1,k)` -/
def P9321591250898106811.Spec : Prop :=
  ∀ n, (P9321591250898106811.a n : ℤ) = A193723 n

theorem P9321591250898106811.correct : P9321591250898106811.Spec := by
  intro n
  simp only [A193723]

end A193723

/-! ## A193723.P8265709613382306195

`3*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A193723.P8265709613382306195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A193723.P8265709613382306195

namespace A193723

/-- `3*T(n-1,k)+T(n-1,k-1)` -/
def P8265709613382306195.Spec : Prop :=
  ∀ n, (P8265709613382306195.a n : ℤ) = A193723 n

end A193723

/-! ## A193723.P13476596785134179041

`T(n-1,k-1)-3*(T(n-1,k)-2*T(n-1,k))` with `a(0)=1, a(1)=2`
-/

namespace A193723.P13476596785134179041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n - 3 * (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n)

end

end A193723.P13476596785134179041

namespace A193723

/-- `T(n-1,k-1)-3*(T(n-1,k)-2*T(n-1,k))` -/
def P13476596785134179041.Spec : Prop :=
  ∀ n, P13476596785134179041.a n = A193723 n

end A193723

/-! ## A193723.P4793492312848091226

`(A027465(n)+abs(A164948(n)))/2`
-/

namespace A193723.P4793492312848091226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n + |A164948 n| : ℚ) / 2

end

end A193723.P4793492312848091226

namespace A193723

/-- `(A027465(n)+abs(A164948(n)))/2` -/
def P4793492312848091226.Spec : Prop :=
  ∀ n, P4793492312848091226.a n = (A193723 n : ℚ)

end A193723

/-! ## A193723.P16130754960164981239

`A193722(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193723.P16130754960164981239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193722 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193723.P16130754960164981239

namespace A193723

/-- `A193722(∑[char[∑[n]]]²-(n+1))` -/
def P16130754960164981239.Spec : Prop :=
  ∀ n, P16130754960164981239.a n = A193723 n

end A193723

/-! ## A193723.P18003230841682215720

`A193722(A061579(n))+and(2, A010051(n+2))`
-/

namespace A193723.P18003230841682215720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193722 (A061579 n).toNat + Int.land 2 (A010051 (n + 2))

end

end A193723.P18003230841682215720

namespace A193723

/-- `A193722(A061579(n))+and(2, A010051(n+2))` -/
def P18003230841682215720.Spec : Prop :=
  ∀ n, P18003230841682215720.a n = A193723 n

end A193723

/-! ## A193723.P13113796117244413222

`gcd(A000038(n), A193722(A038722(n+2)))`
-/

namespace A193723.P13113796117244413222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193722 (A038722 (n + 2)).toNat)

end

end A193723.P13113796117244413222

namespace A193723

/-- `gcd(A000038(n), A193722(A038722(n+2)))` -/
def P13113796117244413222.Spec : Prop :=
  ∀ n, (P13113796117244413222.a n : ℤ) = A193723 n

end A193723

/-! ## A193723.P15316918184307059405

`A193722(A061579(n))%A000041(n+2)`
-/

namespace A193723.P15316918184307059405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193722 (A061579 n).toNat) (A000041 (n + 2))

end

end A193723.P15316918184307059405

namespace A193723

/-- `A193722(A061579(n))%A000041(n+2)` -/
def P15316918184307059405.Spec : Prop :=
  ∀ n, P15316918184307059405.a n = A193723 n

end A193723

/-! ## A193723.P5402483633180937480

`A001221(A049591(n+1))*A193722(A061579(n))`
-/

namespace A193723.P5402483633180937480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A049591 (n + 1)).toNat * A193722 (A061579 n).toNat

end

end A193723.P5402483633180937480

namespace A193723

/-- `A001221(A049591(n+1))*A193722(A061579(n))` -/
def P5402483633180937480.Spec : Prop :=
  ∀ n, P5402483633180937480.a n = A193723 n

end A193723

/-! ## A193723.P2307723981949686662

`A183189(A245300(n))`
-/

namespace A193723.P2307723981949686662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183189 (A245300 n).toNat

end

end A193723.P2307723981949686662

namespace A193723

/-- `A183189(A245300(n))` -/
def P2307723981949686662.Spec : Prop :=
  ∀ n, P2307723981949686662.a n = A193723 n

end A193723

/-! ## A193723.P3434544094218364958

`A193722(A061579(n))%A022115(n)`
-/

namespace A193723.P3434544094218364958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193722 (A061579 n).toNat) (A022115 n)

end

end A193723.P3434544094218364958

namespace A193723

/-- `A193722(A061579(n))%A022115(n)` -/
def P3434544094218364958.Spec : Prop :=
  ∀ n, P3434544094218364958.a n = A193723 n

end A193723

/-! ## A193723.P3622620940313199239

`A001221(A243529(n+1))*A193722(A061579(n))`
-/

namespace A193723.P3622620940313199239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243529 (n + 1)).toNat * A193722 (A061579 n).toNat

end

end A193723.P3622620940313199239

namespace A193723

/-- `A001221(A243529(n+1))*A193722(A061579(n))` -/
def P3622620940313199239.Spec : Prop :=
  ∀ n, P3622620940313199239.a n = A193723 n

end A193723

/-! ## A193723.P12054937389312710762

`A001221(A243530(n+1))*A193722(A061579(n))`
-/

namespace A193723.P12054937389312710762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243530 (n + 1)).toNat * A193722 (A061579 n).toNat

end

end A193723.P12054937389312710762

namespace A193723

/-- `A001221(A243530(n+1))*A193722(A061579(n))` -/
def P12054937389312710762.Spec : Prop :=
  ∀ n, P12054937389312710762.a n = A193723 n

end A193723

/-! ## A193723.P11740757622945098165

`A143259(A250479(n+1)²)*A193722(A061579(n))`
-/

namespace A193723.P11740757622945098165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A250479 (n + 1) ^ 2).toNat * A193722 (A061579 n).toNat

end

end A193723.P11740757622945098165

namespace A193723

/-- `A143259(A250479(n+1)²)*A193722(A061579(n))` -/
def P11740757622945098165.Spec : Prop :=
  ∀ n, P11740757622945098165.a n = A193723 n

end A193723

/-!
# A193724: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+2)^n and q(n,x)=(x+1)^n.

The programs for A193724, the canonical program `A193724.P4273244623331356182` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193724 has offset 0).

The definition of A193724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193724.P4273244623331356182

`3*T(n-1,k-1)+2*T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193724

/-- `3*T(n-1,k-1)+2*T(n-1,k)` -/
def P4273244623331356182.Spec : Prop :=
  ∀ n, (P4273244623331356182.a n : ℤ) = A193724 n

theorem P4273244623331356182.correct : P4273244623331356182.Spec := by
  intro n
  simp only [A193724]

end A193724

/-! ## A193724.P11500086443852580085

`A193725(A061579(n))`
-/

namespace A193724.P11500086443852580085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (A061579 n).toNat

end

end A193724.P11500086443852580085

namespace A193724

/-- `A193725(A061579(n))` -/
def P11500086443852580085.Spec : Prop :=
  ∀ n, P11500086443852580085.a n = A193724 n

end A193724

/-! ## A193724.P13729991686281096030

`A193725(A114327(n)+n)`
-/

namespace A193724.P13729991686281096030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (A114327 n + (n : ℤ)).toNat

end

end A193724.P13729991686281096030

namespace A193724

/-- `A193725(A114327(n)+n)` -/
def P13729991686281096030.Spec : Prop :=
  ∀ n, P13729991686281096030.a n = A193724 n

end A193724

/-! ## A193724.P18180731599263119997

`A193725(A038722(n+1)-1)`
-/

namespace A193724.P18180731599263119997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (A038722 (n + 1) - 1).toNat

end

end A193724.P18180731599263119997

namespace A193724

/-- `A193725(A038722(n+1)-1)` -/
def P18180731599263119997.Spec : Prop :=
  ∀ n, P18180731599263119997.a n = A193724 n

end A193724

/-! ## A193724.P5663421340504882501

`A193725(A057944(n)+A025581(n))`
-/

namespace A193724.P5663421340504882501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (A057944 n + A025581 n).toNat

end

end A193724.P5663421340504882501

namespace A193724

/-- `A193725(A057944(n)+A025581(n))` -/
def P5663421340504882501.Spec : Prop :=
  ∀ n, P5663421340504882501.a n = A193724 n

end A193724

/-! ## A193724.P12644396230055654366

`A193725(A057428(n)+A038722(n+1))`
-/

namespace A193724.P12644396230055654366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (A057428 n + A038722 (n + 1)).toNat

end

end A193724.P12644396230055654366

namespace A193724

/-- `A193725(A057428(n)+A038722(n+1))` -/
def P12644396230055654366.Spec : Prop :=
  ∀ n, P12644396230055654366.a n = A193724 n

end A193724

/-! ## A193724.P6963284738632177201

`A193725(A002378(n)%A014132(n+1))`
-/

namespace A193724.P6963284738632177201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A193724.P6963284738632177201

namespace A193724

/-- `A193725(A002378(n)%A014132(n+1))` -/
def P6963284738632177201.Spec : Prop :=
  ∀ n, P6963284738632177201.a n = A193724 n

end A193724

/-! ## A193724.P208575679272486254

`A193728(n)/A130321(n)`
-/

namespace A193724.P208575679272486254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193728 n : ℚ) / (A130321 n : ℚ)

end

end A193724.P208575679272486254

namespace A193724

/-- `A193728(n)/A130321(n)` -/
def P208575679272486254.Spec : Prop :=
  ∀ n, P208575679272486254.a n = (A193724 n : ℚ)

end A193724

/-!
# A193725: Mirror of the triangle A193724.

The programs for A193725, the canonical program `A193725.P16993124865302032133` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193725 has offset 0).

The definition of A193725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193725.P16993124865302032133

`2*T(n-1,k-1)+3*T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193725

/-- `2*T(n-1,k-1)+3*T(n-1,k)` -/
def P16993124865302032133.Spec : Prop :=
  ∀ n, (P16993124865302032133.a n : ℤ) = A193725 n

theorem P16993124865302032133.correct : P16993124865302032133.Spec := by
  intro n
  simp only [A193725]

end A193725

/-! ## A193725.P13323069318362416009

`ceil(A059268(n)/2*A193723(n))`
-/

namespace A193725.P13323069318362416009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059268 n : ℚ) / 2 * (A193723 n : ℚ)⌉

end

end A193725.P13323069318362416009

namespace A193725

/-- `ceil(A059268(n)/2*A193723(n))` -/
def P13323069318362416009.Spec : Prop :=
  ∀ n, P13323069318362416009.a n = A193725 n

end A193725

/-! ## A193725.P11045633325352935549

`A059268(n)/A020639(A008458(n))*A193723(n)`
-/

namespace A193725.P11045633325352935549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A020639 (A008458 n).toNat : ℚ) * (A193723 n : ℚ)

end

end A193725.P11045633325352935549

namespace A193725

/-- `A059268(n)/A020639(A008458(n))*A193723(n)` -/
def P11045633325352935549.Spec : Prop :=
  ∀ n, P11045633325352935549.a n = (A193725 n : ℚ)

end A193725

/-! ## A193725.P8890966892725885099

`A059268(n)/A020639(A001223(n+1))*A193723(n)`
-/

namespace A193725.P8890966892725885099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ) * (A193723 n : ℚ)

end

end A193725.P8890966892725885099

namespace A193725

/-- `A059268(n)/A020639(A001223(n+1))*A193723(n)` -/
def P8890966892725885099.Spec : Prop :=
  ∀ n, P8890966892725885099.a n = (A193725 n : ℚ)

end A193725

/-! ## A193725.P11688470318453636888

`A059268(n)/A020639(A066043(n+1))*A193723(n)`
-/

namespace A193725.P11688470318453636888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A020639 (A066043 (n + 1)).toNat : ℚ) * (A193723 n : ℚ)

end

end A193725.P11688470318453636888

namespace A193725

/-- `A059268(n)/A020639(A066043(n+1))*A193723(n)` -/
def P11688470318453636888.Spec : Prop :=
  ∀ n, P11688470318453636888.a n = (A193725 n : ℚ)

end A193725

/-! ## A193725.P92704030257962830

`A193724(A061579(n))`
-/

namespace A193725.P92704030257962830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193724 (A061579 n).toNat

end

end A193725.P92704030257962830

namespace A193725

/-- `A193724(A061579(n))` -/
def P92704030257962830.Spec : Prop :=
  ∀ n, P92704030257962830.a n = A193725 n

end A193725

/-! ## A193725.P12484738337436635412

`A059268(n)*A193723(n)/A020639(A000040(n+1)-1)`
-/

namespace A193725.P12484738337436635412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n * A193723 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A193725.P12484738337436635412

namespace A193725

/-- `A059268(n)*A193723(n)/A020639(A000040(n+1)-1)` -/
def P12484738337436635412.Spec : Prop :=
  ∀ n, P12484738337436635412.a n = (A193725 n : ℚ)

end A193725

/-! ## A193725.P6605005745065087942

`A059268(n)*A193723(n)/A020639(A236928(n))`
-/

namespace A193725.P6605005745065087942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n * A193723 n : ℚ) / (A020639 (A236928 n).toNat : ℚ)

end

end A193725.P6605005745065087942

namespace A193725

/-- `A059268(n)*A193723(n)/A020639(A236928(n))` -/
def P6605005745065087942.Spec : Prop :=
  ∀ n, P6605005745065087942.a n = (A193725 n : ℚ)

end A193725

/-! ## A193725.P11526076455062499584

`A193729(n)/A059268(n)`
-/

namespace A193725.P11526076455062499584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193729 n : ℚ) / (A059268 n : ℚ)

end

end A193725.P11526076455062499584

namespace A193725

/-- `A193729(n)/A059268(n)` -/
def P11526076455062499584.Spec : Prop :=
  ∀ n, P11526076455062499584.a n = (A193725 n : ℚ)

end A193725

/-! ## A193725.P15725791544326812059

`A059268(n)*A193723(n)/A000122(n²)`
-/

namespace A193725.P15725791544326812059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n * A193723 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A193725.P15725791544326812059

namespace A193725

/-- `A059268(n)*A193723(n)/A000122(n²)` -/
def P15725791544326812059.Spec : Prop :=
  ∀ n, P15725791544326812059.a n = (A193725 n : ℚ)

end A193725

/-!
# A193726: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+2)^n and q(n,x)=(x+2)^n.

The programs for A193726, the canonical program `A193726.P16722150253372667413` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193726 has offset 0).

The definition of A193726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193726.P16722150253372667413

`5*T(n-1,k-1)+2*T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193726

/-- `5*T(n-1,k-1)+2*T(n-1,k)` -/
def P16722150253372667413.Spec : Prop :=
  ∀ n, (P16722150253372667413.a n : ℤ) = A193726 n

theorem P16722150253372667413.correct : P16722150253372667413.Spec := by
  intro n
  simp only [A193726]

end A193726

/-! ## A193726.P13986039195418898842

`A193727(A061579(n))`
-/

namespace A193726.P13986039195418898842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (A061579 n).toNat

end

end A193726.P13986039195418898842

namespace A193726

/-- `A193727(A061579(n))` -/
def P13986039195418898842.Spec : Prop :=
  ∀ n, P13986039195418898842.a n = A193726 n

end A193726

/-! ## A193726.P3813060217285990860

`A193727(A114327(n)+n)`
-/

namespace A193726.P3813060217285990860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (A114327 n + (n : ℤ)).toNat

end

end A193726.P3813060217285990860

namespace A193726

/-- `A193727(A114327(n)+n)` -/
def P3813060217285990860.Spec : Prop :=
  ∀ n, P3813060217285990860.a n = A193726 n

end A193726

/-! ## A193726.P9263516490708996985

`A193727(A038722(n+1)-1)`
-/

namespace A193726.P9263516490708996985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (A038722 (n + 1) - 1).toNat

end

end A193726.P9263516490708996985

namespace A193726

/-- `A193727(A038722(n+1)-1)` -/
def P9263516490708996985.Spec : Prop :=
  ∀ n, P9263516490708996985.a n = A193726 n

end A193726

/-! ## A193726.P4214361251032846323

`A193727(A093995(n+1)-(n+1))`
-/

namespace A193726.P4214361251032846323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193726.P4214361251032846323

namespace A193726

/-- `A193727(A093995(n+1)-(n+1))` -/
def P4214361251032846323.Spec : Prop :=
  ∀ n, P4214361251032846323.a n = A193726 n

end A193726

/-! ## A193726.P13364235347344144496

`A193727(A057944(n)+A025581(n))`
-/

namespace A193726.P13364235347344144496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (A057944 n + A025581 n).toNat

end

end A193726.P13364235347344144496

namespace A193726

/-- `A193727(A057944(n)+A025581(n))` -/
def P13364235347344144496.Spec : Prop :=
  ∀ n, P13364235347344144496.a n = A193726 n

end A193726

/-!
# A193727: Mirror of the triangle A193726.

The programs for A193727, the canonical program `A193727.P13646280353157627052` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193727 has offset 0).

The definition of A193727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193727.P13646280353157627052

`2*T(n-1,k-1)+5*T(n-1,k)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193727

/-- `2*T(n-1,k-1)+5*T(n-1,k)` -/
def P13646280353157627052.Spec : Prop :=
  ∀ n, (P13646280353157627052.a n : ℤ) = A193727 n

theorem P13646280353157627052.correct : P13646280353157627052.Spec := by
  intro n
  simp only [A193727]

end A193727

/-! ## A193727.P9205623234270498591

`A193726(A061579(n))`
-/

namespace A193727.P9205623234270498591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (A061579 n).toNat

end

end A193727.P9205623234270498591

namespace A193727

/-- `A193726(A061579(n))` -/
def P9205623234270498591.Spec : Prop :=
  ∀ n, P9205623234270498591.a n = A193727 n

end A193727

/-! ## A193727.P4038639831699403630

`A193726(A114327(n)+n)`
-/

namespace A193727.P4038639831699403630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (A114327 n + (n : ℤ)).toNat

end

end A193727.P4038639831699403630

namespace A193727

/-- `A193726(A114327(n)+n)` -/
def P4038639831699403630.Spec : Prop :=
  ∀ n, P4038639831699403630.a n = A193727 n

end A193727

/-! ## A193727.P12021888448210722887

`A193726(∑[A198954(n)-1])`
-/

namespace A193727.P12021888448210722887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193727.P12021888448210722887

namespace A193727

/-- `A193726(∑[A198954(n)-1])` -/
def P12021888448210722887.Spec : Prop :=
  ∀ n, P12021888448210722887.a n = A193727 n

end A193727

/-! ## A193727.P7381389835493965782

`A193726(A038722(n+1)-1)`
-/

namespace A193727.P7381389835493965782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (A038722 (n + 1) - 1).toNat

end

end A193727.P7381389835493965782

namespace A193727

/-- `A193726(A038722(n+1)-1)` -/
def P7381389835493965782.Spec : Prop :=
  ∀ n, P7381389835493965782.a n = A193727 n

end A193727

/-! ## A193727.P11023593746628229181

`A193726(A093995(n+1)-(n+1))`
-/

namespace A193727.P11023593746628229181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193727.P11023593746628229181

namespace A193727

/-- `A193726(A093995(n+1)-(n+1))` -/
def P11023593746628229181.Spec : Prop :=
  ∀ n, P11023593746628229181.a n = A193727 n

end A193727

/-! ## A193727.P869933176712028085

`A193726(A057944(n)+A025581(n))`
-/

namespace A193727.P869933176712028085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (A057944 n + A025581 n).toNat

end

end A193727.P869933176712028085

namespace A193727

/-- `A193726(A057944(n)+A025581(n))` -/
def P869933176712028085.Spec : Prop :=
  ∀ n, P869933176712028085.a n = A193727 n

end A193727

/-!
# A193728: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = (x+2)^n and q(n,x) = (2*x+1)^n.

The programs for A193728, the canonical program `A193728.P10760343288366630317` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193728 has offset 0).

The definition of A193728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193728.P10760343288366630317

`3*T(n-1,k-1)+4*T(n-1,k)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193728

/-- `3*T(n-1,k-1)+4*T(n-1,k)` -/
def P10760343288366630317.Spec : Prop :=
  ∀ n, (P10760343288366630317.a n : ℤ) = A193728 n

theorem P10760343288366630317.correct : P10760343288366630317.Spec := by
  intro n
  simp only [A193728]

end A193728

/-! ## A193728.P5295280183863177397

`A130321(n)*A193724(n)`
-/

namespace A193728.P5295280183863177397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193724 n

end

end A193728.P5295280183863177397

namespace A193728

/-- `A130321(n)*A193724(n)` -/
def P5295280183863177397.Spec : Prop :=
  ∀ n, P5295280183863177397.a n = A193728 n

end A193728

/-! ## A193728.P11792710258202588434

`sqrt(A262616(n))*A193724(n)`
-/

namespace A193728.P11792710258202588434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A193724 n : ℝ)

end

end A193728.P11792710258202588434

namespace A193728

/-- `sqrt(A262616(n))*A193724(n)` -/
def P11792710258202588434.Spec : Prop :=
  ∀ n, P11792710258202588434.a n = (A193728 n : ℝ)

end A193728

/-! ## A193728.P2554619566810226381

`A000079(A025581(n))*A193724(n)`
-/

namespace A193728.P2554619566810226381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A193724 n

end

end A193728.P2554619566810226381

namespace A193728

/-- `A000079(A025581(n))*A193724(n)` -/
def P2554619566810226381.Spec : Prop :=
  ∀ n, P2554619566810226381.a n = A193728 n

end A193728

/-! ## A193728.P5468802605747305336

`A059268(A061579(n))*A193724(n)`
-/

namespace A193728.P5468802605747305336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A193724 n

end

end A193728.P5468802605747305336

namespace A193728

/-- `A059268(A061579(n))*A193724(n)` -/
def P5468802605747305336.Spec : Prop :=
  ∀ n, P5468802605747305336.a n = A193728 n

end A193728

/-! ## A193728.P4404620012225969263

`A130321(n)*A193725(A061579(n))`
-/

namespace A193728.P4404620012225969263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193725 (A061579 n).toNat

end

end A193728.P4404620012225969263

namespace A193728

/-- `A130321(n)*A193725(A061579(n))` -/
def P4404620012225969263.Spec : Prop :=
  ∀ n, P4404620012225969263.a n = A193728 n

end A193728

/-! ## A193728.P5455420723866766806

`A193729(A061579(n))`
-/

namespace A193728.P5455420723866766806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193729 (A061579 n).toNat

end

end A193728.P5455420723866766806

namespace A193728

/-- `A193729(A061579(n))` -/
def P5455420723866766806.Spec : Prop :=
  ∀ n, P5455420723866766806.a n = A193728 n

end A193728

/-! ## A193728.P14498754330792405180

`A008619(A130330(n))*A193724(n)`
-/

namespace A193728.P14498754330792405180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A130330 n).toNat * A193724 n

end

end A193728.P14498754330792405180

namespace A193728

/-- `A008619(A130330(n))*A193724(n)` -/
def P14498754330792405180.Spec : Prop :=
  ∀ n, P14498754330792405180.a n = A193728 n

end A193728

/-!
# A193729: Mirror of the triangle A193728.

The programs for A193729, the canonical program `A193729.P10474708994189197345` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193729 has offset 0).

The definition of A193729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193729.P10474708994189197345

`4*T(n-1,k-1)+3*T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193729

/-- `4*T(n-1,k-1)+3*T(n-1,k)` -/
def P10474708994189197345.Spec : Prop :=
  ∀ n, (P10474708994189197345.a n : ℤ) = A193729 n

theorem P10474708994189197345.correct : P10474708994189197345.Spec := by
  intro n
  simp only [A193729]

end A193729

/-! ## A193729.P6740134435033159317

`A059268(n)*A193725(n)`
-/

namespace A193729.P6740134435033159317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193725 n

end

end A193729.P6740134435033159317

namespace A193729

/-- `A059268(n)*A193725(n)` -/
def P6740134435033159317.Spec : Prop :=
  ∀ n, P6740134435033159317.a n = A193729 n

end A193729

/-! ## A193729.P7329611206928786291

`A000079(A002262(n))*A193725(n)`
-/

namespace A193729.P7329611206928786291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A193725 n

end

end A193729.P7329611206928786291

namespace A193729

/-- `A000079(A002262(n))*A193725(n)` -/
def P7329611206928786291.Spec : Prop :=
  ∀ n, P7329611206928786291.a n = A193729 n

end A193729

/-! ## A193729.P15153255084273540391

`A059268(n)*A193724(A061579(n))`
-/

namespace A193729.P15153255084273540391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193724 (A061579 n).toNat

end

end A193729.P15153255084273540391

namespace A193729

/-- `A059268(n)*A193724(A061579(n))` -/
def P15153255084273540391.Spec : Prop :=
  ∀ n, P15153255084273540391.a n = A193729 n

end A193729

/-! ## A193729.P7779351243953601793

`A130321(A061579(n))*A193725(n)`
-/

namespace A193729.P7779351243953601793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A193725 n

end

end A193729.P7779351243953601793

namespace A193729

/-- `A130321(A061579(n))*A193725(n)` -/
def P7779351243953601793.Spec : Prop :=
  ∀ n, P7779351243953601793.a n = A193729 n

end A193729

/-! ## A193729.P17201410992088306832

`A193728(A061579(n))`
-/

namespace A193729.P17201410992088306832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193728 (A061579 n).toNat

end

end A193729.P17201410992088306832

namespace A193729

/-- `A193728(A061579(n))` -/
def P17201410992088306832.Spec : Prop :=
  ∀ n, P17201410992088306832.a n = A193729 n

end A193729

/-!
# A193730: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = (2x+1)^n and q(n,x) = (2x+1)^n.

The programs for A193730, the canonical program `A193730.P18101665117064784670` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193730 has offset 0).

The definition of A193730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193730.P18101665117064784670

`3*T(n-1,k-1)+2*T(n-1,k)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193730

/-- `3*T(n-1,k-1)+2*T(n-1,k)` -/
def P18101665117064784670.Spec : Prop :=
  ∀ n, (P18101665117064784670.a n : ℤ) = A193730 n

theorem P18101665117064784670.correct : P18101665117064784670.Spec := by
  intro n
  simp only [A193730]

end A193730

/-! ## A193730.P1198485388064657101

`A038763(n)*A130321(n)`
-/

namespace A193730.P1198485388064657101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 n * A130321 n

end

end A193730.P1198485388064657101

namespace A193730

/-- `A038763(n)*A130321(n)` -/
def P1198485388064657101.Spec : Prop :=
  ∀ n, P1198485388064657101.a n = A193730 n

end A193730

/-! ## A193730.P8482247700310188060

`sqrt(A262616(n))*A038763(n)`
-/

namespace A193730.P8482247700310188060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A038763 n : ℝ)

end

end A193730.P8482247700310188060

namespace A193730

/-- `sqrt(A262616(n))*A038763(n)` -/
def P8482247700310188060.Spec : Prop :=
  ∀ n, P8482247700310188060.a n = (A193730 n : ℝ)

end A193730

/-! ## A193730.P1640790966931587146

`2^A025581(n)*A038763(n)`
-/

namespace A193730.P1640790966931587146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A038763 n : ℚ)

end

end A193730.P1640790966931587146

namespace A193730

/-- `2^A025581(n)*A038763(n)` -/
def P1640790966931587146.Spec : Prop :=
  ∀ n, P1640790966931587146.a n = (A193730 n : ℚ)

end A193730

/-! ## A193730.P8644875262536807080

`A000079(A025581(n))*A038763(n)`
-/

namespace A193730.P8644875262536807080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A038763 n

end

end A193730.P8644875262536807080

namespace A193730

/-- `A000079(A025581(n))*A038763(n)` -/
def P8644875262536807080.Spec : Prop :=
  ∀ n, P8644875262536807080.a n = A193730 n

end A193730

/-! ## A193730.P16802221964027149028

`A016116(A099375(n))*A038763(n)`
-/

namespace A193730.P16802221964027149028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A099375 n).toNat * A038763 n

end

end A193730.P16802221964027149028

namespace A193730

/-- `A016116(A099375(n))*A038763(n)` -/
def P16802221964027149028.Spec : Prop :=
  ∀ n, P16802221964027149028.a n = A193730 n

end A193730

/-! ## A193730.P7232285427208873100

`A038763(n)*A059268(A061579(n))`
-/

namespace A193730.P7232285427208873100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 n * A059268 (A061579 n).toNat

end

end A193730.P7232285427208873100

namespace A193730

/-- `A038763(n)*A059268(A061579(n))` -/
def P7232285427208873100.Spec : Prop :=
  ∀ n, P7232285427208873100.a n = A193730 n

end A193730

/-! ## A193730.P14576945002078775848

`A011782(A004736(n+1))*A038763(n)`
-/

namespace A193730.P14576945002078775848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A038763 n

end

end A193730.P14576945002078775848

namespace A193730

/-- `A011782(A004736(n+1))*A038763(n)` -/
def P14576945002078775848.Spec : Prop :=
  ∀ n, P14576945002078775848.a n = A193730 n

end A193730

/-! ## A193730.P9466516703971922921

`A193731(A061579(n))`
-/

namespace A193730.P9466516703971922921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193731 (A061579 n).toNat

end

end A193730.P9466516703971922921

namespace A193730

/-- `A193731(A061579(n))` -/
def P9466516703971922921.Spec : Prop :=
  ∀ n, P9466516703971922921.a n = A193730 n

end A193730

/-!
# A193731: Mirror of the triangle A193730.

The programs for A193731, the canonical program `A193731.P14502063409570705098` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193731 has offset 0).

The definition of A193731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193731.P14502063409570705098

`2*T(n-1,k-1)+3*T(n-1,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193731

/-- `2*T(n-1,k-1)+3*T(n-1,k)` -/
def P14502063409570705098.Spec : Prop :=
  ∀ n, (P14502063409570705098.a n : ℤ) = A193731 n

theorem P14502063409570705098.correct : P14502063409570705098.Spec := by
  intro n
  simp only [A193731]

end A193731

/-! ## A193731.P8953257341104184394

`A059268(n)*A136158(n)`
-/

namespace A193731.P8953257341104184394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A136158 n

end

end A193731.P8953257341104184394

namespace A193731

/-- `A059268(n)*A136158(n)` -/
def P8953257341104184394.Spec : Prop :=
  ∀ n, P8953257341104184394.a n = A193731 n

end A193731

/-! ## A193731.P2833819663882878290

`abs(A059268(n)*A164948(n))`
-/

namespace A193731.P2833819663882878290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A164948 n|

end

end A193731.P2833819663882878290

namespace A193731

/-- `abs(A059268(n)*A164948(n))` -/
def P2833819663882878290.Spec : Prop :=
  ∀ n, P2833819663882878290.a n = A193731 n

end A193731

/-! ## A193731.P4382779368826947145

`A000079(A002262(n))*A136158(n)`
-/

namespace A193731.P4382779368826947145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A136158 n

end

end A193731.P4382779368826947145

namespace A193731

/-- `A000079(A002262(n))*A136158(n)` -/
def P4382779368826947145.Spec : Prop :=
  ∀ n, P4382779368826947145.a n = A193731 n

end A193731

/-! ## A193731.P3935576340077963905

`A193730(A061579(n))`
-/

namespace A193731.P3935576340077963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193730 (A061579 n).toNat

end

end A193731.P3935576340077963905

namespace A193731

/-- `A193730(A061579(n))` -/
def P3935576340077963905.Spec : Prop :=
  ∀ n, P3935576340077963905.a n = A193731 n

end A193731

/-! ## A193731.P7002534696992103316

`A038763(A061579(n))*A059268(n)`
-/

namespace A193731.P7002534696992103316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A061579 n).toNat * A059268 n

end

end A193731.P7002534696992103316

namespace A193731

/-- `A038763(A061579(n))*A059268(n)` -/
def P7002534696992103316.Spec : Prop :=
  ∀ n, P7002534696992103316.a n = A193731 n

end A193731

/-! ## A193731.P2985831111559435798

`abs(A003958(A036561(n))*A164948(n))`
-/

namespace A193731.P2985831111559435798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003958 (A036561 n).toNat * A164948 n|

end

end A193731.P2985831111559435798

namespace A193731

/-- `abs(A003958(A036561(n))*A164948(n))` -/
def P2985831111559435798.Spec : Prop :=
  ∀ n, P2985831111559435798.a n = A193731 n

end A193731

/-!
# A193732: Connell-like sequence.

The programs for A193732, the canonical program `A193732.P11178483245691745026` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193732 has offset 1).

The definition of A193732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193732.P11941975850762208529

`∑[2-char[A007504(n)]]`
-/

namespace A193732.P11941975850762208529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P11941975850762208529

namespace A193732

/-- `∑[2-char[A007504(n)]]` -/
def P11941975850762208529.Spec : Prop :=
  ∀ n, P11941975850762208529.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P16217883436364821969

`Δ[n²]-A350174(n)`
-/

namespace A193732.P16217883436364821969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A350174 n

end

end A193732.P16217883436364821969

namespace A193732

/-- `Δ[n²]-A350174(n)` -/
def P16217883436364821969.Spec : Prop :=
  ∀ n, P16217883436364821969.a n = A193732 (n + 1)

theorem P16217883436364821969.correct : P16217883436364821969.Spec := by
  intro n
  simp only [A193732, Nat.add_sub_cancel, A193732.P16217883436364821969.f1, A193732.P16217883436364821969.a, A193732.P11178483245691745026.a, A083375, A083375.P6337784781424164042.f5, A083375.P6337784781424164042.f4, A083375.P6337784781424164042.f3, A083375.P6337784781424164042.f2, A083375.P6337784781424164042.f1, A083375.P6337784781424164042.a, A350174, A350174.P7572847409487358877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193732

/-! ## A193732.P6005750042582784273

`∑[abs(A226520(n+1))+1]`
-/

namespace A193732.P6005750042582784273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226520 (n + 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P6005750042582784273

namespace A193732

/-- `∑[abs(A226520(n+1))+1]` -/
def P6005750042582784273.Spec : Prop :=
  ∀ n, P6005750042582784273.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P16289102016439753891

`∑[2-char[A034387(n+1)]]`
-/

namespace A193732.P16289102016439753891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P16289102016439753891

namespace A193732

/-- `∑[2-char[A034387(n+1)]]` -/
def P16289102016439753891.Spec : Prop :=
  ∀ n, P16289102016439753891.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P14858393334705930660

`∑[2-char[A063960(n+1)]]`
-/

namespace A193732.P14858393334705930660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P14858393334705930660

namespace A193732

/-- `∑[2-char[A063960(n+1)]]` -/
def P14858393334705930660.Spec : Prop :=
  ∀ n, P14858393334705930660.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P15600110444743615013

`comp[comp[A007504(n+1)]+n]`
-/

namespace A193732.P15600110444743615013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193732.P15600110444743615013

namespace A193732

/-- `comp[comp[A007504(n+1)]+n]` -/
def P15600110444743615013.Spec : Prop :=
  ∀ n, (P15600110444743615013.a n : ℤ) = A193732 (n + 1)

end A193732

/-! ## A193732.P10925673542457691661

`comp[comp[∑[A000040(n+1)]]+n]`
-/

namespace A193732.P10925673542457691661
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193732.P10925673542457691661

namespace A193732

/-- `comp[comp[∑[A000040(n+1)]]+n]` -/
def P10925673542457691661.Spec : Prop :=
  ∀ n, (P10925673542457691661.a n : ℤ) = A193732 (n + 1)

end A193732

/-! ## A193732.P11178483245691745026

`2*(n+1)-A083375(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193732

/-- `2*(n+1)-A083375(n+1)` -/
def P11178483245691745026.Spec : Prop :=
  ∀ n, P11178483245691745026.a n = A193732 (n + 1)

theorem P11178483245691745026.correct : P11178483245691745026.Spec := by
  intro n
  simp only [A193732, Nat.add_sub_cancel]

end A193732

/-! ## A193732.P1076437688331865884

`comp[comp[∑[A006093(n+1)+1]]+n]`
-/

namespace A193732.P1076437688331865884
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193732.P1076437688331865884

namespace A193732

/-- `comp[comp[∑[A006093(n+1)+1]]+n]` -/
def P1076437688331865884.Spec : Prop :=
  ∀ n, (P1076437688331865884.a n : ℤ) = A193732 (n + 1)

end A193732

/-! ## A193732.P16203199397494695166

`2*n-∑[char[∑[A008578(n+2)]]]+1`
-/

namespace A193732.P16203199397494695166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A193732.P16203199397494695166

namespace A193732

/-- `2*n-∑[char[∑[A008578(n+2)]]]+1` -/
def P16203199397494695166.Spec : Prop :=
  ∀ n, P16203199397494695166.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P5406062700367553832

`A000290(n+1)-(A350174(n)+A000290(n))`
-/

namespace A193732.P5406062700367553832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A350174 n + A000290 n)

end

end A193732.P5406062700367553832

namespace A193732

/-- `A000290(n+1)-(A350174(n)+A000290(n))` -/
def P5406062700367553832.Spec : Prop :=
  ∀ n, P5406062700367553832.a n = A193732 (n + 1)

theorem P5406062700367553832.correct : P5406062700367553832.Spec := by
  intro n
  simp only [A193732, Nat.add_sub_cancel, A193732.P5406062700367553832.a, A193732.P11178483245691745026.a, A000290, A000290.P12206242496348924484.a, A083375, A083375.P6337784781424164042.f5, A083375.P6337784781424164042.f4, A083375.P6337784781424164042.f3, A083375.P6337784781424164042.f2, A083375.P6337784781424164042.f1, A083375.P6337784781424164042.a, A350174, A350174.P7572847409487358877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193732

/-! ## A193732.P4713606996713827146

`∑[A268921(n+1)²+1]`
-/

namespace A193732.P4713606996713827146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268921 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P4713606996713827146

namespace A193732

/-- `∑[A268921(n+1)²+1]` -/
def P4713606996713827146.Spec : Prop :=
  ∀ n, P4713606996713827146.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P15882950850684740625

`∑[A327277(n+1)%2+1]`
-/

namespace A193732.P15882950850684740625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327277 (n + 1)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P15882950850684740625

namespace A193732

/-- `∑[A327277(n+1)%2+1]` -/
def P15882950850684740625.Spec : Prop :=
  ∀ n, P15882950850684740625.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P10773132807676249659

`∑[2-A001222(A178623(n+1))]`
-/

namespace A193732.P10773132807676249659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (A178623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P10773132807676249659

namespace A193732

/-- `∑[2-A001222(A178623(n+1))]` -/
def P10773132807676249659.Spec : Prop :=
  ∀ n, P10773132807676249659.a n = A193732 (n + 1)

end A193732

/-! ## A193732.P14522809677337628275

`∑[A178623(A006093(A178623(n+1)))]`
-/

namespace A193732.P14522809677337628275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178623 (A006093 (A178623 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193732.P14522809677337628275

namespace A193732

/-- `∑[A178623(A006093(A178623(n+1)))]` -/
def P14522809677337628275.Spec : Prop :=
  ∀ n, P14522809677337628275.a n = A193732 (n + 1)

end A193732

/-!
# A193734: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(2x+1)^n and q(n,x)=(x+2)^n.

The programs for A193734, the canonical program `A193734.P9600871570133858842` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193734 has offset 0).

The definition of A193734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193734.P9600871570133858842

`4*T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193734

/-- `4*T(n-1,k-1)+T(n-1,k)` -/
def P9600871570133858842.Spec : Prop :=
  ∀ n, (P9600871570133858842.a n : ℤ) = A193734 n

theorem P9600871570133858842.correct : P9600871570133858842.Spec := by
  intro n
  simp only [A193734]

end A193734

/-! ## A193734.P6747587930518929038

`T(n-1,k)-2*(T(n-1,k-1)-3*T(n-1,k-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A193734.P6747587930518929038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUpLeft a n - 3 * SequenceMachineLib.triUpLeft a n)

end

end A193734.P6747587930518929038

namespace A193734

/-- `T(n-1,k)-2*(T(n-1,k-1)-3*T(n-1,k-1))` -/
def P6747587930518929038.Spec : Prop :=
  ∀ n, P6747587930518929038.a n = A193734 n

end A193734

/-! ## A193734.P17675012511319308279

`A059268(n)*A081277(n)`
-/

namespace A193734.P17675012511319308279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A081277 n

end

end A193734.P17675012511319308279

namespace A193734

/-- `A059268(n)*A081277(n)` -/
def P17675012511319308279.Spec : Prop :=
  ∀ n, P17675012511319308279.a n = A193734 n

end A193734

/-! ## A193734.P2889867444396413567

`abs(A059268(n)*A079628(n))`
-/

namespace A193734.P2889867444396413567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A079628 n|

end

end A193734.P2889867444396413567

namespace A193734

/-- `abs(A059268(n)*A079628(n))` -/
def P2889867444396413567.Spec : Prop :=
  ∀ n, P2889867444396413567.a n = A193734 n

end A193734

/-! ## A193734.P856958567403607940

`A185045(n+1)*A232089(n)`
-/

namespace A193734.P856958567403607940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185045 (n + 1) * A232089 n

end

end A193734.P856958567403607940

namespace A193734

/-- `A185045(n+1)*A232089(n)` -/
def P856958567403607940.Spec : Prop :=
  ∀ n, P856958567403607940.a n = A193734 n

end A193734

/-! ## A193734.P13518213555262454291

`A000079(A002262(n))*A081277(n)`
-/

namespace A193734.P13518213555262454291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A081277 n

end

end A193734.P13518213555262454291

namespace A193734

/-- `A000079(A002262(n))*A081277(n)` -/
def P13518213555262454291.Spec : Prop :=
  ∀ n, P13518213555262454291.a n = A193734 n

end A193734

/-! ## A193734.P2650752861023334208

`A079628(n)*A122803(A002262(n))`
-/

namespace A193734.P2650752861023334208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079628 n * A122803 (A002262 n).toNat

end

end A193734.P2650752861023334208

namespace A193734

/-- `A079628(n)*A122803(A002262(n))` -/
def P2650752861023334208.Spec : Prop :=
  ∀ n, P2650752861023334208.a n = A193734 n

end A193734

/-! ## A193734.P8899806103063171289

`A193735(A061579(n))`
-/

namespace A193734.P8899806103063171289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193735 (A061579 n).toNat

end

end A193734.P8899806103063171289

namespace A193734

/-- `A193735(A061579(n))` -/
def P8899806103063171289.Spec : Prop :=
  ∀ n, P8899806103063171289.a n = A193734 n

end A193734

/-! ## A193734.P12509671970348280113

`A081277(n)*A130321(A061579(n))`
-/

namespace A193734.P12509671970348280113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 n * A130321 (A061579 n).toNat

end

end A193734.P12509671970348280113

namespace A193734

/-- `A081277(n)*A130321(A061579(n))` -/
def P12509671970348280113.Spec : Prop :=
  ∀ n, P12509671970348280113.a n = A193734 n

end A193734

/-! ## A193734.P16919596214473776034

`A059268(n)*A200139(A061579(n))`
-/

namespace A193734.P16919596214473776034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A200139 (A061579 n).toNat

end

end A193734.P16919596214473776034

namespace A193734

/-- `A059268(n)*A200139(A061579(n))` -/
def P16919596214473776034.Spec : Prop :=
  ∀ n, P16919596214473776034.a n = A193734 n

end A193734

/-! ## A193734.P18374506430632113718

`A000010(A059268(n))*A185045(n+1)`
-/

namespace A193734.P18374506430632113718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A185045 (n + 1)

end

end A193734.P18374506430632113718

namespace A193734

/-- `A000010(A059268(n))*A185045(n+1)` -/
def P18374506430632113718.Spec : Prop :=
  ∀ n, P18374506430632113718.a n = A193734 n

end A193734

/-!
# A193735: Mirror of the triangle A193734.

The programs for A193735, the canonical program `A193735.P14890065270986245984` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193735 has offset 0).

The definition of A193735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193735.P14890065270986245984

`T(n-1,k-1)+4*T(n-1,k)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193735

/-- `T(n-1,k-1)+4*T(n-1,k)` -/
def P14890065270986245984.Spec : Prop :=
  ∀ n, (P14890065270986245984.a n : ℤ) = A193735 n

theorem P14890065270986245984.correct : P14890065270986245984.Spec := by
  intro n
  simp only [A193735]

end A193735

/-! ## A193735.P9407260542949683251

`4*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A193735.P9407260542949683251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A193735.P9407260542949683251

namespace A193735

/-- `4*T(n-1,k)+T(n-1,k-1)` -/
def P9407260542949683251.Spec : Prop :=
  ∀ n, (P9407260542949683251.a n : ℤ) = A193735 n

end A193735

/-! ## A193735.P9628579729575770906

`T(n-1,k-1)-2*(T(n-1,k)-3*T(n-1,k))` with `a(0)=1, a(1)=2`
-/

namespace A193735.P9628579729575770906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * (SequenceMachineLib.triUp a n - 3 * SequenceMachineLib.triUp a n)

end

end A193735.P9628579729575770906

namespace A193735

/-- `T(n-1,k-1)-2*(T(n-1,k)-3*T(n-1,k))` -/
def P9628579729575770906.Spec : Prop :=
  ∀ n, P9628579729575770906.a n = A193735 n

end A193735

/-! ## A193735.P6287815036098780558

`A130321(n)*A200139(n)`
-/

namespace A193735.P6287815036098780558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A200139 n

end

end A193735.P6287815036098780558

namespace A193735

/-- `A130321(n)*A200139(n)` -/
def P6287815036098780558.Spec : Prop :=
  ∀ n, P6287815036098780558.a n = A193735 n

end A193735

/-! ## A193735.P9766150487507619056

`abs(A118800(n)*A130321(n))`
-/

namespace A193735.P9766150487507619056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118800 n * A130321 n|

end

end A193735.P9766150487507619056

namespace A193735

/-- `abs(A118800(n)*A130321(n))` -/
def P9766150487507619056.Spec : Prop :=
  ∀ n, P9766150487507619056.a n = A193735 n

end A193735

/-! ## A193735.P12150228525642237734

`sqrt(A262616(n))*A200139(n)`
-/

namespace A193735.P12150228525642237734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A200139 n : ℝ)

end

end A193735.P12150228525642237734

namespace A193735

/-- `sqrt(A262616(n))*A200139(n)` -/
def P12150228525642237734.Spec : Prop :=
  ∀ n, P12150228525642237734.a n = (A193735 n : ℝ)

end A193735

/-! ## A193735.P12184143713450618525

`A029635(n)/2*A130321(n)²`
-/

namespace A193735.P12184143713450618525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029635 n : ℚ) / 2 * (A130321 n ^ 2 : ℚ)

end

end A193735.P12184143713450618525

namespace A193735

/-- `A029635(n)/2*A130321(n)²` -/
def P12184143713450618525.Spec : Prop :=
  ∀ n, P12184143713450618525.a n = (A193735 n : ℚ)

end A193735

/-! ## A193735.P13784063606174083926

`A000079(A025581(n))*A200139(n)`
-/

namespace A193735.P13784063606174083926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A200139 n

end

end A193735.P13784063606174083926

namespace A193735

/-- `A000079(A025581(n))*A200139(n)` -/
def P13784063606174083926.Spec : Prop :=
  ∀ n, P13784063606174083926.a n = A193735 n

end A193735

/-! ## A193735.P507512053676557732

`A059268(A061579(n))*A200139(n)`
-/

namespace A193735.P507512053676557732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A200139 n

end

end A193735.P507512053676557732

namespace A193735

/-- `A059268(A061579(n))*A200139(n)` -/
def P507512053676557732.Spec : Prop :=
  ∀ n, P507512053676557732.a n = A193735 n

end A193735

/-! ## A193735.P14437013756657733022

`A193734(A061579(n))`
-/

namespace A193735.P14437013756657733022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193734 (A061579 n).toNat

end

end A193735.P14437013756657733022

namespace A193735

/-- `A193734(A061579(n))` -/
def P14437013756657733022.Spec : Prop :=
  ∀ n, P14437013756657733022.a n = A193735 n

end A193735

/-! ## A193735.P5838356616992046810

`A193734(A038722(n+1)-1)`
-/

namespace A193735.P5838356616992046810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193734 (A038722 (n + 1) - 1).toNat

end

end A193735.P5838356616992046810

namespace A193735

/-- `A193734(A038722(n+1)-1)` -/
def P5838356616992046810.Spec : Prop :=
  ∀ n, P5838356616992046810.a n = A193735 n

end A193735

/-! ## A193735.P16967511121885465443

`A081277(A061579(n))*A130321(n)`
-/

namespace A193735.P16967511121885465443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A061579 n).toNat * A130321 n

end

end A193735.P16967511121885465443

namespace A193735

/-- `A081277(A061579(n))*A130321(n)` -/
def P16967511121885465443.Spec : Prop :=
  ∀ n, P16967511121885465443.a n = A193735 n

end A193735

/-! ## A193735.P12998686843497584786

`A193734(A038722(n+2))`
-/

namespace A193735.P12998686843497584786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193734 (A038722 (n + 2)).toNat

end

end A193735.P12998686843497584786

namespace A193735

/-- `A193734(A038722(n+2))` -/
def P12998686843497584786.Spec : Prop :=
  ∀ n, P12998686843497584786.a n = A193735 n

end A193735

/-!
# A193736: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = (n+1)-st Fibonacci polynomial and q(n,x) = (x+1)^n.

The programs for A193736, the canonical program `A193736.P14164612170582133847` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193736 has offset 0).

The definition of A193736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193736.P10983783852227642204

`A209151(A271439(n)+char[∑[n]])`
-/

namespace A193736.P10983783852227642204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (A271439 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A193736.P10983783852227642204

namespace A193736

/-- `A209151(A271439(n)+char[∑[n]])` -/
def P10983783852227642204.Spec : Prop :=
  ∀ n, P10983783852227642204.a n = A193736 n

end A193736

/-! ## A193736.P14164612170582133847

`A209151(gcd(A010816(n), A083920(n)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A193736

/-- `A209151(gcd(A010816(n), A083920(n)))` -/
def P14164612170582133847.Spec : Prop :=
  ∀ n, P14164612170582133847.a n = A193736 n

theorem P14164612170582133847.correct : P14164612170582133847.Spec := by
  intro n
  simp only [A193736]

end A193736

/-! ## A193736.P9608949177763950299

`A209151(or(A010054(n), A271439(n)))`
-/

namespace A193736.P9608949177763950299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (Int.lor (A010054 n) (A271439 n)).toNat

end

end A193736.P9608949177763950299

namespace A193736

/-- `A209151(or(A010054(n), A271439(n)))` -/
def P9608949177763950299.Spec : Prop :=
  ∀ n, P9608949177763950299.a n = A193736 n

end A193736

/-! ## A193736.P2896736190084463266

`A209151(xor(A010054(n), A271439(n)))`
-/

namespace A193736.P2896736190084463266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (Int.xor (A010054 n) (A271439 n)).toNat

end

end A193736.P2896736190084463266

namespace A193736

/-- `A209151(xor(A010054(n), A271439(n)))` -/
def P2896736190084463266.Spec : Prop :=
  ∀ n, P2896736190084463266.a n = A193736 n

end A193736

/-! ## A193736.P4209427958600251004

`A209151(abs(A010054(n)-A271439(n)))`
-/

namespace A193736.P4209427958600251004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 |A010054 n - A271439 n|.toNat

end

end A193736.P4209427958600251004

namespace A193736

/-- `A209151(abs(A010054(n)-A271439(n)))` -/
def P4209427958600251004.Spec : Prop :=
  ∀ n, P4209427958600251004.a n = A193736 n

end A193736

/-! ## A193736.P12405367369598507014

`A193737(A002378(n)%A080036(n))`
-/

namespace A193736.P12405367369598507014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A193736.P12405367369598507014

namespace A193736

/-- `A193737(A002378(n)%A080036(n))` -/
def P12405367369598507014.Spec : Prop :=
  ∀ n, P12405367369598507014.a n = A193736 n

end A193736

/-! ## A193736.P8559468773121771569

`A193737(A061579(n))`
-/

namespace A193736.P8559468773121771569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (A061579 n).toNat

end

end A193736.P8559468773121771569

namespace A193736

/-- `A193737(A061579(n))` -/
def P8559468773121771569.Spec : Prop :=
  ∀ n, P8559468773121771569.a n = A193736 n

end A193736

/-! ## A193736.P16020323983132459350

`A155161(A038722(n+1))+A155161(A061579(n))`
-/

namespace A193736.P16020323983132459350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat + A155161 (A061579 n).toNat

end

end A193736.P16020323983132459350

namespace A193736

/-- `A155161(A038722(n+1))+A155161(A061579(n))` -/
def P16020323983132459350.Spec : Prop :=
  ∀ n, P16020323983132459350.a n = A193736 n

end A193736

/-!
# A193737: Mirror of the triangle A193736.

The programs for A193737, the canonical program `A193737.P8250066242998762577` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193737 has offset 0).

The definition of A193737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193737.P8250066242998762577

`T(n-1,k)+T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193737

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k)` -/
def P8250066242998762577.Spec : Prop :=
  ∀ n, (P8250066242998762577.a n : ℤ) = A193737 n

theorem P8250066242998762577.correct : P8250066242998762577.Spec := by
  intro n
  simp only [A193737]

end A193737

/-! ## A193737.P5986360800591338217

`gcd(A122075(n)-A055830(n), C(2, n))`
-/

namespace A193737.P5986360800591338217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122075 n - A055830 n) (Nat.choose 2 n : ℤ)

end

end A193737.P5986360800591338217

namespace A193737

/-- `gcd(A122075(n)-A055830(n), C(2, n))` -/
def P5986360800591338217.Spec : Prop :=
  ∀ n, (P5986360800591338217.a n : ℤ) = A193737 n

end A193737

/-! ## A193737.P9276683561589351129

`A122075(round(sqrt(n²+1)))-A055830(n)`
-/

namespace A193737.P9276683561589351129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A055830 n

end

end A193737.P9276683561589351129

namespace A193737

/-- `A122075(round(sqrt(n²+1)))-A055830(n)` -/
def P9276683561589351129.Spec : Prop :=
  ∀ n, P9276683561589351129.a n = A193737 n

end A193737

/-! ## A193737.P16759246003712114700

`C(2, n+2)+A207632(n+1)-A037027(n)`
-/

namespace A193737.P16759246003712114700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A207632 (n + 1) - A037027 n)

end

end A193737.P16759246003712114700

namespace A193737

/-- `C(2, n+2)+A207632(n+1)-A037027(n)` -/
def P16759246003712114700.Spec : Prop :=
  ∀ n, P16759246003712114700.a n = A193737 n

end A193737

/-! ## A193737.P13666340592019112855

`A122075(n)-(A037027(n)-A155161(n))`
-/

namespace A193737.P13666340592019112855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 n - (A037027 n - A155161 n)

end

end A193737.P13666340592019112855

namespace A193737

/-- `A122075(n)-(A037027(n)-A155161(n))` -/
def P13666340592019112855.Spec : Prop :=
  ∀ n, P13666340592019112855.a n = A193737 n

end A193737

/-! ## A193737.P6284867244397639467

`(A122075(n)-A055830(n))^and(1, A000040(n+1))`
-/

namespace A193737.P6284867244397639467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122075 n - A055830 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A193737.P6284867244397639467

namespace A193737

/-- `(A122075(n)-A055830(n))^and(1, A000040(n+1))` -/
def P6284867244397639467.Spec : Prop :=
  ∀ n, P6284867244397639467.a n = (A193737 n : ℚ)

end A193737

/-! ## A193737.P14956041032933464367

`A155161(n+1)+A155161(n)`
-/

namespace A193737.P14956041032933464367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A155161 n

end

end A193737.P14956041032933464367

namespace A193737

/-- `A155161(n+1)+A155161(n)` -/
def P14956041032933464367.Spec : Prop :=
  ∀ n, P14956041032933464367.a n = A193737 n

end A193737

/-! ## A193737.P2468488385824947272

`A193736(A061579(n))`
-/

namespace A193737.P2468488385824947272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193736 (A061579 n).toNat

end

end A193737.P2468488385824947272

namespace A193737

/-- `A193736(A061579(n))` -/
def P2468488385824947272.Spec : Prop :=
  ∀ n, P2468488385824947272.a n = A193737 n

end A193737

/-! ## A193737.P18167200178865270969

`A193736(A038722(n+1)-1)`
-/

namespace A193737.P18167200178865270969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193736 (A038722 (n + 1) - 1).toNat

end

end A193737.P18167200178865270969

namespace A193737

/-- `A193736(A038722(n+1)-1)` -/
def P18167200178865270969.Spec : Prop :=
  ∀ n, P18167200178865270969.a n = A193737 n

end A193737

/-! ## A193737.P17712071709481193399

`A193736(A038722(n+2))`
-/

namespace A193737.P17712071709481193399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193736 (A038722 (n + 2)).toNat

end

end A193737.P17712071709481193399

namespace A193737

/-- `A193736(A038722(n+2))` -/
def P17712071709481193399.Spec : Prop :=
  ∀ n, P17712071709481193399.a n = A193737 n

end A193737

/-! ## A193737.P1722981791161079681

`A122075(n)-A055830(n)%A000079(n)`
-/

namespace A193737.P1722981791161079681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 n - Int.tmod (A055830 n) (A000079 n)

end

end A193737.P1722981791161079681

namespace A193737

/-- `A122075(n)-A055830(n)%A000079(n)` -/
def P1722981791161079681.Spec : Prop :=
  ∀ n, P1722981791161079681.a n = A193737 n

end A193737

/-!
# A193738: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x)=x^n+x^(n-1)+...+x+1.

The programs for A193738, the canonical program `A193738.P15912685866539530359` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193738 has offset 0).

The definition of A193738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193738.P13649006134602916258

`1+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A193738.P13649006134602916258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 + SequenceMachineLib.triUpLeft a n

end

end A193738.P13649006134602916258

namespace A193738

/-- `1+T(n-1,k-1)` -/
def P13649006134602916258.Spec : Prop :=
  ∀ n, (P13649006134602916258.a n : ℤ) = A193738 n

end A193738

/-! ## A193738.P2468453060064083404

`T(n,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A193738.P2468453060064083404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n

end

end A193738.P2468453060064083404

namespace A193738

/-- `T(n,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P2468453060064083404.Spec : Prop :=
  ∀ n, P2468453060064083404.a n = A193738 n

end A193738

/-! ## A193738.P17961108232469223378

`T(n-1,k)+col(n)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A193738.P17961108232469223378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n : ℤ) - SequenceMachineLib.triUp2Left a n

end

end A193738.P17961108232469223378

namespace A193738

/-- `T(n-1,k)+col(n)-T(n-2,k-1)` -/
def P17961108232469223378.Spec : Prop :=
  ∀ n, P17961108232469223378.a n = A193738 n

end A193738

/-! ## A193738.P16932953231958216667

`col(n)+(1-C(col(n), row(n)))^col(n)`
-/

namespace A193738.P16932953231958216667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) + (1 - (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) : ℤ)) ^ SequenceMachineLib.triCol n

end

end A193738.P16932953231958216667

namespace A193738

/-- `col(n)+(1-C(col(n), row(n)))^col(n)` -/
def P16932953231958216667.Spec : Prop :=
  ∀ n, P16932953231958216667.a n = A193738 n

end A193738

/-! ## A193738.P12423745817051278113

`A002260(n+1)-char[∑[n+2]]`
-/

namespace A193738.P12423745817051278113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193738.P12423745817051278113

namespace A193738

/-- `A002260(n+1)-char[∑[n+2]]` -/
def P12423745817051278113.Spec : Prop :=
  ∀ n, P12423745817051278113.a n = A193738 n

end A193738

/-! ## A193738.P12780809940559713439

`A002262(n)-char[∑[n+2]]+1`
-/

namespace A193738.P12780809940559713439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1

end

end A193738.P12780809940559713439

namespace A193738

/-- `A002262(n)-char[∑[n+2]]+1` -/
def P12780809940559713439.Spec : Prop :=
  ∀ n, P12780809940559713439.a n = A193738 n

end A193738

/-! ## A193738.P15912685866539530359

`A002260(A132128(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193738

/-- `A002260(A132128(n+1))` -/
def P15912685866539530359.Spec : Prop :=
  ∀ n, P15912685866539530359.a n = A193738 n

theorem P15912685866539530359.correct : P15912685866539530359.Spec := by
  intro n
  simp only [A193738]

end A193738

/-! ## A193738.P5594561212775748861

`A002260(A051340(n)+n)`
-/

namespace A193738.P5594561212775748861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A051340 n + (n : ℤ)).toNat

end

end A193738.P5594561212775748861

namespace A193738

/-- `A002260(A051340(n)+n)` -/
def P5594561212775748861.Spec : Prop :=
  ∀ n, P5594561212775748861.a n = A193738 n

end A193738

/-! ## A193738.P16220872438709920786

`A002260(Δ[A063656(n)]+n)`
-/

namespace A193738.P16220872438709920786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193738.P16220872438709920786

namespace A193738

/-- `A002260(Δ[A063656(n)]+n)` -/
def P16220872438709920786.Spec : Prop :=
  ∀ n, P16220872438709920786.a n = A193738 n

theorem P16220872438709920786.correct : P16220872438709920786.Spec := by
  intro n
  simp only [A193738, Nat.add_sub_cancel, A193738.P16220872438709920786.f1, A193738.P16220872438709920786.a, A193738.P15912685866539530359.a, A002260, A002260.P9170571874073898642.a, A063656, A063656.P12975644958192867276.a, A132128, A132128.P11388277187391197128.a, A051340, A051340.P12139667505008801635.f1, A051340.P12139667505008801635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193738

/-! ## A193738.P17941779336614422827

`A002260(A134402(n)+1+n)`
-/

namespace A193738.P17941779336614422827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A134402 n + 1 + (n : ℤ)).toNat

end

end A193738.P17941779336614422827

namespace A193738

/-- `A002260(A134402(n)+1+n)` -/
def P17941779336614422827.Spec : Prop :=
  ∀ n, P17941779336614422827.a n = A193738 n

end A193738

/-! ## A193738.P6605689570042016533

`A134402(n)+A048151(n+1)`
-/

namespace A193738.P6605689570042016533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 n + A048151 (n + 1)

end

end A193738.P6605689570042016533

namespace A193738

/-- `A134402(n)+A048151(n+1)` -/
def P6605689570042016533.Spec : Prop :=
  ∀ n, P6605689570042016533.a n = A193738 n

end A193738

/-! ## A193738.P9906759955258538454

`A128219(n+1)+A057428(n)`
-/

namespace A193738.P9906759955258538454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (n + 1) + A057428 n

end

end A193738.P9906759955258538454

namespace A193738

/-- `A128219(n+1)+A057428(n)` -/
def P9906759955258538454.Spec : Prop :=
  ∀ n, P9906759955258538454.a n = A193738 n

end A193738

/-! ## A193738.P3799946211074037181

`A128219(n+1)-A057427(n)`
-/

namespace A193738.P3799946211074037181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (n + 1) - A057427 n

end

end A193738.P3799946211074037181

namespace A193738

/-- `A128219(n+1)-A057427(n)` -/
def P3799946211074037181.Spec : Prop :=
  ∀ n, P3799946211074037181.a n = A193738 n

end A193738

/-! ## A193738.P9905847708351403997

`A134478(n)-A052146(n+1)`
-/

namespace A193738.P9905847708351403997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n - A052146 (n + 1)

end

end A193738.P9905847708351403997

namespace A193738

/-- `A134478(n)-A052146(n+1)` -/
def P9905847708351403997.Spec : Prop :=
  ∀ n, P9905847708351403997.a n = A193738 n

end A193738

/-! ## A193738.P17216895096972891069

`A144328(n+1)+1-A103451(n)`
-/

namespace A193738.P17216895096972891069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + (1 - A103451 n)

end

end A193738.P17216895096972891069

namespace A193738

/-- `A144328(n+1)+1-A103451(n)` -/
def P17216895096972891069.Spec : Prop :=
  ∀ n, P17216895096972891069.a n = A193738 n

end A193738

/-! ## A193738.P11599177703268612960

`A002260(abs(A003056(n+1)-n)+1)`
-/

namespace A193738.P11599177703268612960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (|A003056 (n + 1) - (n : ℤ)| + 1).toNat

end

end A193738.P11599177703268612960

namespace A193738

/-- `A002260(abs(A003056(n+1)-n)+1)` -/
def P11599177703268612960.Spec : Prop :=
  ∀ n, P11599177703268612960.a n = A193738 n

end A193738

/-! ## A193738.P3482090337020511610

`A002260(A034856(A128219(n+1)))`
-/

namespace A193738.P3482090337020511610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A034856 (A128219 (n + 1)).toNat).toNat

end

end A193738.P3482090337020511610

namespace A193738

/-- `A002260(A034856(A128219(n+1)))` -/
def P3482090337020511610.Spec : Prop :=
  ∀ n, P3482090337020511610.a n = A193738 n

end A193738

/-! ## A193738.P12696974980331636517

`A057428(n)+A023532(n)+A002260(n+1)`
-/

namespace A193738.P12696974980331636517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A023532 n + A002260 (n + 1)

end

end A193738.P12696974980331636517

namespace A193738

/-- `A057428(n)+A023532(n)+A002260(n+1)` -/
def P12696974980331636517.Spec : Prop :=
  ∀ n, P12696974980331636517.a n = A193738 n

end A193738

/-! ## A193738.P7969917630266530981

`A023532(n)+A002260(n+1)-A057427(n)`
-/

namespace A193738.P7969917630266530981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n + A002260 (n + 1) - A057427 n

end

end A193738.P7969917630266530981

namespace A193738

/-- `A023532(n)+A002260(n+1)-A057427(n)` -/
def P7969917630266530981.Spec : Prop :=
  ∀ n, P7969917630266530981.a n = A193738 n

end A193738

/-! ## A193738.P8965960326749933967

`A002260(n+1)*A054977(n)-A010054(n+1)`
-/

namespace A193738.P8965960326749933967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054977 n - A010054 (n + 1)

end

end A193738.P8965960326749933967

namespace A193738

/-- `A002260(n+1)*A054977(n)-A010054(n+1)` -/
def P8965960326749933967.Spec : Prop :=
  ∀ n, P8965960326749933967.a n = A193738 n

end A193738

/-!
# A193739: Mirror of the triangle A193738.

The programs for A193739, the canonical program `A193739.P1597501357748841903` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193739 has offset 0).

The definition of A193739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193739.P9019614009349243777

`1+T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A193739.P9019614009349243777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + SequenceMachineLib.triUp a n

end

end A193739.P9019614009349243777

namespace A193739

/-- `1+T(n-1,k)` -/
def P9019614009349243777.Spec : Prop :=
  ∀ n, (P9019614009349243777.a n : ℤ) = A193739 n

end A193739

/-! ## A193739.P14578741358433917197

`1-(T(n-2,k)-T(n-1,k))*T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A193739.P14578741358433917197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  1 - (SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp a n) * SequenceMachineLib.triUp a n

end

end A193739.P14578741358433917197

namespace A193739

/-- `1-(T(n-2,k)-T(n-1,k))*T(n-1,k)` -/
def P14578741358433917197.Spec : Prop :=
  ∀ n, P14578741358433917197.a n = A193739 n

end A193739

/-! ## A193739.P1374806708599517868

`T(n,k-1)+row(n)-(T(n-1,k-1)+col(n))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A193739.P1374806708599517868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triLeft a n + (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ))

end

end A193739.P1374806708599517868

namespace A193739

/-- `T(n,k-1)+row(n)-(T(n-1,k-1)+col(n))` -/
def P1374806708599517868.Spec : Prop :=
  ∀ n, P1374806708599517868.a n = A193739 n

end A193739

/-! ## A193739.P1540554331380518149

`row(n)-(1-col(n))*(T(n-1,k-1)-T(n,k-1))` with `a(0)=1`
-/

namespace A193739.P1540554331380518149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) - (1 - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triLeft a n)

end

end A193739.P1540554331380518149

namespace A193739

/-- `row(n)-(1-col(n))*(T(n-1,k-1)-T(n,k-1))` -/
def P1540554331380518149.Spec : Prop :=
  ∀ n, P1540554331380518149.a n = A193739 n

end A193739

/-! ## A193739.P8304151103200822474

`row(n)+(1-col(n))*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A193739.P8304151103200822474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) + (1 - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A193739.P8304151103200822474

namespace A193739

/-- `row(n)+(1-col(n))*(T(n-1,k-1)-T(n-2,k-1))` -/
def P8304151103200822474.Spec : Prop :=
  ∀ n, P8304151103200822474.a n = A193739 n

end A193739

/-! ## A193739.P6677621692511096613

`row(n)-(1-col(n))*(T(n-2,k-1)-T(n-1,k-1))` with `a(0)=1`
-/

namespace A193739.P6677621692511096613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) - (1 - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n)

end

end A193739.P6677621692511096613

namespace A193739

/-- `row(n)-(1-col(n))*(T(n-2,k-1)-T(n-1,k-1))` -/
def P6677621692511096613.Spec : Prop :=
  ∀ n, P6677621692511096613.a n = A193739 n

end A193739

/-! ## A193739.P238101102667836682

`T(n-1,k-1)+row(n)-(T(n-2,k-1)+col(n))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A193739.P238101102667836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triCol n : ℤ))

end

end A193739.P238101102667836682

namespace A193739

/-- `T(n-1,k-1)+row(n)-(T(n-2,k-1)+col(n))` -/
def P238101102667836682.Spec : Prop :=
  ∀ n, P238101102667836682.a n = A193739 n

end A193739

/-! ## A193739.P11903406085204560760

`A193592(char[∑[n]]+n)`
-/

namespace A193739.P11903406085204560760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A193739.P11903406085204560760

namespace A193739

/-- `A193592(char[∑[n]]+n)` -/
def P11903406085204560760.Spec : Prop :=
  ∀ n, P11903406085204560760.a n = A193739 n

end A193739

/-! ## A193739.P3786883932671542168

`A025581(n)+char[comp[∑[n+1]]]`
-/

namespace A193739.P3786883932671542168
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193739.P3786883932671542168

namespace A193739

/-- `A025581(n)+char[comp[∑[n+1]]]` -/
def P3786883932671542168.Spec : Prop :=
  ∀ n, P3786883932671542168.a n = A193739 n

end A193739

/-! ## A193739.P10142715428960998968

`A004736(char[∑[n+1]]+n+1)`
-/

namespace A193739.P10142715428960998968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A193739.P10142715428960998968

namespace A193739

/-- `A004736(char[∑[n+1]]+n+1)` -/
def P10142715428960998968.Spec : Prop :=
  ∀ n, P10142715428960998968.a n = A193739 n

end A193739

/-! ## A193739.P14168406919370627835

`A123110(n)+A025581(n)`
-/

namespace A193739.P14168406919370627835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n + A025581 n

end

end A193739.P14168406919370627835

namespace A193739

/-- `A123110(n)+A025581(n)` -/
def P14168406919370627835.Spec : Prop :=
  ∀ n, P14168406919370627835.a n = A193739 n

end A193739

/-! ## A193739.P246170136996534770

`A259477(n)/A135278(n)`
-/

namespace A193739.P246170136996534770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259477 n : ℚ) / (A135278 n : ℚ)

end

end A193739.P246170136996534770

namespace A193739

/-- `A259477(n)/A135278(n)` -/
def P246170136996534770.Spec : Prop :=
  ∀ n, P246170136996534770.a n = (A193739 n : ℚ)

end A193739

/-! ## A193739.P1597501357748841903

`A065033(A143956(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A193739

/-- `A065033(A143956(n+1)-1)` -/
def P1597501357748841903.Spec : Prop :=
  ∀ n, P1597501357748841903.a n = A193739 n

theorem P1597501357748841903.correct : P1597501357748841903.Spec := by
  intro n
  simp only [A193739]

end A193739

/-! ## A193739.P7299702708495036935

`A004736(n+1)-A073424(n)`
-/

namespace A193739.P7299702708495036935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A073424 n

end

end A193739.P7299702708495036935

namespace A193739

/-- `A004736(n+1)-A073424(n)` -/
def P7299702708495036935.Spec : Prop :=
  ∀ n, P7299702708495036935.a n = A193739 n

end A193739

/-! ## A193739.P1139936435768036211

`A025581(A073423(n)-1+n)`
-/

namespace A193739.P1139936435768036211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A073423 n - 1 + (n : ℤ)).toNat

end

end A193739.P1139936435768036211

namespace A193739

/-- `A025581(A073423(n)-1+n)` -/
def P1139936435768036211.Spec : Prop :=
  ∀ n, P1139936435768036211.a n = A193739 n

end A193739

/-! ## A193739.P2272705832423831444

`A025581(n-(1-A073423(n)))`
-/

namespace A193739.P2272705832423831444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - (1 - A073423 n)).toNat

end

end A193739.P2272705832423831444

namespace A193739

/-- `A025581(n-(1-A073423(n)))` -/
def P2272705832423831444.Spec : Prop :=
  ∀ n, P2272705832423831444.a n = A193739 n

end A193739

/-! ## A193739.P2002271532044767602

`1-(A073424(n)-A025581(n))`
-/

namespace A193739.P2002271532044767602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A073424 n - A025581 n)

end

end A193739.P2002271532044767602

namespace A193739

/-- `1-(A073424(n)-A025581(n))` -/
def P2002271532044767602.Spec : Prop :=
  ∀ n, P2002271532044767602.a n = A193739 n

end A193739

/-! ## A193739.P7546932691833823613

`A130303(n+1)%A102515(n)`
-/

namespace A193739.P7546932691833823613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130303 (n + 1)) (A102515 n)

end

end A193739.P7546932691833823613

namespace A193739

/-- `A130303(n+1)%A102515(n)` -/
def P7546932691833823613.Spec : Prop :=
  ∀ n, P7546932691833823613.a n = A193739 n

end A193739

/-! ## A193739.P1015398310954468277

`abs(A004736(n+1)-A073423(n))`
-/

namespace A193739.P1015398310954468277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) - A073423 n|

end

end A193739.P1015398310954468277

namespace A193739

/-- `abs(A004736(n+1)-A073423(n))` -/
def P1015398310954468277.Spec : Prop :=
  ∀ n, P1015398310954468277.a n = A193739 n

end A193739

/-! ## A193739.P8463917588719102531

`A003056(n)+2-A134868(n+1)`
-/

namespace A193739.P8463917588719102531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A134868 (n + 1))

end

end A193739.P8463917588719102531

namespace A193739

/-- `A003056(n)+2-A134868(n+1)` -/
def P8463917588719102531.Spec : Prop :=
  ∀ n, P8463917588719102531.a n = A193739 n

end A193739

/-!
# A193740: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x) in A193738.

The programs for A193740, there is no canonical definition to state claims against.
-/

/-! ## A193740.P17355296284941914826

`A193741(A061579(n*A123110(n)))`
-/

namespace A193740.P17355296284941914826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 (A061579 ((n : ℤ) * A123110 n).toNat).toNat

end

end A193740.P17355296284941914826

/-! ## A193740.P11296975070222606130

`A193741(A002378(n)%A080036(n))`
-/

namespace A193740.P11296975070222606130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A193740.P11296975070222606130

/-! ## A193740.P1755719364582709424

`A193741(gcd(A010816(n), A061579(n)))`
-/

namespace A193740.P1755719364582709424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 (Int.gcd (A010816 n) (A061579 n))

end

end A193740.P1755719364582709424

/-! ## A193740.P18151901492570257714

`A193741(A005843(∑[n])%A080036(n))`
-/

namespace A193740.P18151901492570257714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 (Int.tmod (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A080036 n)).toNat

end

end A193740.P18151901492570257714

/-! ## A193740.P6089555564212733768

`A193741(A061579(n)%∑[A158821(n)])`
-/

namespace A193740.P6089555564212733768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 (Int.tmod (A061579 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A193740.P6089555564212733768

/-! ## A193740.P15628453842060753822

`A193741(∑[2*n]%comp[∑[n]])`
-/

namespace A193740.P15628453842060753822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193740.P15628453842060753822

/-! ## A193740.P5924478637795202399

`A193741(∑[char[∑[n]]]²-n-1)`
-/

namespace A193740.P5924478637795202399
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193740.P5924478637795202399

/-!
# A193741: Mirror of the triangle A193740.

The programs for A193741, there is no canonical definition to state claims against.
-/

/-! ## A193741.P6422210075074438533

`A193740(∑[2*n]%comp[∑[n]])`
-/

namespace A193741.P6422210075074438533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193740 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193741.P6422210075074438533

/-! ## A193741.P5789584971305471243

`A193740(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193741.P5789584971305471243
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193740 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193741.P5789584971305471243

/-! ## A193741.P9579783786845004509

`xor(2, xor(2, A193740(A061579(n))))`
-/

namespace A193741.P9579783786845004509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A193740 (A061579 n).toNat))

end

end A193741.P9579783786845004509

/-! ## A193741.P15413666518808680016

`A193740(A061579(2*n-n))^floor(atan(n))`
-/

namespace A193741.P15413666518808680016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193740 (A061579 (2 * n - n)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A193741.P15413666518808680016

/-! ## A193741.P9159152392202138503

`A193740(A061579(n))%A003461(n)`
-/

namespace A193741.P9159152392202138503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193740 (A061579 n).toNat) (A003461 n)

end

end A193741.P9159152392202138503

/-! ## A193741.P10202364383980431034

`gcd(A000038(n), A193740(A061579(n)))`
-/

namespace A193741.P10202364383980431034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193740 (A061579 n).toNat)

end

end A193741.P10202364383980431034

/-! ## A193741.P7390227475274990907

`lcm(A087960(n), A193740(A061579(n)))`
-/

namespace A193741.P7390227475274990907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A193740 (A061579 n).toNat)

end

end A193741.P7390227475274990907

/-!
# A193744: Partial sum of Perrin numbers.

The programs for A193744, the canonical program `A193744.P12295441859421964604` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193744 has offset 0).

The definition of A193744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193744.P9963280189883917911

`ogf((3-x^2)/(1-x-x^2+x^4))`
-/

namespace A193744.P9963280189883917911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, -1, -1, 0, 1] n

end

end A193744.P9963280189883917911

namespace A193744

/-- `ogf((3-x^2)/(1-x-x^2+x^4))` -/
def P9963280189883917911.Spec : Prop :=
  ∀ n, P9963280189883917911.a n = A193744 n

end A193744

/-! ## A193744.P12295441859421964604

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=3, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193744

/-- `a(n-1)+a(n-2)-a(n-4)` -/
def P12295441859421964604.Spec : Prop :=
  ∀ n, P12295441859421964604.a n = A193744 n

theorem P12295441859421964604.correct : P12295441859421964604.Spec := by
  intro n
  simp only [A193744]

end A193744

/-! ## A193744.P9110931836521871836

`∑[ogf((-3+x^2)/(-1+x^2+x^3))]`
-/

namespace A193744.P9110931836521871836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, 0, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193744.P9110931836521871836

namespace A193744

/-- `∑[ogf((-3+x^2)/(-1+x^2+x^3))]` -/
def P9110931836521871836.Spec : Prop :=
  ∀ n, P9110931836521871836.a n = A193744 n

end A193744

/-! ## A193744.P14592939420337048958

`∑[a(n-2)+a(n-3)]` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A193744.P14592939420337048958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193744.P14592939420337048958

namespace A193744

/-- `∑[a(n-2)+a(n-3)]` -/
def P14592939420337048958.Spec : Prop :=
  ∀ n, (P14592939420337048958.a n : ℤ) = A193744 n

end A193744

/-! ## A193744.P14674474401513353997

`a(n-2)+a(n-3)+2` with `a(0)=3, a(1)=3, a(2)=5`
-/

namespace A193744.P14674474401513353997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 5] fun n a =>
  a (n - 2) + (a (n - 3) + 2)

end

end A193744.P14674474401513353997

namespace A193744

/-- `a(n-2)+a(n-3)+2` -/
def P14674474401513353997.Spec : Prop :=
  ∀ n, (P14674474401513353997.a n : ℤ) = A193744 n

end A193744

/-! ## A193744.P4414531781804713167

`∑[a(n-1)-(a(n-4)-a(n-2))]` with `a(0)=3, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A193744.P4414531781804713167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2, 3] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193744.P4414531781804713167

namespace A193744

/-- `∑[a(n-1)-(a(n-4)-a(n-2))]` -/
def P4414531781804713167.Spec : Prop :=
  ∀ n, P4414531781804713167.a n = A193744 n

end A193744

/-! ## A193744.P1280830529702068566

`∑[A001608(n)]`
-/

namespace A193744.P1280830529702068566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193744.P1280830529702068566

namespace A193744

/-- `∑[A001608(n)]` -/
def P1280830529702068566.Spec : Prop :=
  ∀ n, P1280830529702068566.a n = A193744 n

end A193744

/-! ## A193744.P16579643820747919547

`A001608(n+5)-2`
-/

namespace A193744.P16579643820747919547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 5) - 2

end

end A193744.P16579643820747919547

namespace A193744

/-- `A001608(n+5)-2` -/
def P16579643820747919547.Spec : Prop :=
  ∀ n, P16579643820747919547.a n = A193744 n

end A193744

/-! ## A193744.P6684680045871829871

`A290612(n+6)-3`
-/

namespace A193744.P6684680045871829871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290612 (n + 6) - 3

end

end A193744.P6684680045871829871

namespace A193744

/-- `A290612(n+6)-3` -/
def P6684680045871829871.Spec : Prop :=
  ∀ n, P6684680045871829871.a n = A193744 n

end A193744

/-! ## A193744.P6332082633242337266

`A054405(n+1)+A000931(n)`
-/

namespace A193744.P6332082633242337266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 1) + A000931 n

end

end A193744.P6332082633242337266

namespace A193744

/-- `A054405(n+1)+A000931(n)` -/
def P6332082633242337266.Spec : Prop :=
  ∀ n, P6332082633242337266.a n = A193744 n

end A193744

/-! ## A193744.P17044013471038448058

`A078027(n+2)+A054405(n+1)`
-/

namespace A193744.P17044013471038448058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2) + A054405 (n + 1)

end

end A193744.P17044013471038448058

namespace A193744

/-- `A078027(n+2)+A054405(n+1)` -/
def P17044013471038448058.Spec : Prop :=
  ∀ n, P17044013471038448058.a n = A193744 n

end A193744

/-! ## A193744.P15791124845219362113

`A168637(n+2)-A000931(n+1)`
-/

namespace A193744.P15791124845219362113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168637 (n + 2) - A000931 (n + 1)

end

end A193744.P15791124845219362113

namespace A193744

/-- `A168637(n+2)-A000931(n+1)` -/
def P15791124845219362113.Spec : Prop :=
  ∀ n, P15791124845219362113.a n = A193744 n

end A193744

/-! ## A193744.P9678436573524474309

`A023434(n+1)+A134816(n+1)+A023434(n+1)`
-/

namespace A193744.P9678436573524474309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1) + (A134816 (n + 1) + A023434 (n + 1))

end

end A193744.P9678436573524474309

namespace A193744

/-- `A023434(n+1)+A134816(n+1)+A023434(n+1)` -/
def P9678436573524474309.Spec : Prop :=
  ∀ n, P9678436573524474309.a n = A193744 n

end A193744

/-! ## A193744.P3479929887355991418

`A000931(n)-(A054405(n)-A018917(n))`
-/

namespace A193744.P3479929887355991418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - (A054405 n - A018917 n)

end

end A193744.P3479929887355991418

namespace A193744

/-- `A000931(n)-(A054405(n)-A018917(n))` -/
def P3479929887355991418.Spec : Prop :=
  ∀ n, P3479929887355991418.a n = A193744 n

end A193744

/-! ## A193744.P6165508174777971751

`∑[sqrt(A192932(n))]`
-/

namespace A193744.P6165508174777971751
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192932 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193744.P6165508174777971751

namespace A193744

/-- `∑[sqrt(A192932(n))]` -/
def P6165508174777971751.Spec : Prop :=
  ∀ n, P6165508174777971751.a n = (A193744 n : ℝ)

end A193744

/-!
# A193746: Smallest k such that k*n^2 +1 is an n-th power.

The programs for A193746, there is no canonical definition to state claims against.
-/

/-! ## A193746.P6976497504151877885

`A076943(A065666(n+1))/(n+1)`
-/

namespace A193746.P6976497504151877885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (A065666 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A193746.P6976497504151877885

/-! ## A193746.P13164531712293959477

`A076943(A065667(n+1))/(n+1)`
-/

namespace A193746.P13164531712293959477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (A065667 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A193746.P13164531712293959477

/-! ## A193746.P9561329704826794385

`A076943(n+1)/A285573(A000079(n))`
-/

namespace A193746.P9561329704826794385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A285573 (A000079 n).toNat : ℚ)

end

end A193746.P9561329704826794385

/-!
# A193749: Number of partitions of n into distinct parts that are squares or triangular numbers (A005214).

The programs for A193749, there is no canonical definition to state claims against.
-/

/-! ## A193749.P9925034478841974426

`A081603(A317023(n)+A027658(n))`
-/

namespace A193749.P9925034478841974426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A317023 n + A027658 n).toNat

end

end A193749.P9925034478841974426

/-! ## A193749.P8328932174047653644

`A188903(A000302(n)%p?[A060475(n)])`
-/

namespace A193749.P8328932174047653644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 (Int.tmod (A000302 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A193749.P8328932174047653644

/-! ## A193749.P16038442299646544605

`A131576(A264097(n+9)+A097067(n))`
-/

namespace A193749.P16038442299646544605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A264097 (n + 9) + A097067 n).toNat

end

end A193749.P16038442299646544605

/-! ## A193749.P17351752625561458278

`A055175(A007318(2*(n+2))%A093047(n+1))`
-/

namespace A193749.P17351752625561458278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055175 (Int.tmod (A007318 (2 * (n + 2))) (A093047 (n + 1))).toNat

end

end A193749.P17351752625561458278

/-! ## A193749.P8736714073563383173

`A228425(A241844(A000079(n)+3+n))`
-/

namespace A193749.P8736714073563383173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228425 (A241844 (A000079 n + 3 + (n : ℤ)).toNat).toNat

end

end A193749.P8736714073563383173

/-!
# A193753: Number of n X n X n triangular 0..2 arrays with no element equal to the sum mod 3 of all its neighbors.

The programs for A193753, there is no canonical definition to state claims against.
-/

/-! ## A193753.P16066913315434406452

`A331461(A050927(n))+A059328(A141214(n))`
-/

namespace A193753.P16066913315434406452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A050927 n).toNat + A059328 (A141214 n).toNat

end

end A193753.P16066913315434406452

/-!
# A193757: Numbers which can be written with their digits in order and using only a plus and a squaring operator.

The programs for A193757, there is no canonical definition to state claims against.
-/

/-! ## A193757.P10024803780108396014

`∑[A075449(A241643(n)!)]`
-/

namespace A193757.P10024803780108396014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075449 (Nat.factorial (A241643 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193757.P10024803780108396014

/-! ## A193757.P6315271540997643870

`∑[A342670(∏[A075526(n)])]`
-/

namespace A193757.P6315271540997643870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193757.P6315271540997643870

/-! ## A193757.P12837845493799416207

`eq[A085094(n+1), A348192(n)]`
-/

namespace A193757.P12837845493799416207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193757.P12837845493799416207

/-! ## A193757.P6684289649570585066

`lt[A139337(n), A139318(n+4)]`
-/

namespace A193757.P6684289649570585066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139318 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193757.P6684289649570585066

/-! ## A193757.P1753135696049389305

`∩[A140401(n+1), A024663(n)]`
-/

namespace A193757.P1753135696049389305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024663 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193757.P1753135696049389305

/-!
# A193758: Denominator of H(n)/H(n-1), where H(n) is the n-th harmonic number = Sum_{k=1..n} 1/k.

The programs for A193758, the canonical program `A193758.P16879839616454654453` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193758 has offset 2).

The definition of A193758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193758.P10388123800145512819

`A096617(n+2)-A027611(n+2)`
-/

namespace A193758.P10388123800145512819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 2) - A027611 (n + 2)

end

end A193758.P10388123800145512819

namespace A193758

/-- `A096617(n+2)-A027611(n+2)` -/
def P10388123800145512819.Spec : Prop :=
  ∀ n, P10388123800145512819.a n = A193758 (n + 2)

end A193758

/-! ## A193758.P16879839616454654453

`ceil(ratio[A002805(n+1)])*A001008(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193758

/-- `ceil(ratio[A002805(n+1)])*A001008(n+1)` -/
def P16879839616454654453.Spec : Prop :=
  ∀ n, P16879839616454654453.a n = A193758 (n + 2)

theorem P16879839616454654453.correct : P16879839616454654453.Spec := by
  intro n
  simp only [A193758, Nat.add_sub_cancel]

end A193758

/-! ## A193758.P13080868450798667164

`A001008(n+2)*A120263(n+2)-A027611(n+2)`
-/

namespace A193758.P13080868450798667164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 2) * A120263 (n + 2) - A027611 (n + 2)

end

end A193758.P13080868450798667164

namespace A193758

/-- `A001008(n+2)*A120263(n+2)-A027611(n+2)` -/
def P13080868450798667164.Spec : Prop :=
  ∀ n, P13080868450798667164.a n = A193758 (n + 2)

end A193758

/-! ## A193758.P10575663353380401902

`A379561(n+1)/A025529(n+2)*A096617(n+2)`
-/

namespace A193758.P10575663353380401902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379561 (n + 1) : ℚ) / (A025529 (n + 2) : ℚ) * (A096617 (n + 2) : ℚ)

end

end A193758.P10575663353380401902

namespace A193758

/-- `A379561(n+1)/A025529(n+2)*A096617(n+2)` -/
def P10575663353380401902.Spec : Prop :=
  ∀ n, P10575663353380401902.a n = (A193758 (n + 2) : ℚ)

end A193758

/-! ## A193758.P15528619532809325831

`A096617(n+2)-A213999(A055998(n+1))`
-/

namespace A193758.P15528619532809325831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 2) - A213999 (A055998 (n + 1)).toNat

end

end A193758.P15528619532809325831

namespace A193758

/-- `A096617(n+2)-A213999(A055998(n+1))` -/
def P15528619532809325831.Spec : Prop :=
  ∀ n, P15528619532809325831.a n = A193758 (n + 2)

end A193758

/-!
# A193759: Array, by antidiagonals, A(k,n) is the number of prime factors of n^(2^k) + 1, counted with multiplicity.

The programs for A193759, there is no canonical definition to state claims against.
-/

/-! ## A193759.P3694447185923146050

`A001222(A004273(A347621(n))+A002262(n))`
-/

namespace A193759.P3694447185923146050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004273 (A347621 n).toNat + A002262 n).toNat

end

end A193759.P3694447185923146050

/-! ## A193759.P12437820480226015167

`A193929(A002262(n)^A258709(n))`
-/

namespace A193759.P12437820480226015167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A258709 n : ℤ))).toNat

end

end A193759.P12437820480226015167

/-! ## A193759.P7687068756120472222

`A193330(A002262(n)^A206497(n+1))`
-/

namespace A193759.P7687068756120472222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A206497 (n + 1) : ℤ))).toNat

end

end A193759.P7687068756120472222

/-! ## A193759.P682174368488423092

`A001221(A266599(n+1)+A221683(n+1))`
-/

namespace A193759.P682174368488423092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A266599 (n + 1) + A221683 (n + 1)).toNat

end

end A193759.P682174368488423092

/-! ## A193759.P7106251252544330932

`A078680(A326065(A134816(n+1)))%A059268(n)`
-/

namespace A193759.P7106251252544330932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078680 (A326065 (A134816 (n + 1)).toNat).toNat) (A059268 n)

end

end A193759.P7106251252544330932

/-!
# A193761: 0.25-Ramanujan primes R_{0.25,n}: a(n) is the smallest number such that for any x >= a(n), we have pi(x) - pi(0.25x) >= n, where pi(x) is the number of primes <= x.

The programs for A193761, there is no canonical definition to state claims against.
-/

/-! ## A193761.P4388288673763240985

`p?[∑[A001221(A234968(2*(n+1)))]]`
-/

namespace A193761.P4388288673763240985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A234968 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193761.P4388288673763240985

/-! ## A193761.P10097691708651418586

`p?[A240834(2*(n+1))+n-2]`
-/

namespace A193761.P10097691708651418586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (2 * (n + 1)) + (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193761.P10097691708651418586

/-! ## A193761.P8136503667742845675

`p?[abs(2-A240834(Δ[n²]+1)-n)]`
-/

namespace A193761.P8136503667742845675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A240834 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193761.P8136503667742845675

/-! ## A193761.P15257701088465952081

`A000040(∑[gcd(3, A286317(n+1))])`
-/

namespace A193761.P15257701088465952081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A286317 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193761.P15257701088465952081

/-! ## A193761.P16958150649758913588

`eq[A093796(n+1), A321452(n)]`
-/

namespace A193761.P16958150649758913588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193761.P16958150649758913588

/-!
# A193763: Number of signed permutations of length n avoiding (-2, 1) and (2, -1).

The programs for A193763, there is no canonical definition to state claims against.
-/

/-! ## A193763.P6846463960935758659

`A020639(A051288(n))*A051296(n)`
-/

namespace A193763.P6846463960935758659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051288 n).toNat * A051296 n

end

end A193763.P6846463960935758659

/-! ## A193763.P13460932804224688428

`A020639(A000010(n+2))*A051296(n)`
-/

namespace A193763.P13460932804224688428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A051296 n

end

end A193763.P13460932804224688428

/-! ## A193763.P14753513379127583223

`A020639(Δ[A000040(n+1)])*A051296(n)`
-/

namespace A193763.P14753513379127583223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat * A051296 n

end

end A193763.P14753513379127583223

/-! ## A193763.P4537030316997707626

`A020639(A000040(n+1)-1)*A051296(n)`
-/

namespace A193763.P4537030316997707626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A051296 n

end

end A193763.P4537030316997707626

/-!
# A193764: The number of dominoes in a largest saturated domino covering of the n X n board (n>=2).

The programs for A193764, the canonical program `A193764.P15197821682287783480` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193764 has offset 2).

The definition of A193764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193764.P15197821682287783480

`ogf((2+2x+2x^2+2x^4+x^5-2x^6+2x^8-x^9-2x^10+3x^11-2x^12+x^13-x^16+2x^17-x^18)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193764

/-- `ogf((2+2x+2x^2+2x^4+x^5-2x^6+2x^8-x^9-2x^10+3x^11-2x^12+x^13-x^16+2x^17-x^18)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P15197821682287783480.Spec : Prop :=
  ∀ n, P15197821682287783480.a n = A193764 (n + 2)

theorem P15197821682287783480.correct : P15197821682287783480.Spec := by
  intro n
  simp only [A193764, Nat.add_sub_cancel]

end A193764

/-! ## A193764.P6701397949943069674

`A193765(n+2)-1`
-/

namespace A193764.P6701397949943069674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193765 (n + 2) - 1

end

end A193764.P6701397949943069674

namespace A193764

/-- `A193765(n+2)-1` -/
def P6701397949943069674.Spec : Prop :=
  ∀ n, P6701397949943069674.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P11614863343466663268

`A316441(A006530(n+2))+A193765(n+2)`
-/

namespace A193764.P11614863343466663268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A006530 (n + 2)).toNat + A193765 (n + 2)

end

end A193764.P11614863343466663268

namespace A193764

/-- `A316441(A006530(n+2))+A193765(n+2)` -/
def P11614863343466663268.Spec : Prop :=
  ∀ n, P11614863343466663268.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P17870624093383649227

`xor(-A193765(n+2), A008683(A240233(n+1)))`
-/

namespace A193764.P17870624093383649227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A193765 (n + 2)) (A008683 (A240233 (n + 1)).toNat)

end

end A193764.P17870624093383649227

namespace A193764

/-- `xor(-A193765(n+2), A008683(A240233(n+1)))` -/
def P17870624093383649227.Spec : Prop :=
  ∀ n, P17870624093383649227.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P12534150609457443052

`(n+2)²-A104519(n+4)`
-/

namespace A193764.P12534150609457443052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A104519 (n + 4)

end

end A193764.P12534150609457443052

namespace A193764

/-- `(n+2)²-A104519(n+4)` -/
def P12534150609457443052.Spec : Prop :=
  ∀ n, P12534150609457443052.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P10850542431891679619

`A359433(A001359(n+1))+A193765(n+2)`
-/

namespace A193764.P10850542431891679619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359433 (A001359 (n + 1)).toNat + A193765 (n + 2)

end

end A193764.P10850542431891679619

namespace A193764

/-- `A359433(A001359(n+1))+A193765(n+2)` -/
def P10850542431891679619.Spec : Prop :=
  ∀ n, P10850542431891679619.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P5137986282022970233

`A023443(A193765(n+2))`
-/

namespace A193764.P5137986282022970233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A193765 (n + 2)).toNat

end

end A193764.P5137986282022970233

namespace A193764

/-- `A023443(A193765(n+2))` -/
def P5137986282022970233.Spec : Prop :=
  ∀ n, P5137986282022970233.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P12014667873330090674

`A023444(A193765(n+2)+1)`
-/

namespace A193764.P12014667873330090674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A193765 (n + 2) + 1).toNat

end

end A193764.P12014667873330090674

namespace A193764

/-- `A023444(A193765(n+2)+1)` -/
def P12014667873330090674.Spec : Prop :=
  ∀ n, P12014667873330090674.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P1559556258155883819

`A289207(A193765(n+2)+1)`
-/

namespace A193764.P1559556258155883819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A193765 (n + 2) + 1).toNat

end

end A193764.P1559556258155883819

namespace A193764

/-- `A289207(A193765(n+2)+1)` -/
def P1559556258155883819.Spec : Prop :=
  ∀ n, P1559556258155883819.a n = A193764 (n + 2)

end A193764

/-! ## A193764.P13912479988989571132

`A023445(A193765(n+2)+2)`
-/

namespace A193764.P13912479988989571132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A193765 (n + 2) + 2).toNat

end

end A193764.P13912479988989571132

namespace A193764

/-- `A023445(A193765(n+2)+2)` -/
def P13912479988989571132.Spec : Prop :=
  ∀ n, P13912479988989571132.a n = A193764 (n + 2)

end A193764

/-!
# A193765: The number of dominoes in the largest saturated domino covering of the n X n board plus one (n >= 2).

The programs for A193765, the canonical program `A193765.P16564222961714179070` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193765 has offset 2).

The definition of A193765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193765.P16564222961714179070

`ogf((3+x+2x^2+2x^4-x^6+2x^8-x^9-2x^10+3x^11-2x^12+x^13-x^16+2x^17-x^18)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193765

/-- `ogf((3+x+2x^2+2x^4-x^6+2x^8-x^9-2x^10+3x^11-2x^12+x^13-x^16+2x^17-x^18)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P16564222961714179070.Spec : Prop :=
  ∀ n, P16564222961714179070.a n = A193765 (n + 2)

theorem P16564222961714179070.correct : P16564222961714179070.Spec := by
  intro n
  simp only [A193765, Nat.add_sub_cancel]

end A193765

/-! ## A193765.P13681732674105956206

`A193764(n+2)+1`
-/

namespace A193765.P13681732674105956206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193764 (n + 2) + 1

end

end A193765.P13681732674105956206

namespace A193765

/-- `A193764(n+2)+1` -/
def P13681732674105956206.Spec : Prop :=
  ∀ n, P13681732674105956206.a n = A193765 (n + 2)

end A193765

/-! ## A193765.P1439439088594626950

`(n+2)²-A104519(n+4)+1`
-/

namespace A193765.P1439439088594626950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A104519 (n + 4) + 1

end

end A193765.P1439439088594626950

namespace A193765

/-- `(n+2)²-A104519(n+4)+1` -/
def P1439439088594626950.Spec : Prop :=
  ∀ n, P1439439088594626950.a n = A193765 (n + 2)

end A193765

/-! ## A193765.P605284690052083370

`A020725(A193764(n+2))`
-/

namespace A193765.P605284690052083370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A193764 (n + 2)).toNat

end

end A193765.P605284690052083370

namespace A193765

/-- `A020725(A193764(n+2))` -/
def P605284690052083370.Spec : Prop :=
  ∀ n, P605284690052083370.a n = A193765 (n + 2)

end A193765

/-! ## A193765.P6347876431717086985

`A020725((n+2)²-A104519(n+4))`
-/

namespace A193765.P6347876431717086985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (((n + 2) ^ 2 : ℤ) - A104519 (n + 4)).toNat

end

end A193765.P6347876431717086985

namespace A193765

/-- `A020725((n+2)²-A104519(n+4))` -/
def P6347876431717086985.Spec : Prop :=
  ∀ n, P6347876431717086985.a n = A193765 (n + 2)

end A193765

/-!
# A193766: The number of dominoes in a largest saturated domino covering of the 3 by n board.

The programs for A193766, the canonical program `A193766.P13505324566326933498` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193766 has offset 1).

The definition of A193766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193766.P13505324566326933498

`3*(n+1)-floor((3*(n+1)+4)/4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193766

/-- `3*(n+1)-floor((3*(n+1)+4)/4)` -/
def P13505324566326933498.Spec : Prop :=
  ∀ n, P13505324566326933498.a n = A193766 (n + 1)

theorem P13505324566326933498.correct : P13505324566326933498.Spec := by
  intro n
  simp only [A193766, Nat.add_sub_cancel]

end A193766

/-! ## A193766.P7659703839052199061

`lt[1, (-n)^dr(n)]`
-/

namespace A193766.P7659703839052199061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193766.P7659703839052199061

namespace A193766

/-- `lt[1, (-n)^dr(n)]` -/
def P7659703839052199061.Spec : Prop :=
  ∀ n, (P7659703839052199061.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P10657762325989730367

`comp[n*dr(n)%2]`
-/

namespace A193766.P10657762325989730367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.digitalRoot (n : ℤ) % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193766.P10657762325989730367

namespace A193766

/-- `comp[n*dr(n)%2]` -/
def P10657762325989730367.Spec : Prop :=
  ∀ n, (P10657762325989730367.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P12801218464166520507

`∑[xor(2, char[4*(n+1)])]`
-/

namespace A193766.P12801218464166520507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P12801218464166520507

namespace A193766

/-- `∑[xor(2, char[4*(n+1)])]` -/
def P12801218464166520507.Spec : Prop :=
  ∀ n, (P12801218464166520507.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P431404647862674530

`floor(cot(4/(9*(n+1))))`
-/

namespace A193766.P431404647862674530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (4 / (9 * (n + 1) : ℚ) : ℝ)⌋

end

end A193766.P431404647862674530

namespace A193766

/-- `floor(cot(4/(9*(n+1))))` -/
def P431404647862674530.Spec : Prop :=
  ∀ n, P431404647862674530.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P5761184616255802296

`∑[gcd(n+2, ∑[n])]+n`
-/

namespace A193766.P5761184616255802296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A193766.P5761184616255802296

namespace A193766

/-- `∑[gcd(n+2, ∑[n])]+n` -/
def P5761184616255802296.Spec : Prop :=
  ∀ n, (P5761184616255802296.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P7745626646417706359

`ceil(or(1, 9*n+4)/4)`
-/

namespace A193766.P7745626646417706359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (9 * n + 4) : ℚ) / 4⌉

end

end A193766.P7745626646417706359

namespace A193766

/-- `ceil(or(1, 9*n+4)/4)` -/
def P7745626646417706359.Spec : Prop :=
  ∀ n, P7745626646417706359.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P12131310236676851807

`floor(∑[5/a(n-1)])` with `a(0)=2, a(1)=2`
-/

namespace A193766.P12131310236676851807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A193766.P12131310236676851807

namespace A193766

/-- `floor(∑[5/a(n-1)])` -/
def P12131310236676851807.Spec : Prop :=
  ∀ n, P12131310236676851807.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P12758884438126924460

`∑[abs(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A193766.P12758884438126924460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P12758884438126924460

namespace A193766

/-- `∑[abs(a(n-4))]` -/
def P12758884438126924460.Spec : Prop :=
  ∀ n, (P12758884438126924460.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P11345012339811521438

`∑[dr(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A193766.P11345012339811521438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P11345012339811521438

namespace A193766

/-- `∑[dr(a(n-4))]` -/
def P11345012339811521438.Spec : Prop :=
  ∀ n, (P11345012339811521438.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P16495811959397200105

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A193766.P16495811959397200105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P16495811959397200105

namespace A193766

/-- `∑[floor(a(n-4))]` -/
def P16495811959397200105.Spec : Prop :=
  ∀ n, (P16495811959397200105.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P15533221223940187390

`∑[ceil(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A193766.P15533221223940187390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P15533221223940187390

namespace A193766

/-- `∑[ceil(a(n-4))]` -/
def P15533221223940187390.Spec : Prop :=
  ∀ n, (P15533221223940187390.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P4664056884379859330

`∑[round(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A193766.P4664056884379859330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P4664056884379859330

namespace A193766

/-- `∑[round(a(n-4))]` -/
def P4664056884379859330.Spec : Prop :=
  ∀ n, (P4664056884379859330.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P11016874262173010613

`∑[a(n-4)%4]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A193766.P11016874262173010613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P11016874262173010613

namespace A193766

/-- `∑[a(n-4)%4]` -/
def P11016874262173010613.Spec : Prop :=
  ∀ n, (P11016874262173010613.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P5666685359407709612

`∑[gcd(6, a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A193766.P5666685359407709612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193766.P5666685359407709612

namespace A193766

/-- `∑[gcd(6, a(n-4))]` -/
def P5666685359407709612.Spec : Prop :=
  ∀ n, (P5666685359407709612.a n : ℤ) = A193766 (n + 1)

end A193766

/-! ## A193766.P392717965645972970

`round(lcm(3, 2*n+n+2)/4)`
-/

namespace A193766.P392717965645972970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 3 (2 * n + (n + 2)) : ℚ) / 4)

end

end A193766.P392717965645972970

namespace A193766

/-- `round(lcm(3, 2*n+n+2)/4)` -/
def P392717965645972970.Spec : Prop :=
  ∀ n, P392717965645972970.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P11633684298747041699

`ceil(xor(1, 2*n)+(n+1)/4)`
-/

namespace A193766.P11633684298747041699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℚ) + (n + 1 : ℚ) / 4⌉

end

end A193766.P11633684298747041699

namespace A193766

/-- `ceil(xor(1, 2*n)+(n+1)/4)` -/
def P11633684298747041699.Spec : Prop :=
  ∀ n, P11633684298747041699.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P5428167448743927947

`round(or(1, 2*n)+(n+2)/4)`
-/

namespace A193766.P5428167448743927947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℚ) + (n + 2 : ℚ) / 4)

end

end A193766.P5428167448743927947

namespace A193766

/-- `round(or(1, 2*n)+(n+2)/4)` -/
def P5428167448743927947.Spec : Prop :=
  ∀ n, P5428167448743927947.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P11124760806728682169

`round(xor(1, 2*n)+(n+2)/4)`
-/

namespace A193766.P11124760806728682169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℚ) + (n + 2 : ℚ) / 4)

end

end A193766.P11124760806728682169

namespace A193766

/-- `round(xor(1, 2*n)+(n+2)/4)` -/
def P11124760806728682169.Spec : Prop :=
  ∀ n, P11124760806728682169.a n = A193766 (n + 1)

end A193766

/-! ## A193766.P16274477991618162695

`record[(-1)^dr(n+2)+n+1]`
-/

namespace A193766.P16274477991618162695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.digitalRoot (n + 2 : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193766.P16274477991618162695

namespace A193766

/-- `record[(-1)^dr(n+2)+n+1]` -/
def P16274477991618162695.Spec : Prop :=
  ∀ n, P16274477991618162695.a n = A193766 (n + 1)

end A193766

/-!
# A193767: The number of dominoes in a largest saturated domino covering of the 4 by n board.

The programs for A193767, the canonical program `A193767.P11462073725896867191` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193767 has offset 1).

The definition of A193767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193767.P11462073725896867191

`ogf((2+x+x^3-2x^4+x^5+x^6-x^7-x^8+2x^9-x^10)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193767

/-- `ogf((2+x+x^3-2x^4+x^5+x^6-x^7-x^8+2x^9-x^10)/(1-2x+x^2))` -/
def P11462073725896867191.Spec : Prop :=
  ∀ n, P11462073725896867191.a n = A193767 (n + 1)

theorem P11462073725896867191.correct : P11462073725896867191.Spec := by
  intro n
  simp only [A193767, Nat.add_sub_cancel]

end A193767

/-!
# A193768: The domination number of the 4 X n board.

The programs for A193768, the canonical program `A193768.P18122106376006538184` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193768 has offset 1).

The definition of A193768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193768.P18122106376006538184

`ogf((2-x-x^3+2x^4-x^5-x^6+x^7+x^8-2x^9+x^10)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193768

/-- `ogf((2-x-x^3+2x^4-x^5-x^6+x^7+x^8-2x^9+x^10)/(1-2x+x^2))` -/
def P18122106376006538184.Spec : Prop :=
  ∀ n, P18122106376006538184.a n = A193768 (n + 1)

theorem P18122106376006538184.correct : P18122106376006538184.Spec := by
  intro n
  simp only [A193768, Nat.add_sub_cancel]

end A193768

/-!
# A193769: Numbers of the form (3^a+5^b)/2 ; a,b >= 0 (with repetition).

The programs for A193769, there is no canonical definition to state claims against.
-/

/-! ## A193769.P3993087268704036063

`A226790(A160755(n+1))`
-/

namespace A193769.P3993087268704036063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226790 (A160755 (n + 1)).toNat

end

end A193769.P3993087268704036063

/-! ## A193769.P3432669982036314543

`A226790(∑[A120526(A200811(n+1))])`
-/

namespace A193769.P3432669982036314543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120526 (A200811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193769.P3432669982036314543

/-! ## A193769.P903700860024138917

`A226809(A160755(n+1))/A342309(2*n+1)`
-/

namespace A193769.P903700860024138917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226809 (A160755 (n + 1)).toNat : ℚ) / (A342309 (2 * n + 1) : ℚ)

end

end A193769.P903700860024138917

/-!
# A193770: Table T(m,n) = (5^m + 3^n)/2, m,n = 0,1,2,..., read by antidiagonals.

The programs for A193770, the canonical program `A193770.P7716335594432538183` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193770 has offset 0).

The definition of A193770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193770.P7716335594432538183

`(5^col(n)+3^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193770

/-- `(5^col(n)+3^(row(n)-col(n)))/2` -/
def P7716335594432538183.Spec : Prop :=
  ∀ n, P7716335594432538183.a n = (A193770 n : ℚ)

end A193770

/-! ## A193770.P17189000067765067190

`(3^(row(n)-col(n))+5^col(n))/2`
-/

namespace A193770.P17189000067765067190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + (5 ^ SequenceMachineLib.triCol n : ℚ)) / 2

end

end A193770.P17189000067765067190

namespace A193770

/-- `(3^(row(n)-col(n))+5^col(n))/2` -/
def P17189000067765067190.Spec : Prop :=
  ∀ n, P17189000067765067190.a n = (A193770 n : ℚ)

end A193770

/-! ## A193770.P193125573540705451

`(A027465(n)+A013612(n))/A028326(n)`
-/

namespace A193770.P193125573540705451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n + A013612 n : ℚ) / (A028326 n : ℚ)

end

end A193770.P193125573540705451

namespace A193770

/-- `(A027465(n)+A013612(n))/A028326(n)` -/
def P193125573540705451.Spec : Prop :=
  ∀ n, P193125573540705451.a n = (A193770 n : ℚ)

end A193770

/-!
# A193771: Expansion of 1 / (1 - x - x^3 + x^6) in powers of x.

The programs for A193771, the canonical program `A193771.P17113379205466901926` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193771 has offset 0).

The definition of A193771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^6))` (program `A193771.P17113379205466901926`, by `A193771.P17113379205466901926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193771.P17113379205466901926

`ogf(1/(1-x-x^3+x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193771

/-- `ogf(1/(1-x-x^3+x^6))` -/
def P17113379205466901926.Spec : Prop :=
  ∀ n, P17113379205466901926.a n = A193771 n

theorem P17113379205466901926.correct : P17113379205466901926.Spec := by
  intro n
  simp only [A193771]

end A193771

/-! ## A193771.P4048180845523879038

`a(n-1)+a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A193771.P4048180845523879038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 6)

end

end A193771.P4048180845523879038

namespace A193771

/-- `a(n-1)+a(n-3)-a(n-6)` -/
def P4048180845523879038.Spec : Prop :=
  ∀ n, P4048180845523879038.a n = A193771 n

end A193771

/-! ## A193771.P17567443095088061018

`∑[A017818(n)]`
-/

namespace A193771.P17567443095088061018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193771.P17567443095088061018

namespace A193771

/-- `∑[A017818(n)]` -/
def P17567443095088061018.Spec : Prop :=
  ∀ n, P17567443095088061018.a n = A193771 n

end A193771

/-! ## A193771.P10173400439005730710

`A228362(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A193771.P10173400439005730710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A228362 n + a (n - 3)

end

end A193771.P10173400439005730710

namespace A193771

/-- `A228362(n)+a(n-3)` -/
def P10173400439005730710.Spec : Prop :=
  ∀ n, P10173400439005730710.a n = A193771 n

end A193771

/-! ## A193771.P17507156779911537793

`∑[A017830(abs(3-n))+A017830(n)]`
-/

namespace A193771.P17507156779911537793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017830 |3 - (n : ℤ)|.toNat + A017830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193771.P17507156779911537793

namespace A193771

/-- `∑[A017830(abs(3-n))+A017830(n)]` -/
def P17507156779911537793.Spec : Prop :=
  ∀ n, P17507156779911537793.a n = A193771 n

end A193771

/-! ## A193771.P6090939835043672088

`A023434(n+1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A193771.P6090939835043672088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A023434 (n + 1) - a (n - 2)

end

end A193771.P6090939835043672088

namespace A193771

/-- `A023434(n+1)-a(n-2)` -/
def P6090939835043672088.Spec : Prop :=
  ∀ n, P6090939835043672088.a n = A193771 n

end A193771

/-! ## A193771.P9690510309662424038

`A247907(n+1)-A003520(n+1)`
-/

namespace A193771.P9690510309662424038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 (n + 1) - A003520 (n + 1)

end

end A193771.P9690510309662424038

namespace A193771

/-- `A247907(n+1)-A003520(n+1)` -/
def P9690510309662424038.Spec : Prop :=
  ∀ n, P9690510309662424038.a n = A193771 n

end A193771

/-!
# A193772: Nonnegative integers whose digital difference is 0.

The programs for A193772, the canonical program `A193772.P4613758967255747275` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193772 has offset 1).

The definition of A193772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193772.P4613758967255747275

`eq[2*A000030(n), A007953(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193772

/-- `eq[2*A000030(n), A007953(n)]` -/
def P4613758967255747275.Spec : Prop :=
  ∀ n, (P4613758967255747275.a n : ℤ) = A193772 (n + 1)

theorem P4613758967255747275.correct : P4613758967255747275.Spec := by
  intro n
  simp only [A193772, Nat.add_sub_cancel]

end A193772

/-! ## A193772.P15787366848469948673

`eq[A000030(n), A001281(A007953(n))]`
-/

namespace A193772.P15787366848469948673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193772.P15787366848469948673

namespace A193772

/-- `eq[A000030(n), A001281(A007953(n))]` -/
def P15787366848469948673.Spec : Prop :=
  ∀ n, (P15787366848469948673.a n : ℤ) = A193772 (n + 1)

end A193772

/-! ## A193772.P16140484650808841353

`eq[5, A040997(A017329(n))]`
-/

namespace A193772.P16140484650808841353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A017329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193772.P16140484650808841353

namespace A193772

/-- `eq[5, A040997(A017329(n))]` -/
def P16140484650808841353.Spec : Prop :=
  ∀ n, (P16140484650808841353.a n : ℤ) = A193772 (n + 1)

end A193772

/-! ## A193772.P9602799377092033123

`eq[6, A040997(A017341(n))]`
-/

namespace A193772.P9602799377092033123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193772.P9602799377092033123

namespace A193772

/-- `eq[6, A040997(A017341(n))]` -/
def P9602799377092033123.Spec : Prop :=
  ∀ n, (P9602799377092033123.a n : ℤ) = A193772 (n + 1)

end A193772

/-! ## A193772.P1629302967412122928

`eq[8, A040997(A017365(n))]`
-/

namespace A193772.P1629302967412122928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193772.P1629302967412122928

namespace A193772

/-- `eq[8, A040997(A017365(n))]` -/
def P1629302967412122928.Spec : Prop :=
  ∀ n, (P1629302967412122928.a n : ℤ) = A193772 (n + 1)

end A193772

/-!
# A193773: Number of ways to write n as 2*x*y - x - y with 1 <= x <= y.

The programs for A193773, the canonical program `A193773.P5335748704601439126` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193773 has offset 0).

The definition of A193773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193773.P5335748704601439126

`ceil(A000005(2*n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193773

/-- `ceil(A000005(2*n+1)/2)` -/
def P5335748704601439126.Spec : Prop :=
  ∀ n, P5335748704601439126.a n = A193773 n

theorem P5335748704601439126.correct : P5335748704601439126.Spec := by
  intro n
  simp only [A193773]

end A193773

/-! ## A193773.P8189736000214791765

`ceil(∏{e}[Δ[n²], #+1]/2)`
-/

namespace A193773.P8189736000214791765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2⌉

end

end A193773.P8189736000214791765

namespace A193773

/-- `ceil(∏{e}[Δ[n²], #+1]/2)` -/
def P8189736000214791765.Spec : Prop :=
  ∀ n, P8189736000214791765.a n = A193773 n

end A193773

/-! ## A193773.P15290341198626699582

`round(∏{e}[Δ[n²], #+1]/2)`
-/

namespace A193773.P15290341198626699582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2)

end

end A193773.P15290341198626699582

namespace A193773

/-- `round(∏{e}[Δ[n²], #+1]/2)` -/
def P15290341198626699582.Spec : Prop :=
  ∀ n, P15290341198626699582.a n = A193773 n

end A193773

/-! ## A193773.P13817033670499029076

`A341675(Δ[n²])`
-/

namespace A193773.P13817033670499029076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193773.P13817033670499029076

namespace A193773

/-- `A341675(Δ[n²])` -/
def P13817033670499029076.Spec : Prop :=
  ∀ n, P13817033670499029076.a n = A193773 n

end A193773

/-! ## A193773.P7711457036057282425

`A353236(Δ[n²])`
-/

namespace A193773.P7711457036057282425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353236 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193773.P7711457036057282425

namespace A193773

/-- `A353236(Δ[n²])` -/
def P7711457036057282425.Spec : Prop :=
  ∀ n, P7711457036057282425.a n = A193773 n

end A193773

/-! ## A193773.P13374806479951423098

`A353376(Δ[n²])`
-/

namespace A193773.P13374806479951423098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193773.P13374806479951423098

namespace A193773

/-- `A353376(Δ[n²])` -/
def P13374806479951423098.Spec : Prop :=
  ∀ n, P13374806479951423098.a n = A193773 n

end A193773

/-! ## A193773.P5665184291950718878

`A369257(Δ[n²])`
-/

namespace A193773.P5665184291950718878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369257 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193773.P5665184291950718878

namespace A193773

/-- `A369257(Δ[n²])` -/
def P5665184291950718878.Spec : Prop :=
  ∀ n, P5665184291950718878.a n = A193773 n

end A193773

/-! ## A193773.P554972561825260943

`A378444(Δ[n²])`
-/

namespace A193773.P554972561825260943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193773.P554972561825260943

namespace A193773

/-- `A378444(Δ[n²])` -/
def P554972561825260943.Spec : Prop :=
  ∀ n, P554972561825260943.a n = A193773 n

end A193773

/-! ## A193773.P5323527971537187247

`ceil(A099774(n+1)/2)`
-/

namespace A193773.P5323527971537187247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099774 (n + 1) : ℚ) / 2⌉

end

end A193773.P5323527971537187247

namespace A193773

/-- `ceil(A099774(n+1)/2)` -/
def P5323527971537187247.Spec : Prop :=
  ∀ n, P5323527971537187247.a n = A193773 n

end A193773

/-! ## A193773.P9314811233795156247

`floor((A000005(Δ[n²])+1)/2)`
-/

namespace A193773.P9314811233795156247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1 : ℚ) / 2⌋

end

end A193773.P9314811233795156247

namespace A193773

/-- `floor((A000005(Δ[n²])+1)/2)` -/
def P9314811233795156247.Spec : Prop :=
  ∀ n, P9314811233795156247.a n = A193773 n

end A193773

/-! ## A193773.P18202604134485598496

`A065033(A000005(2*n+1))`
-/

namespace A193773.P18202604134485598496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000005 (2 * n + 1)).toNat

end

end A193773.P18202604134485598496

namespace A193773

/-- `A065033(A000005(2*n+1))` -/
def P18202604134485598496.Spec : Prop :=
  ∀ n, P18202604134485598496.a n = A193773 n

end A193773

/-! ## A193773.P16613897490228490774

`A004526(A000005(2*n+1)+1)`
-/

namespace A193773.P16613897490228490774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (2 * n + 1) + 1).toNat

end

end A193773.P16613897490228490774

namespace A193773

/-- `A004526(A000005(2*n+1)+1)` -/
def P16613897490228490774.Spec : Prop :=
  ∀ n, P16613897490228490774.a n = A193773 n

end A193773

/-! ## A193773.P13173703067350534121

`A008619(A000005(2*n+1)-1)`
-/

namespace A193773.P13173703067350534121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000005 (2 * n + 1) - 1).toNat

end

end A193773.P13173703067350534121

namespace A193773

/-- `A008619(A000005(2*n+1)-1)` -/
def P13173703067350534121.Spec : Prop :=
  ∀ n, P13173703067350534121.a n = A193773 n

end A193773

/-! ## A193773.P3447255502965977826

`A026922(2*A000005(2*n+1))`
-/

namespace A193773.P3447255502965977826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (2 * A000005 (2 * n + 1)).toNat

end

end A193773.P3447255502965977826

namespace A193773

/-- `A026922(2*A000005(2*n+1))` -/
def P3447255502965977826.Spec : Prop :=
  ∀ n, P3447255502965977826.a n = A193773 n

end A193773

/-! ## A193773.P11497301734742147455

`A220400(Δ[n²])+1`
-/

namespace A193773.P11497301734742147455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A193773.P11497301734742147455

namespace A193773

/-- `A220400(Δ[n²])+1` -/
def P11497301734742147455.Spec : Prop :=
  ∀ n, P11497301734742147455.a n = A193773 n

end A193773

/-! ## A193773.P3307315530917389129

`A038548(A064216(n+1))`
-/

namespace A193773.P3307315530917389129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A064216 (n + 1)).toNat

end

end A193773.P3307315530917389129

namespace A193773

/-- `A038548(A064216(n+1))` -/
def P3307315530917389129.Spec : Prop :=
  ∀ n, P3307315530917389129.a n = A193773 n

end A193773

/-! ## A193773.P9214497512112776658

`A072670(2*n)+1`
-/

namespace A193773.P9214497512112776658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (2 * n) + 1

end

end A193773.P9214497512112776658

namespace A193773

/-- `A072670(2*n)+1` -/
def P9214497512112776658.Spec : Prop :=
  ∀ n, P9214497512112776658.a n = A193773 n

end A193773

/-! ## A193773.P12099877759429437528

`A005555(A072670(2*n))`
-/

namespace A193773.P12099877759429437528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A072670 (2 * n)).toNat

end

end A193773.P12099877759429437528

namespace A193773

/-- `A005555(A072670(2*n))` -/
def P12099877759429437528.Spec : Prop :=
  ∀ n, P12099877759429437528.a n = A193773 n

end A193773

/-! ## A193773.P2364533392126459166

`A034178(Δ[n²])`
-/

namespace A193773.P2364533392126459166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193773.P2364533392126459166

namespace A193773

/-- `A034178(Δ[n²])` -/
def P2364533392126459166.Spec : Prop :=
  ∀ n, P2364533392126459166.a n = A193773 n

end A193773

/-!
# A193774: Number of signed permutations of length n invariant under the reverse complement and avoiding (-2, 1) and (2, -1).

The programs for A193774, there is no canonical definition to state claims against.
-/

/-! ## A193774.P12394540496709581888

`record[gcd(A026101(n+1), A131771(n))]`
-/

namespace A193774.P12394540496709581888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026101 (n + 1)) (A131771 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193774.P12394540496709581888

/-! ## A193774.P8757286429193922251

`A041519(n)*A329326(A041569(n))`
-/

namespace A193774.P8757286429193922251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041519 n * A329326 (A041569 n).toNat

end

end A193774.P8757286429193922251

/-! ## A193774.P7912042329691331638

`A274641(A113676(n+1)+A002050(n))`
-/

namespace A193774.P7912042329691331638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A113676 (n + 1) + A002050 n).toNat

end

end A193774.P7912042329691331638

/-!
# A193777: Number of signed permutations of size 2n invariant under D and D'bar and avoiding (-2, 1) and (2, -1).

The programs for A193777, there is no canonical definition to state claims against.
-/

/-! ## A193777.P9006310244602910998

`A071718(n)-A004524(A071728(n))`
-/

namespace A193777.P9006310244602910998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - A004524 (A071728 n).toNat

end

end A193777.P9006310244602910998

/-! ## A193777.P4134258506090480031

`A186739(n)+A065033(A124431(n)+A101499(n))`
-/

namespace A193777.P4134258506090480031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 n + A065033 (A124431 n + A101499 n).toNat

end

end A193777.P4134258506090480031

/-! ## A193777.P7030036517769521558

`A186739(n)+A078898(A124431(n)+A101499(n))`
-/

namespace A193777.P7030036517769521558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 n + A078898 (A124431 n + A101499 n).toNat

end

end A193777.P7030036517769521558

/-!
# A193778: Number of signed permutations of length 2n invariant under D and D'bar.

The programs for A193778, the canonical program `A193778.P16969595302258836054` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193778 has offset 0).

The definition of A193778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193778.P16969595302258836054

`2*a(n-1)+4*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A193778

/-- `2*a(n-1)+4*(n-1)*a(n-2)` -/
def P16969595302258836054.Spec : Prop :=
  ∀ n, P16969595302258836054.a n = A193778 n

theorem P16969595302258836054.correct : P16969595302258836054.Spec := by
  intro n
  simp only [A193778]

end A193778

/-! ## A193778.P12010288603219605323

`2^n*A000085(n)`
-/

namespace A193778.P12010288603219605323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000085 n

end

end A193778.P12010288603219605323

namespace A193778

/-- `2^n*A000085(n)` -/
def P12010288603219605323.Spec : Prop :=
  ∀ n, P12010288603219605323.a n = A193778 n

end A193778

/-! ## A193778.P7660316639475532749

`2^n*∏[(n-1)/a(n-1)+1]` with `a(0)=1`
-/

namespace A193778.P7660316639475532749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A193778.P7660316639475532749

namespace A193778

/-- `2^n*∏[(n-1)/a(n-1)+1]` -/
def P7660316639475532749.Spec : Prop :=
  ∀ n, P7660316639475532749.a n = (A193778 n : ℚ)

end A193778

/-! ## A193778.P6411710167235135785

`A013989(n)/(n+1)*2^n`
-/

namespace A193778.P6411710167235135785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013989 n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A193778.P6411710167235135785

namespace A193778

/-- `A013989(n)/(n+1)*2^n` -/
def P6411710167235135785.Spec : Prop :=
  ∀ n, P6411710167235135785.a n = (A193778 n : ℚ)

end A193778

/-! ## A193778.P10118259991892058210

`Δ[A001189(n+1)]/(n+1)*2^n`
-/

namespace A193778.P10118259991892058210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A193778.P10118259991892058210

namespace A193778

/-- `Δ[A001189(n+1)]/(n+1)*2^n` -/
def P10118259991892058210.Spec : Prop :=
  ∀ n, P10118259991892058210.a n = (A193778 n : ℚ)

end A193778

/-! ## A193778.P9074531009380331825

`∏[(a(n-1)+n-1)/a(n-1)]*A000079(n)` with `a(0)=1`
-/

namespace A193778.P9074531009380331825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + ((n : ℤ) - 1 : ℚ)) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A193778.P9074531009380331825

namespace A193778

/-- `∏[(a(n-1)+n-1)/a(n-1)]*A000079(n)` -/
def P9074531009380331825.Spec : Prop :=
  ∀ n, P9074531009380331825.a n = (A193778 n : ℚ)

end A193778

/-! ## A193778.P947396737919935254

`A000085(n)*A038207(∑[n])`
-/

namespace A193778.P947396737919935254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A038207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193778.P947396737919935254

namespace A193778

/-- `A000085(n)*A038207(∑[n])` -/
def P947396737919935254.Spec : Prop :=
  ∀ n, P947396737919935254.a n = A193778 n

end A193778

/-! ## A193778.P1304558759156111834

`A000079(n)*A099020(∑[n])`
-/

namespace A193778.P1304558759156111834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193778.P1304558759156111834

namespace A193778

/-- `A000079(n)*A099020(∑[n])` -/
def P1304558759156111834.Spec : Prop :=
  ∀ n, P1304558759156111834.a n = A193778 n

end A193778

/-! ## A193778.P3458711594543182341

`A000085(n)*A011782(n+1)`
-/

namespace A193778.P3458711594543182341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A011782 (n + 1)

end

end A193778.P3458711594543182341

namespace A193778

/-- `A000085(n)*A011782(n+1)` -/
def P3458711594543182341.Spec : Prop :=
  ∀ n, P3458711594543182341.a n = A193778 n

end A193778

/-! ## A193778.P6677713038036873137

`A000085(n)*A016116(2*n)`
-/

namespace A193778.P6677713038036873137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A016116 (2 * n)

end

end A193778.P6677713038036873137

namespace A193778

/-- `A000085(n)*A016116(2*n)` -/
def P6677713038036873137.Spec : Prop :=
  ∀ n, P6677713038036873137.a n = A193778 n

end A193778

/-!
# A193787: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+1)^n and q(n,x)=1+x^n.

The programs for A193787, the canonical program `A193787.P12948706295467712163` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193787 has offset 0).

The definition of A193787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193787.P12948706295467712163

`gcd(A071919(n), A134309(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A193787

/-- `gcd(A071919(n), A134309(n))` -/
def P12948706295467712163.Spec : Prop :=
  ∀ n, (P12948706295467712163.a n : ℤ) = A193787 n

theorem P12948706295467712163.correct : P12948706295467712163.Spec := by
  intro n
  simp only [A193787]

end A193787

/-! ## A193787.P5625506039897830168

`gcd(A110555(n), A134312(n))`
-/

namespace A193787.P5625506039897830168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110555 n) (A134312 n)

end

end A193787.P5625506039897830168

namespace A193787

/-- `gcd(A110555(n), A134312(n))` -/
def P5625506039897830168.Spec : Prop :=
  ∀ n, (P5625506039897830168.a n : ℤ) = A193787 n

end A193787

/-! ## A193787.P3346779817439294309

`A134309(n)+∑[A037012(n)]`
-/

namespace A193787.P3346779817439294309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193787.P3346779817439294309

namespace A193787

/-- `A134309(n)+∑[A037012(n)]` -/
def P3346779817439294309.Spec : Prop :=
  ∀ n, P3346779817439294309.a n = A193787 n

end A193787

/-! ## A193787.P1025190821850187996

`A134309(n)-∑[A008482(n)]`
-/

namespace A193787.P1025190821850187996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193787.P1025190821850187996

namespace A193787

/-- `A134309(n)-∑[A008482(n)]` -/
def P1025190821850187996.Spec : Prop :=
  ∀ n, P1025190821850187996.a n = A193787 n

end A193787

/-! ## A193787.P1165065827850156150

`A134309(n)+A097805(n+1)`
-/

namespace A193787.P1165065827850156150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n + A097805 (n + 1)

end

end A193787.P1165065827850156150

namespace A193787

/-- `A134309(n)+A097805(n+1)` -/
def P1165065827850156150.Spec : Prop :=
  ∀ n, P1165065827850156150.a n = A193787 n

end A193787

/-! ## A193787.P11120465442351749599

`A007318(n+1)-Δ[A193820(n)]`
-/

namespace A193787.P11120465442351749599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - (f1 (n + 1) - f1 n)

end

end A193787.P11120465442351749599

namespace A193787

/-- `A007318(n+1)-Δ[A193820(n)]` -/
def P11120465442351749599.Spec : Prop :=
  ∀ n, P11120465442351749599.a n = A193787 n

end A193787

/-! ## A193787.P13905189197264714255

`A007318(n+1)+A193820(n)-A193820(n+1)`
-/

namespace A193787.P13905189197264714255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A193820 n - A193820 (n + 1))

end

end A193787.P13905189197264714255

namespace A193787

/-- `A007318(n+1)+A193820(n)-A193820(n+1)` -/
def P13905189197264714255.Spec : Prop :=
  ∀ n, P13905189197264714255.a n = A193787 n

end A193787

/-! ## A193787.P2031068341529130727

`A193554(∑[2*n]%comp[∑[n]])`
-/

namespace A193787.P2031068341529130727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193787.P2031068341529130727

namespace A193787

/-- `A193554(∑[2*n]%comp[∑[n]])` -/
def P2031068341529130727.Spec : Prop :=
  ∀ n, P2031068341529130727.a n = A193787 n

end A193787

/-! ## A193787.P3868997224353846104

`A193554(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193787.P3868997224353846104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193787.P3868997224353846104

namespace A193787

/-- `A193554(∑[char[∑[n]]]²-(n+1))` -/
def P3868997224353846104.Spec : Prop :=
  ∀ n, P3868997224353846104.a n = A193787 n

end A193787

/-! ## A193787.P6659224825409612815

`and(-1, A193554(A061579(n)))`
-/

namespace A193787.P6659224825409612815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A193554 (A061579 n).toNat)

end

end A193787.P6659224825409612815

namespace A193787

/-- `and(-1, A193554(A061579(n)))` -/
def P6659224825409612815.Spec : Prop :=
  ∀ n, P6659224825409612815.a n = A193787 n

end A193787

/-! ## A193787.P5748293311852740584

`A071919(n)+A025480(A130123(n))`
-/

namespace A193787.P5748293311852740584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A025480 (A130123 n).toNat

end

end A193787.P5748293311852740584

namespace A193787

/-- `A071919(n)+A025480(A130123(n))` -/
def P5748293311852740584.Spec : Prop :=
  ∀ n, P5748293311852740584.a n = A193787 n

end A193787

/-!
# A193788: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+1)^n and q(n,x)=1+x^n.

The programs for A193788, there is no canonical definition to state claims against.
-/

/-! ## A193788.P10923177997784000581

`A193791(Δ[A002262(n)]+n)`
-/

namespace A193788.P10923177997784000581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193788.P10923177997784000581

/-! ## A193788.P15876894013752162400

`A193791(1-A127648(n)+n)`
-/

namespace A193788.P15876894013752162400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (1 - A127648 n + (n : ℤ)).toNat

end

end A193788.P15876894013752162400

/-! ## A193788.P5622659970856834528

`A193791(1-(A127648(n)-n))`
-/

namespace A193788.P5622659970856834528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (1 - (A127648 n - (n : ℤ))).toNat

end

end A193788.P5622659970856834528

/-! ## A193788.P5380396727999710939

`A193791(Δ[A002260(n+1)]+n)`
-/

namespace A193788.P5380396727999710939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193788.P5380396727999710939

/-! ## A193788.P826162221185604311

`A193791(n+1-Δ[A057944(n)])`
-/

namespace A193788.P826162221185604311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 ((n + 1 : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A193788.P826162221185604311

/-! ## A193788.P13175715353167380038

`A193789(A061579(n))`
-/

namespace A193788.P13175715353167380038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A061579 n).toNat

end

end A193788.P13175715353167380038

/-! ## A193788.P13042827193931099035

`A193789(A114327(n)+n)`
-/

namespace A193788.P13042827193931099035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A114327 n + (n : ℤ)).toNat

end

end A193788.P13042827193931099035

/-! ## A193788.P11259954589264314909

`A193790(Δ[A004247(n)]+n)`
-/

namespace A193788.P11259954589264314909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193788.P11259954589264314909

/-! ## A193788.P4473616788961356290

`A193789(A093995(n+1)-(n+1))`
-/

namespace A193788.P4473616788961356290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193788.P4473616788961356290

/-! ## A193788.P2401926676990919455

`A193791(A352520(n+1))`
-/

namespace A193788.P2401926676990919455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A352520 (n + 1)).toNat

end

end A193788.P2401926676990919455

/-!
# A193789: Mirror of the triangle A193788.

The programs for A193789, there is no canonical definition to state claims against.
-/

/-! ## A193789.P7258532930567853677

`A193791(A123578(n)+A056943(n))`
-/

namespace A193789.P7258532930567853677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A123578 n + A056943 n).toNat

end

end A193789.P7258532930567853677

/-! ## A193789.P1259560262780677791

`A193791(A093995(n+1)-A066182(n+1))`
-/

namespace A193789.P1259560262780677791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A093995 (n + 1) - A066182 (n + 1)).toNat

end

end A193789.P1259560262780677791

/-! ## A193789.P14829154253691921136

`A193788(∑[2*n]%comp[∑[n]])`
-/

namespace A193789.P14829154253691921136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193788 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193789.P14829154253691921136

/-! ## A193789.P1327842609074668347

`A193788(∑[char[∑[n]]]²-n-1)`
-/

namespace A193789.P1327842609074668347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193788 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193789.P1327842609074668347

/-! ## A193789.P16772216363697301868

`A193790(A066182(n+1)-1)`
-/

namespace A193789.P16772216363697301868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 (A066182 (n + 1) - 1).toNat

end

end A193789.P16772216363697301868

/-! ## A193789.P4201976803911960626

`A193790(A066182(A066182(n+1)))`
-/

namespace A193789.P4201976803911960626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 (A066182 (A066182 (n + 1)).toNat).toNat

end

end A193789.P4201976803911960626

/-!
# A193790: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(2x+1)^n and q(n,x)=1+x^n.

The programs for A193790, there is no canonical definition to state claims against.
-/

/-! ## A193790.P58145742248679877

`A193789(Δ[A002262(n)]+n)`
-/

namespace A193790.P58145742248679877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193790.P58145742248679877

/-! ## A193790.P14274812817444994096

`A193789(n-Δ[A056943(n)])`
-/

namespace A193790.P14274812817444994096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A193790.P14274812817444994096

/-! ## A193790.P11769950565991012492

`A193789(1-A127648(n)+n)`
-/

namespace A193790.P11769950565991012492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (1 - A127648 n + (n : ℤ)).toNat

end

end A193790.P11769950565991012492

/-! ## A193790.P15953327199792665233

`A193789(1-(A127648(n)-n))`
-/

namespace A193790.P15953327199792665233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (1 - (A127648 n - (n : ℤ))).toNat

end

end A193790.P15953327199792665233

/-! ## A193790.P15465231803140306844

`A193789(Δ[A002260(n+1)]+n)`
-/

namespace A193790.P15465231803140306844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193790.P15465231803140306844

/-! ## A193790.P128729022526262323

`A193789(n+1-Δ[A057944(n)])`
-/

namespace A193790.P128729022526262323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 ((n + 1 : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A193790.P128729022526262323

/-! ## A193790.P4949656880995961433

`A193791(gcd(A010816(n), A061579(n)))`
-/

namespace A193790.P4949656880995961433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (Int.gcd (A010816 n) (A061579 n))

end

end A193790.P4949656880995961433

/-! ## A193790.P14741377722292681020

`A193791(A061579(n))`
-/

namespace A193790.P14741377722292681020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A061579 n).toNat

end

end A193790.P14741377722292681020

/-! ## A193790.P6590896347227656361

`A193791(A093995(n+1)-(n+1))`
-/

namespace A193790.P6590896347227656361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193790.P6590896347227656361

/-! ## A193790.P300228138999017174

`A193789(A352520(n+1))`
-/

namespace A193790.P300228138999017174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A352520 (n + 1)).toNat

end

end A193790.P300228138999017174

/-!
# A193791: Mirror of the triangle A193790.

The programs for A193791, there is no canonical definition to state claims against.
-/

/-! ## A193791.P11678898422789049079

`A193824(n)-A193824(n+1)%A193824(n)`
-/

namespace A193791.P11678898422789049079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 n - Int.tmod (A193824 (n + 1)) (A193824 n)

end

end A193791.P11678898422789049079

/-! ## A193791.P10655412040776608361

`A193789(A123578(n)+A056943(n))`
-/

namespace A193791.P10655412040776608361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A123578 n + A056943 n).toNat

end

end A193791.P10655412040776608361

/-! ## A193791.P17240327771924010488

`A193789(A093995(n+1)-A066182(n+1))`
-/

namespace A193791.P17240327771924010488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A093995 (n + 1) - A066182 (n + 1)).toNat

end

end A193791.P17240327771924010488

/-! ## A193791.P8395299617293184782

`A193790(∑[2*n]%comp[∑[n]])`
-/

namespace A193791.P8395299617293184782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193791.P8395299617293184782

/-! ## A193791.P755564383075677048

`A193790(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193791.P755564383075677048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193791.P755564383075677048

/-! ## A193791.P11320661426156099201

`A193788(A194038(n+1))`
-/

namespace A193791.P11320661426156099201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193788 (A194038 (n + 1)).toNat

end

end A193791.P11320661426156099201

/-!
# A193792: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+3)^n and q(n,x)=1+x^n.

The programs for A193792, there is no canonical definition to state claims against.
-/

/-! ## A193792.P10476295682976098568

`A193793(∑[2*n]%comp[∑[n]])`
-/

namespace A193792.P10476295682976098568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193793 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193792.P10476295682976098568

/-! ## A193792.P17301548947958859297

`A193793(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193792.P17301548947958859297
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193793 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193792.P17301548947958859297

/-! ## A193792.P10691920900609638555

`A193795(A352520(n+1))`
-/

namespace A193792.P10691920900609638555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (A352520 (n + 1)).toNat

end

end A193792.P10691920900609638555

/-! ## A193792.P483549219931510083

`A193795(Δ[A002262(n)]+n)`
-/

namespace A193792.P483549219931510083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193792.P483549219931510083

/-! ## A193792.P15693459231018579639

`A193794(Δ[A004247(n)]+n)`
-/

namespace A193792.P15693459231018579639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193794 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193792.P15693459231018579639

/-! ## A193792.P17305575173985700998

`A193795(A002262(n+1)+n-A002262(n))`
-/

namespace A193792.P17305575173985700998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (A002262 (n + 1) + ((n : ℤ) - A002262 n)).toNat

end

end A193792.P17305575173985700998

/-!
# A193793: Mirror of the triangle A193792.

The programs for A193793, there is no canonical definition to state claims against.
-/

/-! ## A193793.P13896655483512388291

`A193792(∑[2*n]%comp[∑[n]])`
-/

namespace A193793.P13896655483512388291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193792 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193793.P13896655483512388291

/-! ## A193793.P4558193235146048543

`A193792(∑[char[∑[n]]]²-n-1)`
-/

namespace A193793.P4558193235146048543
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193792 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193793.P4558193235146048543

/-! ## A193793.P15926572577383445934

`A193794(n-A167407(n))`
-/

namespace A193793.P15926572577383445934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193794 ((n : ℤ) - A167407 n).toNat

end

end A193793.P15926572577383445934

/-! ## A193793.P11368876910774459475

`A193794(A066182(n+1)-1)`
-/

namespace A193793.P11368876910774459475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193794 (A066182 (n + 1) - 1).toNat

end

end A193793.P11368876910774459475

/-! ## A193793.P5500925377760595191

`gcd(n, n+1)*A193792(A061579(n))`
-/

namespace A193793.P5500925377760595191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A193792 (A061579 n).toNat

end

end A193793.P5500925377760595191

/-! ## A193793.P3553735709018448266

`A193795(A167407(n)+A061579(n))`
-/

namespace A193793.P3553735709018448266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (A167407 n + A061579 n).toNat

end

end A193793.P3553735709018448266

/-! ## A193793.P16722045502772811098

`A193792(A061579(n))%A055236(n)`
-/

namespace A193793.P16722045502772811098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193792 (A061579 n).toNat) (A055236 n)

end

end A193793.P16722045502772811098

/-! ## A193793.P7723541643765098294

`gcd(A000038(n), A193792(A061579(n)))`
-/

namespace A193793.P7723541643765098294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193792 (A061579 n).toNat)

end

end A193793.P7723541643765098294

/-!
# A193794: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(3x+1)^n and q(n,x)=1+x^n.

The programs for A193794, there is no canonical definition to state claims against.
-/

/-! ## A193794.P3504544590187053136

`A193795(∑[2*n]%A080036(n))`
-/

namespace A193794.P3504544590187053136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A193794.P3504544590187053136

/-! ## A193794.P7409497948015207206

`A193795((A114327(n)+n)%(n+9))`
-/

namespace A193794.P7409497948015207206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (Int.tmod (A114327 n + (n : ℤ)) (n + 9 : ℤ)).toNat

end

end A193794.P7409497948015207206

/-! ## A193794.P8895359917931455351

`A193795(A061579(n%A008956(n)))`
-/

namespace A193794.P8895359917931455351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (A061579 (Int.tmod (n : ℤ) (A008956 n)).toNat).toNat

end

end A193794.P8895359917931455351

/-! ## A193794.P7651997943308617755

`A193795(gcd(A061579(n), A198954(n)))`
-/

namespace A193794.P7651997943308617755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (Int.gcd (A061579 n) (A198954 n))

end

end A193794.P7651997943308617755

/-! ## A193794.P6018282127832014712

`A193795(abs(A061579(n)-A198954(n)))`
-/

namespace A193794.P6018282127832014712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 |A061579 n - A198954 n|.toNat

end

end A193794.P6018282127832014712

/-! ## A193794.P8071644859823475091

`A193795(ceil(A061579(n)^A167407(n)))`
-/

namespace A193794.P8071644859823475091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 ⌈(A061579 n : ℚ) ^ (A167407 n : ℤ)⌉.toNat

end

end A193794.P8071644859823475091

/-! ## A193794.P10298572090831431513

`A193795(char[A014132(n+1)]*A061579(n))`
-/

namespace A193794.P10298572090831431513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A193794.P10298572090831431513

/-! ## A193794.P2503481075939787114

`A193795(A061579(n))`
-/

namespace A193794.P2503481075939787114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (A061579 n).toNat

end

end A193794.P2503481075939787114

/-! ## A193794.P2120314930827571709

`A193793(A352520(n+1))`
-/

namespace A193794.P2120314930827571709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193793 (A352520 (n + 1)).toNat

end

end A193794.P2120314930827571709

/-! ## A193794.P8298532639275320240

`A193795(A114327(n)+n)`
-/

namespace A193794.P8298532639275320240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193795 (A114327 n + (n : ℤ)).toNat

end

end A193794.P8298532639275320240

/-!
# A193795: Mirror of the triangle A193794.

The programs for A193795, there is no canonical definition to state claims against.
-/

/-! ## A193795.P15674930905845616624

`A193794(∑[2*n]%comp[∑[n]])`
-/

namespace A193795.P15674930905845616624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193794 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193795.P15674930905845616624

/-! ## A193795.P3785700053489533548

`A193794(∑[char[∑[n]]]²-n-1)`
-/

namespace A193795.P3785700053489533548
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193794 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193795.P3785700053489533548

/-! ## A193795.P16858026108947969603

`A193792(n-A167407(n))`
-/

namespace A193795.P16858026108947969603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193792 ((n : ℤ) - A167407 n).toNat

end

end A193795.P16858026108947969603

/-! ## A193795.P14038773302495413868

`A193792(A066182(n+1)-1)`
-/

namespace A193795.P14038773302495413868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193792 (A066182 (n + 1) - 1).toNat

end

end A193795.P14038773302495413868

/-! ## A193795.P3412564200531147636

`gcd(n, n+1)*A193794(A061579(n))`
-/

namespace A193795.P3412564200531147636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A193794 (A061579 n).toNat

end

end A193795.P3412564200531147636

/-! ## A193795.P10935669163943125606

`A193793(A167407(n)+A061579(n))`
-/

namespace A193795.P10935669163943125606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193793 (A167407 n + A061579 n).toNat

end

end A193795.P10935669163943125606

/-! ## A193795.P13308263709968414505

`A193794(A061579(n))%A000230(n)`
-/

namespace A193795.P13308263709968414505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193794 (A061579 n).toNat) (A000230 n)

end

end A193795.P13308263709968414505

/-! ## A193795.P18403819050440746470

`gcd(A000038(n), A193794(A061579(n)))`
-/

namespace A193795.P18403819050440746470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193794 (A061579 n).toNat)

end

end A193795.P18403819050440746470

/-! ## A193795.P16046398249776744984

`or(A000007(n), A193794(A061579(n)))`
-/

namespace A193795.P16046398249776744984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A193794 (A061579 n).toNat)

end

end A193795.P16046398249776744984

/-!
# A193796: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(2x+3)^n and q(n,x)=1+x^n.

The programs for A193796, there is no canonical definition to state claims against.
-/

/-! ## A193796.P11278640534799789970

`A193799(A352520(n+1))`
-/

namespace A193796.P11278640534799789970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (A352520 (n + 1)).toNat

end

end A193796.P11278640534799789970

/-! ## A193796.P7686839405536802179

`A193799(Δ[A298486(n)]+n)`
-/

namespace A193796.P7686839405536802179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193796.P7686839405536802179

/-! ## A193796.P8921952316767368297

`A193799(Δ[A002260(n+1)]+n)`
-/

namespace A193796.P8921952316767368297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193796.P8921952316767368297

/-! ## A193796.P9534673021318083280

`A193799(n+1-Δ[A057944(n)])`
-/

namespace A193796.P9534673021318083280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 ((n + 1 : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A193796.P9534673021318083280

/-! ## A193796.P4809113306832100960

`A193799(A066182(n+2)-A198954(n+1))`
-/

namespace A193796.P4809113306832100960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (A066182 (n + 2) - A198954 (n + 1)).toNat

end

end A193796.P4809113306832100960

/-!
# A193797: Mirror of the triangle A193796.

The programs for A193797, there is no canonical definition to state claims against.
-/

/-! ## A193797.P3197980817810271330

`A193799(∑[A198954(n)]-A066182(n+1))`
-/

namespace A193797.P3197980817810271330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (∑ j ∈ Finset.range (n + 1), f1 j - A066182 (n + 1)).toNat

end

end A193797.P3197980817810271330

/-! ## A193797.P9461881897492291162

`A193799(A093995(n+1)-A066182(n+1))`
-/

namespace A193797.P9461881897492291162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (A093995 (n + 1) - A066182 (n + 1)).toNat

end

end A193797.P9461881897492291162

/-! ## A193797.P4858980723775065917

`A193796(∑[2*n]%comp[∑[n]])`
-/

namespace A193797.P4858980723775065917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193796 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193797.P4858980723775065917

/-! ## A193797.P4128530168411289829

`A193796(∑[char[∑[n]]]²-n-1)`
-/

namespace A193797.P4128530168411289829
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193796 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193797.P4128530168411289829

/-! ## A193797.P13062027276551021168

`A193798(A066182(n+1)-1)`
-/

namespace A193797.P13062027276551021168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193798 (A066182 (n + 1) - 1).toNat

end

end A193797.P13062027276551021168

/-!
# A193798: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(3x+2)^n and q(n,x)=1+x^n.

The programs for A193798, there is no canonical definition to state claims against.
-/

/-! ## A193798.P17492750023439250631

`A193797(A352520(n+1))`
-/

namespace A193798.P17492750023439250631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (A352520 (n + 1)).toNat

end

end A193798.P17492750023439250631

/-! ## A193798.P8349300438934683698

`A193797(Δ[A002262(n)]+n)`
-/

namespace A193798.P8349300438934683698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193798.P8349300438934683698

/-! ## A193798.P3905857498013236216

`A193797(Δ[A298486(n)]+n)`
-/

namespace A193798.P3905857498013236216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193798.P3905857498013236216

/-! ## A193798.P6159513934230721545

`A193797(Δ[A002260(n+1)]+n)`
-/

namespace A193798.P6159513934230721545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A193798.P6159513934230721545

/-! ## A193798.P1246374768681107419

`A193797(n+1-Δ[A057944(n)])`
-/

namespace A193798.P1246374768681107419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 ((n + 1 : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A193798.P1246374768681107419

/-!
# A193799: Mirror of the triangle A193798.

The programs for A193799, there is no canonical definition to state claims against.
-/

/-! ## A193799.P6333061112458195882

`A193797(∑[A198954(n)]-A066182(n+1))`
-/

namespace A193799.P6333061112458195882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (∑ j ∈ Finset.range (n + 1), f1 j - A066182 (n + 1)).toNat

end

end A193799.P6333061112458195882

/-! ## A193799.P11750720189636727660

`A193797(A093995(n+1)-A066182(n+1))`
-/

namespace A193799.P11750720189636727660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (A093995 (n + 1) - A066182 (n + 1)).toNat

end

end A193799.P11750720189636727660

/-! ## A193799.P1424865252718195372

`A193798(∑[2*n]%comp[∑[n]])`
-/

namespace A193799.P1424865252718195372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193798 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193799.P1424865252718195372

/-! ## A193799.P418921042621946081

`A193798(∑[char[∑[n]]]²-n-1)`
-/

namespace A193799.P418921042621946081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193798 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A193799.P418921042621946081

/-! ## A193799.P5988476046084363714

`A193796(A066182(n+1)-1)`
-/

namespace A193799.P5988476046084363714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193796 (A066182 (n + 1) - 1).toNat

end

end A193799.P5988476046084363714

