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
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A303500: The smallest positive even integer that can be written with n digits in base 3/2.

The programs for A303500, the canonical program `A303500.P18113148796147249263` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303500 has offset 0).

The definition of A303500 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303500.P18113148796147249263

`A024629(A305498(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A303500

/-- `A024629(A305498(n+1))` -/
def P18113148796147249263.Spec : Prop :=
  ∀ n, P18113148796147249263.a n = A303500 n

theorem P18113148796147249263.correct : P18113148796147249263.Spec := by
  intro n
  simp only [A303500]

end A303500

/-! ## A303500.P15208967930145817424

`A024629(2*(A006999(n)+1))`
-/

namespace A303500.P15208967930145817424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (2 * (A006999 n + 1)).toNat

end

end A303500.P15208967930145817424

namespace A303500

/-- `A024629(2*(A006999(n)+1))` -/
def P15208967930145817424.Spec : Prop :=
  ∀ n, P15208967930145817424.a n = A303500 n

end A303500

/-! ## A303500.P7867901663110987828

`A024629(2*A061419(n+1))`
-/

namespace A303500.P7867901663110987828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (2 * A061419 (n + 1)).toNat

end

end A303500.P7867901663110987828

namespace A303500

/-- `A024629(2*A061419(n+1))` -/
def P7867901663110987828.Spec : Prop :=
  ∀ n, P7867901663110987828.a n = A303500 n

end A303500

/-! ## A303500.P10209021521017833034

`A024629(∑[2*A073941(n+1)])`
-/

namespace A303500.P10209021521017833034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303500.P10209021521017833034

namespace A303500

/-- `A024629(∑[2*A073941(n+1)])` -/
def P10209021521017833034.Spec : Prop :=
  ∀ n, P10209021521017833034.a n = A303500 n

end A303500

/-! ## A303500.P15865552133422971285

`A304273(n+1)+A304023(n+1)`
-/

namespace A303500.P15865552133422971285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) + A304023 (n + 1)

end

end A303500.P15865552133422971285

namespace A303500

/-- `A304273(n+1)+A304023(n+1)` -/
def P15865552133422971285.Spec : Prop :=
  ∀ n, P15865552133422971285.a n = A303500 n

end A303500

/-!
# A303503: a(n) = (2*n)! * [x^(2*n)] BesselI(0,2*x)^n.

The programs for A303503, there is no canonical definition to state claims against.
-/

/-! ## A303503.P13040874986273288508

`A000984(n)*A033935(n)`
-/

namespace A303503.P13040874986273288508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A033935 n

end

end A303503.P13040874986273288508

/-! ## A303503.P17826998726494188151

`sqrt(A002894(n))*A033935(n)`
-/

namespace A303503.P17826998726494188151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A033935 n : ℝ)

end

end A303503.P17826998726494188151

/-! ## A303503.P17368848271316301906

`record[A081668(n)]*A033935(n)`
-/

namespace A303503.P17368848271316301906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033935 n

end

end A303503.P17368848271316301906

/-! ## A303503.P10323109348814418606

`A033935(n)*A081668(2*n)`
-/

namespace A303503.P10323109348814418606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033935 n * A081668 (2 * n)

end

end A303503.P10323109348814418606

/-! ## A303503.P3289047812225487460

`A000984(n)*A287316(A046092(n))`
-/

namespace A303503.P3289047812225487460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A287316 (A046092 n).toNat

end

end A303503.P3289047812225487460

/-!
# A303504: 

The programs for A303504, there is no canonical definition to state claims against.
-/

/-! ## A303504.P7921545857733362096

`lt[A332550(n), 8]`
-/

namespace A303504.P7921545857733362096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A303504.P7921545857733362096

/-! ## A303504.P11837049751823607116

`comp[A303502(n+1)-1]+1`
-/

namespace A303504.P11837049751823607116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303502 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A303504.P11837049751823607116

/-! ## A303504.P18076905851609596149

`lt[2, A055642(A320486(n))]`
-/

namespace A303504.P18076905851609596149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A320486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A303504.P18076905851609596149

/-! ## A303504.P4033736138116281438

`eq[7, A010877(A139337(n))]`
-/

namespace A303504.P4033736138116281438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303504.P4033736138116281438

/-! ## A303504.P12629628039214833273

`eq[2, A268726(A139337(n)-1)]`
-/

namespace A303504.P12629628039214833273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (A139337 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303504.P12629628039214833273

/-! ## A303504.P3356391207955524443

`eq[1, A108037(A332550(n)-2)]`
-/

namespace A303504.P3356391207955524443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (A332550 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303504.P3356391207955524443

/-! ## A303504.P11913337823408690622

`eq[A107843(n+1), A178788(n)]`
-/

namespace A303504.P11913337823408690622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303504.P11913337823408690622

/-! ## A303504.P12759503794219438367

`eq[A178788(n), A318571(n+1)]`
-/

namespace A303504.P12759503794219438367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303504.P12759503794219438367

/-! ## A303504.P6556190434864390361

`eq[1, A107846(n)+A107843(n+1)]`
-/

namespace A303504.P6556190434864390361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + A107843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303504.P6556190434864390361

/-!
# A303505: Number of odd chordless cycles in the n-triangular (Johnson) graph.

The programs for A303505, there is no canonical definition to state claims against.
-/

/-! ## A303505.P2930306892352338260

`A004524(A123014(n+2))`
-/

namespace A303505.P2930306892352338260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A123014 (n + 2)).toNat

end

end A303505.P2930306892352338260

/-! ## A303505.P562951945165396741

`A122461(A123014(n+2)+1)`
-/

namespace A303505.P562951945165396741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 (A123014 (n + 2) + 1).toNat

end

end A303505.P562951945165396741

/-! ## A303505.P2081131757787369466

`A004525(A123014(n+2)-1)`
-/

namespace A303505.P2081131757787369466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A123014 (n + 2) - 1).toNat

end

end A303505.P2081131757787369466

/-!
# A303506: G.f.: Sum_{n>=1} (-1)^(n-1) * x^(n^2)/(1 - x^n)^n.

The programs for A303506, there is no canonical definition to state claims against.
-/

/-! ## A303506.P10204726931241350478

`A261865(A000571(n))-A032742(n+1)`
-/

namespace A303506.P10204726931241350478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261865 (A000571 n).toNat - A032742 (n + 1)

end

end A303506.P10204726931241350478

/-! ## A303506.P120669179366593771

`A347456(A082293(2*(n+1)))-A152271(n)`
-/

namespace A303506.P120669179366593771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (A082293 (2 * (n + 1))).toNat - A152271 n

end

end A303506.P120669179366593771

/-!
# A303507: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303507, there is no canonical definition to state claims against.
-/

/-! ## A303507.P16861860575720442404

`A303513(∑[4*n]+1)`
-/

namespace A303507.P16861860575720442404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303507.P16861860575720442404

/-! ## A303507.P15734876997240917203

`record[A303513(Δ[A235355(n)])]`
-/

namespace A303507.P15734876997240917203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303507.P15734876997240917203

/-! ## A303507.P6352500544200273946

`record[A303513(A272267(n+1))]`
-/

namespace A303507.P6352500544200273946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303507.P6352500544200273946

/-! ## A303507.P16091689746508536751

`record[A303513(A330613(n+1))]`
-/

namespace A303507.P16091689746508536751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303507.P16091689746508536751

/-! ## A303507.P6581166371222072737

`A303513(A001844(n))+char[9]`
-/

namespace A303507.P6581166371222072737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303507.P6581166371222072737

/-!
# A303508: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303508, there is no canonical definition to state claims against.
-/

/-! ## A303508.P18213047545562269262

`A303513(∑[n+3]+1)`
-/

namespace A303508.P18213047545562269262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303508.P18213047545562269262

/-! ## A303508.P17680549791878797587

`record[A303513(A198464(n+1))]`
-/

namespace A303508.P17680549791878797587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303508.P17680549791878797587

/-! ## A303508.P11988139909114002960

`A184348(n+1)*A303513(A034856(n+2))`
-/

namespace A303508.P11988139909114002960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) * A303513 (A034856 (n + 2)).toNat

end

end A303508.P11988139909114002960

/-! ## A303508.P16177859514721045764

`A303513(A034856(n+2))%A092759(n+1)`
-/

namespace A303508.P16177859514721045764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303513 (A034856 (n + 2)).toNat) (A092759 (n + 1))

end

end A303508.P16177859514721045764

/-!
# A303509: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303509, there is no canonical definition to state claims against.
-/

/-! ## A303509.P10106138695876793760

`A303513(A141214(n+1))`
-/

namespace A303509.P10106138695876793760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A141214 (n + 1)).toNat

end

end A303509.P10106138695876793760

/-! ## A303509.P16505269902302007286

`A303513(A027379(n+2))`
-/

namespace A303509.P16505269902302007286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A027379 (n + 2)).toNat

end

end A303509.P16505269902302007286

/-! ## A303509.P15672147109001646668

`A303513(A055998(n+2))`
-/

namespace A303509.P15672147109001646668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A055998 (n + 2)).toNat

end

end A303509.P15672147109001646668

/-! ## A303509.P497458381854765759

`A303513(A155212(n)+5)`
-/

namespace A303509.P497458381854765759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A155212 n + 5).toNat

end

end A303509.P497458381854765759

/-! ## A303509.P11589584593077809972

`A303513(A056000(n)+7)`
-/

namespace A303509.P11589584593077809972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A056000 n + 7).toNat

end

end A303509.P11589584593077809972

/-!
# A303510: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303510, there is no canonical definition to state claims against.
-/

/-! ## A303510.P5706063852030913139

`A303513(A046691(n+3))`
-/

namespace A303510.P5706063852030913139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A046691 (n + 3)).toNat

end

end A303510.P5706063852030913139

/-! ## A303510.P9184820871166673082

`A303513(eq[4, A193592(n)])`
-/

namespace A303510.P9184820871166673082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303510.P9184820871166673082

/-! ## A303510.P13240858195536381564

`A303513(eq[5, A239144(n)])`
-/

namespace A303510.P13240858195536381564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303510.P13240858195536381564

/-! ## A303510.P2228046275412234435

`A303513(eq[8, A209439(n)])`
-/

namespace A303510.P2228046275412234435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303510.P2228046275412234435

/-! ## A303510.P1178514669202600292

`A303513(Δ[A023545(n+1)])`
-/

namespace A303510.P1178514669202600292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (f1 (n + 1) - f1 n).toNat

end

end A303510.P1178514669202600292

/-!
# A303511: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303511, there is no canonical definition to state claims against.
-/

/-! ## A303511.P10340952625643995023

`A303513(A052905(n+3))`
-/

namespace A303511.P10340952625643995023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A052905 (n + 3)).toNat

end

end A303511.P10340952625643995023

/-! ## A303511.P7257202610602890561

`A303513(A056119(n)+16)`
-/

namespace A303511.P7257202610602890561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A056119 n + 16).toNat

end

end A303511.P7257202610602890561

/-! ## A303511.P12797735922890634109

`A303513(eq[3, A219347(n)])`
-/

namespace A303511.P12797735922890634109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303511.P12797735922890634109

/-! ## A303511.P4579420526932631387

`A303513(eq[5, A193592(n)])`
-/

namespace A303511.P4579420526932631387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303511.P4579420526932631387

/-! ## A303511.P3256721714319327747

`A303513(eq[6, A200370(n+1)])`
-/

namespace A303511.P3256721714319327747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303511.P3256721714319327747

/-!
# A303512: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303512, there is no canonical definition to state claims against.
-/

/-! ## A303512.P8460274177548386104

`A303513(A055999(n+4))`
-/

namespace A303512.P8460274177548386104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A055999 (n + 4)).toNat

end

end A303512.P8460274177548386104

/-! ## A303512.P8105210022861306399

`A303513(eq[4, A219347(n)])`
-/

namespace A303512.P8105210022861306399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303512.P8105210022861306399

/-! ## A303512.P16648991081256890830

`A303513(eq[6, A193592(n)])`
-/

namespace A303512.P16648991081256890830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303512.P16648991081256890830

/-! ## A303512.P7055605278976368820

`A303513(∑[A020719(n)]+15)`
-/

namespace A303512.P7055605278976368820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A303512.P7055605278976368820

/-! ## A303512.P4668057077168763611

`A303513(A155212(n+3)+2)`
-/

namespace A303512.P4668057077168763611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A155212 (n + 3) + 2).toNat

end

end A303512.P4668057077168763611

/-!
# A303513: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303513, there is no canonical definition to state claims against.
-/

/-! ## A303513.P4786516847958689010

`A302820(n+1)+A151755(A102365(n))`
-/

namespace A303513.P4786516847958689010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (n + 1) + A151755 (A102365 n).toNat

end

end A303513.P4786516847958689010

/-! ## A303513.P11072864845387685518

`xor(A151755(A174546(n)), A302322(n+1))`
-/

namespace A303513.P11072864845387685518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A174546 n).toNat) (A302322 (n + 1))

end

end A303513.P11072864845387685518

/-! ## A303513.P5236059159137767852

`xor(A151755(A176420(n)), A302820(n+1))`
-/

namespace A303513.P5236059159137767852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A176420 n).toNat) (A302820 (n + 1))

end

end A303513.P5236059159137767852

/-! ## A303513.P2823445640833694333

`A302820(n+1)+A081221(A208408(n+1))`
-/

namespace A303513.P2823445640833694333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (n + 1) + A081221 (A208408 (n + 1)).toNat

end

end A303513.P2823445640833694333

/-! ## A303513.P13709651434663274167

`A285054(A303016(n+1))`
-/

namespace A303513.P13709651434663274167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285054 (A303016 (n + 1)).toNat

end

end A303513.P13709651434663274167

/-!
# A303514: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303514, there is no canonical definition to state claims against.
-/

/-! ## A303514.P7897025030802812527

`A303513(∑[n+2]+4)`
-/

namespace A303514.P7897025030802812527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303514.P7897025030802812527

/-! ## A303514.P11035591638119608512

`A303513(A167614(n+1))%A016890(n)`
-/

namespace A303514.P11035591638119608512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303513 (A167614 (n + 1)).toNat) (A016890 n)

end

end A303514.P11035591638119608512

/-! ## A303514.P15168136635239468406

`A303513(A055998(n)+6)+A058348(n+4)`
-/

namespace A303514.P15168136635239468406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A055998 n + 6).toNat + A058348 (n + 4)

end

end A303514.P15168136635239468406

/-! ## A303514.P15432251351996345143

`A000265(2^n)*A303513(A055998(n)+6)`
-/

namespace A303514.P15432251351996345143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A303513 (A055998 n + 6).toNat

end

end A303514.P15432251351996345143

/-! ## A303514.P1227866842506806389

`A303513(A055998(n)+6)%A303509(n+1)`
-/

namespace A303514.P1227866842506806389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303513 (A055998 n + 6).toNat) (A303509 (n + 1))

end

end A303514.P1227866842506806389

/-!
# A303515: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303515, there is no canonical definition to state claims against.
-/

/-! ## A303515.P7463236300323246129

`A303513(A145018(n+4))`
-/

namespace A303515.P7463236300323246129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A145018 (n + 4)).toNat

end

end A303515.P7463236300323246129

/-! ## A303515.P13642828268525801258

`A303513(A141214(n)+7)`
-/

namespace A303515.P13642828268525801258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A141214 n + 7).toNat

end

end A303515.P13642828268525801258

/-! ## A303515.P3728454987055886436

`A303513(A052905(n)+9)`
-/

namespace A303515.P3728454987055886436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A052905 n + 9).toNat

end

end A303515.P3728454987055886436

/-! ## A303515.P8875555400616081416

`A303513(A055999(n)+10)`
-/

namespace A303515.P8875555400616081416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A055999 n + 10).toNat

end

end A303515.P8875555400616081416

/-! ## A303515.P17553880857955593365

`A303513(A167614(n+2)+1)`
-/

namespace A303515.P17553880857955593365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A167614 (n + 2) + 1).toNat

end

end A303515.P17553880857955593365

/-!
# A303516: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303516, there is no canonical definition to state claims against.
-/

/-! ## A303516.P6986824670883775563

`A303513(A155212(n)+13)`
-/

namespace A303516.P6986824670883775563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A155212 n + 13).toNat

end

end A303516.P6986824670883775563

/-! ## A303516.P16668396505598212769

`A303513(A141214(n+1)+8)`
-/

namespace A303516.P16668396505598212769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A141214 (n + 1) + 8).toNat

end

end A303516.P16668396505598212769

/-! ## A303516.P13342324812375665501

`A303513(A034856(n+3)+7)`
-/

namespace A303516.P13342324812375665501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A034856 (n + 3) + 7).toNat

end

end A303516.P13342324812375665501

/-! ## A303516.P11640042226880749840

`A303513(A055999(n+1)+11)`
-/

namespace A303516.P11640042226880749840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A055999 (n + 1) + 11).toNat

end

end A303516.P11640042226880749840

/-! ## A303516.P3033805681921462435

`A303513(A167614(n+4)-(n+3))`
-/

namespace A303516.P3033805681921462435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A303516.P3033805681921462435

/-!
# A303517: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303517, there is no canonical definition to state claims against.
-/

/-! ## A303517.P9419566938353451845

`A303513(A166136(n+4))`
-/

namespace A303517.P9419566938353451845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A166136 (n + 4)).toNat

end

end A303517.P9419566938353451845

/-! ## A303517.P5864115009116945255

`A303513(A056115(n)+21)`
-/

namespace A303517.P5864115009116945255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A056115 n + 21).toNat

end

end A303517.P5864115009116945255

/-! ## A303517.P7209724864388185618

`A303513(A167614(n+4)+3)`
-/

namespace A303517.P7209724864388185618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A167614 (n + 4) + 3).toNat

end

end A303517.P7209724864388185618

/-! ## A303517.P9318082105003419942

`A303513(A000124(n+5)+5)`
-/

namespace A303517.P9318082105003419942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A000124 (n + 5) + 5).toNat

end

end A303517.P9318082105003419942

/-! ## A303517.P16462135791464289956

`A303513(eq[7, A131818(n+1)])`
-/

namespace A303517.P16462135791464289956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303517.P16462135791464289956

/-!
# A303518: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303518, there is no canonical definition to state claims against.
-/

/-! ## A303518.P3262157497594395746

`A303513(A302537(n)+27)`
-/

namespace A303518.P3262157497594395746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A302537 n + 27).toNat

end

end A303518.P3262157497594395746

/-! ## A303518.P15147590604665956248

`A303513(eq[11, A066657(n)])`
-/

namespace A303518.P15147590604665956248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303518.P15147590604665956248

/-! ## A303518.P6609637023998168063

`A303513(A167499(n+5)+2)`
-/

namespace A303518.P6609637023998168063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (A167499 (n + 5) + 2).toNat

end

end A303518.P6609637023998168063

/-! ## A303518.P690056014218301534

`A303513(eq[6, A002262(n)]+1)`
-/

namespace A303518.P690056014218301534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303518.P690056014218301534

/-! ## A303518.P5178551141495055387

`A303513(eq[8, A131818(n+1)])`
-/

namespace A303518.P5178551141495055387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303518.P5178551141495055387

/-!
# A303519: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303519, there is no canonical definition to state claims against.
-/

/-! ## A303519.P14470146067499803089

`A303525(∑[4*n]+1)`
-/

namespace A303519.P14470146067499803089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303519.P14470146067499803089

/-! ## A303519.P11980916101790556593

`record[A303525(Δ[A235355(n)])]`
-/

namespace A303519.P11980916101790556593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303519.P11980916101790556593

/-! ## A303519.P9441156142519314430

`record[A303525(A330613(n+1))]`
-/

namespace A303519.P9441156142519314430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303519.P9441156142519314430

/-! ## A303519.P11242267414781337343

`A303525(A001844(n))+char[9]`
-/

namespace A303519.P11242267414781337343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303519.P11242267414781337343

/-! ## A303519.P3211035533838764730

`record[A303525(A003602((n+1)²))]`
-/

namespace A303519.P3211035533838764730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303519.P3211035533838764730

/-!
# A303520: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303520, there is no canonical definition to state claims against.
-/

/-! ## A303520.P7071862049173518190

`A303525(∑[n+3]+1)`
-/

namespace A303520.P7071862049173518190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303520.P7071862049173518190

/-! ## A303520.P10056610936830753854

`record[A303525(A198464(n+1))]`
-/

namespace A303520.P10056610936830753854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303520.P10056610936830753854

/-! ## A303520.P1394818896240040953

`or(2, A303525(A034856(n+2)))`
-/

namespace A303520.P1394818896240040953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A303525 (A034856 (n + 2)).toNat)

end

end A303520.P1394818896240040953

/-! ## A303520.P7241449985664175505

`gcd(5, A007318(n))*A303525(A034856(n+2))`
-/

namespace A303520.P7241449985664175505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A007318 n) : ℤ) * A303525 (A034856 (n + 2)).toNat

end

end A303520.P7241449985664175505

/-! ## A303520.P6980015126199520712

`A007318(C(2, n))*A303525(A034856(n+2))`
-/

namespace A303520.P6980015126199520712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303525 (A034856 (n + 2)).toNat

end

end A303520.P6980015126199520712

/-!
# A303521: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303521, there is no canonical definition to state claims against.
-/

/-! ## A303521.P16399224924745350519

`A303525(∑[n+4]+3)`
-/

namespace A303521.P16399224924745350519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303521.P16399224924745350519

/-! ## A303521.P5656335303830467111

`A303525(A056000(n)+7)+char[15]`
-/

namespace A303521.P5656335303830467111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303521.P5656335303830467111

/-! ## A303521.P8765717060744175671

`or(A303525(A055998(n+2)), A345166(n))`
-/

namespace A303521.P8765717060744175671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A303525 (A055998 (n + 2)).toNat) (A345166 n)

end

end A303521.P8765717060744175671

/-! ## A303521.P11555997691731427197

`A007318(C(2, n))*A303525(A056000(n)+7)`
-/

namespace A303521.P11555997691731427197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303525 (A056000 n + 7).toNat

end

end A303521.P11555997691731427197

/-! ## A303521.P7668994880138808225

`A303525(A056000(n)+7)/A007318(C(n, 2))`
-/

namespace A303521.P7668994880138808225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303525 (A056000 n + 7).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A303521.P7668994880138808225

/-!
# A303522: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303522, there is no canonical definition to state claims against.
-/

/-! ## A303522.P2693040948391928953

`A303525(∑[n+5]+6)`
-/

namespace A303522.P2693040948391928953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A303522.P2693040948391928953

/-! ## A303522.P14980401732760851495

`A060576(n+4)*A303525(A060577(n+4))`
-/

namespace A303522.P14980401732760851495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 4) * A303525 (A060577 (n + 4)).toNat

end

end A303522.P14980401732760851495

/-!
# A303523: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303523, there is no canonical definition to state claims against.
-/

/-! ## A303523.P15640833948935475822

`A303525(∑[n+6]+10)`
-/

namespace A303523.P15640833948935475822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A303523.P15640833948935475822

/-!
# A303524: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303524, there is no canonical definition to state claims against.
-/

/-! ## A303524.P15020861507313403355

`A303525(A055999(n+4))`
-/

namespace A303524.P15020861507313403355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A055999 (n + 4)).toNat

end

end A303524.P15020861507313403355

/-! ## A303524.P1674297698646122639

`A303525(A056121(n)+22)`
-/

namespace A303524.P1674297698646122639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A056121 n + 22).toNat

end

end A303524.P1674297698646122639

/-! ## A303524.P5589468975581055752

`A303525(eq[4, A219347(n)])`
-/

namespace A303524.P5589468975581055752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303524.P5589468975581055752

/-! ## A303524.P5418698655585891753

`A303525(eq[5, A332954(n)])`
-/

namespace A303524.P5418698655585891753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303524.P5418698655585891753

/-! ## A303524.P148414123665775412

`A303525(eq[6, A193592(n)])`
-/

namespace A303524.P148414123665775412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303524.P148414123665775412

/-!
# A303525: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303525, there is no canonical definition to state claims against.
-/

/-! ## A303525.P7936112560173111581

`A302877(n+1)+A124763(A099594(n))`
-/

namespace A303525.P7936112560173111581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (n + 1) + A124763 (A099594 n).toNat

end

end A303525.P7936112560173111581

/-! ## A303525.P15202703827241821509

`A302877(n+1)+A037800(A296548(n))`
-/

namespace A303525.P15202703827241821509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (n + 1) + A037800 (A296548 n).toNat

end

end A303525.P15202703827241821509

/-! ## A303525.P3401961768507385591

`A302877(n+1)+A173920(A173917(n))`
-/

namespace A303525.P3401961768507385591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (n + 1) + A173920 (A173917 n).toNat

end

end A303525.P3401961768507385591

/-! ## A303525.P990917519559435407

`A302877(n+1)+A185254(A133084(n+1))`
-/

namespace A303525.P990917519559435407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (n + 1) + A185254 (A133084 (n + 1)).toNat

end

end A303525.P990917519559435407

/-! ## A303525.P18035105385176016366

`A303040(n+1)+A246159(A184944(n))`
-/

namespace A303525.P18035105385176016366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) + A246159 (A184944 n).toNat

end

end A303525.P18035105385176016366

/-!
# A303526: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303526, there is no canonical definition to state claims against.
-/

/-! ## A303526.P12765950068882725509

`A303525(∑[n+2]+4)`
-/

namespace A303526.P12765950068882725509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303526.P12765950068882725509

/-! ## A303526.P17538657473815912641

`A303525(A167614(n+1))+char[21]`
-/

namespace A303526.P17538657473815912641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303526.P17538657473815912641

/-! ## A303526.P7489444526708515325

`A303525(A055998(n)+6)+char[23]`
-/

namespace A303526.P7489444526708515325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303526.P7489444526708515325

/-! ## A303526.P15790930908984797922

`A326541(n)+A303525(A167614(n+1))`
-/

namespace A303526.P15790930908984797922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A303525 (A167614 (n + 1)).toNat

end

end A303526.P15790930908984797922

/-! ## A303526.P12565790422769444880

`A303525(A167614(n+1))%A081067(n)`
-/

namespace A303526.P12565790422769444880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303525 (A167614 (n + 1)).toNat) (A081067 n)

end

end A303526.P12565790422769444880

/-!
# A303527: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303527, there is no canonical definition to state claims against.
-/

/-! ## A303527.P18285904614296691375

`A303525(∑[n+3]+7)`
-/

namespace A303527.P18285904614296691375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303527.P18285904614296691375

/-! ## A303527.P13503195463971074275

`A303525(A052905(n)+9)+char[19]`
-/

namespace A303527.P13503195463971074275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303527.P13503195463971074275

/-! ## A303527.P14536579701462677626

`A303525(A000217(n+3)+4)+char[16]`
-/

namespace A303527.P14536579701462677626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303527.P14536579701462677626

/-! ## A303527.P11296324574711364230

`A007318(C(2, n))*A303525(A052905(n)+9)`
-/

namespace A303527.P11296324574711364230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303525 (A052905 n + 9).toNat

end

end A303527.P11296324574711364230

/-! ## A303527.P5310953831001182844

`∏{p}[n, A001221(#)]*A303525(A052905(n)+9)`
-/

namespace A303527.P5310953831001182844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A303525 (A052905 n + 9).toNat

end

end A303527.P5310953831001182844

/-!
# A303528: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303528, there is no canonical definition to state claims against.
-/

/-! ## A303528.P16711005073526146820

`A303525(A167499(n+3))`
-/

namespace A303528.P16711005073526146820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A167499 (n + 3)).toNat

end

end A303528.P16711005073526146820

/-! ## A303528.P9267945351989853974

`A303525(A155212(n)+13)`
-/

namespace A303528.P9267945351989853974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A155212 n + 13).toNat

