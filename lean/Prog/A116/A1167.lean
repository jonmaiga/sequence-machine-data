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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A116700: "Early bird" numbers: write the natural numbers in a string 12345678910111213.... Sequence gives numbers that occur in the string ahead of their natural place, sorted into increasing order (cf. A117804).

The programs for A116700, there is no canonical definition to state claims against.
-/

/-! ## A116700.P4652259308833692813

`lt[A333921(n), n]`
-/

namespace A116700.P4652259308833692813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A116700.P4652259308833692813

/-! ## A116700.P16269016525691706767

`lt[A086044(n), A117804(A028310(n))]`
-/

namespace A116700.P16269016525691706767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116700.P16269016525691706767

/-! ## A116700.P8253413054972559968

`lt[A229186(n), A117804(A028310(n))]`
-/

namespace A116700.P8253413054972559968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116700.P8253413054972559968

/-! ## A116700.P3591313761318432861

`eq[char[A131881(n+1)], A000007(n)]`
-/

namespace A116700.P3591313761318432861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131881 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A116700.P3591313761318432861

/-! ## A116700.P4780762191722811055

`eq[char[A131881(n+1)], A000038(n)]`
-/

namespace A116700.P4780762191722811055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131881 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A116700.P4780762191722811055

/-!
# A116701: Number of permutations of length n that avoid the patterns 132, 4321.

The programs for A116701, the canonical program `A116701.P3635068034440940175` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116701 has offset 0).

The definition of A116701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116701.P15537314052533634194

`ogf((1-4x+7x^2-5x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A116701.P15537314052533634194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 7, -5, 3] [1, -5, 10, -10, 5, -1] n

end

end A116701.P15537314052533634194

namespace A116701

/-- `ogf((1-4x+7x^2-5x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15537314052533634194.Spec : Prop :=
  ∀ n, P15537314052533634194.a n = A116701 n

end A116701

/-! ## A116701.P717521097921542260

`C(n+1, 4)+C(n, 4)+C(n, 2)+1`
-/

namespace A116701.P717521097921542260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + Nat.choose n 4 + Nat.choose n 2 + 1

end

end A116701.P717521097921542260

namespace A116701

/-- `C(n+1, 4)+C(n, 4)+C(n, 2)+1` -/
def P717521097921542260.Spec : Prop :=
  ∀ n, (P717521097921542260.a n : ℤ) = A116701 n

end A116701

/-! ## A116701.P3635068034440940175

`(n^4-4*n^3+11*n²-8*n+12)/12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116701

/-- `(n^4-4*n^3+11*n²-8*n+12)/12` -/
def P3635068034440940175.Spec : Prop :=
  ∀ n, P3635068034440940175.a n = (A116701 n : ℚ)

end A116701

/-! ## A116701.P6686488070667031388

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=1`
-/

namespace A116701.P6686488070667031388
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, 1] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116701.P6686488070667031388

namespace A116701

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P6686488070667031388.Spec : Prop :=
  ∀ n, P6686488070667031388.a n = A116701 n

end A116701

/-! ## A116701.P13388093391341661707

`A179902(n+1)-∑[n]`
-/

namespace A116701.P13388093391341661707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179902 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A116701.P13388093391341661707

namespace A116701

/-- `A179902(n+1)-∑[n]` -/
def P13388093391341661707.Spec : Prop :=
  ∀ n, P13388093391341661707.a n = A116701 n

end A116701

/-! ## A116701.P4873364556093267824

`∑[abs(n-∑[A102762(n)])]`
-/

namespace A116701.P4873364556093267824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116701.P4873364556093267824

namespace A116701

/-- `∑[abs(n-∑[A102762(n)])]` -/
def P4873364556093267824.Spec : Prop :=
  ∀ n, P4873364556093267824.a n = A116701 n

end A116701

/-! ## A116701.P2909066405427801556

`a(n-1)+A081490(n)-1` with `a(0)=1`
-/

namespace A116701.P2909066405427801556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081490 n - 1)

end

end A116701.P2909066405427801556

namespace A116701

/-- `a(n-1)+A081490(n)-1` -/
def P2909066405427801556.Spec : Prop :=
  ∀ n, P2909066405427801556.a n = A116701 n

end A116701

/-! ## A116701.P10591523332246594862

`A081489(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A116701.P10591523332246594862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A081489 (n - 1) + a (n - 1)

end

end A116701.P10591523332246594862

namespace A116701

/-- `A081489(n-1)+a(n-1)` -/
def P10591523332246594862.Spec : Prop :=
  ∀ n, P10591523332246594862.a n = A116701 n

end A116701

/-! ## A116701.P15330678103332901082

`A079034(n)-A007290(n)`
-/

namespace A116701.P15330678103332901082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079034 n - A007290 n

end

end A116701.P15330678103332901082

namespace A116701

/-- `A079034(n)-A007290(n)` -/
def P15330678103332901082.Spec : Prop :=
  ∀ n, P15330678103332901082.a n = A116701 n

end A116701

/-! ## A116701.P275963095512698081

`A136396(n)-A033547(n)`
-/

namespace A116701.P275963095512698081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n - A033547 n

end

end A116701.P275963095512698081

namespace A116701

/-- `A136396(n)-A033547(n)` -/
def P275963095512698081.Spec : Prop :=
  ∀ n, P275963095512698081.a n = A116701 n

end A116701

/-! ## A116701.P8183989102203589291

`A179257(n)-A000389(n)`
-/

namespace A116701.P8183989102203589291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179257 n - A000389 n

end

end A116701.P8183989102203589291

namespace A116701

/-- `A179257(n)-A000389(n)` -/
def P8183989102203589291.Spec : Prop :=
  ∀ n, P8183989102203589291.a n = A116701 n

end A116701

/-! ## A116701.P2840280601743041500

`A002415(n)+1-A007290(n)`
-/

namespace A116701.P2840280601743041500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + (1 - A007290 n)

end

end A116701.P2840280601743041500

namespace A116701

/-- `A002415(n)+1-A007290(n)` -/
def P2840280601743041500.Spec : Prop :=
  ∀ n, P2840280601743041500.a n = A116701 n

end A116701

/-! ## A116701.P4850329537100189987

`A006008(n)+1-A006527(n)`
-/

namespace A116701.P4850329537100189987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n + (1 - A006527 n)

end

end A116701.P4850329537100189987

namespace A116701

/-- `A006008(n)+1-A006527(n)` -/
def P4850329537100189987.Spec : Prop :=
  ∀ n, P4850329537100189987.a n = A116701 n

end A116701

/-! ## A116701.P148321180877123945

`A136395(n)-A145068(n+1)`
-/

namespace A116701.P148321180877123945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136395 n - A145068 (n + 1)

end

end A116701.P148321180877123945

namespace A116701

/-- `A136395(n)-A145068(n+1)` -/
def P148321180877123945.Spec : Prop :=
  ∀ n, P148321180877123945.a n = A116701 n

end A116701

/-! ## A116701.P683156174545192908

`A000127(n+1)+A000332(n)-n`
-/

namespace A116701.P683156174545192908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (A000332 n - (n : ℤ))

end

end A116701.P683156174545192908

namespace A116701

/-- `A000127(n+1)+A000332(n)-n` -/
def P683156174545192908.Spec : Prop :=
  ∀ n, P683156174545192908.a n = A116701 n

end A116701

/-! ## A116701.P11722639419148589735

`A000332(n)+A362193(n)-A000389(n)`
-/

namespace A116701.P11722639419148589735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + (A362193 n - A000389 n)

end

end A116701.P11722639419148589735

namespace A116701

/-- `A000332(n)+A362193(n)-A000389(n)` -/
def P11722639419148589735.Spec : Prop :=
  ∀ n, P11722639419148589735.a n = A116701 n

end A116701

/-! ## A116701.P1317597302145886342

`A176145(n+3)+A006522(n)-A117662(n+1)`
-/

namespace A116701.P1317597302145886342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) + (A006522 n - A117662 (n + 1))

end

end A116701.P1317597302145886342

namespace A116701

/-- `A176145(n+3)+A006522(n)-A117662(n+1)` -/
def P1317597302145886342.Spec : Prop :=
  ∀ n, P1317597302145886342.a n = A116701 n

end A116701

/-! ## A116701.P13402228408260282890

`A000108(n)/A000984(n)*A302612(n)`
-/

namespace A116701.P13402228408260282890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A000984 n : ℚ) * (A302612 n : ℚ)

end

end A116701.P13402228408260282890

namespace A116701

/-- `A000108(n)/A000984(n)*A302612(n)` -/
def P13402228408260282890.Spec : Prop :=
  ∀ n, P13402228408260282890.a n = (A116701 n : ℚ)

end A116701

/-! ## A116701.P5050646268901705013

`A008806((1-n)²)+A008806(n)`
-/

namespace A116701.P5050646268901705013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 ((1 - (n : ℤ)) ^ 2).toNat + A008806 n

end

end A116701.P5050646268901705013

namespace A116701

/-- `A008806((1-n)²)+A008806(n)` -/
def P5050646268901705013.Spec : Prop :=
  ∀ n, P5050646268901705013.a n = A116701 n

end A116701

/-!
# A116702: Number of permutations of length n which avoid the patterns 123, 3241.

The programs for A116702, the canonical program `A116702.P6759975152555763682` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116702 has offset 1).

The definition of A116702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116702.P11102253992890746891

`ogf((1-3x+4x^2-x^3)/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A116702.P11102253992890746891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4, -1] [1, -5, 9, -7, 2] n

end

end A116702.P11102253992890746891

namespace A116702

/-- `ogf((1-3x+4x^2-x^3)/(1-5x+9x^2-7x^3+2x^4))` -/
def P11102253992890746891.Spec : Prop :=
  ∀ n, P11102253992890746891.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P6759975152555763682

`3*2^n+n+1-(n+2)*(2+n+1)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116702

/-- `3*2^n+n+1-(n+2)*(2+n+1)/2` -/
def P6759975152555763682.Spec : Prop :=
  ∀ n, P6759975152555763682.a n = (A116702 (n + 1) : ℚ)

end A116702

/-! ## A116702.P10295689711162533479

`C(n, 2)+2*a(n-1)` with `a(0)=1`
-/

namespace A116702.P10295689711162533479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n 2 + 2 * a (n - 1)

end

end A116702.P10295689711162533479

namespace A116702

/-- `C(n, 2)+2*a(n-1)` -/
def P10295689711162533479.Spec : Prop :=
  ∀ n, (P10295689711162533479.a n : ℤ) = A116702 (n + 1)

end A116702

/-! ## A116702.P4194830724458022807

`∑[n]+2*a(n-1)-n` with `a(0)=1`
-/

namespace A116702.P4194830724458022807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * a (n - 1) - (n : ℤ)

end

end A116702.P4194830724458022807

namespace A116702

/-- `∑[n]+2*a(n-1)-n` -/
def P4194830724458022807.Spec : Prop :=
  ∀ n, P4194830724458022807.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P16932504729359136132

`∑[2*a(n-1)-(1-n)]` with `a(0)=1, a(1)=1`
-/

namespace A116702.P16932504729359136132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P16932504729359136132

namespace A116702

/-- `∑[2*a(n-1)-(1-n)]` -/
def P16932504729359136132.Spec : Prop :=
  ∀ n, P16932504729359136132.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P3234981692957874146

`2*a(n-1)+(n-1)*n/2` with `a(0)=1`
-/

namespace A116702.P3234981692957874146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1 : ℚ) * ((n : ℚ) / 2)

end

end A116702.P3234981692957874146

namespace A116702

/-- `2*a(n-1)+(n-1)*n/2` -/
def P3234981692957874146.Spec : Prop :=
  ∀ n, P3234981692957874146.a n = (A116702 (n + 1) : ℚ)

end A116702

/-! ## A116702.P5872415377090755247

`∑[∑[a(n-1)+a(n-1)+1]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A116702.P5872415377090755247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P5872415377090755247

namespace A116702

/-- `∑[∑[a(n-1)+a(n-1)+1]]` -/
def P5872415377090755247.Spec : Prop :=
  ∀ n, (P5872415377090755247.a n : ℤ) = A116702 (n + 1)

end A116702

/-! ## A116702.P10587209594950990553

`∑[n-(1-a(n-1)-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A116702.P10587209594950990553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P10587209594950990553

namespace A116702

/-- `∑[n-(1-a(n-1)-a(n-1))]` -/
def P10587209594950990553.Spec : Prop :=
  ∀ n, P10587209594950990553.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P1701745092806093609

`a(n-1)-((1-n)*n/2-a(n-1))` with `a(0)=1`
-/

namespace A116702.P1701745092806093609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((1 - (n : ℤ) : ℚ) * ((n : ℚ) / 2) - a (n - 1))

end

end A116702.P1701745092806093609

namespace A116702

/-- `a(n-1)-((1-n)*n/2-a(n-1))` -/
def P1701745092806093609.Spec : Prop :=
  ∀ n, P1701745092806093609.a n = (A116702 (n + 1) : ℚ)

end A116702

/-! ## A116702.P16865325443936729557

`∑[A083329(n)-n]`
-/

namespace A116702.P16865325443936729557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P16865325443936729557

namespace A116702

/-- `∑[A083329(n)-n]` -/
def P16865325443936729557.Spec : Prop :=
  ∀ n, P16865325443936729557.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P2694462674188394034

`∑[A042950(n)-(n+1)]`
-/

namespace A116702.P2694462674188394034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P2694462674188394034

namespace A116702

/-- `∑[A042950(n)-(n+1)]` -/
def P2694462674188394034.Spec : Prop :=
  ∀ n, P2694462674188394034.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P1246652972099639392

`∑[A296953(n)+1-n]`
-/

namespace A116702.P1246652972099639392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P1246652972099639392

namespace A116702

/-- `∑[A296953(n)+1-n]` -/
def P1246652972099639392.Spec : Prop :=
  ∀ n, P1246652972099639392.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P1416858321117867741

`∑[A266550(n+2)-n]`
-/

namespace A116702.P1416858321117867741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P1416858321117867741

namespace A116702

/-- `∑[A266550(n+2)-n]` -/
def P1416858321117867741.Spec : Prop :=
  ∀ n, P1416858321117867741.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P17442536251925835955

`∑[∑[A122391(n+1)]-n]`
-/

namespace A116702.P17442536251925835955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P17442536251925835955

namespace A116702

/-- `∑[∑[A122391(n+1)]-n]` -/
def P17442536251925835955.Spec : Prop :=
  ∀ n, P17442536251925835955.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P7724054122286088731

`∑[A098011(n+3)-(n+1)]`
-/

namespace A116702.P7724054122286088731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 3) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P7724054122286088731

namespace A116702

/-- `∑[A098011(n+3)-(n+1)]` -/
def P7724054122286088731.Spec : Prop :=
  ∀ n, P7724054122286088731.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P14111751425879145946

`∑[A011782(n)+A000295(n)]`
-/

namespace A116702.P14111751425879145946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116702.P14111751425879145946

namespace A116702

/-- `∑[A011782(n)+A000295(n)]` -/
def P14111751425879145946.Spec : Prop :=
  ∀ n, P14111751425879145946.a n = A116702 (n + 1)

end A116702

/-! ## A116702.P17856153283790773119

`(∑[A097813(n)]+1)/2`
-/

namespace A116702.P17856153283790773119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097813 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A116702.P17856153283790773119

namespace A116702

/-- `(∑[A097813(n)]+1)/2` -/
def P17856153283790773119.Spec : Prop :=
  ∀ n, P17856153283790773119.a n = (A116702 (n + 1) : ℚ)

end A116702

/-! ## A116702.P15058388925843009025

`(A183156(n)+1+n)/2`
-/

namespace A116702.P15058388925843009025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183156 n + 1 + (n : ℤ) : ℚ) / 2

end

end A116702.P15058388925843009025

namespace A116702

/-- `(A183156(n)+1+n)/2` -/
def P15058388925843009025.Spec : Prop :=
  ∀ n, P15058388925843009025.a n = (A116702 (n + 1) : ℚ)

end A116702

/-! ## A116702.P8670997136135847070

`(A047520(n)+2+n)/2`
-/

namespace A116702.P8670997136135847070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047520 n + 2 + (n : ℤ) : ℚ) / 2

end

end A116702.P8670997136135847070

namespace A116702

/-- `(A047520(n)+2+n)/2` -/
def P8670997136135847070.Spec : Prop :=
  ∀ n, P8670997136135847070.a n = (A116702 (n + 1) : ℚ)

end A116702

/-! ## A116702.P18160826596773444618

`A156127(n)%A145070(n+1)`
-/

namespace A116702.P18160826596773444618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156127 n) (A145070 (n + 1))

end

end A116702.P18160826596773444618

namespace A116702

/-- `A156127(n)%A145070(n+1)` -/
def P18160826596773444618.Spec : Prop :=
  ∀ n, P18160826596773444618.a n = A116702 (n + 1)

end A116702

/-!
# A116703: Number of permutations of length n which avoid the patterns 231, 4123.

The programs for A116703, the canonical program `A116703.P9752698948712267220` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116703 has offset 1).

The definition of A116703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116703.P9752698948712267220

`ogf((1-2x+2x^2)/(1-4x+5x^2-3x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116703

/-- `ogf((1-2x+2x^2)/(1-4x+5x^2-3x^3))` -/
def P9752698948712267220.Spec : Prop :=
  ∀ n, P9752698948712267220.a n = A116703 (n + 1)

theorem P9752698948712267220.correct : P9752698948712267220.Spec := by
  intro n
  simp only [A116703, Nat.add_sub_cancel]

end A116703

/-! ## A116703.P12690174123578867149

`∑[A261664(n+1)]-A048305(n)`
-/

namespace A116703.P12690174123578867149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048305 n

end

end A116703.P12690174123578867149

namespace A116703

/-- `∑[A261664(n+1)]-A048305(n)` -/
def P12690174123578867149.Spec : Prop :=
  ∀ n, P12690174123578867149.a n = A116703 (n + 1)

end A116703

/-! ## A116703.P3604498284481327623

`∑[A261664(n+1)]-A048333(n)`
-/

namespace A116703.P3604498284481327623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048333 n

end

end A116703.P3604498284481327623

namespace A116703

/-- `∑[A261664(n+1)]-A048333(n)` -/
def P3604498284481327623.Spec : Prop :=
  ∀ n, P3604498284481327623.a n = A116703 (n + 1)

end A116703

/-! ## A116703.P12234123098024193623

`A280513(A369328(n))`
-/

namespace A116703.P12234123098024193623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280513 (A369328 n).toNat

end

end A116703.P12234123098024193623

namespace A116703

/-- `A280513(A369328(n))` -/
def P12234123098024193623.Spec : Prop :=
  ∀ n, P12234123098024193623.a n = A116703 (n + 1)

end A116703

/-!
# A116704: Number of permutations of length n which avoid the patterns 2341, 4312.

The programs for A116704, the canonical program `A116704.P17767194730917342308` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116704 has offset 0).

The definition of A116704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116704.P17767194730917342308

`ogf((1-6x+12x^2-13x^3+5x^4-x^5)/(1-7x+17x^2-22x^3+13x^4-4x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116704

/-- `ogf((1-6x+12x^2-13x^3+5x^4-x^5)/(1-7x+17x^2-22x^3+13x^4-4x^5))` -/
def P17767194730917342308.Spec : Prop :=
  ∀ n, P17767194730917342308.a n = A116704 n

theorem P17767194730917342308.correct : P17767194730917342308.Spec := by
  intro n
  simp only [A116704]

end A116704

/-! ## A116704.P11736016429751878364

`A187180(A302705(n))`
-/

namespace A116704.P11736016429751878364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A302705 n).toNat

end

end A116704.P11736016429751878364

namespace A116704

/-- `A187180(A302705(n))` -/
def P11736016429751878364.Spec : Prop :=
  ∀ n, P11736016429751878364.a n = A116704 n

end A116704

/-! ## A116704.P3493320298924013616

`A116707(gcd(n, A025487(n!)))`
-/

namespace A116704.P3493320298924013616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116707 (Int.gcd (n : ℤ) (A025487 (Nat.factorial n)))

end

end A116704.P3493320298924013616

namespace A116704

/-- `A116707(gcd(n, A025487(n!)))` -/
def P3493320298924013616.Spec : Prop :=
  ∀ n, P3493320298924013616.a n = A116704 n

end A116704

/-! ## A116704.P1792351073491730840

`A116707(A331854(ceil(2^(n-1))))`
-/

namespace A116704.P1792351073491730840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116707 (A331854 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A116704.P1792351073491730840

namespace A116704

/-- `A116707(A331854(ceil(2^(n-1))))` -/
def P1792351073491730840.Spec : Prop :=
  ∀ n, P1792351073491730840.a n = A116704 n

end A116704

/-!
# A116705: Number of permutations of length n which avoid the patterns 1234, 4312.

The programs for A116705, there is no canonical definition to state claims against.
-/

/-! ## A116705.P8297936005909742739

`A247911(A335559(n+1))`
-/

namespace A116705.P8297936005909742739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A335559 (n + 1)).toNat

end

end A116705.P8297936005909742739

/-! ## A116705.P12667758520530549188

`A008679(A135493(n+1)²)`
-/

namespace A116705.P12667758520530549188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A135493 (n + 1) ^ 2).toNat

end

end A116705.P12667758520530549188

/-!
# A116706: Number of permutations of length n which avoid the patterns 2134, 3421.

The programs for A116706, there is no canonical definition to state claims against.
-/

/-! ## A116706.P18068531707633957136

`A189663(A027135(n))+A000006(A320898(n))`
-/

namespace A116706.P18068531707633957136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A027135 n).toNat + A000006 (A320898 n).toNat

end

end A116706.P18068531707633957136

/-! ## A116706.P9659553872629273574

`∏{p}[A116708(n+1)², #]`
-/

namespace A116706.P9659553872629273574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116708 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A116706.P9659553872629273574

/-!
# A116707: Number of permutations of length n which avoid the patterns 1342, 4213.

The programs for A116707, the canonical program `A116707.P8746157242113629857` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116707 has offset 1).

The definition of A116707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116707.P10778807881149228682

`ogf((1-5x+8x^2-4x^3)/(1-7x+16x^2-16x^3+4x^4))`
-/

namespace A116707.P10778807881149228682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 8, -4] [1, -7, 16, -16, 4] n

end

end A116707.P10778807881149228682

namespace A116707

/-- `ogf((1-5x+8x^2-4x^3)/(1-7x+16x^2-16x^3+4x^4))` -/
def P10778807881149228682.Spec : Prop :=
  ∀ n, P10778807881149228682.a n = A116707 (n + 1)

end A116707

/-! ## A116707.P8746157242113629857

`7*a(n-1)-16*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=22`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116707

/-- `7*a(n-1)-16*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P8746157242113629857.Spec : Prop :=
  ∀ n, P8746157242113629857.a n = A116707 (n + 1)

theorem P8746157242113629857.correct : P8746157242113629857.Spec := by
  intro n
  simp only [A116707, Nat.add_sub_cancel]

end A116707

/-! ## A116707.P9266982246830008666

`record[A004719(A116704(n))]`
-/

namespace A116707.P9266982246830008666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A116704 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116707.P9266982246830008666

namespace A116707

/-- `record[A004719(A116704(n))]` -/
def P9266982246830008666.Spec : Prop :=
  ∀ n, P9266982246830008666.a n = A116707 (n + 1)

end A116707

/-!
# A116708: Number of permutations of length n which avoid the patterns 2314, 4321.

The programs for A116708, there is no canonical definition to state claims against.
-/

/-! ## A116708.P14368464983975356703

`A248180(A364865(n+1))`
-/

namespace A116708.P14368464983975356703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A364865 (n + 1)).toNat

end

end A116708.P14368464983975356703

/-!
# A116709: Number of permutations of length n which avoid the patterns 2341, 4213.

The programs for A116709, the canonical program `A116709.P16054458334054699536` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116709 has offset 1).

The definition of A116709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116709.P16054458334054699536

`ogf((1-6x+12x^2-7x^3+2x^4)/(1-8x+22x^2-25x^3+10x^4-2x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116709

/-- `ogf((1-6x+12x^2-7x^3+2x^4)/(1-8x+22x^2-25x^3+10x^4-2x^5))` -/
def P16054458334054699536.Spec : Prop :=
  ∀ n, P16054458334054699536.a n = A116709 (n + 1)

theorem P16054458334054699536.correct : P16054458334054699536.Spec := by
  intro n
  simp only [A116709, Nat.add_sub_cancel]

end A116709

/-! ## A116709.P11787475176423145516

`8*a(n-1)-22*a(n-2)+25*a(n-3)-10*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=22, a(4)=86`
-/

namespace A116709.P11787475176423145516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 22, 86] fun n a =>
  8 * a (n - 1) - 22 * a (n - 2) + 25 * a (n - 3) - 10 * a (n - 4) + 2 * a (n - 5)

end

end A116709.P11787475176423145516

namespace A116709

/-- `8*a(n-1)-22*a(n-2)+25*a(n-3)-10*a(n-4)+2*a(n-5)` -/
def P11787475176423145516.Spec : Prop :=
  ∀ n, P11787475176423145516.a n = A116709 (n + 1)

end A116709

/-! ## A116709.P566311563170710300

`A103889(A000045(3*n+1))-A067336(n)`
-/

namespace A116709.P566311563170710300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A000045 (3 * n + 1)).toNat - A067336 n

end

end A116709.P566311563170710300

namespace A116709

/-- `A103889(A000045(3*n+1))-A067336(n)` -/
def P566311563170710300.Spec : Prop :=
  ∀ n, P566311563170710300.a n = A116709 (n + 1)

end A116709

/-!
# A116710: Number of permutations of length n which avoid the patterns 1423, 3421.

The programs for A116710, the canonical program `A116710.P4394895340969062832` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116710 has offset 1).