end

end A303528.P9267945351989853974

/-! ## A303528.P15385761224640812309

`A303525(A056000(n)+15)`
-/

namespace A303528.P15385761224640812309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A056000 n + 15).toNat

end

end A303528.P15385761224640812309

/-! ## A303528.P16604741729922675660

`A303525(eq[7, A066657(n)])`
-/

namespace A303528.P16604741729922675660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303528.P16604741729922675660

/-! ## A303528.P14014827095599713248

`A303525(∑[A020705(n)]+11)`
-/

namespace A303528.P14014827095599713248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A303528.P14014827095599713248

/-!
# A303529: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303529, there is no canonical definition to state claims against.
-/

/-! ## A303529.P14460198714635227218

`A303525(∑[n+5]+16)`
-/

namespace A303529.P14460198714635227218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303529.P14460198714635227218

/-! ## A303529.P7978910629386969448

`A326541(n)+A303525(A167614(n+4)+3)`
-/

namespace A303529.P7978910629386969448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A303525 (A167614 (n + 4) + 3).toNat

end

end A303529.P7978910629386969448

/-! ## A303529.P13159791560944520924

`A303525(A167614(n+4)+3)+A006983(n+1)`
-/

namespace A303529.P13159791560944520924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A167614 (n + 4) + 3).toNat + A006983 (n + 1)

end

end A303529.P13159791560944520924

/-!
# A303530: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303530, there is no canonical definition to state claims against.
-/

/-! ## A303530.P15230272638076267151

`A303525(A167487(n+5))`
-/

namespace A303530.P15230272638076267151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A167487 (n + 5)).toNat

end

end A303530.P15230272638076267151

/-! ## A303530.P5843252255220647046

`A303525(A056119(n)+28)`
-/

namespace A303530.P5843252255220647046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A056119 n + 28).toNat

end

end A303530.P5843252255220647046

/-! ## A303530.P9484981055571691590

`A303525(eq[11, A066657(n)])`
-/

namespace A303530.P9484981055571691590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303530.P9484981055571691590

/-! ## A303530.P4331037699463509671

`A303525(A167499(n+5)+2)`
-/

namespace A303530.P4331037699463509671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A167499 (n + 5) + 2).toNat

end

end A303530.P4331037699463509671

/-! ## A303530.P9558502825553726713

`A303525(A034856(n+5)+9)`
-/

namespace A303530.P9558502825553726713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (A034856 (n + 5) + 9).toNat

end

end A303530.P9558502825553726713

/-!
# A303531: Numbers k such that both k and (k+1)/2 are Fermat pseudoprimes to base 2 (A001567).

The programs for A303531, there is no canonical definition to state claims against.
-/

/-! ## A303531.P11950172147117634067

`2*A298758(n+1)-1`
-/

namespace A303531.P11950172147117634067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298758 (n + 1) - 1

end

end A303531.P11950172147117634067

/-! ## A303531.P11340068032235277161

`-A000040(n+2)%2+2*A298758(n+1)`
-/

namespace A303531.P11340068032235277161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A000040 (n + 2)) 2 + 2 * A298758 (n + 1)

end

end A303531.P11340068032235277161

/-! ## A303531.P6998624246287137159

`A008683(A007918(n))+2*A298758(n+1)`
-/

namespace A303531.P6998624246287137159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A298758 (n + 1)

end

end A303531.P6998624246287137159

/-! ## A303531.P5888156489007919815

`A008683(A001359(n+1))+2*A298758(n+1)`
-/

namespace A303531.P5888156489007919815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A298758 (n + 1)

end

end A303531.P5888156489007919815

/-! ## A303531.P9599030730673221971

`A008683(A182047(n))+2*A298758(n+1)`
-/

namespace A303531.P9599030730673221971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A182047 n).toNat + 2 * A298758 (n + 1)

end

end A303531.P9599030730673221971

/-! ## A303531.P11482881783849019054

`A008683(A002148(n))+2*A298758(n+1)`
-/

namespace A303531.P11482881783849019054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 2 * A298758 (n + 1)

end

end A303531.P11482881783849019054

/-!
# A303532: a(n) = M(n,2) = number of graphs on n labeled nodes such that each node participates in no more than two maximal cliques.

The programs for A303532, there is no canonical definition to state claims against.
-/

/-! ## A303532.P4192789983140518155

`A004523(2^n+n^(n+1)+1)`
-/

namespace A303532.P4192789983140518155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (2 ^ n + n ^ (n + 1) + 1)

end

end A303532.P4192789983140518155

/-!
# A303534: Amount by which n exceeds the largest binary palindrome less than or equal to n.

The programs for A303534, the canonical program `A303534.P18169794156048057215` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303534 has offset 0).

The definition of A303534 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303534.P18169794156048057215

`n-A206913(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A303534

/-- `n-A206913(n)` -/
def P18169794156048057215.Spec : Prop :=
  ∀ n, P18169794156048057215.a n = A303534 n

theorem P18169794156048057215.correct : P18169794156048057215.Spec := by
  intro n
  simp only [A303534]

end A303534

/-! ## A303534.P12726513109221769266

`(a(n-1)+1)*A178226(n)` with `a(0)=0`
-/

namespace A303534.P12726513109221769266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A178226 n

end

end A303534.P12726513109221769266

namespace A303534

/-- `(a(n-1)+1)*A178226(n)` -/
def P12726513109221769266.Spec : Prop :=
  ∀ n, P12726513109221769266.a n = A303534 n

end A303534

/-! ## A303534.P8743853125139641729

`(n+1)%(A206913(n%(n+1))+1)`
-/

namespace A303534.P8743853125139641729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A206913 (n % (n + 1)) + 1)

end

end A303534.P8743853125139641729

namespace A303534

/-- `(n+1)%(A206913(n%(n+1))+1)` -/
def P8743853125139641729.Spec : Prop :=
  ∀ n, P8743853125139641729.a n = A303534 n

end A303534

/-! ## A303534.P11302169564187083730

`n-A006995(A206915(n))`
-/

namespace A303534.P11302169564187083730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006995 (A206915 n).toNat

end

end A303534.P11302169564187083730

namespace A303534

/-- `n-A006995(A206915(n))` -/
def P11302169564187083730.Spec : Prop :=
  ∀ n, P11302169564187083730.a n = A303534 n

end A303534

/-! ## A303534.P16030157289666609469

`n-A006995(∑[A178225(n)])`
-/

namespace A303534.P16030157289666609469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303534.P16030157289666609469

namespace A303534

/-- `n-A006995(∑[A178225(n)])` -/
def P16030157289666609469.Spec : Prop :=
  ∀ n, P16030157289666609469.a n = A303534 n

end A303534

/-! ## A303534.P8021953806401433117

`n-A006995(∑[char[A175298(n)]])`
-/

namespace A303534.P8021953806401433117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303534.P8021953806401433117

namespace A303534

/-- `n-A006995(∑[char[A175298(n)]])` -/
def P8021953806401433117.Spec : Prop :=
  ∀ n, P8021953806401433117.a n = A303534 n

end A303534

/-! ## A303534.P290737403869587272

`n-A006995(∑[char[A206914(n)]])`
-/

namespace A303534.P290737403869587272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303534.P290737403869587272

namespace A303534

/-- `n-A006995(∑[char[A206914(n)]])` -/
def P290737403869587272.Spec : Prop :=
  ∀ n, P290737403869587272.a n = A303534 n

end A303534

/-! ## A303534.P4924717084634414469

`n-A006995(∑[1-A178226(n)])`
-/

namespace A303534.P4924717084634414469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303534.P4924717084634414469

namespace A303534

/-- `n-A006995(∑[1-A178226(n)])` -/
def P4924717084634414469.Spec : Prop :=
  ∀ n, P4924717084634414469.a n = A303534 n

end A303534

/-! ## A303534.P2946165421614181625

`n-A006995(∑[char[A006995(n+1)]])`
-/

namespace A303534.P2946165421614181625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303534.P2946165421614181625

namespace A303534

/-- `n-A006995(∑[char[A006995(n+1)]])` -/
def P2946165421614181625.Spec : Prop :=
  ∀ n, P2946165421614181625.a n = A303534 n

end A303534

/-! ## A303534.P12566102341769884901

`n-A265527(∑[char[2*n+1]])`
-/

namespace A303534.P12566102341769884901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265527 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303534.P12566102341769884901

namespace A303534

/-- `n-A265527(∑[char[2*n+1]])` -/
def P12566102341769884901.Spec : Prop :=
  ∀ n, P12566102341769884901.a n = A303534 n

end A303534

/-!
# A303535: Triangle read by rows: T(n,k) is the number of ordered direct sum decompositions of the vector space GF(2)^n containing exactly k subspaces.

The programs for A303535, there is no canonical definition to state claims against.
-/

/-! ## A303535.P13333797592598907090

`A233543(n)*A270880(n)`
-/

namespace A303535.P13333797592598907090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A270880 n

end

end A303535.P13333797592598907090

/-! ## A303535.P5783730679792717103

`A002262(n)!*A270880(n)`
-/

namespace A303535.P5783730679792717103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A270880 n

end

end A303535.P5783730679792717103

/-! ## A303535.P1995302685479317910

`A163351(n)!*A270880(n)`
-/

namespace A303535.P1995302685479317910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A270880 n

end

end A303535.P1995302685479317910

/-! ## A303535.P11684071342139957496

`A166352(n)!*A270880(n)`
-/

namespace A303535.P11684071342139957496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A166352 n).toNat : ℤ) * A270880 n

end

end A303535.P11684071342139957496

/-! ## A303535.P14712280089547798072

`A025668(n+1)!*A270880(n)`
-/

namespace A303535.P14712280089547798072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025668 (n + 1)).toNat : ℤ) * A270880 n

end

end A303535.P14712280089547798072

/-!
# A303536: Number of terms in greedy partition of n into binary palindromes.

The programs for A303536, the canonical program `A303536.P2429810250037135383` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303536 has offset 0).

The definition of A303536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303534, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303536.P2429810250037135383

`1+a(A303534(n))` with `a(0)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A303536

/-- `1+a(A303534(n))` -/
def P2429810250037135383.Spec : Prop :=
  ∀ n, (P2429810250037135383.a n : ℤ) = A303536 n

theorem P2429810250037135383.correct : P2429810250037135383.Spec := by
  intro n
  simp only [A303536]

end A303536

/-! ## A303536.P12432160834181569775

`a(n-A206913(n))+1` with `a(0)=0`
-/

namespace A303536.P12432160834181569775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A206913 n).toNat + 1

end

end A303536.P12432160834181569775

namespace A303536

/-- `a(n-A206913(n))+1` -/
def P12432160834181569775.Spec : Prop :=
  ∀ n, (P12432160834181569775.a n : ℤ) = A303536 n

end A303536

/-! ## A303536.P2153173862801187522

`A008728(a(A303534(n)))` with `a(0)=0`
-/

namespace A303536.P2153173862801187522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008728 (a (A303534 n).toNat).toNat

end

end A303536.P2153173862801187522

namespace A303536

/-- `A008728(a(A303534(n)))` -/
def P2153173862801187522.Spec : Prop :=
  ∀ n, P2153173862801187522.a n = A303536 n

end A303536

/-! ## A303536.P894546808495981354

`A008732(a(A303534(n)))` with `a(0)=0`
-/

namespace A303536.P894546808495981354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008732 (a (A303534 n).toNat).toNat

end

end A303536.P894546808495981354

namespace A303536

/-- `A008732(a(A303534(n)))` -/
def P894546808495981354.Spec : Prop :=
  ∀ n, P894546808495981354.a n = A303536 n

end A303536

/-! ## A303536.P12071153263234103660

`A194459(a(A303534(n)))` with `a(0)=0`
-/

namespace A303536.P12071153263234103660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194459 (a (A303534 n).toNat).toNat

end

end A303536.P12071153263234103660

namespace A303536

/-- `A194459(a(A303534(n)))` -/
def P12071153263234103660.Spec : Prop :=
  ∀ n, P12071153263234103660.a n = A303536 n

end A303536

/-!
# A303537: Expansion of ((1 + 4*x)/(1 - 4*x))^(1/4).

The programs for A303537, the canonical program `A303537.P2582435639910148094` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303537 has offset 0).

The definition of A303537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303537.P17603827092862640951

`A000007(n)+2*A305608(n)`
-/

namespace A303537.P17603827092862640951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A305608 n

end

end A303537.P17603827092862640951

namespace A303537

/-- `A000007(n)+2*A305608(n)` -/
def P17603827092862640951.Spec : Prop :=
  ∀ n, P17603827092862640951.a n = A303537 n

end A303537

/-! ## A303537.P2665574265513796729

`A305608(round(acot(n)+n))+A305608(n)`
-/

namespace A303537.P2665574265513796729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305608 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A305608 n

end

end A303537.P2665574265513796729

namespace A303537

/-- `A305608(round(acot(n)+n))+A305608(n)` -/
def P2665574265513796729.Spec : Prop :=
  ∀ n, P2665574265513796729.a n = A303537 n

end A303537

/-! ## A303537.P639796578837524676

`A305608(A028310(n))+A305608(n)`
-/

namespace A303537.P639796578837524676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305608 (A028310 n).toNat + A305608 n

end

end A303537.P639796578837524676

namespace A303537

/-- `A305608(A028310(n))+A305608(n)` -/
def P639796578837524676.Spec : Prop :=
  ∀ n, P639796578837524676.a n = A303537 n

end A303537

/-! ## A303537.P7640370178225463198

`A305608(A233583(n+1))+A305608(n)`
-/

namespace A303537.P7640370178225463198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305608 (A233583 (n + 1)).toNat + A305608 n

end

end A303537.P7640370178225463198

namespace A303537

/-- `A305608(A233583(n+1))+A305608(n)` -/
def P7640370178225463198.Spec : Prop :=
  ∀ n, P7640370178225463198.a n = A303537 n

end A303537

/-! ## A303537.P15020651211762605548

`A305608(A000007(n)+n)+A305608(n)`
-/

namespace A303537.P15020651211762605548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305608 (A000007 n + (n : ℤ)).toNat + A305608 n

end

end A303537.P15020651211762605548

namespace A303537

/-- `A305608(A000007(n)+n)+A305608(n)` -/
def P15020651211762605548.Spec : Prop :=
  ∀ n, P15020651211762605548.a n = A303537 n

end A303537

/-! ## A303537.P8657808428965033571

`A305608(A004277(n)-n)+A305608(n)`
-/

namespace A303537.P8657808428965033571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305608 (A004277 n - (n : ℤ)).toNat + A305608 n

end

end A303537.P8657808428965033571

namespace A303537

/-- `A305608(A004277(n)-n)+A305608(n)` -/
def P8657808428965033571.Spec : Prop :=
  ∀ n, P8657808428965033571.a n = A303537 n

end A303537

/-! ## A303537.P2582435639910148094

`(A304933(A028310(n))+A304933(n))/A028310(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303537

/-- `(A304933(A028310(n))+A304933(n))/A028310(n)` -/
def P2582435639910148094.Spec : Prop :=
  ∀ n, P2582435639910148094.a n = (A303537 n : ℚ)

end A303537

/-!
# A303538: Expansion of ((1 + 8*x)/(1 - 8*x))^(1/8).

The programs for A303538, the canonical program `A303538.P17406894848546280064` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303538 has offset 0).

The definition of A303538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303538.P17406894848546280064

`(2*a(n-1)+64*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303538

/-- `(2*a(n-1)+64*(n-2)*a(n-2))/n` -/
def P17406894848546280064.Spec : Prop :=
  ∀ n, P17406894848546280064.a n = (A303538 n : ℚ)

end A303538

/-! ## A303538.P16027312332525419933

`A000007(n)+2*A305609(n)`
-/

namespace A303538.P16027312332525419933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A305609 n

end

end A303538.P16027312332525419933

namespace A303538

/-- `A000007(n)+2*A305609(n)` -/
def P16027312332525419933.Spec : Prop :=
  ∀ n, P16027312332525419933.a n = A303538 n

end A303538

/-! ## A303538.P10964840081866653159

`A305609(A028310(n))+A305609(n)`
-/

namespace A303538.P10964840081866653159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305609 (A028310 n).toNat + A305609 n

end

end A303538.P10964840081866653159

namespace A303538

/-- `A305609(A028310(n))+A305609(n)` -/
def P10964840081866653159.Spec : Prop :=
  ∀ n, P10964840081866653159.a n = A303538 n

end A303538

/-! ## A303538.P3548166195863221969

`A305609(A233583(n+1))+A305609(n)`
-/

namespace A303538.P3548166195863221969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305609 (A233583 (n + 1)).toNat + A305609 n

end

end A303538.P3548166195863221969

namespace A303538

/-- `A305609(A233583(n+1))+A305609(n)` -/
def P3548166195863221969.Spec : Prop :=
  ∀ n, P3548166195863221969.a n = A303538 n

end A303538

/-! ## A303538.P10873660985392185877

`A305609(A000007(n)+n)+A305609(n)`
-/

namespace A303538.P10873660985392185877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305609 (A000007 n + (n : ℤ)).toNat + A305609 n

end

end A303538.P10873660985392185877

namespace A303538

/-- `A305609(A000007(n)+n)+A305609(n)` -/
def P10873660985392185877.Spec : Prop :=
  ∀ n, P10873660985392185877.a n = A303538 n

end A303538

/-! ## A303538.P7885749032697616891

`A305609(A000038(n)+n)+A305609(n)`
-/

namespace A303538.P7885749032697616891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305609 (A000038 n + (n : ℤ)).toNat + A305609 n

end

end A303538.P7885749032697616891

namespace A303538

/-- `A305609(A000038(n)+n)+A305609(n)` -/
def P7885749032697616891.Spec : Prop :=
  ∀ n, P7885749032697616891.a n = A303538 n

end A303538

/-! ## A303538.P4691804834350554177

`(A304934(A028310(n))+A304934(n))/A028310(n)`
-/

namespace A303538.P4691804834350554177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304934 (A028310 n).toNat + A304934 n : ℚ) / (A028310 n : ℚ)

end

end A303538.P4691804834350554177

namespace A303538

/-- `(A304934(A028310(n))+A304934(n))/A028310(n)` -/
def P4691804834350554177.Spec : Prop :=
  ∀ n, P4691804834350554177.a n = (A303538 n : ℚ)

end A303538

/-!
# A303540: Number of ways to write n as a^2 + b^2 + binomial(2*c,c) + binomial(2*d,d), where a,b,c,d are nonnegative integers with a <= b and c <= d.

The programs for A303540, there is no canonical definition to state claims against.
-/

/-! ## A303540.P16119248920649743829

`A303539(comp[A286875(∏[n%2+2]-1)])`
-/