The definition of A116710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116710.P4394895340969062832

`ogf((1-9x+31x^2-49x^3+37x^4-14x^5+2x^6)/(1-11x+47x^2-99x^3+109x^4-63x^5+18x^6-2x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116710

/-- `ogf((1-9x+31x^2-49x^3+37x^4-14x^5+2x^6)/(1-11x+47x^2-99x^3+109x^4-63x^5+18x^6-2x^7))` -/
def P4394895340969062832.Spec : Prop :=
  ∀ n, P4394895340969062832.a n = A116710 (n + 1)

theorem P4394895340969062832.correct : P4394895340969062832.Spec := by
  intro n
  simp only [A116710, Nat.add_sub_cancel]

end A116710

/-!
# A116711: Number of permutations of length n which avoid the patterns 123, 3214, 4312.

The programs for A116711, the canonical program `A116711.P17699237838958374966` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116711 has offset 1).

The definition of A116711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116711.P6541246194904445661

`ogf((1-x+2x^2+2x^3-2x^5)/(1-3x+3x^2-x^3))`
-/

namespace A116711.P6541246194904445661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 2, 0, -2] [1, -3, 3, -1] n

end

end A116711.P6541246194904445661

namespace A116711

/-- `ogf((1-x+2x^2+2x^3-2x^5)/(1-3x+3x^2-x^3))` -/
def P6541246194904445661.Spec : Prop :=
  ∀ n, P6541246194904445661.a n = A116711 (n + 1)

end A116711

/-! ## A116711.P17699237838958374966

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=23, a(5)=36`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116711

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17699237838958374966.Spec : Prop :=
  ∀ n, P17699237838958374966.a n = A116711 (n + 1)

theorem P17699237838958374966.correct : P17699237838958374966.Spec := by
  intro n
  simp only [A116711, Nat.add_sub_cancel]

end A116711

/-! ## A116711.P17041452638550203915

`(n+1)²+abs(2*n-5)-5`
-/

namespace A116711.P17041452638550203915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (|(2 * n : ℤ) - 5| - 5)

end

end A116711.P17041452638550203915

namespace A116711

/-- `(n+1)²+abs(2*n-5)-5` -/
def P17041452638550203915.Spec : Prop :=
  ∀ n, P17041452638550203915.a n = A116711 (n + 1)

end A116711

/-! ## A116711.P15449720122391946214

`record[a(n-1)+2*n+1]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3`
-/

namespace A116711.P15449720122391946214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 3] fun n f1 =>
  f1 (n - 1) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116711.P15449720122391946214

namespace A116711

/-- `record[a(n-1)+2*n+1]` -/
def P15449720122391946214.Spec : Prop :=
  ∀ n, (P15449720122391946214.a n : ℤ) = A116711 (n + 1)

end A116711

/-! ## A116711.P10727444670532505503

`∑[a((a(n-1)-1)%n)+a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A116711.P10727444670532505503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (Int.tmod ((f1 (n - 1) : ℤ) - 1) (n : ℤ)).toNat + f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116711.P10727444670532505503

namespace A116711

/-- `∑[a((a(n-1)-1)%n)+a(n-1)+1]` -/
def P10727444670532505503.Spec : Prop :=
  ∀ n, (P10727444670532505503.a n : ℤ) = A116711 (n + 1)

end A116711

/-! ## A116711.P15619438773442209920

`∑[2*(n+1-A292213(C(3, n)))+1]`
-/

namespace A116711.P15619438773442209920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A292213 (Nat.choose 3 n)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116711.P15619438773442209920

namespace A116711

/-- `∑[2*(n+1-A292213(C(3, n)))+1]` -/
def P15619438773442209920.Spec : Prop :=
  ∀ n, P15619438773442209920.a n = A116711 (n + 1)

end A116711

/-! ## A116711.P16045389267816927141

`∑[A005408(A033627(n+1)-A004276(n+1))]`
-/

namespace A116711.P16045389267816927141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A033627 (n + 1) - A004276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116711.P16045389267816927141

namespace A116711

/-- `∑[A005408(A033627(n+1)-A004276(n+1))]` -/
def P16045389267816927141.Spec : Prop :=
  ∀ n, P16045389267816927141.a n = A116711 (n + 1)

end A116711

/-!
# A116712: Number of permutations of length n which avoid the patterns 231, 3214, 4312.

The programs for A116712, the canonical program `A116712.P5431410053559634133` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116712 has offset 1).

The definition of A116712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116712.P6606421293263359631

`ogf((1-x+x^3)/(1-3x+x^2+2x^3))`
-/

namespace A116712.P6606421293263359631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -3, 1, 2] n

end

end A116712.P6606421293263359631

namespace A116712

/-- `ogf((1-x+x^3)/(1-3x+x^2+2x^3))` -/
def P6606421293263359631.Spec : Prop :=
  ∀ n, P6606421293263359631.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P5431410053559634133

`A257113(n+2)-A000045(n+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116712

/-- `A257113(n+2)-A000045(n+3)` -/
def P5431410053559634133.Spec : Prop :=
  ∀ n, P5431410053559634133.a n = A116712 (n + 1)

theorem P5431410053559634133.correct : P5431410053559634133.Spec := by
  intro n
  simp only [A116712, Nat.add_sub_cancel]

end A116712

/-! ## A116712.P13925626272103172373

`A000045(n)+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A116712.P13925626272103172373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 n + 2 * a (n - 1)

end

end A116712.P13925626272103172373

namespace A116712

/-- `A000045(n)+2*a(n-1)` -/
def P13925626272103172373.Spec : Prop :=
  ∀ n, P13925626272103172373.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P16264308363337975213

`A000032(n)+4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116712.P16264308363337975213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A000032 n + 4 * a (n - 2)

end

end A116712.P16264308363337975213

namespace A116712

/-- `A000032(n)+4*a(n-2)` -/
def P16264308363337975213.Spec : Prop :=
  ∀ n, P16264308363337975213.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P12118581211748726547

`2*a(n-1)-(1-A001611(n))` with `a(0)=1, a(1)=2`
-/

namespace A116712.P12118581211748726547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (1 - A001611 n)

end

end A116712.P12118581211748726547

namespace A116712

/-- `2*a(n-1)-(1-A001611(n))` -/
def P12118581211748726547.Spec : Prop :=
  ∀ n, P12118581211748726547.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P1939400601939113289

`2*a(n-1)-A152163(n+2)` with `a(0)=1, a(1)=2`
-/

namespace A116712.P1939400601939113289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - A152163 (n + 2)

end

end A116712.P1939400601939113289

namespace A116712

/-- `2*a(n-1)-A152163(n+2)` -/
def P1939400601939113289.Spec : Prop :=
  ∀ n, P1939400601939113289.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P18103045282251141232

`2*a(n-1)+A002062(n)-n` with `a(0)=1, a(1)=2`
-/

namespace A116712.P18103045282251141232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + (A002062 n - (n : ℤ))

end

end A116712.P18103045282251141232

namespace A116712

/-- `2*a(n-1)+A002062(n)-n` -/
def P18103045282251141232.Spec : Prop :=
  ∀ n, P18103045282251141232.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P4299353245224581493

`A232580(n)+A083329(n)`
-/

namespace A116712.P4299353245224581493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A083329 n

end

end A116712.P4299353245224581493

namespace A116712

/-- `A232580(n)+A083329(n)` -/
def P4299353245224581493.Spec : Prop :=
  ∀ n, P4299353245224581493.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P15742122255627787211

`A104004(n)-A131577(n)`
-/

namespace A116712.P15742122255627787211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n - A131577 n

end

end A116712.P15742122255627787211

namespace A116712

/-- `A104004(n)-A131577(n)` -/
def P15742122255627787211.Spec : Prop :=
  ∀ n, P15742122255627787211.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P8777773181244081207

`A011782(n)+∑[A027934(n)]`
-/

namespace A116712.P8777773181244081207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116712.P8777773181244081207

namespace A116712

/-- `A011782(n)+∑[A027934(n)]` -/
def P8777773181244081207.Spec : Prop :=
  ∀ n, P8777773181244081207.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P5260326498481531187

`A104004(n)-Δ[A011782(n)]`
-/

namespace A116712.P5260326498481531187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n - (f1 (n + 1) - f1 n)

end

end A116712.P5260326498481531187

namespace A116712

/-- `A104004(n)-Δ[A011782(n)]` -/
def P5260326498481531187.Spec : Prop :=
  ∀ n, P5260326498481531187.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P9736417167349221438

`A011782(n)+A008466(n+1)`
-/

namespace A116712.P9736417167349221438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A008466 (n + 1)

end

end A116712.P9736417167349221438

namespace A116712

/-- `A011782(n)+A008466(n+1)` -/
def P9736417167349221438.Spec : Prop :=
  ∀ n, P9736417167349221438.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P15589390136036380176

`A131051(n+1)-A001911(n)`
-/

namespace A116712.P15589390136036380176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 1) - A001911 n

end

end A116712.P15589390136036380176

namespace A116712

/-- `A131051(n+1)-A001911(n)` -/
def P15589390136036380176.Spec : Prop :=
  ∀ n, P15589390136036380176.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P3012449436840754752

`A027934(n+2)-A003945(n)`
-/

namespace A116712.P3012449436840754752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 2) - A003945 n

end

end A116712.P3012449436840754752

namespace A116712

/-- `A027934(n+2)-A003945(n)` -/
def P3012449436840754752.Spec : Prop :=
  ∀ n, P3012449436840754752.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P16933242947016033545

`lcm(A167808(n), A167816(n))+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A116712.P16933242947016033545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (A167808 n) (A167816 n) + 2 * a (n - 1)

end

end A116712.P16933242947016033545

namespace A116712

/-- `lcm(A167808(n), A167816(n))+2*a(n-1)` -/
def P16933242947016033545.Spec : Prop :=
  ∀ n, (P16933242947016033545.a n : ℤ) = A116712 (n + 1)

end A116712

/-! ## A116712.P2158270403954157070

`ceil(A316528(n)/2)`
-/

namespace A116712.P2158270403954157070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316528 n : ℚ) / 2⌉

end

end A116712.P2158270403954157070

namespace A116712

/-- `ceil(A316528(n)/2)` -/
def P2158270403954157070.Spec : Prop :=
  ∀ n, P2158270403954157070.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P11885051409440222015

`round((A167821(n+2)+2^n)/2)`
-/

namespace A116712.P11885051409440222015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A167821 (n + 2) + (2 ^ n : ℤ) : ℚ) / 2)

end

end A116712.P11885051409440222015

namespace A116712

/-- `round((A167821(n+2)+2^n)/2)` -/
def P11885051409440222015.Spec : Prop :=
  ∀ n, P11885051409440222015.a n = A116712 (n + 1)

end A116712

/-! ## A116712.P10319735688181099152

`A316528(n)/A036453(n+1)`
-/

namespace A116712.P10319735688181099152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316528 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A116712.P10319735688181099152

namespace A116712

/-- `A316528(n)/A036453(n+1)` -/
def P10319735688181099152.Spec : Prop :=
  ∀ n, P10319735688181099152.a n = (A116712 (n + 1) : ℚ)

end A116712

/-!
# A116713: Number of permutations of length n which avoid the patterns 123, 2431, 4132.

The programs for A116713, the canonical program `A116713.P1068126215312003903` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116713 has offset 1).

The definition of A116713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116713.P5788610855167478666

`ogf((1-3x+4x^2-2x^3-3x^4+2x^5)/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A116713.P5788610855167478666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4, -2, -3, 2] [1, -5, 9, -7, 2] n

end

end A116713.P5788610855167478666

namespace A116713

/-- `ogf((1-3x+4x^2-2x^3-3x^4+2x^5)/(1-5x+9x^2-7x^3+2x^4))` -/
def P5788610855167478666.Spec : Prop :=
  ∀ n, P5788610855167478666.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P1068126215312003903

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=24, a(5)=45`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116713

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P1068126215312003903.Spec : Prop :=
  ∀ n, P1068126215312003903.a n = A116713 (n + 1)

theorem P1068126215312003903.correct : P1068126215312003903.Spec := by
  intro n
  simp only [A116713, Nat.add_sub_cancel]

end A116713

/-! ## A116713.P14233676134341021602

`∑[char[2]+or(n, A166444(n+1))]`
-/

namespace A116713.P14233676134341021602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + Int.lor (n : ℤ) (A166444 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116713.P14233676134341021602

namespace A116713

/-- `∑[char[2]+or(n, A166444(n+1))]` -/
def P14233676134341021602.Spec : Prop :=
  ∀ n, P14233676134341021602.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P475088520210286427

`A212342(n)+A000225(n)`
-/

namespace A116713.P475088520210286427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n + A000225 n

end

end A116713.P475088520210286427

namespace A116713

/-- `A212342(n)+A000225(n)` -/
def P475088520210286427.Spec : Prop :=
  ∀ n, P475088520210286427.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P12706717364311796547

`A132109(n)-A130130(n)`
-/

namespace A116713.P12706717364311796547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132109 n - A130130 n

end

end A116713.P12706717364311796547

namespace A116713

/-- `A132109(n)-A130130(n)` -/
def P12706717364311796547.Spec : Prop :=
  ∀ n, P12706717364311796547.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P11352926450508610528

`A296965(n)+A179865(n+1)`
-/

namespace A116713.P11352926450508610528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n + A179865 (n + 1)

end

end A116713.P11352926450508610528

namespace A116713

/-- `A296965(n)+A179865(n+1)` -/
def P11352926450508610528.Spec : Prop :=
  ∀ n, P11352926450508610528.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P16504202621005839453

`A140229(n+1)-A071099(n)`
-/

namespace A116713.P16504202621005839453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140229 (n + 1) - A071099 n

end

end A116713.P16504202621005839453

namespace A116713

/-- `A140229(n+1)-A071099(n)` -/
def P16504202621005839453.Spec : Prop :=
  ∀ n, P16504202621005839453.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P15887657913757638143

`A132109(n)+A289207(n)-n`
-/

namespace A116713.P15887657913757638143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132109 n + (A289207 n - (n : ℤ))

end

end A116713.P15887657913757638143

namespace A116713

/-- `A132109(n)+A289207(n)-n` -/
def P15887657913757638143.Spec : Prop :=
  ∀ n, P15887657913757638143.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P5224534702750803281

`n²+A289207(n)+A014833(n)`
-/

namespace A116713.P5224534702750803281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A289207 n + A014833 n)

end

end A116713.P5224534702750803281

namespace A116713

/-- `n²+A289207(n)+A014833(n)` -/
def P5224534702750803281.Spec : Prop :=
  ∀ n, P5224534702750803281.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P5564597664141707111

`∑[or(n, A011782(n%A011782(n)))]`
-/

namespace A116713.P5564597664141707111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A011782 (Int.tmod (n : ℤ) (A011782 n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116713.P5564597664141707111

namespace A116713

/-- `∑[or(n, A011782(n%A011782(n)))]` -/
def P5564597664141707111.Spec : Prop :=
  ∀ n, P5564597664141707111.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P2104333396037293678

`(2^n+2*(a(n-1)+n))/2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116713.P2104333396037293678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  ((2 ^ n : ℚ) + 2 * (a (n - 1) + (n : ℚ))) / 2

end

end A116713.P2104333396037293678

namespace A116713

/-- `(2^n+2*(a(n-1)+n))/2` -/
def P2104333396037293678.Spec : Prop :=
  ∀ n, P2104333396037293678.a n = (A116713 (n + 1) : ℚ)

end A116713

/-! ## A116713.P17558288967928303545

`A366542(n+1)/2-n`
-/

namespace A116713.P17558288967928303545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366542 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A116713.P17558288967928303545

namespace A116713

/-- `A366542(n+1)/2-n` -/
def P17558288967928303545.Spec : Prop :=
  ∀ n, P17558288967928303545.a n = (A116713 (n + 1) : ℚ)

end A116713

/-! ## A116713.P8307318397589999586

`A011782(n+1)+A076616(n+1)/A011782(n)`
-/

namespace A116713.P8307318397589999586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) + (A076616 (n + 1) : ℚ) / (A011782 n : ℚ)

end

end A116713.P8307318397589999586

namespace A116713

/-- `A011782(n+1)+A076616(n+1)/A011782(n)` -/
def P8307318397589999586.Spec : Prop :=
  ∀ n, P8307318397589999586.a n = (A116713 (n + 1) : ℚ)

end A116713

/-! ## A116713.P16603457739797515146

`A000079(n)+A038722(A238531(n))-1`
-/

namespace A116713.P16603457739797515146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A038722 (A238531 n).toNat - 1)

end

end A116713.P16603457739797515146

namespace A116713

/-- `A000079(n)+A038722(A238531(n))-1` -/
def P16603457739797515146.Spec : Prop :=
  ∀ n, P16603457739797515146.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P3320950579980021822

`record[A046143(n+1)+n]`
-/

namespace A116713.P3320950579980021822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046143 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116713.P3320950579980021822

namespace A116713

/-- `record[A046143(n+1)+n]` -/
def P3320950579980021822.Spec : Prop :=
  ∀ n, P3320950579980021822.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P9255683935649768494

`A163866(A000124(n)+2)-2`
-/

namespace A116713.P9255683935649768494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (A000124 n + 2).toNat - 2

end

end A116713.P9255683935649768494

namespace A116713

/-- `A163866(A000124(n)+2)-2` -/
def P9255683935649768494.Spec : Prop :=
  ∀ n, P9255683935649768494.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P12568115272904421189

`A289207(∑[n])+A077957(2*n)`
-/

namespace A116713.P12568115272904421189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f1 j) + A077957 (2 * n)

end

end A116713.P12568115272904421189

namespace A116713

/-- `A289207(∑[n])+A077957(2*n)` -/
def P12568115272904421189.Spec : Prop :=
  ∀ n, P12568115272904421189.a n = A116713 (n + 1)

end A116713

/-! ## A116713.P18358509417536982978

`A000079(n)+A009766(A133263(n))-1`
-/

namespace A116713.P18358509417536982978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A009766 (A133263 n).toNat - 1)

end

end A116713.P18358509417536982978

namespace A116713

/-- `A000079(n)+A009766(A133263(n))-1` -/
def P18358509417536982978.Spec : Prop :=
  ∀ n, P18358509417536982978.a n = A116713 (n + 1)

end A116713

/-!
# A116714: Number of permutations of length n that avoid the patterns 321, 1342, 4123.

The programs for A116714, the canonical program `A116714.P13566318116455435578` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116714 has offset 0).

The definition of A116714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116714.P13566318116455435578

`ogf((1-x+x^3+3x^4+x^5)/(1-2x+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116714

/-- `ogf((1-x+x^3+3x^4+x^5)/(1-2x+x^4))` -/
def P13566318116455435578.Spec : Prop :=
  ∀ n, P13566318116455435578.a n = A116714 n

theorem P13566318116455435578.correct : P13566318116455435578.Spec := by
  intro n
  simp only [A116714]

end A116714

/-! ## A116714.P5720931361368883710

`A100683(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A116714.P5720931361368883710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A100683 n + a (n - 1)

end

end A116714.P5720931361368883710

namespace A116714

/-- `A100683(n)+a(n-1)` -/
def P5720931361368883710.Spec : Prop :=
  ∀ n, P5720931361368883710.a n = A116714 n

end A116714

/-! ## A116714.P7736767441026792996

`A005041(or(A006189(n), A364597(n)))`
-/

namespace A116714.P7736767441026792996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.lor (A006189 n) (A364597 n)).toNat

end

end A116714.P7736767441026792996

namespace A116714

/-- `A005041(or(A006189(n), A364597(n)))` -/
def P7736767441026792996.Spec : Prop :=
  ∀ n, P7736767441026792996.a n = A116714 n

end A116714

/-!
# A116715: Number of permutations of length n which avoid the patterns 312, 2341, 4321.

The programs for A116715, the canonical program `A116715.P5421028602907253248` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116715 has offset 1).

The definition of A116715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116715.P611398000439353812

`ogf((1+x+2x^2+3x^3+x^4)/(1-x-x^2-2x^3-3x^4-x^5))`
-/

namespace A116715.P611398000439353812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, 1] [1, -1, -1, -2, -3, -1] n

end

end A116715.P611398000439353812

namespace A116715

/-- `ogf((1+x+2x^2+3x^3+x^4)/(1-x-x^2-2x^3-3x^4-x^5))` -/
def P611398000439353812.Spec : Prop :=
  ∀ n, P611398000439353812.a n = A116715 (n + 1)

end A116715

/-! ## A116715.P5421028602907253248

`a(n-1)+a(n-2)+2*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=25`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116715

/-- `a(n-1)+a(n-2)+2*a(n-3)+3*a(n-4)+a(n-5)` -/
def P5421028602907253248.Spec : Prop :=
  ∀ n, (P5421028602907253248.a n : ℤ) = A116715 (n + 1)

theorem P5421028602907253248.correct : P5421028602907253248.Spec := by
  intro n
  simp only [A116715, Nat.add_sub_cancel]

end A116715

/-! ## A116715.P9135587831042645998

`A111660(A036624(n))+A018112(n)`
-/

namespace A116715.P9135587831042645998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A036624 n).toNat + A018112 n

end

end A116715.P9135587831042645998

namespace A116715

/-- `A111660(A036624(n))+A018112(n)` -/
def P9135587831042645998.Spec : Prop :=
  ∀ n, P9135587831042645998.a n = A116715 (n + 1)

end A116715

/-! ## A116715.P18301749981215853765

`A054846(A100230(n)+∑[A030065(n)])`
-/

namespace A116715.P18301749981215853765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A100230 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116715.P18301749981215853765

namespace A116715

/-- `A054846(A100230(n)+∑[A030065(n)])` -/
def P18301749981215853765.Spec : Prop :=
  ∀ n, P18301749981215853765.a n = A116715 (n + 1)

end A116715

/-!
# A116716: Number of permutations of length n which avoid the patterns 321, 2341, 4123.

The programs for A116716, the canonical program `A116716.P8413360875565272638` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116716 has offset 1).

The definition of A116716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116716.P9271770322501158352

`ogf((1+x^2+x^3-x^4)/(1-2x-x^3-x^4+x^5))`
-/

namespace A116716.P9271770322501158352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, -1] [1, -2, 0, -1, -1, 1] n

end

end A116716.P9271770322501158352

namespace A116716

/-- `ogf((1+x^2+x^3-x^4)/(1-2x-x^3-x^4+x^5))` -/
def P9271770322501158352.Spec : Prop :=
  ∀ n, P9271770322501158352.a n = A116716 (n + 1)

end A116716

/-! ## A116716.P8413360875565272638

`2*a(n-1)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=26`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116716

/-- `2*a(n-1)+a(n-3)+a(n-4)-a(n-5)` -/
def P8413360875565272638.Spec : Prop :=
  ∀ n, P8413360875565272638.a n = A116716 (n + 1)

theorem P8413360875565272638.correct : P8413360875565272638.Spec := by
  intro n
  simp only [A116716, Nat.add_sub_cancel]

end A116716

/-! ## A116716.P7387164631490974491

`2*a(n-1)+a(n-2)-a(n-3)-(1-and(2, n))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116716.P7387164631490974491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) + (a (n - 2) - a (n - 3)) - (1 - (Nat.land 2 n : ℤ))

end

end A116716.P7387164631490974491

namespace A116716

/-- `2*a(n-1)+a(n-2)-a(n-3)-(1-and(2, n))` -/
def P7387164631490974491.Spec : Prop :=
  ∀ n, P7387164631490974491.a n = A116716 (n + 1)

end A116716

/-! ## A116716.P1335693174249580910

`A006356(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A116716.P1335693174249580910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006356 n - a (n - 2)

end

end A116716.P1335693174249580910

namespace A116716

/-- `A006356(n)-a(n-2)` -/
def P1335693174249580910.Spec : Prop :=
  ∀ n, P1335693174249580910.a n = A116716 (n + 1)

end A116716

/-! ## A116716.P18237724349646821364

`A077998(n+1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A116716.P18237724349646821364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A077998 (n + 1) - a (n - 2)

end

end A116716.P18237724349646821364

namespace A116716

/-- `A077998(n+1)-a(n-2)` -/
def P18237724349646821364.Spec : Prop :=
  ∀ n, P18237724349646821364.a n = A116716 (n + 1)

end A116716

/-! ## A116716.P4725297963497858158

`A106803(n+2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A116716.P4725297963497858158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A106803 (n + 2) - a (n - 2)

end

end A116716.P4725297963497858158

namespace A116716

/-- `A106803(n+2)-a(n-2)` -/
def P4725297963497858158.Spec : Prop :=
  ∀ n, P4725297963497858158.a n = A116716 (n + 1)

end A116716

/-! ## A116716.P8802265929499821657

`Δ[ogf(1/(1-2x-x^3-x^4+x^5))]`
-/

namespace A116716.P8802265929499821657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, -1, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116716.P8802265929499821657

namespace A116716

/-- `Δ[ogf(1/(1-2x-x^3-x^4+x^5))]` -/
def P8802265929499821657.Spec : Prop :=
  ∀ n, P8802265929499821657.a n = A116716 (n + 1)

end A116716

/-!
# A116717: Number of permutations of length n which avoid the patterns 231, 1423, 3214.

The programs for A116717, the canonical program `A116717.P7798815007813636985` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116717 has offset 1).

The definition of A116717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116717.P14922887064394586897

`A000045(n+6)-A000124(n+3)`
-/

namespace A116717.P14922887064394586897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) - A000124 (n + 3)