namespace A303540.P16119248920649743829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (∏ j ∈ Finset.range (n + 1), f2 j - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A303540.P16119248920649743829

/-! ## A303540.P15822221444304803372

`A303539(comp[(1-n)*A202006(3*n+5)])`
-/

namespace A303540.P15822221444304803372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A202006 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A303540.P15822221444304803372

/-! ## A303540.P16093672695639195108

`A303539(comp[A000364(n)^n-1])`
-/

namespace A303540.P16093672695639195108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n ^ n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A303540.P16093672695639195108

/-! ## A303540.P6658102317387833207

`A303539(n+1)%record[A032800(n)]`
-/

namespace A303540.P6658102317387833207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303539 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A303540.P6658102317387833207

/-! ## A303540.P3034418917485582211

`and(A152388(n+1), A303539(n+1))`
-/

namespace A303540.P3034418917485582211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A303539 (n + 1))

end

end A303540.P3034418917485582211

/-!
# A303541: Numbers of the form k^2 + binomial(2*m,m) with k and m nonnegative integers.

The programs for A303541, there is no canonical definition to state claims against.
-/

/-! ## A303541.P3174951049993767275

`∑[A241180(A157109(2*n+1))]`
-/

namespace A303541.P3174951049993767275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (A157109 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303541.P3174951049993767275

/-! ## A303541.P2355984709159893237

`∑[gcd(A214248(2*(n+1)), A342853(n))]`
-/

namespace A303541.P2355984709159893237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214248 (2 * (n + 1))) (A342853 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303541.P2355984709159893237

/-! ## A303541.P11745823254323605328

`eq[A057427(n), A125144(A013613(n))]`
-/

namespace A303541.P11745823254323605328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125144 (A013613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303541.P11745823254323605328

/-! ## A303541.P15133694825299009527

`eq[A000194(n), A137734(A161051(n+1))]`
-/

namespace A303541.P15133694825299009527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A161051 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303541.P15133694825299009527

/-! ## A303541.P9890053012644955533

`lt[A152150(A003607(n)), A374767(n+2)]`
-/

namespace A303541.P9890053012644955533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152150 (A003607 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303541.P9890053012644955533

/-!
# A303542: Number of chordless cycles in the n X n white bishop graph.

The programs for A303542, there is no canonical definition to state claims against.
-/

/-! ## A303542.P7509279987237614675

`A370224(n+2)-A370210(n+2)`
-/

namespace A303542.P7509279987237614675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370224 (n + 2) - A370210 (n + 2)

end

end A303542.P7509279987237614675

/-! ## A303542.P5562540365630345746

`A051218(A247332(n))`
-/

namespace A303542.P5562540365630345746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051218 (A247332 n).toNat

end

end A303542.P5562540365630345746

/-!
# A303544: Numbers k that divide primepi(k)^prime(k).

The programs for A303544, there is no canonical definition to state claims against.
-/

/-! ## A303544.P10636465711227324319

`lt[A000720(n+1)%A007947(n+1), 1]+1`
-/

namespace A303544.P10636465711227324319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) (A007947 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A303544.P10636465711227324319

/-! ## A303544.P14981432168565763934

`record[gcd(A001016(n), A065090(n+1))]`
-/

namespace A303544.P14981432168565763934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001016 n) (A065090 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303544.P14981432168565763934

/-! ## A303544.P12657521319601679279

`record[gcd(A018252(n+1), A001016(n+1))]`
-/

namespace A303544.P12657521319601679279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018252 (n + 1)) (A001016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303544.P12657521319601679279

/-! ## A303544.P5402217897106930596

`record[gcd(A127118(n+1), A133900(n+1))]`
-/

namespace A303544.P5402217897106930596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127118 (n + 1)) (A133900 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303544.P5402217897106930596

/-!
# A303545: For any n > 0 and prime number p, let d_p(n) be the distance from n to the nearest p-smooth number; a(n) = Sum_{i prime} d_i(n).

The programs for A303545, there is no canonical definition to state claims against.
-/

/-! ## A303545.P17237468861310998912

`A007895(A153733(n)*A306299(n))`
-/

namespace A303545.P17237468861310998912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A153733 n * A306299 n).toNat

end

end A303545.P17237468861310998912

/-! ## A303545.P17820631395171541740

`A112531(n+1)-A344652(A038208(n))`
-/

namespace A303545.P17820631395171541740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112531 (n + 1) - A344652 (A038208 n).toNat

end

end A303545.P17820631395171541740

/-! ## A303545.P873380856457755167

`A030679(A026569(n))%A323555(n+1)`
-/

namespace A303545.P873380856457755167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030679 (A026569 n).toNat) (A323555 (n + 1))

end

end A303545.P873380856457755167

/-! ## A303545.P8679809521518098265

`A298382(A119416(n+1))%A069345(n+1)`
-/

namespace A303545.P8679809521518098265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298382 (A119416 (n + 1)).toNat) (A069345 (n + 1))

end

end A303545.P8679809521518098265

/-! ## A303545.P4872180474633192646

`A326032(A029349(n+2)*A333295(3*n+5))`
-/

namespace A303545.P4872180474633192646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 (A029349 (n + 2) * A333295 (3 * n + 5)).toNat

end

end A303545.P4872180474633192646

/-!
# A303546: Number of non-isomorphic aperiodic multiset partitions of weight n.

The programs for A303546, there is no canonical definition to state claims against.
-/

/-! ## A303546.P11377976905215961649

`∑{d}[n+1, A320802(#)]`
-/

namespace A303546.P11377976905215961649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320802 d

end

end A303546.P11377976905215961649

/-! ## A303546.P13904503702015641726

`record[∑{d}[A123108(n), A320802(#)]]`
-/

namespace A303546.P13904503702015641726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A320802 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303546.P13904503702015641726

/-! ## A303546.P15778142872711463601

`record[∑{d}[A133310(n), A320802(#)]]`
-/

namespace A303546.P15778142872711463601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A320802 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303546.P15778142872711463601

/-! ## A303546.P81554805577033568

`A007716(n+1)-A303547(n+1)`
-/

namespace A303546.P81554805577033568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 (n + 1) - A303547 (n + 1)

end

end A303546.P81554805577033568

/-! ## A303546.P6264807361976199461

`A320810(n+1)+A321283(n+1)-A303547(n+1)`
-/

namespace A303546.P6264807361976199461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320810 (n + 1) + (A321283 (n + 1) - A303547 (n + 1))

end

end A303546.P6264807361976199461

/-!
# A303547: Number of non-isomorphic periodic multiset partitions of weight n.

The programs for A303547, there is no canonical definition to state claims against.
-/

/-! ## A303547.P6228869193246948072

`A007716(n+1)-A303546(n+1)`
-/

namespace A303547.P6228869193246948072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 (n + 1) - A303546 (n + 1)

end

end A303547.P6228869193246948072

/-! ## A303547.P11641477030067909894

`A007716(C(n+1, n))%A303546(n+1)`
-/

namespace A303547.P11641477030067909894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007716 (Nat.choose (n + 1) n)) (A303546 (n + 1))

end

end A303547.P11641477030067909894

/-! ## A303547.P11908535541365146466

`A007716(n+1)-∑{d}[n+1, A320802(#)]`
-/

namespace A303547.P11908535541365146466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A320802 d

end

end A303547.P11908535541365146466

/-! ## A303547.P15298597337553947273

`A007716(ceil(sqrt(n²+4)))%A303546(n+1)`
-/

namespace A303547.P15298597337553947273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007716 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat) (A303546 (n + 1))

end

end A303547.P15298597337553947273

/-! ## A303547.P14331061982392389392

`∑{d}[n+1, A303546(#)*A323022((n+1)/#)]`
-/

namespace A303547.P14331061982392389392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303546 d * A323022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303547.P14331061982392389392

/-!
# A303548: For any n > 0 and h > 0, let d_h(n) be the distance from n to the nearest number with Hamming weight at most h; a(n) = Sum_{i > 0} d_i(n).

The programs for A303548, the canonical program `A303548.P8157159056819568346` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303548 has offset 1).

The definition of A303548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303548.P2052740247052982749

`A173318(n)-A000788(n)`
-/

namespace A303548.P2052740247052982749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 n - A000788 n

end

end A303548.P2052740247052982749

namespace A303548

/-- `A173318(n)-A000788(n)` -/
def P2052740247052982749.Spec : Prop :=
  ∀ n, P2052740247052982749.a n = A303548 (n + 1)

end A303548

/-! ## A303548.P8157159056819568346

`∑[A005811(n)-A000120(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A303548

/-- `∑[A005811(n)-A000120(n)]` -/
def P8157159056819568346.Spec : Prop :=
  ∀ n, P8157159056819568346.a n = A303548 (n + 1)

theorem P8157159056819568346.correct : P8157159056819568346.Spec := by
  intro n
  simp only [A303548, Nat.add_sub_cancel]

end A303548

/-! ## A303548.P13172466027080376513

`A164910(n+1)-A330038(n+1)`
-/

namespace A303548.P13172466027080376513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164910 (n + 1) - A330038 (n + 1)

end

end A303548.P13172466027080376513

namespace A303548

/-- `A164910(n+1)-A330038(n+1)` -/
def P13172466027080376513.Spec : Prop :=
  ∀ n, P13172466027080376513.a n = A303548 (n + 1)

end A303548

/-! ## A303548.P4403349717235112846

`∑[A005811(n)-A005811(A292601(n))]`
-/

namespace A303548.P4403349717235112846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A005811 (A292601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P4403349717235112846

namespace A303548

/-- `∑[A005811(n)-A005811(A292601(n))]` -/
def P4403349717235112846.Spec : Prop :=
  ∀ n, P4403349717235112846.a n = A303548 (n + 1)

end A303548

/-! ## A303548.P10954668809529077779

`∑[A000120(A280995(n))-A000120(n)]`
-/

namespace A303548.P10954668809529077779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A280995 n).toNat - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P10954668809529077779

namespace A303548

/-- `∑[A000120(A280995(n))-A000120(n)]` -/
def P10954668809529077779.Spec : Prop :=
  ∀ n, P10954668809529077779.a n = A303548 (n + 1)

end A303548

/-! ## A303548.P16444043798806411086

`∑[A000120(A003188(n))-A000120(n)]`
-/

namespace A303548.P16444043798806411086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 n).toNat - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P16444043798806411086

namespace A303548

/-- `∑[A000120(A003188(n))-A000120(n)]` -/
def P16444043798806411086.Spec : Prop :=
  ∀ n, P16444043798806411086.a n = A303548 (n + 1)

end A303548

/-! ## A303548.P6263398036308941428

`∑[A005811(n)-A005811(A006068(n))]`
-/

namespace A303548.P6263398036308941428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A005811 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P6263398036308941428

namespace A303548

/-- `∑[A005811(n)-A005811(A006068(n))]` -/
def P6263398036308941428.Spec : Prop :=
  ∀ n, P6263398036308941428.a n = A303548 (n + 1)

end A303548

/-! ## A303548.P11313401491588963368

`∑[A005811(n)-A005811(A341916(n))]`
-/

namespace A303548.P11313401491588963368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A005811 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P11313401491588963368

namespace A303548

/-- `∑[A005811(n)-A005811(A341916(n))]` -/
def P11313401491588963368.Spec : Prop :=
  ∀ n, P11313401491588963368.a n = A303548 (n + 1)

end A303548

/-!
# A303549: Lesser of twin primes p for which phi(p-1) = phi(p+1), where phi(n) is the Euler totient function (A000010).

The programs for A303549, there is no canonical definition to state claims against.
-/

/-! ## A303549.P3396937956971917656

`p?[A067890(n+1)+2]-2`
-/

namespace A303549.P3396937956971917656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067890 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A303549.P3396937956971917656

/-!
# A303550: Numbers k such that abs(60*k^2 - 1710*k + 12150) +- 1 are twin primes.

The programs for A303550, there is no canonical definition to state claims against.
-/

/-! ## A303550.P7164427212851523750

`lt[A130328(n), A048727(n)]`
-/

namespace A303550.P7164427212851523750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303550.P7164427212851523750

/-! ## A303550.P512727732262591519

`lt[A123346(n), A004185(A001844(n))]`
-/

namespace A303550.P512727732262591519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A001844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303550.P512727732262591519

/-! ## A303550.P13692961074546878375

`lt[A089633(A061579(n)), A048727(n)]`
-/

namespace A303550.P13692961074546878375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A061579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303550.P13692961074546878375

/-! ## A303550.P2173228950630054337

`lt[A045708(A106534(n)), A136392(2*n+1)]`
-/

namespace A303550.P2173228950630054337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045708 (A106534 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136392 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303550.P2173228950630054337

/-!
# A303551: Number of aperiodic multisets of compositions of total weight n.

The programs for A303551, there is no canonical definition to state claims against.
-/

/-! ## A303551.P3065860932765784718

`A034691(n+1)-A303552(n+1)`
-/

namespace A303551.P3065860932765784718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034691 (n + 1) - A303552 (n + 1)

end

end A303551.P3065860932765784718

/-! ## A303551.P17946803710106591898

`∑[A331936(A236913(n))]`
-/

namespace A303551.P17946803710106591898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (A236913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303551.P17946803710106591898

/-! ## A303551.P18221505931776713180

`∑[A331936(A027187(2*n))]`
-/

namespace A303551.P18221505931776713180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (A027187 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303551.P18221505931776713180

/-!
# A303552: Number of periodic multisets of compositions of total weight n.

The programs for A303552, there is no canonical definition to state claims against.
-/

/-! ## A303552.P15700829038983333999

`A034691(n+1)-A303551(n+1)`
-/

namespace A303552.P15700829038983333999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034691 (n + 1) - A303551 (n + 1)

end

end A303552.P15700829038983333999

/-! ## A303552.P9106274153217725912

`∑{d}[n+1, A303551(#)]-A303551(n+1)`
-/

namespace A303552.P9106274153217725912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303551 d - A303551 (n + 1)

end

end A303552.P9106274153217725912

/-! ## A303552.P6020503307618891813

`∑{d}[n+1, A211666(#)*A303551((n+1)/#)]`
-/

namespace A303552.P6020503307618891813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A211666 d * A303551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303552.P6020503307618891813

/-! ## A303552.P8813204806614913770

`∑{d}[n+1, A303551(#)*A323022((n+1)/#)]`
-/

namespace A303552.P8813204806614913770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303551 d * A323022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303552.P8813204806614913770

/-! ## A303552.P4852267608609415882

`A034691(A000027(n+1))%A303551(n+1)`
-/

namespace A303552.P4852267608609415882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034691 (A000027 (n + 1)).toNat) (A303551 (n + 1))

end

end A303552.P4852267608609415882

/-!
# A303553: Number of periodic factorizations of n > 1 into positive factors greater than 1; a(1) = 1 by convention.

The programs for A303553, there is no canonical definition to state claims against.
-/

/-! ## A303553.P7662883031517674878

`A123108(A326028(n+1)%A228260(n+1))`
-/

namespace A303553.P7662883031517674878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A326028 (n + 1)) (A228260 (n + 1))).toNat

end

end A303553.P7662883031517674878

/-! ## A303553.P7682835099782952071

`A093320(A252463(n+1))*A200976(A052409(n+1))`
-/

namespace A303553.P7682835099782952071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A252463 (n + 1)).toNat * A200976 (A052409 (n + 1)).toNat

end

end A303553.P7682835099782952071

/-! ## A303553.P14873701671073909003

`A051953(gcd(A001222(n+1), A023048(n+1)))`
-/

namespace A303553.P14873701671073909003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Int.gcd (A001222 (n + 1)) (A023048 (n + 1)))

end

end A303553.P14873701671073909003

/-! ## A303553.P5907133345237293595

`A093320(A071364(n+1))*A200976(A052409(n+1))`
-/

namespace A303553.P5907133345237293595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A071364 (n + 1)).toNat * A200976 (A052409 (n + 1)).toNat

end

end A303553.P5907133345237293595

/-! ## A303553.P17114260777220793461

`A294068(n+1)-A025459(A242779(n+1))`
-/

namespace A303553.P17114260777220793461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 (n + 1) - A025459 (A242779 (n + 1)).toNat

end

end A303553.P17114260777220793461

/-! ## A303553.P2738998843234094090

`A093320(A130065(n+1))*A200976(A052409(n+1))`
-/

namespace A303553.P2738998843234094090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A130065 (n + 1)).toNat * A200976 (A052409 (n + 1)).toNat

end

end A303553.P2738998843234094090

/-! ## A303553.P2907842958569606818

`A093320(A071030(n)+n)*A200976(A052409(n+1))`
-/

namespace A303553.P2907842958569606818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A071030 n + (n : ℤ)).toNat * A200976 (A052409 (n + 1)).toNat

end

end A303553.P2907842958569606818

/-! ## A303553.P4296287030845948794

`A093320(n+1)*A200976(A052409(n+1))`
-/

namespace A303553.P4296287030845948794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (n + 1) * A200976 (A052409 (n + 1)).toNat

end

end A303553.P4296287030845948794

/-! ## A303553.P5862920536970167488

`A200976(A052409(n+1)^A093320(n+1))`
-/

namespace A303553.P5862920536970167488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (SequenceMachineLib.roundAway ((A052409 (n + 1) : ℚ) ^ (A093320 (n + 1) : ℤ))).toNat

end

end A303553.P5862920536970167488

/-! ## A303553.P16848088771767293589

`C(A294068(n+1), A335941(A140889(n+1)))`
-/

namespace A303553.P16848088771767293589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294068 (n + 1)).toNat (A335941 (A140889 (n + 1)).toNat).toNat

end

end A303553.P16848088771767293589

/-!
# A303554: Union of the prime powers (p^k, p prime, k >= 0) and numbers that are the product of 2 or more distinct primes.

The programs for A303554, the canonical program `A303554.P5565197163094679338` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303554 has offset 1).

The definition of A303554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303554.P8867473782164864611

`eq[0, A355447(n+1)]+1`
-/

namespace A303554.P8867473782164864611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303554.P8867473782164864611

namespace A303554