end

end A116717.P14922887064394586897

namespace A116717

/-- `A000045(n+6)-A000124(n+3)` -/
def P14922887064394586897.Spec : Prop :=
  ∀ n, P14922887064394586897.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P6811671793369027798

`ogf((1-2x+2x^2+x^3-x^4)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A116717.P6811671793369027798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 1, -1] [1, -4, 5, -1, -2, 1] n

end

end A116717.P6811671793369027798

namespace A116717

/-- `ogf((1-2x+2x^2+x^3-x^4)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P6811671793369027798.Spec : Prop :=
  ∀ n, P6811671793369027798.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P7798815007813636985

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=26`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116717

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P7798815007813636985.Spec : Prop :=
  ∀ n, P7798815007813636985.a n = A116717 (n + 1)

theorem P7798815007813636985.correct : P7798815007813636985.Spec := by
  intro n
  simp only [A116717, Nat.add_sub_cancel]

end A116717

/-! ## A116717.P12508841560863349136

`∑[∑[ogf(x/(1-2x+x^3))]]+1`
-/

namespace A116717.P12508841560863349136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116717.P12508841560863349136

namespace A116717

/-- `∑[∑[ogf(x/(1-2x+x^3))]]+1` -/
def P12508841560863349136.Spec : Prop :=
  ∀ n, P12508841560863349136.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P11013801855860393127

`1-∑[-∑[ogf(x/(1-2x+x^3))]]`
-/

namespace A116717.P11013801855860393127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116717.P11013801855860393127

namespace A116717

/-- `1-∑[-∑[ogf(x/(1-2x+x^3))]]` -/
def P11013801855860393127.Spec : Prop :=
  ∀ n, P11013801855860393127.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P5073108426555905536

`∑[a(n-1)+a(n-2)+n]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A116717.P5073108426555905536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116717.P5073108426555905536

namespace A116717

/-- `∑[a(n-1)+a(n-2)+n]` -/
def P5073108426555905536.Spec : Prop :=
  ∀ n, (P5073108426555905536.a n : ℤ) = A116717 (n + 1)

end A116717

/-! ## A116717.P8794299728367071689

`a(n-1)-(1-a(n-2)-∑[n])` with `a(0)=1, a(1)=2`
-/

namespace A116717.P8794299728367071689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (1 - a (n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A116717.P8794299728367071689

namespace A116717

/-- `a(n-1)-(1-a(n-2)-∑[n])` -/
def P8794299728367071689.Spec : Prop :=
  ∀ n, P8794299728367071689.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P17478946600293042816

`a(n-1)+a(n-1)-a(n-3)+n` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116717.P17478946600293042816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3)) + (n : ℤ)

end

end A116717.P17478946600293042816

namespace A116717

/-- `a(n-1)+a(n-1)-a(n-3)+n` -/
def P17478946600293042816.Spec : Prop :=
  ∀ n, P17478946600293042816.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P13210846940442699503

`a(n-1)-(a(n-3)-n-a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116717.P13210846940442699503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) - (a (n - 3) - (n : ℤ) - a (n - 1))

end

end A116717.P13210846940442699503

namespace A116717

/-- `a(n-1)-(a(n-3)-n-a(n-1))` -/
def P13210846940442699503.Spec : Prop :=
  ∀ n, P13210846940442699503.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P16081852615779652750

`A014162(n)+1`
-/

namespace A116717.P16081852615779652750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n + 1

end

end A116717.P16081852615779652750

namespace A116717

/-- `A014162(n)+1` -/
def P16081852615779652750.Spec : Prop :=
  ∀ n, P16081852615779652750.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P2146168548898174985

`∑[A001924(n)]+1`
-/

namespace A116717.P2146168548898174985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116717.P2146168548898174985

namespace A116717

/-- `∑[A001924(n)]+1` -/
def P2146168548898174985.Spec : Prop :=
  ∀ n, P2146168548898174985.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P14259011491580337771

`∑[n]+A163250(n)+1`
-/

namespace A116717.P14259011491580337771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A163250 n + 1)

end

end A116717.P14259011491580337771

namespace A116717

/-- `∑[n]+A163250(n)+1` -/
def P14259011491580337771.Spec : Prop :=
  ∀ n, P14259011491580337771.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P7198832228675100342

`∑[A000126(n+1)]-n`
-/

namespace A116717.P7198832228675100342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A116717.P7198832228675100342

namespace A116717

/-- `∑[A000126(n+1)]-n` -/
def P7198832228675100342.Spec : Prop :=
  ∀ n, P7198832228675100342.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P8649501972203242623

`∑[∑[∑[A000045(n)]]]+1`
-/

namespace A116717.P8649501972203242623
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116717.P8649501972203242623

namespace A116717

/-- `∑[∑[∑[A000045(n)]]]+1` -/
def P8649501972203242623.Spec : Prop :=
  ∀ n, P8649501972203242623.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P2245926047882461697

`A000128(n+2)-(n+1)`
-/

namespace A116717.P2245926047882461697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000128 (n + 2) - (n + 1 : ℤ)

end

end A116717.P2245926047882461697

namespace A116717

/-- `A000128(n+2)-(n+1)` -/
def P2245926047882461697.Spec : Prop :=
  ∀ n, P2245926047882461697.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P11209976376865961509

`∑[∑[A000071(n+2)]]+1`
-/

namespace A116717.P11209976376865961509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116717.P11209976376865961509

namespace A116717

/-- `∑[∑[A000071(n+2)]]+1` -/
def P11209976376865961509.Spec : Prop :=
  ∀ n, P11209976376865961509.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P1253417537985104645

`∑[∑[A339572(2*n)]]+1`
-/

namespace A116717.P1253417537985104645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116717.P1253417537985104645

namespace A116717

/-- `∑[∑[A339572(2*n)]]+1` -/
def P1253417537985104645.Spec : Prop :=
  ∀ n, P1253417537985104645.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P15214539935252307082

`∑[A001891(abs(1-n))+n]`
-/

namespace A116717.P15214539935252307082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 |1 - (n : ℤ)|.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116717.P15214539935252307082

namespace A116717

/-- `∑[A001891(abs(1-n))+n]` -/
def P15214539935252307082.Spec : Prop :=
  ∀ n, P15214539935252307082.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P6025515628375170809

`A079921(n+1)-∑[n+2]`
-/

namespace A116717.P6025515628375170809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079921 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A116717.P6025515628375170809

namespace A116717

/-- `A079921(n+1)-∑[n+2]` -/
def P6025515628375170809.Spec : Prop :=
  ∀ n, P6025515628375170809.a n = A116717 (n + 1)

end A116717

/-! ## A116717.P6908131925907890878

`∑[A006327(n+4)-n]+1`
-/

namespace A116717.P6908131925907890878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116717.P6908131925907890878

namespace A116717

/-- `∑[A006327(n+4)-n]+1` -/
def P6908131925907890878.Spec : Prop :=
  ∀ n, P6908131925907890878.a n = A116717 (n + 1)

end A116717

/-!
# A116718: Number of permutations of length n which avoid the patterns 321, 1342, 3124.

The programs for A116718, the canonical program `A116718.P4828705936338902457` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116718 has offset 0).

The definition of A116718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116718.P3870207960170448515

`ogf((1-2x+x^2+2x^3+x^4-3x^5-2x^6)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A116718.P3870207960170448515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 2, 1, -3, -2] [1, -3, 2, 1, -1] n

end

end A116718.P3870207960170448515

namespace A116718

/-- `ogf((1-2x+x^2+2x^3+x^4-3x^5-2x^6)/(1-3x+2x^2+x^3-x^4))` -/
def P3870207960170448515.Spec : Prop :=
  ∀ n, P3870207960170448515.a n = A116718 n

end A116718

/-! ## A116718.P4828705936338902457

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=12, a(5)=22, a(6)=37`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116718

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P4828705936338902457.Spec : Prop :=
  ∀ n, P4828705936338902457.a n = A116718 n

theorem P4828705936338902457.correct : P4828705936338902457.Spec := by
  intro n
  simp only [A116718]

end A116718

/-! ## A116718.P10169167548377832038

`A107820(a(n-1))-3+A000079(n)-A027934(n)` with `a(0)=1`
-/

namespace A116718.P10169167548377832038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107820 (a (n - 1)).toNat - 3 + (A000079 n - A027934 n)

end

end A116718.P10169167548377832038

namespace A116718

/-- `A107820(a(n-1))-3+A000079(n)-A027934(n)` -/
def P10169167548377832038.Spec : Prop :=
  ∀ n, P10169167548377832038.a n = A116718 n

end A116718

/-! ## A116718.P11015664813026165088

`A139748(A257275(n+1))+A034887(n)`
-/

namespace A116718.P11015664813026165088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 (A257275 (n + 1)).toNat + A034887 n

end

end A116718.P11015664813026165088

namespace A116718

/-- `A139748(A257275(n+1))+A034887(n)` -/
def P11015664813026165088.Spec : Prop :=
  ∀ n, P11015664813026165088.a n = A116718 n

end A116718

/-! ## A116718.P10346744351180608551

`A024327(A000325(n)*A156022(n+3))`
-/

namespace A116718.P10346744351180608551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A000325 n * A156022 (n + 3)).toNat

end

end A116718.P10346744351180608551

namespace A116718

/-- `A024327(A000325(n)*A156022(n+3))` -/
def P10346744351180608551.Spec : Prop :=
  ∀ n, P10346744351180608551.a n = A116718 n

end A116718

/-!
# A116719: Number of monocyclic skeletons with n carbon atoms and a ring size of 4.

The programs for A116719, there is no canonical definition to state claims against.
-/

/-! ## A116719.P3339792762555221977

`A305059(∑[n+1]+4)`
-/

namespace A116719.P3339792762555221977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A116719.P3339792762555221977

/-! ## A116719.P11387331263143125774

`A348528(A078007(n))+A181688(n+1)`
-/

namespace A116719.P11387331263143125774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 (A078007 n).toNat + A181688 (n + 1)

end

end A116719.P11387331263143125774

/-! ## A116719.P16002676151572345885

`A062132(A120333(n+5))-A003227(n+1)`
-/

namespace A116719.P16002676151572345885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062132 (A120333 (n + 5)).toNat - A003227 (n + 1)

end

end A116719.P16002676151572345885

/-!
# A116720: Number of permutations of length n which avoid the patterns 213, 1234, 4312.

The programs for A116720, the canonical program `A116720.P9999264565433639873` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116720 has offset 0).

The definition of A116720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116720.P9999264565433639873

`ogf((1-2x+2x^2+x^3+2x^4+2x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116720

/-- `ogf((1-2x+2x^2+x^3+2x^4+2x^5)/(1-3x+3x^2-x^3))` -/
def P9999264565433639873.Spec : Prop :=
  ∀ n, P9999264565433639873.a n = A116720 n

theorem P9999264565433639873.correct : P9999264565433639873.Spec := by
  intro n
  simp only [A116720]

end A116720

/-! ## A116720.P17228593762111545561

`∑[a(n-1)+6]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=7`
-/

namespace A116720.P17228593762111545561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 3, 7] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116720.P17228593762111545561

namespace A116720

/-- `∑[a(n-1)+6]` -/
def P17228593762111545561.Spec : Prop :=
  ∀ n, (P17228593762111545561.a n : ℤ) = A116720 n

end A116720

/-!
# A116721: Number of permutations of length n which avoid the patterns 123, 3142, 4312; or avoid the patterns 123, 3421, 4231.

The programs for A116721, the canonical program `A116721.P7080034720775740217` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116721 has offset 1).

The definition of A116721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116721.P3653140723309575932

`ogf((1-2x+3x^2-x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A116721.P3653140723309575932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, 0, -1] [1, -4, 6, -4, 1] n

end

end A116721.P3653140723309575932

namespace A116721

/-- `ogf((1-2x+3x^2-x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P3653140723309575932.Spec : Prop :=
  ∀ n, P3653140723309575932.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P7080034720775740217

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=24`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116721

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7080034720775740217.Spec : Prop :=
  ∀ n, P7080034720775740217.a n = A116721 (n + 1)

theorem P7080034720775740217.correct : P7080034720775740217.Spec := by
  intro n
  simp only [A116721, Nat.add_sub_cancel]

end A116721

/-! ## A116721.P8954602473505102639

`∑[∑[1-C(2, n)+n]+1]`
-/

namespace A116721.P8954602473505102639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P8954602473505102639

namespace A116721

/-- `∑[∑[1-C(2, n)+n]+1]` -/
def P8954602473505102639.Spec : Prop :=
  ∀ n, P8954602473505102639.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P10083345546151806545

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A116721.P10083345546151806545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 4] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P10083345546151806545

namespace A116721

/-- `∑[∑[a(n-1)+1]]` -/
def P10083345546151806545.Spec : Prop :=
  ∀ n, (P10083345546151806545.a n : ℤ) = A116721 (n + 1)

end A116721

/-! ## A116721.P10085402995251114013

`∑[∑[1-char[2]+n]]-2*n`
-/

namespace A116721.P10085402995251114013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A116721.P10085402995251114013

namespace A116721

/-- `∑[∑[1-char[2]+n]]-2*n` -/
def P10085402995251114013.Spec : Prop :=
  ∀ n, P10085402995251114013.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P7410729883736693789

`∑[∑[A267873(n)-n]]`
-/

namespace A116721.P7410729883736693789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P7410729883736693789

namespace A116721

/-- `∑[∑[A267873(n)-n]]` -/
def P7410729883736693789.Spec : Prop :=
  ∀ n, P7410729883736693789.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P2450239431355453636

`∑[A267874(n)-∑[n]]`
-/

namespace A116721.P2450239431355453636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P2450239431355453636

namespace A116721

/-- `∑[A267874(n)-∑[n]]` -/
def P2450239431355453636.Spec : Prop :=
  ∀ n, P2450239431355453636.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P15973439561480494627

`∑[A397339(n+1)-n]`
-/

namespace A116721.P15973439561480494627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397339 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P15973439561480494627

namespace A116721

/-- `∑[A397339(n+1)-n]` -/
def P15973439561480494627.Spec : Prop :=
  ∀ n, P15973439561480494627.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P8562122217792041366

`∑[A027379(A028310(n)-1)]`
-/

namespace A116721.P8562122217792041366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P8562122217792041366

namespace A116721

/-- `∑[A027379(A028310(n)-1)]` -/
def P8562122217792041366.Spec : Prop :=
  ∀ n, P8562122217792041366.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P15077520895226428271

`∑[A027379(A004273(n)-n)]`
-/

namespace A116721.P15077520895226428271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P15077520895226428271

namespace A116721

/-- `∑[A027379(A004273(n)-n)]` -/
def P15077520895226428271.Spec : Prop :=
  ∀ n, P15077520895226428271.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P5838817912150561986

`∑[A027379(A065033(2*n)-1)]`
-/

namespace A116721.P5838817912150561986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A065033 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P5838817912150561986

namespace A116721

/-- `∑[A027379(A065033(2*n)-1)]` -/
def P5838817912150561986.Spec : Prop :=
  ∀ n, P5838817912150561986.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P2793911016389066777

`abs(∑[record[A347633(n+1)]]-n)`
-/

namespace A116721.P2793911016389066777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A116721.P2793911016389066777

namespace A116721

/-- `abs(∑[record[A347633(n+1)]]-n)` -/
def P2793911016389066777.Spec : Prop :=
  ∀ n, P2793911016389066777.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P12204653974080230363

`∑[A071943(∑[n]+2)]`
-/

namespace A116721.P12204653974080230363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P12204653974080230363

namespace A116721

/-- `∑[A071943(∑[n]+2)]` -/
def P12204653974080230363.Spec : Prop :=
  ∀ n, P12204653974080230363.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P14868659641105256718

`∑[A059397(∑[n]+2)]`
-/

namespace A116721.P14868659641105256718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059397 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P14868659641105256718

namespace A116721

/-- `∑[A059397(∑[n]+2)]` -/
def P14868659641105256718.Spec : Prop :=
  ∀ n, P14868659641105256718.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P13024873957220568453

`∑[A188107(∑[n]+2)]`
-/

namespace A116721.P13024873957220568453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P13024873957220568453

namespace A116721

/-- `∑[A188107(∑[n]+2)]` -/
def P13024873957220568453.Spec : Prop :=
  ∀ n, P13024873957220568453.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P2848930882558382544

`∑[A033627(A000124(n))-n²]`
-/

namespace A116721.P2848930882558382544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A000124 n).toNat - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P2848930882558382544

namespace A116721

/-- `∑[A033627(A000124(n))-n²]` -/
def P2848930882558382544.Spec : Prop :=
  ∀ n, P2848930882558382544.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P18238173203319729510

`∑[A289207(∑[n])+A028310(n)]`
-/

namespace A116721.P18238173203319729510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f2 j) + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P18238173203319729510

namespace A116721

/-- `∑[A289207(∑[n])+A028310(n)]` -/
def P18238173203319729510.Spec : Prop :=
  ∀ n, P18238173203319729510.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P11257134008038435357

`∑[A028310(∑[A326178(n)])]`
-/

namespace A116721.P11257134008038435357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P11257134008038435357

namespace A116721

/-- `∑[A028310(∑[A326178(n)])]` -/
def P11257134008038435357.Spec : Prop :=
  ∀ n, P11257134008038435357.a n = A116721 (n + 1)

end A116721

/-! ## A116721.P16049805266329621702

`∑[A011117(∑[n]+2)]`
-/

namespace A116721.P16049805266329621702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116721.P16049805266329621702

namespace A116721

/-- `∑[A011117(∑[n]+2)]` -/
def P16049805266329621702.Spec : Prop :=
  ∀ n, P16049805266329621702.a n = A116721 (n + 1)

end A116721

/-!
# A116722: Number of permutations of length n which avoid the patterns 312, 1324, 3421; or avoid the patterns 312, 1324, 2341, etc.

The programs for A116722, the canonical program `A116722.P3327653597015689118` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116722 has offset 1).

The definition of A116722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116722.P9363435713581698010

`ogf((1-3x+5x^2-3x^3+x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A116722.P9363435713581698010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 5, -3, 0, 1] [1, -5, 10, -10, 5, -1] n

end

end A116722.P9363435713581698010

namespace A116722

/-- `ogf((1-3x+5x^2-3x^3+x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9363435713581698010.Spec : Prop :=
  ∀ n, P9363435713581698010.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P3327653597015689118

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=25, a(5)=47`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116722

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3327653597015689118.Spec : Prop :=
  ∀ n, P3327653597015689118.a n = A116722 (n + 1)

theorem P3327653597015689118.correct : P3327653597015689118.Spec := by
  intro n
  simp only [A116722, Nat.add_sub_cancel]

end A116722

/-! ## A116722.P15270910505260236201

`∑[∑[1-C(2, n)+n]+1]+C(n, 4)`
-/

namespace A116722.P15270910505260236201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 4 : ℤ)

end

end A116722.P15270910505260236201

namespace A116722

/-- `∑[∑[1-C(2, n)+n]+1]+C(n, 4)` -/
def P15270910505260236201.Spec : Prop :=
  ∀ n, P15270910505260236201.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P16684024398305741955

`A227637(n+1)-(∑[C(n, 2)+2]-1)`
-/

namespace A116722.P16684024398305741955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227637 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A116722.P16684024398305741955

namespace A116722

/-- `A227637(n+1)-(∑[C(n, 2)+2]-1)` -/
def P16684024398305741955.Spec : Prop :=
  ∀ n, P16684024398305741955.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P17671160739140957553

`A116721(n+1)+A000332(n)`
-/

namespace A116722.P17671160739140957553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + A000332 n

end

end A116722.P17671160739140957553

namespace A116722

/-- `A116721(n+1)+A000332(n)` -/
def P17671160739140957553.Spec : Prop :=
  ∀ n, P17671160739140957553.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P2497152090187184691

`A227637(n+1)-A180415(n+1)`
-/

namespace A116722.P2497152090187184691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227637 (n + 1) - A180415 (n + 1)

end

end A116722.P2497152090187184691

namespace A116722

/-- `A227637(n+1)-A180415(n+1)` -/
def P2497152090187184691.Spec : Prop :=
  ∀ n, P2497152090187184691.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P17329142049884992262

`A000127(n+1)+(1-A028310(n))²`
-/

namespace A116722.P17329142049884992262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (1 - A028310 n) ^ 2

end

end A116722.P17329142049884992262

namespace A116722

/-- `A000127(n+1)+(1-A028310(n))²` -/
def P17329142049884992262.Spec : Prop :=
  ∀ n, P17329142049884992262.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P13735511052872155226

`A000127(n+1)+(A060626(n)%(n+1))²`
-/

namespace A116722.P13735511052872155226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + Int.tmod (A060626 n) (n + 1 : ℤ) ^ 2

end

end A116722.P13735511052872155226

namespace A116722

/-- `A000127(n+1)+(A060626(n)%(n+1))²` -/
def P13735511052872155226.Spec : Prop :=
  ∀ n, P13735511052872155226.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P4338202897019508710

`A116721(n+1)+∑[A116731(n+1)-A116721(n+1)]`
-/

namespace A116722.P4338202897019508710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1) - A116721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116722.P4338202897019508710

namespace A116722

/-- `A116721(n+1)+∑[A116731(n+1)-A116721(n+1)]` -/
def P4338202897019508710.Spec : Prop :=
  ∀ n, P4338202897019508710.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P8940999052479941209

`A116721(n+1)+Δ[A000389(n)]`
-/

namespace A116722.P8940999052479941209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + (f1 (n + 1) - f1 n)

end

end A116722.P8940999052479941209

namespace A116722

/-- `A116721(n+1)+Δ[A000389(n)]` -/
def P8940999052479941209.Spec : Prop :=
  ∀ n, P8940999052479941209.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P9090504084406868521

`A139482(n+1)+A000332(n+1)`
-/

namespace A116722.P9090504084406868521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1) + A000332 (n + 1)

end

end A116722.P9090504084406868521

namespace A116722

/-- `A139482(n+1)+A000332(n+1)` -/
def P9090504084406868521.Spec : Prop :=
  ∀ n, P9090504084406868521.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P11037414718720181759

`A006522(n+1)+A010000(n)-n`
-/

namespace A116722.P11037414718720181759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (n + 1) + (A010000 n - (n : ℤ))

end

end A116722.P11037414718720181759

namespace A116722

/-- `A006522(n+1)+A010000(n)-n` -/
def P11037414718720181759.Spec : Prop :=
  ∀ n, P11037414718720181759.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P2584952997393917240

`A116721(n+1)+Δ[Δ[A000579(n)]]`
-/

namespace A116722.P2584952997393917240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + (f1 (n + 1) - f1 n)

end

end A116722.P2584952997393917240

namespace A116722

/-- `A116721(n+1)+Δ[Δ[A000579(n)]]` -/
def P2584952997393917240.Spec : Prop :=
  ∀ n, P2584952997393917240.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P4154508859571400330

`Δ[A221948(n+1)+A000332(n+1)]+1`
-/

namespace A116722.P4154508859571400330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221948 (n + 1) + A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A116722.P4154508859571400330

namespace A116722

/-- `Δ[A221948(n+1)+A000332(n+1)]+1` -/
def P4154508859571400330.Spec : Prop :=
  ∀ n, P4154508859571400330.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P16462233365472468371

`A116721(n+1)+Δ[A002664(n)]-A002664(n)`
-/

namespace A116722.P16462233365472468371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + (f1 (n + 1) - f1 n - A002664 n)

end

end A116722.P16462233365472468371

namespace A116722

/-- `A116721(n+1)+Δ[A002664(n)]-A002664(n)` -/
def P16462233365472468371.Spec : Prop :=
  ∀ n, P16462233365472468371.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P8427899830801683696

`A116721(n+1)+A062781(A051890(n)-(3*n²+n-2*n)/2)`
-/

namespace A116722.P8427899830801683696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + A062781 (SequenceMachineLib.roundAway ((A051890 n : ℚ) - ((3 * n ^ 2 + n : ℤ) - (2 * n : ℤ) : ℚ) / 2)).toNat

end

end A116722.P8427899830801683696

namespace A116722

/-- `A116721(n+1)+A062781(A051890(n)-(3*n²+n-2*n)/2)` -/
def P8427899830801683696.Spec : Prop :=
  ∀ n, P8427899830801683696.a n = A116722 (n + 1)

end A116722

/-! ## A116722.P6468935692051613811

`A112465(A052905(n+1))+n²`
-/

namespace A116722.P6468935692051613811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A052905 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A116722.P6468935692051613811

namespace A116722

/-- `A112465(A052905(n+1))+n²` -/
def P6468935692051613811.Spec : Prop :=
  ∀ n, P6468935692051613811.a n = A116722 (n + 1)

end A116722

/-!
# A116723: We have one bead labeled i for every i=1, 2, ...; a(n) = number of necklaces that can be made using any subset of the first n beads.

The programs for A116723, there is no canonical definition to state claims against.
-/

/-! ## A116723.P17203418408471246757

`∑[(n-1)*a(n-1)+n-C(n, 2)]` with `a(0)=1`
-/

namespace A116723.P17203418408471246757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + (n : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116723.P17203418408471246757

/-! ## A116723.P10359195489879463083

`∑[(a(n-1)+(n-2)/2)*(n-1)]+∑[n]` with `a(0)=1`
-/

namespace A116723.P10359195489879463083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + ((n : ℤ) - 2 : ℚ) / 2) * ((n : ℤ) - 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A116723.P10359195489879463083

/-! ## A116723.P2598051436546424124

`∑[n]+∑[lcm(a(n-1)+n-2, n-1)]/2` with `a(0)=2`
-/

namespace A116723.P2598051436546424124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Int.lcm ((f2 (n - 1) : ℤ) + ((n : ℤ) - 2)) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

end

end A116723.P2598051436546424124

/-! ## A116723.P8869871078911750184

`∑[n]+A002807(n)+1`
-/

namespace A116723.P8869871078911750184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A002807 n + 1)

end

end A116723.P8869871078911750184

/-! ## A116723.P17209571516459047277

`A002104(n)+1-A002807(n)`
-/

namespace A116723.P17209571516459047277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + (1 - A002807 n)

end

end A116723.P17209571516459047277

/-! ## A116723.P15001043658846004681

`∑[A028310(n)]+(A002104(n)-∑[n])/2`
-/

namespace A116723.P15001043658846004681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A002104 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / 2

end

end A116723.P15001043658846004681

/-! ## A116723.P11108069631871304742

`A038722(record[A038722(n+1)])+A002807(n)`
-/

namespace A116723.P11108069631871304742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A002807 n

end

end A116723.P11108069631871304742

/-!
# A116725: Number of permutations of length n which avoid the patterns 132, 3421, 4231.

The programs for A116725, the canonical program `A116725.P4248712080127265687` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116725 has offset 1).