/-- `eq[0, A355447(n+1)]+1` -/
def P8867473782164864611.Spec : Prop :=
  ∀ n, (P8867473782164864611.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P5577551600120859955

`eq[1, A304779(n+1)]+1`
-/

namespace A303554.P5577551600120859955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303554.P5577551600120859955

namespace A303554

/-- `eq[1, A304779(n+1)]+1` -/
def P5577551600120859955.Spec : Prop :=
  ∀ n, (P5577551600120859955.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P676602255189971503

`eq[1, A340596(n+1)]+1`
-/

namespace A303554.P676602255189971503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303554.P676602255189971503

namespace A303554

/-- `eq[1, A340596(n+1)]+1` -/
def P676602255189971503.Spec : Prop :=
  ∀ n, (P676602255189971503.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P14870096679159505050

`lt[A340654(n+1), 2]+1`
-/

namespace A303554.P14870096679159505050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A303554.P14870096679159505050

namespace A303554

/-- `lt[A340654(n+1), 2]+1` -/
def P14870096679159505050.Spec : Prop :=
  ∀ n, (P14870096679159505050.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P3415066219319549128

`comp[A126706(n+1)-1]+1`
-/

namespace A303554.P3415066219319549128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A303554.P3415066219319549128

namespace A303554

/-- `comp[A126706(n+1)-1]+1` -/
def P3415066219319549128.Spec : Prop :=
  ∀ n, (P3415066219319549128.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P5565197163094679338

`record[gcd(n+1, A286875(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A303554

/-- `record[gcd(n+1, A286875(n+1))]` -/
def P5565197163094679338.Spec : Prop :=
  ∀ n, (P5565197163094679338.a n : ℤ) = A303554 (n + 1)

theorem P5565197163094679338.correct : P5565197163094679338.Spec := by
  intro n
  simp only [A303554, Nat.add_sub_cancel]

end A303554

/-! ## A303554.P1624186988268422816

`eq[1, A264857(n+1)]+1`
-/

namespace A303554.P1624186988268422816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303554.P1624186988268422816

namespace A303554

/-- `eq[1, A264857(n+1)]+1` -/
def P1624186988268422816.Spec : Prop :=
  ∀ n, (P1624186988268422816.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P12491424281998714586

`lt[A056674(n+1), 2]+1`
-/

namespace A303554.P12491424281998714586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A303554.P12491424281998714586

namespace A303554

/-- `lt[A056674(n+1), 2]+1` -/
def P12491424281998714586.Spec : Prop :=
  ∀ n, (P12491424281998714586.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P17909891953582652159

`lt[A158210(n+1), 2]+1`
-/

namespace A303554.P17909891953582652159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A303554.P17909891953582652159

namespace A303554

/-- `lt[A158210(n+1), 2]+1` -/
def P17909891953582652159.Spec : Prop :=
  ∀ n, (P17909891953582652159.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P1799211422266690862

`eq[n, A285769(gcd(n, C(2, n²)))]`
-/

namespace A303554.P1799211422266690862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285769 (Nat.gcd n (Nat.choose 2 (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303554.P1799211422266690862

namespace A303554

/-- `eq[n, A285769(gcd(n, C(2, n²)))]` -/
def P1799211422266690862.Spec : Prop :=
  ∀ n, (P1799211422266690862.a n : ℤ) = A303554 (n + 1)

end A303554

/-! ## A303554.P13157600986674212512

`filter[A065200(n+1), A384667(#)]`
-/

namespace A303554.P13157600986674212512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A303554.P13157600986674212512

namespace A303554

/-- `filter[A065200(n+1), A384667(#)]` -/
def P13157600986674212512.Spec : Prop :=
  ∀ n, P13157600986674212512.a n = A303554 (n + 1)

end A303554

/-! ## A303554.P16623954042449487210

`filter[A273058(n+1), A384667(#)]`
-/

namespace A303554.P16623954042449487210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A303554.P16623954042449487210

namespace A303554

/-- `filter[A273058(n+1), A384667(#)]` -/
def P16623954042449487210.Spec : Prop :=
  ∀ n, P16623954042449487210.a n = A303554 (n + 1)

end A303554

/-! ## A303554.P1841740250648033556

`filter[A285100(n+1), A384667(#)]`
-/

namespace A303554.P1841740250648033556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A303554.P1841740250648033556

namespace A303554

/-- `filter[A285100(n+1), A384667(#)]` -/
def P1841740250648033556.Spec : Prop :=
  ∀ n, P1841740250648033556.a n = A303554 (n + 1)

end A303554

/-! ## A303554.P5471104550299476228

`filter[A375396(n+1), A384667(#)]`
-/

namespace A303554.P5471104550299476228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A303554.P5471104550299476228

namespace A303554

/-- `filter[A375396(n+1), A384667(#)]` -/
def P5471104550299476228.Spec : Prop :=
  ∀ n, P5471104550299476228.a n = A303554 (n + 1)

end A303554

/-! ## A303554.P970620033410382315

`lt[A048105(n+1), A005361(n+1)]+1`
-/

namespace A303554.P970620033410382315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303554.P970620033410382315

namespace A303554

/-- `lt[A048105(n+1), A005361(n+1)]+1` -/
def P970620033410382315.Spec : Prop :=
  ∀ n, (P970620033410382315.a n : ℤ) = A303554 (n + 1)

end A303554

/-!
# A303555: Triangle read by rows: T(n,k) = 2^(n-k)*prime(k)#, 1 <= k <= n, where prime(k)# is the product of first k primes.

The programs for A303555, there is no canonical definition to state claims against.
-/

/-! ## A303555.P17446968696693560504

`2^(C(comp[∑[n]]-n, 2)-n)*A070826(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A303555.P17446968696693560504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) * (A070826 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ)

end

end A303555.P17446968696693560504

/-! ## A303555.P7428617654821784207

`lcm(2^(C(comp[∑[n]]-n, 2)-n), A002110(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A303555.P7428617654821784207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))) (A002110 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat)

end

end A303555.P7428617654821784207

/-! ## A303555.P144724687462949843

`A057335(A099627(n))`
-/

namespace A303555.P144724687462949843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A099627 n).toNat

end

end A303555.P144724687462949843

/-! ## A303555.P6610017616612602202

`A057335(∑[A232089(n)])`
-/

namespace A303555.P6610017616612602202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303555.P6610017616612602202

/-! ## A303555.P7020710666728211205

`A057335(record[A126441(n)])`
-/

namespace A303555.P7020710666728211205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303555.P7020710666728211205

/-! ## A303555.P14459108926350435375

`A057335(A173786(n)-1)`
-/

namespace A303555.P14459108926350435375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A173786 n - 1).toNat

end

end A303555.P14459108926350435375

/-! ## A303555.P5111408257263376583

`A329887(A023758(n+2))`
-/

namespace A303555.P5111408257263376583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329887 (A023758 (n + 2)).toNat

end

end A303555.P5111408257263376583

/-! ## A303555.P1728774300635605432

`A063008(eq[1, A115722(n)])`
-/

namespace A303555.P1728774300635605432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303555.P1728774300635605432

/-! ## A303555.P56155692800168134

`A063008(∑[A058398(n+1)])`
-/

namespace A303555.P56155692800168134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303555.P56155692800168134

/-! ## A303555.P10532932151957654697

`A057335(A048645(n+2)-1)`
-/

namespace A303555.P10532932151957654697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A048645 (n + 2) - 1).toNat

end

end A303555.P10532932151957654697

/-!
# A303557: a(0) = 1; a(n) = 2^(n-1)*prime(n)#, where prime(n)# is the product of first n primes.

The programs for A303557, there is no canonical definition to state claims against.
-/

/-! ## A303557.P12965752241371039063

`A011782(n)*A002110(n)`
-/

namespace A303557.P12965752241371039063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A002110 n

end

end A303557.P12965752241371039063

/-! ## A303557.P16247724133207731008

`lcm(2^n, ∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A303557.P16247724133207731008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A303557.P16247724133207731008

/-! ## A303557.P17231285282632089443

`ceil(2^(n-1)*∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A303557.P17231285282632089443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A303557.P17231285282632089443

/-! ## A303557.P11584258966040566702

`2*a(n-1)*record[∑{p}[n+1, C(#, n)]]` with `a(0)=1, a(1)=2`
-/

namespace A303557.P11584258966040566702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A303557.P11584258966040566702

/-! ## A303557.P1458930886303271827

`2*(eq[n+1, 2^∑{d}[n+1, log2(#)]]+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A303557.P1458930886303271827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f3 n), Real.logb 2 (d : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1) * a (n - 1))

end

end A303557.P1458930886303271827

/-!
# A303558: G.f. A(x) satisfies: 0 = [x^(n-1)] (x*A(x))' / (1 + x*A(x)^n)^n for n>1.

The programs for A303558, there is no canonical definition to state claims against.
-/

/-! ## A303558.P13902895231184756330

`A383278(A032302(n²))`
-/

namespace A303558.P13902895231184756330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (A032302 (n ^ 2)).toNat

end

end A303558.P13902895231184756330

/-! ## A303558.P2213765422376440633

`A110656(A100328(n)+1)`
-/

namespace A303558.P2213765422376440633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A100328 n + 1).toNat

end

end A303558.P2213765422376440633

/-!
# A303559: G.f. A(x) satisfies: 0 = [x^(n-1)] (x*A(x))' / (1 + x*A(x)^(n+1))^n for n>1.

The programs for A303559, there is no canonical definition to state claims against.
-/

/-! ## A303559.P4428085519840674313

`A322943(n)-A002264(A245155(n))`
-/

namespace A303559.P4428085519840674313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322943 n - A002264 (A245155 n).toNat

end

end A303559.P4428085519840674313

/-! ## A303559.P8221830444804374679

`A278634(n+1)+A244225(A001193(n))`
-/

namespace A303559.P8221830444804374679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (n + 1) + A244225 (A001193 n).toNat

end

end A303559.P8221830444804374679

/-!
# A303560: Decimal expansion of constant A = Sum_{n>=1} 1 / (2^n - 1)^n.

The programs for A303560, there is no canonical definition to state claims against.
-/

/-! ## A303560.P2886189118737159593

`and(A089978(n), A292269(A017979(3*n+4)))`
-/

namespace A303560.P2886189118737159593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089978 n) (A292269 (A017979 (3 * n + 4)).toNat)

end

end A303560.P2886189118737159593

/-!
# A303561: Binary expansion of constant A = Sum_{n>=1} 1 / (2^n - 1)^n.

The programs for A303561, there is no canonical definition to state claims against.
-/

/-! ## A303561.P2967584552248036405

`A190230(A002236(n+2))`
-/

namespace A303561.P2967584552248036405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (A002236 (n + 2)).toNat

end

end A303561.P2967584552248036405

/-! ## A303561.P1827124729226844855

`A116693(gcd(A116691(n+1), A116707(n+2)))`
-/

namespace A303561.P1827124729226844855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116693 (Int.gcd (A116691 (n + 1)) (A116707 (n + 2)))

end

end A303561.P1827124729226844855

/-! ## A303561.P3583173944636124600

`and(1, A219471(A126647(n+1)))`
-/

namespace A303561.P3583173944636124600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A219471 (A126647 (n + 1)).toNat)

end

end A303561.P3583173944636124600

/-! ## A303561.P17670666904927178134

`A189572((2*n+1)*A054310(n+1))`
-/

namespace A303561.P17670666904927178134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 ((2 * n + 1 : ℤ) * A054310 (n + 1)).toNat

end

end A303561.P17670666904927178134

/-! ## A303561.P5499908949816568712

`A047999(lcm(A127932(n), A193794(n)))`
-/

namespace A303561.P5499908949816568712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (Int.lcm (A127932 n) (A193794 n))

end

end A303561.P5499908949816568712

/-!
# A303563: G.f. A(x) satisfies: 0 = [x^(n-1)] 1 / A(x)^(n^2-n+1) for n>2.

The programs for A303563, there is no canonical definition to state claims against.
-/

/-! ## A303563.P9335765706578692600

`A289133(A137644(n)+2)`
-/

namespace A303563.P9335765706578692600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A137644 n + 2).toNat

end

end A303563.P9335765706578692600

/-!
# A303564: Number T(n,k) of derangements of [n] having exactly k peaks; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-1)/2)), read by rows.

The programs for A303564, there is no canonical definition to state claims against.
-/

/-! ## A303564.P17827701925365786331

`and(record[A129154(n)], A147103(n+1))`
-/

namespace A303564.P17827701925365786331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A147103 (n + 1))

end

end A303564.P17827701925365786331

/-! ## A303564.P12981034070336427845

`A308638(A040913(n)+A000110(n))`
-/

namespace A303564.P12981034070336427845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308638 (A040913 n + A000110 n).toNat

end

end A303564.P12981034070336427845

/-! ## A303564.P15622559232565017025

`or(A089052(n), A089052(A149243(n)))`
-/

namespace A303564.P15622559232565017025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089052 n) (A089052 (A149243 n).toNat)

end

end A303564.P15622559232565017025

/-!
# A303565: a(n) = [x^n] (Sum_{k=0..n} k!*x^k)/(Sum_{k=0..n} k!*(-x)^k).

The programs for A303565, there is no canonical definition to state claims against.
-/

/-! ## A303565.P5616118786029595492

`A275870(2^n)/gcd(2, ∏{p}[n, #])`
-/

namespace A303565.P5616118786029595492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275870 (2 ^ n) : ℚ) / (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A303565.P5616118786029595492

/-! ## A303565.P11319405514183237030

`A016002(A206296(n))`
-/

namespace A303565.P11319405514183237030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016002 (A206296 n).toNat

end

end A303565.P11319405514183237030

/-!
# A303566: a(n) = [x^n] (Sum_{k=0..n} (k+1)!*x^k)/(Sum_{k=0..n} (k+1)!*(-x)^k).

The programs for A303566, there is no canonical definition to state claims against.
-/

/-! ## A303566.P10260635860221982860

`record[and(A022167(n), A189485(n))]`
-/

namespace A303566.P10260635860221982860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022167 n) (A189485 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303566.P10260635860221982860

/-! ## A303566.P8875488595660026666

`∑[A154958(A152596(n)+2+n)]`
-/

namespace A303566.P8875488595660026666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A152596 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303566.P8875488595660026666

/-!
# A303567: a(n) = [x^n] ((Sum_{k=0..n} (k+1)!*x^k)/(Sum_{k=0..n} (k+1)!*(-x)^k))^(1/2).

The programs for A303567, there is no canonical definition to state claims against.
-/

/-! ## A303567.P9221879661214651131

`A102416(A106337(n))-A000007(n)`
-/

namespace A303567.P9221879661214651131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102416 (A106337 n).toNat - A000007 n

end

end A303567.P9221879661214651131

/-! ## A303567.P4607754032501297364

`A102416(A106337(n))-A151622(n)`
-/

namespace A303567.P4607754032501297364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102416 (A106337 n).toNat - A151622 n

end

end A303567.P4607754032501297364

/-!
# A303568: a(n) = [x^n] ((Sum_{k=0..n} (k+3)!*x^k)/(Sum_{k=0..n} (k+3)!*(-x)^k))^(1/4).

The programs for A303568, there is no canonical definition to state claims against.
-/

/-! ## A303568.P14005973663332124279

`A062050(∏[A061095(∏{e}[n+1, #+1])])`
-/

namespace A303568.P14005973663332124279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061095 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303568.P14005973663332124279

/-!
# A303570: a(n) = palindrome arising when A303501(n+1) is formed (if there is more than one, use the smallest).

The programs for A303570, there is no canonical definition to state claims against.
-/

/-! ## A303570.P11591701439529050327

`A265561(A117676(n+2)%A265561(n+3))`
-/

namespace A303570.P11591701439529050327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265561 (Int.tmod (A117676 (n + 2)) (A265561 (n + 3))).toNat

end

end A303570.P11591701439529050327

/-!
# A303573: a(n) = palindrome arising when A230891(n+1) is formed (if there is more than one, use the smallest).

The programs for A303573, there is no canonical definition to state claims against.
-/

/-! ## A303573.P6950960803331033894

`A007088(A303574(n))`
-/

namespace A303573.P6950960803331033894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A303574 n).toNat

end

end A303573.P6950960803331033894

/-! ## A303573.P17284297548299660057

`A215256(or(1, A303574(n)))`
-/

namespace A303573.P17284297548299660057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.lor 1 (A303574 n)).toNat

end

end A303573.P17284297548299660057

/-! ## A303573.P13552546992922814347

`A305989(or(1, A303574(n)))`
-/

namespace A303573.P13552546992922814347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A303574 n)).toNat

end

end A303573.P13552546992922814347

/-! ## A303573.P7650702088016244855

`A215256(root(A303574(n), 2)²)`
-/

namespace A303573.P7650702088016244855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (SequenceMachineLib.roundAway (((A303574 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A303573.P7650702088016244855

/-! ## A303573.P2999504851779378001

`A305989(root(A303574(n), 2)²)`
-/

namespace A303573.P2999504851779378001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (((A303574 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A303573.P2999504851779378001

/-! ## A303573.P7762763761414728660

`A215256(A303574(n)+char[1])`
-/

namespace A303573.P7762763761414728660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (A303574 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A303573.P7762763761414728660

/-! ## A303573.P9683208028275752084

`A215256(lcm(A033999(n), A303574(n)))`
-/

namespace A303573.P9683208028275752084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.lcm (A033999 n) (A303574 n))

end

end A303573.P9683208028275752084

/-! ## A303573.P10125269282391801160

`A305989(2*A303574(n)-A303574(n))`
-/

namespace A303573.P10125269282391801160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A303574 n - A303574 n).toNat

end

end A303573.P10125269282391801160

/-! ## A303573.P5860970811926593744

`A215256(A303574(n)%A006601(n+1))`
-/

namespace A303573.P5860970811926593744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.tmod (A303574 n) (A006601 (n + 1))).toNat

end

end A303573.P5860970811926593744

/-! ## A303573.P5893067999219767323

`A305989(A303574(n)*A303599(n+1))`
-/

namespace A303573.P5893067999219767323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A303574 n * A303599 (n + 1)).toNat

end

end A303573.P5893067999219767323

/-!
# A303576: a(n) = prime arising when A231442(n+1) is formed (if there is more than one, use the smallest).

The programs for A303576, there is no canonical definition to state claims against.
-/

/-! ## A303576.P17494570873013458964

`A099651(eq[A034871(n), A140670(2*(n+2))])`
-/

namespace A303576.P17494570873013458964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A303576.P17494570873013458964

/-!
# A303577: Break up the list of values of the divisor function d(k) into nondecreasing runs; sequence gives lengths of successive runs.

The programs for A303577, there is no canonical definition to state claims against.
-/

/-! ## A303577.P17682094377965731548

`A074827(n+1)+1-A303578(n+1)`
-/

namespace A303577.P17682094377965731548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1) + (1 - A303578 (n + 1))

end

end A303577.P17682094377965731548

/-! ## A303577.P15168724326243948655

`Δ[A303578(n+1)]`
-/

namespace A303577.P15168724326243948655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303577.P15168724326243948655

/-! ## A303577.P11269272413554230786

`Δ[record[A303578(A291766(n))]]`
-/

namespace A303577.P11269272413554230786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303577.P11269272413554230786

/-! ## A303577.P17717420372558096073

`A303578(n+2)-A303578(n+1)`
-/

namespace A303577.P17717420372558096073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 2) - A303578 (n + 1)

end

end A303577.P17717420372558096073

/-! ## A303577.P18218394166572336852

`Δ[record[A303578(A126759(n))]]`
-/

namespace A303577.P18218394166572336852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303577.P18218394166572336852

/-! ## A303577.P2869466210035302921

`Δ[record[A303578(A141256(n))]]`
-/

namespace A303577.P2869466210035302921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303577.P2869466210035302921

/-! ## A303577.P11583408502184270992

`Δ[record[A303578(A286619(n))]]`
-/

namespace A303577.P11583408502184270992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (A286619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303577.P11583408502184270992

/-!
# A303578: List of starts of nondecreasing runs of values of d(n) (the divisor function A000005(n)).

The programs for A303578, there is no canonical definition to state claims against.
-/

/-! ## A303578.P2669341889852596692

`A303577(n)+a(n-1)` with `a(0)=1`
-/

namespace A303578.P2669341889852596692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303577 n + a (n - 1)

end

end A303578.P2669341889852596692

/-! ## A303578.P5334519673702165938

`floor(A303577(n)+a(A023443(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A303578.P5334519673702165938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303577 n + a (A023443 n).toNat

end

end A303578.P5334519673702165938

/-! ## A303578.P8511086180826938559

`(A303577(n)+a(A023443(n)))%A017365(n)` with `a(0)=1`
-/

namespace A303578.P8511086180826938559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A303577 n + a (A023443 n).toNat) (A017365 n)

end

end A303578.P8511086180826938559

/-! ## A303578.P16091513296018363127

`record[A112276(n+1)%A112275(n+1)]`
-/

namespace A303578.P16091513296018363127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112276 (n + 1)) (A112275 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303578.P16091513296018363127

/-! ## A303578.P16929604060442156172

`∩[A166155(n+1), A339910(n+1)]`
-/

namespace A303578.P16929604060442156172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303578.P16929604060442156172

/-!
# A303579: Break up the list of values of the Euler totient function phi(k) into nondecreasing runs; sequence gives lengths of successive runs.

The programs for A303579, there is no canonical definition to state claims against.
-/

/-! ## A303579.P13807547075586937558

`Δ[A303580(n+1)]`
-/

namespace A303579.P13807547075586937558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303579.P13807547075586937558

/-! ## A303579.P2223297296580087539

`Δ[record[A303580(A344180(n))]]`
-/

namespace A303579.P2223297296580087539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303580 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303579.P2223297296580087539

/-! ## A303579.P13231765870641738389

`A303580(n+2)-A303580(n+1)`
-/

namespace A303579.P13231765870641738389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303580 (n + 2) - A303580 (n + 1)

end

end A303579.P13231765870641738389

/-! ## A303579.P3006511548877490771

`gcd(A192148(n+1), A337534(n+1))+1`
-/

namespace A303579.P3006511548877490771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A192148 (n + 1)) (A337534 (n + 1)) + 1

end

end A303579.P3006511548877490771

/-! ## A303579.P15500490937101253939

`A215366(gcd(A192148(n+1), A337534(n+1)))`
-/

namespace A303579.P15500490937101253939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (Int.gcd (A192148 (n + 1)) (A337534 (n + 1)))

end

end A303579.P15500490937101253939

/-! ## A303579.P550173075181557781

`A281854(gcd(A167458(n+1), A238535(n+1)))`
-/

namespace A303579.P550173075181557781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281854 (Int.gcd (A167458 (n + 1)) (A238535 (n + 1)))

end

end A303579.P550173075181557781

/-! ## A303579.P7487873380832969359

`A295931(A002808(n+1)²*a(n-1)+1)+1` with `a(0)=5`
-/

namespace A303579.P7487873380832969359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A295931 (A002808 (n + 1) ^ 2 * a (n - 1) + 1).toNat + 1

end

end A303579.P7487873380832969359

/-!
# A303580: List of starts of nondecreasing runs of values of the Euler totient function phi(n) (A000010(n)).

The programs for A303580, there is no canonical definition to state claims against.
-/

/-! ## A303580.P9777456624662666776

`A303579(n)+a(n-1)` with `a(0)=1`
-/

namespace A303580.P9777456624662666776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303579 n + a (n - 1)

end

end A303580.P9777456624662666776

/-! ## A303580.P937770773993693400

`∑[A303579(n+1)]+1-A303579(n+1)`
-/

namespace A303580.P937770773993693400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A303579 (n + 1))

end

end A303580.P937770773993693400

/-! ## A303580.P7893015578330794809

`A065475(lt[A000010(n+1), A225530(n)])`
-/

namespace A303580.P7893015578330794809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P7893015578330794809

/-! ## A303580.P7303007216135884064

`A065475(lt[A225530(n+1), A225530(n)])`
-/

namespace A303580.P7303007216135884064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P7303007216135884064

/-! ## A303580.P11275932588347347262

`A326178(lt[A000010(n+1), A225530(n)])`
-/

namespace A303580.P11275932588347347262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P11275932588347347262

/-! ## A303580.P11972501201402876471

`A326178(lt[A109606(n+1)+1, A225530(n)])`
-/

namespace A303580.P11972501201402876471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P11972501201402876471

/-! ## A303580.P5658200956595846918

`A326178(lt[A039649(n+1)-1, A225530(n)])`
-/

namespace A303580.P5658200956595846918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P5658200956595846918

/-! ## A303580.P2497166474346830346

`A057427(n)+lt[A000010(n+1), A225530(n)]`
-/

namespace A303580.P2497166474346830346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A303580.P2497166474346830346

/-! ## A303580.P5823972098484797872

`A326178(lt[n-A219428(n+1), A225530(n)])`
-/

namespace A303580.P5823972098484797872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P5823972098484797872

/-! ## A303580.P430855346382707527

`A326178(lt[A319998(2*(n+1))/2, A225530(n)])`
-/

namespace A303580.P430855346382707527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A303580.P430855346382707527

/-! ## A303580.P12264072106898180476

`A326178(lt[1-A051953(n+1)+n, A225530(n)])`
-/

namespace A303580.P12264072106898180476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303580.P12264072106898180476

/-!
# A303581: Add i (>= 0) to the i-th block of terms in the Thue-Morse sequence A010060.

The programs for A303581, the canonical program `A303581.P15071600454215095240` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303581 has offset 0).

The definition of A303581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303581.P12463153987245213667

`floor(log2(4*n+2))-char[xor(n, 2*n)]`
-/

namespace A303581.P12463153987245213667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (4 * n + 2) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303581.P12463153987245213667

namespace A303581

/-- `floor(log2(4*n+2))-char[xor(n, 2*n)]` -/
def P12463153987245213667.Spec : Prop :=
  ∀ n, P12463153987245213667.a n = A303581 n

end A303581

/-! ## A303581.P2897324867120786243

`A010060(n)+ceil(log2(n+1))`
-/

namespace A303581.P2897324867120786243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A303581.P2897324867120786243

namespace A303581

/-- `A010060(n)+ceil(log2(n+1))` -/
def P2897324867120786243.Spec : Prop :=
  ∀ n, P2897324867120786243.a n = A303581 n

end A303581

/-! ## A303581.P3540119658809698345

`ceil(log2((n+1)*A001285(n)))`
-/

namespace A303581.P3540119658809698345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 1 : ℤ) * A001285 n : ℝ)⌉

end

end A303581.P3540119658809698345

namespace A303581

/-- `ceil(log2((n+1)*A001285(n)))` -/
def P3540119658809698345.Spec : Prop :=
  ∀ n, P3540119658809698345.a n = A303581 n

end A303581

/-! ## A303581.P8374020206786685798

`ceil(log2(n+1))+A000120(n)%2`
-/

namespace A303581.P8374020206786685798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + Int.tmod (A000120 n) 2

end

end A303581.P8374020206786685798

namespace A303581

/-- `ceil(log2(n+1))+A000120(n)%2` -/
def P8374020206786685798.Spec : Prop :=
  ∀ n, P8374020206786685798.a n = A303581 n

end A303581

/-! ## A303581.P2613644775525353043

`char[A000069(n+1)]+ceil(log2(n+1))`
-/

namespace A303581.P2613644775525353043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A303581.P2613644775525353043

namespace A303581

/-- `char[A000069(n+1)]+ceil(log2(n+1))` -/
def P2613644775525353043.Spec : Prop :=
  ∀ n, P2613644775525353043.a n = A303581 n

end A303581

/-! ## A303581.P1873769194439939419

`A029837(n+1)+comp[xor(n, 2*n+1)]%2`
-/

namespace A303581.P1873769194439939419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A303581.P1873769194439939419

namespace A303581

/-- `A029837(n+1)+comp[xor(n, 2*n+1)]%2` -/
def P1873769194439939419.Spec : Prop :=
  ∀ n, P1873769194439939419.a n = A303581 n

end A303581

/-! ## A303581.P15071600454215095240

`A070941(n)-A010059(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A303581

/-- `A070941(n)-A010059(n)` -/
def P15071600454215095240.Spec : Prop :=
  ∀ n, P15071600454215095240.a n = A303581 n

theorem P15071600454215095240.correct : P15071600454215095240.Spec := by
  intro n
  simp only [A303581]

end A303581

/-! ## A303581.P8086221100209659125

`A029837(n+1)+A010060(n)`
-/

namespace A303581.P8086221100209659125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + A010060 n

end

end A303581.P8086221100209659125

namespace A303581

/-- `A029837(n+1)+A010060(n)` -/
def P8086221100209659125.Spec : Prop :=
  ∀ n, P8086221100209659125.a n = A303581 n

end A303581

/-! ## A303581.P11384604437319078648

`∑[A209229(n)]+and(1, A000120(n))`
-/

namespace A303581.P11384604437319078648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land 1 (A000120 n)

end

end A303581.P11384604437319078648

namespace A303581

/-- `∑[A209229(n)]+and(1, A000120(n))` -/
def P11384604437319078648.Spec : Prop :=
  ∀ n, P11384604437319078648.a n = A303581 n

end A303581

/-! ## A303581.P16434141458897426365

`A119476(n+1)-A132680(n+1)`
-/

namespace A303581.P16434141458897426365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119476 (n + 1) - A132680 (n + 1)

end

end A303581.P16434141458897426365

namespace A303581

/-- `A119476(n+1)-A132680(n+1)` -/
def P16434141458897426365.Spec : Prop :=
  ∀ n, P16434141458897426365.a n = A303581 n

end A303581

/-! ## A303581.P9511715306471914319

`ceil(log2(A001969(n+1)+1-A006257(n)))`
-/

namespace A303581.P9511715306471914319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A001969 (n + 1) + 1 - A006257 n : ℝ)⌉

end

end A303581.P9511715306471914319

namespace A303581

/-- `ceil(log2(A001969(n+1)+1-A006257(n)))` -/
def P9511715306471914319.Spec : Prop :=
  ∀ n, P9511715306471914319.a n = A303581 n

end A303581

/-! ## A303581.P12935073978767325687

`A029837(n+1)+A000035(val(A001316(n), 2))`
-/

namespace A303581.P12935073978767325687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + A000035 (SequenceMachineLib.valuation (A001316 n).toNat 2)

end

end A303581.P12935073978767325687

namespace A303581

/-- `A029837(n+1)+A000035(val(A001316(n), 2))` -/
def P12935073978767325687.Spec : Prop :=
  ∀ n, P12935073978767325687.a n = A303581 n

end A303581

/-! ## A303581.P16631425135234099266

`A277808(2*n+1)+ceil(log2(n+1))`
-/

namespace A303581.P16631425135234099266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (2 * n + 1) + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A303581.P16631425135234099266

namespace A303581

/-- `A277808(2*n+1)+ceil(log2(n+1))` -/
def P16631425135234099266.Spec : Prop :=
  ∀ n, P16631425135234099266.a n = A303581 n

end A303581

/-! ## A303581.P904519456269080046

`A306286(2*n+1)/A306286(n)-(1-A010060(n))`
-/

namespace A303581.P904519456269080046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306286 (2 * n + 1) : ℚ) / (A306286 n : ℚ) - (1 - A010060 n : ℚ)

end

end A303581.P904519456269080046

namespace A303581

/-- `A306286(2*n+1)/A306286(n)-(1-A010060(n))` -/
def P904519456269080046.Spec : Prop :=
  ∀ n, P904519456269080046.a n = (A303581 n : ℚ)

end A303581

/-! ## A303581.P16159828045432124896

`A119387(2*n)+A010060(n)`
-/

namespace A303581.P16159828045432124896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (2 * n) + A010060 n

end

end A303581.P16159828045432124896

namespace A303581

/-- `A119387(2*n)+A010060(n)` -/
def P16159828045432124896.Spec : Prop :=
  ∀ n, P16159828045432124896.a n = A303581 n

end A303581

/-! ## A303581.P1298069062842832997

`A023416(A000069(n+1))+A000120(n)`
-/

namespace A303581.P1298069062842832997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000069 (n + 1)).toNat + A000120 n

end

end A303581.P1298069062842832997

namespace A303581

/-- `A023416(A000069(n+1))+A000120(n)` -/
def P1298069062842832997.Spec : Prop :=
  ∀ n, P1298069062842832997.a n = A303581 n

end A303581

/-! ## A303581.P3750885115118436334

`A000523(A000069(n+1))+A001285(n)-1`
-/

namespace A303581.P3750885115118436334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000069 (n + 1)).toNat + (A001285 n - 1)

end

end A303581.P3750885115118436334

namespace A303581

/-- `A000523(A000069(n+1))+A001285(n)-1` -/
def P3750885115118436334.Spec : Prop :=
  ∀ n, P3750885115118436334.a n = A303581 n

end A303581

/-! ## A303581.P1093515046031921056

`A080791(A000069(n+1))+A000120(2*n)`
-/

namespace A303581.P1093515046031921056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A000069 (n + 1)).toNat + A000120 (2 * n)

end

end A303581.P1093515046031921056

namespace A303581

/-- `A080791(A000069(n+1))+A000120(2*n)` -/
def P1093515046031921056.Spec : Prop :=
  ∀ n, P1093515046031921056.a n = A303581 n

end A303581

/-! ## A303581.P4664471821257021489

`A070939(2*n)-A010059(n)`
-/

namespace A303581.P4664471821257021489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n) - A010059 n

end

end A303581.P4664471821257021489

namespace A303581

/-- `A070939(2*n)-A010059(n)` -/
def P4664471821257021489.Spec : Prop :=
  ∀ n, P4664471821257021489.a n = A303581 n

end A303581

/-! ## A303581.P2229234640373022820

`A346633(n)+A209281(2*n+1)`
-/

namespace A303581.P2229234640373022820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n + A209281 (2 * n + 1)

end

end A303581.P2229234640373022820

namespace A303581

/-- `A346633(n)+A209281(2*n+1)` -/
def P2229234640373022820.Spec : Prop :=
  ∀ n, P2229234640373022820.a n = A303581 n

end A303581

/-!
# A303582: Van der Waerden numbers W(5,n).

The programs for A303582, there is no canonical definition to state claims against.
-/

/-! ## A303582.P6218088984738432398

`A066910(A030459(2*(n+2))+A007814(n+1))`
-/

namespace A303582.P6218088984738432398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066910 (A030459 (2 * (n + 2)) + A007814 (n + 1)).toNat

end

end A303582.P6218088984738432398

/-!
# A303584: Number of inequivalent Krom functions on n variables (or 3SAT instances) under permuting and complementing variables.

The programs for A303584, there is no canonical definition to state claims against.
-/

/-! ## A303584.P2950712265376141142

`A056903(a(n-1))+1` with `a(0)=2, a(1)=3`
-/

namespace A303584.P2950712265376141142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A056903 (a (n - 1)).toNat + 1

end

end A303584.P2950712265376141142

/-!
# A303587: Number of partitions of n that contain exactly one isolated singleton.

The programs for A303587, there is no canonical definition to state claims against.
-/

/-! ## A303587.P11488374120398497419

`Δ[A211694(n)]+floor(1/(n+1))`
-/

namespace A303587.P11488374120398497419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊1 / (n + 1 : ℚ)⌋

end

end A303587.P11488374120398497419

/-! ## A303587.P6860991629597537821

`A000007(n)+Δ[A211694(n)]`
-/

namespace A303587.P6860991629597537821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A303587.P6860991629597537821

/-! ## A303587.P15109291292486203761

`Δ[A211694(n)+A057427(n)]`
-/

namespace A303587.P15109291292486203761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303587.P15109291292486203761

/-! ## A303587.P1126242926000689155

`Δ[A211694(n)-A054977(n)]`
-/

namespace A303587.P1126242926000689155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 n - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303587.P1126242926000689155

/-! ## A303587.P12680674540819890099

`Δ[A211694(n)]%A000244(n)`
-/

namespace A303587.P12680674540819890099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000244 n)

end

end A303587.P12680674540819890099

/-!
# A303588: Number of partitions of n that contain exactly two isolated singletons.

The programs for A303588, there is no canonical definition to state claims against.
-/

/-! ## A303588.P17854379097298724935

`Δ[A303587(n+3)]`
-/

namespace A303588.P17854379097298724935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303587 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303588.P17854379097298724935

/-! ## A303588.P2489481217797493610

`Δ[Δ[A211694(n+2)]]`
-/

namespace A303588.P2489481217797493610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303588.P2489481217797493610

/-!
# A303589: Floor(n*alpha)-1, where alpha is the number with continued fraction expansion [1;1,2,3,4,5,...] (A247844).

The programs for A303589, there is no canonical definition to state claims against.
-/

/-! ## A303589.P11129939849123758174

`comp[floor(n/γ^ϕ)-1]`
-/

namespace A303589.P11129939849123758174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A303589.P11129939849123758174

/-! ## A303589.P16757806370762085381

`floor((n+1)/tan(tan(14))+n)`
-/

namespace A303589.P16757806370762085381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.tan (Real.tan (14 : ℝ)) + (n : ℝ)⌋

end

end A303589.P16757806370762085381

/-! ## A303589.P4690184362660601375

`ceil((n+1)/tan(tan(14))+n-1)`
-/

namespace A303589.P4690184362660601375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tan (Real.tan (14 : ℝ)) + ((n : ℤ) - 1 : ℝ)⌉

end

end A303589.P4690184362660601375

/-! ## A303589.P9792344229912830504

`round(((5*n+1)/3+n)/asin(1))`
-/

namespace A303589.P9792344229912830504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 * n + 1 : ℚ) / 3 + (n : ℚ) : ℝ) / Real.arcsin (1 : ℝ))

end

end A303589.P9792344229912830504

/-! ## A303589.P8807634763138421243

`and(comp[A303590(n+1)], -1)`
-/

namespace A303589.P8807634763138421243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A303589.P8807634763138421243

/-! ## A303589.P496222500306389713

`floor(A137804(n+1)/3)+n`
-/

namespace A303589.P496222500306389713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137804 (n + 1) : ℚ) / 3⌋ + (n : ℤ)

end

end A303589.P496222500306389713

/-! ## A303589.P4511356999825058098

`floor((A008593(n)/4+1)/ϕ)`
-/

namespace A303589.P4511356999825058098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008593 n : ℚ) / 4 + 1 : ℝ) / Real.goldenRatio⌋

end

end A303589.P4511356999825058098

/-! ## A303589.P16901625902455598269

`floor(A060143(A017437(n))/4)`
-/

namespace A303589.P16901625902455598269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060143 (A017437 n).toNat : ℚ) / 4⌋

end

end A303589.P16901625902455598269

/-! ## A303589.P3155438130794503979

`floor(A005378(A017413(n)+1)/4)`
-/

namespace A303589.P3155438130794503979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005378 (A017413 n + 1).toNat : ℚ) / 4⌋

end

end A303589.P3155438130794503979

/-! ## A303589.P16083588029822704681

`A002265(A189934(2*n+1)+n)`
-/

namespace A303589.P16083588029822704681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A189934 (2 * n + 1) + (n : ℤ)).toNat

end

end A303589.P16083588029822704681

/-!
# A303590: Floor(n*beta)-1, where 1/alpha+1/beta=1, alpha being the number with continued fraction expansion [1;1,2,3,4,5,...] (A247844).

The programs for A303590, there is no canonical definition to state claims against.
-/

/-! ## A303590.P16805794817626798917

`floor((n+1)/γ^ϕ)-1`
-/

namespace A303590.P16805794817626798917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

end

end A303590.P16805794817626798917

/-! ## A303590.P17719506806035271956

`comp[round(((5*n+1)/3+n)/asin(1))]`
-/

namespace A303590.P17719506806035271956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 * n + 1 : ℚ) / 3 + (n : ℚ) : ℝ) / Real.arcsin (1 : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A303590.P17719506806035271956

/-! ## A303590.P8018529299827011352

`ceil(3*n+1-(n+1)*acot(asin(1)))`
-/

namespace A303590.P8018529299827011352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n + 1 : ℝ) - (n + 1 : ℝ) * SequenceMachineLib.acot (Real.arcsin (1 : ℝ))⌉

end

end A303590.P8018529299827011352

/-! ## A303590.P2174532320086353820

`Δ[∑[A308358(n)]+n²]`
-/

namespace A303590.P2174532320086353820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303590.P2174532320086353820

/-! ## A303590.P13477652401936420277

`floor(log(A072263(n+1))+n)`
-/

namespace A303590.P13477652401936420277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A072263 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A303590.P13477652401936420277

/-! ## A303590.P3359895647712612706

`floor(log(A303011(n+1))+n)`
-/

namespace A303590.P3359895647712612706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A303011 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A303590.P3359895647712612706

/-! ## A303590.P7132562337717304646

`round(log(A197189(n+1))+n)`
-/

namespace A303590.P7132562337717304646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A197189 (n + 1) : ℝ) + (n : ℝ))

end

end A303590.P7132562337717304646

/-! ## A303590.P13568753137517493571

`∪[A303592(n+1), A305408(n+1)]`
-/

namespace A303590.P13568753137517493571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303590.P13568753137517493571

/-! ## A303590.P1495530003446665525

`A004526(A172475(n+1)+4*n+2)`
-/

namespace A303590.P1495530003446665525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172475 (n + 1) + (4 * n + 2 : ℤ)).toNat

end

end A303590.P1495530003446665525

/-!
# A303591: a(n) = 0 if n in A303589, 1 if n is in A303590.

The programs for A303591, the canonical program `A303591.P2304558505010053778` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303591 has offset 0).

The definition of A303591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303591.P2304558505010053778