The definition of A116725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116725.P1884352736565672256

`ogf((1-4x+7x^2-6x^3+x^4)/(1-6x+14x^2-16x^3+9x^4-2x^5))`
-/

namespace A116725.P1884352736565672256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 7, -6, 1] [1, -6, 14, -16, 9, -2] n

end

end A116725.P1884352736565672256

namespace A116725

/-- `ogf((1-4x+7x^2-6x^3+x^4)/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P1884352736565672256.Spec : Prop :=
  ∀ n, P1884352736565672256.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P4248712080127265687

`(3*2^(n+1)+2*(n+1)-3*(n+1)²+(n+1)^3)/6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116725

/-- `(3*2^(n+1)+2*(n+1)-3*(n+1)²+(n+1)^3)/6` -/
def P4248712080127265687.Spec : Prop :=
  ∀ n, P4248712080127265687.a n = (A116725 (n + 1) : ℚ)

end A116725

/-! ## A116725.P5605274865049694745

`∑[C(n, 2)]+2^n`
-/

namespace A116725.P5605274865049694745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A116725.P5605274865049694745

namespace A116725

/-- `∑[C(n, 2)]+2^n` -/
def P5605274865049694745.Spec : Prop :=
  ∀ n, (P5605274865049694745.a n : ℤ) = A116725 (n + 1)

end A116725

/-! ## A116725.P5970868158279768541

`or(2^n, ∑[C(n, 2)])`
-/

namespace A116725.P5970868158279768541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116725.P5970868158279768541

namespace A116725

/-- `or(2^n, ∑[C(n, 2)])` -/
def P5970868158279768541.Spec : Prop :=
  ∀ n, (P5970868158279768541.a n : ℤ) = A116725 (n + 1)

end A116725

/-! ## A116725.P5738207606709355574

`xor(2^n, ∑[C(n, 2)])`
-/

namespace A116725.P5738207606709355574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116725.P5738207606709355574

namespace A116725

/-- `xor(2^n, ∑[C(n, 2)])` -/
def P5738207606709355574.Spec : Prop :=
  ∀ n, (P5738207606709355574.a n : ℤ) = A116725 (n + 1)

end A116725

/-! ## A116725.P17157563741032003144

`C(n+1, 3)+2^n`
-/

namespace A116725.P17157563741032003144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + 2 ^ n

end

end A116725.P17157563741032003144

namespace A116725

/-- `C(n+1, 3)+2^n` -/
def P17157563741032003144.Spec : Prop :=
  ∀ n, (P17157563741032003144.a n : ℤ) = A116725 (n + 1)

end A116725

/-! ## A116725.P12703999974026958778

`∑[A011782(n)+C(n, 2)]`
-/

namespace A116725.P12703999974026958778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116725.P12703999974026958778

namespace A116725

/-- `∑[A011782(n)+C(n, 2)]` -/
def P12703999974026958778.Spec : Prop :=
  ∀ n, P12703999974026958778.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P10876381505655320875

`xor(∑[C(n, 2)], A000079(n))`
-/

namespace A116725.P10876381505655320875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000079 n)

end

end A116725.P10876381505655320875

namespace A116725

/-- `xor(∑[C(n, 2)], A000079(n))` -/
def P10876381505655320875.Spec : Prop :=
  ∀ n, P10876381505655320875.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P18283883195146308637

`A000295(n)+A000125(n)`
-/

namespace A116725.P18283883195146308637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + A000125 n

end

end A116725.P18283883195146308637

namespace A116725

/-- `A000295(n)+A000125(n)` -/
def P18283883195146308637.Spec : Prop :=
  ∀ n, P18283883195146308637.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P8949297212460321640

`A004006(n)+A000325(n)`
-/

namespace A116725.P8949297212460321640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + A000325 n

end

end A116725.P8949297212460321640

namespace A116725

/-- `A004006(n)+A000325(n)` -/
def P8949297212460321640.Spec : Prop :=
  ∀ n, P8949297212460321640.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P1503238519040934067

`A014833(n)+A000292(n)`
-/

namespace A116725.P1503238519040934067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 n + A000292 n

end

end A116725.P1503238519040934067

namespace A116725

/-- `A014833(n)+A000292(n)` -/
def P1503238519040934067.Spec : Prop :=
  ∀ n, P1503238519040934067.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P4375082572652306788

`A014844(n)+A005581(n)`
-/

namespace A116725.P4375082572652306788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014844 n + A005581 n

end

end A116725.P4375082572652306788

namespace A116725

/-- `A014844(n)+A005581(n)` -/
def P4375082572652306788.Spec : Prop :=
  ∀ n, P4375082572652306788.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P14997830072003531398

`A024013(n)+A004126(n)`
-/

namespace A116725.P14997830072003531398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024013 n + A004126 n

end

end A116725.P14997830072003531398

namespace A116725

/-- `A024013(n)+A004126(n)` -/
def P14997830072003531398.Spec : Prop :=
  ∀ n, P14997830072003531398.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P12692904001776236722

`A097339(n)-A004068(n)`
-/

namespace A116725.P12692904001776236722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097339 n - A004068 n

end

end A116725.P12692904001776236722

namespace A116725

/-- `A097339(n)-A004068(n)` -/
def P12692904001776236722.Spec : Prop :=
  ∀ n, P12692904001776236722.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P14567854030348979669

`∑[A161680(n)+A011782(n)]`
-/

namespace A116725.P14567854030348979669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116725.P14567854030348979669

namespace A116725

/-- `∑[A161680(n)+A011782(n)]` -/
def P14567854030348979669.Spec : Prop :=
  ∀ n, P14567854030348979669.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P6193704135067754838

`A116731(n+1)+A002663(n)`
-/

namespace A116725.P6193704135067754838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1) + A002663 n

end

end A116725.P6193704135067754838

namespace A116725

/-- `A116731(n+1)+A002663(n)` -/
def P6193704135067754838.Spec : Prop :=
  ∀ n, P6193704135067754838.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P12854831997987166700

`A180415(n+1)+A070313(n)`
-/

namespace A116725.P12854831997987166700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A070313 n

end

end A116725.P12854831997987166700

namespace A116725

/-- `A180415(n+1)+A070313(n)` -/
def P12854831997987166700.Spec : Prop :=
  ∀ n, P12854831997987166700.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P8747755352676228614

`A324172(n)+A116721(n+1)`
-/

namespace A116725.P8747755352676228614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324172 n + A116721 (n + 1)

end

end A116725.P8747755352676228614

namespace A116725

/-- `A324172(n)+A116721(n+1)` -/
def P8747755352676228614.Spec : Prop :=
  ∀ n, P8747755352676228614.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P5875546169768929421

`A027927(n+2)+A002664(n)`
-/

namespace A116725.P5875546169768929421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + A002664 n

end

end A116725.P5875546169768929421

namespace A116725

/-- `A027927(n+2)+A002664(n)` -/
def P5875546169768929421.Spec : Prop :=
  ∀ n, P5875546169768929421.a n = A116725 (n + 1)

end A116725

/-! ## A116725.P15213760642034011532

`A050407(n+2)+A000225(n)`
-/

namespace A116725.P15213760642034011532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (n + 2) + A000225 n

end

end A116725.P15213760642034011532

namespace A116725

/-- `A050407(n+2)+A000225(n)` -/
def P15213760642034011532.Spec : Prop :=
  ∀ n, P15213760642034011532.a n = A116725 (n + 1)

end A116725

/-!
# A116726: Number of permutations of length n which avoid the patterns 213, 1234, 2431.

The programs for A116726, the canonical program `A116726.P17140896350686965337` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116726 has offset 1).

The definition of A116726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116726.P17140896350686965337

`ogf((1-x+x^3)/(1-3x+x^2+2x^3+x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116726

/-- `ogf((1-x+x^3)/(1-3x+x^2+2x^3+x^4-x^5-x^6))` -/
def P17140896350686965337.Spec : Prop :=
  ∀ n, P17140896350686965337.a n = A116726 (n + 1)

theorem P17140896350686965337.correct : P17140896350686965337.Spec := by
  intro n
  simp only [A116726, Nat.add_sub_cancel]

end A116726

/-! ## A116726.P1660123306156606521

`∑[A202012(n)+∑[A000100(n)]]`
-/

namespace A116726.P1660123306156606521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116726.P1660123306156606521

namespace A116726

/-- `∑[A202012(n)+∑[A000100(n)]]` -/
def P1660123306156606521.Spec : Prop :=
  ∀ n, P1660123306156606521.a n = A116726 (n + 1)

end A116726

/-! ## A116726.P1226145287996328974

`A000100(n+3)+∑[A000100(n)]`
-/

namespace A116726.P1226145287996328974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116726.P1226145287996328974

namespace A116726

/-- `A000100(n+3)+∑[A000100(n)]` -/
def P1226145287996328974.Spec : Prop :=
  ∀ n, P1226145287996328974.a n = A116726 (n + 1)

end A116726

/-! ## A116726.P3055989289250681463

`∑[A007486(n+2)-A020695(n)]`
-/

namespace A116726.P3055989289250681463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 2) - A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116726.P3055989289250681463

namespace A116726

/-- `∑[A007486(n+2)-A020695(n)]` -/
def P3055989289250681463.Spec : Prop :=
  ∀ n, P3055989289250681463.a n = A116726 (n + 1)

end A116726

/-! ## A116726.P8743597570097422019

`∑[A007486(n+2)-A000045(n+3)]`
-/

namespace A116726.P8743597570097422019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 2) - A000045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116726.P8743597570097422019

namespace A116726

/-- `∑[A007486(n+2)-A000045(n+3)]` -/
def P8743597570097422019.Spec : Prop :=
  ∀ n, P8743597570097422019.a n = A116726 (n + 1)

end A116726

/-! ## A116726.P10771385431844057107

`A095681(n)-(A000100(n+1)+A000100(n+2))`
-/

namespace A116726.P10771385431844057107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095681 n - (A000100 (n + 1) + A000100 (n + 2))

end

end A116726.P10771385431844057107

namespace A116726

/-- `A095681(n)-(A000100(n+1)+A000100(n+2))` -/
def P10771385431844057107.Spec : Prop :=
  ∀ n, P10771385431844057107.a n = A116726 (n + 1)

end A116726

/-!
# A116727: Number of permutations of length n which avoid the patterns 321, 2134, 3412.

The programs for A116727, the canonical program `A116727.P13325847357395282052` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116727 has offset 1).

The definition of A116727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116727.P13325847357395282052

`ogf((1+2x^2+4x^3+3x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116727

/-- `ogf((1+2x^2+4x^3+3x^4)/(1-2x+x^2))` -/
def P13325847357395282052.Spec : Prop :=
  ∀ n, P13325847357395282052.a n = A116727 (n + 1)

theorem P13325847357395282052.correct : P13325847357395282052.Spec := by
  intro n
  simp only [A116727, Nat.add_sub_cancel]

end A116727

/-!
# A116728: Number of permutations of length n which avoid the patterns 321, 1243, 2134.

The programs for A116728, the canonical program `A116728.P8573362658644240194` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116728 has offset 1).

The definition of A116728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116728.P8573362658644240194

`ogf((1+2x^2+4x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116728

/-- `ogf((1+2x^2+4x^3)/(1-2x+x^2))` -/
def P8573362658644240194.Spec : Prop :=
  ∀ n, P8573362658644240194.a n = A116728 (n + 1)

theorem P8573362658644240194.correct : P8573362658644240194.Spec := by
  intro n
  simp only [A116728, Nat.add_sub_cancel]

end A116728

/-!
# A116730: Number of permutations of length n which avoid the patterns 321, 1342, 1423.

The programs for A116730, the canonical program `A116730.P13133423435698078167` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116730 has offset 1).

The definition of A116730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116730.P4215575337172011547

`ogf((1-x+x^2+2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A116730.P4215575337172011547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 2] [1, -3, 2, 1, -1] n

end

end A116730.P4215575337172011547

namespace A116730

/-- `ogf((1-x+x^2+2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P4215575337172011547.Spec : Prop :=
  ∀ n, P4215575337172011547.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P2970255965035986234

`2*A000045(n+4)-3*(n+1)-2`
-/

namespace A116730.P2970255965035986234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 4) - (3 * (n + 1) : ℤ) - 2

end

end A116730.P2970255965035986234

namespace A116730

/-- `2*A000045(n+4)-3*(n+1)-2` -/
def P2970255965035986234.Spec : Prop :=
  ∀ n, P2970255965035986234.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P13133423435698078167

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116730

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P13133423435698078167.Spec : Prop :=
  ∀ n, P13133423435698078167.a n = A116730 (n + 1)

theorem P13133423435698078167.correct : P13133423435698078167.Spec := by
  intro n
  simp only [A116730, Nat.add_sub_cancel]

end A116730

/-! ## A116730.P2813449055085010860

`∑[ogf((1-x+x^2+2x^3)/(1-2x+x^3))]`
-/

namespace A116730.P2813449055085010860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 2] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116730.P2813449055085010860

namespace A116730

/-- `∑[ogf((1-x+x^2+2x^3)/(1-2x+x^3))]` -/
def P2813449055085010860.Spec : Prop :=
  ∀ n, P2813449055085010860.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P15948506840309728614

`∑[a(n-1)+a(n-2)+3]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A116730.P15948506840309728614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116730.P15948506840309728614

namespace A116730

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P15948506840309728614.Spec : Prop :=
  ∀ n, (P15948506840309728614.a n : ℤ) = A116730 (n + 1)

end A116730

/-! ## A116730.P1859280118974836838

`2*a(n-1)+3-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116730.P1859280118974836838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) + (3 - a (n - 3))

end

end A116730.P1859280118974836838

namespace A116730

/-- `2*a(n-1)+3-a(n-3)` -/
def P1859280118974836838.Spec : Prop :=
  ∀ n, P1859280118974836838.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P1142936856472298170

`2*a(n-1)-(a(n-3)-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116730.P1142936856472298170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 3)

end

end A116730.P1142936856472298170

namespace A116730

/-- `2*a(n-1)-(a(n-3)-3)` -/
def P1142936856472298170.Spec : Prop :=
  ∀ n, P1142936856472298170.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P17552569036420037125

`2-∑[a(n-1)-(3-a(n-2))]` with `a(0)=1, a(1)=-1`
-/

namespace A116730.P17552569036420037125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116730.P17552569036420037125

namespace A116730

/-- `2-∑[a(n-1)-(3-a(n-2))]` -/
def P17552569036420037125.Spec : Prop :=
  ∀ n, P17552569036420037125.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P17299471179768822106

`a(n-1)+a(n-1)+3-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116730.P17299471179768822106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - a (n - 3)))

end

end A116730.P17299471179768822106

namespace A116730

/-- `a(n-1)+a(n-1)+3-a(n-3)` -/
def P17299471179768822106.Spec : Prop :=
  ∀ n, P17299471179768822106.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P7444996810034833746

`3-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116730.P7444996810034833746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A116730.P7444996810034833746

namespace A116730

/-- `3-(a(n-3)-a(n-1)-a(n-1))` -/
def P7444996810034833746.Spec : Prop :=
  ∀ n, P7444996810034833746.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P11826875151276681514

`A192960(n)-n`
-/

namespace A116730.P11826875151276681514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n - (n : ℤ)

end

end A116730.P11826875151276681514

namespace A116730

/-- `A192960(n)-n` -/
def P11826875151276681514.Spec : Prop :=
  ∀ n, P11826875151276681514.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P14707007341668491103

`A192748(n+1)+1`
-/

namespace A116730.P14707007341668491103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 1) + 1

end

end A116730.P14707007341668491103

namespace A116730

/-- `A192748(n+1)+1` -/
def P14707007341668491103.Spec : Prop :=
  ∀ n, P14707007341668491103.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P916544164593932582

`A064551(n+1)+n²`
-/

namespace A116730.P916544164593932582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064551 (n + 1) + (n ^ 2 : ℤ)

end

end A116730.P916544164593932582

namespace A116730

/-- `A064551(n+1)+n²` -/
def P916544164593932582.Spec : Prop :=
  ∀ n, P916544164593932582.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P16823359159748060723

`2*A001924(n)+1-n`
-/

namespace A116730.P16823359159748060723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001924 n + 1 - (n : ℤ)

end

end A116730.P16823359159748060723

namespace A116730

/-- `2*A001924(n)+1-n` -/
def P16823359159748060723.Spec : Prop :=
  ∀ n, P16823359159748060723.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P11284627462362065895

`A192760(n+1)-2*n`
-/

namespace A116730.P11284627462362065895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 (n + 1) - (2 * n : ℤ)

end

end A116730.P11284627462362065895

namespace A116730

/-- `A192760(n+1)-2*n` -/
def P11284627462362065895.Spec : Prop :=
  ∀ n, P11284627462362065895.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P3193627449348542515

`A166863(n+1)-3*n`
-/

namespace A116730.P3193627449348542515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166863 (n + 1) - (3 * n : ℤ)

end

end A116730.P3193627449348542515

namespace A116730

/-- `A166863(n+1)-3*n` -/
def P3193627449348542515.Spec : Prop :=
  ∀ n, P3193627449348542515.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P4998494591097978387

`∑[abs(2-A001595(n+1))]`
-/

namespace A116730.P4998494591097978387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001595 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116730.P4998494591097978387

namespace A116730

/-- `∑[abs(2-A001595(n+1))]` -/
def P4998494591097978387.Spec : Prop :=
  ∀ n, P4998494591097978387.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P14469748205695180189

`A104161(n+2)-Δ[n²]`
-/

namespace A116730.P14469748205695180189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A116730.P14469748205695180189

namespace A116730

/-- `A104161(n+2)-Δ[n²]` -/
def P14469748205695180189.Spec : Prop :=
  ∀ n, P14469748205695180189.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P6839593972032326608

`∑[A019274(n+2)]-(n-1)`
-/

namespace A116730.P6839593972032326608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A116730.P6839593972032326608

namespace A116730

/-- `∑[A019274(n+2)]-(n-1)` -/
def P6839593972032326608.Spec : Prop :=
  ∀ n, P6839593972032326608.a n = A116730 (n + 1)

end A116730

/-! ## A116730.P11938702326407864937

`∑[abs(1-∑[2*A000045(n)])]`
-/

namespace A116730.P11938702326407864937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116730.P11938702326407864937

namespace A116730

/-- `∑[abs(1-∑[2*A000045(n)])]` -/
def P11938702326407864937.Spec : Prop :=
  ∀ n, P11938702326407864937.a n = A116730 (n + 1)

end A116730

/-!
# A116731: Number of permutations of length n which avoid the patterns 321, 2143, 3124; or avoid the patterns 132, 2314, 4312, etc.

The programs for A116731, the canonical program `A116731.P1311479631612180233` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116731 has offset 1).

The definition of A116731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116731.P6689436507677059241

`ogf((1-2x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A116731.P6689436507677059241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -4, 6, -4, 1] n

end

end A116731.P6689436507677059241

namespace A116731

/-- `ogf((1-2x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6689436507677059241.Spec : Prop :=
  ∀ n, P6689436507677059241.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P13659565916849765695

`((n+1)^3-3*(n+1)²+5*(n+1))/3`
-/

namespace A116731.P13659565916849765695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) : ℚ) / 3

end

end A116731.P13659565916849765695

namespace A116731

/-- `((n+1)^3-3*(n+1)²+5*(n+1))/3` -/
def P13659565916849765695.Spec : Prop :=
  ∀ n, P13659565916849765695.a n = (A116731 (n + 1) : ℚ)

end A116731

/-! ## A116731.P1311479631612180233

`A006527(n)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116731

/-- `A006527(n)+1` -/
def P1311479631612180233.Spec : Prop :=
  ∀ n, P1311479631612180233.a n = A116731 (n + 1)

theorem P1311479631612180233.correct : P1311479631612180233.Spec := by
  intro n
  simp only [A116731, Nat.add_sub_cancel]

end A116731

/-! ## A116731.P3572684017952859587

`∑[or(1, n²-n)]`
-/

namespace A116731.P3572684017952859587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116731.P3572684017952859587

namespace A116731

/-- `∑[or(1, n²-n)]` -/
def P3572684017952859587.Spec : Prop :=
  ∀ n, P3572684017952859587.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P15228241984383800597

`∑[xor(1, n²-n)]`
-/

namespace A116731.P15228241984383800597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116731.P15228241984383800597

namespace A116731

/-- `∑[xor(1, n²-n)]` -/
def P15228241984383800597.Spec : Prop :=
  ∀ n, P15228241984383800597.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P10101869397253196520

`abs(∑[cot(Δ[acot(n-1)])])`
-/

namespace A116731.P10101869397253196520
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A116731.P10101869397253196520

namespace A116731

/-- `abs(∑[cot(Δ[acot(n-1)])])` -/
def P10101869397253196520.Spec : Prop :=
  ∀ n, P10101869397253196520.a n = (A116731 (n + 1) : ℝ)

end A116731

/-! ## A116731.P7591465242769377628

`-∑[cot(Δ[acot(n-1)])]`
-/

namespace A116731.P7591465242769377628
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116731.P7591465242769377628

namespace A116731

/-- `-∑[cot(Δ[acot(n-1)])]` -/
def P7591465242769377628.Spec : Prop :=
  ∀ n, P7591465242769377628.a n = (A116731 (n + 1) : ℝ)

end A116731

/-! ## A116731.P5701761398045185248

`1-(C(n, 2)-∑[n²])`
-/

namespace A116731.P5701761398045185248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose n 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A116731.P5701761398045185248

namespace A116731

/-- `1-(C(n, 2)-∑[n²])` -/
def P5701761398045185248.Spec : Prop :=
  ∀ n, P5701761398045185248.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P6929361516907646419

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=0`
-/

namespace A116731.P6929361516907646419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116731.P6929361516907646419

namespace A116731

/-- `∑[∑[a(n-1)+2]]` -/
def P6929361516907646419.Spec : Prop :=
  ∀ n, (P6929361516907646419.a n : ℤ) = A116731 (n + 1)

end A116731

/-! ## A116731.P13086164968010403655

`∑[2*C(n, 2)]+n+1`
-/

namespace A116731.P13086164968010403655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A116731.P13086164968010403655

namespace A116731

/-- `∑[2*C(n, 2)]+n+1` -/
def P13086164968010403655.Spec : Prop :=
  ∀ n, (P13086164968010403655.a n : ℤ) = A116731 (n + 1)

end A116731

/-! ## A116731.P12799675506731643524

`∑[lcm(n, 1-n)]+n+1`
-/

namespace A116731.P12799675506731643524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A116731.P12799675506731643524

namespace A116731