`Δ[floor((n+1)*γ^ϕ)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303591

/-- `Δ[floor((n+1)*γ^ϕ)]` -/
def P2304558505010053778.Spec : Prop :=
  ∀ n, P2304558505010053778.a n = A303591 n

theorem P2304558505010053778.correct : P2304558505010053778.Spec := by
  intro n
  simp only [A303591]

end A303591

/-! ## A303591.P1845206358697418359

`log2(Δ[floor((n+1)/cos(11/2))])`
-/

namespace A303591.P1845206358697418359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos ((11 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A303591.P1845206358697418359

namespace A303591

/-- `log2(Δ[floor((n+1)/cos(11/2))])` -/
def P1845206358697418359.Spec : Prop :=
  ∀ n, P1845206358697418359.a n = (A303591 n : ℝ)

end A303591

/-! ## A303591.P3005647083510213190

`Δ[ceil((n+1)*γ^ϕ)]%2`
-/

namespace A303591.P3005647083510213190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.eulerMascheroniConstant ^ Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A303591.P3005647083510213190

namespace A303591

/-- `Δ[ceil((n+1)*γ^ϕ)]%2` -/
def P3005647083510213190.Spec : Prop :=
  ∀ n, P3005647083510213190.a n = A303591 n

end A303591

/-! ## A303591.P7478513633198344860

`and(1, Δ[ceil((n+1)*γ^ϕ)])`
-/

namespace A303591.P7478513633198344860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.eulerMascheroniConstant ^ Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A303591.P7478513633198344860

namespace A303591

/-- `and(1, Δ[ceil((n+1)*γ^ϕ)])` -/
def P7478513633198344860.Spec : Prop :=
  ∀ n, P7478513633198344860.a n = A303591 n

end A303591

/-! ## A303591.P8906892707422429387

`log2(Δ[floor((n+1)/(ϕ-sin(2)))])`
-/

namespace A303591.P8906892707422429387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.goldenRatio - Real.sin (2 : ℝ))⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A303591.P8906892707422429387

namespace A303591

/-- `log2(Δ[floor((n+1)/(ϕ-sin(2)))])` -/
def P8906892707422429387.Spec : Prop :=
  ∀ n, P8906892707422429387.a n = (A303591 n : ℝ)

end A303591

/-! ## A303591.P6616834611164679235

`Δ[floor((n+1)/cos(11/2))]-1`
-/

namespace A303591.P6616834611164679235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos ((11 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A303591.P6616834611164679235

namespace A303591

/-- `Δ[floor((n+1)/cos(11/2))]-1` -/
def P6616834611164679235.Spec : Prop :=
  ∀ n, P6616834611164679235.a n = A303591 n

end A303591

/-! ## A303591.P2667164456471576141

`Δ[floor((n+1)/(ϕ-sin(2)))]-1`
-/

namespace A303591.P2667164456471576141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.goldenRatio - Real.sin (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A303591.P2667164456471576141

namespace A303591

/-- `Δ[floor((n+1)/(ϕ-sin(2)))]-1` -/
def P2667164456471576141.Spec : Prop :=
  ∀ n, P2667164456471576141.a n = A303591 n

end A303591

/-! ## A303591.P9418817849962501973

`1-char[floor((n+1)/tan(tan(14))+n)]`
-/

namespace A303591.P9418817849962501973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.tan (Real.tan (14 : ℝ)) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303591.P9418817849962501973

namespace A303591

/-- `1-char[floor((n+1)/tan(tan(14))+n)]` -/
def P9418817849962501973.Spec : Prop :=
  ∀ n, P9418817849962501973.a n = A303591 n

end A303591

/-! ## A303591.P5271006400354563245

`ceil(sin(char[floor((n+1)/γ^ϕ)-1]))`
-/

namespace A303591.P5271006400354563245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

end

end A303591.P5271006400354563245

namespace A303591

/-- `ceil(sin(char[floor((n+1)/γ^ϕ)-1]))` -/
def P5271006400354563245.Spec : Prop :=
  ∀ n, P5271006400354563245.a n = A303591 n

end A303591

/-! ## A303591.P12718023126534632820

`ceil(atan(char[floor((n+1)/γ^ϕ)-1]))`
-/

namespace A303591.P12718023126534632820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

end

end A303591.P12718023126534632820

namespace A303591

/-- `ceil(atan(char[floor((n+1)/γ^ϕ)-1]))` -/
def P12718023126534632820.Spec : Prop :=
  ∀ n, P12718023126534632820.a n = A303591 n

end A303591

/-! ## A303591.P2891210008478025218

`round(atan(char[floor((n+1)/γ^ϕ)-1]))`
-/

namespace A303591.P2891210008478025218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A303591.P2891210008478025218

namespace A303591

/-- `round(atan(char[floor((n+1)/γ^ϕ)-1]))` -/
def P2891210008478025218.Spec : Prop :=
  ∀ n, P2891210008478025218.a n = A303591 n

end A303591

/-! ## A303591.P3177607238115094553

`or(char[1], char[floor((n+1)/γ^ϕ)-1])`
-/

namespace A303591.P3177607238115094553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A303591.P3177607238115094553

namespace A303591

/-- `or(char[1], char[floor((n+1)/γ^ϕ)-1])` -/
def P3177607238115094553.Spec : Prop :=
  ∀ n, (P3177607238115094553.a n : ℤ) = A303591 n

end A303591

/-! ## A303591.P14679284160373269250

`floor(atan(n+1))*char[floor((n+1)/γ^ϕ)-1]`
-/

namespace A303591.P14679284160373269250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303591.P14679284160373269250

namespace A303591

/-- `floor(atan(n+1))*char[floor((n+1)/γ^ϕ)-1]` -/
def P14679284160373269250.Spec : Prop :=
  ∀ n, P14679284160373269250.a n = A303591 n

end A303591

/-! ## A303591.P3813707690728360716

`char[(floor((n+1)/γ^ϕ)-1)%floor((n+1)*(5-sqrt(5)))]`
-/

namespace A303591.P3813707690728360716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋ - 1) ⌊(n + 1 : ℝ) * (5 - Real.sqrt (5 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A303591.P3813707690728360716

namespace A303591

/-- `char[(floor((n+1)/γ^ϕ)-1)%floor((n+1)*(5-sqrt(5)))]` -/
def P3813707690728360716.Spec : Prop :=
  ∀ n, (P3813707690728360716.a n : ℤ) = A303591 n

end A303591

/-! ## A303591.P11074606167591427784

`char[A303590(n+1)]`
-/

namespace A303591.P11074606167591427784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A303591.P11074606167591427784

namespace A303591

/-- `char[A303590(n+1)]` -/
def P11074606167591427784.Spec : Prop :=
  ∀ n, (P11074606167591427784.a n : ℤ) = A303591 n

end A303591

/-! ## A303591.P13559593426701749389

`char[comp[A303589(n+1)]]`
-/

namespace A303591.P13559593426701749389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303589 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A303591.P13559593426701749389

namespace A303591

/-- `char[comp[A303589(n+1)]]` -/
def P13559593426701749389.Spec : Prop :=
  ∀ n, (P13559593426701749389.a n : ℤ) = A303591 n

end A303591

/-! ## A303591.P15263748070854245778

`char[A308358(n+1)+Δ[n²]]`
-/

namespace A303591.P15263748070854245778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A303591.P15263748070854245778

namespace A303591

/-- `char[A308358(n+1)+Δ[n²]]` -/
def P15263748070854245778.Spec : Prop :=
  ∀ n, (P15263748070854245778.a n : ℤ) = A303591 n

end A303591

/-! ## A303591.P5861613852029839099

`A000045(Δ[ceil((n+1)*γ^ϕ)])`
-/

namespace A303591.P5861613852029839099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.eulerMascheroniConstant ^ Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A303591.P5861613852029839099

namespace A303591

/-- `A000045(Δ[ceil((n+1)*γ^ϕ)])` -/
def P5861613852029839099.Spec : Prop :=
  ∀ n, P5861613852029839099.a n = A303591 n

end A303591

/-! ## A303591.P11038182066405978950

`A000081(Δ[ceil((n+1)*γ^ϕ)])`
-/

namespace A303591.P11038182066405978950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.eulerMascheroniConstant ^ Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (f1 (n + 1) - f1 n).toNat

end

end A303591.P11038182066405978950

namespace A303591

/-- `A000081(Δ[ceil((n+1)*γ^ϕ)])` -/
def P11038182066405978950.Spec : Prop :=
  ∀ n, P11038182066405978950.a n = A303591 n

end A303591

/-! ## A303591.P1913798388693820698

`A001221(Δ[floor((n+1)/cos(11/2))])`
-/

namespace A303591.P1913798388693820698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos ((11 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A303591.P1913798388693820698

namespace A303591

/-- `A001221(Δ[floor((n+1)/cos(11/2))])` -/
def P1913798388693820698.Spec : Prop :=
  ∀ n, P1913798388693820698.a n = A303591 n

end A303591

/-!
# A303592: Arises in study of A303589-A303591.

The programs for A303592, there is no canonical definition to state claims against.
-/

/-! ## A303592.P18168092954631472820

`A141107(n+1)+3*n`
-/

namespace A303592.P18168092954631472820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141107 (n + 1) + (3 * n : ℤ)

end

end A303592.P18168092954631472820

/-! ## A303592.P1215568275484316792

`3*n+A141104(n+1)+1`
-/

namespace A303592.P1215568275484316792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A141104 (n + 1) + 1)

end

end A303592.P1215568275484316792

/-! ## A303592.P12023492571892359907

`A141104(n+1)+A016777(n)`
-/

namespace A303592.P12023492571892359907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141104 (n + 1) + A016777 n

end

end A303592.P12023492571892359907

/-! ## A303592.P3485320504502170302

`A141104(n+1)+Δ[A000326(n)]`
-/

namespace A303592.P3485320504502170302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141104 (n + 1) + (f1 (n + 1) - f1 n)

end

end A303592.P3485320504502170302

/-! ## A303592.P4654996578336843352

`A008586(n)+A141104(n+1)+1-n`
-/

namespace A303592.P4654996578336843352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A141104 (n + 1) + 1) - (n : ℤ)

end

end A303592.P4654996578336843352

/-! ## A303592.P12680410563497268682

`A016777(n)+A004442(A141107(n+1))`
-/

namespace A303592.P12680410563497268682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A004442 (A141107 (n + 1)).toNat

end

end A303592.P12680410563497268682

/-!
# A303593: A294994(n) written in base 2.

The programs for A303593, there is no canonical definition to state claims against.
-/

/-! ## A303593.P15677251858173678649

`A004676(A000720(A294994(n+1)))`
-/

namespace A303593.P15677251858173678649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (A000720 (A294994 (n + 1)).toNat).toNat

end

end A303593.P15677251858173678649

/-! ## A303593.P10763710385420470039

`A007088(A294994(n+1))`
-/

namespace A303593.P10763710385420470039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A294994 (n + 1)).toNat

end

end A303593.P10763710385420470039

/-! ## A303593.P2442895643908930725

`A287874(p?[A294994(n+1)])`
-/

namespace A303593.P2442895643908930725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A303593.P2442895643908930725

/-! ## A303593.P13361395814782289683

`A287874(A294994(n+1)%A097297(n))`
-/

namespace A303593.P13361395814782289683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (Int.tmod (A294994 (n + 1)) (A097297 n)).toNat

end

end A303593.P13361395814782289683

/-! ## A303593.P15201902066441132875

`A287874(or(A054977(n), A294994(n+1)))`
-/

namespace A303593.P15201902066441132875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (Int.lor (A054977 n) (A294994 (n + 1))).toNat

end

end A303593.P15201902066441132875

/-!
# A303594: Number of bits in binary expansion of A294994(n).

The programs for A303594, there is no canonical definition to state claims against.
-/

/-! ## A303594.P16808523256641384850

`∑{digits}[A303593(n+1), A000041(#)]`
-/

namespace A303594.P16808523256641384850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 x).sum

end

end A303594.P16808523256641384850

/-! ## A303594.P14727478965660887095

`∑{digits}[A303593(n+1), A007318(#)]`
-/

namespace A303594.P14727478965660887095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 x).sum

end

end A303594.P14727478965660887095

/-! ## A303594.P8623190884946585426

`A324391(A294994(n+1))`
-/

namespace A303594.P8623190884946585426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324391 (A294994 (n + 1)).toNat

end

end A303594.P8623190884946585426

/-! ## A303594.P4775737563625859758

`A070939(p?[A294994(n+1)])`
-/

namespace A303594.P4775737563625859758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A303594.P4775737563625859758

/-! ## A303594.P18041062404921796461

`A029837(A294994(n+1)+1)`
-/

namespace A303594.P18041062404921796461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A294994 (n + 1) + 1).toNat

end

end A303594.P18041062404921796461

/-! ## A303594.P7485904545973690488

`A138664(2*A294994(n+1)-A294994(n+1))`
-/

namespace A303594.P7485904545973690488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138664 (2 * A294994 (n + 1) - A294994 (n + 1)).toNat

end

end A303594.P7485904545973690488

/-! ## A303594.P10069444854362987524

`A000523(2*A294994(n+1))`
-/

namespace A303594.P10069444854362987524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A294994 (n + 1)).toNat

end

end A303594.P10069444854362987524

/-! ## A303594.P17818644228679168258

`A070939(2*A294994(n+1))-1`
-/

namespace A303594.P17818644228679168258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A294994 (n + 1)).toNat - 1

end

end A303594.P17818644228679168258

/-! ## A303594.P16830826480204564529

`A000523(A294994(n+1)+A294994(n+1))`
-/

namespace A303594.P16830826480204564529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A294994 (n + 1) + A294994 (n + 1)).toNat

end

end A303594.P16830826480204564529

/-!
# A303596: A252867(n) written in binary.

The programs for A303596, there is no canonical definition to state claims against.
-/

/-! ## A303596.P1871860158192760031

`A007088(A252867(n))`
-/

namespace A303596.P1871860158192760031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A252867 n).toNat

end

end A303596.P1871860158192760031

/-! ## A303596.P972696934415173051

`A185544(2*A252867(n))`
-/

namespace A303596.P972696934415173051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A252867 n).toNat

end

end A303596.P972696934415173051

/-! ## A303596.P13074437207434379058

`∑{p}[A252868(n+1), A054841(#)]`
-/

namespace A303596.P13074437207434379058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054841 p

end

end A303596.P13074437207434379058

/-! ## A303596.P2318164086935390339

`A007088(∑{p}[A252868(n+1), A048675(#)])`
-/

namespace A303596.P2318164086935390339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A303596.P2318164086935390339

/-! ## A303596.P14859235495592887214

`A185544(∑{p}[A252868(n+1), A048675(#²)])`
-/

namespace A303596.P14859235495592887214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (p ^ 2)).toNat

end

end A303596.P14859235495592887214

/-! ## A303596.P6168401679498069657

`A185544(2*∑{p}[A252868(n+1), A048675(#)])`
-/

namespace A303596.P6168401679498069657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p)).toNat

end

end A303596.P6168401679498069657

/-! ## A303596.P183307888368505050

`∑{d}[A252868(n+1), A054841(A014963(#))]`
-/

namespace A303596.P183307888368505050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054841 (A014963 d).toNat

end

end A303596.P183307888368505050

/-!
# A303597: Number of bits in binary representation of A252867.

The programs for A303597, there is no canonical definition to state claims against.
-/

/-! ## A303597.P4954476351591288675

`ceil(log2(A252867(n)+1))`
-/

namespace A303597.P4954476351591288675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A252867 n + 1 : ℝ)⌉

end

end A303597.P4954476351591288675

/-! ## A303597.P1516561758372908875

`∑[A303598(n)]-A303598(n)`
-/

namespace A303597.P1516561758372908875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A303598 n

end

end A303597.P1516561758372908875

/-! ## A303597.P7850170918307635102

`A001222(A062383(A252867(n)))`
-/

namespace A303597.P7850170918307635102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 (A252867 n).toNat).toNat

end

end A303597.P7850170918307635102

/-! ## A303597.P11205326594831997066

`A000523(2*A252867(n)+1)`
-/

namespace A303597.P11205326594831997066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A252867 n + 1).toNat

end

end A303597.P11205326594831997066

/-! ## A303597.P7946723340109381420

`A000523(A252867(n)+A252867(n)+1)`
-/

namespace A303597.P7946723340109381420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A252867 n + (A252867 n + 1)).toNat

end

end A303597.P7946723340109381420

/-! ## A303597.P610376033928709737

`A061395(A252868(n+1))`
-/

namespace A303597.P610376033928709737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A252868 (n + 1)).toNat

end

end A303597.P610376033928709737

/-!
# A303598: First differences of A303597.

The programs for A303598, there is no canonical definition to state claims against.
-/

/-! ## A303598.P634773526428409711

`Δ[A303597(n)]`
-/

namespace A303598.P634773526428409711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303598.P634773526428409711

/-! ## A303598.P14111668625005024907

`A303597(n+1)-A303597(n)`
-/

namespace A303598.P14111668625005024907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303597 (n + 1) - A303597 n

end

end A303598.P14111668625005024907

/-! ## A303598.P644631950373340497

`Δ[A001222(A062383(A252867(n)))]`
-/

namespace A303598.P644631950373340497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 (A252867 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303598.P644631950373340497

/-! ## A303598.P16524872665072443474

`Δ[A000523(2*A252867(n)+1)]`
-/

namespace A303598.P16524872665072443474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A252867 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303598.P16524872665072443474

/-! ## A303598.P860911313384534208

`Δ[A061395(A252868(n+1))]`
-/

namespace A303598.P860911313384534208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A252868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303598.P860911313384534208