/-- `∑[lcm(n, 1-n)]+n+1` -/
def P12799675506731643524.Spec : Prop :=
  ∀ n, (P12799675506731643524.a n : ℤ) = A116731 (n + 1)

end A116731

/-! ## A116731.P2113270370470402769

`or(1, ∑[n*(n-1)])+n`
-/

namespace A116731.P2113270370470402769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A116731.P2113270370470402769

namespace A116731

/-- `or(1, ∑[n*(n-1)])+n` -/
def P2113270370470402769.Spec : Prop :=
  ∀ n, P2113270370470402769.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P6099222629391451474

`xor(1, ∑[n*(n-1)])+n`
-/

namespace A116731.P6099222629391451474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A116731.P6099222629391451474

namespace A116731

/-- `xor(1, ∑[n*(n-1)])+n` -/
def P6099222629391451474.Spec : Prop :=
  ∀ n, P6099222629391451474.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P17165668411985052143

`∑[∑[ogf((1-2x+3x^2)/(1-2x+x^2))]]`
-/

namespace A116731.P17165668411985052143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116731.P17165668411985052143

namespace A116731

/-- `∑[∑[ogf((1-2x+3x^2)/(1-2x+x^2))]]` -/
def P17165668411985052143.Spec : Prop :=
  ∀ n, P17165668411985052143.a n = A116731 (n + 1)

end A116731

/-! ## A116731.P13344760265483859623

`2*C(n+1, 3)+1+n`
-/

namespace A116731.P13344760265483859623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) 3 + 1 + n

end

end A116731.P13344760265483859623

namespace A116731

/-- `2*C(n+1, 3)+1+n` -/
def P13344760265483859623.Spec : Prop :=
  ∀ n, (P13344760265483859623.a n : ℤ) = A116731 (n + 1)

end A116731

/-!
# A116732: a(n) = a(n-1) + a(n-2) + a(n-3) - a(n-4) with a(0) = a(1) = a(2) = 0, a(3) = 1.

The programs for A116732, the canonical program `A116732.P865166155756171053` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116732 has offset 0).

The definition of A116732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)-a(n-4)` (program `A116732.P865166155756171053`, by `A116732.P865166155756171053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116732.P12331002943097019676

`ogf(x^3/(1-x-x^2-x^3+x^4))`
-/

namespace A116732.P12331002943097019676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -1, -1, -1, 1] n

end

end A116732.P12331002943097019676

namespace A116732

/-- `ogf(x^3/(1-x-x^2-x^3+x^4))` -/
def P12331002943097019676.Spec : Prop :=
  ∀ n, P12331002943097019676.a n = A116732 n

end A116732

/-! ## A116732.P865166155756171053

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116732

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P865166155756171053.Spec : Prop :=
  ∀ n, P865166155756171053.a n = A116732 n

theorem P865166155756171053.correct : P865166155756171053.Spec := by
  intro n
  simp only [A116732]

end A116732

/-! ## A116732.P4350932599418722171

`a(n-1)-(a(n-4)-a(n-2)-a(n-3))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A116732.P4350932599418722171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2) - a (n - 3))

end

end A116732.P4350932599418722171

namespace A116732

/-- `a(n-1)-(a(n-4)-a(n-2)-a(n-3))` -/
def P4350932599418722171.Spec : Prop :=
  ∀ n, P4350932599418722171.a n = A116732 n

end A116732

/-! ## A116732.P2439424004487472978

`Δ[A239909(n-2%(n+1)+1)]`
-/

namespace A116732.P2439424004487472978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116732.P2439424004487472978

namespace A116732

/-- `Δ[A239909(n-2%(n+1)+1)]` -/
def P2439424004487472978.Spec : Prop :=
  ∀ n, P2439424004487472978.a n = A116732 n

end A116732

/-! ## A116732.P17990646215019392406

`A135431(n)-A052527(n+1)`
-/

namespace A116732.P17990646215019392406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 n - A052527 (n + 1)

end

end A116732.P17990646215019392406

namespace A116732

/-- `A135431(n)-A052527(n+1)` -/
def P17990646215019392406.Spec : Prop :=
  ∀ n, P17990646215019392406.a n = A116732 n

end A116732

/-! ## A116732.P10349576787222488538

`∑[A052527(n)]-A239909(n+1)`
-/

namespace A116732.P10349576787222488538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239909 (n + 1)

end

end A116732.P10349576787222488538

namespace A116732

/-- `∑[A052527(n)]-A239909(n+1)` -/
def P10349576787222488538.Spec : Prop :=
  ∀ n, P10349576787222488538.a n = A116732 n

end A116732

/-! ## A116732.P14281929620728419549

`A135431(n+1)-A239909(n+2)`
-/

namespace A116732.P14281929620728419549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 (n + 1) - A239909 (n + 2)

end

end A116732.P14281929620728419549

namespace A116732

/-- `A135431(n+1)-A239909(n+2)` -/
def P14281929620728419549.Spec : Prop :=
  ∀ n, P14281929620728419549.a n = A116732 n

end A116732

/-! ## A116732.P4120635336883124453

`A239909(n+2)-(A239909(n+1)+A116201(n))`
-/

namespace A116732.P4120635336883124453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2) - (A239909 (n + 1) + A116201 n)

end

end A116732.P4120635336883124453

namespace A116732

/-- `A239909(n+2)-(A239909(n+1)+A116201(n))` -/
def P4120635336883124453.Spec : Prop :=
  ∀ n, P4120635336883124453.a n = A116732 n

end A116732

/-! ## A116732.P14331400525173331080

`Δ[A239909(n+2)]-A239909(n+1)`
-/

namespace A116732.P14331400525173331080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A239909 (n + 1)

end

end A116732.P14331400525173331080

namespace A116732

/-- `Δ[A239909(n+2)]-A239909(n+1)` -/
def P14331400525173331080.Spec : Prop :=
  ∀ n, P14331400525173331080.a n = A116732 n

end A116732

/-!
# A116733: Number of permutations of length n which avoid the patterns 321, 1324, 2341.

The programs for A116733, the canonical program `A116733.P7789248603099411564` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116733 has offset 1).

The definition of A116733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116733.P7789248603099411564

`ogf((1-x+2x^2+2x^3+x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116733

/-- `ogf((1-x+2x^2+2x^3+x^4)/(1-3x+3x^2-x^3))` -/
def P7789248603099411564.Spec : Prop :=
  ∀ n, P7789248603099411564.a n = A116733 (n + 1)

theorem P7789248603099411564.correct : P7789248603099411564.Spec := by
  intro n
  simp only [A116733, Nat.add_sub_cancel]

end A116733

/-! ## A116733.P4587412887660394100

`∑[a(n-1)+5]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A116733.P4587412887660394100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 7] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116733.P4587412887660394100

namespace A116733

/-- `∑[a(n-1)+5]` -/
def P4587412887660394100.Spec : Prop :=
  ∀ n, (P4587412887660394100.a n : ℤ) = A116733 (n + 1)

end A116733

/-! ## A116733.P5956422589863448146

`5*n+a(n-1)-8` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116733.P5956422589863448146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (5 * n : ℤ) + (a (n - 1) - 8)

end

end A116733.P5956422589863448146

namespace A116733

/-- `5*n+a(n-1)-8` -/
def P5956422589863448146.Spec : Prop :=
  ∀ n, P5956422589863448146.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P6569827146620304639

`5*n-(8-a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A116733.P6569827146620304639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (5 * n : ℤ) - (8 - a (n - 1))

end

end A116733.P6569827146620304639

namespace A116733

/-- `5*n-(8-a(n-1))` -/
def P6569827146620304639.Spec : Prop :=
  ∀ n, P6569827146620304639.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P17742232498117684622

`A116668(n)-record[A019426(n)]`
-/

namespace A116733.P17742232498117684622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116733.P17742232498117684622

namespace A116733

/-- `A116668(n)-record[A019426(n)]` -/
def P17742232498117684622.Spec : Prop :=
  ∀ n, P17742232498117684622.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P5836996129825681870

`A133263(n)+(n-2)*A004275(n)`
-/

namespace A116733.P5836996129825681870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + ((n : ℤ) - 2) * A004275 n

end

end A116733.P5836996129825681870

namespace A116733

/-- `A133263(n)+(n-2)*A004275(n)` -/
def P5836996129825681870.Spec : Prop :=
  ∀ n, P5836996129825681870.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P9850458527968913448

`A139482(n+1)+(n-A004275(n))²`
-/

namespace A116733.P9850458527968913448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1) + ((n : ℤ) - A004275 n) ^ 2

end

end A116733.P9850458527968913448

namespace A116733

/-- `A139482(n+1)+(n-A004275(n))²` -/
def P9850458527968913448.Spec : Prop :=
  ∀ n, P9850458527968913448.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P11889104455831451824

`A016028(n+1)+(n-1)*A004275(n)`
-/

namespace A116733.P11889104455831451824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (n + 1) + ((n : ℤ) - 1) * A004275 n

end

end A116733.P11889104455831451824

namespace A116733

/-- `A016028(n+1)+(n-1)*A004275(n)` -/
def P11889104455831451824.Spec : Prop :=
  ∀ n, P11889104455831451824.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P1999224375033955188

`A022856(2*(n+1))+A022856(n+2)-A065033(2*n)`
-/

namespace A116733.P1999224375033955188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (2 * (n + 1)) + (A022856 (n + 2) - A065033 (2 * n))

end

end A116733.P1999224375033955188

namespace A116733

/-- `A022856(2*(n+1))+A022856(n+2)-A065033(2*n)` -/
def P1999224375033955188.Spec : Prop :=
  ∀ n, P1999224375033955188.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P91177548429893216

`A022856(2*(n+1))+A022856(n+2)-A123108(2*n)`
-/

namespace A116733.P91177548429893216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (2 * (n + 1)) + (A022856 (n + 2) - A123108 (2 * n))

end

end A116733.P91177548429893216

namespace A116733

/-- `A022856(2*(n+1))+A022856(n+2)-A123108(2*n)` -/
def P91177548429893216.Spec : Prop :=
  ∀ n, P91177548429893216.a n = A116733 (n + 1)

end A116733

/-! ## A116733.P3974465061741588065

`∑[A265359((1-n)²)+n]`
-/

namespace A116733.P3974465061741588065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 ((1 - (n : ℤ)) ^ 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116733.P3974465061741588065

namespace A116733

/-- `∑[A265359((1-n)²)+n]` -/
def P3974465061741588065.Spec : Prop :=
  ∀ n, P3974465061741588065.a n = A116733 (n + 1)

end A116733

/-!
# A116734: Number of permutations of length n which avoid the patterns 231, 1432, 4123.

The programs for A116734, the canonical program `A116734.P17958700811853489885` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116734 has offset 1).

The definition of A116734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116734.P17958700811853489885

`a(n-1)+a(n-2)+a(n-3)+2*(n+1)-4` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116734

/-- `a(n-1)+a(n-2)+a(n-3)+2*(n+1)-4` -/
def P17958700811853489885.Spec : Prop :=
  ∀ n, P17958700811853489885.a n = A116734 (n + 1)

theorem P17958700811853489885.correct : P17958700811853489885.Spec := by
  intro n
  simp only [A116734, Nat.add_sub_cancel]

end A116734

/-! ## A116734.P1271136524794157093

`A000213(n+3)-(n+1)-1`
-/

namespace A116734.P1271136524794157093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 3) - (n + 1 : ℤ) - 1

end

end A116734.P1271136524794157093

namespace A116734

/-- `A000213(n+3)-(n+1)-1` -/
def P1271136524794157093.Spec : Prop :=
  ∀ n, P1271136524794157093.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P15520264518484275204

`∑[ogf((1-x+x^2+x^3)/(1-2x+x^4))]`
-/

namespace A116734.P15520264518484275204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -2, 0, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116734.P15520264518484275204

namespace A116734

/-- `∑[ogf((1-x+x^2+x^3)/(1-2x+x^4))]` -/
def P15520264518484275204.Spec : Prop :=
  ∀ n, P15520264518484275204.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P7152192316170026315

`∑[a(n-1)+a(n-2)+a(n-3)]-n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A116734.P7152192316170026315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A116734.P7152192316170026315

namespace A116734

/-- `∑[a(n-1)+a(n-2)+a(n-3)]-n` -/
def P7152192316170026315.Spec : Prop :=
  ∀ n, P7152192316170026315.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P12058314820356774160

`∑[A135491(n)]-n`
-/

namespace A116734.P12058314820356774160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A116734.P12058314820356774160

namespace A116734

/-- `∑[A135491(n)]-n` -/
def P12058314820356774160.Spec : Prop :=
  ∀ n, P12058314820356774160.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P9097712198171959478

`∑[Δ[A288465(n)]-1]`
-/

namespace A116734.P9097712198171959478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116734.P9097712198171959478

namespace A116734

/-- `∑[Δ[A288465(n)]-1]` -/
def P9097712198171959478.Spec : Prop :=
  ∀ n, P9097712198171959478.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P4003593284141525338

`∑[2*A089068(n)+1]`
-/

namespace A116734.P4003593284141525338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089068 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116734.P4003593284141525338

namespace A116734

/-- `∑[2*A089068(n)+1]` -/
def P4003593284141525338.Spec : Prop :=
  ∀ n, P4003593284141525338.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P499621393743148979

`record[A000213(n+1)-n]`
-/

namespace A116734.P499621393743148979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116734.P499621393743148979

namespace A116734

/-- `record[A000213(n+1)-n]` -/
def P499621393743148979.Spec : Prop :=
  ∀ n, P499621393743148979.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P13696368827736710009

`A054668(n+2)-(n+1)`
-/

namespace A116734.P13696368827736710009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 2) - (n + 1 : ℤ)

end

end A116734.P13696368827736710009

namespace A116734

/-- `A054668(n+2)-(n+1)` -/
def P13696368827736710009.Spec : Prop :=
  ∀ n, P13696368827736710009.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P3919583525763720435

`A288465(n+1)-(n+3)`
-/

namespace A116734.P3919583525763720435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 (n + 1) - (n + 3 : ℤ)

end

end A116734.P3919583525763720435

namespace A116734

/-- `A288465(n+1)-(n+3)` -/
def P3919583525763720435.Spec : Prop :=
  ∀ n, P3919583525763720435.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P1378969792565329691

`A000213(n+3)-(n+2)`
-/

namespace A116734.P1378969792565329691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 3) - (n + 2 : ℤ)

end

end A116734.P1378969792565329691

namespace A116734

/-- `A000213(n+3)-(n+2)` -/
def P1378969792565329691.Spec : Prop :=
  ∀ n, P1378969792565329691.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P3160507705713521670

`2*A008937(n+1)-(n+1)`
-/

namespace A116734.P3160507705713521670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008937 (n + 1) - (n + 1 : ℤ)

end

end A116734.P3160507705713521670

namespace A116734

/-- `2*A008937(n+1)-(n+1)` -/
def P3160507705713521670.Spec : Prop :=
  ∀ n, P3160507705713521670.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P14906449019260524508

`2*A192804(n+3)-(n+3)`
-/

namespace A116734.P14906449019260524508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192804 (n + 3) - (n + 3 : ℤ)

end

end A116734.P14906449019260524508

namespace A116734

/-- `2*A192804(n+3)-(n+3)` -/
def P14906449019260524508.Spec : Prop :=
  ∀ n, P14906449019260524508.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P13481175977500760970

`∑[A230216(n+2)/4]-n`
-/

namespace A116734.P13481175977500760970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230216 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A116734.P13481175977500760970

namespace A116734

/-- `∑[A230216(n+2)/4]-n` -/
def P13481175977500760970.Spec : Prop :=
  ∀ n, P13481175977500760970.a n = (A116734 (n + 1) : ℚ)

end A116734

/-! ## A116734.P8387235275507590781

`A062544(n+1)+A062544(n+1)-A027053(n+2)`
-/

namespace A116734.P8387235275507590781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1) + (A062544 (n + 1) - A027053 (n + 2))

end

end A116734.P8387235275507590781

namespace A116734

/-- `A062544(n+1)+A062544(n+1)-A027053(n+2)` -/
def P8387235275507590781.Spec : Prop :=
  ∀ n, P8387235275507590781.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P12239916797055284797

`Δ[A027053(n+2)]-(n+2)`
-/

namespace A116734.P12239916797055284797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A116734.P12239916797055284797

namespace A116734

/-- `Δ[A027053(n+2)]-(n+2)` -/
def P12239916797055284797.Spec : Prop :=
  ∀ n, P12239916797055284797.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P16952165783896623197

`record[Δ[A213816(2*(n+1))]-n]`
-/

namespace A116734.P16952165783896623197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116734.P16952165783896623197

namespace A116734

/-- `record[Δ[A213816(2*(n+1))]-n]` -/
def P16952165783896623197.Spec : Prop :=
  ∀ n, P16952165783896623197.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P15867008406085734622

`Δ[2*A007800(n+1)-A000124(n)]`
-/

namespace A116734.P15867008406085734622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007800 (n + 1) - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116734.P15867008406085734622

namespace A116734

/-- `Δ[2*A007800(n+1)-A000124(n)]` -/
def P15867008406085734622.Spec : Prop :=
  ∀ n, P15867008406085734622.a n = A116734 (n + 1)

end A116734

/-! ## A116734.P14724946718198155089

`∑[sqrt(A203536(n+2))-1]`
-/

namespace A116734.P14724946718198155089
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203536 (n + 2) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116734.P14724946718198155089

namespace A116734

/-- `∑[sqrt(A203536(n+2))-1]` -/
def P14724946718198155089.Spec : Prop :=
  ∀ n, P14724946718198155089.a n = (A116734 (n + 1) : ℝ)

end A116734

/-!
# A116735: Number of permutations of length n which avoid the patterns 231, 1234, 4312; or avoid the patterns 312, 1234, 1432, etc.

The programs for A116735, the canonical program `A116735.P18193844159075332979` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116735 has offset 1).

The definition of A116735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116735.P18193844159075332979

`ogf((1-x+2x^2+2x^3)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116735

/-- `ogf((1-x+2x^2+2x^3)/(1-3x+3x^2-x^3))` -/
def P18193844159075332979.Spec : Prop :=
  ∀ n, P18193844159075332979.a n = A116735 (n + 1)

theorem P18193844159075332979.correct : P18193844159075332979.Spec := by
  intro n
  simp only [A116735, Nat.add_sub_cancel]

end A116735

/-! ## A116735.P11924789832147261076

`∑[a(n-1)+4]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A116735.P11924789832147261076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P11924789832147261076

namespace A116735

/-- `∑[a(n-1)+4]` -/
def P11924789832147261076.Spec : Prop :=
  ∀ n, (P11924789832147261076.a n : ℤ) = A116735 (n + 1)

end A116735

/-! ## A116735.P12803491418022450726

`∑[ogf((1-x+2x^2+2x^3)/(1-2x+x^2))]`
-/

namespace A116735.P12803491418022450726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P12803491418022450726

namespace A116735

/-- `∑[ogf((1-x+2x^2+2x^3)/(1-2x+x^2))]` -/
def P12803491418022450726.Spec : Prop :=
  ∀ n, P12803491418022450726.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P543288025994712632

`4*n+a(n-1)-5` with `a(0)=1, a(1)=2`
-/

namespace A116735.P543288025994712632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) + (a (n - 1) - 5)

end

end A116735.P543288025994712632

namespace A116735

/-- `4*n+a(n-1)-5` -/
def P543288025994712632.Spec : Prop :=
  ∀ n, P543288025994712632.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P8953784134727429358

`4*n-(5-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A116735.P8953784134727429358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) - (5 - a (n - 1))

end

end A116735.P8953784134727429358

namespace A116735

/-- `4*n-(5-a(n-1))` -/
def P8953784134727429358.Spec : Prop :=
  ∀ n, P8953784134727429358.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P7222826770088244642

`(2*n-1)*abs(1-n)+2`
-/

namespace A116735.P7222826770088244642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * |1 - (n : ℤ)| + 2

end

end A116735.P7222826770088244642

namespace A116735

/-- `(2*n-1)*abs(1-n)+2` -/
def P7222826770088244642.Spec : Prop :=
  ∀ n, P7222826770088244642.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P3477169348072919983

`∑[(n-2)*3%(n+1)+n+1]`
-/

namespace A116735.P3477169348072919983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((3 % (n + 1) : ℕ) : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P3477169348072919983

namespace A116735

/-- `∑[(n-2)*3%(n+1)+n+1]` -/
def P3477169348072919983.Spec : Prop :=
  ∀ n, P3477169348072919983.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P5754485658889911264

`gcd((n-1)*2*n-(n-3), C(2, n+2))`
-/

namespace A116735.P5754485658889911264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n : ℤ) - 1) * (2 * n : ℤ) - ((n : ℤ) - 3)) (Nat.choose 2 (n + 2) : ℤ)

end

end A116735.P5754485658889911264

namespace A116735

/-- `gcd((n-1)*2*n-(n-3), C(2, n+2))` -/
def P5754485658889911264.Spec : Prop :=
  ∀ n, (P5754485658889911264.a n : ℤ) = A116735 (n + 1)

end A116735

/-! ## A116735.P4706684943021172148

`∑[A135042(n)-n]`
-/

namespace A116735.P4706684943021172148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P4706684943021172148

namespace A116735

/-- `∑[A135042(n)-n]` -/
def P4706684943021172148.Spec : Prop :=
  ∀ n, P4706684943021172148.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P8599249583539760713

`A008530(n)%A093328(n)`
-/

namespace A116735.P8599249583539760713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008530 n) (A093328 n)

end

end A116735.P8599249583539760713

namespace A116735

/-- `A008530(n)%A093328(n)` -/
def P8599249583539760713.Spec : Prop :=
  ∀ n, P8599249583539760713.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P13773472562068260806

`A129109(n)%A090288(n)`
-/

namespace A116735.P13773472562068260806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129109 n) (A090288 n)

end

end A116735.P13773472562068260806

namespace A116735

/-- `A129109(n)%A090288(n)` -/
def P13773472562068260806.Spec : Prop :=
  ∀ n, P13773472562068260806.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P11396910601601377276

`A055437(n+1)%A090288(n)`
-/

namespace A116735.P11396910601601377276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055437 (n + 1)) (A090288 n)

end

end A116735.P11396910601601377276

namespace A116735

/-- `A055437(n+1)%A090288(n)` -/
def P11396910601601377276.Spec : Prop :=
  ∀ n, P11396910601601377276.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P14009958058912519799

`A259055(n)%A166154(n+1)`
-/

namespace A116735.P14009958058912519799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259055 n) (A166154 (n + 1))

end

end A116735.P14009958058912519799

namespace A116735

/-- `A259055(n)%A166154(n+1)` -/
def P14009958058912519799.Spec : Prop :=
  ∀ n, P14009958058912519799.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P3319974037555531536

`∪[A051470(n+1), A096376(n)]`
-/

namespace A116735.P3319974037555531536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116735.P3319974037555531536

namespace A116735

/-- `∪[A051470(n+1), A096376(n)]` -/
def P3319974037555531536.Spec : Prop :=
  ∀ n, (P3319974037555531536.a n : ℤ) = A116735 (n + 1)

end A116735

/-! ## A116735.P4157097579871637793

`∑[A116711(n+2)-(n+1)²]`
-/

namespace A116735.P4157097579871637793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116711 (n + 2) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P4157097579871637793

namespace A116735

/-- `∑[A116711(n+2)-(n+1)²]` -/
def P4157097579871637793.Spec : Prop :=
  ∀ n, P4157097579871637793.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P13749288328187069444

`∑[A140164(n+2)-(2*n+1)]`
-/

namespace A116735.P13749288328187069444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140164 (n + 2) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P13749288328187069444

namespace A116735

/-- `∑[A140164(n+2)-(2*n+1)]` -/
def P13749288328187069444.Spec : Prop :=
  ∀ n, P13749288328187069444.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P11613113570226900765

`∑[or(1, A004275(A004275(n)))]`
-/

namespace A116735.P11613113570226900765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004275 (A004275 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116735.P11613113570226900765

namespace A116735

/-- `∑[or(1, A004275(A004275(n)))]` -/
def P11613113570226900765.Spec : Prop :=
  ∀ n, P11613113570226900765.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P10861089394231445772

`record[A354008(n+1)-n]`
-/

namespace A116735.P10861089394231445772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354008 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116735.P10861089394231445772

namespace A116735

/-- `record[A354008(n+1)-n]` -/
def P10861089394231445772.Spec : Prop :=
  ∀ n, P10861089394231445772.a n = A116735 (n + 1)

end A116735

/-! ## A116735.P584683890160718114

`(A118403(2*n)+1)/2`
-/

namespace A116735.P584683890160718114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118403 (2 * n) + 1 : ℚ) / 2

end

end A116735.P584683890160718114

namespace A116735

/-- `(A118403(2*n)+1)/2` -/
def P584683890160718114.Spec : Prop :=
  ∀ n, P584683890160718114.a n = (A116735 (n + 1) : ℚ)

end A116735

/-! ## A116735.P14630181260415881320

`A089071(comp[2*(n+1)]+1)`
-/

namespace A116735.P14630181260415881320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A116735.P14630181260415881320

namespace A116735

/-- `A089071(comp[2*(n+1)]+1)` -/
def P14630181260415881320.Spec : Prop :=
  ∀ n, P14630181260415881320.a n = A116735 (n + 1)

end A116735

/-!
# A116736: Number of permutations of length n which avoid the patterns 1432, 2314, 2413.

The programs for A116736, there is no canonical definition to state claims against.
-/

/-! ## A116736.P9730253283615875198

`A000037(A078309(a(n-1)))` with `a(0)=1`
-/

namespace A116736.P9730253283615875198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000037 (A078309 (a (n - 1)).toNat).toNat

end

end A116736.P9730253283615875198

/-! ## A116736.P15616924049236558657

`A248565(A000957(n+3)-A096541(n))`
-/

namespace A116736.P15616924049236558657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (A000957 (n + 3) - A096541 n).toNat

end

end A116736.P15616924049236558657

/-! ## A116736.P14039244349800263464

`A204892(A046724(n+5))-A000124(n)`
-/

namespace A116736.P14039244349800263464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A046724 (n + 5)).toNat - A000124 n

end

end A116736.P14039244349800263464

/-!
# A116737: Number of permutations of length n which avoid the patterns 3412, 4123, 4321.

The programs for A116737, there is no canonical definition to state claims against.
-/

/-! ## A116737.P6023006985619800767

`A002266(or(2, A219151(n+1)))`
-/

namespace A116737.P6023006985619800767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lor 2 (A219151 (n + 1))).toNat

end

end A116737.P6023006985619800767

/-! ## A116737.P11553714237050596111

`A002266(xor(2, A219151(n+1)))`
-/

namespace A116737.P11553714237050596111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.xor 2 (A219151 (n + 1))).toNat

end

end A116737.P11553714237050596111

/-! ## A116737.P4859583493492973109

`A247233(A000010(n!))+Δ[A134063(n)]`
-/

namespace A116737.P4859583493492973109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247233 (A000010 (Nat.factorial n)).toNat + (f1 (n + 1) - f1 n)

end

end A116737.P4859583493492973109

/-!
# A116738: Number of permutations of length n which avoid the patterns 3214, 4123, 4132.

The programs for A116738, the canonical program `A116738.P7768181069453058345` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116738 has offset 1).

The definition of A116738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116738.P7768181069453058345

`ogf((1-2x)/(1-4x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116738

/-- `ogf((1-2x)/(1-4x+2x^2-x^3))` -/
def P7768181069453058345.Spec : Prop :=
  ∀ n, P7768181069453058345.a n = A116738 (n + 1)

theorem P7768181069453058345.correct : P7768181069453058345.Spec := by
  intro n
  simp only [A116738, Nat.add_sub_cancel]

end A116738

/-! ## A116738.P1601191963720802980

`4*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A116738.P1601191963720802980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A116738.P1601191963720802980

namespace A116738

/-- `4*a(n-1)-2*a(n-2)+a(n-3)` -/
def P1601191963720802980.Spec : Prop :=
  ∀ n, P1601191963720802980.a n = A116738 (n + 1)

end A116738

/-! ## A116738.P17042383858816361832

`A033453(n)%A008486(Δ[A082679(n)])`
-/

namespace A116738.P17042383858816361832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033453 n) (A008486 (f1 (n + 1) - f1 n).toNat)

end

end A116738.P17042383858816361832

namespace A116738

/-- `A033453(n)%A008486(Δ[A082679(n)])` -/
def P17042383858816361832.Spec : Prop :=
  ∀ n, P17042383858816361832.a n = A116738 (n + 1)

end A116738

/-! ## A116738.P5749915958650668852

`ceil(A190053(A033453(n))/6)`
-/

namespace A116738.P5749915958650668852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190053 (A033453 n).toNat : ℚ) / 6⌉

end

end A116738.P5749915958650668852

namespace A116738

/-- `ceil(A190053(A033453(n))/6)` -/
def P5749915958650668852.Spec : Prop :=
  ∀ n, P5749915958650668852.a n = A116738 (n + 1)

end A116738

/-!
# A116739: Number of permutations of length n which avoid the patterns 2134, 3421, 4231.

The programs for A116739, there is no canonical definition to state claims against.
-/

/-! ## A116739.P4996226211930225138

`A325327(A026787(n))`
-/

namespace A116739.P4996226211930225138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (A026787 n).toNat

end

end A116739.P4996226211930225138

/-! ## A116739.P12749616570948440740

`A000244(n)-∑[∑{e}[A075469(n+2), 2-#]]`
-/

namespace A116739.P12749616570948440740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075469 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116739.P12749616570948440740

/-!
# A116740: Number of permutations of length n which avoid the patterns 1243, 2341, 4132.

The programs for A116740, there is no canonical definition to state claims against.
-/

/-! ## A116740.P5290336663589008153

`A294694(n+1)%p?[∑[2^n]]`
-/

namespace A116740.P5290336663589008153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294694 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A116740.P5290336663589008153

/-! ## A116740.P17907447377198130954

`A294694(A037442(n+1))`
-/

namespace A116740.P17907447377198130954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294694 (A037442 (n + 1)).toNat

end

end A116740.P17907447377198130954

/-! ## A116740.P2634010152206409559

`A294694(A065666(n+1))`
-/

namespace A116740.P2634010152206409559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294694 (A065666 (n + 1)).toNat

end

end A116740.P2634010152206409559

/-!
# A116741: Number of permutations of length n which avoid the patterns 1342, 2314, 4213.

The programs for A116741, there is no canonical definition to state claims against.
-/

/-! ## A116741.P9509246423618551284

`A116773(n+1)+A025466(A000584(n))`
-/

namespace A116741.P9509246423618551284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116773 (n + 1) + A025466 (A000584 n).toNat

end

end A116741.P9509246423618551284

/-! ## A116741.P4649304193585126318

`A185284(A002522(n))+A116773(n+1)`
-/

namespace A116741.P4649304193585126318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A002522 n).toNat + A116773 (n + 1)

end

end A116741.P4649304193585126318

/-! ## A116741.P2582211318666613690

`A185284(A011782(n))+A116773(n+1)`
-/

namespace A116741.P2582211318666613690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A011782 n).toNat + A116773 (n + 1)

end

end A116741.P2582211318666613690

/-!
# A116742: Number of permutations of length n which avoid the patterns 1342, 2341, 4132; or avoid the patterns 2431, 3124, 4231.

The programs for A116742, there is no canonical definition to state claims against.
-/

/-! ## A116742.P7264274416437930816

`or(A071325(A147745(n+1)), A116805(n+1))`
-/

namespace A116742.P7264274416437930816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071325 (A147745 (n + 1)).toNat) (A116805 (n + 1))

end

end A116742.P7264274416437930816

/-! ## A116742.P17746118735928124756

`or(A071325(A147745(n+1)), A116816(n+1))`
-/

namespace A116742.P17746118735928124756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071325 (A147745 (n + 1)).toNat) (A116816 (n + 1))

end

end A116742.P17746118735928124756

/-!
# A116743: Number of permutations of length n which avoid the patterns 3421, 4123, 4213.

The programs for A116743, there is no canonical definition to state claims against.
-/

/-! ## A116743.P13078500400325513696

`A195120(A094828(n+2)+n)`
-/

namespace A116743.P13078500400325513696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A094828 (n + 2) + (n : ℤ)).toNat

end

end A116743.P13078500400325513696

/-! ## A116743.P8420718311443667063

`A219652(∑[A045623(comp[2*(n+1)])])`
-/

namespace A116743.P8420718311443667063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116743.P8420718311443667063

/-! ## A116743.P2264950358973917315

`A300763(A007484(n)-A039966(n))`
-/

namespace A116743.P2264950358973917315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A007484 n - A039966 n).toNat

end

end A116743.P2264950358973917315

/-!
# A116744: Number of permutations of length n which avoid the patterns 1243, 1432, 4213.

The programs for A116744, there is no canonical definition to state claims against.
-/

/-! ## A116744.P6179418372564663990

`A276798(2*n*A090413(n))`
-/

namespace A116744.P6179418372564663990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (2 * ((n : ℤ) * A090413 n)).toNat

end

end A116744.P6179418372564663990

/-! ## A116744.P9307196515903378587

`A326032(A293044(n))+A116797(n+1)`
-/

namespace A116744.P9307196515903378587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 (A293044 n).toNat + A116797 (n + 1)

end

end A116744.P9307196515903378587

/-!
# A116745: Number of permutations of length n which avoid the patterns 2134, 3214, 4312.

The programs for A116745, there is no canonical definition to state claims against.
-/

/-! ## A116745.P8541288997838415113

`xor(floor(3^n-2^(n-1)), A130403(round((2^n+3^n)/3)))`
-/

namespace A116745.P8541288997838415113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(3 ^ n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A130403 (SequenceMachineLib.roundAway ((2 ^ n + 3 ^ n : ℚ) / 3)).toNat)

end

end A116745.P8541288997838415113

/-! ## A116745.P10309346064850037066

`A209081(A149172(n+1))`
-/

namespace A116745.P10309346064850037066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A149172 (n + 1)).toNat

end

end A116745.P10309346064850037066

/-!
# A116746: Number of permutations of length n which avoid the patterns 1243, 4123, 4213.

The programs for A116746, the canonical program `A116746.P14125098106273359803` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116746 has offset 1).

The definition of A116746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116746.P14125098106273359803

`ogf((1-6x+12x^2-5x^3-4x^4)/(1-8x+22x^2-22x^3+x^4+6x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116746

/-- `ogf((1-6x+12x^2-5x^3-4x^4)/(1-8x+22x^2-22x^3+x^4+6x^5))` -/
def P14125098106273359803.Spec : Prop :=
  ∀ n, P14125098106273359803.a n = A116746 (n + 1)

theorem P14125098106273359803.correct : P14125098106273359803.Spec := by
  intro n
  simp only [A116746, Nat.add_sub_cancel]

end A116746

/-! ## A116746.P3587289007981454688

`A008776(n)-∑[A094723(n)]`
-/

namespace A116746.P3587289007981454688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116746.P3587289007981454688

namespace A116746

/-- `A008776(n)-∑[A094723(n)]` -/
def P3587289007981454688.Spec : Prop :=
  ∀ n, P3587289007981454688.a n = A116746 (n + 1)

end A116746

/-! ## A116746.P1639292732140373903

`Δ[A000244(n)]-∑[A094723(n)]`
-/

namespace A116746.P1639292732140373903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A116746.P1639292732140373903

namespace A116746

/-- `Δ[A000244(n)]-∑[A094723(n)]` -/
def P1639292732140373903.Spec : Prop :=
  ∀ n, P1639292732140373903.a n = A116746 (n + 1)

end A116746

/-! ## A116746.P7128593417279468083

`Δ[A168610(n)]-∑[A094723(n)]`
-/

namespace A116746.P7128593417279468083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A116746.P7128593417279468083

namespace A116746

/-- `Δ[A168610(n)]-∑[A094723(n)]` -/
def P7128593417279468083.Spec : Prop :=
  ∀ n, P7128593417279468083.a n = A116746 (n + 1)

end A116746

/-! ## A116746.P15042386311105073439

`A000792(3*n+2)-∑[A094723(n)]`
-/

namespace A116746.P15042386311105073439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (3 * n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116746.P15042386311105073439

namespace A116746

/-- `A000792(3*n+2)-∑[A094723(n)]` -/
def P15042386311105073439.Spec : Prop :=
  ∀ n, P15042386311105073439.a n = A116746 (n + 1)

end A116746

/-! ## A116746.P11945791392147002986

`∑[A137212(n+1)+A137212(n)]-A003063(n+1)`
-/

namespace A116746.P11945791392147002986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137212 (n + 1) + A137212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003063 (n + 1)

end

end A116746.P11945791392147002986

namespace A116746

/-- `∑[A137212(n+1)+A137212(n)]-A003063(n+1)` -/
def P11945791392147002986.Spec : Prop :=
  ∀ n, P11945791392147002986.a n = A116746 (n + 1)

end A116746

/-!
# A116747: Number of permutations of length n which avoid the patterns 1234, 2413, 3241.

The programs for A116747, the canonical program `A116747.P16038718380402297939` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116747 has offset 1).

The definition of A116747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116747.P16038718380402297939

`ogf((1-7x+21x^2-31x^3+24x^4-12x^5+2x^6)/(1-9x+33x^2-64x^3+71x^4-45x^5+15x^6-2x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116747

/-- `ogf((1-7x+21x^2-31x^3+24x^4-12x^5+2x^6)/(1-9x+33x^2-64x^3+71x^4-45x^5+15x^6-2x^7))` -/
def P16038718380402297939.Spec : Prop :=
  ∀ n, P16038718380402297939.a n = A116747 (n + 1)

theorem P16038718380402297939.correct : P16038718380402297939.Spec := by
  intro n
  simp only [A116747, Nat.add_sub_cancel]

end A116747

/-! ## A116747.P5425881289087241963

`A255408(A294703(n+1))`
-/

namespace A116747.P5425881289087241963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A294703 (n + 1)).toNat

end

end A116747.P5425881289087241963

namespace A116747

/-- `A255408(A294703(n+1))` -/
def P5425881289087241963.Spec : Prop :=
  ∀ n, P5425881289087241963.a n = A116747 (n + 1)

end A116747

/-! ## A116747.P16780808936544339293

`A097992((A035528(3*n)+2)*(n+1))`
-/

namespace A116747.P16780808936544339293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 ((A035528 (3 * n) + 2) * (n + 1 : ℤ)).toNat

end

end A116747.P16780808936544339293

namespace A116747

/-- `A097992((A035528(3*n)+2)*(n+1))` -/
def P16780808936544339293.Spec : Prop :=
  ∀ n, P16780808936544339293.a n = A116747 (n + 1)

end A116747

/-!
# A116748: Number of permutations of length n which avoid the patterns 2314, 4132, 4321.

The programs for A116748, there is no canonical definition to state claims against.
-/

/-! ## A116748.P13777115213085219636

`A074677(n)+A054576(A082138(n))`
-/

namespace A116748.P13777115213085219636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n + A054576 (A082138 n).toNat

end

end A116748.P13777115213085219636

/-! ## A116748.P15434418374325310116

`A216600(A116801(n+1))+A116786(n+1)`
-/

namespace A116748.P15434418374325310116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216600 (A116801 (n + 1)).toNat + A116786 (n + 1)

end

end A116748.P15434418374325310116

/-!
# A116749: Number of permutations of length n which avoid the patterns 1423, 3124, 3421.

The programs for A116749, there is no canonical definition to state claims against.
-/

/-! ## A116749.P7047440675141039899

`A116792(n+1)-A180649(A320745(n+1))`
-/

namespace A116749.P7047440675141039899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116792 (n + 1) - A180649 (A320745 (n + 1)).toNat

end

end A116749.P7047440675141039899

/-! ## A116749.P3553636239073214585

`A305891(A290666(∑[n]))`
-/

namespace A116749.P3553636239073214585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305891 (A290666 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A116749.P3553636239073214585

/-!
# A116750: Number of permutations of length n which avoid the patterns 1234, 2341, 4312.

The programs for A116750, the canonical program `A116750.P12134234199666544534` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116750 has offset 1).

The definition of A116750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116750.P12134234199666544534

`ogf((1-5x+13x^2-14x^3+16x^4-8x^5-5x^6+5x^7-x^8)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116750

/-- `ogf((1-5x+13x^2-14x^3+16x^4-8x^5-5x^6+5x^7-x^8)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12134234199666544534.Spec : Prop :=
  ∀ n, P12134234199666544534.a n = A116750 (n + 1)

theorem P12134234199666544534.correct : P12134234199666544534.Spec := by
  intro n
  simp only [A116750, Nat.add_sub_cancel]

end A116750

/-! ## A116750.P13212422460981040655

`A334929(A003600(n))`
-/

namespace A116750.P13212422460981040655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334929 (A003600 n).toNat

end

end A116750.P13212422460981040655

namespace A116750

/-- `A334929(A003600(n))` -/
def P13212422460981040655.Spec : Prop :=
  ∀ n, P13212422460981040655.a n = A116750 (n + 1)

end A116750

/-!
# A116751: Number of permutations of length n which avoid the patterns 2314, 2431, 3124.

The programs for A116751, there is no canonical definition to state claims against.
-/

/-! ## A116751.P11845569788412247117

`A296020(A020522(n)-A000330(n))`
-/

namespace A116751.P11845569788412247117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 (A020522 n - A000330 n).toNat

end

end A116751.P11845569788412247117

/-! ## A116751.P11848993247130651461

`A110656(A283276(n+1))-A321728(n)`
-/

namespace A116751.P11848993247130651461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A283276 (n + 1)).toNat - A321728 n

end

end A116751.P11848993247130651461

/-!
# A116752: Number of permutations of length n which avoid the patterns 1234, 1342, 2431.

The programs for A116752, there is no canonical definition to state claims against.
-/

/-! ## A116752.P10958956612306502483

`A116827(n+1)-A293520(A020059(n)+2)`
-/

namespace A116752.P10958956612306502483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116827 (n + 1) - A293520 (A020059 n + 2).toNat

end

end A116752.P10958956612306502483

/-! ## A116752.P7103748431103077985

`A194640(A091344(n))+1`
-/

namespace A116752.P7103748431103077985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A091344 n).toNat + 1

end

end A116752.P7103748431103077985

/-!
# A116753: Number of permutations of length n which avoid the patterns 2134, 3241, 4312.

The programs for A116753, there is no canonical definition to state claims against.
-/

/-! ## A116753.P13554462160380695842

`A331267(∑[2*n*a(n-1)]+1)` with `a(0)=0, a(1)=1`
-/

namespace A116753.P13554462160380695842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A116753.P13554462160380695842

/-! ## A116753.P6317038928734328837

`A115060(A294796(n+1))`
-/

namespace A116753.P6317038928734328837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A294796 (n + 1)).toNat

end

end A116753.P6317038928734328837

/-!
# A116754: Number of permutations of length n which avoid the patterns 2134, 2143, 4312.

The programs for A116754, the canonical program `A116754.P12968636921018633989` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116754 has offset 1).

The definition of A116754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116754.P12968636921018633989

`ogf((1-7x+20x^2-25x^3+12x^4-2x^5-x^6)/(1-9x+32x^2-56x^3+48x^4-16x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116754

/-- `ogf((1-7x+20x^2-25x^3+12x^4-2x^5-x^6)/(1-9x+32x^2-56x^3+48x^4-16x^5))` -/
def P12968636921018633989.Spec : Prop :=
  ∀ n, P12968636921018633989.a n = A116754 (n + 1)

theorem P12968636921018633989.correct : P12968636921018633989.Spec := by
  intro n
  simp only [A116754, Nat.add_sub_cancel]

end A116754

/-! ## A116754.P314491897198626487

`A178798(A011782(n))+A116776(n+1)`
-/

namespace A116754.P314491897198626487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A011782 n).toNat + A116776 (n + 1)

end

end A116754.P314491897198626487

namespace A116754

/-- `A178798(A011782(n))+A116776(n+1)` -/
def P314491897198626487.Spec : Prop :=
  ∀ n, P314491897198626487.a n = A116754 (n + 1)

end A116754

/-! ## A116754.P10390139254639180658

`A178798(A015128(n))+A116776(n+1)`
-/

namespace A116754.P10390139254639180658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A015128 n).toNat + A116776 (n + 1)

end

end A116754.P10390139254639180658

namespace A116754

/-- `A178798(A015128(n))+A116776(n+1)` -/
def P10390139254639180658.Spec : Prop :=
  ∀ n, P10390139254639180658.a n = A116754 (n + 1)

end A116754

/-!
# A116755: Number of permutations of length n which avoid the patterns 1234, 2431, 3412.

The programs for A116755, the canonical program `A116755.P3581855954582260099` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116755 has offset 1).

The definition of A116755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116755.P3581855954582260099

`ogf((1-5x+13x^2-14x^3+15x^4-4x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116755

/-- `ogf((1-5x+13x^2-14x^3+15x^4-4x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3581855954582260099.Spec : Prop :=
  ∀ n, P3581855954582260099.a n = A116755 (n + 1)

theorem P3581855954582260099.correct : P3581855954582260099.Spec := by
  intro n
  simp only [A116755, Nat.add_sub_cancel]

end A116755

/-! ## A116755.P18148256298982812283

`A294725(n+1)+A000579(n+1)`
-/

namespace A116755.P18148256298982812283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294725 (n + 1) + A000579 (n + 1)

end

end A116755.P18148256298982812283

namespace A116755

/-- `A294725(n+1)+A000579(n+1)` -/
def P18148256298982812283.Spec : Prop :=
  ∀ n, P18148256298982812283.a n = A116755 (n + 1)

end A116755

/-! ## A116755.P16960367215910134436

`A116833(n+1)-A101606(A151159(n))`
-/

namespace A116755.P16960367215910134436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116833 (n + 1) - A101606 (A151159 n).toNat

end

end A116755.P16960367215910134436

namespace A116755

/-- `A116833(n+1)-A101606(A151159(n))` -/
def P16960367215910134436.Spec : Prop :=
  ∀ n, P16960367215910134436.a n = A116755 (n + 1)

end A116755

/-!
# A116756: Number of permutations of length n which avoid the patterns 1234, 3421, 4312.

The programs for A116756, the canonical program `A116756.P9900442326005064342` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116756 has offset 1).

The definition of A116756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116756.P9900442326005064342

`ogf((1-x+3x^2+8x^3+23x^4+24x^5-9x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116756

/-- `ogf((1-x+3x^2+8x^3+23x^4+24x^5-9x^6)/(1-3x+3x^2-x^3))` -/
def P9900442326005064342.Spec : Prop :=
  ∀ n, P9900442326005064342.a n = A116756 (n + 1)

theorem P9900442326005064342.correct : P9900442326005064342.Spec := by
  intro n
  simp only [A116756, Nat.add_sub_cancel]

end A116756

/-! ## A116756.P982209950567157325

`A325761(A265106(n)+1)`
-/

namespace A116756.P982209950567157325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325761 (A265106 n + 1).toNat

end

end A116756.P982209950567157325

namespace A116756

/-- `A325761(A265106(n)+1)` -/
def P982209950567157325.Spec : Prop :=
  ∀ n, P982209950567157325.a n = A116756 (n + 1)

end A116756

/-!
# A116757: Number of permutations of length n which avoid the patterns 1324, 2314, 4312.

The programs for A116757, the canonical program `A116757.P13767460908845745942` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116757 has offset 1).

The definition of A116757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116757.P13767460908845745942

`ogf((1-7x+21x^2-30x^3+22x^4-8x^5)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116757

/-- `ogf((1-7x+21x^2-30x^3+22x^4-8x^5)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))` -/
def P13767460908845745942.Spec : Prop :=
  ∀ n, P13767460908845745942.a n = A116757 (n + 1)

theorem P13767460908845745942.correct : P13767460908845745942.Spec := by
  intro n
  simp only [A116757, Nat.add_sub_cancel]

end A116757

/-! ## A116757.P1723122975432425643

`∑[2^(n-1)*C(n, 2)+n]+1`
-/

namespace A116757.P1723122975432425643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116757.P1723122975432425643

namespace A116757

/-- `∑[2^(n-1)*C(n, 2)+n]+1` -/
def P1723122975432425643.Spec : Prop :=
  ∀ n, P1723122975432425643.a n = (A116757 (n + 1) : ℚ)

end A116757

/-! ## A116757.P12015572363957226201

`∑[A003013(n)]`
-/

namespace A116757.P12015572363957226201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116757.P12015572363957226201

namespace A116757

/-- `∑[A003013(n)]` -/
def P12015572363957226201.Spec : Prop :=
  ∀ n, P12015572363957226201.a n = A116757 (n + 1)

end A116757

/-! ## A116757.P17773581588570191925

`∑[A002999(n)-n]`
-/

namespace A116757.P17773581588570191925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002999 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116757.P17773581588570191925

namespace A116757

/-- `∑[A002999(n)-n]` -/
def P17773581588570191925.Spec : Prop :=
  ∀ n, P17773581588570191925.a n = A116757 (n + 1)

end A116757

/-! ## A116757.P14793402824670207077

`∑[A001815(n)+n]+1`
-/

namespace A116757.P14793402824670207077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116757.P14793402824670207077

namespace A116757

/-- `∑[A001815(n)+n]+1` -/
def P14793402824670207077.Spec : Prop :=
  ∀ n, P14793402824670207077.a n = A116757 (n + 1)

end A116757

/-! ## A116757.P2415447192715738991

`∑[n*(A139756(n)+1)]+1`
-/

namespace A116757.P2415447192715738991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A139756 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116757.P2415447192715738991

namespace A116757

/-- `∑[n*(A139756(n)+1)]+1` -/
def P2415447192715738991.Spec : Prop :=
  ∀ n, P2415447192715738991.a n = A116757 (n + 1)

end A116757

/-! ## A116757.P951365359623424825

`∑[C(n, 2)*A011782(n)-1+n]+n+2`
-/

namespace A116757.P951365359623424825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A011782 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 2

end

end A116757.P951365359623424825

namespace A116757

/-- `∑[C(n, 2)*A011782(n)-1+n]+n+2` -/
def P951365359623424825.Spec : Prop :=
  ∀ n, P951365359623424825.a n = A116757 (n + 1)

end A116757

/-! ## A116757.P16814911198501734266

`A000124(n)+∑[A001815(n)]`
-/

namespace A116757.P16814911198501734266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116757.P16814911198501734266

namespace A116757

/-- `A000124(n)+∑[A001815(n)]` -/
def P16814911198501734266.Spec : Prop :=
  ∀ n, P16814911198501734266.a n = A116757 (n + 1)

end A116757

/-! ## A116757.P1494895046655399694

`A217528(n+1)-A002662(n)`
-/

namespace A116757.P1494895046655399694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217528 (n + 1) - A002662 n

end

end A116757.P1494895046655399694

namespace A116757

/-- `A217528(n+1)-A002662(n)` -/
def P1494895046655399694.Spec : Prop :=
  ∀ n, P1494895046655399694.a n = A116757 (n + 1)

end A116757

/-!
# A116758: Number of permutations of length n which avoid the patterns 1234, 1432, 2341.

The programs for A116758, there is no canonical definition to state claims against.
-/

/-! ## A116758.P16518908929625324835

`A000377(A006954(2*(n+1)))+3^n-Δ[n²]`
-/

namespace A116758.P16518908929625324835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A006954 (2 * (n + 1))).toNat + ((3 ^ n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A116758.P16518908929625324835

/-! ## A116758.P14931783842731480932

`A000244(n)-A257569(A000744(n))`
-/

namespace A116758.P14931783842731480932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A257569 (A000744 n).toNat

end

end A116758.P14931783842731480932

/-! ## A116758.P14379079760753676750

`A186948(n)-A057078(A186947(n))`
-/

namespace A116758.P14379079760753676750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186948 n - A057078 (A186947 n).toNat

end

end A116758.P14379079760753676750

/-!
# A116759: Number of permutations of length n which avoid the patterns 2134, 3421, 4123.

The programs for A116759, the canonical program `A116759.P17863188994226290111` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116759 has offset 1).

The definition of A116759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116759.P17863188994226290111

`ogf((1-5x+13x^2-14x^3+15x^4-8x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116759

/-- `ogf((1-5x+13x^2-14x^3+15x^4-8x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P17863188994226290111.Spec : Prop :=
  ∀ n, P17863188994226290111.a n = A116759 (n + 1)

theorem P17863188994226290111.correct : P17863188994226290111.Spec := by
  intro n
  simp only [A116759, Nat.add_sub_cancel]

end A116759

/-! ## A116759.P3235045821531392489

`A249517(A010749(n))+A116767(n+1)`
-/

namespace A116759.P3235045821531392489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (A010749 n).toNat + A116767 (n + 1)

end

end A116759.P3235045821531392489

namespace A116759

/-- `A249517(A010749(n))+A116767(n+1)` -/
def P3235045821531392489.Spec : Prop :=
  ∀ n, P3235045821531392489.a n = A116759 (n + 1)

end A116759

/-!
# A116760: Number of permutations of length n which avoid the patterns 2341, 3214, 4213; or avoid the patterns 1324, 2341, 3214.

The programs for A116760, there is no canonical definition to state claims against.
-/

/-! ## A116760.P8425240295549823215

`A116826(n+1)+A033665(A032210(n))`
-/

namespace A116760.P8425240295549823215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116826 (n + 1) + A033665 (A032210 n).toNat

end

end A116760.P8425240295549823215

/-! ## A116760.P4648048174064612002

`A116826(n+1)-A178798(A001105(n))`
-/

namespace A116760.P4648048174064612002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116826 (n + 1) - A178798 (A001105 n).toNat

end

end A116760.P4648048174064612002

/-! ## A116760.P16185584896476094596

`A241470(A141769(n+1))+A116826(n+1)`
-/

namespace A116760.P16185584896476094596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241470 (A141769 (n + 1)).toNat + A116826 (n + 1)

end

end A116760.P16185584896476094596

/-!
# A116761: Number of permutations of length n which avoid the patterns 2143, 3124, 3421.

The programs for A116761, the canonical program `A116761.P2614707305124889836` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116761 has offset 1).

The definition of A116761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116761.P2614707305124889836

`ogf((1-7x+21x^2-30x^3+20x^4-8x^5+2x^6)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116761

/-- `ogf((1-7x+21x^2-30x^3+20x^4-8x^5+2x^6)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))` -/
def P2614707305124889836.Spec : Prop :=
  ∀ n, P2614707305124889836.a n = A116761 (n + 1)

theorem P2614707305124889836.correct : P2614707305124889836.Spec := by
  intro n
  simp only [A116761, Nat.add_sub_cancel]

end A116761

/-! ## A116761.P8314907513239478617

`A116807(n+1)-A028702(A003659(n+1))`
-/

namespace A116761.P8314907513239478617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116807 (n + 1) - A028702 (A003659 (n + 1)).toNat

end

end A116761.P8314907513239478617

namespace A116761

/-- `A116807(n+1)-A028702(A003659(n+1))` -/
def P8314907513239478617.Spec : Prop :=
  ∀ n, P8314907513239478617.a n = A116761 (n + 1)

end A116761

/-!
# A116762: Number of permutations of length n which avoid the patterns 1234, 1243, 3421.

The programs for A116762, the canonical program `A116762.P3261417708279722493` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116762 has offset 1).

The definition of A116762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116762.P3261417708279722493

`ogf((1-5x+13x^2-14x^3+17x^4-8x^5-x^6-3x^7+4x^8-x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116762

/-- `ogf((1-5x+13x^2-14x^3+17x^4-8x^5-x^6-3x^7+4x^8-x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3261417708279722493.Spec : Prop :=
  ∀ n, P3261417708279722493.a n = A116762 (n + 1)

theorem P3261417708279722493.correct : P3261417708279722493.Spec := by
  intro n
  simp only [A116762, Nat.add_sub_cancel]

end A116762

/-! ## A116762.P2549485801859154172

`A284009(n*(A015537(n)+1))`
-/

namespace A116762.P2549485801859154172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284009 ((n : ℤ) * (A015537 n + 1)).toNat

end

end A116762.P2549485801859154172

namespace A116762

/-- `A284009(n*(A015537(n)+1))` -/
def P2549485801859154172.Spec : Prop :=
  ∀ n, P2549485801859154172.a n = A116762 (n + 1)

end A116762

/-!
# A116763: Number of permutations of length n which avoid the patterns 2134, 3241, 3421.

The programs for A116763, there is no canonical definition to state claims against.
-/

/-! ## A116763.P11313937918092180033

`record[A151906(n+1)-ceil(3*n/2)]`
-/

namespace A116763.P11313937918092180033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151906 (n + 1) - ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116763.P11313937918092180033

/-!
# A116764: Number of permutations of length n which avoid the patterns 1423, 2134, 3214.

The programs for A116764, there is no canonical definition to state claims against.
-/

/-! ## A116764.P17712455907040714927

`A192543(A119374(n)+A052481(n))`
-/

namespace A116764.P17712455907040714927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A119374 n + A052481 n).toNat

end

end A116764.P17712455907040714927

/-! ## A116764.P2712004074691345454

`A248609(2*a(n-1)-1)` with `a(0)=1`
-/

namespace A116764.P2712004074691345454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248609 (2 * a (n - 1) - 1).toNat

end

end A116764.P2712004074691345454

/-!
# A116765: Number of permutations of length n which avoid the patterns 1234, 2431, 4312.

The programs for A116765, the canonical program `A116765.P2039881978662793252` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116765 has offset 1).

The definition of A116765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116765.P2039881978662793252

`ogf((1-4x+9x^2-5x^3+9x^4-6x^5-3x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116765

/-- `ogf((1-4x+9x^2-5x^3+9x^4-6x^5-3x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P2039881978662793252.Spec : Prop :=
  ∀ n, P2039881978662793252.a n = A116765 (n + 1)

theorem P2039881978662793252.correct : P2039881978662793252.Spec := by
  intro n
  simp only [A116765, Nat.add_sub_cancel]

end A116765

/-! ## A116765.P9649960449932480516

`A325761(A057711(n)+1)`
-/

namespace A116765.P9649960449932480516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325761 (A057711 n + 1).toNat

end

end A116765.P9649960449932480516

namespace A116765

/-- `A325761(A057711(n)+1)` -/
def P9649960449932480516.Spec : Prop :=
  ∀ n, P9649960449932480516.a n = A116765 (n + 1)

end A116765

/-!
# A116766: Number of permutations of length n which avoid the patterns 2134, 3421, 4312.

The programs for A116766, the canonical program `A116766.P11825327523816527893` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116766 has offset 1).

The definition of A116766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116766.P11825327523816527893

`ogf((1-3x+6x^2+x^3+11x^4+4x^5-7x^6-7x^7+6x^8)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116766

/-- `ogf((1-3x+6x^2+x^3+11x^4+4x^5-7x^6-7x^7+6x^8)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11825327523816527893.Spec : Prop :=
  ∀ n, P11825327523816527893.a n = A116766 (n + 1)

theorem P11825327523816527893.correct : P11825327523816527893.Spec := by
  intro n
  simp only [A116766, Nat.add_sub_cancel]

end A116766

/-! ## A116766.P15101738431662095705

`A003963(A011900(n))+char[4]`
-/

namespace A116766.P15101738431662095705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A011900 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A116766.P15101738431662095705

namespace A116766

/-- `A003963(A011900(n))+char[4]` -/
def P15101738431662095705.Spec : Prop :=
  ∀ n, P15101738431662095705.a n = A116766 (n + 1)

end A116766

/-!
# A116767: Number of permutations of length n which avoid the patterns 1234, 3142, 3421.

The programs for A116767, the canonical program `A116767.P3201503790266049222` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116767 has offset 1).

The definition of A116767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116767.P3201503790266049222

`ogf((1-5x+13x^2-14x^3+15x^4-9x^5+x^6-3x^7+2x^8)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116767

/-- `ogf((1-5x+13x^2-14x^3+15x^4-9x^5+x^6-3x^7+2x^8)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3201503790266049222.Spec : Prop :=
  ∀ n, P3201503790266049222.a n = A116767 (n + 1)

theorem P3201503790266049222.correct : P3201503790266049222.Spec := by
  intro n
  simp only [A116767, Nat.add_sub_cancel]

end A116767

/-! ## A116767.P12184730975467255686

`A168434(A027711(n+2))`
-/

namespace A116767.P12184730975467255686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168434 (A027711 (n + 2)).toNat

end

end A116767.P12184730975467255686

namespace A116767

/-- `A168434(A027711(n+2))` -/
def P12184730975467255686.Spec : Prop :=
  ∀ n, P12184730975467255686.a n = A116767 (n + 1)

end A116767

/-!
# A116768: Number of permutations of length n which avoid the patterns 1342, 3214, 4213.

The programs for A116768, the canonical program `A116768.P5552017234963093561` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116768 has offset 1).

The definition of A116768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116768.P5552017234963093561

`3*(n+1)+5*A000045(2*(n+1)-1)-7*2^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116768

/-- `3*(n+1)+5*A000045(2*(n+1)-1)-7*2^n` -/
def P5552017234963093561.Spec : Prop :=
  ∀ n, P5552017234963093561.a n = A116768 (n + 1)

theorem P5552017234963093561.correct : P5552017234963093561.Spec := by
  intro n
  simp only [A116768, Nat.add_sub_cancel]

end A116768

/-! ## A116768.P18259399913735114669

`ogf((1-5x+10x^2-6x^3+3x^4)/(1-7x+18x^2-21x^3+11x^4-2x^5))`
-/

namespace A116768.P18259399913735114669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10, -6, 3] [1, -7, 18, -21, 11, -2] n

end

end A116768.P18259399913735114669

namespace A116768

/-- `ogf((1-5x+10x^2-6x^3+3x^4)/(1-7x+18x^2-21x^3+11x^4-2x^5))` -/
def P18259399913735114669.Spec : Prop :=
  ∀ n, P18259399913735114669.a n = A116768 (n + 1)

end A116768

/-! ## A116768.P15129199030242394345

`A116754(n+1)+A054634(A052521(n))`
-/

namespace A116768.P15129199030242394345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116754 (n + 1) + A054634 (A052521 n).toNat

end

end A116768.P15129199030242394345

namespace A116768

/-- `A116754(n+1)+A054634(A052521(n))` -/
def P15129199030242394345.Spec : Prop :=
  ∀ n, P15129199030242394345.a n = A116768 (n + 1)

end A116768

/-!
# A116769: Number of permutations of length n which avoid the patterns 1234, 4123, 4132.

The programs for A116769, there is no canonical definition to state claims against.
-/

/-! ## A116769.P13434794846551927166

`A248227(A199923(n)+1)`
-/

namespace A116769.P13434794846551927166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A199923 n + 1).toNat

end

end A116769.P13434794846551927166

/-! ## A116769.P16926201081497878515

`A248227(or(1, A199923(n)))`
-/

namespace A116769.P16926201081497878515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.lor 1 (A199923 n)).toNat

end

end A116769.P16926201081497878515

/-!
# A116770: Number of permutations of length n which avoid the patterns 1243, 1342, 4312.

The programs for A116770, there is no canonical definition to state claims against.
-/

/-! ## A116770.P10945034449132878681

`A054404(A123904(n+1))-n²`
-/

namespace A116770.P10945034449132878681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A123904 (n + 1)).toNat - (n ^ 2 : ℤ)

end

end A116770.P10945034449132878681

/-! ## A116770.P9033345096457272909

`∑[A059261(A286421(n+1)^n)]`
-/

namespace A116770.P9033345096457272909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A286421 (n + 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116770.P9033345096457272909

/-!
# A116771: Number of permutations of length n which avoid the patterns 1243, 4132, 4321.

The programs for A116771, the canonical program `A116771.P18225312407660467399` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116771 has offset 1).

The definition of A116771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116771.P18225312407660467399

`ogf((1-6x+18x^2-27x^3+32x^4-19x^5+4x^6-3x^7+3x^8-x^9)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116771

/-- `ogf((1-6x+18x^2-27x^3+32x^4-19x^5+4x^6-3x^7+3x^8-x^9)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P18225312407660467399.Spec : Prop :=
  ∀ n, P18225312407660467399.a n = A116771 (n + 1)

theorem P18225312407660467399.correct : P18225312407660467399.Spec := by
  intro n
  simp only [A116771, Nat.add_sub_cancel]

end A116771

/-! ## A116771.P7459225476497148745

`A147680(A385589(n))`
-/

namespace A116771.P7459225476497148745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A385589 n).toNat

end

end A116771.P7459225476497148745

namespace A116771

/-- `A147680(A385589(n))` -/
def P7459225476497148745.Spec : Prop :=
  ∀ n, P7459225476497148745.a n = A116771 (n + 1)

end A116771

/-!
# A116772: Number of permutations of length n which avoid the patterns 1234, 1243, 1432.

The programs for A116772, there is no canonical definition to state claims against.
-/

/-! ## A116772.P8746299856141008752

`A002266(A020876(n))+A001835(n)`
-/

namespace A116772.P8746299856141008752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A020876 n).toNat + A001835 n

end

end A116772.P8746299856141008752

/-! ## A116772.P6189367252505110935

`A028310(A082679(n)+A001353(n))`
-/

namespace A116772.P6189367252505110935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082679 n + A001353 n).toNat

end

end A116772.P6189367252505110935

/-! ## A116772.P1664221886415266288

`A028310(A082679(n)-A106707(n))`
-/

namespace A116772.P1664221886415266288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082679 n - A106707 n).toNat

end

end A116772.P1664221886415266288

/-!
# A116773: Number of permutations of length n which avoid the patterns 1432, 2134, 4132; or avoid the patterns 3124, 4123, 4321.

The programs for A116773, there is no canonical definition to state claims against.
-/

/-! ## A116773.P8562124950916279833

`A116778(n+1)+A067898(A127618(n))`
-/

namespace A116773.P8562124950916279833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116778 (n + 1) + A067898 (A127618 n).toNat

end

end A116773.P8562124950916279833

/-! ## A116773.P9835387516445909709

`A116778(n+1)+A057918(A343848(n))`
-/

namespace A116773.P9835387516445909709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116778 (n + 1) + A057918 (A343848 n).toNat

end

end A116773.P9835387516445909709

/-! ## A116773.P9082755107725473442

`A131576(A334779(n))+A116778(n+1)`
-/

namespace A116773.P9082755107725473442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A334779 n).toNat + A116778 (n + 1)

end

end A116773.P9082755107725473442

/-!
# A116774: Number of permutations of length n which avoid the patterns 2143, 2341, 4312; or avoid the patterns 1234, 1432, 3412.

The programs for A116774, the canonical program `A116774.P3569393556335331905` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116774 has offset 1).

The definition of A116774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116774.P3569393556335331905

`ogf((1-5x+13x^2-14x^3+13x^4-5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116774

/-- `ogf((1-5x+13x^2-14x^3+13x^4-5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3569393556335331905.Spec : Prop :=
  ∀ n, P3569393556335331905.a n = A116774 (n + 1)

theorem P3569393556335331905.correct : P3569393556335331905.Spec := by
  intro n
  simp only [A116774, Nat.add_sub_cancel]

end A116774

/-! ## A116774.P7955953011893595407

`A000124(n)+∑[∑[A103290(n)]]`
-/

namespace A116774.P7955953011893595407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P7955953011893595407

namespace A116774

/-- `A000124(n)+∑[∑[A103290(n)]]` -/
def P7955953011893595407.Spec : Prop :=
  ∀ n, P7955953011893595407.a n = A116774 (n + 1)

end A116774

/-! ## A116774.P7286537894444410817

`∑[A028310(n)+∑[A103290(n)]]`
-/

namespace A116774.P7286537894444410817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P7286537894444410817

namespace A116774

/-- `∑[A028310(n)+∑[A103290(n)]]` -/
def P7286537894444410817.Spec : Prop :=
  ∀ n, P7286537894444410817.a n = A116774 (n + 1)

end A116774

/-! ## A116774.P414891513333836002

`∑[∑[A103290(n)]+A000007(n)+n]`
-/

namespace A116774.P414891513333836002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A000007 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P414891513333836002

namespace A116774

/-- `∑[∑[A103290(n)]+A000007(n)+n]` -/
def P414891513333836002.Spec : Prop :=
  ∀ n, P414891513333836002.a n = A116774 (n + 1)

end A116774

/-! ## A116774.P17124617006847424760

`∑[∑[A103290(n)]+A008486(n)-2*n]`
-/

namespace A116774.P17124617006847424760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A008486 n - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P17124617006847424760

namespace A116774

/-- `∑[∑[A103290(n)]+A008486(n)-2*n]` -/
def P17124617006847424760.Spec : Prop :=
  ∀ n, P17124617006847424760.a n = A116774 (n + 1)

end A116774

/-! ## A116774.P17280971323343699564

`∑[A065033(2*n)+∑[A103290(n)]]`
-/

namespace A116774.P17280971323343699564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P17280971323343699564

namespace A116774

/-- `∑[A065033(2*n)+∑[A103290(n)]]` -/
def P17280971323343699564.Spec : Prop :=
  ∀ n, P17280971323343699564.a n = A116774 (n + 1)

end A116774

/-! ## A116774.P6262847712620961154

`∑[A137735(n²)+∑[A103290(n)]]`
-/

namespace A116774.P6262847712620961154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P6262847712620961154

namespace A116774

/-- `∑[A137735(n²)+∑[A103290(n)]]` -/
def P6262847712620961154.Spec : Prop :=
  ∀ n, P6262847712620961154.a n = A116774 (n + 1)

end A116774

/-!
# A116775: Number of permutations of length n which avoid the patterns 1234, 2341, 4132.

The programs for A116775, the canonical program `A116775.P13099454350109487365` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116775 has offset 1).

The definition of A116775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116775.P13099454350109487365

`ogf((1-6x+16x^2-19x^3+13x^4-11x^5-5x^6+4x^7)/(1-8x+26x^2-44x^3+41x^4-20x^5+4x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116775

/-- `ogf((1-6x+16x^2-19x^3+13x^4-11x^5-5x^6+4x^7)/(1-8x+26x^2-44x^3+41x^4-20x^5+4x^6))` -/
def P13099454350109487365.Spec : Prop :=
  ∀ n, P13099454350109487365.a n = A116775 (n + 1)

theorem P13099454350109487365.correct : P13099454350109487365.Spec := by
  intro n
  simp only [A116775, Nat.add_sub_cancel]

end A116775

/-! ## A116775.P4308400063175441657

`A210380(A328139(n+1))`
-/

namespace A116775.P4308400063175441657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A328139 (n + 1)).toNat

end

end A116775.P4308400063175441657

namespace A116775

/-- `A210380(A328139(n+1))` -/
def P4308400063175441657.Spec : Prop :=
  ∀ n, P4308400063175441657.a n = A116775 (n + 1)

end A116775

/-!
# A116776: Number of permutations of length n which avoid the patterns 2134, 3142, 3421.

The programs for A116776, there is no canonical definition to state claims against.
-/

/-! ## A116776.P8280545385525186404

`A178798(A036661(n))+A116754(n+1)`
-/

namespace A116776.P8280545385525186404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A036661 n).toNat + A116754 (n + 1)

end

end A116776.P8280545385525186404

/-! ## A116776.P71211414540739161

`A131531(A126368(n))+A116754(n+1)`
-/

namespace A116776.P71211414540739161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (A126368 n).toNat + A116754 (n + 1)

end

end A116776.P71211414540739161

/-!
# A116777: Number of permutations of length n which avoid the patterns 2314, 3142, 4312.

The programs for A116777, the canonical program `A116777.P12937864848752246756` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116777 has offset 1).

The definition of A116777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116777.P12937864848752246756

`ogf((1-7x+19x^2-23x^3+12x^4-3x^5)/(1-9x+31x^2-52x^3+45x^4-19x^5+3x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116777

/-- `ogf((1-7x+19x^2-23x^3+12x^4-3x^5)/(1-9x+31x^2-52x^3+45x^4-19x^5+3x^6))` -/
def P12937864848752246756.Spec : Prop :=
  ∀ n, P12937864848752246756.a n = A116777 (n + 1)

theorem P12937864848752246756.correct : P12937864848752246756.Spec := by
  intro n
  simp only [A116777, Nat.add_sub_cancel]

end A116777

/-! ## A116777.P5522379014405556056

`A187185(A229397(n+1)-A000142(n))`
-/

namespace A116777.P5522379014405556056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A229397 (n + 1) - A000142 n).toNat

end

end A116777.P5522379014405556056

namespace A116777

/-- `A187185(A229397(n+1)-A000142(n))` -/
def P5522379014405556056.Spec : Prop :=
  ∀ n, P5522379014405556056.a n = A116777 (n + 1)

end A116777

/-! ## A116777.P3030642689547632814

`A116793(n+1)-A347689(A203768(n+1))`
-/

namespace A116777.P3030642689547632814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116793 (n + 1) - A347689 (A203768 (n + 1)).toNat

end

end A116777.P3030642689547632814

namespace A116777

/-- `A116793(n+1)-A347689(A203768(n+1))` -/
def P3030642689547632814.Spec : Prop :=
  ∀ n, P3030642689547632814.a n = A116777 (n + 1)

end A116777

/-!
# A116778: Number of permutations of length n which avoid the patterns 2431, 3124, 3421.

The programs for A116778, there is no canonical definition to state claims against.
-/

/-! ## A116778.P14452719675040375263

`A329864(A306347(n))+A294802(n+1)`
-/

namespace A116778.P14452719675040375263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329864 (A306347 n).toNat + A294802 (n + 1)

end

end A116778.P14452719675040375263

/-! ## A116778.P10416333059328520504

`A116773(n+1)-A067898(A127618(n))`
-/

namespace A116778.P10416333059328520504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116773 (n + 1) - A067898 (A127618 n).toNat

end

end A116778.P10416333059328520504

/-! ## A116778.P12739307699987739903

`A116787(n+1)-A193316(A018242(n))`
-/

namespace A116778.P12739307699987739903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116787 (n + 1) - A193316 (A018242 n).toNat

end

end A116778.P12739307699987739903

/-!
# A116779: Number of permutations of length n which avoid the patterns 2143, 2341, 3214.

The programs for A116779, there is no canonical definition to state claims against.
-/

/-! ## A116779.P18222061054642198985

`A004526(A116748(n+1)+A116737(n+1))`
-/

namespace A116779.P18222061054642198985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116748 (n + 1) + A116737 (n + 1)).toNat

end

end A116779.P18222061054642198985

/-! ## A116779.P11477095991840675156

`A350969(A382084(n+1))`
-/

namespace A116779.P11477095991840675156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A382084 (n + 1)).toNat

end

end A116779.P11477095991840675156

/-!
# A116780: Number of permutations of length n which avoid the patterns 2341, 4123, 4132.

The programs for A116780, there is no canonical definition to state claims against.
-/

/-! ## A116780.P17756485826574289545

`A106517(n)-A000194(A034266(n))`
-/

namespace A116780.P17756485826574289545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n - A000194 (A034266 n).toNat

end

end A116780.P17756485826574289545

/-! ## A116780.P15597390866329614463

`A293520(A020059(n))+A116827(n+1)`
-/

namespace A116780.P15597390866329614463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293520 (A020059 n).toNat + A116827 (n + 1)

end

end A116780.P15597390866329614463

/-! ## A116780.P18189389028152566195

`A289438(A010901(2*n)-A056108(n))`
-/

namespace A116780.P18189389028152566195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A010901 (2 * n) - A056108 n).toNat

end

end A116780.P18189389028152566195

/-!
# A116781: Number of permutations of length n which avoid the patterns 1234, 1243, 3214.

The programs for A116781, there is no canonical definition to state claims against.
-/

/-! ## A116781.P2944148319566674018

`A077814(A027261(n)+A005384(n+1))`
-/

namespace A116781.P2944148319566674018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A027261 n + A005384 (n + 1)).toNat

end

end A116781.P2944148319566674018

/-! ## A116781.P1942342590036431146

`A054899(A157004(n+2))+A034886(n)`
-/

namespace A116781.P1942342590036431146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A157004 (n + 2)).toNat + A034886 n

end

end A116781.P1942342590036431146

/-!
# A116782: Number of permutations of length n which avoid the patterns 3421, 4123, 4231; or avoid the patterns 1342, 3142, 4213.

The programs for A116782, there is no canonical definition to state claims against.
-/

/-! ## A116782.P6366997457726462065

`A085861(A030662(n+1))+A000984(n)`
-/

namespace A116782.P6366997457726462065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A030662 (n + 1)).toNat + A000984 n

end

end A116782.P6366997457726462065

/-! ## A116782.P13551367570171221664

`or(A070176(n), A294820(A331565(n+1)))`
-/

namespace A116782.P13551367570171221664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070176 n) (A294820 (A331565 (n + 1)).toNat)

end

end A116782.P13551367570171221664

/-!
# A116783: Number of permutations of length n which avoid the patterns 1234, 2431, 4231.

The programs for A116783, the canonical program `A116783.P10637094945365172383` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116783 has offset 1).

The definition of A116783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116783.P10637094945365172383

`ogf((1-5x+13x^2-14x^3+17x^4+x^5+3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116783

/-- `ogf((1-5x+13x^2-14x^3+17x^4+x^5+3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10637094945365172383.Spec : Prop :=
  ∀ n, P10637094945365172383.a n = A116783 (n + 1)

theorem P10637094945365172383.correct : P10637094945365172383.Spec := by
  intro n
  simp only [A116783, Nat.add_sub_cancel]

end A116783

/-! ## A116783.P2902563301360238631

`3^n-A029837(A002720(n))`
-/

namespace A116783.P2902563301360238631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A029837 (A002720 n).toNat

end

end A116783.P2902563301360238631

namespace A116783

/-- `3^n-A029837(A002720(n))` -/
def P2902563301360238631.Spec : Prop :=
  ∀ n, P2902563301360238631.a n = A116783 (n + 1)

end A116783

/-!
# A116784: Number of permutations of length n which avoid the patterns 2314, 3241, 4312.

The programs for A116784, there is no canonical definition to state claims against.
-/

/-! ## A116784.P10406650899723970003

`A214701(A294767(n+1))`
-/

namespace A116784.P10406650899723970003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A294767 (n + 1)).toNat

end

end A116784.P10406650899723970003

/-! ## A116784.P16301589893349634065

`A342561(A276175(n))+A226431(n+1)`
-/

namespace A116784.P16301589893349634065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (A276175 n).toNat + A226431 (n + 1)

end

end A116784.P16301589893349634065

/-! ## A116784.P505388917910853110

`A226431(A141769(n+1))-A218627(n)/2`
-/

namespace A116784.P505388917910853110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226431 (A141769 (n + 1)).toNat : ℚ) - (A218627 n : ℚ) / 2

end

end A116784.P505388917910853110

/-!
# A116785: Number of permutations of length n which avoid the patterns 2143, 2341, 4213.

The programs for A116785, there is no canonical definition to state claims against.
-/

/-! ## A116785.P11962115827285838104

`A103221(∑[(n+2)*(A188716(n)+n)]+1)`
-/

namespace A116785.P11962115827285838104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A188716 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116785.P11962115827285838104

/-! ## A116785.P6931590908166060631

`A382857(A001205(n))+A160549(n)`
-/

namespace A116785.P6931590908166060631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382857 (A001205 n).toNat + A160549 n

end

end A116785.P6931590908166060631

/-! ## A116785.P2263827856011411920

`A160549(n)+A105556(A301308(n))`
-/

namespace A116785.P2263827856011411920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160549 n + A105556 (A301308 n).toNat

end

end A116785.P2263827856011411920

/-!
# A116786: Number of permutations of length n which avoid the patterns 2314, 2431, 4123.

The programs for A116786, the canonical program `A116786.P14735753372522927672` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116786 has offset 1).

The definition of A116786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116786.P14735753372522927672

`ogf((1-7x+22x^2-36x^3+35x^4-22x^5+6x^6)/(1-9x+34x^2-71x^3+90x^4-70x^5+31x^6-6x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116786

/-- `ogf((1-7x+22x^2-36x^3+35x^4-22x^5+6x^6)/(1-9x+34x^2-71x^3+90x^4-70x^5+31x^6-6x^7))` -/
def P14735753372522927672.Spec : Prop :=
  ∀ n, P14735753372522927672.a n = A116786 (n + 1)

theorem P14735753372522927672.correct : P14735753372522927672.Spec := by
  intro n
  simp only [A116786, Nat.add_sub_cancel]

end A116786

/-! ## A116786.P1868766987041038550

`A152467(A183926(n+1))+A067434(n+1)`
-/

namespace A116786.P1868766987041038550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A183926 (n + 1)).toNat + A067434 (n + 1)

end

end A116786.P1868766987041038550

namespace A116786

/-- `A152467(A183926(n+1))+A067434(n+1)` -/
def P1868766987041038550.Spec : Prop :=
  ∀ n, P1868766987041038550.a n = A116786 (n + 1)

end A116786

/-! ## A116786.P3380389595702762127

`A225875(n+1)+A152467(A183926(n+1))`
-/

namespace A116786.P3380389595702762127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (n + 1) + A152467 (A183926 (n + 1)).toNat

end

end A116786.P3380389595702762127

namespace A116786

/-- `A225875(n+1)+A152467(A183926(n+1))` -/
def P3380389595702762127.Spec : Prop :=
  ∀ n, P3380389595702762127.a n = A116786 (n + 1)

end A116786

/-!
# A116787: Number of permutations of length n which avoid the patterns 1432, 2314, 3124.

The programs for A116787, there is no canonical definition to state claims against.
-/

/-! ## A116787.P14459595733291755614

`A216600(A183188(n))+A116778(n+1)`
-/

namespace A116787.P14459595733291755614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216600 (A183188 n).toNat + A116778 (n + 1)

end

end A116787.P14459595733291755614

/-! ## A116787.P4376322945031112335

`A116802(n+1)-A006370(A184993(n))`
-/

namespace A116787.P4376322945031112335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116802 (n + 1) - A006370 (A184993 n).toNat

end

end A116787.P4376322945031112335

/-!
# A116788: Number of permutations of length n which avoid the patterns 1234, 3142, 4132.

The programs for A116788, there is no canonical definition to state claims against.
-/

/-! ## A116788.P11261530091087870292

`A280317(A007579(n))+A116768(n+1)`
-/

namespace A116788.P11261530091087870292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (A007579 n).toNat + A116768 (n + 1)

end

end A116788.P11261530091087870292

/-! ## A116788.P10739535094022023133

`A280317(A007580(n))+A116768(n+1)`
-/

namespace A116788.P10739535094022023133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (A007580 n).toNat + A116768 (n + 1)

end

end A116788.P10739535094022023133

/-! ## A116788.P9554994957755577577

`A145805(A193296(n))+A116754(n+1)`
-/

namespace A116788.P9554994957755577577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145805 (A193296 n).toNat + A116754 (n + 1)

end

end A116788.P9554994957755577577

/-!
# A116789: Number of permutations of length n which avoid the patterns 1234, 2431, 3241.

The programs for A116789, there is no canonical definition to state claims against.
-/

/-! ## A116789.P13924693401036170885

`A225086(A179257(n))+n*A179257(n)`
-/

namespace A116789.P13924693401036170885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A179257 n).toNat + (n : ℤ) * A179257 n

end

end A116789.P13924693401036170885

/-! ## A116789.P5186069412410436840

`A083382(abs(3-A005022(n+1)))`
-/

namespace A116789.P5186069412410436840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 |3 - A005022 (n + 1)|.toNat

end

end A116789.P5186069412410436840

/-!
# A116790: Number of permutations of length n which avoid the patterns 1423, 1432, 3241.

The programs for A116790, there is no canonical definition to state claims against.
-/

/-! ## A116790.P2765769905501577180

`A008615(A180168(n+1)+A008484(n))`
-/

namespace A116790.P2765769905501577180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A180168 (n + 1) + A008484 n).toNat

end

end A116790.P2765769905501577180

/-! ## A116790.P12371301269772743891

`A116817(n+1)+A057428(A052776(n))`
-/

namespace A116790.P12371301269772743891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116817 (n + 1) + A057428 (A052776 n).toNat

end

end A116790.P12371301269772743891

/-! ## A116790.P4317713750395822611

`A292232(n+6)-A302242(A002110(n))`
-/

namespace A116790.P4317713750395822611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292232 (n + 6) - A302242 (A002110 n).toNat

end

end A116790.P4317713750395822611

/-!
# A116791: Number of permutations of length n which avoid the patterns 1234, 1342, 4312.

The programs for A116791, the canonical program `A116791.P7832568566034763831` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116791 has offset 1).

The definition of A116791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116791.P7832568566034763831

`ogf((1-6x+18x^2-27x^3+30x^4-20x^5+6x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116791

/-- `ogf((1-6x+18x^2-27x^3+30x^4-20x^5+6x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P7832568566034763831.Spec : Prop :=
  ∀ n, P7832568566034763831.a n = A116791 (n + 1)

theorem P7832568566034763831.correct : P7832568566034763831.Spec := by
  intro n
  simp only [A116791, Nat.add_sub_cancel]

end A116791

/-! ## A116791.P13568159755238342864

`Δ[A145383(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A116791.P13568159755238342864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 9] fun n f1 =>
  A145383 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116791.P13568159755238342864

namespace A116791

/-- `Δ[A145383(a(n-1))]` -/
def P13568159755238342864.Spec : Prop :=
  ∀ n, P13568159755238342864.a n = A116791 (n + 1)

end A116791

/-!
# A116792: Number of permutations of length n which avoid the patterns 1432, 2134, 2341.

The programs for A116792, there is no canonical definition to state claims against.
-/

/-! ## A116792.P11377153109114330921

`A184964((2-n)²)+A116749(n+1)`
-/

namespace A116792.P11377153109114330921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 ((2 - (n : ℤ)) ^ 2).toNat + A116749 (n + 1)

end

end A116792.P11377153109114330921

/-! ## A116792.P16325070295060651521

`or(A000392(n), A332086(A097554(n)))`
-/

namespace A116792.P16325070295060651521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000392 n) (A332086 (A097554 n).toNat)

end

end A116792.P16325070295060651521

/-! ## A116792.P1054496708986196019

`or(A000164(A097554(n)), A116749(n+1))`
-/

namespace A116792.P1054496708986196019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000164 (A097554 n).toNat) (A116749 (n + 1))

end

end A116792.P1054496708986196019

/-!
# A116793: Number of permutations of length n which avoid the patterns 1432, 2143, 3124; or avoid the patterns 1432, 2314, 3142.

The programs for A116793, there is no canonical definition to state claims against.
-/

/-! ## A116793.P12987829452006494626

`A004525(A116743(n+1)+A116740(n+1))`
-/

namespace A116793.P12987829452006494626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116743 (n + 1) + A116740 (n + 1)).toNat

end

end A116793.P12987829452006494626

/-! ## A116793.P15609584521902074961

`A004526(A116743(n+1)+A116740(n+1))`
-/

namespace A116793.P15609584521902074961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116743 (n + 1) + A116740 (n + 1)).toNat

end

end A116793.P15609584521902074961

/-! ## A116793.P3234347113893398059

`A261226(A296593(n+1))`
-/

namespace A116793.P3234347113893398059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A296593 (n + 1)).toNat

end

end A116793.P3234347113893398059

/-!
# A116794: Number of permutations of length n which avoid the patterns 2341, 3214, 4132.

The programs for A116794, there is no canonical definition to state claims against.
-/

/-! ## A116794.P18340687933039441695

`lcm(A163352(2^n), A344343(n+1))`
-/

namespace A116794.P18340687933039441695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163352 (2 ^ n)) (A344343 (n + 1))

end

end A116794.P18340687933039441695

/-! ## A116794.P2797543426998721597

`A261585(A000051(n)*A047954(n))`
-/

namespace A116794.P2797543426998721597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A000051 n * A047954 n).toNat

end

end A116794.P2797543426998721597

/-!
# A116795: Number of permutations of length n which avoid the patterns 2341, 3214, 4123.

The programs for A116795, there is no canonical definition to state claims against.
-/

/-! ## A116795.P8430928098628256497

`A317023(floor((n/2)²)²)+3^n-2^n`
-/

namespace A116795.P8430928098628256497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (⌊((n : ℚ) / 2) ^ 2⌋ ^ 2).toNat + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A116795.P8430928098628256497

/-!
# A116796: Number of permutations of length n which avoid the patterns 2314, 3241, 4132.

The programs for A116796, the canonical program `A116796.P6589379330823032507` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116796 has offset 1).

The definition of A116796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116796.P12476470832607542927

`ogf((1-5x+9x^2-4x^3)/(1-7x+17x^2-17x^3+7x^4-x^5))`
-/

namespace A116796.P12476470832607542927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 9, -4] [1, -7, 17, -17, 7, -1] n

end

end A116796.P12476470832607542927

namespace A116796

/-- `ogf((1-5x+9x^2-4x^3)/(1-7x+17x^2-17x^3+7x^4-x^5))` -/
def P12476470832607542927.Spec : Prop :=
  ∀ n, P12476470832607542927.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P6589379330823032507

`7*a(n-1)-17*a(n-2)+17*a(n-3)-7*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=21, a(4)=72`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116796

/-- `7*a(n-1)-17*a(n-2)+17*a(n-3)-7*a(n-4)+a(n-5)` -/
def P6589379330823032507.Spec : Prop :=
  ∀ n, P6589379330823032507.a n = A116796 (n + 1)

theorem P6589379330823032507.correct : P6589379330823032507.Spec := by
  intro n
  simp only [A116796, Nat.add_sub_cancel]

end A116796

/-! ## A116796.P2416895878852034921

`1+(2*n*A000032(2*n)-A000045(2*n))/5`
-/

namespace A116796.P2416895878852034921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((2 * n : ℤ) * A000032 (2 * n) - A000045 (2 * n) : ℚ) / 5

end

end A116796.P2416895878852034921

namespace A116796

/-- `1+(2*n*A000032(2*n)-A000045(2*n))/5` -/
def P2416895878852034921.Spec : Prop :=
  ∀ n, P2416895878852034921.a n = (A116796 (n + 1) : ℚ)

end A116796

/-! ## A116796.P1314565600155158949

`A001629(2*n)+1`
-/

namespace A116796.P1314565600155158949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) + 1

end

end A116796.P1314565600155158949

namespace A116796

/-- `A001629(2*n)+1` -/
def P1314565600155158949.Spec : Prop :=
  ∀ n, P1314565600155158949.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P10727499462488812940

`∑[A029907(abs(1-2*n))]`
-/

namespace A116796.P10727499462488812940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116796.P10727499462488812940

namespace A116796

/-- `∑[A029907(abs(1-2*n))]` -/
def P10727499462488812940.Spec : Prop :=
  ∀ n, P10727499462488812940.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P9984991275062928252

`∑[A029907(comp[2*(n+1)])]+1`
-/

namespace A116796.P9984991275062928252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116796.P9984991275062928252

namespace A116796

/-- `∑[A029907(comp[2*(n+1)])]+1` -/
def P9984991275062928252.Spec : Prop :=
  ∀ n, P9984991275062928252.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P11774142431959743685

`A027989(n)-A027941(n)`
-/

namespace A116796.P11774142431959743685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 n - A027941 n

end

end A116796.P11774142431959743685

namespace A116796

/-- `A027989(n)-A027941(n)` -/
def P11774142431959743685.Spec : Prop :=
  ∀ n, P11774142431959743685.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P17921767049433419904

`A027989(n)+1-A122367(n)`
-/

namespace A116796.P17921767049433419904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 n + (1 - A122367 n)

end

end A116796.P17921767049433419904

namespace A116796

/-- `A027989(n)+1-A122367(n)` -/
def P17921767049433419904.Spec : Prop :=
  ∀ n, P17921767049433419904.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P1098423260953395164

`record[2-(A175722(n)+A000045(n))]`
-/

namespace A116796.P1098423260953395164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A175722 n + A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116796.P1098423260953395164

namespace A116796

/-- `record[2-(A175722(n)+A000045(n))]` -/
def P1098423260953395164.Spec : Prop :=
  ∀ n, P1098423260953395164.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P8450265562248068963

`A027989(n)-A000071(2*n+1)`
-/

namespace A116796.P8450265562248068963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 n - A000071 (2 * n + 1)

end

end A116796.P8450265562248068963

namespace A116796

/-- `A027989(n)-A000071(2*n+1)` -/
def P8450265562248068963.Spec : Prop :=
  ∀ n, P8450265562248068963.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P2614698110215212074

`∑[A055244(2*n)-A029907(2*n)]`
-/

namespace A116796.P2614698110215212074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (2 * n) - A029907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116796.P2614698110215212074

namespace A116796

/-- `∑[A055244(2*n)-A029907(2*n)]` -/
def P2614698110215212074.Spec : Prop :=
  ∀ n, P2614698110215212074.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P16880950445650293305

`∑[A208354(2*n)-A000045(2*n)]`
-/

namespace A116796.P16880950445650293305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (2 * n) - A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116796.P16880950445650293305

namespace A116796

/-- `∑[A208354(2*n)-A000045(2*n)]` -/
def P16880950445650293305.Spec : Prop :=
  ∀ n, P16880950445650293305.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P12545648512582653375

`A121530(n+1)+A121532(n+1)+1`
-/

namespace A116796.P12545648512582653375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121530 (n + 1) + (A121532 (n + 1) + 1)

end

end A116796.P12545648512582653375

namespace A116796

/-- `A121530(n+1)+A121532(n+1)+1` -/
def P12545648512582653375.Spec : Prop :=
  ∀ n, P12545648512582653375.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P9467864641156793189

`A029907(2*n)+1-A000045(2*n)`
-/

namespace A116796.P9467864641156793189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n) + (1 - A000045 (2 * n))

end

end A116796.P9467864641156793189

namespace A116796

/-- `A029907(2*n)+1-A000045(2*n)` -/
def P9467864641156793189.Spec : Prop :=
  ∀ n, P9467864641156793189.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P2945616477284584770

`A102702(2*n)+1-A020695(2*n)`
-/

namespace A116796.P2945616477284584770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 (2 * n) + (1 - A020695 (2 * n))

end

end A116796.P2945616477284584770

namespace A116796

/-- `A102702(2*n)+1-A020695(2*n)` -/
def P2945616477284584770.Spec : Prop :=
  ∀ n, P2945616477284584770.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P8315590239457726739

`A055244(2*n)+1-A208354(2*n)`
-/

namespace A116796.P8315590239457726739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (2 * n) + (1 - A208354 (2 * n))

end

end A116796.P8315590239457726739

namespace A116796

/-- `A055244(2*n)+1-A208354(2*n)` -/
def P8315590239457726739.Spec : Prop :=
  ∀ n, P8315590239457726739.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P15501691025842043719

`A029907(2*n)+2-A001611(2*n)`
-/

namespace A116796.P15501691025842043719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n) + (2 - A001611 (2 * n))

end

end A116796.P15501691025842043719

namespace A116796

/-- `A029907(2*n)+2-A001611(2*n)` -/
def P15501691025842043719.Spec : Prop :=
  ∀ n, P15501691025842043719.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P11965912548975917764

`A010049(2*n+1)-∑[A000045(2*n)]`
-/

namespace A116796.P11965912548975917764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116796.P11965912548975917764

namespace A116796

/-- `A010049(2*n+1)-∑[A000045(2*n)]` -/
def P11965912548975917764.Spec : Prop :=
  ∀ n, P11965912548975917764.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P908112327147303751

`∑[A010049(2*n)]-A078024(2*n+1)`
-/

namespace A116796.P908112327147303751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078024 (2 * n + 1)

end

end A116796.P908112327147303751

namespace A116796

/-- `∑[A010049(2*n)]-A078024(2*n+1)` -/
def P908112327147303751.Spec : Prop :=
  ∀ n, P908112327147303751.a n = A116796 (n + 1)

end A116796

/-! ## A116796.P16439413635016471539

`∑[A208354(2*n)]-A000071(2*n+1)`
-/

namespace A116796.P16439413635016471539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000071 (2 * n + 1)

end

end A116796.P16439413635016471539

namespace A116796

/-- `∑[A208354(2*n)]-A000071(2*n+1)` -/
def P16439413635016471539.Spec : Prop :=
  ∀ n, P16439413635016471539.a n = A116796 (n + 1)

end A116796

/-!
# A116797: Number of permutations of length n which avoid the patterns 1432, 2134, 2314.

The programs for A116797, there is no canonical definition to state claims against.
-/

/-! ## A116797.P17753525530007830714

`A261226((n+2)*3^n)`
-/

namespace A116797.P17753525530007830714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 ((n + 2) * 3 ^ n)

end

end A116797.P17753525530007830714

/-! ## A116797.P3972585988377091254

`A247983(A192905(n+1))`
-/

namespace A116797.P3972585988377091254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A192905 (n + 1)).toNat

end

end A116797.P3972585988377091254

/-! ## A116797.P17100439915543590912

`∑[A059995(A006478(2*n+3))+1]`
-/

namespace A116797.P17100439915543590912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A006478 (2 * n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116797.P17100439915543590912

/-!
# A116798: Number of permutations of length n which avoid the patterns 1234, 1342, 1432.

The programs for A116798, the canonical program `A116798.P16200650020552260850` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116798 has offset 1).

The definition of A116798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116798.P7428245420014388836

`ogf((1-5x+7x^2-2x^3)/(1-7x+15x^2-11x^3+3x^4))`
-/

namespace A116798.P7428245420014388836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7, -2] [1, -7, 15, -11, 3] n

end

end A116798.P7428245420014388836

namespace A116798

/-- `ogf((1-5x+7x^2-2x^3)/(1-7x+15x^2-11x^3+3x^4))` -/
def P7428245420014388836.Spec : Prop :=
  ∀ n, P7428245420014388836.a n = A116798 (n + 1)

end A116798

/-! ## A116798.P16200650020552260850

`7*a(n-1)-15*a(n-2)+11*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=21`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116798

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)-3*a(n-4)` -/
def P16200650020552260850.Spec : Prop :=
  ∀ n, P16200650020552260850.a n = A116798 (n + 1)

theorem P16200650020552260850.correct : P16200650020552260850.Spec := by
  intro n
  simp only [A116798, Nat.add_sub_cancel]

end A116798

/-! ## A116798.P18137233270198240859

`A106609(4*(A335793(n+1)+1))`
-/

namespace A116798.P18137233270198240859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * (A335793 (n + 1) + 1)).toNat

end

end A116798.P18137233270198240859

namespace A116798

/-- `A106609(4*(A335793(n+1)+1))` -/
def P18137233270198240859.Spec : Prop :=
  ∀ n, P18137233270198240859.a n = A116798 (n + 1)

end A116798

/-!
# A116799: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts such that the largest part is k (n>=1, k>=1).

The programs for A116799, there is no canonical definition to state claims against.
-/

/-! ## A116799.P15508753572119125025

`A127155(n)%A282162(A130329(n))`
-/

namespace A116799.P15508753572119125025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127155 n) (A282162 (A130329 n).toNat)

end

end A116799.P15508753572119125025

/-! ## A116799.P12117459777186406990

`ceil(A103728(3*n+5)/A033954(3*n+2))`
-/

namespace A116799.P12117459777186406990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103728 (3 * n + 5) : ℚ) / (A033954 (3 * n + 2) : ℚ)⌉

end

end A116799.P12117459777186406990

/-! ## A116799.P7265394697236188173

`ceil(A103728(3*n+5)/A045536(3*n+2))`
-/

namespace A116799.P7265394697236188173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103728 (3 * n + 5) : ℚ) / (A045536 (3 * n + 2) : ℚ)⌉

end

end A116799.P7265394697236188173

/-! ## A116799.P16050283704189761463

`ceil(A103728(3*n+5)/A046759(3*n+2))`
-/

namespace A116799.P16050283704189761463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103728 (3 * n + 5) : ℚ) / (A046759 (3 * n + 2) : ℚ)⌉

end

end A116799.P16050283704189761463

/-! ## A116799.P8996586497591143922

`A030351(A066313(n+1))`
-/

namespace A116799.P8996586497591143922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030351 (A066313 (n + 1)).toNat

end

end A116799.P8996586497591143922

