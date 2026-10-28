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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A049702: Array T read by diagonals; T(i,j)=number of directions determined by 2 lattice points in [ 0,i ]x[ 0,j ].

The programs for A049702, there is no canonical definition to state claims against.
-/

/-! ## A049702.P2480997687303311049

`A004275(A049687(n))`
-/

namespace A049702.P2480997687303311049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A049687 n).toNat

end

end A049702.P2480997687303311049

/-! ## A049702.P10620076315064341892

`A058992(A049627(n))`
-/

namespace A049702.P10620076315064341892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A049627 n).toNat

end

end A049702.P10620076315064341892

/-! ## A049702.P8579009645718561540

`A058992(A049687(n)+1)`
-/

namespace A049702.P8579009645718561540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A049687 n + 1).toNat

end

end A049702.P8579009645718561540

/-! ## A049702.P10296185556967282045

`A004275(A049627(n)-1)`
-/

namespace A049702.P10296185556967282045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A049627 n - 1).toNat

end

end A049702.P10296185556967282045

/-! ## A049702.P17318797761295558659

`A049695(n)*A154325(n)`
-/

namespace A049702.P17318797761295558659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 n * A154325 n

end

end A049702.P17318797761295558659

/-! ## A049702.P11030978863886718975

`(2-A103451(n))*A049695(n)`
-/

namespace A049702.P11030978863886718975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A103451 n) * A049695 n

end

end A049702.P11030978863886718975

/-! ## A049702.P2630089895087006266

`(A049627(n)-A154325(n))*A154325(n)`
-/

namespace A049702.P2630089895087006266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049627 n - A154325 n) * A154325 n

end

end A049702.P2630089895087006266

/-! ## A049702.P15154441276237677055

`A049687(n)+A049615(A000217(A049695(n)))`
-/

namespace A049702.P15154441276237677055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n + A049615 (A000217 (A049695 n).toNat).toNat

end

end A049702.P15154441276237677055

/-! ## A049702.P6786496623504100087

`A004525(A265359(A049687(n)²))`
-/

namespace A049702.P6786496623504100087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A265359 (A049687 n ^ 2).toNat).toNat

end

end A049702.P6786496623504100087

/-! ## A049702.P15752992047968488109

`A003056(A063656(A049687(n)²))`
-/

namespace A049702.P15752992047968488109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A063656 (A049687 n ^ 2).toNat).toNat

end

end A049702.P15752992047968488109

/-! ## A049702.P16876036443298141762

`A049687(n)+A049695(n)-A049687(A000217(n))`
-/

namespace A049702.P16876036443298141762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n + (A049695 n - A049687 (A000217 n).toNat)

end

end A049702.P16876036443298141762

/-!
# A049703: a(0) = 0; for n>0, a(n) = A005598(n)/2.

The programs for A049703, the canonical program `A049703.P3662777776691455142` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049703 has offset 0).

The definition of A049703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049703.P3662777776691455142

`floor(A005598(n)/2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049703

/-- `floor(A005598(n)/2)` -/
def P3662777776691455142.Spec : Prop :=
  ∀ n, P3662777776691455142.a n = A049703 n

theorem P3662777776691455142.correct : P3662777776691455142.Spec := by
  intro n
  simp only [A049703]

end A049703

/-! ## A049703.P13568451045183323818

`∑[floor(A005728(n)/2)]`
-/

namespace A049703.P13568451045183323818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005728 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P13568451045183323818

namespace A049703

/-- `∑[floor(A005728(n)/2)]` -/
def P13568451045183323818.Spec : Prop :=
  ∀ n, P13568451045183323818.a n = A049703 n

end A049703

/-! ## A049703.P6492619996943373521

`∑[floor(A049643(n)/2)]`
-/

namespace A049703.P6492619996943373521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049643 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P6492619996943373521

namespace A049703

/-- `∑[floor(A049643(n)/2)]` -/
def P6492619996943373521.Spec : Prop :=
  ∀ n, P6492619996943373521.a n = A049703 n

end A049703

/-! ## A049703.P2782584159316344192

`∑[ceil(A002088(n)/2)]`
-/

namespace A049703.P2782584159316344192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002088 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P2782584159316344192

namespace A049703

/-- `∑[ceil(A002088(n)/2)]` -/
def P2782584159316344192.Spec : Prop :=
  ∀ n, P2782584159316344192.a n = A049703 n

end A049703

/-! ## A049703.P3461603898122443137

`floor(A135342(n+1)/2)`
-/

namespace A049703.P3461603898122443137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135342 (n + 1) : ℚ) / 2⌋

end

end A049703.P3461603898122443137

namespace A049703

/-- `floor(A135342(n+1)/2)` -/
def P3461603898122443137.Spec : Prop :=
  ∀ n, P3461603898122443137.a n = A049703 n

end A049703

/-! ## A049703.P1426981386673036055

`ceil((A049688(n)-n)/2)`
-/

namespace A049703.P1426981386673036055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049688 n - (n : ℤ) : ℚ) / 2⌉

end

end A049703.P1426981386673036055

namespace A049703

/-- `ceil((A049688(n)-n)/2)` -/
def P1426981386673036055.Spec : Prop :=
  ∀ n, P1426981386673036055.a n = A049703 n

end A049703

/-! ## A049703.P5924676485918572733

`∑[round(round(A049696(n)/2)/2)]`
-/

namespace A049703.P5924676485918572733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A049696 n : ℚ) / 2) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P5924676485918572733

namespace A049703

/-- `∑[round(round(A049696(n)/2)/2)]` -/
def P5924676485918572733.Spec : Prop :=
  ∀ n, P5924676485918572733.a n = A049703 n

end A049703

/-! ## A049703.P14807366227026840776

`∑[A000010(n)+a(n-1)]/2` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A049703.P14807366227026840776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A049703.P14807366227026840776

namespace A049703

/-- `∑[A000010(n)+a(n-1)]/2` -/
def P14807366227026840776.Spec : Prop :=
  ∀ n, P14807366227026840776.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P4412326600749256152

`A005598(n)/2*A057427(n)`
-/

namespace A049703.P4412326600749256152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005598 n : ℚ) / 2 * (A057427 n : ℚ)

end

end A049703.P4412326600749256152

namespace A049703

/-- `A005598(n)/2*A057427(n)` -/
def P4412326600749256152.Spec : Prop :=
  ∀ n, P4412326600749256152.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P14018602869196262935

`A005598(n)/2*A057428(n)²`
-/

namespace A049703.P14018602869196262935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005598 n : ℚ) / 2 * (A057428 n ^ 2 : ℚ)

end

end A049703.P14018602869196262935

namespace A049703

/-- `A005598(n)/2*A057428(n)²` -/
def P14018602869196262935.Spec : Prop :=
  ∀ n, P14018602869196262935.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P12333833560192768717

`∑[A002088(n)/A000032(C(n, n²))]`
-/

namespace A049703.P12333833560192768717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / (A000032 (Nat.choose n (n ^ 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P12333833560192768717

namespace A049703

/-- `∑[A002088(n)/A000032(C(n, n²))]` -/
def P12333833560192768717.Spec : Prop :=
  ∀ n, P12333833560192768717.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P5493478654207393360

`A005598(n)-A005598(A028310(n))/2`
-/

namespace A049703.P5493478654207393360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005598 n : ℚ) - (A005598 (A028310 n).toNat : ℚ) / 2

end

end A049703.P5493478654207393360

namespace A049703

/-- `A005598(n)-A005598(A028310(n))/2` -/
def P5493478654207393360.Spec : Prop :=
  ∀ n, P5493478654207393360.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P15337574459696827146

`∑[A002088(n)/A020639(A000010(n+1))]`
-/

namespace A049703.P15337574459696827146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P15337574459696827146

namespace A049703

/-- `∑[A002088(n)/A020639(A000010(n+1))]` -/
def P15337574459696827146.Spec : Prop :=
  ∀ n, P15337574459696827146.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P16030767819667146753

`A327474(n+1)/2-1`
-/

namespace A049703.P16030767819667146753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327474 (n + 1) : ℚ) / 2 - 1

end

end A049703.P16030767819667146753

namespace A049703

/-- `A327474(n+1)/2-1` -/
def P16030767819667146753.Spec : Prop :=
  ∀ n, P16030767819667146753.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P10309688876640407506

`A005598(n)-A005598(n)/A020639(A005574(n+1))`
-/

namespace A049703.P10309688876640407506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005598 n : ℚ) - (A005598 n : ℚ) / (A020639 (A005574 (n + 1)).toNat : ℚ)

end

end A049703.P10309688876640407506

namespace A049703

/-- `A005598(n)-A005598(n)/A020639(A005574(n+1))` -/
def P10309688876640407506.Spec : Prop :=
  ∀ n, P10309688876640407506.a n = (A049703 n : ℚ)

end A049703

/-! ## A049703.P947541679239220921

`∑[floor(A049632(n)/4)]`
-/

namespace A049703.P947541679239220921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049632 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P947541679239220921

namespace A049703

/-- `∑[floor(A049632(n)/4)]` -/
def P947541679239220921.Spec : Prop :=
  ∀ n, P947541679239220921.a n = A049703 n

end A049703

/-! ## A049703.P17459364912094131521

`∑[A004526(A005728(n))]`
-/

namespace A049703.P17459364912094131521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P17459364912094131521

namespace A049703

/-- `∑[A004526(A005728(n))]` -/
def P17459364912094131521.Spec : Prop :=
  ∀ n, P17459364912094131521.a n = A049703 n

end A049703

/-! ## A049703.P10974859213438947723

`∑[A004526(A049643(n))]`
-/

namespace A049703.P10974859213438947723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P10974859213438947723

namespace A049703

/-- `∑[A004526(A049643(n))]` -/
def P10974859213438947723.Spec : Prop :=
  ∀ n, P10974859213438947723.a n = A049703 n

end A049703

/-! ## A049703.P3126125785623600252

`∑[A123108(A002088(n)+1)]`
-/

namespace A049703.P3126125785623600252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A002088 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049703.P3126125785623600252

namespace A049703

/-- `∑[A123108(A002088(n)+1)]` -/
def P3126125785623600252.Spec : Prop :=
  ∀ n, P3126125785623600252.a n = A049703 n

end A049703

/-!
# A049704: Array T read by antidiagonals; T(i,j)=number of nonnegative slopes of lines determined by two points in the triangular set {(x,y): 0<=x<=i, 0<=y<=j-j*x/i} of lattice points.

The programs for A049704, there is no canonical definition to state claims against.
-/

/-! ## A049704.P12856359087427298509

`A131234(A047996(n))%A194057(n+1)`
-/

namespace A049704.P12856359087427298509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131234 (A047996 n).toNat) (A194057 (n + 1))

end

end A049704.P12856359087427298509

/-! ## A049704.P2128529344393540178

`A043559(A174545(n))-floor(acot(n))`
-/

namespace A049704.P2128529344393540178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A174545 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A049704.P2128529344393540178

/-! ## A049704.P16759952359523009501

`A157791(A047996(n)²)-floor(acot(n))`
-/

namespace A049704.P16759952359523009501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157791 (A047996 n ^ 2).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A049704.P16759952359523009501

/-! ## A049704.P16828565953344978845

`A043559(A174545(n))-A000007(n)`
-/

namespace A049704.P16828565953344978845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A174545 n).toNat - A000007 n

end

end A049704.P16828565953344978845

/-! ## A049704.P16279509667799033456

`A043559(A174545(n))*A157928(n+1)`
-/

namespace A049704.P16279509667799033456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A174545 n).toNat * A157928 (n + 1)

end

end A049704.P16279509667799033456

/-!
# A049705: a(n)=3-k(n), where k=A000002=Kolakoski sequence; also the sequence of runlengths of a is k.

The programs for A049705, the canonical program `A049705.P11002765941806409636` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049705 has offset 1).

The definition of A049705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049705.P236150643957962230

`A078650(n+1)+1`
-/

namespace A049705.P236150643957962230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 1) + 1

end

end A049705.P236150643957962230

namespace A049705

/-- `A078650(n+1)+1` -/
def P236150643957962230.Spec : Prop :=
  ∀ n, P236150643957962230.a n = A049705 (n + 1)

theorem P236150643957962230.correct : P236150643957962230.Spec := by
  intro n
  simp only [A049705, Nat.add_sub_cancel, A049705.P236150643957962230.a, A049705.P11002765941806409636.a, A000002, A000002.P13330532946811820297.a, A078650, A078650.P371792363212749957.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049705

/-! ## A049705.P11002765941806409636

`3-A000002(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049705

/-- `3-A000002(n+1)` -/
def P11002765941806409636.Spec : Prop :=
  ∀ n, P11002765941806409636.a n = A049705 (n + 1)

theorem P11002765941806409636.correct : P11002765941806409636.Spec := by
  intro n
  simp only [A049705, Nat.add_sub_cancel]

end A049705

/-! ## A049705.P1410648730925650753

`gcd(2, A160051(n)+1)`
-/

namespace A049705.P1410648730925650753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A160051 n + 1)

end

end A049705.P1410648730925650753

namespace A049705

/-- `gcd(2, A160051(n)+1)` -/
def P1410648730925650753.Spec : Prop :=
  ∀ n, (P1410648730925650753.a n : ℤ) = A049705 (n + 1)

end A049705

/-! ## A049705.P12042554884910456892

`a(log2(A006928(n)))` with `a(0)=2, a(1)=1`
-/

namespace A049705.P12042554884910456892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A006928 n : ℝ))).toNat

end

end A049705.P12042554884910456892

namespace A049705

/-- `a(log2(A006928(n)))` -/
def P12042554884910456892.Spec : Prop :=
  ∀ n, (P12042554884910456892.a n : ℤ) = A049705 (n + 1)

end A049705

/-! ## A049705.P7194922314295099904

`a(log2(A078880(n)))` with `a(0)=2, a(1)=1`
-/

namespace A049705.P7194922314295099904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A078880 n : ℝ))).toNat

end

end A049705.P7194922314295099904

namespace A049705

/-- `a(log2(A078880(n)))` -/
def P7194922314295099904.Spec : Prop :=
  ∀ n, (P7194922314295099904.a n : ℤ) = A049705 (n + 1)

end A049705

/-! ## A049705.P4652578775826949774

`a(2-A049710(n))` with `a(0)=2, a(1)=1`
-/

namespace A049705.P4652578775826949774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (2 - A049710 n).toNat

end

end A049705.P4652578775826949774

namespace A049705

/-- `a(2-A049710(n))` -/
def P4652578775826949774.Spec : Prop :=
  ∀ n, (P4652578775826949774.a n : ℤ) = A049705 (n + 1)

end A049705

/-! ## A049705.P18401550483315498998

`a(2-A088569(n))` with `a(0)=2, a(1)=1`
-/

namespace A049705.P18401550483315498998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (2 - A088569 n).toNat

end

end A049705.P18401550483315498998

namespace A049705

/-- `a(2-A088569(n))` -/
def P18401550483315498998.Spec : Prop :=
  ∀ n, (P18401550483315498998.a n : ℤ) = A049705 (n + 1)

end A049705

/-! ## A049705.P3286671177910297248

`2/A000002(C(n+1, n))`
-/

namespace A049705.P3286671177910297248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000002 (Nat.choose (n + 1) n) : ℚ)

end

end A049705.P3286671177910297248

namespace A049705

/-- `2/A000002(C(n+1, n))` -/
def P3286671177910297248.Spec : Prop :=
  ∀ n, P3286671177910297248.a n = (A049705 (n + 1) : ℚ)

end A049705

/-! ## A049705.P8216431079444489995

`a(n-1)-A054354(n)` with `a(0)=2`
-/

namespace A049705.P8216431079444489995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - A054354 n

end

end A049705.P8216431079444489995

namespace A049705

/-- `a(n-1)-A054354(n)` -/
def P8216431079444489995.Spec : Prop :=
  ∀ n, P8216431079444489995.a n = A049705 (n + 1)

end A049705

/-! ## A049705.P2878718615448695852

`char[A013947(n+1)-1]+1`
-/

namespace A049705.P2878718615448695852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A049705.P2878718615448695852

namespace A049705

/-- `char[A013947(n+1)-1]+1` -/
def P2878718615448695852.Spec : Prop :=
  ∀ n, (P2878718615448695852.a n : ℤ) = A049705 (n + 1)

end A049705

/-! ## A049705.P3890983962880531091

`2-char[A013948(n+1)-1]`
-/

namespace A049705.P3890983962880531091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049705.P3890983962880531091

namespace A049705

/-- `2-char[A013948(n+1)-1]` -/
def P3890983962880531091.Spec : Prop :=
  ∀ n, P3890983962880531091.a n = A049705 (n + 1)

end A049705

/-! ## A049705.P3549385532362257084

`2/A000002(char[1]+1+n)`
-/

namespace A049705.P3549385532362257084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000002 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ)

end

end A049705.P3549385532362257084

namespace A049705

/-- `2/A000002(char[1]+1+n)` -/
def P3549385532362257084.Spec : Prop :=
  ∀ n, P3549385532362257084.a n = (A049705 (n + 1) : ℚ)

end A049705

/-! ## A049705.P939706918789239467

`2-log2(A000002(-xor(n, -1)))`
-/

namespace A049705.P939706918789239467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (A000002 (-Int.xor (n : ℤ) (-1)).toNat : ℝ)

end

end A049705.P939706918789239467

namespace A049705

/-- `2-log2(A000002(-xor(n, -1)))` -/
def P939706918789239467.Spec : Prop :=
  ∀ n, P939706918789239467.a n = (A049705 (n + 1) : ℝ)

end A049705

/-! ## A049705.P5131097352540419787

`A000034(A156253(n+1))`
-/

namespace A049705.P5131097352540419787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A156253 (n + 1)).toNat

end

end A049705.P5131097352540419787

namespace A049705

/-- `A000034(A156253(n+1))` -/
def P5131097352540419787.Spec : Prop :=
  ∀ n, P5131097352540419787.a n = A049705 (n + 1)

end A049705

/-! ## A049705.P11129018937384920934

`2-Δ[A074286(A028310(n))]`
-/

namespace A049705.P11129018937384920934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A049705.P11129018937384920934

namespace A049705

/-- `2-Δ[A074286(A028310(n))]` -/
def P11129018937384920934.Spec : Prop :=
  ∀ n, P11129018937384920934.a n = A049705 (n + 1)

end A049705

/-! ## A049705.P11525300029024936309

`A040001(A156253(n+1)+1)`
-/

namespace A049705.P11525300029024936309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (n + 1) + 1).toNat

end

end A049705.P11525300029024936309

namespace A049705

/-- `A040001(A156253(n+1)+1)` -/
def P11525300029024936309.Spec : Prop :=
  ∀ n, P11525300029024936309.a n = A049705 (n + 1)

end A049705

/-! ## A049705.P9628838939249416792

`A010694(n)/A088570(n+1)`
-/

namespace A049705.P9628838939249416792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010694 n : ℚ) / (A088570 (n + 1) : ℚ)

end

end A049705.P9628838939249416792

namespace A049705

/-- `A010694(n)/A088570(n+1)` -/
def P9628838939249416792.Spec : Prop :=
  ∀ n, P9628838939249416792.a n = (A049705 (n + 1) : ℚ)

end A049705

/-! ## A049705.P14167148271577497198

`A088569(n+1)+A054354(n+1)`
-/

namespace A049705.P14167148271577497198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1) + A054354 (n + 1)

end

end A049705.P14167148271577497198

namespace A049705

/-- `A088569(n+1)+A054354(n+1)` -/
def P14167148271577497198.Spec : Prop :=
  ∀ n, P14167148271577497198.a n = A049705 (n + 1)

theorem P14167148271577497198.correct : P14167148271577497198.Spec := by
  intro n
  simp only [A049705, Nat.add_sub_cancel, A049705.P14167148271577497198.a, A049705.P11002765941806409636.a, A000002, A000002.P13330532946811820297.a, A054354, A054354.P7688672416916511946.f1, A054354.P7688672416916511946.a, A088569, A088569.P6705758619599044298.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049705

/-!
# A049706: a(n) = T(n,n+2), array T as in A049704.

The programs for A049706, the canonical program `A049706.P17426073301630217516` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049706 has offset 0).

The definition of A049706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049706.P6375257948081653084

`floor(cosh(log(A049697(n))))`
-/

namespace A049706.P6375257948081653084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A049697 n : ℝ))⌋

end

end A049706.P6375257948081653084

namespace A049706

/-- `floor(cosh(log(A049697(n))))` -/
def P6375257948081653084.Spec : Prop :=
  ∀ n, P6375257948081653084.a n = A049706 n

end A049706

/-! ## A049706.P9214902349389877571

`ceil(abs(3-A049633(n))/2)`
-/

namespace A049706.P9214902349389877571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|3 - A049633 n| : ℚ) / 2⌉

end

end A049706.P9214902349389877571

namespace A049706

/-- `ceil(abs(3-A049633(n))/2)` -/
def P9214902349389877571.Spec : Prop :=
  ∀ n, P9214902349389877571.a n = A049706 n

end A049706

/-! ## A049706.P10506674578960519105

`A004525(A049697(n))`
-/

namespace A049706.P10506674578960519105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049697 n).toNat

end

end A049706.P10506674578960519105

namespace A049706

/-- `A004525(A049697(n))` -/
def P10506674578960519105.Spec : Prop :=
  ∀ n, P10506674578960519105.a n = A049706 n

end A049706

/-! ## A049706.P17426073301630217516

`A101279(A049648(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049706

/-- `A101279(A049648(n))` -/
def P17426073301630217516.Spec : Prop :=
  ∀ n, P17426073301630217516.a n = A049706 n

theorem P17426073301630217516.correct : P17426073301630217516.Spec := by
  intro n
  simp only [A049706]

end A049706

/-! ## A049706.P8651150387591966197

`A057979(A049697(n)+1)`
-/

namespace A049706.P8651150387591966197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A049697 n + 1).toNat

end

end A049706.P8651150387591966197

namespace A049706

/-- `A057979(A049697(n)+1)` -/
def P8651150387591966197.Spec : Prop :=
  ∀ n, P8651150387591966197.a n = A049706 n

end A049706

/-! ## A049706.P11069810295293068927

`A065033(A049697(n)-1)`
-/

namespace A049706.P11069810295293068927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A049697 n - 1).toNat

end

end A049706.P11069810295293068927

namespace A049706

/-- `A065033(A049697(n)-1)` -/
def P11069810295293068927.Spec : Prop :=
  ∀ n, P11069810295293068927.a n = A049706 n

end A049706

/-! ## A049706.P10569110435409856362

`A123108(A049648(n)-1)`
-/

namespace A049706.P10569110435409856362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A049648 n - 1).toNat

end

end A049706.P10569110435409856362

namespace A049706

/-- `A123108(A049648(n)-1)` -/
def P10569110435409856362.Spec : Prop :=
  ∀ n, P10569110435409856362.a n = A049706 n

end A049706

/-! ## A049706.P11751606107537783046

`A049697(n)/A104435(n+1)`
-/

namespace A049706.P11751606107537783046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049697 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A049706.P11751606107537783046

namespace A049706

/-- `A049697(n)/A104435(n+1)` -/
def P11751606107537783046.Spec : Prop :=
  ∀ n, P11751606107537783046.a n = (A049706 n : ℚ)

end A049706

/-! ## A049706.P11901863900899080983

`floor(A049697(n)/A036453(n+1))`
-/

namespace A049706.P11901863900899080983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049697 n : ℚ) / (A036453 (n + 1) : ℚ)⌋

end

end A049706.P11901863900899080983

namespace A049706

/-- `floor(A049697(n)/A036453(n+1))` -/
def P11901863900899080983.Spec : Prop :=
  ∀ n, P11901863900899080983.a n = A049706 n

end A049706

/-! ## A049706.P13780902576772442718

`floor(A049697(n)/2*A054977(n))`
-/

namespace A049706.P13780902576772442718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049697 n : ℚ) / 2 * (A054977 n : ℚ)⌋

end

end A049706.P13780902576772442718

namespace A049706

/-- `floor(A049697(n)/2*A054977(n))` -/
def P13780902576772442718.Spec : Prop :=
  ∀ n, P13780902576772442718.a n = A049706 n

end A049706

/-! ## A049706.P9146062941105747051

`A049697(n)/A020639(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A049706.P9146062941105747051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049697 n : ℚ) / (A020639 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat : ℚ)

end

end A049706.P9146062941105747051

namespace A049706

/-- `A049697(n)/A020639(∑{d}[∏{p}[n+1, #], (n+1)/#])` -/
def P9146062941105747051.Spec : Prop :=
  ∀ n, P9146062941105747051.a n = (A049706 n : ℚ)

end A049706

/-! ## A049706.P7251096166112635770

`A049697(n)/A020639(A225531(n))`
-/

namespace A049706.P7251096166112635770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049697 n : ℚ) / (A020639 (A225531 n).toNat : ℚ)

end

end A049706.P7251096166112635770

namespace A049706

/-- `A049697(n)/A020639(A225531(n))` -/
def P7251096166112635770.Spec : Prop :=
  ∀ n, P7251096166112635770.a n = (A049706 n : ℚ)

end A049706

/-! ## A049706.P10069218658602630644

`floor(A049697(n)/A020639(A008574(n)))`
-/

namespace A049706.P10069218658602630644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049697 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)⌋

end

end A049706.P10069218658602630644

namespace A049706

/-- `floor(A049697(n)/A020639(A008574(n)))` -/
def P10069218658602630644.Spec : Prop :=
  ∀ n, P10069218658602630644.a n = A049706 n

end A049706

/-! ## A049706.P10763215253078445308

`A002088(n)+Δ[A004525(A002088(n))]`
-/

namespace A049706.P10763215253078445308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (f1 (n + 1) - f1 n)

end

end A049706.P10763215253078445308

namespace A049706

/-- `A002088(n)+Δ[A004525(A002088(n))]` -/
def P10763215253078445308.Spec : Prop :=
  ∀ n, P10763215253078445308.a n = A049706 n

end A049706

/-! ## A049706.P11390747514762361752

`A049697(n)/A020639(A001615(n+1))`
-/

namespace A049706.P11390747514762361752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049697 n : ℚ) / (A020639 (A001615 (n + 1)).toNat : ℚ)

end

end A049706.P11390747514762361752

namespace A049706

/-- `A049697(n)/A020639(A001615(n+1))` -/
def P11390747514762361752.Spec : Prop :=
  ∀ n, P11390747514762361752.a n = (A049706 n : ℚ)

end A049706

/-! ## A049706.P1660014376486579052

`A049697(n)/A020639(A053158(n+1))`
-/

namespace A049706.P1660014376486579052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049697 n : ℚ) / (A020639 (A053158 (n + 1)).toNat : ℚ)

end

end A049706.P1660014376486579052

namespace A049706

/-- `A049697(n)/A020639(A053158(n+1))` -/
def P1660014376486579052.Spec : Prop :=
  ∀ n, P1660014376486579052.a n = (A049706 n : ℚ)

end A049706

/-! ## A049706.P11370973975703775922

`floor(A049697(n)/A020639(A000010(n+2)))`
-/

namespace A049706.P11370973975703775922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049697 n : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)⌋

end

end A049706.P11370973975703775922

namespace A049706

/-- `floor(A049697(n)/A020639(A000010(n+2)))` -/
def P11370973975703775922.Spec : Prop :=
  ∀ n, P11370973975703775922.a n = A049706 n

end A049706

/-! ## A049706.P2695332045413053455

`A326139(A206297(n+1)+A109606(n+1))`
-/

namespace A049706.P2695332045413053455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A206297 (n + 1) + A109606 (n + 1)).toNat

end

end A049706.P2695332045413053455

namespace A049706

/-- `A326139(A206297(n+1)+A109606(n+1))` -/
def P2695332045413053455.Spec : Prop :=
  ∀ n, P2695332045413053455.a n = A049706 n

end A049706

/-! ## A049706.P5246765313466538285

`(A002088(n+1)+A002088(n))/A020639(A053158(n+1))`
-/

namespace A049706.P5246765313466538285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) + A002088 n : ℚ) / (A020639 (A053158 (n + 1)).toNat : ℚ)

end

end A049706.P5246765313466538285

namespace A049706

/-- `(A002088(n+1)+A002088(n))/A020639(A053158(n+1))` -/
def P5246765313466538285.Spec : Prop :=
  ∀ n, P5246765313466538285.a n = (A049706 n : ℚ)

end A049706

/-!
# A049707: a(n) = T(n,n+3), array T as in A049704.

The programs for A049707, there is no canonical definition to state claims against.
-/

/-! ## A049707.P17230910320844967144

`A049704(∑[a(n-1)+4])` with `a(0)=6`
-/

namespace A049707.P17230910320844967144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049707.P17230910320844967144

/-! ## A049707.P4955950060750709817

`A049704(2*(n+1)*(n+3))`
-/

namespace A049707.P4955950060750709817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049704 (2 * ((n + 1) * (n + 3)))

end

end A049707.P4955950060750709817

/-! ## A049707.P12529360400421309918

`gcd(C(2, n+2), A049704(A054000(n+2)))`
-/

namespace A049707.P12529360400421309918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A049704 (A054000 (n + 2)).toNat)

end

end A049707.P12529360400421309918

/-! ## A049707.P18240931478367216114

`A053616(∑[n])+A049704(A054000(n+2))`
-/

namespace A049707.P18240931478367216114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (∑ j ∈ Finset.range (n + 1), f1 j) + A049704 (A054000 (n + 2)).toNat

end

end A049707.P18240931478367216114

/-! ## A049707.P10108590662269603126

`A049704(A054000(n+2))/A292973(∑[n])`
-/

namespace A049707.P10108590662269603126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049704 (A054000 (n + 2)).toNat : ℚ) / (A292973 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A049707.P10108590662269603126

/-!
# A049708: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049704.

The programs for A049708, there is no canonical definition to state claims against.
-/

/-! ## A049708.P11444419277382820070

`record[A361166(n+1)+A139251(n)]`
-/

namespace A049708.P11444419277382820070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361166 (n + 1) + A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049708.P11444419277382820070

/-! ## A049708.P12522006281035847670

`A003002(ceil(sin(n)²)*A068911(n))`
-/

namespace A049708.P12522006281035847670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (⌈Real.sin (n : ℝ) ^ 2⌉ * A068911 n).toNat

end

end A049708.P12522006281035847670

/-! ## A049708.P17967718435142618394

`record[A158589(3*(n+1))%A066010(n+2)]`
-/

namespace A049708.P17967718435142618394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158589 (3 * (n + 1))) (A066010 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049708.P17967718435142618394

/-! ## A049708.P14347039812976525709

`record[lcm(A024361(n+1), A085033(2*(n+2)))]`
-/

namespace A049708.P14347039812976525709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024361 (n + 1)) (A085033 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049708.P14347039812976525709

/-! ## A049708.P596247932314041080

`A003002(A049704(n)*A068911(n))`
-/

namespace A049708.P596247932314041080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A049704 n * A068911 n).toNat

end

end A049708.P596247932314041080

/-!
# A049709: a(n) = (1/2) * Sum_{i=0..n} T(i,n-i), array T as in A049704.

The programs for A049709, there is no canonical definition to state claims against.
-/

/-! ## A049709.P4440837802182513701

`A049708(n+3)/2`
-/

namespace A049709.P4440837802182513701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049708 (n + 3) : ℚ) / 2

end

end A049709.P4440837802182513701

/-! ## A049709.P7378812678234110709

`A175126(A049708(n+3))`
-/

namespace A049709.P7378812678234110709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A049708 (n + 3)).toNat

end

end A049709.P7378812678234110709

/-! ## A049709.P8352662072581123130

`A004524(A049708(n+3)+1)`
-/

namespace A049709.P8352662072581123130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A049708 (n + 3) + 1).toNat

end

end A049709.P8352662072581123130

/-! ## A049709.P4493997830986062044

`A004526(A049708(n+3)+1)`
-/

namespace A049709.P4493997830986062044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049708 (n + 3) + 1).toNat

end

end A049709.P4493997830986062044

/-! ## A049709.P16167053356634237701

`A057979(A049708(n+3)+1)`
-/

namespace A049709.P16167053356634237701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A049708 (n + 3) + 1).toNat

end

end A049709.P16167053356634237701

/-! ## A049709.P11975048856648779735

`A000463(A049708(n+3)-1)`
-/

namespace A049709.P11975048856648779735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A049708 (n + 3) - 1).toNat

end

end A049709.P11975048856648779735

/-! ## A049709.P9860066733629242091

`A001057(A049708(n+3)-1)`
-/

namespace A049709.P9860066733629242091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A049708 (n + 3) - 1).toNat

end

end A049709.P9860066733629242091

/-! ## A049709.P3378852780191709065

`A003602(A049708(n+3)-1)`
-/

namespace A049709.P3378852780191709065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A049708 (n + 3) - 1).toNat

end

end A049709.P3378852780191709065

/-!
# A049710: a(n)=3-k(n), where k=A006928; also, a and k have the same runlength sequence, with n-th term k(n-1) for n >= 2.

The programs for A049710, the canonical program `A049710.P6790608665925512686` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049710 has offset 1).

The definition of A049710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049710.P6790608665925512686

`3-A006928(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049710

/-- `3-A006928(n+1)` -/
def P6790608665925512686.Spec : Prop :=
  ∀ n, P6790608665925512686.a n = A049710 (n + 1)

theorem P6790608665925512686.correct : P6790608665925512686.Spec := by
  intro n
  simp only [A049710, Nat.add_sub_cancel]

end A049710

/-! ## A049710.P3187427226761778576

`A088569(abs(1-n)+2)`
-/

namespace A049710.P3187427226761778576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (|1 - (n : ℤ)| + 2).toNat

end

end A049710.P3187427226761778576

namespace A049710

/-- `A088569(abs(1-n)+2)` -/
def P3187427226761778576.Spec : Prop :=
  ∀ n, P3187427226761778576.a n = A049710 (n + 1)

end A049710

/-! ## A049710.P16648198481863928015

`a(A088569(n+1))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A049710.P16648198481863928015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (A088569 (n + 1)).toNat

end

end A049710.P16648198481863928015

namespace A049710

/-- `a(A088569(n+1))` -/
def P16648198481863928015.Spec : Prop :=
  ∀ n, (P16648198481863928015.a n : ℤ) = A049710 (n + 1)

end A049710

/-! ## A049710.P13134953026897735279

`a(log2(A078880(n+1)))` with `a(0)=2, a(1)=1`
-/

namespace A049710.P13134953026897735279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A078880 (n + 1) : ℝ))).toNat

end

end A049710.P13134953026897735279

namespace A049710

/-- `a(log2(A078880(n+1)))` -/
def P13134953026897735279.Spec : Prop :=
  ∀ n, (P13134953026897735279.a n : ℤ) = A049710 (n + 1)

end A049710

/-! ## A049710.P264317311104749324

`a(log2(A000002(n+2)))` with `a(0)=2, a(1)=1`
-/

namespace A049710.P264317311104749324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A000002 (n + 2) : ℝ))).toNat

end

end A049710.P264317311104749324

namespace A049710

/-- `a(log2(A000002(n+2)))` -/
def P264317311104749324.Spec : Prop :=
  ∀ n, (P264317311104749324.a n : ℤ) = A049710 (n + 1)

end A049710

/-! ## A049710.P1753928960943633525

`a(∑[A054354(n+1)])` with `a(0)=2, a(1)=1`
-/

namespace A049710.P1753928960943633525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049710.P1753928960943633525

namespace A049710

/-- `a(∑[A054354(n+1)])` -/
def P1753928960943633525.Spec : Prop :=
  ∀ n, (P1753928960943633525.a n : ℤ) = A049710 (n + 1)

end A049710

/-! ## A049710.P7360313817285835578

`char[A022297(n+1)-1]+1`
-/

namespace A049710.P7360313817285835578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A049710.P7360313817285835578

namespace A049710

/-- `char[A022297(n+1)-1]+1` -/
def P7360313817285835578.Spec : Prop :=
  ∀ n, (P7360313817285835578.a n : ℤ) = A049710 (n + 1)

end A049710

/-! ## A049710.P17300575839554556419

`2-log2(A006928(-xor(n, -1)))`
-/

namespace A049710.P17300575839554556419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (A006928 (-Int.xor (n : ℤ) (-1)).toNat : ℝ)

end

end A049710.P17300575839554556419

namespace A049710

/-- `2-log2(A006928(-xor(n, -1)))` -/
def P17300575839554556419.Spec : Prop :=
  ∀ n, P17300575839554556419.a n = (A049710 (n + 1) : ℝ)

end A049710

/-! ## A049710.P5361445615162290864

`2/A006928(A000027(n+1))`
-/

namespace A049710.P5361445615162290864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006928 (A000027 (n + 1)).toNat : ℚ)

end

end A049710.P5361445615162290864

namespace A049710

/-- `2/A006928(A000027(n+1))` -/
def P5361445615162290864.Spec : Prop :=
  ∀ n, P5361445615162290864.a n = (A049710 (n + 1) : ℚ)

end A049710

/-! ## A049710.P2318247218919910071

`2/A000002(A065475(n+1))`
-/

namespace A049710.P2318247218919910071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000002 (A065475 (n + 1)).toNat : ℚ)

end

end A049710.P2318247218919910071

namespace A049710

/-- `2/A000002(A065475(n+1))` -/
def P2318247218919910071.Spec : Prop :=
  ∀ n, P2318247218919910071.a n = (A049710 (n + 1) : ℚ)

end A049710

/-! ## A049710.P16820423176706970393

`A088569(n+1)+A000007(n)`
-/

namespace A049710.P16820423176706970393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1) + A000007 n

end

end A049710.P16820423176706970393

namespace A049710

/-- `A088569(n+1)+A000007(n)` -/
def P16820423176706970393.Spec : Prop :=
  ∀ n, P16820423176706970393.a n = A049710 (n + 1)

end A049710

/-! ## A049710.P17627996428206183017

`A054977(n)*A088569(n+1)`
-/

namespace A049710.P17627996428206183017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A088569 (n + 1)

end

end A049710.P17627996428206183017

namespace A049710

/-- `A054977(n)*A088569(n+1)` -/
def P17627996428206183017.Spec : Prop :=
  ∀ n, P17627996428206183017.a n = A049710 (n + 1)

end A049710

/-! ## A049710.P17399566965237540701

`2/A000002(floor(sqrt(A028878(n))))`
-/

namespace A049710.P17399566965237540701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000002 (Int.sqrt (A028878 n)).toNat : ℚ)

end

end A049710.P17399566965237540701

namespace A049710

/-- `2/A000002(floor(sqrt(A028878(n))))` -/
def P17399566965237540701.Spec : Prop :=
  ∀ n, P17399566965237540701.a n = (A049710 (n + 1) : ℚ)

end A049710

/-! ## A049710.P12001187386986754754

`2/A000002(ceil(sqrt(A028387(n))))`
-/

namespace A049710.P12001187386986754754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000002 ⌈Real.sqrt (A028387 n : ℝ)⌉.toNat : ℚ)

end

end A049710.P12001187386986754754

namespace A049710

/-- `2/A000002(ceil(sqrt(A028387(n))))` -/
def P12001187386986754754.Spec : Prop :=
  ∀ n, P12001187386986754754.a n = (A049710 (n + 1) : ℚ)

end A049710

/-! ## A049710.P3605971851511759674

`a(A001222(a(A006928(n+1))))` with `a(0)=2, a(1)=1`
-/

namespace A049710.P3605971851511759674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (A001222 (a (A006928 (n + 1)).toNat)).toNat

end

end A049710.P3605971851511759674

namespace A049710

/-- `a(A001222(a(A006928(n+1))))` -/
def P3605971851511759674.Spec : Prop :=
  ∀ n, (P3605971851511759674.a n : ℤ) = A049710 (n + 1)

end A049710

/-! ## A049710.P15349196666165507709

`A054977(n)+2-A078880(n+1)`
-/

namespace A049710.P15349196666165507709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (2 - A078880 (n + 1))

end

end A049710.P15349196666165507709

namespace A049710

/-- `A054977(n)+2-A078880(n+1)` -/
def P15349196666165507709.Spec : Prop :=
  ∀ n, P15349196666165507709.a n = A049710 (n + 1)

end A049710

/-!
# A049711: a(n) = n - prevprime(n).

The programs for A049711, the canonical program `A049711.P4440062402042869045` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049711 has offset 3).

The definition of A049711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064722, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049711.P7209243630517445536

`n+3-A007917(n+2)`
-/

namespace A049711.P7209243630517445536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A007917 (n + 2)

end

end A049711.P7209243630517445536

namespace A049711

/-- `n+3-A007917(n+2)` -/
def P7209243630517445536.Spec : Prop :=
  ∀ n, P7209243630517445536.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P4440062402042869045

`A064722(n+2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049711

/-- `A064722(n+2)+1` -/
def P4440062402042869045.Spec : Prop :=
  ∀ n, P4440062402042869045.a n = A049711 (n + 3)

theorem P4440062402042869045.correct : P4440062402042869045.Spec := by
  intro n
  simp only [A049711, Nat.add_sub_cancel]

end A049711

/-! ## A049711.P91442417134173634

`A175851(n+2)`
-/

namespace A049711.P91442417134173634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

end

end A049711.P91442417134173634

namespace A049711

/-- `A175851(n+2)` -/
def P91442417134173634.Spec : Prop :=
  ∀ n, P91442417134173634.a n = A049711 (n + 3)

theorem P91442417134173634.correct : P91442417134173634.Spec := by
  intro n
  simp only [A049711, Nat.add_sub_cancel, A049711.P91442417134173634.a, A049711.P4440062402042869045.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049711

/-! ## A049711.P15438329448723456173

`A308050(n+4)-1`
-/

namespace A049711.P15438329448723456173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (n + 4) - 1

end

end A049711.P15438329448723456173

namespace A049711

/-- `A308050(n+4)-1` -/
def P15438329448723456173.Spec : Prop :=
  ∀ n, P15438329448723456173.a n = A049711 (n + 3)

theorem P15438329448723456173.correct : P15438329448723456173.Spec := by
  intro n
  simp only [A049711, Nat.add_sub_cancel, A049711.P15438329448723456173.a, A049711.P4440062402042869045.a, A064722, A064722.P17255395012520951887.a, A308050, A308050.P10480352126798774821.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049711

/-! ## A049711.P13344632265382181564

`∑{d}[n+2, A305806(#)]`
-/

namespace A049711.P13344632265382181564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305806 d

end

end A049711.P13344632265382181564

namespace A049711

/-- `∑{d}[n+2, A305806(#)]` -/
def P13344632265382181564.Spec : Prop :=
  ∀ n, P13344632265382181564.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P9803385116696621534

`A033557(n+3)-(n+3)`
-/

namespace A049711.P9803385116696621534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033557 (n + 3) - (n + 3 : ℤ)

end

end A049711.P9803385116696621534

namespace A049711

/-- `A033557(n+3)-(n+3)` -/
def P9803385116696621534.Spec : Prop :=
  ∀ n, P9803385116696621534.a n = A049711 (n + 3)

theorem P9803385116696621534.correct : P9803385116696621534.Spec := by
  intro n
  simp only [A049711, Nat.add_sub_cancel, A049711.P9803385116696621534.a, A049711.P4440062402042869045.a, A033557, A033557.P15478102425626913345.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049711

/-! ## A049711.P7850428968115582239

`2*(n+3)-A013635(n+3)`
-/

namespace A049711.P7850428968115582239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A013635 (n + 3)

end

end A049711.P7850428968115582239

namespace A049711

/-- `2*(n+3)-A013635(n+3)` -/
def P7850428968115582239.Spec : Prop :=
  ∀ n, P7850428968115582239.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P16182372222128762539

`(n+3-A345668(n+3))/2`
-/

namespace A049711.P16182372222128762539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A345668 (n + 3) : ℚ) / 2

end

end A049711.P16182372222128762539

namespace A049711

/-- `(n+3-A345668(n+3))/2` -/
def P16182372222128762539.Spec : Prop :=
  ∀ n, P16182372222128762539.a n = (A049711 (n + 3) : ℚ)

theorem P16182372222128762539.correct : P16182372222128762539.Spec := by
  intro n
  simp only [A049711, Nat.add_sub_cancel, A049711.P16182372222128762539.a, A049711.P4440062402042869045.a, A064722, A064722.P17255395012520951887.a, A345668, A345668.P4398126403795898940.a, A175851, A175851.P13592010490707745070.a, A175856, A175856.P13215807738889420678.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049711

/-! ## A049711.P18275430436038261681

`n+3-A013637(n+3)/(n+3)`
-/

namespace A049711.P18275430436038261681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (A013637 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A049711.P18275430436038261681

namespace A049711

/-- `n+3-A013637(n+3)/(n+3)` -/
def P18275430436038261681.Spec : Prop :=
  ∀ n, P18275430436038261681.a n = (A049711 (n + 3) : ℚ)

theorem P18275430436038261681.correct : P18275430436038261681.Spec := by
  intro n
  simp only [A049711, Nat.add_sub_cancel, A049711.P18275430436038261681.a, A049711.P4440062402042869045.a, A013637, A013637.P6516056796817610604.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049711

/-! ## A049711.P5507855067317591972

`A000720(A065151(n+2))`
-/

namespace A049711.P5507855067317591972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065151 (n + 2)).toNat

end

end A049711.P5507855067317591972

namespace A049711

/-- `A000720(A065151(n+2))` -/
def P5507855067317591972.Spec : Prop :=
  ∀ n, P5507855067317591972.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P11178050187644525280

`n-A086801(A000720(n+2))`
-/

namespace A049711.P11178050187644525280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A086801 (A000720 (n + 2)).toNat

end

end A049711.P11178050187644525280

namespace A049711

/-- `n-A086801(A000720(n+2))` -/
def P11178050187644525280.Spec : Prop :=
  ∀ n, P11178050187644525280.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P3772655527856124142

`A020739(n)%A013635(n+3)`
-/

namespace A049711.P3772655527856124142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020739 n) (A013635 (n + 3))

end

end A049711.P3772655527856124142

namespace A049711

/-- `A020739(n)%A013635(n+3)` -/
def P3772655527856124142.Spec : Prop :=
  ∀ n, P3772655527856124142.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P18250930228853092836

`A020742(n)-(A013635(n+3)+1)`
-/

namespace A049711.P18250930228853092836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n - (A013635 (n + 3) + 1)

end

end A049711.P18250930228853092836

namespace A049711

/-- `A020742(n)-(A013635(n+3)+1)` -/
def P18250930228853092836.Spec : Prop :=
  ∀ n, P18250930228853092836.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P3826684588711562198

`n+2-A349127(A151800(n+2))`
-/

namespace A049711.P3826684588711562198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A349127 (A151800 (n + 2)).toNat

end

end A049711.P3826684588711562198

namespace A049711

/-- `n+2-A349127(A151800(n+2))` -/
def P3826684588711562198.Spec : Prop :=
  ∀ n, P3826684588711562198.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P6444716788363367112

`A033557(n+3)%A009056(n+1)`
-/

namespace A049711.P6444716788363367112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033557 (n + 3)) (A009056 (n + 1))

end

end A049711.P6444716788363367112

namespace A049711

/-- `A033557(n+3)%A009056(n+1)` -/
def P6444716788363367112.Spec : Prop :=
  ∀ n, P6444716788363367112.a n = A049711 (n + 3)

end A049711

/-! ## A049711.P4369170649113124747

`A013635(n+3)%A007917(n+2)`
-/

namespace A049711.P4369170649113124747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013635 (n + 3)) (A007917 (n + 2))

end

end A049711.P4369170649113124747

namespace A049711

/-- `A013635(n+3)%A007917(n+2)` -/
def P4369170649113124747.Spec : Prop :=
  ∀ n, P4369170649113124747.a n = A049711 (n + 3)

end A049711

/-!
# A049712: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A048149.

The programs for A049712, there is no canonical definition to state claims against.
-/

/-! ## A049712.P14283304727594676906

`A211806(n+1)+A007814(A110377(n+1))`
-/

namespace A049712.P14283304727594676906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211806 (n + 1) + A007814 (A110377 (n + 1)).toNat

end

end A049712.P14283304727594676906

/-! ## A049712.P8951204070444312053

`∑[∑[A344372(A292125(n+1))]]`
-/

namespace A049712.P8951204070444312053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344372 (A292125 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049712.P8951204070444312053

/-!
# A049713: a(n) = Sum_{i=0..2n} (-1)^i * T(i,2n-i), array T as in A048149.

The programs for A049713, there is no canonical definition to state claims against.
-/

/-! ## A049713.P3676553985217950876

`floor(A049725(n)²/A049737(n))`
-/

namespace A049713.P3676553985217950876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049725 n ^ 2 : ℚ) / (A049737 n : ℚ)⌋

end

end A049713.P3676553985217950876

/-! ## A049713.P6865262689879857109

`round(A049725(n)²/A049737(n))%A002148(n)`
-/

namespace A049713.P6865262689879857109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049725 n ^ 2 : ℚ) / (A049737 n : ℚ))) (A002148 n)

end

end A049713.P6865262689879857109

/-! ## A049713.P5085392680768212676

`A000007(n+1)+round(A049725(n)²/A049737(n))`
-/

namespace A049713.P5085392680768212676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A049725 n ^ 2 : ℚ) / (A049737 n : ℚ))

end

end A049713.P5085392680768212676

/-! ## A049713.P1846629445004744148

`A000035(4*n)+round(A049725(n)²/A049737(n))`
-/

namespace A049713.P1846629445004744148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) + SequenceMachineLib.roundAway ((A049725 n ^ 2 : ℚ) / (A049737 n : ℚ))

end

end A049713.P1846629445004744148

/-! ## A049713.P2297940638095755404

`A000027(round(A049725(n)²/A049737(n)))`
-/

namespace A049713.P2297940638095755404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A049725 n ^ 2 : ℚ) / (A049737 n : ℚ))).toNat

end

end A049713.P2297940638095755404

/-!
# A049715: a(n)=T(n,0), array T as in A049747.

The programs for A049715, the canonical program `A049715.P11687973096568825329` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049715 has offset 0).

The definition of A049715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049715.P11687973096568825329

`A176562(n)+A057427(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049715

/-- `A176562(n)+A057427(n)` -/
def P11687973096568825329.Spec : Prop :=
  ∀ n, P11687973096568825329.a n = A049715 n

theorem P11687973096568825329.correct : P11687973096568825329.Spec := by
  intro n
  simp only [A049715]

end A049715

/-! ## A049715.P6997519168225502831

`A176562(n)-A057428(n)`
-/

namespace A049715.P6997519168225502831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n - A057428 n

end

end A049715.P6997519168225502831

namespace A049715

/-- `A176562(n)-A057428(n)` -/
def P6997519168225502831.Spec : Prop :=
  ∀ n, P6997519168225502831.a n = A049715 n

end A049715

/-! ## A049715.P14658806140168850215

`A176562(n)+1-A000007(n)`
-/

namespace A049715.P14658806140168850215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + (1 - A000007 n)

end

end A049715.P14658806140168850215

namespace A049715

/-- `A176562(n)+1-A000007(n)` -/
def P14658806140168850215.Spec : Prop :=
  ∀ n, P14658806140168850215.a n = A049715 n

end A049715

/-! ## A049715.P12165482762055996216

`(A176562(n)+1)%A000328(n)`
-/

namespace A049715.P12165482762055996216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176562 n + 1) (A000328 n)

end

end A049715.P12165482762055996216

namespace A049715

/-- `(A176562(n)+1)%A000328(n)` -/
def P12165482762055996216.Spec : Prop :=
  ∀ n, P12165482762055996216.a n = A049715 n

end A049715

/-! ## A049715.P2596003234369890884

`A176562(n)+char[A003602(n+1)]`
-/

namespace A049715.P2596003234369890884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049715.P2596003234369890884

namespace A049715

/-- `A176562(n)+char[A003602(n+1)]` -/
def P2596003234369890884.Spec : Prop :=
  ∀ n, P2596003234369890884.a n = A049715 n

end A049715

/-! ## A049715.P6584108788180576960

`A176562(n)+p?[comp[A018252(n+1)]]%2`
-/

namespace A049715.P6584108788180576960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 2 : ℕ) : ℤ)

end

end A049715.P6584108788180576960

namespace A049715

/-- `A176562(n)+p?[comp[A018252(n+1)]]%2` -/
def P6584108788180576960.Spec : Prop :=
  ∀ n, P6584108788180576960.a n = A049715 n

end A049715

/-! ## A049715.P13047976862506024343

`A176562(n)+A001221(A001316(n))`
-/

namespace A049715.P13047976862506024343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A001221 (A001316 n).toNat

end

end A049715.P13047976862506024343

namespace A049715

/-- `A176562(n)+A001221(A001316(n))` -/
def P13047976862506024343.Spec : Prop :=
  ∀ n, P13047976862506024343.a n = A049715 n

end A049715

/-! ## A049715.P12129772402505792259

`A176562(n)+A001221(A000961(n+1))`
-/

namespace A049715.P12129772402505792259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A001221 (A000961 (n + 1)).toNat

end

end A049715.P12129772402505792259

namespace A049715

/-- `A176562(n)+A001221(A000961(n+1))` -/
def P12129772402505792259.Spec : Prop :=
  ∀ n, P12129772402505792259.a n = A049715 n

end A049715

/-! ## A049715.P12151373221567924986

`A176562(n)+A001222(A008578(n+1))`
-/

namespace A049715.P12151373221567924986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A001222 (A008578 (n + 1)).toNat

end

end A049715.P12151373221567924986

namespace A049715

/-- `A176562(n)+A001222(A008578(n+1))` -/
def P12151373221567924986.Spec : Prop :=
  ∀ n, P12151373221567924986.a n = A049715 n

end A049715

/-! ## A049715.P17533188635817762305

`A176562(n)+A000035(record[A020639(n+2)])`
-/

namespace A049715.P17533188635817762305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A000035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049715.P17533188635817762305

namespace A049715

/-- `A176562(n)+A000035(record[A020639(n+2)])` -/
def P17533188635817762305.Spec : Prop :=
  ∀ n, P17533188635817762305.a n = A049715 n

end A049715

/-! ## A049715.P16490981032363849911

`A176562(n)+A000051(n)%2`
-/

namespace A049715.P16490981032363849911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + Int.tmod (A000051 n) 2

end

end A049715.P16490981032363849911

namespace A049715

/-- `A176562(n)+A000051(n)%2` -/
def P16490981032363849911.Spec : Prop :=
  ∀ n, P16490981032363849911.a n = A049715 n

end A049715

/-! ## A049715.P14169179079948924896

`A049747(∑[n])`
-/

namespace A049715.P14169179079948924896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049715.P14169179079948924896

namespace A049715

/-- `A049747(∑[n])` -/
def P14169179079948924896.Spec : Prop :=
  ∀ n, P14169179079948924896.a n = A049715 n

end A049715

/-! ## A049715.P16650432174578615271

`record[A049747(n)]`
-/

namespace A049715.P16650432174578615271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049715.P16650432174578615271

namespace A049715

/-- `record[A049747(n)]` -/
def P16650432174578615271.Spec : Prop :=
  ∀ n, P16650432174578615271.a n = A049715 n

end A049715

/-! ## A049715.P9118339452989642035

`A049751(∑[n])/2`
-/

namespace A049715.P9118339452989642035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A049715.P9118339452989642035

namespace A049715

/-- `A049751(∑[n])/2` -/
def P9118339452989642035.Spec : Prop :=
  ∀ n, P9118339452989642035.a n = (A049715 n : ℚ)

end A049715

/-! ## A049715.P16420740121832883250

`A176562(n)+A001221(A025475(n+1))`
-/

namespace A049715.P16420740121832883250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A001221 (A025475 (n + 1)).toNat

end

end A049715.P16420740121832883250

namespace A049715

/-- `A176562(n)+A001221(A025475(n+1))` -/
def P16420740121832883250.Spec : Prop :=
  ∀ n, P16420740121832883250.a n = A049715 n

end A049715

/-! ## A049715.P14737257786961119570

`A004526(A049751(∑[n]))`
-/

namespace A049715.P14737257786961119570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049751 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049715.P14737257786961119570

namespace A049715

/-- `A004526(A049751(∑[n]))` -/
def P14737257786961119570.Spec : Prop :=
  ∀ n, P14737257786961119570.a n = A049715 n

end A049715

/-! ## A049715.P10922993675861822694

`A305117(n²)+A057427(n)`
-/

namespace A049715.P10922993675861822694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2) + A057427 n

end

end A049715.P10922993675861822694

namespace A049715

/-- `A305117(n²)+A057427(n)` -/
def P10922993675861822694.Spec : Prop :=
  ∀ n, P10922993675861822694.a n = A049715 n

end A049715

/-! ## A049715.P3002513533839254573

`A305117(n²)+A178334(n)`
-/

namespace A049715.P3002513533839254573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2) + A178334 n

end

end A049715.P3002513533839254573

namespace A049715

/-- `A305117(n²)+A178334(n)` -/
def P3002513533839254573.Spec : Prop :=
  ∀ n, P3002513533839254573.a n = A049715 n

end A049715

/-! ## A049715.P10080356954005878031

`A305117(n²)-A057428(n)`
-/

namespace A049715.P10080356954005878031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2) - A057428 n

end

end A049715.P10080356954005878031

namespace A049715

/-- `A305117(n²)-A057428(n)` -/
def P10080356954005878031.Spec : Prop :=
  ∀ n, P10080356954005878031.a n = A049715 n

end A049715

/-!
# A049716: a(n) = 2*n + 1 - prevprime(2*n + 1).

The programs for A049716, the canonical program `A049716.P16933746543691876245` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049716 has offset 1).

The definition of A049716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049716.P16933746543691876245

`A049711(2*n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049716

/-- `A049711(2*n+3)` -/
def P16933746543691876245.Spec : Prop :=
  ∀ n, P16933746543691876245.a n = A049716 (n + 1)

theorem P16933746543691876245.correct : P16933746543691876245.Spec := by
  intro n
  simp only [A049716, Nat.add_sub_cancel]

end A049716

/-! ## A049716.P17970975983282390871

`2*(n+1)+1-A007917(2*(n+1))`
-/

namespace A049716.P17970975983282390871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1 : ℤ) - A007917 (2 * (n + 1))

end

end A049716.P17970975983282390871

namespace A049716

/-- `2*(n+1)+1-A007917(2*(n+1))` -/
def P17970975983282390871.Spec : Prop :=
  ∀ n, P17970975983282390871.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P11927365401044737089

`A238737(n)+1`
-/

namespace A049716.P11927365401044737089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n + 1

end

end A049716.P11927365401044737089

namespace A049716

/-- `A238737(n)+1` -/
def P11927365401044737089.Spec : Prop :=
  ∀ n, P11927365401044737089.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P17078455688681769899

`A175851(2*(n+1))`
-/

namespace A049716.P17078455688681769899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 1))

end

end A049716.P17078455688681769899

namespace A049716

/-- `A175851(2*(n+1))` -/
def P17078455688681769899.Spec : Prop :=
  ∀ n, P17078455688681769899.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P7598295909542276317

`2*n+3-A060308(n+1)`
-/

namespace A049716.P7598295909542276317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A060308 (n + 1)

end

end A049716.P7598295909542276317

namespace A049716

/-- `2*n+3-A060308(n+1)` -/
def P7598295909542276317.Spec : Prop :=
  ∀ n, P7598295909542276317.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P12380416986168973181

`2*n+1-∑[A096501(2*n+1)]`
-/

namespace A049716.P12380416986168973181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049716.P12380416986168973181

namespace A049716

/-- `2*n+1-∑[A096501(2*n+1)]` -/
def P12380416986168973181.Spec : Prop :=
  ∀ n, P12380416986168973181.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P1833176484985766581

`A144396(n+1)%A060308(n+1)`
-/

namespace A049716.P1833176484985766581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A060308 (n + 1))

end

end A049716.P1833176484985766581

namespace A049716

/-- `A144396(n+1)%A060308(n+1)` -/
def P1833176484985766581.Spec : Prop :=
  ∀ n, P1833176484985766581.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P10277849677121208168

`A175851(A004277(n+1))%(n+3)`
-/

namespace A049716.P10277849677121208168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175851 (A004277 (n + 1)).toNat) (n + 3 : ℤ)

end

end A049716.P10277849677121208168

namespace A049716

/-- `A175851(A004277(n+1))%(n+3)` -/
def P10277849677121208168.Spec : Prop :=
  ∀ n, P10277849677121208168.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P5988916900674056694

`A033558(n+1)+1-A308022(n+2)`
-/

namespace A049716.P5988916900674056694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (n + 1) + (1 - A308022 (n + 2))

end

end A049716.P5988916900674056694

namespace A049716

/-- `A033558(n+1)+1-A308022(n+2)` -/
def P5988916900674056694.Spec : Prop :=
  ∀ n, P5988916900674056694.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P8643880680392997113

`2*n+1-A040976(A000720(2*(n+1)))`
-/

namespace A049716.P8643880680392997113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A040976 (A000720 (2 * (n + 1))).toNat

end

end A049716.P8643880680392997113

namespace A049716

/-- `2*n+1-A040976(A000720(2*(n+1)))` -/
def P8643880680392997113.Spec : Prop :=
  ∀ n, P8643880680392997113.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P8025030876504570272

`A151800(2*n+1)+1-A119257(2*(n+1))`
-/

namespace A049716.P8025030876504570272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n + 1) + (1 - A119257 (2 * (n + 1)))

end

end A049716.P8025030876504570272

namespace A049716

/-- `A151800(2*n+1)+1-A119257(2*(n+1))` -/
def P8025030876504570272.Spec : Prop :=
  ∀ n, P8025030876504570272.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P377098063569185109

`A065358(A064973(A175851(n+2+n)))`
-/

namespace A049716.P377098063569185109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 (A064973 (A175851 (n + 2 + n)).toNat).toNat

end

end A049716.P377098063569185109

namespace A049716

/-- `A065358(A064973(A175851(n+2+n)))` -/
def P377098063569185109.Spec : Prop :=
  ∀ n, P377098063569185109.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P1440502154561471800

`A064722(2*(n+1))+1`
-/

namespace A049716.P1440502154561471800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (2 * (n + 1)) + 1

end

end A049716.P1440502154561471800

namespace A049716

/-- `A064722(2*(n+1))+1` -/
def P1440502154561471800.Spec : Prop :=
  ∀ n, P1440502154561471800.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P11986001365207443202

`A308050(2*(n+2))-1`
-/

namespace A049716.P11986001365207443202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (2 * (n + 2)) - 1

end

end A049716.P11986001365207443202

namespace A049716

/-- `A308050(2*(n+2))-1` -/
def P11986001365207443202.Spec : Prop :=
  ∀ n, P11986001365207443202.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P13725849261834782006

`A033557(2*n+3)-(2*n+3)`
-/

namespace A049716.P13725849261834782006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033557 (2 * n + 3) - (2 * n + 3 : ℤ)

end

end A049716.P13725849261834782006

namespace A049716

/-- `A033557(2*n+3)-(2*n+3)` -/
def P13725849261834782006.Spec : Prop :=
  ∀ n, P13725849261834782006.a n = A049716 (n + 1)

theorem P13725849261834782006.correct : P13725849261834782006.Spec := by
  intro n
  simp only [A049716, Nat.add_sub_cancel, A049716.P13725849261834782006.a, A049716.P16933746543691876245.a, A033557, A033557.P15478102425626913345.a, A049711, A049711.P4440062402042869045.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049716

/-! ## A049716.P330315297038991104

`A000720(A065151(2*(n+1)))`
-/

namespace A049716.P330315297038991104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065151 (2 * (n + 1))).toNat

end

end A049716.P330315297038991104

namespace A049716

/-- `A000720(A065151(2*(n+1)))` -/
def P330315297038991104.Spec : Prop :=
  ∀ n, P330315297038991104.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P7811395706108430007

`A020739(2*n)-A013635(2*n+3)`
-/

namespace A049716.P7811395706108430007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (2 * n) - A013635 (2 * n + 3)

end

end A049716.P7811395706108430007

namespace A049716

/-- `A020739(2*n)-A013635(2*n+3)` -/
def P7811395706108430007.Spec : Prop :=
  ∀ n, P7811395706108430007.a n = A049716 (n + 1)

end A049716

/-! ## A049716.P2792399652247099328

`A020742(2*n)-(A013635(2*n+3)+1)`
-/

namespace A049716.P2792399652247099328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (2 * n) - (A013635 (2 * n + 3) + 1)

end

end A049716.P2792399652247099328

namespace A049716

/-- `A020742(2*n)-(A013635(2*n+3)+1)` -/
def P2792399652247099328.Spec : Prop :=
  ∀ n, P2792399652247099328.a n = A049716 (n + 1)

end A049716

/-!
# A049717: a(n) = T(n,n+1), array T as in A048149.

The programs for A049717, there is no canonical definition to state claims against.
-/

/-! ## A049717.P17082252305386533463

`A224212(∑[4*n]+1)`
-/

namespace A049717.P17082252305386533463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049717.P17082252305386533463

/-! ## A049717.P11382653839923898988

`or(floor(1/(n+1)), A224212(n²+(n+1)²))`
-/

namespace A049717.P11382653839923898988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A224212 (n ^ 2 + (n + 1) ^ 2))

end

end A049717.P11382653839923898988

/-! ## A049717.P17260226737263516882

`and(-1, A224212(A001844(n)))`
-/

namespace A049717.P17260226737263516882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224212 (A001844 n).toNat)

end

end A049717.P17260226737263516882

/-! ## A049717.P5697193902156962497

`A049729(n)-A014200(A001844(n))`
-/

namespace A049717.P5697193902156962497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049729 n - A014200 (A001844 n).toNat

end

end A049717.P5697193902156962497

/-! ## A049717.P5892538681043666934

`A224212(A001844(n))*A262681(n)`
-/

namespace A049717.P5892538681043666934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A001844 n).toNat * A262681 n

end

end A049717.P5892538681043666934

/-! ## A049717.P12163905807462182243

`A224212(A001844(n))%A022386(n)`
-/

namespace A049717.P12163905807462182243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224212 (A001844 n).toNat) (A022386 n)

end

end A049717.P12163905807462182243

/-! ## A049717.P14062374524559386509

`A049729(n)-A014200(∑[A008574(n)])`
-/

namespace A049717.P14062374524559386509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049729 n - A014200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049717.P14062374524559386509

/-! ## A049717.P14528304411277018218

`A049729(n)-A014200(Δ[A005900(n)])`
-/

namespace A049717.P14528304411277018218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049729 n - A014200 (f1 (n + 1) - f1 n).toNat

end

end A049717.P14528304411277018218

/-! ## A049717.P3820443142914223077

`A007318(C(2, n))*A224212(A001844(n))`
-/

namespace A049717.P3820443142914223077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224212 (A001844 n).toNat

end

end A049717.P3820443142914223077

/-! ## A049717.P18296501084863330619

`A048149(2*(n+1)²)`
-/

namespace A049717.P18296501084863330619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (2 * (n + 1) ^ 2)

end

end A049717.P18296501084863330619

/-!
# A049718: a(n)=T(n,n+2), array T as in A048149.

The programs for A049718, there is no canonical definition to state claims against.
-/

/-! ## A049718.P13830675136712734657

`floor(A049730(n)²/A049742(n))`
-/

namespace A049718.P13830675136712734657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049730 n ^ 2 : ℚ) / (A049742 n : ℚ)⌋

end

end A049718.P13830675136712734657

/-! ## A049718.P2996096554801180417

`A033999(n)²*round(A049730(n)²/A049742(n))`
-/

namespace A049718.P2996096554801180417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway ((A049730 n ^ 2 : ℚ) / (A049742 n : ℚ))

end

end A049718.P2996096554801180417

/-! ## A049718.P14248664154696963758

`A000007(n+1)+round(A049730(n)²/A049742(n))`
-/

namespace A049718.P14248664154696963758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A049730 n ^ 2 : ℚ) / (A049742 n : ℚ))

end

end A049718.P14248664154696963758

/-! ## A049718.P12416323584664220418

`round(A000035(2*n)+A049730(n)²/A049742(n))`
-/

namespace A049718.P12416323584664220418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (2 * n) : ℚ) + (A049730 n ^ 2 : ℚ) / (A049742 n : ℚ))

end

end A049718.P12416323584664220418

/-! ## A049718.P16067318262148705639

`round(A049730(n)²/A049742(n))%A017341(2*n)²`
-/

namespace A049718.P16067318262148705639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049730 n ^ 2 : ℚ) / (A049742 n : ℚ))) (A017341 (2 * n) ^ 2)

end

end A049718.P16067318262148705639

/-! ## A049718.P12291476639676180320

`round(A049730(n)²/A049742(n))%A022398(n+1)`
-/

namespace A049718.P12291476639676180320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049730 n ^ 2 : ℚ) / (A049742 n : ℚ))) (A022398 (n + 1))

end

end A049718.P12291476639676180320

/-! ## A049718.P13480916938426355449

`A005843(round(A049730(n)²/A049742(n)))/2`
-/

namespace A049718.P13480916938426355449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A049730 n ^ 2 : ℚ) / (A049742 n : ℚ))).toNat : ℚ) / 2

end

end A049718.P13480916938426355449

/-! ## A049718.P10116237758705575171

`A048149((n+1)²+(n+2)²)`
-/

namespace A049718.P10116237758705575171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A049718.P10116237758705575171

/-! ## A049718.P8450533779435754283

`A224212((n+1)*2*(n+1)+2)`
-/

namespace A049718.P8450533779435754283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 ((n + 1) * (2 * (n + 1)) + 2)

end

end A049718.P8450533779435754283

/-!
# A049719: a(n)=T(n,n+3), array T as in A048149.

The programs for A049719, there is no canonical definition to state claims against.
-/

/-! ## A049719.P17171147994322142023

`floor(A049731(n)²/A049743(n))`
-/

namespace A049719.P17171147994322142023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049731 n ^ 2 : ℚ) / (A049743 n : ℚ)⌋

end

end A049719.P17171147994322142023

/-! ## A049719.P10976558079457634976

`round(A049731(n)²/A049743(n))%A001248(n+7)`
-/

namespace A049719.P10976558079457634976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ))) (A001248 (n + 7))

end

end A049719.P10976558079457634976

/-! ## A049719.P882942585650387640

`A000035(2*n)+round(A049731(n)²/A049743(n))`
-/

namespace A049719.P882942585650387640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ))

end

end A049719.P882942585650387640

/-! ## A049719.P1770125025057255224

`round(A049731(n)²/A049743(n))*A000034(2*n)`
-/

namespace A049719.P1770125025057255224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ)) * A000034 (2 * n)

end

end A049719.P1770125025057255224

/-! ## A049719.P15924483105598908493

`round(A049731(n)²/A049743(n))-A000035(4*n)`
-/

namespace A049719.P15924483105598908493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ)) - A000035 (4 * n)

end

end A049719.P15924483105598908493

/-! ## A049719.P6484703790299369713

`A000027(round(A049731(n)²/A049743(n)))`
-/

namespace A049719.P6484703790299369713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ))).toNat

end

end A049719.P6484703790299369713

/-! ## A049719.P4350566345065515988

`A005843(round(A049731(n)²/A049743(n)))/2`
-/

namespace A049719.P4350566345065515988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ))).toNat : ℚ) / 2

end

end A049719.P4350566345065515988

/-! ## A049719.P668920377942454612

`A224212(A294774(n+1))`
-/

namespace A049719.P668920377942454612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A294774 (n + 1)).toNat

end

end A049719.P668920377942454612

/-! ## A049719.P12697579101552925393

`A048149(2*(n+1)*(n+3))`
-/

namespace A049719.P12697579101552925393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (2 * ((n + 1) * (n + 3)))

end

end A049719.P12697579101552925393

/-! ## A049719.P12099671477236958292

`A004525(2*round(A049731(n)²/A049743(n)))`
-/

namespace A049719.P12099671477236958292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049743 n : ℚ))).toNat

end

end A049719.P12099671477236958292

/-!
# A049720: a(n)=T(n,1), array T as in A048149.

The programs for A049720, the canonical program `A049720.P3823249303916431378` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049720 has offset 0).

The definition of A049720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049720.P3823249303916431378

`floor((A049732(n)+2+n)/2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049720

/-- `floor((A049732(n)+2+n)/2)` -/
def P3823249303916431378.Spec : Prop :=
  ∀ n, P3823249303916431378.a n = A049720 n

theorem P3823249303916431378.correct : P3823249303916431378.Spec := by
  intro n
  simp only [A049720]

end A049720

/-! ## A049720.P1682436537715823979

`A000592(A047808(n))`
-/

namespace A049720.P1682436537715823979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000592 (A047808 n).toNat

end

end A049720.P1682436537715823979

namespace A049720

/-- `A000592(A047808(n))` -/
def P1682436537715823979.Spec : Prop :=
  ∀ n, P1682436537715823979.a n = A049720 n

end A049720

/-! ## A049720.P9986243168706612916

`A048149(∑[n+1]+1)`
-/

namespace A049720.P9986243168706612916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049720.P9986243168706612916

namespace A049720

/-- `A048149(∑[n+1]+1)` -/
def P9986243168706612916.Spec : Prop :=
  ∀ n, P9986243168706612916.a n = A049720 n

end A049720

/-! ## A049720.P5819330046729935085

`or(char[3], A048149(A134869(n+1)))`
-/

namespace A049720.P5819330046729935085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048149 (A134869 (n + 1)).toNat)

end

end A049720.P5819330046729935085

namespace A049720

/-- `or(char[3], A048149(A134869(n+1)))` -/
def P5819330046729935085.Spec : Prop :=
  ∀ n, P5819330046729935085.a n = A049720 n

end A049720

/-! ## A049720.P9793612330698559503

`A033999(n)²*A048149(A134869(n+1))`
-/

namespace A049720.P9793612330698559503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A048149 (A134869 (n + 1)).toNat

end

end A049720.P9793612330698559503

namespace A049720

/-- `A033999(n)²*A048149(A134869(n+1))` -/
def P9793612330698559503.Spec : Prop :=
  ∀ n, P9793612330698559503.a n = A049720 n

end A049720

/-! ## A049720.P7248900717106023748

`A007318(C(2, n))*A048149(A134869(n+1))`
-/

namespace A049720.P7248900717106023748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A048149 (A134869 (n + 1)).toNat

end

end A049720.P7248900717106023748

namespace A049720

/-- `A007318(C(2, n))*A048149(A134869(n+1))` -/
def P7248900717106023748.Spec : Prop :=
  ∀ n, P7248900717106023748.a n = A049720 n

end A049720

/-! ## A049720.P5196555396261952058

`A153881(n+1)²*A048149(A134869(n+1))`
-/

namespace A049720.P5196555396261952058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) ^ 2 * A048149 (A134869 (n + 1)).toNat

end

end A049720.P5196555396261952058

namespace A049720

/-- `A153881(n+1)²*A048149(A134869(n+1))` -/
def P5196555396261952058.Spec : Prop :=
  ∀ n, P5196555396261952058.a n = A049720 n

end A049720

/-! ## A049720.P17313983786713261574

`A048149(A134869(n+1))%A000040(n+1)²`
-/

namespace A049720.P17313983786713261574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048149 (A134869 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

end

end A049720.P17313983786713261574

namespace A049720

/-- `A048149(A134869(n+1))%A000040(n+1)²` -/
def P17313983786713261574.Spec : Prop :=
  ∀ n, P17313983786713261574.a n = A049720 n

end A049720

/-! ## A049720.P11221316701289450025

`A048149(A134869(n+1))+char[A320710(n+1)]`
-/

namespace A049720.P11221316701289450025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320710 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (A134869 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049720.P11221316701289450025

namespace A049720

/-- `A048149(A134869(n+1))+char[A320710(n+1)]` -/
def P11221316701289450025.Spec : Prop :=
  ∀ n, P11221316701289450025.a n = A049720 n

end A049720

/-! ## A049720.P42437663366508063

`A048149(A134869(n+1))+A008683(4*(n+1))`
-/

namespace A049720.P42437663366508063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (A134869 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A049720.P42437663366508063

namespace A049720

/-- `A048149(A134869(n+1))+A008683(4*(n+1))` -/
def P42437663366508063.Spec : Prop :=
  ∀ n, P42437663366508063.a n = A049720 n

end A049720

/-! ## A049720.P11931856058897973596

`A014963(10*(n+1))*A048149(A134869(n+1))`
-/

namespace A049720.P11931856058897973596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A048149 (A134869 (n + 1)).toNat

end

end A049720.P11931856058897973596

namespace A049720

/-- `A014963(10*(n+1))*A048149(A134869(n+1))` -/
def P11931856058897973596.Spec : Prop :=
  ∀ n, P11931856058897973596.a n = A049720 n

end A049720

/-! ## A049720.P11301660463944761378

`A007318(gcd(n, n+1))*A048149(A134869(n+1))`
-/

namespace A049720.P11301660463944761378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A048149 (A134869 (n + 1)).toNat

end

end A049720.P11301660463944761378

namespace A049720

/-- `A007318(gcd(n, n+1))*A048149(A134869(n+1))` -/
def P11301660463944761378.Spec : Prop :=
  ∀ n, P11301660463944761378.a n = A049720 n

end A049720

/-! ## A049720.P15647502396111978044

`A117569(2*n+1)²*A048149(A134869(n+1))`
-/

namespace A049720.P15647502396111978044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) ^ 2 * A048149 (A134869 (n + 1)).toNat

end

end A049720.P15647502396111978044

namespace A049720

/-- `A117569(2*n+1)²*A048149(A134869(n+1))` -/
def P15647502396111978044.Spec : Prop :=
  ∀ n, P15647502396111978044.a n = A049720 n

end A049720

/-! ## A049720.P1093150884848749645

`A000027(n+1)+A048149(A134869(n+1))-(n+1)`
-/

namespace A049720.P1093150884848749645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A048149 (A134869 (n + 1)).toNat - (n + 1 : ℤ))

end

end A049720.P1093150884848749645

namespace A049720

/-- `A000027(n+1)+A048149(A134869(n+1))-(n+1)` -/
def P1093150884848749645.Spec : Prop :=
  ∀ n, P1093150884848749645.a n = A049720 n

end A049720

/-! ## A049720.P10801549982986358561

`A030548(A030550(n+1))*A048149(A134869(n+1))`
-/

namespace A049720.P10801549982986358561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A030550 (n + 1)).toNat * A048149 (A134869 (n + 1)).toNat

end

end A049720.P10801549982986358561

namespace A049720

/-- `A030548(A030550(n+1))*A048149(A134869(n+1))` -/
def P10801549982986358561.Spec : Prop :=
  ∀ n, P10801549982986358561.a n = A049720 n

end A049720

/-! ## A049720.P1974025006099666664

`A001221(A005384(n+2))*A048149(A134869(n+1))`
-/

namespace A049720.P1974025006099666664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005384 (n + 2)).toNat * A048149 (A134869 (n + 1)).toNat

end

end A049720.P1974025006099666664

namespace A049720

/-- `A001221(A005384(n+2))*A048149(A134869(n+1))` -/
def P1974025006099666664.Spec : Prop :=
  ∀ n, P1974025006099666664.a n = A049720 n

end A049720

/-! ## A049720.P15500114618643956282

`or(char[3], A048149(A034856(n+1)))`
-/

namespace A049720.P15500114618643956282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048149 (A034856 (n + 1)).toNat)

end

end A049720.P15500114618643956282

namespace A049720

/-- `or(char[3], A048149(A034856(n+1)))` -/
def P15500114618643956282.Spec : Prop :=
  ∀ n, P15500114618643956282.a n = A049720 n

end A049720

/-! ## A049720.P8766578656126186380

`A224212(n²+1)`
-/

namespace A049720.P8766578656126186380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (n ^ 2 + 1)

end

end A049720.P8766578656126186380

namespace A049720

/-- `A224212(n²+1)` -/
def P8766578656126186380.Spec : Prop :=
  ∀ n, P8766578656126186380.a n = A049720 n

end A049720

/-!
# A049721: a(n)=T(n,2), array T as in A048149.

The programs for A049721, there is no canonical definition to state claims against.
-/

/-! ## A049721.P17260482879469563371

`floor((A233583(A028310(n))+A049733(n))/2)+1`
-/

namespace A049721.P17260482879469563371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233583 (A028310 n).toNat + A049733 n : ℚ) / 2⌋ + 1

end

end A049721.P17260482879469563371

/-! ## A049721.P7590488186253426081

`ceil((A233583(n+1)+A049733(n))/2)`
-/

namespace A049721.P7590488186253426081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233583 (n + 1) + A049733 n : ℚ) / 2⌉

end

end A049721.P7590488186253426081

/-! ## A049721.P10627591559193214980

`(A233583(-xor(n, -1))+A049733(n)+1)/2`
-/

namespace A049721.P10627591559193214980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (-Int.xor (n : ℤ) (-1)).toNat + A049733 n + 1 : ℚ) / 2

end

end A049721.P10627591559193214980

/-! ## A049721.P12425953962856858670

`(A233583(round(sqrt(n²+1))+1)+A049733(n)+1)/2`
-/

namespace A049721.P12425953962856858670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + A049733 n + 1 : ℚ) / 2

end

end A049721.P12425953962856858670

/-! ## A049721.P821419861148020277

`round((A233583(n+2)+A049733(n))/2)`
-/

namespace A049721.P821419861148020277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233583 (n + 2) + A049733 n : ℚ) / 2)

end

end A049721.P821419861148020277

/-! ## A049721.P13691156258241943502

`A048149(∑[n+2]+3)`
-/

namespace A049721.P13691156258241943502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A049721.P13691156258241943502

/-! ## A049721.P14166869180835316167

`A048149(A340266(n+1))+A000038(n)`
-/

namespace A049721.P14166869180835316167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (A340266 (n + 1)).toNat + A000038 n

end

end A049721.P14166869180835316167

/-! ## A049721.P7040641594474458175

`A000027(A048149(∑[n+3]))`
-/

namespace A049721.P7040641594474458175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048149 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049721.P7040641594474458175

/-! ## A049721.P215192179266933913

`or(char[2], A048149(A055998(n+1)))`
-/

namespace A049721.P215192179266933913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048149 (A055998 (n + 1)).toNat)

end

end A049721.P215192179266933913

/-! ## A049721.P15139744468066448419

`A048149(A055998(n+1))%A049719(n)`
-/

namespace A049721.P15139744468066448419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048149 (A055998 (n + 1)).toNat) (A049719 n)

end

end A049721.P15139744468066448419

/-! ## A049721.P6189518639667535895

`A007318(C(2, n))*A048149(A055998(n+1))`
-/

namespace A049721.P6189518639667535895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A048149 (A055998 (n + 1)).toNat

end

end A049721.P6189518639667535895

/-! ## A049721.P10948341546912253321

`(A000041(n)%2)!*A048149(A055998(n+1))`
-/

namespace A049721.P10948341546912253321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A048149 (A055998 (n + 1)).toNat

end

end A049721.P10948341546912253321

/-! ## A049721.P1116603433080016140

`A048149(A055998(n+1))+A008683(4*(n+1))`
-/

namespace A049721.P1116603433080016140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (A055998 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A049721.P1116603433080016140

/-! ## A049721.P13280456038168652039

`gcd(n, A006530(n+1))*A048149(A055998(n+1))`
-/

namespace A049721.P13280456038168652039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A006530 (n + 1)) : ℤ) * A048149 (A055998 (n + 1)).toNat

end

end A049721.P13280456038168652039

/-! ## A049721.P8912905361974046766

`(A000034(n)-and(1, n))*A048149(A055998(n+1))`
-/

namespace A049721.P8912905361974046766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - (Nat.land 1 n : ℤ)) * A048149 (A055998 (n + 1)).toNat

end

end A049721.P8912905361974046766

/-! ## A049721.P13855763769383749167

`A007814(A000040(n+1))!*A048149(A055998(n+1))`
-/

namespace A049721.P13855763769383749167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A007814 (A000040 (n + 1)).toNat).toNat : ℤ) * A048149 (A055998 (n + 1)).toNat

end

end A049721.P13855763769383749167

/-! ## A049721.P755131211243384070

`A224212(n²+4)`
-/

namespace A049721.P755131211243384070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (n ^ 2 + 4)

end

end A049721.P755131211243384070

/-! ## A049721.P14281651422577475686

`A049733(n)-A014200(A087475(n))`
-/

namespace A049721.P14281651422577475686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049733 n - A014200 (A087475 n).toNat

end

end A049721.P14281651422577475686

/-!
# A049722: a(n)=T(n,3), array T as in A048149.

The programs for A049722, there is no canonical definition to state claims against.
-/

/-! ## A049722.P8518807906948283449

`floor(A049734(n)²/A049746(n))`
-/

namespace A049722.P8518807906948283449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049734 n ^ 2 : ℚ) / (A049746 n : ℚ)⌋

end

end A049722.P8518807906948283449

/-! ## A049722.P10640704322022964286

`A048149(∑[n+3]+6)`
-/

namespace A049722.P10640704322022964286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A049722.P10640704322022964286

/-! ## A049722.P16793984149697128333

`or(char[1], A048149(A167614(n+2)))`
-/

namespace A049722.P16793984149697128333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048149 (A167614 (n + 2)).toNat)

end

end A049722.P16793984149697128333

/-! ## A049722.P6019664438822495563

`A020985(n)²*A048149(A167614(n+2))`
-/

namespace A049722.P6019664438822495563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A048149 (A167614 (n + 2)).toNat

end

end A049722.P6019664438822495563

/-! ## A049722.P11759678688069886777

`A048149(A167614(n+2))%A031934(n+1)`
-/

namespace A049722.P11759678688069886777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048149 (A167614 (n + 2)).toNat) (A031934 (n + 1))

end

end A049722.P11759678688069886777

/-! ## A049722.P13417653471920731761

`A007318(C(2, n))*A048149(A167614(n+2))`
-/

namespace A049722.P13417653471920731761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A048149 (A167614 (n + 2)).toNat

end

end A049722.P13417653471920731761

/-! ## A049722.P14279611934118796613

`A048149(A167614(n+2))+A008683(4*(n+1))`
-/

namespace A049722.P14279611934118796613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 (A167614 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A049722.P14279611934118796613

/-! ## A049722.P17921327126984761266

`A014963(6*(n+1))*A048149(A167614(n+2))`
-/

namespace A049722.P17921327126984761266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A048149 (A167614 (n + 2)).toNat

end

end A049722.P17921327126984761266

/-! ## A049722.P14798196979046144580

`A000108(C(2, n+2))*A048149(A167614(n+2))`
-/

namespace A049722.P14798196979046144580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A048149 (A167614 (n + 2)).toNat

end

end A049722.P14798196979046144580

/-! ## A049722.P15291135093537825936

`A000041(gcd(n, n+1))*A048149(A167614(n+2))`
-/

namespace A049722.P15291135093537825936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A048149 (A167614 (n + 2)).toNat

end

end A049722.P15291135093537825936

/-! ## A049722.P9326862390704435352

`A020639(lcm(2, n+1))+A048149(A167614(n+2))-2`
-/

namespace A049722.P9326862390704435352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lcm 2 (n + 1)) + (A048149 (A167614 (n + 2)).toNat - 2)

end

end A049722.P9326862390704435352

/-! ## A049722.P14067108698129442141

`abs((-1)^A001221(n+1)*A048149(A167614(n+2)))`
-/

namespace A049722.P14067108698129442141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A048149 (A167614 (n + 2)).toNat : ℚ)|

end

end A049722.P14067108698129442141

/-! ## A049722.P8176754364275057500

`A077618(A237990(n+1))+A048149(A167614(n+2))`
-/

namespace A049722.P8176754364275057500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A237990 (n + 1)).toNat + A048149 (A167614 (n + 2)).toNat

end

end A049722.P8176754364275057500

/-! ## A049722.P7250129715666378646

`A001221(A002476(n+1))*A048149(A167614(n+2))`
-/

namespace A049722.P7250129715666378646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 1)).toNat * A048149 (A167614 (n + 2)).toNat

end

end A049722.P7250129715666378646

/-! ## A049722.P7760791303195867852

`A048149(A052905(n+1)+1)%A048130(n+1)`
-/

namespace A049722.P7760791303195867852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048149 (A052905 (n + 1) + 1).toNat) (A048130 (n + 1))

end

end A049722.P7760791303195867852

/-! ## A049722.P16399285346112767089

`A224212(n²+9)`
-/

namespace A049722.P16399285346112767089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (n ^ 2 + 9)

end

end A049722.P16399285346112767089

/-! ## A049722.P8437610259831882661

`A049734(n)-A014200(A189834(n))`
-/

namespace A049722.P8437610259831882661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049734 n - A014200 (A189834 n).toNat

end

end A049722.P8437610259831882661

/-!
# A049723: Array T read by diagonals; T(i,j)=number of lattice points (x,y) in closed right half-plane and circle with radius (0,0)-to-(i,j).

The programs for A049723, the canonical program `A049723.P10463802410882888049` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049723 has offset 0).

The definition of A049723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049723.P10463802410882888049

`A048149(n)+A014200(A048147(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049723

/-- `A048149(n)+A014200(A048147(n))` -/
def P10463802410882888049.Spec : Prop :=
  ∀ n, P10463802410882888049.a n = A049723 n

theorem P10463802410882888049.correct : P10463802410882888049.Spec := by
  intro n
  simp only [A049723]

end A049723

/-! ## A049723.P4225223832744067299

`A048149(n)+A002265(A049735(n))`
-/

namespace A049723.P4225223832744067299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048149 n + A002265 (A049735 n).toNat

end

end A049723.P4225223832744067299

namespace A049723

/-- `A048149(n)+A002265(A049735(n))` -/
def P4225223832744067299.Spec : Prop :=
  ∀ n, P4225223832744067299.a n = A049723 n

end A049723

/-! ## A049723.P16348291815461740556

`A224212(A048147(n))+A002265(A049735(n))`
-/

namespace A049723.P16348291815461740556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A048147 n).toNat + A002265 (A049735 n).toNat

end

end A049723.P16348291815461740556

namespace A049723

/-- `A224212(A048147(n))+A002265(A049735(n))` -/
def P16348291815461740556.Spec : Prop :=
  ∀ n, P16348291815461740556.a n = A049723 n

end A049723

/-! ## A049723.P7845183390295339351

`A228246(A048149(n)%A332285(3*(n+1)))`
-/

namespace A049723.P7845183390295339351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (Int.tmod (A048149 n) (A332285 (3 * (n + 1)))).toNat

end

end A049723.P7845183390295339351

namespace A049723

/-- `A228246(A048149(n)%A332285(3*(n+1)))` -/
def P7845183390295339351.Spec : Prop :=
  ∀ n, P7845183390295339351.a n = A049723 n

end A049723

/-! ## A049723.P1754798624454574170

`A228246(A048149(n)^A178334(n))`
-/

namespace A049723.P1754798624454574170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (SequenceMachineLib.roundAway ((A048149 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A049723.P1754798624454574170

namespace A049723

/-- `A228246(A048149(n)^A178334(n))` -/
def P1754798624454574170.Spec : Prop :=
  ∀ n, P1754798624454574170.a n = A049723 n

end A049723

/-! ## A049723.P1876208014241964371

`A228246(C(A048149(n), A178334(n)))`
-/

namespace A049723.P1876208014241964371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (Nat.choose (A048149 n).toNat (A178334 n).toNat)

end

end A049723.P1876208014241964371

namespace A049723

/-- `A228246(C(A048149(n), A178334(n)))` -/
def P1876208014241964371.Spec : Prop :=
  ∀ n, P1876208014241964371.a n = A049723 n

end A049723

/-! ## A049723.P18341281604638674579

`A228246(A048149(n)%A199552(n))`
-/

namespace A049723.P18341281604638674579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (Int.tmod (A048149 n) (A199552 n)).toNat

end

end A049723.P18341281604638674579

namespace A049723

/-- `A228246(A048149(n)%A199552(n))` -/
def P18341281604638674579.Spec : Prop :=
  ∀ n, P18341281604638674579.a n = A049723 n

end A049723

/-!
# A049724: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049723.

The programs for A049724, there is no canonical definition to state claims against.
-/

/-! ## A049724.P3476104417501545437

`A002150(A299901(n))`
-/

namespace A049724.P3476104417501545437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002150 (A299901 n).toNat

end

end A049724.P3476104417501545437

/-!
# A049725: a(n) = Sum_{i=0..2n} (-1)^i * T(i,2n-i), array T as in A049723.

The programs for A049725, there is no canonical definition to state claims against.
-/

/-! ## A049725.P12230134722263371166

`A049713(n)+A002265(A049737(n))`
-/

namespace A049725.P12230134722263371166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049713 n + A002265 (A049737 n).toNat

end

end A049725.P12230134722263371166

/-!
# A049726: a(n) = Sum_{i=0..floor(n/2)} T(2i,n-2i), array T as in A049723.

The programs for A049726, there is no canonical definition to state claims against.
-/

/-! ## A049726.P5042195790133178942

`A130656(n+1)-A001221(A111438(n))`
-/

namespace A049726.P5042195790133178942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) - A001221 (A111438 n).toNat

end

end A049726.P5042195790133178942

/-! ## A049726.P4741577553015036713

`A130656(n+1)-A130633(A002426(n))`
-/

namespace A049726.P4741577553015036713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) - A130633 (A002426 n).toNat

end

end A049726.P4741577553015036713

/-!
# A049727: Array T read by diagonals; T(i,j)=number of lattice points in triangle (possibly degenerate) with vertices (0,0),(i,0),(i,j).

The programs for A049727, the canonical program `A049727.P13553766468739596161` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049727 has offset 0).

The definition of A049727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049727.P15400857487610033993

`((col(n)+1)*(row(n)-col(n)+1)+gcd(row(n)-col(n), col(n))+1)/2`
-/

namespace A049727.P15400857487610033993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) + (Int.gcd ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) : ℚ) / 2

end

end A049727.P15400857487610033993

namespace A049727

/-- `((col(n)+1)*(row(n)-col(n)+1)+gcd(row(n)-col(n), col(n))+1)/2` -/
def P15400857487610033993.Spec : Prop :=
  ∀ n, P15400857487610033993.a n = (A049727 n : ℚ)

end A049727

/-! ## A049727.P13553766468739596161

`round((A109004(n)+A003991(n+1))/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049727

/-- `round((A109004(n)+A003991(n+1))/2)` -/
def P13553766468739596161.Spec : Prop :=
  ∀ n, P13553766468739596161.a n = A049727 n

theorem P13553766468739596161.correct : P13553766468739596161.Spec := by
  intro n
  simp only [A049727]

end A049727

/-! ## A049727.P8328661988527841009

`A008619(A109004(n)+A059036(n))`
-/

namespace A049727.P8328661988527841009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109004 n + A059036 n).toNat

end

end A049727.P8328661988527841009

namespace A049727

/-- `A008619(A109004(n)+A059036(n))` -/
def P8328661988527841009.Spec : Prop :=
  ∀ n, P8328661988527841009.a n = A049727 n

end A049727

/-! ## A049727.P7487512344060752908

`A028242(A109004(n)+A059036(n))`
-/

namespace A049727.P7487512344060752908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A109004 n + A059036 n).toNat

end

end A049727.P7487512344060752908

namespace A049727

/-- `A028242(A109004(n)+A059036(n))` -/
def P7487512344060752908.Spec : Prop :=
  ∀ n, P7487512344060752908.a n = A049727 n

end A049727

/-! ## A049727.P2905334864046749301

`A029579(A109004(n)+A059036(n))`
-/

namespace A049727.P2905334864046749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A109004 n + A059036 n).toNat

end

end A049727.P2905334864046749301

namespace A049727

/-- `A029579(A109004(n)+A059036(n))` -/
def P2905334864046749301.Spec : Prop :=
  ∀ n, P2905334864046749301.a n = A049727 n

end A049727

/-! ## A049727.P18362634295575715315

`A080513(A109004(n)+A059036(n))`
-/

namespace A049727.P18362634295575715315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A109004 n + A059036 n).toNat

end

end A049727.P18362634295575715315

namespace A049727

/-- `A080513(A109004(n)+A059036(n))` -/
def P18362634295575715315.Spec : Prop :=
  ∀ n, P18362634295575715315.a n = A049727 n

end A049727

/-! ## A049727.P17896124519597783588

`A106466(A109004(n)+A059036(n))`
-/

namespace A049727.P17896124519597783588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A109004 n + A059036 n).toNat

end

end A049727.P17896124519597783588

namespace A049727

/-- `A106466(A109004(n)+A059036(n))` -/
def P17896124519597783588.Spec : Prop :=
  ∀ n, P17896124519597783588.a n = A049727 n

end A049727

/-! ## A049727.P711324660050571021

`A000463(A109004(n)+A003991(n+1))`
-/

namespace A049727.P711324660050571021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A109004 n + A003991 (n + 1)).toNat

end

end A049727.P711324660050571021

namespace A049727

/-- `A000463(A109004(n)+A003991(n+1))` -/
def P711324660050571021.Spec : Prop :=
  ∀ n, P711324660050571021.a n = A049727 n

end A049727

/-! ## A049727.P2176508478341221144

`A001057(A109004(n)+A003991(n+1))`
-/

namespace A049727.P2176508478341221144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A109004 n + A003991 (n + 1)).toNat

end

end A049727.P2176508478341221144

namespace A049727

/-- `A001057(A109004(n)+A003991(n+1))` -/
def P2176508478341221144.Spec : Prop :=
  ∀ n, P2176508478341221144.a n = A049727 n

end A049727

/-! ## A049727.P13451730501189233315

`A003602(A109004(n)+A003991(n+1))`
-/

namespace A049727.P13451730501189233315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A109004 n + A003991 (n + 1)).toNat

end

end A049727.P13451730501189233315

namespace A049727

/-- `A003602(A109004(n)+A003991(n+1))` -/
def P13451730501189233315.Spec : Prop :=
  ∀ n, P13451730501189233315.a n = A049727 n

end A049727

/-! ## A049727.P18110312698229976343

`A008619(A109004(n)+A003991(n+1))`
-/

namespace A049727.P18110312698229976343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109004 n + A003991 (n + 1)).toNat

end

end A049727.P18110312698229976343

namespace A049727

/-- `A008619(A109004(n)+A003991(n+1))` -/
def P18110312698229976343.Spec : Prop :=
  ∀ n, P18110312698229976343.a n = A049727 n

end A049727

/-! ## A049727.P13988691094489311387

`A004525(A003991(n+1)+A109004(n)+1)`
-/

namespace A049727.P13988691094489311387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003991 (n + 1) + (A109004 n + 1)).toNat

end

end A049727.P13988691094489311387

namespace A049727

/-- `A004525(A003991(n+1)+A109004(n)+1)` -/
def P13988691094489311387.Spec : Prop :=
  ∀ n, P13988691094489311387.a n = A049727 n

end A049727

/-! ## A049727.P1142590057503126875

`A279417(n+1)-A112367(n)`
-/

namespace A049727.P1142590057503126875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279417 (n + 1) - A112367 n

end

end A049727.P1142590057503126875

namespace A049727

/-- `A279417(n+1)-A112367(n)` -/
def P1142590057503126875.Spec : Prop :=
  ∀ n, P1142590057503126875.a n = A049727 n

end A049727

/-! ## A049727.P15899242123050083396

`A141419(n+1)-A279416(n+1)`
-/

namespace A049727.P15899242123050083396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A279416 (n + 1)

end

end A049727.P15899242123050083396

namespace A049727

/-- `A141419(n+1)-A279416(n+1)` -/
def P15899242123050083396.Spec : Prop :=
  ∀ n, P15899242123050083396.a n = A049727 n

end A049727

/-!
# A049728: a(n)=T(n,n), array T as in A049723.

The programs for A049728, there is no canonical definition to state claims against.
-/

/-! ## A049728.P16948569854892420742

`A004273(A048150(n))-A001951(n)`
-/

namespace A049728.P16948569854892420742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A048150 n).toNat - A001951 n

end

end A049728.P16948569854892420742

/-! ## A049728.P1552901131503511393

`A049723(∑[4*n])`
-/

namespace A049728.P1552901131503511393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049728.P1552901131503511393

/-! ## A049728.P12423122617063454290

`or(char[2], A049723(A046092(n)))`
-/

namespace A049728.P12423122617063454290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049723 (A046092 n).toNat)

end

end A049728.P12423122617063454290

/-! ## A049728.P18111825065745530823

`record[A003982(n)*A049723(n)]`
-/

namespace A049728.P18111825065745530823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A049723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049728.P18111825065745530823

/-! ## A049728.P15293742396455459865

`record[gcd(A049723(n), A114327(n))]`
-/

namespace A049728.P15293742396455459865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049723 n) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049728.P15293742396455459865

/-! ## A049728.P3738025154875338227

`A048150(n)+A014200(A001105(n))`
-/

namespace A049728.P3738025154875338227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048150 n + A014200 (A001105 n).toNat

end

end A049728.P3738025154875338227

/-! ## A049728.P5196395934065440901

`A007318(C(2, n))*A049723(A046092(n))`
-/

namespace A049728.P5196395934065440901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A049723 (A046092 n).toNat

end

end A049728.P5196395934065440901

/-! ## A049728.P1601310937040243235

`A049723(A046092(n))%A000040((n+1)²)`
-/

namespace A049728.P1601310937040243235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049723 (A046092 n).toNat) (A000040 ((n + 1) ^ 2))

end

end A049728.P1601310937040243235

/-! ## A049728.P13581966220942309521

`A049723(A046092(n))^(A000040(n+1)%2)`
-/

namespace A049728.P13581966220942309521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049723 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A049728.P13581966220942309521

/-!
# A049729: a(n)=T(n,n+1), array T as in A049723.

The programs for A049729, there is no canonical definition to state claims against.
-/

/-! ## A049729.P9652679725217057243

`ceil(sqrt(A049717(n)*A049741(n)))`
-/

namespace A049729.P9652679725217057243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A049717 n * A049741 n : ℝ)⌉

end

end A049729.P9652679725217057243

/-! ## A049729.P3313124023543241335

`A049717(n)+A014200(A001844(n))`
-/

namespace A049729.P3313124023543241335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049717 n + A014200 (A001844 n).toNat

end

end A049729.P3313124023543241335

/-! ## A049729.P15111449436971877920

`A049717(n)+A014200(∑[A008574(n)])`
-/

namespace A049729.P15111449436971877920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049717 n + A014200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049729.P15111449436971877920

/-! ## A049729.P18057832388513719567

`A049717(n)+A014200(Δ[A005900(n)])`
-/

namespace A049729.P18057832388513719567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049717 n + A014200 (f1 (n + 1) - f1 n).toNat

end

end A049729.P18057832388513719567

/-! ## A049729.P6343984780673972369

`A224212(∑[4*n]+1)+A014200(A001844(n))`
-/

namespace A049729.P6343984780673972369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A014200 (A001844 n).toNat

end

end A049729.P6343984780673972369

/-! ## A049729.P7325693806636859991

`A049723(2*(n+1)²)`
-/

namespace A049729.P7325693806636859991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (2 * (n + 1) ^ 2)

end

end A049729.P7325693806636859991

/-! ## A049729.P1008373731374020816

`record[A049723(2*(1-n)²)]`
-/

namespace A049729.P1008373731374020816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (2 * (1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049729.P1008373731374020816

/-! ## A049729.P11733768601642401079

`A000027(A049723(∑[4*n+2]))`
-/

namespace A049729.P11733768601642401079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049723 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049729.P11733768601642401079

/-!
# A049730: a(n)=T(n,n+2), array T as in A049723.

The programs for A049730, there is no canonical definition to state claims against.
-/

/-! ## A049730.P9288423663808722585

`ceil(sqrt(A049718(n)*A049742(n)))`
-/

namespace A049730.P9288423663808722585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A049718 n * A049742 n : ℝ)⌉

end

end A049730.P9288423663808722585

/-! ## A049730.P11919907019168482274

`A049723(∑[4*(n+1)]+1)`
-/

namespace A049730.P11919907019168482274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049730.P11919907019168482274

/-! ## A049730.P4246872935504865871

`or(char[2], A049723(A099776(n+1)))`
-/

namespace A049730.P4246872935504865871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049723 (A099776 (n + 1)).toNat)

end

end A049730.P4246872935504865871

/-! ## A049730.P3207892686173817123

`A049723(A099776(n+1))%A049742(n)`
-/

namespace A049730.P3207892686173817123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049723 (A099776 (n + 1)).toNat) (A049742 n)

end

end A049730.P3207892686173817123

/-! ## A049730.P11810015396210911655

`abs(A033999(n)*A049723(A099776(n+1)))`
-/

namespace A049730.P11810015396210911655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A049723 (A099776 (n + 1)).toNat|

end

end A049730.P11810015396210911655

/-! ## A049730.P7840020287326355550

`A049723(A099776(n+1))^A178334(n)^n`
-/

namespace A049730.P7840020287326355550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049723 (A099776 (n + 1)).toNat : ℚ) ^ (A178334 n ^ n : ℤ)

end

end A049730.P7840020287326355550

/-! ## A049730.P4409360238167768328

`A014963(6*(n+1))*A049723(A099776(n+1))`
-/

namespace A049730.P4409360238167768328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A049723 (A099776 (n + 1)).toNat

end

end A049730.P4409360238167768328

/-! ## A049730.P17885022367675657522

`A049723(A099776(n+1))+A257252(n+1)%2`
-/

namespace A049730.P17885022367675657522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A099776 (n + 1)).toNat + Int.tmod (A257252 (n + 1)) 2

end

end A049730.P17885022367675657522

/-! ## A049730.P13499906964709975887

`A007318(round(n/(n+1)))*A049723(A099776(n+1))`
-/

namespace A049730.P13499906964709975887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat * A049723 (A099776 (n + 1)).toNat

end

end A049730.P13499906964709975887

/-! ## A049730.P6391949262345125535

`A049723(A099776(n+1))+A008683(A017137(n)-2)`
-/

namespace A049730.P6391949262345125535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A099776 (n + 1)).toNat + A008683 (A017137 n - 2).toNat

end

end A049730.P6391949262345125535

/-!
# A049731: a(n)=T(n,n+3), array T as in A049723.

The programs for A049731, there is no canonical definition to state claims against.
-/

/-! ## A049731.P11396136265079530571

`ceil(sqrt(A049719(n)*A049743(n)))`
-/

namespace A049731.P11396136265079530571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A049719 n * A049743 n : ℝ)⌉

end

end A049731.P11396136265079530571

/-! ## A049731.P14148097180969396562

`A049723(∑[4*n+6])`
-/

namespace A049731.P14148097180969396562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049731.P14148097180969396562

/-! ## A049731.P16636723619175472233

`A049719(n)+A002265(A049743(n))`
-/

namespace A049731.P16636723619175472233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049719 n + A002265 (A049743 n).toNat

end

end A049731.P16636723619175472233

/-! ## A049731.P16973049976380999180

`A228246(A049719(n))`
-/

namespace A049731.P16973049976380999180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (A049719 n).toNat

end

end A049731.P16973049976380999180

/-!
# A049732: a(n)=T(n,1), array T as in A049723.

The programs for A049732, the canonical program `A049732.P11638542157924361709` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049732 has offset 0).

The definition of A049732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049732.P11638542157924361709

`A028310(n)+ceil(A049744(n)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049732

/-- `A028310(n)+ceil(A049744(n)/2)` -/
def P11638542157924361709.Spec : Prop :=
  ∀ n, P11638542157924361709.a n = A049732 n

theorem P11638542157924361709.correct : P11638542157924361709.Spec := by
  intro n
  simp only [A049732]

end A049732

/-! ## A049732.P224051122585134443

`ceil(A065033(2*n)+A049744(n)/2)`
-/

namespace A049732.P224051122585134443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065033 (2 * n) : ℚ) + (A049744 n : ℚ) / 2⌉

end

end A049732.P224051122585134443

namespace A049732

/-- `ceil(A065033(2*n)+A049744(n)/2)` -/
def P224051122585134443.Spec : Prop :=
  ∀ n, P224051122585134443.a n = A049732 n

end A049732

/-! ## A049732.P18004052838617758696

`A065033(2*n)+A000265(A049744(n)+1)`
-/

namespace A049732.P18004052838617758696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + A000265 (A049744 n + 1).toNat

end

end A049732.P18004052838617758696

namespace A049732

/-- `A065033(2*n)+A000265(A049744(n)+1)` -/
def P18004052838617758696.Spec : Prop :=
  ∀ n, P18004052838617758696.a n = A049732 n

end A049732

/-! ## A049732.P17055220759361101648

`A049723(∑[n+1]+1)`
-/

namespace A049732.P17055220759361101648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049732.P17055220759361101648

namespace A049732

/-- `A049723(∑[n+1]+1)` -/
def P17055220759361101648.Spec : Prop :=
  ∀ n, P17055220759361101648.a n = A049732 n

end A049732

/-! ## A049732.P10553846807080621579

`record[A049723(A252460(2*n+1))]`
-/

namespace A049732.P10553846807080621579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A252460 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049732.P10553846807080621579

namespace A049732

/-- `record[A049723(A252460(2*n+1))]` -/
def P10553846807080621579.Spec : Prop :=
  ∀ n, P10553846807080621579.a n = A049732 n

end A049732

/-! ## A049732.P3594366972725844092

`or(char[2], A049723(A134869(n+1)))`
-/

namespace A049732.P3594366972725844092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049723 (A134869 (n + 1)).toNat)

end

end A049732.P3594366972725844092

namespace A049732

/-- `or(char[2], A049723(A134869(n+1)))` -/
def P3594366972725844092.Spec : Prop :=
  ∀ n, P3594366972725844092.a n = A049732 n

end A049732

/-! ## A049732.P241287555625173579

`A049723(A134869(n+1))%A049730(n)`
-/

namespace A049732.P241287555625173579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049723 (A134869 (n + 1)).toNat) (A049730 n)

end

end A049732.P241287555625173579

namespace A049732

/-- `A049723(A134869(n+1))%A049730(n)` -/
def P241287555625173579.Spec : Prop :=
  ∀ n, P241287555625173579.a n = A049732 n

end A049732

/-! ## A049732.P6519072929838209691

`lcm(A000034(n), A049723(A134869(n+1)))`
-/

namespace A049732.P6519072929838209691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A049723 (A134869 (n + 1)).toNat)

end

end A049732.P6519072929838209691

namespace A049732

/-- `lcm(A000034(n), A049723(A134869(n+1)))` -/
def P6519072929838209691.Spec : Prop :=
  ∀ n, (P6519072929838209691.a n : ℤ) = A049732 n

end A049732

/-! ## A049732.P18182692455355071322

`A049723(A134869(n+1))+A000007(n+1)`
-/

namespace A049732.P18182692455355071322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat + A000007 (n + 1)

end

end A049732.P18182692455355071322

namespace A049732

/-- `A049723(A134869(n+1))+A000007(n+1)` -/
def P18182692455355071322.Spec : Prop :=
  ∀ n, P18182692455355071322.a n = A049732 n

end A049732

/-! ## A049732.P11618727269285129933

`A049723(A134869(n+1))+A000035(2*n)`
-/

namespace A049732.P11618727269285129933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat + A000035 (2 * n)

end

end A049732.P11618727269285129933

namespace A049732

/-- `A049723(A134869(n+1))+A000035(2*n)` -/
def P11618727269285129933.Spec : Prop :=
  ∀ n, P11618727269285129933.a n = A049732 n

end A049732

/-! ## A049732.P12783753484199629729

`A049723(A134869(n+1))+A017089(n)%2`
-/

namespace A049732.P12783753484199629729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat + Int.tmod (A017089 n) 2

end

end A049732.P12783753484199629729

namespace A049732

/-- `A049723(A134869(n+1))+A017089(n)%2` -/
def P12783753484199629729.Spec : Prop :=
  ∀ n, P12783753484199629729.a n = A049732 n

end A049732

/-! ## A049732.P15347620147727523405

`A007318(C(2, n))*A049723(A134869(n+1))`
-/

namespace A049732.P15347620147727523405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A049723 (A134869 (n + 1)).toNat

end

end A049732.P15347620147727523405

namespace A049732

/-- `A007318(C(2, n))*A049723(A134869(n+1))` -/
def P15347620147727523405.Spec : Prop :=
  ∀ n, P15347620147727523405.a n = A049732 n

end A049732

/-! ## A049732.P7322542478359198350

`A049723(A134869(n+1))+n%A028310(n)`
-/

namespace A049732.P7322542478359198350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A049732.P7322542478359198350

namespace A049732

/-- `A049723(A134869(n+1))+n%A028310(n)` -/
def P7322542478359198350.Spec : Prop :=
  ∀ n, P7322542478359198350.a n = A049732 n

end A049732

/-! ## A049732.P10999070974960736764

`A049723(A134869(n+1))+A008683(4*(n+1))`
-/

namespace A049732.P10999070974960736764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A049732.P10999070974960736764

namespace A049732

/-- `A049723(A134869(n+1))+A008683(4*(n+1))` -/
def P10999070974960736764.Spec : Prop :=
  ∀ n, P10999070974960736764.a n = A049732 n

end A049732

/-! ## A049732.P2146935410514637492

`A007318(val(n+1, 12))*A049723(A134869(n+1))`
-/

namespace A049732.P2146935410514637492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 12) * A049723 (A134869 (n + 1)).toNat

end

end A049732.P2146935410514637492

namespace A049732

/-- `A007318(val(n+1, 12))*A049723(A134869(n+1))` -/
def P2146935410514637492.Spec : Prop :=
  ∀ n, P2146935410514637492.a n = A049732 n

end A049732

/-! ## A049732.P18074401065044506268

`A049723(A134869(n+1))+A001222(((-1)^n)²)`
-/

namespace A049732.P18074401065044506268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A049732.P18074401065044506268

namespace A049732

/-- `A049723(A134869(n+1))+A001222(((-1)^n)²)` -/
def P18074401065044506268.Spec : Prop :=
  ∀ n, P18074401065044506268.a n = A049732 n

end A049732

/-! ## A049732.P2416067002892705761

`A049723(A134869(n+1))^val(A020639(n+1), 2)!`
-/

namespace A049732.P2416067002892705761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A134869 (n + 1)).toNat ^ Nat.factorial (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2)

end

end A049732.P2416067002892705761

namespace A049732

/-- `A049723(A134869(n+1))^val(A020639(n+1), 2)!` -/
def P2416067002892705761.Spec : Prop :=
  ∀ n, P2416067002892705761.a n = A049732 n

end A049732

/-!
# A049733: a(n)=T(n,2), array T as in A049723.

The programs for A049733, there is no canonical definition to state claims against.
-/

/-! ## A049733.P9789817703187680630

`ceil(sqrt(A049721(n)*A049745(n)))`
-/

namespace A049733.P9789817703187680630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A049721 n * A049745 n : ℝ)⌉

end

end A049733.P9789817703187680630

/-! ## A049733.P13773972712788373025

`A049723(∑[n+2]+3)`
-/

namespace A049733.P13773972712788373025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A049733.P13773972712788373025

/-! ## A049733.P4939449082078221301

`A000027(A049723(∑[n+3]))`
-/

namespace A049733.P4939449082078221301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049723 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049733.P4939449082078221301

/-! ## A049733.P5846891099263046350

`A004273(A049721(n))-A233583(n+1)`
-/

namespace A049733.P5846891099263046350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049721 n).toNat - A233583 (n + 1)

end

end A049733.P5846891099263046350

/-! ## A049733.P5062547275384562620

`A049721(n)+A014200(A087475(n))`
-/

namespace A049733.P5062547275384562620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049721 n + A014200 (A087475 n).toNat

end

end A049733.P5062547275384562620

/-! ## A049733.P18412995242260267231

`A131508(A049745(n))+A049721(n)`
-/

namespace A049733.P18412995242260267231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A049745 n).toNat + A049721 n

end

end A049733.P18412995242260267231

/-! ## A049733.P4410431061727773835

`A233583(n+1)+A008619(A049745(n))`
-/

namespace A049733.P4410431061727773835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + A008619 (A049745 n).toNat

end

end A049733.P4410431061727773835

/-!
# A049734: a(n)=T(n,3), array T as in A049723.

The programs for A049734, the canonical program `A049734.P14767430528690211686` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049734 has offset 0).

The definition of A049734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049734.P14767430528690211686

`A049723(∑[n+3]+6)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049734

/-- `A049723(∑[n+3]+6)` -/
def P14767430528690211686.Spec : Prop :=
  ∀ n, P14767430528690211686.a n = A049734 n

theorem P14767430528690211686.correct : P14767430528690211686.Spec := by
  intro n
  simp only [A049734]

end A049734

/-! ## A049734.P3425214814852040957

`or(char[3], A049723(A167614(n+2)))`
-/

namespace A049734.P3425214814852040957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049723 (A167614 (n + 2)).toNat)

end

end A049734.P3425214814852040957

namespace A049734

/-- `or(char[3], A049723(A167614(n+2)))` -/
def P3425214814852040957.Spec : Prop :=
  ∀ n, P3425214814852040957.a n = A049734 n

end A049734

/-! ## A049734.P2891931458621100392

`A049723(A167614(n+2))%A304616(n)`
-/

namespace A049734.P2891931458621100392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049723 (A167614 (n + 2)).toNat) (A304616 n)

end

end A049734.P2891931458621100392

namespace A049734

/-- `A049723(A167614(n+2))%A304616(n)` -/
def P2891931458621100392.Spec : Prop :=
  ∀ n, P2891931458621100392.a n = A049734 n

end A049734

/-! ## A049734.P5180083698598135271

`abs(A033999(n))*A049723(A167614(n+2))`
-/

namespace A049734.P5180083698598135271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A049723 (A167614 (n + 2)).toNat

end

end A049734.P5180083698598135271

namespace A049734

/-- `abs(A033999(n))*A049723(A167614(n+2))` -/
def P5180083698598135271.Spec : Prop :=
  ∀ n, P5180083698598135271.a n = A049734 n

end A049734

/-! ## A049734.P15318657842840557605

`A020985(n)²*A049723(A167614(n+2))`
-/

namespace A049734.P15318657842840557605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A049723 (A167614 (n + 2)).toNat

end

end A049734.P15318657842840557605

namespace A049734

/-- `A020985(n)²*A049723(A167614(n+2))` -/
def P15318657842840557605.Spec : Prop :=
  ∀ n, P15318657842840557605.a n = A049734 n

end A049734

/-! ## A049734.P10486426762634269524

`A049723(A167614(n+2))+A000007(n+1)`
-/

namespace A049734.P10486426762634269524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A049734.P10486426762634269524

namespace A049734

/-- `A049723(A167614(n+2))+A000007(n+1)` -/
def P10486426762634269524.Spec : Prop :=
  ∀ n, P10486426762634269524.a n = A049734 n

end A049734

/-! ## A049734.P14072136360741159872

`A007318(C(2, n))*A049723(A167614(n+2))`
-/

namespace A049734.P14072136360741159872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A049723 (A167614 (n + 2)).toNat

end

end A049734.P14072136360741159872

namespace A049734

/-- `A007318(C(2, n))*A049723(A167614(n+2))` -/
def P14072136360741159872.Spec : Prop :=
  ∀ n, P14072136360741159872.a n = A049734 n

end A049734

/-! ## A049734.P15858876258209751065

`A000041(C(n, n²))*A049723(A167614(n+2))`
-/

namespace A049734.P15858876258209751065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A049723 (A167614 (n + 2)).toNat

end

end A049734.P15858876258209751065

namespace A049734

/-- `A000041(C(n, n²))*A049723(A167614(n+2))` -/
def P15858876258209751065.Spec : Prop :=
  ∀ n, P15858876258209751065.a n = A049734 n

end A049734

/-! ## A049734.P15246227103189278627

`A049723(A167614(n+2))+A008683(8*(n+1))`
-/

namespace A049734.P15246227103189278627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A167614 (n + 2)).toNat + A008683 (8 * (n + 1))

end

end A049734.P15246227103189278627

namespace A049734

/-- `A049723(A167614(n+2))+A008683(8*(n+1))` -/
def P15246227103189278627.Spec : Prop :=
  ∀ n, P15246227103189278627.a n = A049734 n

end A049734

/-! ## A049734.P12782078480074408780

`A014963(6*(n+1))*A049723(A167614(n+2))`
-/

namespace A049734.P12782078480074408780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A049723 (A167614 (n + 2)).toNat

end

end A049734.P12782078480074408780

namespace A049734

/-- `A014963(6*(n+1))*A049723(A167614(n+2))` -/
def P12782078480074408780.Spec : Prop :=
  ∀ n, P12782078480074408780.a n = A049734 n

end A049734

/-! ## A049734.P2464195367042529561

`or(-1, A000041(n))²*A049723(A167614(n+2))`
-/

namespace A049734.P2464195367042529561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) ^ 2 * A049723 (A167614 (n + 2)).toNat

end

end A049734.P2464195367042529561

namespace A049734

/-- `or(-1, A000041(n))²*A049723(A167614(n+2))` -/
def P2464195367042529561.Spec : Prop :=
  ∀ n, P2464195367042529561.a n = A049734 n

end A049734

/-! ## A049734.P3562069542199037976

`A049723(A167614(n+2))+A000010(gcd(n, n+1)+3)-2`
-/

namespace A049734.P3562069542199037976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A167614 (n + 2)).toNat + (A000010 (Nat.gcd n (n + 1) + 3) - 2)

end

end A049734.P3562069542199037976

namespace A049734

/-- `A049723(A167614(n+2))+A000010(gcd(n, n+1)+3)-2` -/
def P3562069542199037976.Spec : Prop :=
  ∀ n, P3562069542199037976.a n = A049734 n

end A049734

/-! ## A049734.P3452806904377404345

`A049723(A167614(n+2))*A091954(A006530(4*n+3))`
-/

namespace A049734.P3452806904377404345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A167614 (n + 2)).toNat * A091954 (A006530 (4 * n + 3)).toNat

end

end A049734.P3452806904377404345

namespace A049734

/-- `A049723(A167614(n+2))*A091954(A006530(4*n+3))` -/
def P3452806904377404345.Spec : Prop :=
  ∀ n, P3452806904377404345.a n = A049734 n

end A049734

/-! ## A049734.P14442309953990619405

`or(char[3], A049723(A046691(n+2)))`
-/

namespace A049734.P14442309953990619405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049723 (A046691 (n + 2)).toNat)

end

end A049734.P14442309953990619405

namespace A049734

/-- `or(char[3], A049723(A046691(n+2)))` -/
def P14442309953990619405.Spec : Prop :=
  ∀ n, P14442309953990619405.a n = A049734 n

end A049734

/-! ## A049734.P10273901508343776102

`A049723(A056000(n)+6)+and(2, n²)`
-/

namespace A049734.P10273901508343776102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (A056000 n + 6).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A049734.P10273901508343776102

namespace A049734

/-- `A049723(A056000(n)+6)+and(2, n²)` -/
def P10273901508343776102.Spec : Prop :=
  ∀ n, P10273901508343776102.a n = A049734 n

end A049734

/-! ## A049734.P3245915918195964247

`lcm(A000038(n)!, A049723(A046691(n+2)))`
-/

namespace A049734.P3245915918195964247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (A049723 (A046691 (n + 2)).toNat)

end

end A049734.P3245915918195964247

namespace A049734

/-- `lcm(A000038(n)!, A049723(A046691(n+2)))` -/
def P3245915918195964247.Spec : Prop :=
  ∀ n, (P3245915918195964247.a n : ℤ) = A049734 n

end A049734

/-! ## A049734.P7371613918899378498

`A007318(C(2, n+2))*A049723(A046691(n+2))`
-/

namespace A049734.P7371613918899378498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A049723 (A046691 (n + 2)).toNat

end

end A049734.P7371613918899378498

namespace A049734

/-- `A007318(C(2, n+2))*A049723(A046691(n+2))` -/
def P7371613918899378498.Spec : Prop :=
  ∀ n, P7371613918899378498.a n = A049734 n

end A049734

/-! ## A049734.P10356537216096946777

`A000203(gcd(n, n+1))*A049723(A046691(n+2))`
-/

namespace A049734.P10356537216096946777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A049723 (A046691 (n + 2)).toNat

end

end A049734.P10356537216096946777

namespace A049734

/-- `A000203(gcd(n, n+1))*A049723(A046691(n+2))` -/
def P10356537216096946777.Spec : Prop :=
  ∀ n, P10356537216096946777.a n = A049734 n

end A049734

/-! ## A049734.P10466307192972517142

`A049723(A046691(n+2))%A000040(43*(n+1)-14)`
-/

namespace A049734.P10466307192972517142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049723 (A046691 (n + 2)).toNat) (A000040 (43 * (n + 1) - 14))

end

end A049734.P10466307192972517142

namespace A049734

/-- `A049723(A046691(n+2))%A000040(43*(n+1)-14)` -/
def P10466307192972517142.Spec : Prop :=
  ∀ n, P10466307192972517142.a n = A049734 n

end A049734

/-!
# A049735: Array T(i,j) is the number of lattice points (x,y) in circle with radius (0,0)-to-(i,j), read by antidiagonals.

The programs for A049735, the canonical program `A049735.P11014116182128311046` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049735 has offset 0).

The definition of A049735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049735.P12956906141428740561

`A016813(A049723(n)-A048149(n))`
-/

namespace A049735.P12956906141428740561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A049723 n - A048149 n).toNat

end

end A049735.P12956906141428740561

namespace A049735

/-- `A016813(A049723(n)-A048149(n))` -/
def P12956906141428740561.Spec : Prop :=
  ∀ n, P12956906141428740561.a n = A049735 n

end A049735

/-! ## A049735.P7380450175049007263

`A016813(A049723(n)%A048149(n))`
-/

namespace A049735.P7380450175049007263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.tmod (A049723 n) (A048149 n)).toNat

end

end A049735.P7380450175049007263

namespace A049735

/-- `A016813(A049723(n)%A048149(n))` -/
def P7380450175049007263.Spec : Prop :=
  ∀ n, P7380450175049007263.a n = A049735 n

end A049735

/-! ## A049735.P11014116182128311046

`A014198(A048147(n))+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049735

/-- `A014198(A048147(n))+1` -/
def P11014116182128311046.Spec : Prop :=
  ∀ n, P11014116182128311046.a n = A049735 n

theorem P11014116182128311046.correct : P11014116182128311046.Spec := by
  intro n
  simp only [A049735]

end A049735

/-! ## A049735.P6048715385344271868

`A057655(A048147(n))`
-/

namespace A049735.P6048715385344271868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A048147 n).toNat

end

end A049735.P6048715385344271868

namespace A049735

/-- `A057655(A048147(n))` -/
def P6048715385344271868.Spec : Prop :=
  ∀ n, P6048715385344271868.a n = A049735 n

end A049735

/-! ## A049735.P10145836109536257066

`xor(A014198(A048147(n)), A152271(2*n))`
-/

namespace A049735.P10145836109536257066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014198 (A048147 n).toNat) (A152271 (2 * n))

end

end A049735.P10145836109536257066

namespace A049735

/-- `xor(A014198(A048147(n)), A152271(2*n))` -/
def P10145836109536257066.Spec : Prop :=
  ∀ n, P10145836109536257066.a n = A049735 n

end A049735

/-! ## A049735.P3020703852261202787

`A057961(A157927(n+1))`
-/

namespace A049735.P3020703852261202787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (A157927 (n + 1)).toNat

end

end A049735.P3020703852261202787

namespace A049735

/-- `A057961(A157927(n+1))` -/
def P3020703852261202787.Spec : Prop :=
  ∀ n, P3020703852261202787.a n = A049735 n

end A049735

/-!
# A049736: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049735.

The programs for A049736, there is no canonical definition to state claims against.
-/

/-! ## A049736.P5709530762618200611

`∑[record[A118829(A119329(n))]]`
-/

namespace A049736.P5709530762618200611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118829 (A119329 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049736.P5709530762618200611

/-!
# A049737: a(n) = Sum_{i=0..2n} (-1)^i * T(i,2n-i), array T as in A049735.

The programs for A049737, there is no canonical definition to state claims against.
-/

/-! ## A049737.P11754345028609436433

`4*(A049725(n)-A049713(n))+1`
-/

namespace A049737.P11754345028609436433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A049725 n - A049713 n) + 1

end

end A049737.P11754345028609436433

/-! ## A049737.P4112376357677706975

`A000027(xor(1, 4*(A049725(n)-A049713(n))))`
-/

namespace A049737.P4112376357677706975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (4 * (A049725 n - A049713 n))).toNat

end

end A049737.P4112376357677706975

/-! ## A049737.P18317164147704479013

`2-(A007318(∑[n])-4*(A049725(n)-A049713(n)))`
-/

namespace A049737.P18317164147704479013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - 4 * (A049725 n - A049713 n))

end

end A049737.P18317164147704479013

/-! ## A049737.P10698881304771013090

`A016825(A049725(n)-A049713(n))-1`
-/

namespace A049737.P10698881304771013090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A049725 n - A049713 n).toNat - 1

end

end A049737.P10698881304771013090

/-! ## A049737.P6791056999221404446

`A016813(A049725(n)-A049713(n))`
-/

namespace A049737.P6791056999221404446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A049725 n - A049713 n).toNat

end

end A049737.P6791056999221404446

/-! ## A049737.P15062578141363785563

`A016813(A049725(n)%A049713(n))`
-/

namespace A049737.P15062578141363785563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.tmod (A049725 n) (A049713 n)).toNat

end

end A049737.P15062578141363785563

/-! ## A049737.P17267389998246655077

`A008586(A049725(n)-A049713(n))+1`
-/

namespace A049737.P17267389998246655077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A049725 n - A049713 n).toNat + 1

end

end A049737.P17267389998246655077

/-! ## A049737.P3404164071968857530

`A004767(A049725(n)-A049713(n))-2`
-/

namespace A049737.P3404164071968857530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A049725 n - A049713 n).toNat - 2

end

end A049737.P3404164071968857530

/-! ## A049737.P2476684980699676087

`or(1, A008574(A049725(n)-A049713(n)))`
-/

namespace A049737.P2476684980699676087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008574 (A049725 n - A049713 n).toNat)

end

end A049737.P2476684980699676087

/-! ## A049737.P227129666255624834

`A057427(n)+A008574(A049725(n)-A049713(n))`
-/

namespace A049737.P227129666255624834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A008574 (A049725 n - A049713 n).toNat

end

end A049737.P227129666255624834

/-!
# A049738: a(n) = Sum_{i=0..floor(n/2)} T(2i,n-2i), array T as in A049735.

The programs for A049738, there is no canonical definition to state claims against.
-/

/-! ## A049738.P9782392969421495222

`((n+1)²+n²)*A001222(n!²+2)`
-/

namespace A049738.P9782392969421495222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n ^ 2 : ℤ) * A001222 (Nat.factorial n ^ 2 + 2)

end

end A049738.P9782392969421495222

/-!
# A049740: a(n)=T(n,n), array T as in A049735.

The programs for A049740, there is no canonical definition to state claims against.
-/

/-! ## A049740.P2185110242710875243

`floor(A049728(n)²/A048150(n))`
-/

namespace A049740.P2185110242710875243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049728 n ^ 2 : ℚ) / (A048150 n : ℚ)⌋

end

end A049740.P2185110242710875243

/-! ## A049740.P10289064479004878854

`A053415(2*n)+A000328(n)`
-/

namespace A049740.P10289064479004878854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (2 * n) + A000328 n

end

end A049740.P10289064479004878854

/-! ## A049740.P13482979786482184666

`A053415(2*n)+∑[A036693(n)]`
-/

namespace A049740.P13482979786482184666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049740.P13482979786482184666

/-! ## A049740.P6575542622465828915

`A053415(2*n)+A053411(2*n)`
-/

namespace A049740.P6575542622465828915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (2 * n) + A053411 (2 * n)

end

end A049740.P6575542622465828915

/-! ## A049740.P14495592089572858319

`A053415(A005843(n))+4*A036698(n)+1`
-/

namespace A049740.P14495592089572858319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (A005843 n).toNat + (4 * A036698 n + 1)

end

end A049740.P14495592089572858319

/-! ## A049740.P8928673991675517730

`A053415(A005843(n))+record[A053411(n)/(-1)^n]`
-/

namespace A049740.P8928673991675517730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053411 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 (A005843 n).toNat : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049740.P8928673991675517730

/-! ## A049740.P12718750392388761417

`A016813(A049728(n)-A048150(n))`
-/

namespace A049740.P12718750392388761417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A049728 n - A048150 n).toNat

end

end A049740.P12718750392388761417

/-! ## A049740.P11678970821035387240

`A016813(A049728(n)%A048150(n))`
-/

namespace A049740.P11678970821035387240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.tmod (A049728 n) (A048150 n)).toNat

end

end A049740.P11678970821035387240

/-! ## A049740.P1847191324233439877

`A057655(2*n²)`
-/

namespace A049740.P1847191324233439877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (2 * n ^ 2)

end

end A049740.P1847191324233439877

/-! ## A049740.P6531589679928217809

`A049735(∑[4*n])`
-/

namespace A049740.P6531589679928217809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049740.P6531589679928217809

/-!
# A049741: a(n)=T(n,n+1), array T as in A049735.

The programs for A049741, there is no canonical definition to state claims against.
-/

/-! ## A049741.P5935357641754671193

`A016813(A049729(n)-A049717(n))`
-/

namespace A049741.P5935357641754671193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A049729 n - A049717 n).toNat

end

end A049741.P5935357641754671193

/-! ## A049741.P12008967147077176223

`A057655(∑[4*n]+1)`
-/

namespace A049741.P12008967147077176223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049741.P12008967147077176223

/-! ## A049741.P9511227007479447093

`A014198(∑[4*n]+1)+1`
-/

namespace A049741.P9511227007479447093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A049741.P9511227007479447093

/-! ## A049741.P14875577292381616596

`or(1, A014198(A001844(n)))`
-/

namespace A049741.P14875577292381616596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014198 (A001844 n).toNat)

end

end A049741.P14875577292381616596

/-! ## A049741.P6153989223463753644

`or(1, A014198(∑[A008574(n)]))`
-/

namespace A049741.P6153989223463753644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A049741.P6153989223463753644

/-! ## A049741.P5585996737371258557

`4*A014200(∑[A008574(n)])+1`
-/

namespace A049741.P5585996737371258557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A049741.P5585996737371258557

/-! ## A049741.P3093183638218046719

`4*A014200(Δ[A005900(n)])+1`
-/

namespace A049741.P3093183638218046719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014200 (f1 (n + 1) - f1 n).toNat + 1

end

end A049741.P3093183638218046719

/-! ## A049741.P13693964302567608314

`A075437(n²)+A014198(A001844(n))`
-/

namespace A049741.P13693964302567608314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (n ^ 2) + A014198 (A001844 n).toNat

end

end A049741.P13693964302567608314

/-! ## A049741.P12020247970333965166

`A075439(n²)+A014198(A001844(n))`
-/

namespace A049741.P12020247970333965166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (n ^ 2) + A014198 (A001844 n).toNat

end

end A049741.P12020247970333965166

/-! ## A049741.P10703843237355885524

`xor(A014963(6*(n+1)), A014198(A001844(n)))`
-/

namespace A049741.P10703843237355885524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (6 * (n + 1))) (A014198 (A001844 n).toNat)

end

end A049741.P10703843237355885524

/-!
# A049742: a(n)=T(n,n+2), array T as in A049735.

The programs for A049742, there is no canonical definition to state claims against.
-/

/-! ## A049742.P11753577723299846274

`floor(A049730(n)²/A049718(n))`
-/

namespace A049742.P11753577723299846274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049730 n ^ 2 : ℚ) / (A049718 n : ℚ)⌋

end

end A049742.P11753577723299846274

/-! ## A049742.P12854862233109648459

`A016813(A049730(n)-A049718(n))`
-/

namespace A049742.P12854862233109648459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A049730 n - A049718 n).toNat

end

end A049742.P12854862233109648459

/-! ## A049742.P6574387717780870723

`A016813(A049730(n)%A049718(n))`
-/

namespace A049742.P6574387717780870723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.tmod (A049730 n) (A049718 n)).toNat

end

end A049742.P6574387717780870723

/-! ## A049742.P13967643550418592626

`A057655((n+2)²+n²)`
-/

namespace A049742.P13967643550418592626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 ((n + 2) ^ 2 + n ^ 2)

end

end A049742.P13967643550418592626

/-! ## A049742.P16894828196443259181

`A049735((n+1)²+(n+2)²)`
-/

namespace A049742.P16894828196443259181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A049742.P16894828196443259181

/-! ## A049742.P1452949657766401930

`A014198(Δ[A005894(n)])+1`
-/

namespace A049742.P1452949657766401930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (f1 (n + 1) - f1 n).toNat + 1

end

end A049742.P1452949657766401930

/-!
# A049743: a(n)=T(n,n+3), array T as in A049735.

The programs for A049743, there is no canonical definition to state claims against.
-/

/-! ## A049743.P4685648478731430916

`floor(A049731(n)²/A049719(n))`
-/

namespace A049743.P4685648478731430916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049731 n ^ 2 : ℚ) / (A049719 n : ℚ)⌋

end

end A049743.P4685648478731430916

/-! ## A049743.P4626270700260093269

`A165326(n)²*round(A049731(n)²/A049719(n))`
-/

namespace A049743.P4626270700260093269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ))

end

end A049743.P4626270700260093269

/-! ## A049743.P4806264354085978763

`round(A049731(n)²/A049719(n))+n*A000007(n)`
-/

namespace A049743.P4806264354085978763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ)) + (n : ℤ) * A000007 n

end

end A049743.P4806264354085978763

/-! ## A049743.P3055475899378050004

`A009001(2*n)²*round(A049731(n)²/A049719(n))`
-/

namespace A049743.P3055475899378050004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ))

end

end A049743.P3055475899378050004

/-! ## A049743.P1964187908932229313

`round(A049731(n)²/A049719(n))%A045275(n+1)²`
-/

namespace A049743.P1964187908932229313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ))) (A045275 (n + 1) ^ 2)

end

end A049743.P1964187908932229313

/-! ## A049743.P13838520961370272240

`(n-A004442(n))²*round(A049731(n)²/A049719(n))`
-/

namespace A049743.P13838520961370272240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) ^ 2 * SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ))

end

end A049743.P13838520961370272240

/-! ## A049743.P2032145081958181829

`A036987(2*(n+1))+round(A049731(n)²/A049719(n))`
-/

namespace A049743.P2032145081958181829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (n + 1)) + SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ))

end

end A049743.P2032145081958181829

/-! ## A049743.P4169693232965593691

`round(A049731(n)²/A049719(n))%A180785(n+7)`
-/

namespace A049743.P4169693232965593691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049731 n ^ 2 : ℚ) / (A049719 n : ℚ))) (A180785 (n + 7))

end

end A049743.P4169693232965593691

/-! ## A049743.P16710722681532130150

`A057655(A294774(n+1))`
-/

namespace A049743.P16710722681532130150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A294774 (n + 1)).toNat

end

end A049743.P16710722681532130150

/-! ## A049743.P11451542555217305642

`A057655(A058331(n+2)-2*n)`
-/

namespace A049743.P11451542555217305642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A058331 (n + 2) - (2 * n : ℤ)).toNat

end

end A049743.P11451542555217305642

/-!
# A049744: a(n)=T(n,1), array T as in A049735.

The programs for A049744, the canonical program `A049744.P13630164365312870052` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049744 has offset 0).

The definition of A049744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049744.P13630164365312870052

`A333167(n)+A000328(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049744

/-- `A333167(n)+A000328(n)` -/
def P13630164365312870052.Spec : Prop :=
  ∀ n, P13630164365312870052.a n = A049744 n

theorem P13630164365312870052.correct : P13630164365312870052.Spec := by
  intro n
  simp only [A049744]

end A049744

/-! ## A049744.P751275255999777902

`A333167(n)+∑[A036693(n)]`
-/

namespace A049744.P751275255999777902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049744.P751275255999777902

namespace A049744

/-- `A333167(n)+∑[A036693(n)]` -/
def P751275255999777902.Spec : Prop :=
  ∀ n, P751275255999777902.a n = A049744 n

end A049744

/-! ## A049744.P9440996724221367911

`A333167(n)+∑[A008574(A036694(n))]`
-/

namespace A049744.P9440996724221367911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A036694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049744.P9440996724221367911

namespace A049744

/-- `A333167(n)+∑[A008574(A036694(n))]` -/
def P9440996724221367911.Spec : Prop :=
  ∀ n, P9440996724221367911.a n = A049744 n

end A049744

/-! ## A049744.P12240156530158925998

`A333167(n)+A053411(2*n)`
-/

namespace A049744.P12240156530158925998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + A053411 (2 * n)

end

end A049744.P12240156530158925998

namespace A049744

/-- `A333167(n)+A053411(2*n)` -/
def P12240156530158925998.Spec : Prop :=
  ∀ n, P12240156530158925998.a n = A049744 n

end A049744

/-! ## A049744.P12234422872578078124

`A046109(n)+A333167(n)+A051132(n)`
-/

namespace A049744.P12234422872578078124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n + (A333167 n + A051132 n)

end

end A049744.P12234422872578078124

namespace A049744

/-- `A046109(n)+A333167(n)+A051132(n)` -/
def P12234422872578078124.Spec : Prop :=
  ∀ n, P12234422872578078124.a n = A049744 n

end A049744

/-! ## A049744.P14676999069873356618

`A057961(A047808(n)+1)`
-/

namespace A049744.P14676999069873356618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (A047808 n + 1).toNat

end

end A049744.P14676999069873356618

namespace A049744

/-- `A057961(A047808(n)+1)` -/
def P14676999069873356618.Spec : Prop :=
  ∀ n, P14676999069873356618.a n = A049744 n

end A049744

/-! ## A049744.P13539947245769494464

`A333167(n)+A049735(∑[n])`
-/

namespace A049744.P13539947245769494464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + A049735 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049744.P13539947245769494464

namespace A049744

/-- `A333167(n)+A049735(∑[n])` -/
def P13539947245769494464.Spec : Prop :=
  ∀ n, P13539947245769494464.a n = A049744 n

end A049744

/-! ## A049744.P2004601919381235949

`A049735(∑[n+1]+1)`
-/

namespace A049744.P2004601919381235949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049744.P2004601919381235949

namespace A049744

/-- `A049735(∑[n+1]+1)` -/
def P2004601919381235949.Spec : Prop :=
  ∀ n, P2004601919381235949.a n = A049744 n

end A049744

/-! ## A049744.P2389899530904411335

`or(1, A049735(A034856(n+1)))`
-/

namespace A049744.P2389899530904411335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049735 (A034856 (n + 1)).toNat)

end

end A049744.P2389899530904411335

namespace A049744

/-- `or(1, A049735(A034856(n+1)))` -/
def P2389899530904411335.Spec : Prop :=
  ∀ n, P2389899530904411335.a n = A049744 n

end A049744

/-! ## A049744.P7588332609503031602

`A049735(A034856(n+1))%A049742(n)`
-/

namespace A049744.P7588332609503031602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049735 (A034856 (n + 1)).toNat) (A049742 n)

end

end A049744.P7588332609503031602

namespace A049744

/-- `A049735(A034856(n+1))%A049742(n)` -/
def P7588332609503031602.Spec : Prop :=
  ∀ n, P7588332609503031602.a n = A049744 n

end A049744

/-! ## A049744.P12446239315720495155

`A333167(n)+A016813(A036698(n))`
-/

namespace A049744.P12446239315720495155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + A016813 (A036698 n).toNat

end

end A049744.P12446239315720495155

namespace A049744

/-- `A333167(n)+A016813(A036698(n))` -/
def P12446239315720495155.Spec : Prop :=
  ∀ n, P12446239315720495155.a n = A049744 n

end A049744

/-! ## A049744.P5937854855684532345

`A057655(n²+1)`
-/

namespace A049744.P5937854855684532345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + 1)

end

end A049744.P5937854855684532345

namespace A049744

/-- `A057655(n²+1)` -/
def P5937854855684532345.Spec : Prop :=
  ∀ n, P5937854855684532345.a n = A049744 n

end A049744

/-! ## A049744.P13582788230039048869

`A014198(n²+1)+1`
-/

namespace A049744.P13582788230039048869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (n ^ 2 + 1) + 1

end

end A049744.P13582788230039048869

namespace A049744

/-- `A014198(n²+1)+1` -/
def P13582788230039048869.Spec : Prop :=
  ∀ n, P13582788230039048869.a n = A049744 n

end A049744

/-! ## A049744.P5000199447261574485

`or(1, A014198(A002522(n)))`
-/

namespace A049744.P5000199447261574485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014198 (A002522 n).toNat)

end

end A049744.P5000199447261574485

namespace A049744

/-- `or(1, A014198(A002522(n)))` -/
def P5000199447261574485.Spec : Prop :=
  ∀ n, P5000199447261574485.a n = A049744 n

end A049744

/-! ## A049744.P18223849208769384574

`A016813(A014200(n²+1))`
-/

namespace A049744.P18223849208769384574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014200 (n ^ 2 + 1)).toNat

end

end A049744.P18223849208769384574

namespace A049744

/-- `A016813(A014200(n²+1))` -/
def P18223849208769384574.Spec : Prop :=
  ∀ n, P18223849208769384574.a n = A049744 n

end A049744

/-! ## A049744.P1711268681221091219

`A004018(A002522(n))+A000328(n)`
-/

namespace A049744.P1711268681221091219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A002522 n).toNat + A000328 n

end

end A049744.P1711268681221091219

namespace A049744

/-- `A004018(A002522(n))+A000328(n)` -/
def P1711268681221091219.Spec : Prop :=
  ∀ n, P1711268681221091219.a n = A049744 n

end A049744

/-!
# A049745: a(n)=T(n,2), array T as in A049735.

The programs for A049745, there is no canonical definition to state claims against.
-/

/-! ## A049745.P12361805139985932678

`floor(A049733(n)²/A049721(n))`
-/

namespace A049745.P12361805139985932678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049733 n ^ 2 : ℚ) / (A049721 n : ℚ)⌋

end

end A049745.P12361805139985932678

/-! ## A049745.P18417347993337154539

`A049735(∑[n+2]+3)`
-/

namespace A049745.P18417347993337154539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A049745.P18417347993337154539

/-! ## A049745.P1511522889427763922

`A000027(A049735(∑[n+3]))`
-/

namespace A049745.P1511522889427763922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049735 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049745.P1511522889427763922

/-! ## A049745.P5829492379503567308

`or(1, A049735(A055998(n+1)))`
-/

namespace A049745.P5829492379503567308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049735 (A055998 (n + 1)).toNat)

end

end A049745.P5829492379503567308

/-! ## A049745.P15418634020303390842

`record[A049735(A055998(abs(1-n)))]`
-/

namespace A049745.P15418634020303390842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (A055998 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049745.P15418634020303390842

/-! ## A049745.P7741160280545098302

`A057655(n²+4)`
-/

namespace A049745.P7741160280545098302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + 4)

end

end A049745.P7741160280545098302

/-! ## A049745.P15746905450909901982

`A014198(n²+4)+1`
-/

namespace A049745.P15746905450909901982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (n ^ 2 + 4) + 1

end

end A049745.P15746905450909901982

/-! ## A049745.P13788377980456141048

`or(1, A014198(A087475(n)))`
-/

namespace A049745.P13788377980456141048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014198 (A087475 n).toNat)

end

end A049745.P13788377980456141048

/-!
# A049746: a(n)=T(n,3), array T as in A049735.

The programs for A049746, there is no canonical definition to state claims against.
-/

/-! ## A049746.P9533933004248934067

`floor(A049734(n)²/A049722(n))`
-/

namespace A049746.P9533933004248934067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049734 n ^ 2 : ℚ) / (A049722 n : ℚ)⌋

end

end A049746.P9533933004248934067

/-! ## A049746.P4319878704238238941

`A049735(∑[n+3]+6)`
-/

namespace A049746.P4319878704238238941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A049746.P4319878704238238941

/-! ## A049746.P8073682771909535566

`or(1, A049735(A167614(n+2)))`
-/

namespace A049746.P8073682771909535566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049735 (A167614 (n + 2)).toNat)

end

end A049746.P8073682771909535566

/-! ## A049746.P14092921931967606758

`abs(A049735(A167614(n+2))*A057077(n))`
-/

namespace A049746.P14092921931967606758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049735 (A167614 (n + 2)).toNat * A057077 n|

end

end A049746.P14092921931967606758

/-! ## A049746.P511335537214685255

`A049735(A167614(n+2))+A000038(n+1)`
-/

namespace A049746.P511335537214685255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (A167614 (n + 2)).toNat + A000038 (n + 1)

end

end A049746.P511335537214685255

/-! ## A049746.P15858174148914422860

`A049735(A167614(n+2))%A197905(n+1)`
-/

namespace A049746.P15858174148914422860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049735 (A167614 (n + 2)).toNat) (A197905 (n + 1))

end

end A049746.P15858174148914422860

/-! ## A049746.P2107199585442492672

`abs(A153881(n+1))*A049735(A167614(n+2))`
-/

namespace A049746.P2107199585442492672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153881 (n + 1)| * A049735 (A167614 (n + 2)).toNat

end

end A049746.P2107199585442492672

/-! ## A049746.P4787382149932349122

`A049735(A167614(n+2))+char[A288851(n+1)]`
-/

namespace A049746.P4787382149932349122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288851 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049735 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049746.P4787382149932349122

/-! ## A049746.P9203951757770254695

`A055975(2*n+1)²*A049735(A167614(n+2))`
-/

namespace A049746.P9203951757770254695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) ^ 2 * A049735 (A167614 (n + 2)).toNat

end

end A049746.P9203951757770254695

/-! ## A049746.P4477724627126691851

`A014963(A008458(n))*A049735(A167614(n+2))`
-/

namespace A049746.P4477724627126691851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A049735 (A167614 (n + 2)).toNat

end

end A049746.P4477724627126691851

/-! ## A049746.P12056729067986307842

`A007318(A178334(n))*A049735(A167614(n+2))`
-/

namespace A049746.P12056729067986307842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A178334 n).toNat * A049735 (A167614 (n + 2)).toNat

end

end A049746.P12056729067986307842

/-! ## A049746.P10324363855764609444

`A057655(n²+9)`
-/

namespace A049746.P10324363855764609444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + 9)

end

end A049746.P10324363855764609444

/-! ## A049746.P3368109530997380138

`A014198(n²+9)+1`
-/

namespace A049746.P3368109530997380138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (n ^ 2 + 9) + 1

end

end A049746.P3368109530997380138

/-! ## A049746.P1143555097316630407

`xor(A020985(n)², A014198(A189834(n)))`
-/

namespace A049746.P1143555097316630407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n ^ 2) (A014198 (A189834 n).toNat)

end

end A049746.P1143555097316630407

/-!
# A049747: Array T read by diagonals; T(i,j)=number of directions from (0,0) to lattice points in first-quadrant portion of disk with radius (0,0)-to-(i,j).

The programs for A049747, there is no canonical definition to state claims against.
-/

/-! ## A049747.P9015096449726019538

`A049751(n)/2`
-/

namespace A049747.P9015096449726019538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 n : ℚ) / 2

end

end A049747.P9015096449726019538

/-! ## A049747.P15574821880653251744

`A318518(A049751(n)+2)-1`
-/

namespace A049747.P15574821880653251744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A049751 n + 2).toNat - 1

end

end A049747.P15574821880653251744

/-! ## A049747.P2512076236615710836

`A001281(A049751(n))`
-/

namespace A049747.P2512076236615710836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049751 n).toNat

end

end A049747.P2512076236615710836

/-! ## A049747.P10553963366374158848

`A004524(A049751(n)+1)`
-/

namespace A049747.P10553963366374158848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A049751 n + 1).toNat

end

end A049747.P10553963366374158848

/-! ## A049747.P15740223900026376584

`A004526(A049751(n)+1)`
-/

namespace A049747.P15740223900026376584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049751 n + 1).toNat

end

end A049747.P15740223900026376584

/-! ## A049747.P6924285427641830227

`A004525(lcm(2, A049751(n)))`
-/

namespace A049747.P6924285427641830227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A049751 n))

end

end A049747.P6924285427641830227

/-! ## A049747.P8703493164847104089

`A004524(or(1, A049751(n)))`
-/

namespace A049747.P8703493164847104089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A049751 n)).toNat

end

end A049747.P8703493164847104089

/-! ## A049747.P2357438365355984246

`A008619(A049751(n)+1)-1`
-/

namespace A049747.P2357438365355984246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A049751 n + 1).toNat - 1

end

end A049747.P2357438365355984246

/-! ## A049747.P15400270985659492226

`A004526(A049751(A061579(n)))`
-/

namespace A049747.P15400270985659492226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049751 (A061579 n).toNat).toNat

end

end A049747.P15400270985659492226

/-! ## A049747.P3234200730232108025

`A004526(2*A049751(n)-A049751(n))`
-/

namespace A049747.P3234200730232108025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A049751 n - A049751 n).toNat

end

end A049747.P3234200730232108025

/-! ## A049747.P5978331954693305295

`A002265(2*A049751(n))`
-/

namespace A049747.P5978331954693305295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A049751 n).toNat

end

end A049747.P5978331954693305295

/-! ## A049747.P12828155473061942400

`A002265(A049751(n)+A049751(n)+1)`
-/

namespace A049747.P12828155473061942400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A049751 n + (A049751 n + 1)).toNat

end

end A049747.P12828155473061942400

/-! ## A049747.P16995638343570654994

`A295820(A048147(n))`
-/

namespace A049747.P16995638343570654994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 (A048147 n).toNat

end

end A049747.P16995638343570654994

/-!
# A049748: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049747.

The programs for A049748, there is no canonical definition to state claims against.
-/

/-! ## A049748.P5152780192518016772

`A353744(A005434(2*(n+2))-3)`
-/

namespace A049748.P5152780192518016772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (A005434 (2 * (n + 2)) - 3).toNat

end

end A049748.P5152780192518016772

/-! ## A049748.P7084948284859703586

`∑[eq[A328167(2*(n+1)), A328176(n+2)]]`
-/

namespace A049748.P7084948284859703586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328176 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049748.P7084948284859703586

/-!
# A049751: Array T read by diagonals; T(i,j)=number of directions from (0,0) to lattice points in closed disk with radius (0,0)-to-(i,j).

The programs for A049751, there is no canonical definition to state claims against.
-/

/-! ## A049751.P6059158248795018184

`2*A049747(n)`
-/

namespace A049751.P6059158248795018184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049747 n

end

end A049751.P6059158248795018184

/-! ## A049751.P9660002928552947676

`A005843(A049747(n))`
-/

namespace A049751.P9660002928552947676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A049747 n).toNat

end

end A049751.P9660002928552947676

/-! ## A049751.P1464457452839236416

`A004277(A049747(n)+1)-2`
-/

namespace A049751.P1464457452839236416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049747 n + 1).toNat - 2

end

end A049751.P1464457452839236416

/-! ## A049751.P5242079438550139228

`A004277(A049747(n))%A001288(n)`
-/

namespace A049751.P5242079438550139228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A049747 n).toNat) (A001288 (n + 11))

end

end A049751.P5242079438550139228

/-! ## A049751.P3229889481926130549

`A049747(n)+A049747(n)%A016777(n)`
-/

namespace A049751.P3229889481926130549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 n + Int.tmod (A049747 n) (A016777 n)

end

end A049751.P3229889481926130549

/-! ## A049751.P15034807770301264469

`A049747(n)+lcm(A049747(n), A087960(n))`
-/

namespace A049751.P15034807770301264469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 n + (Int.lcm (A049747 n) (A087960 n) : ℤ)

end

end A049751.P15034807770301264469

/-! ## A049751.P12492834163876026738

`A049747(n)+and(A049747(n), A057428(n))`
-/

namespace A049751.P12492834163876026738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 n + Int.land (A049747 n) (A057428 n)

end

end A049751.P12492834163876026738

/-! ## A049751.P16207672953654135828

`(A049747(n)+A049747(n))%A163300(n+2)`
-/

namespace A049751.P16207672953654135828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049747 n + A049747 n) (A163300 (n + 2))

end

end A049751.P16207672953654135828

/-! ## A049751.P1671865185948776631

`A049747(n)+A049747(A061579(n))`
-/

namespace A049751.P1671865185948776631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 n + A049747 (A061579 n).toNat

end

end A049751.P1671865185948776631

/-! ## A049751.P18238318041296970597

`A004277(A049747(n))-A091685(A004277(n))`
-/

namespace A049751.P18238318041296970597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049747 n).toNat - A091685 (A004277 n).toNat

end

end A049751.P18238318041296970597

/-! ## A049751.P3636947758210442800

`A008683(A006489(n+1))+A005408(A049747(n))`
-/

namespace A049751.P3636947758210442800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006489 (n + 1)).toNat + A005408 (A049747 n).toNat

end

end A049751.P3636947758210442800

/-! ## A049751.P16232058681738795976

`2*A295820(A048147(n))`
-/

namespace A049751.P16232058681738795976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295820 (A048147 n).toNat

end

end A049751.P16232058681738795976

/-!
# A049752: a(n) = T(n,n), array T as in A049747.

The programs for A049752, there is no canonical definition to state claims against.
-/

/-! ## A049752.P9437310087479572228

`A049747(∑[4*n])`
-/

namespace A049752.P9437310087479572228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049752.P9437310087479572228

/-! ## A049752.P12655131705789115278

`A049751(∑[4*n])/2`
-/

namespace A049752.P12655131705789115278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A049752.P12655131705789115278

/-! ## A049752.P2459868903584758509

`A305117(2*n²)+ceil(sin(n)²)`
-/

namespace A049752.P2459868903584758509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (2 * n ^ 2) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A049752.P2459868903584758509

/-! ## A049752.P7653924395871030330

`A004526(A049751(∑[4*n]))`
-/

namespace A049752.P7653924395871030330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049751 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049752.P7653924395871030330

/-! ## A049752.P11465148005065156275

`record[A049747(n*A003982(n))]`
-/

namespace A049752.P11465148005065156275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049752.P11465148005065156275

/-! ## A049752.P15252452227257455939

`A305117(2*n²)+A057427(n)`
-/

namespace A049752.P15252452227257455939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (2 * n ^ 2) + A057427 n

end

end A049752.P15252452227257455939

/-! ## A049752.P4163197730059509700

`A305117(2*n²)+A178334(n)`
-/

namespace A049752.P4163197730059509700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (2 * n ^ 2) + A178334 n

end

end A049752.P4163197730059509700

/-! ## A049752.P14736323347342510163

`A305117(2*n²)-A057428(n)`
-/

namespace A049752.P14736323347342510163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (2 * n ^ 2) - A057428 n

end

end A049752.P14736323347342510163

/-! ## A049752.P8542069542642782696

`A026741(A049747((n+1)*2*n))`
-/

namespace A049752.P8542069542642782696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A049747 ((n + 1) * (2 * n))).toNat

end

end A049752.P8542069542642782696

/-! ## A049752.P16775729142267058909

`A305117(2*n²)+A000040(n+1)%2`
-/

namespace A049752.P16775729142267058909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (2 * n ^ 2) + Int.tmod (A000040 (n + 1)) 2

end

end A049752.P16775729142267058909

/-!
# A049753: a(n) = T(n,n+1), array T as in A049747.

The programs for A049753, there is no canonical definition to state claims against.
-/

/-! ## A049753.P12005486445057571265

`A305117(∑[4*n]+1)+1`
-/

namespace A049753.P12005486445057571265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A049753.P12005486445057571265

/-! ## A049753.P8176811569165666692

`abs(1-A305117((n+1)²+n²))+2`
-/

namespace A049753.P8176811569165666692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A305117 ((n + 1) ^ 2 + n ^ 2)| + 2

end

end A049753.P8176811569165666692

/-! ## A049753.P18418369831169977435

`A304651(A001844(n))/4+1`
-/

namespace A049753.P18418369831169977435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304651 (A001844 n).toNat : ℚ) / 4 + 1

end

end A049753.P18418369831169977435

/-! ## A049753.P5955908265923054774

`A000027(A305117((n+1)²+n²)+1)`
-/

namespace A049753.P5955908265923054774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A305117 ((n + 1) ^ 2 + n ^ 2) + 1).toNat

end

end A049753.P5955908265923054774

/-! ## A049753.P16043156037032586635

`A028310(A305117((n+1)²+n²)+1)`
-/

namespace A049753.P16043156037032586635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A305117 ((n + 1) ^ 2 + n ^ 2) + 1).toNat

end

end A049753.P16043156037032586635

/-! ## A049753.P15063874014747625546

`A049747(2*(n+1)²)`
-/

namespace A049753.P15063874014747625546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (2 * (n + 1) ^ 2)

end

end A049753.P15063874014747625546

/-! ## A049753.P12826026396735774343

`A049751(A001105(n+1))/2`
-/

namespace A049753.P12826026396735774343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A001105 (n + 1)).toNat : ℚ) / 2

end

end A049753.P12826026396735774343

/-! ## A049753.P3068712949066898631

`A049751(A077221(n+1))/2`
-/

namespace A049753.P3068712949066898631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A077221 (n + 1)).toNat : ℚ) / 2

end

end A049753.P3068712949066898631

/-! ## A049753.P12652119637475499476

`A049747(A184636(n+1))-A000007(n)`
-/

namespace A049753.P12652119637475499476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A184636 (n + 1)).toNat - A000007 n

end

end A049753.P12652119637475499476

/-!
# A049754: a(n) = T(n,n+2), array T as in A049747.

The programs for A049754, there is no canonical definition to state claims against.
-/

/-! ## A049754.P959711550101230789

`A049747((n+1)²+(n+2)²)`
-/

namespace A049754.P959711550101230789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A049754.P959711550101230789

/-! ## A049754.P12786468398556205223

`A305117((n+2)²+n²)+1`
-/

namespace A049754.P12786468398556205223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 ((n + 2) ^ 2 + n ^ 2) + 1

end

end A049754.P12786468398556205223

/-! ## A049754.P17380972393464018316

`A049751(A001844(n+1))/2`
-/

namespace A049754.P17380972393464018316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A001844 (n + 1)).toNat : ℚ) / 2

end

end A049754.P17380972393464018316

/-! ## A049754.P13977478677119503111

`A049751(A080827(2*n+3))/2`
-/

namespace A049754.P13977478677119503111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A080827 (2 * n + 3)).toNat : ℚ) / 2

end

end A049754.P13977478677119503111

/-! ## A049754.P15538562019587370999

`A295820(n²+(n+2)²)`
-/

namespace A049754.P15538562019587370999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 (n ^ 2 + (n + 2) ^ 2)

end

end A049754.P15538562019587370999

/-!
# A049755: a(n) = T(n,n+3), array T as in A049747.

The programs for A049755, there is no canonical definition to state claims against.
-/

/-! ## A049755.P3158836452146247359

`A305117((n+3)²+n²)+1`
-/

namespace A049755.P3158836452146247359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 ((n + 3) ^ 2 + n ^ 2) + 1

end

end A049755.P3158836452146247359

/-! ## A049755.P12338737963037340582

`A049747(∑[4*n+6])`
-/

namespace A049755.P12338737963037340582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049755.P12338737963037340582

/-! ## A049755.P8644380830414706914

`A049751(A268581(n)+1)/2`
-/

namespace A049755.P8644380830414706914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A268581 n + 1).toNat : ℚ) / 2

end

end A049755.P8644380830414706914

/-! ## A049755.P10897770358176392473

`or(1, A049747(A268581(n)+1))`
-/

namespace A049755.P10897770358176392473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049747 (A268581 n + 1).toNat)

end

end A049755.P10897770358176392473

/-! ## A049755.P681408498865684979

`A049751(A000217(2*n+3)+n)/2`
-/

namespace A049755.P681408498865684979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A000217 (2 * n + 3) + (n : ℤ)).toNat : ℚ) / 2

end

end A049755.P681408498865684979

/-! ## A049755.P2433776080373307801

`A049747(A268581(n)+1)%A049731(n)`
-/

namespace A049755.P2433776080373307801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049747 (A268581 n + 1).toNat) (A049731 n)

end

end A049755.P2433776080373307801

/-! ## A049755.P13618387512244981326

`A007318(C(2, n))*A049747(A268581(n)+1)`
-/

namespace A049755.P13618387512244981326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A049747 (A268581 n + 1).toNat

end

end A049755.P13618387512244981326

/-! ## A049755.P13155132399770231114

`A049747(A268581(n)+1)+A008683(A001248(n+1))`
-/

namespace A049755.P13155132399770231114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A268581 n + 1).toNat + A008683 (A001248 (n + 1)).toNat

end

end A049755.P13155132399770231114

/-!
# A049756: a(n) = T(n,1), array T as in A049747.

The programs for A049756, the canonical program `A049756.P14980323311031342040` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049756 has offset 0).

The definition of A049756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049756.P4670917884024812607

`A049747(∑[n+1]+1)`
-/

namespace A049756.P4670917884024812607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049756.P4670917884024812607

namespace A049756

/-- `A049747(∑[n+1]+1)` -/
def P4670917884024812607.Spec : Prop :=
  ∀ n, P4670917884024812607.a n = A049756 n

end A049756

/-! ## A049756.P17576848497401648472

`A049751(∑[n+1]+1)/2`
-/

namespace A049756.P17576848497401648472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A049756.P17576848497401648472

namespace A049756

/-- `A049751(∑[n+1]+1)/2` -/
def P17576848497401648472.Spec : Prop :=
  ∀ n, P17576848497401648472.a n = (A049756 n : ℚ)

end A049756

/-! ## A049756.P11031714077845082052

`record[A049747(A056536(n+1))]`
-/

namespace A049756.P11031714077845082052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049756.P11031714077845082052

namespace A049756

/-- `record[A049747(A056536(n+1))]` -/
def P11031714077845082052.Spec : Prop :=
  ∀ n, P11031714077845082052.a n = A049756 n

end A049756

/-! ## A049756.P11799823386565705152

`record[A049747(A114091(n+1))]`
-/

namespace A049756.P11799823386565705152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049756.P11799823386565705152

namespace A049756

/-- `record[A049747(A114091(n+1))]` -/
def P11799823386565705152.Spec : Prop :=
  ∀ n, P11799823386565705152.a n = A049756 n

end A049756

/-! ## A049756.P6420535416068410953

`record[A049747(A254052(n+1))]`
-/

namespace A049756.P6420535416068410953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049756.P6420535416068410953

namespace A049756

/-- `record[A049747(A254052(n+1))]` -/
def P6420535416068410953.Spec : Prop :=
  ∀ n, P6420535416068410953.a n = A049756 n

end A049756

/-! ## A049756.P13279459457236493160

`record[A049747(A278506(n+1))]`
-/

namespace A049756.P13279459457236493160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A278506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049756.P13279459457236493160

namespace A049756

/-- `record[A049747(A278506(n+1))]` -/
def P13279459457236493160.Spec : Prop :=
  ∀ n, P13279459457236493160.a n = A049756 n

end A049756

/-! ## A049756.P18044564378963179376

`A049747(A134869(n+1))%A016826(n)`
-/

namespace A049756.P18044564378963179376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049747 (A134869 (n + 1)).toNat) (A016826 n)

end

end A049756.P18044564378963179376

namespace A049756

/-- `A049747(A134869(n+1))%A016826(n)` -/
def P18044564378963179376.Spec : Prop :=
  ∀ n, P18044564378963179376.a n = A049756 n

end A049756

/-! ## A049756.P13595409150593982282

`A014963(12*n+6)*A049747(A134869(n+1))`
-/

namespace A049756.P13595409150593982282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A049747 (A134869 (n + 1)).toNat

end

end A049756.P13595409150593982282

namespace A049756

/-- `A014963(12*n+6)*A049747(A134869(n+1))` -/
def P13595409150593982282.Spec : Prop :=
  ∀ n, P13595409150593982282.a n = A049756 n

end A049756

/-! ## A049756.P6675198001178477669

`A007318(A285718(n+3))*A049747(A134869(n+1))`
-/

namespace A049756.P6675198001178477669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A285718 (n + 3)).toNat * A049747 (A134869 (n + 1)).toNat

end

end A049756.P6675198001178477669

namespace A049756

/-- `A007318(A285718(n+3))*A049747(A134869(n+1))` -/
def P6675198001178477669.Spec : Prop :=
  ∀ n, P6675198001178477669.a n = A049756 n

end A049756

/-! ## A049756.P7355955005160279911

`A049747(A034856(n+1))%A016826(n)`
-/

namespace A049756.P7355955005160279911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049747 (A034856 (n + 1)).toNat) (A016826 n)

end

end A049756.P7355955005160279911

namespace A049756

/-- `A049747(A034856(n+1))%A016826(n)` -/
def P7355955005160279911.Spec : Prop :=
  ∀ n, P7355955005160279911.a n = A049756 n

end A049756

/-! ## A049756.P13544741277624292785

`or(A011730(n), A049747(A034856(n+1)))`
-/

namespace A049756.P13544741277624292785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011730 n) (A049747 (A034856 (n + 1)).toNat)

end

end A049756.P13544741277624292785

namespace A049756

/-- `or(A011730(n), A049747(A034856(n+1)))` -/
def P13544741277624292785.Spec : Prop :=
  ∀ n, P13544741277624292785.a n = A049756 n

end A049756

/-! ## A049756.P4305343161813230388

`abs(A033999(n)*A049747(A034856(n+1)))`
-/

namespace A049756.P4305343161813230388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A049747 (A034856 (n + 1)).toNat|

end

end A049756.P4305343161813230388

namespace A049756

/-- `abs(A033999(n)*A049747(A034856(n+1)))` -/
def P4305343161813230388.Spec : Prop :=
  ∀ n, P4305343161813230388.a n = A049756 n

end A049756

/-! ## A049756.P1205721194446585811

`A049747(A034856(n+1))+A000007(n+1)`
-/

namespace A049756.P1205721194446585811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A049756.P1205721194446585811

namespace A049756

/-- `A049747(A034856(n+1))+A000007(n+1)` -/
def P1205721194446585811.Spec : Prop :=
  ∀ n, P1205721194446585811.a n = A049756 n

end A049756

/-! ## A049756.P17335100015551607708

`A049747(A034856(n+1))+A000035(2*n)`
-/

namespace A049756.P17335100015551607708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A034856 (n + 1)).toNat + A000035 (2 * n)

end

end A049756.P17335100015551607708

namespace A049756

/-- `A049747(A034856(n+1))+A000035(2*n)` -/
def P17335100015551607708.Spec : Prop :=
  ∀ n, P17335100015551607708.a n = A049756 n

end A049756

/-! ## A049756.P10833717843591876157

`A049747(A034856(n+1))^gcd(13, A028356(n))`
-/

namespace A049756.P10833717843591876157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A034856 (n + 1)).toNat ^ Int.gcd 13 (A028356 n)

end

end A049756.P10833717843591876157

namespace A049756

/-- `A049747(A034856(n+1))^gcd(13, A028356(n))` -/
def P10833717843591876157.Spec : Prop :=
  ∀ n, P10833717843591876157.a n = A049756 n

end A049756

/-! ## A049756.P14980323311031342040

`A305117(n²+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049756

/-- `A305117(n²+1)+1` -/
def P14980323311031342040.Spec : Prop :=
  ∀ n, P14980323311031342040.a n = A049756 n

theorem P14980323311031342040.correct : P14980323311031342040.Spec := by
  intro n
  simp only [A049756]

end A049756

/-!
# A049757: a(n) = T(n,2), array T as in A049747.

The programs for A049757, the canonical program `A049757.P1655446980647832021` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049757 has offset 0).

The definition of A049757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049757.P17283993566380663458

`A049747(∑[n+2]+3)`
-/

namespace A049757.P17283993566380663458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A049757.P17283993566380663458

namespace A049757

/-- `A049747(∑[n+2]+3)` -/
def P17283993566380663458.Spec : Prop :=
  ∀ n, P17283993566380663458.a n = A049757 n

end A049757

/-! ## A049757.P13201540928205543804

`A049751(∑[floor(acot(n)²)+n+2]+1)/2`
-/

namespace A049757.P13201540928205543804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + (n + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ) / 2

end

end A049757.P13201540928205543804

namespace A049757

/-- `A049751(∑[floor(acot(n)²)+n+2]+1)/2` -/
def P13201540928205543804.Spec : Prop :=
  ∀ n, P13201540928205543804.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P15384618084458100940

`A049751(A340266(n+1))/2`
-/

namespace A049757.P15384618084458100940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A340266 (n + 1)).toNat : ℚ) / 2

end

end A049757.P15384618084458100940

namespace A049757

/-- `A049751(A340266(n+1))/2` -/
def P15384618084458100940.Spec : Prop :=
  ∀ n, P15384618084458100940.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P9308922790296500584

`A049751(A167614(n+1)-1)/2`
-/

namespace A049757.P9308922790296500584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A167614 (n + 1) - 1).toNat : ℚ) / 2

end

end A049757.P9308922790296500584

namespace A049757

/-- `A049751(A167614(n+1)-1)/2` -/
def P9308922790296500584.Spec : Prop :=
  ∀ n, P9308922790296500584.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P13485534982006512522

`A049751(A000096(n+1)+3)/2`
-/

namespace A049757.P13485534982006512522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A000096 (n + 1) + 3).toNat : ℚ) / 2

end

end A049757.P13485534982006512522

namespace A049757

/-- `A049751(A000096(n+1)+3)/2` -/
def P13485534982006512522.Spec : Prop :=
  ∀ n, P13485534982006512522.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P12463861766684838589

`A049751(A000217(n+2)+2)/2`
-/

namespace A049757.P12463861766684838589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A000217 (n + 2) + 2).toNat : ℚ) / 2

end

end A049757.P12463861766684838589

namespace A049757

/-- `A049751(A000217(n+2)+2)/2` -/
def P12463861766684838589.Spec : Prop :=
  ∀ n, P12463861766684838589.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P1986218122768953237

`A049747(A340266(n+1))+A000038(n+1)`
-/

namespace A049757.P1986218122768953237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A340266 (n + 1)).toNat + A000038 (n + 1)

end

end A049757.P1986218122768953237

namespace A049757

/-- `A049747(A340266(n+1))+A000038(n+1)` -/
def P1986218122768953237.Spec : Prop :=
  ∀ n, P1986218122768953237.a n = A049757 n

end A049757

/-! ## A049757.P12473689977146483008

`A049747(A340266(n+1))%A023545(n+1)`
-/

namespace A049757.P12473689977146483008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049747 (A340266 (n + 1)).toNat) (A023545 (n + 1))

end

end A049757.P12473689977146483008

namespace A049757

/-- `A049747(A340266(n+1))%A023545(n+1)` -/
def P12473689977146483008.Spec : Prop :=
  ∀ n, P12473689977146483008.a n = A049757 n

end A049757

/-! ## A049757.P2196602324128115167

`A319047(C(n, 2))+A049747(A340266(n+1))`
-/

namespace A049757.P2196602324128115167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (Nat.choose n 2) + A049747 (A340266 (n + 1)).toNat

end

end A049757.P2196602324128115167

namespace A049757

/-- `A319047(C(n, 2))+A049747(A340266(n+1))` -/
def P2196602324128115167.Spec : Prop :=
  ∀ n, P2196602324128115167.a n = A049757 n

end A049757

/-! ## A049757.P14182069999232865491

`A014963(12*(n+1))*A049747(A340266(n+1))`
-/

namespace A049757.P14182069999232865491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A049747 (A340266 (n + 1)).toNat

end

end A049757.P14182069999232865491

namespace A049757

/-- `A014963(12*(n+1))*A049747(A340266(n+1))` -/
def P14182069999232865491.Spec : Prop :=
  ∀ n, P14182069999232865491.a n = A049757 n

end A049757

/-! ## A049757.P17916951453093967960

`A049747(A340266(n+1))/A014963(gcd(n, n+1))`
-/

namespace A049757.P17916951453093967960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049747 (A340266 (n + 1)).toNat : ℚ) / (A014963 (Nat.gcd n (n + 1)) : ℚ)

end

end A049757.P17916951453093967960

namespace A049757

/-- `A049747(A340266(n+1))/A014963(gcd(n, n+1))` -/
def P17916951453093967960.Spec : Prop :=
  ∀ n, P17916951453093967960.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P16403060350508504214

`((-1)^A007318(n))²*A049747(A340266(n+1))`
-/

namespace A049757.P16403060350508504214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A049747 (A340266 (n + 1)).toNat : ℚ)

end

end A049757.P16403060350508504214

namespace A049757

/-- `((-1)^A007318(n))²*A049747(A340266(n+1))` -/
def P16403060350508504214.Spec : Prop :=
  ∀ n, P16403060350508504214.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P5525652828989055733

`A049751(∑[n+3])/2`
-/

namespace A049757.P5525652828989055733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A049757.P5525652828989055733

namespace A049757

/-- `A049751(∑[n+3])/2` -/
def P5525652828989055733.Spec : Prop :=
  ∀ n, P5525652828989055733.a n = (A049757 n : ℚ)

end A049757

/-! ## A049757.P10149280868297758628

`A028310(A049747(∑[n+3]))`
-/

namespace A049757.P10149280868297758628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049747 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049757.P10149280868297758628

namespace A049757

/-- `A028310(A049747(∑[n+3]))` -/
def P10149280868297758628.Spec : Prop :=
  ∀ n, P10149280868297758628.a n = A049757 n

end A049757

/-! ## A049757.P13632699857402762911

`A318518(A049751(∑[n+3]))`
-/

namespace A049757.P13632699857402762911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A049751 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049757.P13632699857402762911

namespace A049757

/-- `A318518(A049751(∑[n+3]))` -/
def P13632699857402762911.Spec : Prop :=
  ∀ n, P13632699857402762911.a n = A049757 n

end A049757

/-! ## A049757.P3190260788647152801

`A008619(A049751(∑[n+3])-1)`
-/

namespace A049757.P3190260788647152801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A049751 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A049757.P3190260788647152801

namespace A049757

/-- `A008619(A049751(∑[n+3])-1)` -/
def P3190260788647152801.Spec : Prop :=
  ∀ n, P3190260788647152801.a n = A049757 n

end A049757

/-! ## A049757.P1655446980647832021

`A305117(n²+4)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049757

/-- `A305117(n²+4)+1` -/
def P1655446980647832021.Spec : Prop :=
  ∀ n, P1655446980647832021.a n = A049757 n

theorem P1655446980647832021.correct : P1655446980647832021.Spec := by
  intro n
  simp only [A049757]

end A049757

/-! ## A049757.P1771889065267990430

`or(1, A305117(A087475(n)))`
-/

namespace A049757.P1771889065267990430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A305117 (A087475 n).toNat)

end

end A049757.P1771889065267990430

namespace A049757

/-- `or(1, A305117(A087475(n)))` -/
def P1771889065267990430.Spec : Prop :=
  ∀ n, P1771889065267990430.a n = A049757 n

end A049757

/-! ## A049757.P6026870724338898901

`A004442(A305117(n²+4))`
-/

namespace A049757.P6026870724338898901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A305117 (n ^ 2 + 4)).toNat

end

end A049757.P6026870724338898901

namespace A049757

/-- `A004442(A305117(n²+4))` -/
def P6026870724338898901.Spec : Prop :=
  ∀ n, P6026870724338898901.a n = A049757 n

end A049757

/-!
# A049758: a(n) = T(n,3), array T as in A049747.

The programs for A049758, the canonical program `A049758.P9833744827448509849` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049758 has offset 0).

The definition of A049758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049758.P2053882038480445287

`A049747(∑[n+3]+6)`
-/

namespace A049758.P2053882038480445287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A049758.P2053882038480445287

namespace A049758

/-- `A049747(∑[n+3]+6)` -/
def P2053882038480445287.Spec : Prop :=
  ∀ n, P2053882038480445287.a n = A049758 n

end A049758

/-! ## A049758.P17436734926752366946

`A049751(A167614(n+2))/2`
-/

namespace A049758.P17436734926752366946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A167614 (n + 2)).toNat : ℚ) / 2

end

end A049758.P17436734926752366946

namespace A049758

/-- `A049751(A167614(n+2))/2` -/
def P17436734926752366946.Spec : Prop :=
  ∀ n, P17436734926752366946.a n = (A049758 n : ℚ)

end A049758

/-! ## A049758.P3033631574072757605

`A049751(A152950(n+4))/2`
-/

namespace A049758.P3033631574072757605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049751 (A152950 (n + 4)).toNat : ℚ) / 2

end

end A049758.P3033631574072757605

namespace A049758

/-- `A049751(A152950(n+4))/2` -/
def P3033631574072757605.Spec : Prop :=
  ∀ n, P3033631574072757605.a n = (A049758 n : ℚ)

end A049758

/-! ## A049758.P16919855000923933681

`A049747(A167614(n+2))%A017042(n)`
-/

namespace A049758.P16919855000923933681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049747 (A167614 (n + 2)).toNat) (A017042 n)

end

end A049758.P16919855000923933681

namespace A049758

/-- `A049747(A167614(n+2))%A017042(n)` -/
def P16919855000923933681.Spec : Prop :=
  ∀ n, P16919855000923933681.a n = A049758 n

end A049758

/-! ## A049758.P17362457065059808968

`lcm(A049747(A167614(n+2)), A087960(n))`
-/

namespace A049758.P17362457065059808968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049747 (A167614 (n + 2)).toNat) (A087960 n)

end

end A049758.P17362457065059808968

namespace A049758

/-- `lcm(A049747(A167614(n+2)), A087960(n))` -/
def P17362457065059808968.Spec : Prop :=
  ∀ n, (P17362457065059808968.a n : ℤ) = A049758 n

end A049758

/-! ## A049758.P11389012091181323376

`A309873(n+1)²*A049747(A167614(n+2))`
-/

namespace A049758.P11389012091181323376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * A049747 (A167614 (n + 2)).toNat

end

end A049758.P11389012091181323376

namespace A049758

/-- `A309873(n+1)²*A049747(A167614(n+2))` -/
def P11389012091181323376.Spec : Prop :=
  ∀ n, P11389012091181323376.a n = A049758 n

end A049758

/-! ## A049758.P9224572319747818956

`A014963(4*n+10)*A049747(A167614(n+2))`
-/

namespace A049758.P9224572319747818956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A049747 (A167614 (n + 2)).toNat

end

end A049758.P9224572319747818956

namespace A049758

/-- `A014963(4*n+10)*A049747(A167614(n+2))` -/
def P9224572319747818956.Spec : Prop :=
  ∀ n, P9224572319747818956.a n = A049758 n

end A049758

/-! ## A049758.P14343633639900243133

`A049747(A167614(n+2))+A008683(12*n+8)`
-/

namespace A049758.P14343633639900243133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049747 (A167614 (n + 2)).toNat + A008683 (12 * n + 8)

end

end A049758.P14343633639900243133

namespace A049758

/-- `A049747(A167614(n+2))+A008683(12*n+8)` -/
def P14343633639900243133.Spec : Prop :=
  ∀ n, P14343633639900243133.a n = A049758 n

end A049758

/-! ## A049758.P12797714392881773950

`A000010(gcd(n, n+1)+1)*A049747(A167614(n+2))`
-/

namespace A049758.P12797714392881773950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1) + 1) * A049747 (A167614 (n + 2)).toNat

end

end A049758.P12797714392881773950

namespace A049758

/-- `A000010(gcd(n, n+1)+1)*A049747(A167614(n+2))` -/
def P12797714392881773950.Spec : Prop :=
  ∀ n, P12797714392881773950.a n = A049758 n

end A049758

/-! ## A049758.P9833744827448509849

`A305117(n²+9)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049758

/-- `A305117(n²+9)+1` -/
def P9833744827448509849.Spec : Prop :=
  ∀ n, P9833744827448509849.a n = A049758 n

theorem P9833744827448509849.correct : P9833744827448509849.Spec := by
  intro n
  simp only [A049758]

end A049758

/-! ## A049758.P8177214329721215675

`A109613(A305117(n²+9))`
-/

namespace A049758.P8177214329721215675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A305117 (n ^ 2 + 9)).toNat

end

end A049758.P8177214329721215675

namespace A049758

/-- `A109613(A305117(n²+9))` -/
def P8177214329721215675.Spec : Prop :=
  ∀ n, P8177214329721215675.a n = A049758 n

end A049758

/-! ## A049758.P582579564156209129

`Δ[n²]-(2*n-A305117(A189834(n)))`
-/

namespace A049758.P582579564156209129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((2 * n : ℤ) - A305117 (A189834 n).toNat)

end

end A049758.P582579564156209129

namespace A049758

/-- `Δ[n²]-(2*n-A305117(A189834(n)))` -/
def P582579564156209129.Spec : Prop :=
  ∀ n, P582579564156209129.a n = A049758 n

end A049758

/-! ## A049758.P10005517801119905105

`or(A262681(n), A305117(A189834(n)))`
-/

namespace A049758.P10005517801119905105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262681 n) (A305117 (A189834 n).toNat)

end

end A049758.P10005517801119905105

namespace A049758

/-- `or(A262681(n), A305117(A189834(n)))` -/
def P10005517801119905105.Spec : Prop :=
  ∀ n, P10005517801119905105.a n = A049758 n

end A049758

/-!
# A049759: Triangular array T read by rows: T(n,k)=n^2 mod k, for k=1,2,...,n, n=1,2,...

The programs for A049759, the canonical program `A049759.P13035336099111662661` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049759 has offset 1).

The definition of A049759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)²%(col(n)+1)` (program `A049759.P13035336099111662661`, by `A049759.P13035336099111662661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049759.P13035336099111662661

`(row(n)+1)²%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049759

/-- `(row(n)+1)²%(col(n)+1)` -/
def P13035336099111662661.Spec : Prop :=
  ∀ n, (P13035336099111662661.a n : ℤ) = A049759 (n + 1)

theorem P13035336099111662661.correct : P13035336099111662661.Spec := by
  intro n
  simp only [A049759, Nat.add_sub_cancel]

end A049759

/-! ## A049759.P6236615072951018539

`(row(n)-col(n))²%(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049759.P6236615072951018539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2) (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A049759.P6236615072951018539

namespace A049759

/-- `(row(n)-col(n))²%(col(n)+1)` -/
def P6236615072951018539.Spec : Prop :=
  ∀ n, P6236615072951018539.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P4395564620540431137

`∑[char[∑[n]]]²%A128227(n)`
-/

namespace A049759.P4395564620540431137
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A128227 n)

end

end A049759.P4395564620540431137

namespace A049759

/-- `∑[char[∑[n]]]²%A128227(n)` -/
def P4395564620540431137.Spec : Prop :=
  ∀ n, P4395564620540431137.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P4940256090868144118

`round(sqrt(2*n))²%A002260(n+1)`
-/

namespace A049759.P4940256090868144118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2) (A002260 (n + 1))

end

end A049759.P4940256090868144118

namespace A049759

/-- `round(sqrt(2*n))²%A002260(n+1)` -/
def P4940256090868144118.Spec : Prop :=
  ∀ n, P4940256090868144118.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P10533719316651666189

`(comp[C(n, 2)]-(n+1))²%A140756(n+1)`
-/

namespace A049759.P10533719316651666189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)) ^ 2) (A140756 (n + 1))

end

end A049759.P10533719316651666189

namespace A049759

/-- `(comp[C(n, 2)]-(n+1))²%A140756(n+1)` -/
def P10533719316651666189.Spec : Prop :=
  ∀ n, P10533719316651666189.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P4392440920391466402

`A025581(n)²%(A002262(n)+1)`
-/

namespace A049759.P4392440920391466402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n ^ 2) (A002262 n + 1)

end

end A049759.P4392440920391466402

namespace A049759

/-- `A025581(n)²%(A002262(n)+1)` -/
def P4392440920391466402.Spec : Prop :=
  ∀ n, P4392440920391466402.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P14826912780981537465

`A049767(n+1)-A048152(n+1)`
-/

namespace A049759.P14826912780981537465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049767 (n + 1) - A048152 (n + 1)

end

end A049759.P14826912780981537465

namespace A049759

/-- `A049767(n+1)-A048152(n+1)` -/
def P14826912780981537465.Spec : Prop :=
  ∀ n, P14826912780981537465.a n = A049759 (n + 1)

theorem P14826912780981537465.correct : P14826912780981537465.Spec := by
  intro n
  simp only [A049759, Nat.add_sub_cancel, A049759.P14826912780981537465.a, A049759.P13035336099111662661.a, A048152, A048152.P18365048416677811141.a, A049767, A049767.P11208720705094384557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049759

/-! ## A049759.P14107741067321418132

`A215630(n+1)%-A002260(n+1)`
-/

namespace A049759.P14107741067321418132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (n + 1)) (-A002260 (n + 1))

end

end A049759.P14107741067321418132

namespace A049759

/-- `A215630(n+1)%-A002260(n+1)` -/
def P14107741067321418132.Spec : Prop :=
  ∀ n, P14107741067321418132.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P7828028117022021129

`A002024(n+1)²%(A002262(n)+1)`
-/

namespace A049759.P7828028117022021129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) ^ 2) (A002262 n + 1)

end

end A049759.P7828028117022021129

namespace A049759

/-- `A002024(n+1)²%(A002262(n)+1)` -/
def P7828028117022021129.Spec : Prop :=
  ∀ n, P7828028117022021129.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P16393021231680016373

`A084855(n+1)²%A097285(2*n+1)`
-/

namespace A049759.P16393021231680016373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084855 (n + 1) ^ 2) (A097285 (2 * n + 1))

end

end A049759.P16393021231680016373

namespace A049759

/-- `A084855(n+1)²%A097285(2*n+1)` -/
def P16393021231680016373.Spec : Prop :=
  ∀ n, P16393021231680016373.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P16704185421629069485

`A162610(n+1)²%A057555(2*n+1)`
-/

namespace A049759.P16704185421629069485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162610 (n + 1) ^ 2) (A057555 (2 * n + 1))

end

end A049759.P16704185421629069485

namespace A049759

/-- `A162610(n+1)²%A057555(2*n+1)` -/
def P16704185421629069485.Spec : Prop :=
  ∀ n, P16704185421629069485.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P4347558852054520348

`A000290(A025581(n))%A057555(2*n+1)`
-/

namespace A049759.P4347558852054520348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A025581 n).toNat) (A057555 (2 * n + 1))

end

end A049759.P4347558852054520348

namespace A049759

/-- `A000290(A025581(n))%A057555(2*n+1)` -/
def P4347558852054520348.Spec : Prop :=
  ∀ n, P4347558852054520348.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P3816243707675958073

`A095831(n+1)%A080508(n+1)`
-/

namespace A049759.P3816243707675958073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095831 (n + 1)) (A080508 (n + 1))

end

end A049759.P3816243707675958073

namespace A049759

/-- `A095831(n+1)%A080508(n+1)` -/
def P3816243707675958073.Spec : Prop :=
  ∀ n, P3816243707675958073.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P13338658832632372511

`A095834(n+1)%A080508(n+1)`
-/

namespace A049759.P13338658832632372511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095834 (n + 1)) (A080508 (n + 1))

end

end A049759.P13338658832632372511

namespace A049759

/-- `A095834(n+1)%A080508(n+1)` -/
def P13338658832632372511.Spec : Prop :=
  ∀ n, P13338658832632372511.a n = A049759 (n + 1)

end A049759

/-! ## A049759.P12436790142730766627

`A095831(n+1)%A080504(n+1)`
-/

namespace A049759.P12436790142730766627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095831 (n + 1)) (A080504 (n + 1))

end

end A049759.P12436790142730766627

namespace A049759

/-- `A095831(n+1)%A080504(n+1)` -/
def P12436790142730766627.Spec : Prop :=
  ∀ n, P12436790142730766627.a n = A049759 (n + 1)

end A049759

/-!
# A049760: a(n) = Sum_{k=1..n} T(n,k), array T as in A049759.

The programs for A049760, the canonical program `A049760.P1597653930587330474` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049760 has offset 1).

The definition of A049760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049760.P1597653930587330474

`∑{#}[n, (n+1)²%(#+1)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049760

/-- `∑{#}[n, (n+1)²%(#+1)]` -/
def P1597653930587330474.Spec : Prop :=
  ∀ n, (P1597653930587330474.a n : ℤ) = A049760 (n + 1)

theorem P1597653930587330474.correct : P1597653930587330474.Spec := by
  intro n
  simp only [A049760, Nat.add_sub_cancel]

end A049760

/-! ## A049760.P9253468305580022761

`A049768(n+1)-A048153(n+1)`
-/

namespace A049760.P9253468305580022761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) - A048153 (n + 1)

end

end A049760.P9253468305580022761

namespace A049760

/-- `A049768(n+1)-A048153(n+1)` -/
def P9253468305580022761.Spec : Prop :=
  ∀ n, P9253468305580022761.a n = A049760 (n + 1)

theorem P9253468305580022761.correct : P9253468305580022761.Spec := by
  intro n
  simp only [A049760, Nat.add_sub_cancel, A049760.P9253468305580022761.a, A049760.P1597653930587330474.f1, A049760.P1597653930587330474.a, A048153, A048153.P11070946179227361385.f1, A048153.P11070946179227361385.a, A049768, A049768.P12397298444946621357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049760

/-! ## A049760.P6384071814901851251

`A049768(n+1)-(∑[(n+1)²]-(n+1)*A014817(n+1))`
-/

namespace A049760.P6384071814901851251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1))

end

end A049760.P6384071814901851251

namespace A049760

/-- `A049768(n+1)-(∑[(n+1)²]-(n+1)*A014817(n+1))` -/
def P6384071814901851251.Spec : Prop :=
  ∀ n, P6384071814901851251.a n = A049760 (n + 1)

end A049760

/-! ## A049760.P5193811112459273727

`A049768(n+1)-(A231589(n+1)+A230366(n+1))`
-/

namespace A049760.P5193811112459273727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) - (A231589 (n + 1) + A230366 (n + 1))

end

end A049760.P5193811112459273727

namespace A049760

/-- `A049768(n+1)-(A231589(n+1)+A230366(n+1))` -/
def P5193811112459273727.Spec : Prop :=
  ∀ n, P5193811112459273727.a n = A049760 (n + 1)

theorem P5193811112459273727.correct : P5193811112459273727.Spec := by
  intro n
  simp only [A049760, Nat.add_sub_cancel, A049760.P5193811112459273727.a, A049760.P1597653930587330474.f1, A049760.P1597653930587330474.a, A049768, A049768.P12397298444946621357.a, A230366, A230366.P11808188151073460038.f1, A230366.P11808188151073460038.a, A231589, A231589.P10000512444880285996.a, A048153, A048153.P11070946179227361385.f1, A048153.P11070946179227361385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049760

/-! ## A049760.P1143231807786314612

`A049768(n+1)+A048153(n+1)*A153881(n+1)`
-/

namespace A049760.P1143231807786314612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) + A048153 (n + 1) * A153881 (n + 1)

end

end A049760.P1143231807786314612

namespace A049760

/-- `A049768(n+1)+A048153(n+1)*A153881(n+1)` -/
def P1143231807786314612.Spec : Prop :=
  ∀ n, P1143231807786314612.a n = A049760 (n + 1)

end A049760

/-! ## A049760.P6293815207584489524

`A049768(n+1)-(A195938(n+1)+2*A231589(n+1))`
-/

namespace A049760.P6293815207584489524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) - (A195938 (n + 1) + 2 * A231589 (n + 1))

end

end A049760.P6293815207584489524

namespace A049760

/-- `A049768(n+1)-(A195938(n+1)+2*A231589(n+1))` -/
def P6293815207584489524.Spec : Prop :=
  ∀ n, P6293815207584489524.a n = A049760 (n + 1)

end A049760

/-! ## A049760.P13971241692892827968

`A049768(n+1)+(A195938(n+1)+2*A231589(n+1))*A153881(n+1)`
-/

namespace A049760.P13971241692892827968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) + (A195938 (n + 1) + 2 * A231589 (n + 1)) * A153881 (n + 1)

end

end A049760.P13971241692892827968

namespace A049760

/-- `A049768(n+1)+(A195938(n+1)+2*A231589(n+1))*A153881(n+1)` -/
def P13971241692892827968.Spec : Prop :=
  ∀ n, P13971241692892827968.a n = A049760 (n + 1)

end A049760

/-! ## A049760.P7529824150197108475

`A049768(n+1)-(A195938(n+1)+A005843(A231589(n+1)))`
-/

namespace A049760.P7529824150197108475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (n + 1) - (A195938 (n + 1) + A005843 (A231589 (n + 1)).toNat)

end

end A049760.P7529824150197108475

namespace A049760

/-- `A049768(n+1)-(A195938(n+1)+A005843(A231589(n+1)))` -/
def P7529824150197108475.Spec : Prop :=
  ∀ n, P7529824150197108475.a n = A049760 (n + 1)

end A049760

/-! ## A049760.P11027874030241523812

`A176314((n+1)²)`
-/

namespace A049760.P11027874030241523812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176314 ((n + 1) ^ 2)

end

end A049760.P11027874030241523812

namespace A049760

/-- `A176314((n+1)²)` -/
def P11027874030241523812.Spec : Prop :=
  ∀ n, P11027874030241523812.a n = A049760 (n + 1)

end A049760

/-!
# A049761: Triangular array T, read by rows: T(n,k) = n^3 mod k, for k = 1..n and n >= 1.

The programs for A049761, the canonical program `A049761.P9714289951654746769` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049761 has offset 1).

The definition of A049761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((row(n)+1)^3)%(col(n)+1)` (program `A049761.P9714289951654746769`, by `A049761.P9714289951654746769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049761.P9714289951654746769

`((row(n)+1)^3)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049761

/-- `((row(n)+1)^3)%(col(n)+1)` -/
def P9714289951654746769.Spec : Prop :=
  ∀ n, (P9714289951654746769.a n : ℤ) = A049761 (n + 1)

theorem P9714289951654746769.correct : P9714289951654746769.Spec := by
  intro n
  simp only [A049761, Nat.add_sub_cancel]

end A049761

/-! ## A049761.P10833355788545875294

`((row(n)-col(n))^3)%(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049761.P10833355788545875294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 3) (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A049761.P10833355788545875294

namespace A049761

/-- `((row(n)-col(n))^3)%(col(n)+1)` -/
def P10833355788545875294.Spec : Prop :=
  ∀ n, P10833355788545875294.a n = A049761 (n + 1)

end A049761

/-! ## A049761.P7901698691517551807

`A321490(n+1)%A128227(n)`
-/

namespace A049761.P7901698691517551807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321490 (n + 1)) (A128227 n)

end

end A049761.P7901698691517551807

namespace A049761

/-- `A321490(n+1)%A128227(n)` -/
def P7901698691517551807.Spec : Prop :=
  ∀ n, P7901698691517551807.a n = A049761 (n + 1)

end A049761

/-! ## A049761.P4270126090327026711

`A049769(n+1)-A048154(n+1)`
-/

namespace A049761.P4270126090327026711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049769 (n + 1) - A048154 (n + 1)

end

end A049761.P4270126090327026711

namespace A049761

/-- `A049769(n+1)-A048154(n+1)` -/
def P4270126090327026711.Spec : Prop :=
  ∀ n, P4270126090327026711.a n = A049761 (n + 1)

theorem P4270126090327026711.correct : P4270126090327026711.Spec := by
  intro n
  simp only [A049761, Nat.add_sub_cancel, A049761.P4270126090327026711.a, A049761.P9714289951654746769.a, A048154, A048154.P11837491053237582354.a, A049769, A049769.P7463120430097931802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049761

/-! ## A049761.P1238685783148988751

`(A025581(n)^3)%A002260(n+1)`
-/

namespace A049761.P1238685783148988751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n ^ 3) (A002260 (n + 1))

end

end A049761.P1238685783148988751

namespace A049761

/-- `(A025581(n)^3)%A002260(n+1)` -/
def P1238685783148988751.Spec : Prop :=
  ∀ n, P1238685783148988751.a n = A049761 (n + 1)

end A049761

/-! ## A049761.P4900690049517263303

`A000578(round(sqrt(2*n)))%A002260(n+1)`
-/

namespace A049761.P4900690049517263303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat) (A002260 (n + 1))

end

end A049761.P4900690049517263303

namespace A049761

/-- `A000578(round(sqrt(2*n)))%A002260(n+1)` -/
def P4900690049517263303.Spec : Prop :=
  ∀ n, P4900690049517263303.a n = A049761 (n + 1)

end A049761

/-! ## A049761.P13489952954174233698

`((A004736(n+1)-1)^3)%A002260(n+1)`
-/

namespace A049761.P13489952954174233698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A004736 (n + 1) - 1) ^ 3) (A002260 (n + 1))

end

end A049761.P13489952954174233698

namespace A049761

/-- `((A004736(n+1)-1)^3)%A002260(n+1)` -/
def P13489952954174233698.Spec : Prop :=
  ∀ n, P13489952954174233698.a n = A049761 (n + 1)

end A049761

/-! ## A049761.P2343772774963089509

`A143150(n+1)%A128227(n)`
-/

namespace A049761.P2343772774963089509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143150 (n + 1)) (A128227 n)

end

end A049761.P2343772774963089509

namespace A049761

/-- `A143150(n+1)%A128227(n)` -/
def P2343772774963089509.Spec : Prop :=
  ∀ n, P2343772774963089509.a n = A049761 (n + 1)

end A049761

/-!
# A049762: a(n) = Sum_{k=1..n} T(n,k), array T as in A049761.

The programs for A049762, the canonical program `A049762.P1721772609132714128` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049762 has offset 1).

The definition of A049762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049762.P1721772609132714128

`∑{#}[n, ((n+1)^3)%(#+1)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049762

/-- `∑{#}[n, ((n+1)^3)%(#+1)]` -/
def P1721772609132714128.Spec : Prop :=
  ∀ n, (P1721772609132714128.a n : ℤ) = A049762 (n + 1)

theorem P1721772609132714128.correct : P1721772609132714128.Spec := by
  intro n
  simp only [A049762, Nat.add_sub_cancel]

end A049762

/-! ## A049762.P8017055875724537682

`A049770(n+1)-A048155(n+1)`
-/

namespace A049762.P8017055875724537682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049770 (n + 1) - A048155 (n + 1)

end

end A049762.P8017055875724537682

namespace A049762

/-- `A049770(n+1)-A048155(n+1)` -/
def P8017055875724537682.Spec : Prop :=
  ∀ n, P8017055875724537682.a n = A049762 (n + 1)

theorem P8017055875724537682.correct : P8017055875724537682.Spec := by
  intro n
  simp only [A049762, Nat.add_sub_cancel, A049762.P8017055875724537682.a, A049762.P1721772609132714128.f1, A049762.P1721772609132714128.a, A048155, A048155.P7922395243510409823.f1, A048155.P7922395243510409823.a, A049770, A049770.P17306687827743446217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049762

/-! ## A049762.P577983275485816330

`A049770(n+1)-∑[n+1]²%A014818(n+1)`
-/

namespace A049762.P577983275485816330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049770 (n + 1) - Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A014818 (n + 1))

end

end A049762.P577983275485816330

namespace A049762

/-- `A049770(n+1)-∑[n+1]²%A014818(n+1)` -/
def P577983275485816330.Spec : Prop :=
  ∀ n, P577983275485816330.a n = A049762 (n + 1)

end A049762

/-! ## A049762.P10185414309445613018

`A049770(n+1)-(n+1)*(n+1-A000189(n+1))/2`
-/

namespace A049762.P10185414309445613018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049770 (n + 1) : ℚ) - (n + 1 : ℚ) * (((n + 1 : ℤ) - A000189 (n + 1) : ℚ) / 2)

end

end A049762.P10185414309445613018

namespace A049762

/-- `A049770(n+1)-(n+1)*(n+1-A000189(n+1))/2` -/
def P10185414309445613018.Spec : Prop :=
  ∀ n, P10185414309445613018.a n = (A049762 (n + 1) : ℚ)

end A049762

/-! ## A049762.P16350721794401469163

`A049770(n+1)-(A000290(∑[n+1])-(n+1)*A014818(n+1))`
-/

namespace A049762.P16350721794401469163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049770 (n + 1) - (A000290 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ) * A014818 (n + 1))

end

end A049762.P16350721794401469163

namespace A049762

/-- `A049770(n+1)-(A000290(∑[n+1])-(n+1)*A014818(n+1))` -/
def P16350721794401469163.Spec : Prop :=
  ∀ n, P16350721794401469163.a n = A049762 (n + 1)

end A049762

/-! ## A049762.P16912499623391120140

`A049770(n+1)-A004525((n+1)*(n+1-A000189(n+1)))`
-/

namespace A049762.P16912499623391120140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049770 (n + 1) - A004525 ((n + 1 : ℤ) * ((n + 1 : ℤ) - A000189 (n + 1))).toNat

end

end A049762.P16912499623391120140

namespace A049762

/-- `A049770(n+1)-A004525((n+1)*(n+1-A000189(n+1)))` -/
def P16912499623391120140.Spec : Prop :=
  ∀ n, P16912499623391120140.a n = A049762 (n + 1)

end A049762

/-!
# A049763: Triangular array T, read by rows: T(n,k) = n^4 mod k, for k = 1..n and n >= 1.

The programs for A049763, the canonical program `A049763.P7840748025539565048` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049763 has offset 1).

The definition of A049763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((row(n)+1)^4)%(col(n)+1)` (program `A049763.P7840748025539565048`, by `A049763.P7840748025539565048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049763.P7840748025539565048

`((row(n)+1)^4)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049763

/-- `((row(n)+1)^4)%(col(n)+1)` -/
def P7840748025539565048.Spec : Prop :=
  ∀ n, (P7840748025539565048.a n : ℤ) = A049763 (n + 1)

theorem P7840748025539565048.correct : P7840748025539565048.Spec := by
  intro n
  simp only [A049763, Nat.add_sub_cancel]

end A049763

/-! ## A049763.P12149453863728547089

`((row(n)-col(n))^4)%(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049763.P12149453863728547089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 4) (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A049763.P12149453863728547089

namespace A049763

/-- `((row(n)-col(n))^4)%(col(n)+1)` -/
def P12149453863728547089.Spec : Prop :=
  ∀ n, P12149453863728547089.a n = A049763 (n + 1)

end A049763

/-! ## A049763.P13540591882505403498

`∑[char[∑[n]]]²²%A002260(n+1)`
-/

namespace A049763.P13540591882505403498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ) (A002260 (n + 1))

end

end A049763.P13540591882505403498

namespace A049763

/-- `∑[char[∑[n]]]²²%A002260(n+1)` -/
def P13540591882505403498.Spec : Prop :=
  ∀ n, P13540591882505403498.a n = A049763 (n + 1)

end A049763

/-! ## A049763.P13681332661935148565

`((∑[char[∑[n+1]]]+1)^4)%A131818(n+1)`
-/

namespace A049763.P13681332661935148565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 4 : ℕ) : ℤ) (A131818 (n + 1))

end

end A049763.P13681332661935148565

namespace A049763

/-- `((∑[char[∑[n+1]]]+1)^4)%A131818(n+1)` -/
def P13681332661935148565.Spec : Prop :=
  ∀ n, P13681332661935148565.a n = A049763 (n + 1)

end A049763

/-! ## A049763.P18347617642076491155

`A219069(n+1)%A128227(n)`
-/

namespace A049763.P18347617642076491155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219069 (n + 1)) (A128227 n)

end

end A049763.P18347617642076491155

namespace A049763

/-- `A219069(n+1)%A128227(n)` -/
def P18347617642076491155.Spec : Prop :=
  ∀ n, P18347617642076491155.a n = A049763 (n + 1)

end A049763

/-! ## A049763.P8244216355213647025

`A049771(n+1)-A048156(n+1)`
-/

namespace A049763.P8244216355213647025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049771 (n + 1) - A048156 (n + 1)

end

end A049763.P8244216355213647025

namespace A049763

/-- `A049771(n+1)-A048156(n+1)` -/
def P8244216355213647025.Spec : Prop :=
  ∀ n, P8244216355213647025.a n = A049763 (n + 1)

theorem P8244216355213647025.correct : P8244216355213647025.Spec := by
  intro n
  simp only [A049763, Nat.add_sub_cancel, A049763.P8244216355213647025.a, A049763.P7840748025539565048.a, A048156, A048156.P17805607225871025132.a, A049771, A049771.P1884432723839077167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049763

/-! ## A049763.P10790319451726002504

`A274094(n)²²%A140756(n+1)`
-/

namespace A049763.P10790319451726002504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A274094 n ^ 2) ^ 2) (A140756 (n + 1))

end

end A049763.P10790319451726002504

namespace A049763

/-- `A274094(n)²²%A140756(n+1)` -/
def P10790319451726002504.Spec : Prop :=
  ∀ n, P10790319451726002504.a n = A049763 (n + 1)

end A049763

/-! ## A049763.P4860550349703159937

`A004202(n+1)²%A140756(n+1)`
-/

namespace A049763.P4860550349703159937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004202 (n + 1) ^ 2) (A140756 (n + 1))

end

end A049763.P4860550349703159937

namespace A049763

/-- `A004202(n+1)²%A140756(n+1)` -/
def P4860550349703159937.Spec : Prop :=
  ∀ n, P4860550349703159937.a n = A049763 (n + 1)

end A049763

/-!
# A049764: a(n) = Sum_{k=1..n} T(n,k), array T as in A049763.

The programs for A049764, the canonical program `A049764.P9388530423135440010` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049764 has offset 1).

The definition of A049764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049764.P9388530423135440010

`∑{#}[n, ((n+1)^4)%(#+1)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049764

/-- `∑{#}[n, ((n+1)^4)%(#+1)]` -/
def P9388530423135440010.Spec : Prop :=
  ∀ n, (P9388530423135440010.a n : ℤ) = A049764 (n + 1)

theorem P9388530423135440010.correct : P9388530423135440010.Spec := by
  intro n
  simp only [A049764, Nat.add_sub_cancel]

end A049764

/-! ## A049764.P10101530871551773864

`A049772(n+1)-A048157(n+1)`
-/

namespace A049764.P10101530871551773864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049772 (n + 1) - A048157 (n + 1)

end

end A049764.P10101530871551773864

namespace A049764

/-- `A049772(n+1)-A048157(n+1)` -/
def P10101530871551773864.Spec : Prop :=
  ∀ n, P10101530871551773864.a n = A049764 (n + 1)

end A049764

/-!
# A049765: Triangular array T, read by rows: T(n,k) = (k mod n) + (n mod k), for k = 1..n and n >= 1.

The programs for A049765, the canonical program `A049765.P15350466797058362361` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049765 has offset 1).

The definition of A049765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)%(row(n)+1)+(row(n)+1)%(col(n)+1)` (program `A049765.P15350466797058362361`, by `A049765.P15350466797058362361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049765.P15350466797058362361

`(col(n)+1)%(row(n)+1)+(row(n)+1)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049765

/-- `(col(n)+1)%(row(n)+1)+(row(n)+1)%(col(n)+1)` -/
def P15350466797058362361.Spec : Prop :=
  ∀ n, (P15350466797058362361.a n : ℤ) = A049765 (n + 1)

theorem P15350466797058362361.correct : P15350466797058362361.Spec := by
  intro n
  simp only [A049765, Nat.add_sub_cancel]

end A049765

/-! ## A049765.P18232666130430115916

`A048158(n+1)+A048151(n+1)`
-/

namespace A049765.P18232666130430115916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A048151 (n + 1)

end

end A049765.P18232666130430115916

namespace A049765

/-- `A048158(n+1)+A048151(n+1)` -/
def P18232666130430115916.Spec : Prop :=
  ∀ n, P18232666130430115916.a n = A049765 (n + 1)

theorem P18232666130430115916.correct : P18232666130430115916.Spec := by
  intro n
  simp only [A049765, Nat.add_sub_cancel, A049765.P18232666130430115916.a, A049765.P15350466797058362361.a, A048151, A048151.P3227743321972080880.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049765

/-! ## A049765.P16354509023171660689

`A048158(n+1)+A002260(n+2)-1`
-/

namespace A049765.P16354509023171660689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + (A002260 (n + 2) - 1)

end

end A049765.P16354509023171660689

namespace A049765

/-- `A048158(n+1)+A002260(n+2)-1` -/
def P16354509023171660689.Spec : Prop :=
  ∀ n, P16354509023171660689.a n = A049765 (n + 1)

end A049765

/-! ## A049765.P9280630904510992657

`A048158(n+1)+A002260(n+1)%A002260(n+2)`
-/

namespace A049765.P9280630904510992657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + Int.tmod (A002260 (n + 1)) (A002260 (n + 2))

end

end A049765.P9280630904510992657

namespace A049765

/-- `A048158(n+1)+A002260(n+1)%A002260(n+2)` -/
def P9280630904510992657.Spec : Prop :=
  ∀ n, P9280630904510992657.a n = A049765 (n + 1)

end A049765

/-! ## A049765.P17261637409596981513

`A048158(n+1)+A002262(n+1)`
-/

namespace A049765.P17261637409596981513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A002262 (n + 1)

end

end A049765.P17261637409596981513

namespace A049765

/-- `A048158(n+1)+A002262(n+1)` -/
def P17261637409596981513.Spec : Prop :=
  ∀ n, P17261637409596981513.a n = A049765 (n + 1)

end A049765

/-! ## A049765.P3886188525561912300

`A002262(n+1)+A025581(n)%A002260(n+1)`
-/

namespace A049765.P3886188525561912300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) + Int.tmod (A025581 n) (A002260 (n + 1))

end

end A049765.P3886188525561912300

namespace A049765

/-- `A002262(n+1)+A025581(n)%A002260(n+1)` -/
def P3886188525561912300.Spec : Prop :=
  ∀ n, P3886188525561912300.a n = A049765 (n + 1)

end A049765

/-! ## A049765.P15624751684256144961

`A002262(n+1)+A002024(n+1)%A002260(n+1)`
-/

namespace A049765.P15624751684256144961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) + Int.tmod (A002024 (n + 1)) (A002260 (n + 1))

end

end A049765.P15624751684256144961

namespace A049765

/-- `A002262(n+1)+A002024(n+1)%A002260(n+1)` -/
def P15624751684256144961.Spec : Prop :=
  ∀ n, P15624751684256144961.a n = A049765 (n + 1)

end A049765

/-! ## A049765.P3927643664533515751

`A002262(n+1)+A002262(A286158(n+1))`
-/

namespace A049765.P3927643664533515751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) + A002262 (A286158 (n + 1)).toNat

end

end A049765.P3927643664533515751

namespace A049765

/-- `A002262(n+1)+A002262(A286158(n+1))` -/
def P3927643664533515751.Spec : Prop :=
  ∀ n, P3927643664533515751.a n = A049765 (n + 1)

end A049765

/-!
# A049766: a(n) = Sum_{k=1..n} T(n,k), array T as in A049765.

The programs for A049766, the canonical program `A049766.P13668387565428548660` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049766 has offset 1).

The definition of A049766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049766.P13668387565428548660

`A004125(n+1)+A161680(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049766

/-- `A004125(n+1)+A161680(n+1)` -/
def P13668387565428548660.Spec : Prop :=
  ∀ n, P13668387565428548660.a n = A049766 (n + 1)

theorem P13668387565428548660.correct : P13668387565428548660.Spec := by
  intro n
  simp only [A049766, Nat.add_sub_cancel]

end A049766

/-! ## A049766.P4130412956436621451

`∑{#}[n, (n+1)%(#+1)+#]`
-/

namespace A049766.P4130412956436621451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1) % (k + 1) + k)

end

end A049766.P4130412956436621451

namespace A049766

/-- `∑{#}[n, (n+1)%(#+1)+#]` -/
def P4130412956436621451.Spec : Prop :=
  ∀ n, (P4130412956436621451.a n : ℤ) = A049766 (n + 1)

end A049766

/-! ## A049766.P11934374282452626277

`(3*(n+1)²-(n+1))/2-∑{#}[n, (#+1)*floor((n+1)/(#+1))]`
-/

namespace A049766.P11934374282452626277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) : ℚ) / 2 - ((∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ : ℤ) : ℚ)

end

end A049766.P11934374282452626277

namespace A049766

/-- `(3*(n+1)²-(n+1))/2-∑{#}[n, (#+1)*floor((n+1)/(#+1))]` -/
def P11934374282452626277.Spec : Prop :=
  ∀ n, P11934374282452626277.a n = (A049766 (n + 1) : ℚ)

end A049766

/-! ## A049766.P2006108372435839368

`∑[3*n+1-∑{d}[n+1, #]]`
-/

namespace A049766.P2006108372435839368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P2006108372435839368

namespace A049766

/-- `∑[3*n+1-∑{d}[n+1, #]]` -/
def P2006108372435839368.Spec : Prop :=
  ∀ n, P2006108372435839368.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P11741285281802694982

`∑[n-(∑{d}[n+1, #]-Δ[n²])]`
-/

namespace A049766.P11741285281802694982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P11741285281802694982

namespace A049766

/-- `∑[n-(∑{d}[n+1, #]-Δ[n²])]` -/
def P11741285281802694982.Spec : Prop :=
  ∀ n, P11741285281802694982.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P3232782034013114484

`∑[n-∑{d}[n+1, #]]+(n+1)²`
-/

namespace A049766.P3232782034013114484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A049766.P3232782034013114484

namespace A049766

/-- `∑[n-∑{d}[n+1, #]]+(n+1)²` -/
def P3232782034013114484.Spec : Prop :=
  ∀ n, P3232782034013114484.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P2290150925509037880

`∑[A353190(n+1)-1]`
-/

namespace A049766.P2290150925509037880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P2290150925509037880

namespace A049766

/-- `∑[A353190(n+1)-1]` -/
def P2290150925509037880.Spec : Prop :=
  ∀ n, P2290150925509037880.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P7743785965697290603

`∑[A033885(n+1)-2]`
-/

namespace A049766.P7743785965697290603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P7743785965697290603

namespace A049766

/-- `∑[A033885(n+1)-2]` -/
def P7743785965697290603.Spec : Prop :=
  ∀ n, P7743785965697290603.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P4196837095386838839

`n²-A244049(n+1)`
-/

namespace A049766.P4196837095386838839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A244049 (n + 1)

end

end A049766.P4196837095386838839

namespace A049766

/-- `n²-A244049(n+1)` -/
def P4196837095386838839.Spec : Prop :=
  ∀ n, P4196837095386838839.a n = A049766 (n + 1)

theorem P4196837095386838839.correct : P4196837095386838839.Spec := by
  intro n
  simp only [A049766, Nat.add_sub_cancel, A049766.P4196837095386838839.a, A049766.P13668387565428548660.a, A004125, A004125.P17154347137318566864.a, A161680, A161680.P17206074215489759881.a, A244049, A244049.P15221357512083652868.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A153485, A153485.P1399869421749084233.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049766

/-! ## A049766.P3893347327533169258

`A004125(n+1)+∑[n]`
-/

namespace A049766.P3893347327533169258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049766.P3893347327533169258

namespace A049766

/-- `A004125(n+1)+∑[n]` -/
def P3893347327533169258.Spec : Prop :=
  ∀ n, P3893347327533169258.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P4354412114364885928

`∑[A235796(n+1)+n]`
-/

namespace A049766.P4354412114364885928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P4354412114364885928

namespace A049766

/-- `∑[A235796(n+1)+n]` -/
def P4354412114364885928.Spec : Prop :=
  ∀ n, P4354412114364885928.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P12331045119662509144

`∑[n-A237588(n+1)]`
-/

namespace A049766.P12331045119662509144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P12331045119662509144

namespace A049766

/-- `∑[n-A237588(n+1)]` -/
def P12331045119662509144.Spec : Prop :=
  ∀ n, P12331045119662509144.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P14391425461615650077

`A354801(n+1)-(n+1)`
-/

namespace A049766.P14391425461615650077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354801 (n + 1) - (n + 1 : ℤ)

end

end A049766.P14391425461615650077

namespace A049766

/-- `A354801(n+1)-(n+1)` -/
def P14391425461615650077.Spec : Prop :=
  ∀ n, P14391425461615650077.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P4122683415968949733

`n²-∑[A048050(n+1)]`
-/

namespace A049766.P4122683415968949733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P4122683415968949733

namespace A049766

/-- `n²-∑[A048050(n+1)]` -/
def P4122683415968949733.Spec : Prop :=
  ∀ n, P4122683415968949733.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P12847769788362901036

`∑[A033879(n+1)-1+n]`
-/

namespace A049766.P12847769788362901036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P12847769788362901036

namespace A049766

/-- `∑[A033879(n+1)-1+n]` -/
def P12847769788362901036.Spec : Prop :=
  ∀ n, P12847769788362901036.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P1791905974845451045

`∑[n-(A033880(n+1)+1)]`
-/

namespace A049766.P1791905974845451045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A033880 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P1791905974845451045

namespace A049766

/-- `∑[n-(A033880(n+1)+1)]` -/
def P1791905974845451045.Spec : Prop :=
  ∀ n, P1791905974845451045.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P2831034313398938600

`A111490(n+1)+∑[n-1]`
-/

namespace A049766.P2831034313398938600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P2831034313398938600

namespace A049766

/-- `A111490(n+1)+∑[n-1]` -/
def P2831034313398938600.Spec : Prop :=
  ∀ n, P2831034313398938600.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P3338260554083692408

`∑[2*n-A001065(n+1)]`
-/

namespace A049766.P3338260554083692408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049766.P3338260554083692408

namespace A049766

/-- `∑[2*n-A001065(n+1)]` -/
def P3338260554083692408.Spec : Prop :=
  ∀ n, P3338260554083692408.a n = A049766 (n + 1)

end A049766

/-! ## A049766.P7788508741393193512

`∑[n]+A067436(n+1)/2`
-/

namespace A049766.P7788508741393193512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A067436 (n + 1) : ℚ) / 2

end

end A049766.P7788508741393193512

namespace A049766

/-- `∑[n]+A067436(n+1)/2` -/
def P7788508741393193512.Spec : Prop :=
  ∀ n, P7788508741393193512.a n = (A049766 (n + 1) : ℚ)

end A049766

/-! ## A049766.P18053668970030291822

`∑[2*n]-A153485(n+1)`
-/

namespace A049766.P18053668970030291822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153485 (n + 1)

end

end A049766.P18053668970030291822

namespace A049766

/-- `∑[2*n]-A153485(n+1)` -/
def P18053668970030291822.Spec : Prop :=
  ∀ n, P18053668970030291822.a n = A049766 (n + 1)

end A049766

/-!
# A049767: Triangular array T, read by rows: T(n,k) = (k^2 mod n) + (n^2 mod k), for k = 1..n and n >= 1.

The programs for A049767, the canonical program `A049767.P11208720705094384557` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049767 has offset 1).

The definition of A049767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)²%(row(n)+1)+(row(n)+1)²%(col(n)+1)` (program `A049767.P11208720705094384557`, by `A049767.P11208720705094384557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049767.P11208720705094384557

`(col(n)+1)²%(row(n)+1)+(row(n)+1)²%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049767

/-- `(col(n)+1)²%(row(n)+1)+(row(n)+1)²%(col(n)+1)` -/
def P11208720705094384557.Spec : Prop :=
  ∀ n, (P11208720705094384557.a n : ℤ) = A049767 (n + 1)

theorem P11208720705094384557.correct : P11208720705094384557.Spec := by
  intro n
  simp only [A049767, Nat.add_sub_cancel]

end A049767

/-! ## A049767.P16394582321234295455

`A049759(n+1)+A048152(n+1)`
-/

namespace A049767.P16394582321234295455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (n + 1) + A048152 (n + 1)

end

end A049767.P16394582321234295455

namespace A049767

/-- `A049759(n+1)+A048152(n+1)` -/
def P16394582321234295455.Spec : Prop :=
  ∀ n, P16394582321234295455.a n = A049767 (n + 1)

theorem P16394582321234295455.correct : P16394582321234295455.Spec := by
  intro n
  simp only [A049767, Nat.add_sub_cancel, A049767.P16394582321234295455.a, A049767.P11208720705094384557.a, A048152, A048152.P18365048416677811141.a, A049759, A049759.P13035336099111662661.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049767

/-! ## A049767.P17432194953937065493

`A048152(n+1)+A004202(n+1)%A002260(n+1)`
-/

namespace A049767.P17432194953937065493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1) + Int.tmod (A004202 (n + 1)) (A002260 (n + 1))

end

end A049767.P17432194953937065493

namespace A049767

/-- `A048152(n+1)+A004202(n+1)%A002260(n+1)` -/
def P17432194953937065493.Spec : Prop :=
  ∀ n, P17432194953937065493.a n = A049767 (n + 1)

end A049767

/-! ## A049767.P1289707601920196540

`A048152(n+1)+A070216(n+1)%A002260(n+1)`
-/

namespace A049767.P1289707601920196540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1) + Int.tmod (A070216 (n + 1)) (A002260 (n + 1))

end

end A049767.P1289707601920196540

namespace A049767

/-- `A048152(n+1)+A070216(n+1)%A002260(n+1)` -/
def P1289707601920196540.Spec : Prop :=
  ∀ n, P1289707601920196540.a n = A049767 (n + 1)

end A049767

/-! ## A049767.P12314659000423570312

`A049759(n+1)+A133819(n+1)%A002024(n+1)`
-/

namespace A049767.P12314659000423570312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (n + 1) + Int.tmod (A133819 (n + 1)) (A002024 (n + 1))

end

end A049767.P12314659000423570312

namespace A049767

/-- `A049759(n+1)+A133819(n+1)%A002024(n+1)` -/
def P12314659000423570312.Spec : Prop :=
  ∀ n, P12314659000423570312.a n = A049767 (n + 1)

end A049767

/-! ## A049767.P16307995175187198378

`A048152(n+1)+A215630(n+1)%A002260(n+1)`
-/

namespace A049767.P16307995175187198378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1) + Int.tmod (A215630 (n + 1)) (A002260 (n + 1))

end

end A049767.P16307995175187198378

namespace A049767

/-- `A048152(n+1)+A215630(n+1)%A002260(n+1)` -/
def P16307995175187198378.Spec : Prop :=
  ∀ n, P16307995175187198378.a n = A049767 (n + 1)

end A049767

/-! ## A049767.P7850034402125563877

`A048152(n+1)+A215631(n+1)%A002260(n+1)`
-/

namespace A049767.P7850034402125563877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1) + Int.tmod (A215631 (n + 1)) (A002260 (n + 1))

end

end A049767.P7850034402125563877

namespace A049767

/-- `A048152(n+1)+A215631(n+1)%A002260(n+1)` -/
def P7850034402125563877.Spec : Prop :=
  ∀ n, P7850034402125563877.a n = A049767 (n + 1)

end A049767

/-! ## A049767.P4502363050247983629

`A336302(A004201(n+1))+A049759(n+1)`
-/

namespace A049767.P4502363050247983629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A004201 (n + 1)).toNat + A049759 (n + 1)

end

end A049767.P4502363050247983629

namespace A049767

/-- `A336302(A004201(n+1))+A049759(n+1)` -/
def P4502363050247983629.Spec : Prop :=
  ∀ n, P4502363050247983629.a n = A049767 (n + 1)

end A049767

/-! ## A049767.P4999761324932480954

`A343720(n+2)+A049759(n+1)`
-/

namespace A049767.P4999761324932480954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (n + 2) + A049759 (n + 1)

end

end A049767.P4999761324932480954

namespace A049767

/-- `A343720(n+2)+A049759(n+1)` -/
def P4999761324932480954.Spec : Prop :=
  ∀ n, P4999761324932480954.a n = A049767 (n + 1)

end A049767

/-!
# A049768: a(n) = Sum_{k = 1..n} T(n,k), where array T is A049767.

The programs for A049768, the canonical program `A049768.P12397298444946621357` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049768 has offset 1).

The definition of A049768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049768.P12397298444946621357

`A049760(n+1)+A048153(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049768

/-- `A049760(n+1)+A048153(n+1)` -/
def P12397298444946621357.Spec : Prop :=
  ∀ n, P12397298444946621357.a n = A049768 (n + 1)

theorem P12397298444946621357.correct : P12397298444946621357.Spec := by
  intro n
  simp only [A049768, Nat.add_sub_cancel]

end A049768

/-! ## A049768.P7602222583570366048

`A049760(n+1)+∑[(n+1)²]-(n+1)*A014817(n+1)`
-/

namespace A049768.P7602222583570366048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049760 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1))

end

end A049768.P7602222583570366048

namespace A049768

/-- `A049760(n+1)+∑[(n+1)²]-(n+1)*A014817(n+1)` -/
def P7602222583570366048.Spec : Prop :=
  ∀ n, P7602222583570366048.a n = A049768 (n + 1)

end A049768

/-! ## A049768.P15703105293139204935

`A049760(n+1)+A231589(n+1)+A230366(n+1)`
-/

namespace A049768.P15703105293139204935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049760 (n + 1) + (A231589 (n + 1) + A230366 (n + 1))

end

end A049768.P15703105293139204935

namespace A049768

/-- `A049760(n+1)+A231589(n+1)+A230366(n+1)` -/
def P15703105293139204935.Spec : Prop :=
  ∀ n, P15703105293139204935.a n = A049768 (n + 1)

theorem P15703105293139204935.correct : P15703105293139204935.Spec := by
  intro n
  simp only [A049768, Nat.add_sub_cancel, A049768.P15703105293139204935.a, A049768.P12397298444946621357.a, A048153, A048153.P11070946179227361385.f1, A048153.P11070946179227361385.a, A049760, A049760.P1597653930587330474.f1, A049760.P1597653930587330474.a, A230366, A230366.P11808188151073460038.f1, A230366.P11808188151073460038.a, A231589, A231589.P10000512444880285996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049768

/-! ## A049768.P9089148638110276213

`A049760(n+1)+A195938(n+1)+2*A231589(n+1)`
-/

namespace A049768.P9089148638110276213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049760 (n + 1) + (A195938 (n + 1) + 2 * A231589 (n + 1))

end

end A049768.P9089148638110276213

namespace A049768

/-- `A049760(n+1)+A195938(n+1)+2*A231589(n+1)` -/
def P9089148638110276213.Spec : Prop :=
  ∀ n, P9089148638110276213.a n = A049768 (n + 1)

end A049768

/-! ## A049768.P11767753435466758552

`A049760(n+1)+2*A230366(n+1)-A195938(n+1)`
-/

namespace A049768.P11767753435466758552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049760 (n + 1) + (2 * A230366 (n + 1) - A195938 (n + 1))

end

end A049768.P11767753435466758552

namespace A049768

/-- `A049760(n+1)+2*A230366(n+1)-A195938(n+1)` -/
def P11767753435466758552.Spec : Prop :=
  ∀ n, P11767753435466758552.a n = A049768 (n + 1)

end A049768

/-! ## A049768.P2861894229338834853

`A049760(n+1)+A195938(n+1)+A005843(A231589(n+1))`
-/

namespace A049768.P2861894229338834853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049760 (n + 1) + (A195938 (n + 1) + A005843 (A231589 (n + 1)).toNat)

end

end A049768.P2861894229338834853

namespace A049768

/-- `A049760(n+1)+A195938(n+1)+A005843(A231589(n+1))` -/
def P2861894229338834853.Spec : Prop :=
  ∀ n, P2861894229338834853.a n = A049768 (n + 1)

end A049768

/-!
# A049769: Triangular array T read by rows: T(n,k) = (k^3 mod n) + (n^3 mod k).

The programs for A049769, the canonical program `A049769.P7463120430097931802` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049769 has offset 1).

The definition of A049769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((col(n)+1)^3)%(row(n)+1)+((row(n)+1)^3)%(col(n)+1)` (program `A049769.P7463120430097931802`, by `A049769.P7463120430097931802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049769.P7463120430097931802

`((col(n)+1)^3)%(row(n)+1)+((row(n)+1)^3)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049769

/-- `((col(n)+1)^3)%(row(n)+1)+((row(n)+1)^3)%(col(n)+1)` -/
def P7463120430097931802.Spec : Prop :=
  ∀ n, (P7463120430097931802.a n : ℤ) = A049769 (n + 1)

theorem P7463120430097931802.correct : P7463120430097931802.Spec := by
  intro n
  simp only [A049769, Nat.add_sub_cancel]

end A049769

/-! ## A049769.P17302331817740986793

`A049761(n+1)+A048154(n+1)`
-/

namespace A049769.P17302331817740986793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049761 (n + 1) + A048154 (n + 1)

end

end A049769.P17302331817740986793

namespace A049769

/-- `A049761(n+1)+A048154(n+1)` -/
def P17302331817740986793.Spec : Prop :=
  ∀ n, P17302331817740986793.a n = A049769 (n + 1)

theorem P17302331817740986793.correct : P17302331817740986793.Spec := by
  intro n
  simp only [A049769, Nat.add_sub_cancel, A049769.P17302331817740986793.a, A049769.P7463120430097931802.a, A048154, A048154.P11837491053237582354.a, A049761, A049761.P9714289951654746769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049769

/-! ## A049769.P12961094158802977030

`A048154(n+1)+A321490(n+1)%A128227(n)`
-/

namespace A049769.P12961094158802977030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048154 (n + 1) + Int.tmod (A321490 (n + 1)) (A128227 n)

end

end A049769.P12961094158802977030

namespace A049769

/-- `A048154(n+1)+A321490(n+1)%A128227(n)` -/
def P12961094158802977030.Spec : Prop :=
  ∀ n, P12961094158802977030.a n = A049769 (n + 1)

end A049769

/-! ## A049769.P15387826101073106875

`A049761(n+1)+A133820(n+1)%A002024(n+1)`
-/

namespace A049769.P15387826101073106875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049761 (n + 1) + Int.tmod (A133820 (n + 1)) (A002024 (n + 1))

end

end A049769.P15387826101073106875

namespace A049769

/-- `A049761(n+1)+A133820(n+1)%A002024(n+1)` -/
def P15387826101073106875.Spec : Prop :=
  ∀ n, P15387826101073106875.a n = A049769 (n + 1)

end A049769

/-! ## A049769.P15680941126263935829

`A049761(n+1)+A000578(A002260(n+1))%A002024(n+1)`
-/

namespace A049769.P15680941126263935829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049761 (n + 1) + Int.tmod (A000578 (A002260 (n + 1)).toNat) (A002024 (n + 1))

end

end A049769.P15680941126263935829

namespace A049769

/-- `A049761(n+1)+A000578(A002260(n+1))%A002024(n+1)` -/
def P15680941126263935829.Spec : Prop :=
  ∀ n, P15680941126263935829.a n = A049769 (n + 1)

end A049769

/-! ## A049769.P7597564742993363538

`A048154(n+1)+A143150(n+1)%A128227(n)`
-/

namespace A049769.P7597564742993363538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048154 (n + 1) + Int.tmod (A143150 (n + 1)) (A128227 n)

end

end A049769.P7597564742993363538

namespace A049769

/-- `A048154(n+1)+A143150(n+1)%A128227(n)` -/
def P7597564742993363538.Spec : Prop :=
  ∀ n, P7597564742993363538.a n = A049769 (n + 1)

end A049769

/-!
# A049770: a(n) = Sum_{k=1..n} T(n,k), array T as in A049769.

The programs for A049770, the canonical program `A049770.P17306687827743446217` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049770 has offset 1).

The definition of A049770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049770.P17306687827743446217

`A049762(n+1)+A048155(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049770

/-- `A049762(n+1)+A048155(n+1)` -/
def P17306687827743446217.Spec : Prop :=
  ∀ n, P17306687827743446217.a n = A049770 (n + 1)

theorem P17306687827743446217.correct : P17306687827743446217.Spec := by
  intro n
  simp only [A049770, Nat.add_sub_cancel]

end A049770

/-! ## A049770.P16769466777346035292

`A049762(n+1)+∑[n+1]²%A014818(n+1)`
-/

namespace A049770.P16769466777346035292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049762 (n + 1) + Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A014818 (n + 1))

end

end A049770.P16769466777346035292

namespace A049770

/-- `A049762(n+1)+∑[n+1]²%A014818(n+1)` -/
def P16769466777346035292.Spec : Prop :=
  ∀ n, P16769466777346035292.a n = A049770 (n + 1)

end A049770

/-! ## A049770.P6808688843011882109

`A049762(n+1)+(n+1)*(n+1-A000189(n+1))/2`
-/

namespace A049770.P6808688843011882109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049762 (n + 1) : ℚ) + (n + 1 : ℚ) * (((n + 1 : ℤ) - A000189 (n + 1) : ℚ) / 2)

end

end A049770.P6808688843011882109

namespace A049770

/-- `A049762(n+1)+(n+1)*(n+1-A000189(n+1))/2` -/
def P6808688843011882109.Spec : Prop :=
  ∀ n, P6808688843011882109.a n = (A049770 (n + 1) : ℚ)

end A049770

/-! ## A049770.P2219977672978631324

`A049762(n+1)+A000290(∑[n+1])-(n+1)*A014818(n+1)`
-/

namespace A049770.P2219977672978631324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049762 (n + 1) + (A000290 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ) * A014818 (n + 1))

end

end A049770.P2219977672978631324

namespace A049770

/-- `A049762(n+1)+A000290(∑[n+1])-(n+1)*A014818(n+1)` -/
def P2219977672978631324.Spec : Prop :=
  ∀ n, P2219977672978631324.a n = A049770 (n + 1)

end A049770

/-! ## A049770.P8187869273126804839

`A049762(n+1)+A004525((n+1)*(n+1-A000189(n+1)))`
-/

namespace A049770.P8187869273126804839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049762 (n + 1) + A004525 ((n + 1 : ℤ) * ((n + 1 : ℤ) - A000189 (n + 1))).toNat

end

end A049770.P8187869273126804839

namespace A049770

/-- `A049762(n+1)+A004525((n+1)*(n+1-A000189(n+1)))` -/
def P8187869273126804839.Spec : Prop :=
  ∀ n, P8187869273126804839.a n = A049770 (n + 1)

end A049770

/-!
# A049771: Triangular array T read by rows: T(n,k) = (k^4 mod n) + (n^4 mod k).

The programs for A049771, the canonical program `A049771.P1884432723839077167` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049771 has offset 1).

The definition of A049771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((col(n)+1)^4)%(row(n)+1)+((row(n)+1)^4)%(col(n)+1)` (program `A049771.P1884432723839077167`, by `A049771.P1884432723839077167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049771.P1884432723839077167

`((col(n)+1)^4)%(row(n)+1)+((row(n)+1)^4)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049771

/-- `((col(n)+1)^4)%(row(n)+1)+((row(n)+1)^4)%(col(n)+1)` -/
def P1884432723839077167.Spec : Prop :=
  ∀ n, (P1884432723839077167.a n : ℤ) = A049771 (n + 1)

theorem P1884432723839077167.correct : P1884432723839077167.Spec := by
  intro n
  simp only [A049771, Nat.add_sub_cancel]

end A049771

/-! ## A049771.P15252291048546155040

`A049763(n+1)+A048156(n+1)`
-/

namespace A049771.P15252291048546155040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049763 (n + 1) + A048156 (n + 1)

end

end A049771.P15252291048546155040

namespace A049771

/-- `A049763(n+1)+A048156(n+1)` -/
def P15252291048546155040.Spec : Prop :=
  ∀ n, P15252291048546155040.a n = A049771 (n + 1)

theorem P15252291048546155040.correct : P15252291048546155040.Spec := by
  intro n
  simp only [A049771, Nat.add_sub_cancel, A049771.P15252291048546155040.a, A049771.P1884432723839077167.a, A048156, A048156.P17805607225871025132.a, A049763, A049763.P7840748025539565048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049771

/-! ## A049771.P15503227768031335457

`A048156(n+1)+A219069(n+1)%A128227(n)`
-/

namespace A049771.P15503227768031335457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (n + 1) + Int.tmod (A219069 (n + 1)) (A128227 n)

end

end A049771.P15503227768031335457

namespace A049771

/-- `A048156(n+1)+A219069(n+1)%A128227(n)` -/
def P15503227768031335457.Spec : Prop :=
  ∀ n, P15503227768031335457.a n = A049771 (n + 1)

end A049771

/-! ## A049771.P16424659628262057970

`A049763(n+1)+A133821(n+1)%A002024(n+1)`
-/

namespace A049771.P16424659628262057970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049763 (n + 1) + Int.tmod (A133821 (n + 1)) (A002024 (n + 1))

end

end A049771.P16424659628262057970

namespace A049771

/-- `A049763(n+1)+A133821(n+1)%A002024(n+1)` -/
def P16424659628262057970.Spec : Prop :=
  ∀ n, P16424659628262057970.a n = A049771 (n + 1)

end A049771

/-! ## A049771.P15621241824650704116

`A048156(n+1)+A025581(n)²²%A002260(n+1)`
-/

namespace A049771.P15621241824650704116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (n + 1) + Int.tmod ((A025581 n ^ 2) ^ 2) (A002260 (n + 1))

end

end A049771.P15621241824650704116

namespace A049771

/-- `A048156(n+1)+A025581(n)²²%A002260(n+1)` -/
def P15621241824650704116.Spec : Prop :=
  ∀ n, P15621241824650704116.a n = A049771 (n + 1)

end A049771

/-! ## A049771.P2027474973518137671

`A048156(n+1)+A123578(n)²²%A002260(n+1)`
-/

namespace A049771.P2027474973518137671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (n + 1) + Int.tmod ((A123578 n ^ 2) ^ 2) (A002260 (n + 1))

end

end A049771.P2027474973518137671

namespace A049771

/-- `A048156(n+1)+A123578(n)²²%A002260(n+1)` -/
def P2027474973518137671.Spec : Prop :=
  ∀ n, P2027474973518137671.a n = A049771 (n + 1)

end A049771

/-! ## A049771.P6098610149636568235

`A048156(n+1)+A070216(n+1)²%A002260(n+1)`
-/

namespace A049771.P6098610149636568235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (n + 1) + Int.tmod (A070216 (n + 1) ^ 2) (A002260 (n + 1))

end

end A049771.P6098610149636568235

namespace A049771

/-- `A048156(n+1)+A070216(n+1)²%A002260(n+1)` -/
def P6098610149636568235.Spec : Prop :=
  ∀ n, P6098610149636568235.a n = A049771 (n + 1)

end A049771

/-!
# A049772: a(n) = Sum_{k=1..n} T(n,k), array T as in A049771.

The programs for A049772, there is no canonical definition to state claims against.
-/

/-! ## A049772.P692533892039233346

`A049764(n+1)+A048157(n+1)`
-/

namespace A049772.P692533892039233346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049764 (n + 1) + A048157 (n + 1)

end

end A049772.P692533892039233346

/-!
# A049773: Triangular array T read by rows: if row n is r(1),...,r(m), then row n+1 is 2r(1)-1,...,2r(m)-1,2r(1),...,2r(m).

The programs for A049773, the canonical program `A049773.P11655978421668356086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049773 has offset 1).

The definition of A049773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049773.P11655978421668356086

`A030109(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049773

/-- `A030109(n+1)+1` -/
def P11655978421668356086.Spec : Prop :=
  ∀ n, P11655978421668356086.a n = A049773 (n + 1)

theorem P11655978421668356086.correct : P11655978421668356086.Spec := by
  intro n
  simp only [A049773, Nat.add_sub_cancel]

end A049773

/-! ## A049773.P1551376104383176353

`ceil(A030101(n+1)/2)`
-/

namespace A049773.P1551376104383176353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030101 (n + 1) : ℚ) / 2⌉

end

end A049773.P1551376104383176353

namespace A049773

/-- `ceil(A030101(n+1)/2)` -/
def P1551376104383176353.Spec : Prop :=
  ∀ n, P1551376104383176353.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P17799183934078705514

`(Δ[A239447(n)]+1)/2`
-/

namespace A049773.P17799183934078705514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239447 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A049773.P17799183934078705514

namespace A049773

/-- `(Δ[A239447(n)]+1)/2` -/
def P17799183934078705514.Spec : Prop :=
  ∀ n, P17799183934078705514.a n = (A049773 (n + 1) : ℚ)

end A049773

/-! ## A049773.P6364765346443553421

`(A055944(n+1)-n)/2`
-/

namespace A049773.P6364765346443553421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A049773.P6364765346443553421

namespace A049773

/-- `(A055944(n+1)-n)/2` -/
def P6364765346443553421.Spec : Prop :=
  ∀ n, P6364765346443553421.a n = (A049773 (n + 1) : ℚ)

end A049773

/-! ## A049773.P424297306759623959

`(n+2-A055945(n+1))/2`
-/

namespace A049773.P424297306759623959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A055945 (n + 1) : ℚ) / 2

end

end A049773.P424297306759623959

namespace A049773

/-- `(n+2-A055945(n+1))/2` -/
def P424297306759623959.Spec : Prop :=
  ∀ n, P424297306759623959.a n = (A049773 (n + 1) : ℚ)

end A049773

/-! ## A049773.P11985617358789660649

`A145342(A003602(n+1))`
-/

namespace A049773.P11985617358789660649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A003602 (n + 1)).toNat

end

end A049773.P11985617358789660649

namespace A049773

/-- `A145342(A003602(n+1))` -/
def P11985617358789660649.Spec : Prop :=
  ∀ n, P11985617358789660649.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P17575686331497760932

`A038572(A030101(n+1)+1)`
-/

namespace A049773.P17575686331497760932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A030101 (n + 1) + 1).toNat

end

end A049773.P17575686331497760932

namespace A049773

/-- `A038572(A030101(n+1)+1)` -/
def P17575686331497760932.Spec : Prop :=
  ∀ n, P17575686331497760932.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P9197773080895065176

`A325642(A030101(n+1)+1)`
-/

namespace A049773.P9197773080895065176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A030101 (n + 1) + 1).toNat

end

end A049773.P9197773080895065176

namespace A049773

/-- `A325642(A030101(n+1)+1)` -/
def P9197773080895065176.Spec : Prop :=
  ∀ n, P9197773080895065176.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P17432887969565185314

`A328399(A030101(n+1)-1)`
-/

namespace A049773.P17432887969565185314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A030101 (n + 1) - 1).toNat

end

end A049773.P17432887969565185314

namespace A049773

/-- `A328399(A030101(n+1)-1)` -/
def P17432887969565185314.Spec : Prop :=
  ∀ n, P17432887969565185314.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P5157580510347233283

`(A056539(A000265(n+1))+1)/2`
-/

namespace A049773.P5157580510347233283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (A000265 (n + 1)).toNat + 1 : ℚ) / 2

end

end A049773.P5157580510347233283

namespace A049773

/-- `(A056539(A000265(n+1))+1)/2` -/
def P5157580510347233283.Spec : Prop :=
  ∀ n, P5157580510347233283.a n = (A049773 (n + 1) : ℚ)

end A049773

/-! ## A049773.P3228133639898275328

`A059894(n+1)-A036044(n+1)`
-/

namespace A049773.P3228133639898275328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (n + 1) - A036044 (n + 1)

end

end A049773.P3228133639898275328

namespace A049773

/-- `A059894(n+1)-A036044(n+1)` -/
def P3228133639898275328.Spec : Prop :=
  ∀ n, P3228133639898275328.a n = A049773 (n + 1)

theorem P3228133639898275328.correct : P3228133639898275328.Spec := by
  intro n
  simp only [A049773, Nat.add_sub_cancel, A049773.P3228133639898275328.a, A049773.P11655978421668356086.a, A030109, A030109.P14199666590729784855.a, A036044, A036044.P16648927426293672306.a, A059894, A059894.P11516963689868861872.a, A030101, A030101.P16184294017372777612.a, A035327, A035327.P258997810375859489.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P6039021529582153667.a, A053644, A053644.P1707366427427647095.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049773

/-! ## A049773.P18171804461949804226

`A059893(n+1)-A092323(n+1)`
-/

namespace A049773.P18171804461949804226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A092323 (n + 1)

end

end A049773.P18171804461949804226

namespace A049773

/-- `A059893(n+1)-A092323(n+1)` -/
def P18171804461949804226.Spec : Prop :=
  ∀ n, P18171804461949804226.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P7937621765613213895

`(A030101(n+1)+1)/A020639(2*(n+1))`
-/

namespace A049773.P7937621765613213895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A049773.P7937621765613213895

namespace A049773

/-- `(A030101(n+1)+1)/A020639(2*(n+1))` -/
def P7937621765613213895.Spec : Prop :=
  ∀ n, P7937621765613213895.a n = (A049773 (n + 1) : ℚ)

end A049773

/-! ## A049773.P1342914039093447056

`A059893(n+1)-A055945(A053644(n+1))`
-/

namespace A049773.P1342914039093447056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A055945 (A053644 (n + 1)).toNat

end

end A049773.P1342914039093447056

namespace A049773

/-- `A059893(n+1)-A055945(A053644(n+1))` -/
def P1342914039093447056.Spec : Prop :=
  ∀ n, P1342914039093447056.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P10700908957088190229

`A030101(n+1)+A053644(n+1)-A059893(n+1)`
-/

namespace A049773.P10700908957088190229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1) + (A053644 (n + 1) - A059893 (n + 1))

end

end A049773.P10700908957088190229

namespace A049773

/-- `A030101(n+1)+A053644(n+1)-A059893(n+1)` -/
def P10700908957088190229.Spec : Prop :=
  ∀ n, P10700908957088190229.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P2867708852142875530

`A053644(n+1)+A053644(n+1)-A059894(n+1)`
-/

namespace A049773.P2867708852142875530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + (A053644 (n + 1) - A059894 (n + 1))

end

end A049773.P2867708852142875530

namespace A049773

/-- `A053644(n+1)+A053644(n+1)-A059894(n+1)` -/
def P2867708852142875530.Spec : Prop :=
  ∀ n, P2867708852142875530.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P15054526505073350142

`A145342(n+2)-A053644(n+1)`
-/

namespace A049773.P15054526505073350142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 2) - A053644 (n + 1)

end

end A049773.P15054526505073350142

namespace A049773

/-- `A145342(n+2)-A053644(n+1)` -/
def P15054526505073350142.Spec : Prop :=
  ∀ n, P15054526505073350142.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P2046697593495296009

`A000463(A030101(n+1))`
-/

namespace A049773.P2046697593495296009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A030101 (n + 1)).toNat

end

end A049773.P2046697593495296009

namespace A049773

/-- `A000463(A030101(n+1))` -/
def P2046697593495296009.Spec : Prop :=
  ∀ n, P2046697593495296009.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P598251149403266814

`A003602(A057889(n+1))`
-/

namespace A049773.P598251149403266814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A057889 (n + 1)).toNat

end

end A049773.P598251149403266814

namespace A049773

/-- `A003602(A057889(n+1))` -/
def P598251149403266814.Spec : Prop :=
  ∀ n, P598251149403266814.a n = A049773 (n + 1)

end A049773

/-! ## A049773.P2004862107922939452

`A003602(A366389(n+1))`
-/

namespace A049773.P2004862107922939452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A366389 (n + 1)).toNat

end

end A049773.P2004862107922939452

namespace A049773

/-- `A003602(A366389(n+1))` -/
def P2004862107922939452.Spec : Prop :=
  ∀ n, P2004862107922939452.a n = A049773 (n + 1)

end A049773

/-!
# A049774: Number of permutations of n elements not containing the consecutive pattern 123.

The programs for A049774, there is no canonical definition to state claims against.
-/

/-! ## A049774.P13117523876381473485

`A242784(∑[n+3]+n+3)`
-/

namespace A049774.P13117523876381473485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A049774.P13117523876381473485

/-! ## A049774.P2291415006951343240

`A000303(A028310(n))+1`
-/

namespace A049774.P2291415006951343240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000303 (A028310 n).toNat + 1

end

end A049774.P2291415006951343240

/-! ## A049774.P5768156455130255545

`A000303(A000007(n)+n)+1`
-/

namespace A049774.P5768156455130255545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000303 (A000007 n + (n : ℤ)).toNat + 1

end

end A049774.P5768156455130255545

/-! ## A049774.P3095538596177976880

`A177483(n+1)/(n+1)`
-/

namespace A049774.P3095538596177976880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177483 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A049774.P3095538596177976880

/-! ## A049774.P8502683647681495849

`A162975(A022856(n+2))`
-/

namespace A049774.P8502683647681495849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A022856 (n + 2)).toNat

end

end A049774.P8502683647681495849

/-! ## A049774.P4684685566670038176

`A162975(A016028(n+1)-1)`
-/

namespace A049774.P4684685566670038176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A016028 (n + 1) - 1).toNat

end

end A049774.P4684685566670038176

/-! ## A049774.P13526016823629269819

`A117158(n)-A000402(A028310(n))`
-/

namespace A049774.P13526016823629269819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117158 n - A000402 (A028310 n).toNat

end

end A049774.P13526016823629269819

/-! ## A049774.P10218303331273650408

`A000142(n)-A065429(A028310(n))`
-/

namespace A049774.P10218303331273650408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A065429 (A028310 n).toNat

end

end A049774.P10218303331273650408

/-!
# A049775: a(n) is the sum of all integers from 2^(n-2)+1 to 2^(n-1).

The programs for A049775, the canonical program `A049775.P13386507242461119712` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049775 has offset 2).

The definition of A049775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049775.P13157432994985089990

`ogf((2-5x)/(1-6x+8x^2))`
-/

namespace A049775.P13157432994985089990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -6, 8] n

end

end A049775.P13157432994985089990

namespace A049775

/-- `ogf((2-5x)/(1-6x+8x^2))` -/
def P13157432994985089990.Spec : Prop :=
  ∀ n, P13157432994985089990.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P9869989776652888233

`2^(n-1)*(3*2^n+1)`
-/

namespace A049775.P9869989776652888233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (3 * 2 ^ n + 1 : ℚ)

end

end A049775.P9869989776652888233

namespace A049775

/-- `2^(n-1)*(3*2^n+1)` -/
def P9869989776652888233.Spec : Prop :=
  ∀ n, P9869989776652888233.a n = (A049775 (n + 2) : ℚ)

theorem P9869989776652888233.correct : P9869989776652888233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049775, Nat.add_sub_cancel, A049775.P9869989776652888233.a, A049775.P13386507242461119712.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049775, Nat.add_sub_cancel, A049775.P9869989776652888233.a, A049775.P13386507242461119712.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A049775

/-! ## A049775.P13386507242461119712

`6*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049775

/-- `6*a(n-1)-8*a(n-2)` -/
def P13386507242461119712.Spec : Prop :=
  ∀ n, P13386507242461119712.a n = A049775 (n + 2)

theorem P13386507242461119712.correct : P13386507242461119712.Spec := by
  intro n
  simp only [A049775, Nat.add_sub_cancel]

end A049775

/-! ## A049775.P16426071237934978782

`A007582(n+1)-A007582(n)`
-/

namespace A049775.P16426071237934978782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n + 1) - A007582 n

end

end A049775.P16426071237934978782

namespace A049775

/-- `A007582(n+1)-A007582(n)` -/
def P16426071237934978782.Spec : Prop :=
  ∀ n, P16426071237934978782.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P10006909302035279596

`C(2^n+1, 2)+4^n`
-/

namespace A049775.P10006909302035279596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 1) 2 + 4 ^ n

end

end A049775.P10006909302035279596

namespace A049775

/-- `C(2^n+1, 2)+4^n` -/
def P10006909302035279596.Spec : Prop :=
  ∀ n, (P10006909302035279596.a n : ℤ) = A049775 (n + 2)

end A049775

/-! ## A049775.P12727699143919353042

`2*4^n-C(2^n, 2)`
-/

namespace A049775.P12727699143919353042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (Nat.choose (2 ^ n) 2 : ℤ)

end

end A049775.P12727699143919353042

namespace A049775

/-- `2*4^n-C(2^n, 2)` -/
def P12727699143919353042.Spec : Prop :=
  ∀ n, P12727699143919353042.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P8628216396215329148

`4*a(n-1)-2^(n-1)` with `a(0)=2`
-/

namespace A049775.P8628216396215329148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A049775.P8628216396215329148

namespace A049775

/-- `4*a(n-1)-2^(n-1)` -/
def P8628216396215329148.Spec : Prop :=
  ∀ n, P8628216396215329148.a n = (A049775 (n + 2) : ℚ)

end A049775

/-! ## A049775.P9089469468364981172

`Δ[a(n-1)+a(n-1)+4^(n-1)]` with `a(0)=1`
-/

namespace A049775.P9089469468364981172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P9089469468364981172

namespace A049775

/-- `Δ[a(n-1)+a(n-1)+4^(n-1)]` -/
def P9089469468364981172.Spec : Prop :=
  ∀ n, P9089469468364981172.a n = (A049775 (n + 2) : ℚ)

end A049775

/-! ## A049775.P4964811872767593358

`(xor(1, 2^n)-1)²+(2^n+4^n)/2`
-/

namespace A049775.P4964811872767593358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 1 (2 ^ n) : ℤ) - 1) ^ 2 : ℚ) + (2 ^ n + 4 ^ n : ℚ) / 2

end

end A049775.P4964811872767593358

namespace A049775

/-- `(xor(1, 2^n)-1)²+(2^n+4^n)/2` -/
def P4964811872767593358.Spec : Prop :=
  ∀ n, P4964811872767593358.a n = (A049775 (n + 2) : ℚ)

end A049775

/-! ## A049775.P12243078284047144549

`Δ[A007582(n)]`
-/

namespace A049775.P12243078284047144549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P12243078284047144549

namespace A049775

/-- `Δ[A007582(n)]` -/
def P12243078284047144549.Spec : Prop :=
  ∀ n, P12243078284047144549.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P2052265214001127253

`Δ[A281481(n)]`
-/

namespace A049775.P2052265214001127253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P2052265214001127253

namespace A049775

/-- `Δ[A281481(n)]` -/
def P2052265214001127253.Spec : Prop :=
  ∀ n, P2052265214001127253.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P9826495436774413079

`Δ[Δ[A007581(n)]]`
-/

namespace A049775.P9826495436774413079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P9826495436774413079

namespace A049775

/-- `Δ[Δ[A007581(n)]]` -/
def P9826495436774413079.Spec : Prop :=
  ∀ n, P9826495436774413079.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P15535323240698545565

`Δ[Δ[A076024(n)]]`
-/

namespace A049775.P15535323240698545565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P15535323240698545565

namespace A049775

/-- `Δ[Δ[A076024(n)]]` -/
def P15535323240698545565.Spec : Prop :=
  ∀ n, P15535323240698545565.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P5364445576540174607

`Δ[A001576(n)/2]`
-/

namespace A049775.P5364445576540174607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P5364445576540174607

namespace A049775

/-- `Δ[A001576(n)/2]` -/
def P5364445576540174607.Spec : Prop :=
  ∀ n, P5364445576540174607.a n = (A049775 (n + 2) : ℚ)

theorem P5364445576540174607.correct : P5364445576540174607.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049775, Nat.add_sub_cancel, A049775.P5364445576540174607.f1, A049775.P5364445576540174607.a, A049775.P13386507242461119712.a, A001576, A001576.P9239399266946801083.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049775, Nat.add_sub_cancel, A049775.P5364445576540174607.f1, A049775.P5364445576540174607.a, A049775.P13386507242461119712.a, A001576, A001576.P9239399266946801083.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A049775

/-! ## A049775.P3511912686329535748

`Δ[A099393(n)/2]`
-/

namespace A049775.P3511912686329535748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099393 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P3511912686329535748

namespace A049775

/-- `Δ[A099393(n)/2]` -/
def P3511912686329535748.Spec : Prop :=
  ∀ n, P3511912686329535748.a n = (A049775 (n + 2) : ℚ)

theorem P3511912686329535748.correct : P3511912686329535748.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049775, Nat.add_sub_cancel, A049775.P3511912686329535748.f1, A049775.P3511912686329535748.a, A049775.P13386507242461119712.a, A099393, A099393.P9893508864860866410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049775, Nat.add_sub_cancel, A049775.P3511912686329535748.f1, A049775.P3511912686329535748.a, A049775.P13386507242461119712.a, A099393, A099393.P9893508864860866410.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A049775

/-! ## A049775.P10316842307051289184

`Δ[A161168(n)/2]`
-/

namespace A049775.P10316842307051289184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161168 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P10316842307051289184

namespace A049775

/-- `Δ[A161168(n)/2]` -/
def P10316842307051289184.Spec : Prop :=
  ∀ n, P10316842307051289184.a n = (A049775 (n + 2) : ℚ)

theorem P10316842307051289184.correct : P10316842307051289184.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049775, Nat.add_sub_cancel, A049775.P10316842307051289184.f1, A049775.P10316842307051289184.a, A049775.P13386507242461119712.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049775, Nat.add_sub_cancel, A049775.P10316842307051289184.f1, A049775.P10316842307051289184.a, A049775.P13386507242461119712.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A049775

/-! ## A049775.P1551034114379095053

`Δ[A170938(n)/2]`
-/

namespace A049775.P1551034114379095053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170938 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049775.P1551034114379095053

namespace A049775

/-- `Δ[A170938(n)/2]` -/
def P1551034114379095053.Spec : Prop :=
  ∀ n, P1551034114379095053.a n = (A049775 (n + 2) : ℚ)

theorem P1551034114379095053.correct : P1551034114379095053.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049775, Nat.add_sub_cancel, A049775.P1551034114379095053.f1, A049775.P1551034114379095053.a, A049775.P13386507242461119712.a, A170938, A170938.P7990225522369854519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049775, Nat.add_sub_cancel, A049775.P1551034114379095053.f1, A049775.P1551034114379095053.a, A049775.P13386507242461119712.a, A170938, A170938.P7990225522369854519.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A049775

/-! ## A049775.P1928972592882608647

`A056503(4*n+2)`
-/

namespace A049775.P1928972592882608647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (4 * n + 2)

end

end A049775.P1928972592882608647

namespace A049775

/-- `A056503(4*n+2)` -/
def P1928972592882608647.Spec : Prop :=
  ∀ n, P1928972592882608647.a n = A049775 (n + 2)

end A049775

/-! ## A049775.P1953382353673156140

`A010036(n)+2^n`
-/

namespace A049775.P1953382353673156140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n + (2 ^ n : ℤ)

end

end A049775.P1953382353673156140

namespace A049775

/-- `A010036(n)+2^n` -/
def P1953382353673156140.Spec : Prop :=
  ∀ n, P1953382353673156140.a n = A049775 (n + 2)

end A049775

/-!
# A049776: Triangular array T read by rows: n-th row consists of fixed points, k, of n-th row of array t given by A049773; i.e., t(n, t(n,k)) = t(n,k).

The programs for A049776, the canonical program `A049776.P14768317238781565942` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049776 has offset 1).

The definition of A049776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049776.P17603100622701375872

`A044051(n+2)-A053644(A044051(n+1))`
-/

namespace A049776.P17603100622701375872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (n + 2) - A053644 (A044051 (n + 1)).toNat

end

end A049776.P17603100622701375872

namespace A049776

/-- `A044051(n+2)-A053644(A044051(n+1))` -/
def P17603100622701375872.Spec : Prop :=
  ∀ n, P17603100622701375872.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P14768317238781565942

`A030109(eq[n+1, A059893(n+1)]+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049776

/-- `A030109(eq[n+1, A059893(n+1)]+1)+1` -/
def P14768317238781565942.Spec : Prop :=
  ∀ n, P14768317238781565942.a n = A049776 (n + 1)

theorem P14768317238781565942.correct : P14768317238781565942.Spec := by
  intro n
  simp only [A049776, Nat.add_sub_cancel]

end A049776

/-! ## A049776.P8103124756128015882

`A049773(eq[A035327(n), A055945(n)])`
-/

namespace A049776.P8103124756128015882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049776.P8103124756128015882

namespace A049776

/-- `A049773(eq[A035327(n), A055945(n)])` -/
def P8103124756128015882.Spec : Prop :=
  ∀ n, P8103124756128015882.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P10801963128162932837

`A049773(eq[n, A035327(n)+A030101(n)])`
-/

namespace A049776.P10801963128162932837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049776.P10801963128162932837

namespace A049776

/-- `A049773(eq[n, A035327(n)+A030101(n)])` -/
def P10801963128162932837.Spec : Prop :=
  ∀ n, P10801963128162932837.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P4381846853949201285

`A049773(eq[n-A030101(n), A035327(n)])`
-/

namespace A049776.P4381846853949201285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049776.P4381846853949201285

namespace A049776

/-- `A049773(eq[n-A030101(n), A035327(n)])` -/
def P4381846853949201285.Spec : Prop :=
  ∀ n, P4381846853949201285.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P6360415298048488892

`A030109(eq[A002487(n), A007305(n+1)])+1`
-/

namespace A049776.P6360415298048488892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A049776.P6360415298048488892

namespace A049776

/-- `A030109(eq[A002487(n), A007305(n+1)])+1` -/
def P6360415298048488892.Spec : Prop :=
  ∀ n, P6360415298048488892.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P15920957524177827539

`A049773(A006995(n+3)-1)`
-/

namespace A049776.P15920957524177827539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A006995 (n + 3) - 1).toNat

end

end A049776.P15920957524177827539

namespace A049776

/-- `A049773(A006995(n+3)-1)` -/
def P15920957524177827539.Spec : Prop :=
  ∀ n, P15920957524177827539.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P15900209569746919107

`A049773(record[n%A049773(n+1)]+1)`
-/

namespace A049776.P15900209569746919107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A049773 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A049776.P15900209569746919107

namespace A049776

/-- `A049773(record[n%A049773(n+1)]+1)` -/
def P15900209569746919107.Spec : Prop :=
  ∀ n, P15900209569746919107.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P12012093890245658523

`A049773(A030109(A006995(n+3)))`
-/

namespace A049776.P12012093890245658523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A030109 (A006995 (n + 3)).toNat).toNat

end

end A049776.P12012093890245658523

namespace A049776

/-- `A049773(A030109(A006995(n+3)))` -/
def P12012093890245658523.Spec : Prop :=
  ∀ n, P12012093890245658523.a n = A049776 (n + 1)

end A049776

/-! ## A049776.P13905787255588007681

`A030109(eq[A000265(n+2), A161501(n+2)]+1)+1`
-/

namespace A049776.P13905787255588007681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A049776.P13905787255588007681

namespace A049776

/-- `A030109(eq[A000265(n+2), A161501(n+2)]+1)+1` -/
def P13905787255588007681.Spec : Prop :=
  ∀ n, P13905787255588007681.a n = A049776 (n + 1)

end A049776

/-!
# A049777: Triangular array read by rows: T(m,n) = n + n+1 + ... + m = (m+n)(m-n+1)/2.

The programs for A049777, the canonical program `A049777.P8069278756495172327` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049777 has offset 1).

The definition of A049777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1+col(n)+1)*(row(n)+1-(col(n)+1)+1)/2` (program `A049777.P4000231892958571332`, by `A049777.P4000231892958571332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049777.P4000231892958571332

`(row(n)+1+col(n)+1)*(row(n)+1-(col(n)+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049777.P4000231892958571332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2

end

end A049777.P4000231892958571332

namespace A049777

/-- `(row(n)+1+col(n)+1)*(row(n)+1-(col(n)+1)+1)/2` -/
def P4000231892958571332.Spec : Prop :=
  ∀ n, P4000231892958571332.a n = (A049777 (n + 1) : ℚ)

theorem P4000231892958571332.correct : P4000231892958571332.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P4000231892958571332.a, A049777.P8069278756495172327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-! ## A049777.P13211959093505379958

`T(n-1,k)+row(n)+1` with `a(0)=1`
-/

namespace A049777.P13211959093505379958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + 1)

end

end A049777.P13211959093505379958

namespace A049777

/-- `T(n-1,k)+row(n)+1` -/
def P13211959093505379958.Spec : Prop :=
  ∀ n, (P13211959093505379958.a n : ℤ) = A049777 (n + 1)

end A049777

/-! ## A049777.P8069278756495172327

`C(row(n)+2, 2)-C(col(n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049777

/-- `C(row(n)+2, 2)-C(col(n)+1, 2)` -/
def P8069278756495172327.Spec : Prop :=
  ∀ n, P8069278756495172327.a n = A049777 (n + 1)

theorem P8069278756495172327.correct : P8069278756495172327.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel]

end A049777

/-! ## A049777.P9374793035547992517

`(row(n)+1)*(row(n)+2)/2-col(n)*(col(n)+1)/2`
-/

namespace A049777.P9374793035547992517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 2) : ℚ) / 2 - (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A049777.P9374793035547992517

namespace A049777

/-- `(row(n)+1)*(row(n)+2)/2-col(n)*(col(n)+1)/2` -/
def P9374793035547992517.Spec : Prop :=
  ∀ n, P9374793035547992517.a n = (A049777 (n + 1) : ℚ)

theorem P9374793035547992517.correct : P9374793035547992517.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P9374793035547992517.a, A049777.P8069278756495172327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-! ## A049777.P3340431926650288070

`A205376(n+1)/8`
-/

namespace A049777.P3340431926650288070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205376 (n + 1) : ℚ) / 8

end

end A049777.P3340431926650288070

namespace A049777

/-- `A205376(n+1)/8` -/
def P3340431926650288070.Spec : Prop :=
  ∀ n, P3340431926650288070.a n = (A049777 (n + 1) : ℚ)

theorem P3340431926650288070.correct : P3340431926650288070.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P3340431926650288070.a, A049777.P8069278756495172327.a, A205376, A205376.P17692013997868668621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-! ## A049777.P18298019816644975880

`2-A365582(n+1)+n`
-/

namespace A049777.P18298019816644975880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A365582 (n + 1) + (n : ℤ)

end

end A049777.P18298019816644975880

namespace A049777

/-- `2-A365582(n+1)+n` -/
def P18298019816644975880.Spec : Prop :=
  ∀ n, P18298019816644975880.a n = A049777 (n + 1)

theorem P18298019816644975880.correct : P18298019816644975880.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P18298019816644975880.a, A049777.P8069278756495172327.a, A365582, A365582.P10913562028929217488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-! ## A049777.P28634391353803670

`A193974(n)-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A049777.P28634391353803670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A049777.P28634391353803670

namespace A049777

/-- `A193974(n)-(C(comp[∑[n]]-n, 2)-n)` -/
def P28634391353803670.Spec : Prop :=
  ∀ n, P28634391353803670.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P7223209719657725595

`A004736(n+1)+a(n-round(sqrt(2*n)))` with `a(0)=1`
-/

namespace A049777.P7223209719657725595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004736 (n + 1) + a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A049777.P7223209719657725595

namespace A049777

/-- `A004736(n+1)+a(n-round(sqrt(2*n)))` -/
def P7223209719657725595.Spec : Prop :=
  ∀ n, P7223209719657725595.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P6803131309574428213

`A000217(row(n)-col(n)+1)+(row(n)-col(n)+1)*col(n)`
-/

namespace A049777.P6803131309574428213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n : ℤ)

end

end A049777.P6803131309574428213

namespace A049777

/-- `A000217(row(n)-col(n)+1)+(row(n)-col(n)+1)*col(n)` -/
def P6803131309574428213.Spec : Prop :=
  ∀ n, P6803131309574428213.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P13340078774722280632

`A329854(n)+A294317(n)`
-/

namespace A049777.P13340078774722280632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329854 n + A294317 n

end

end A049777.P13340078774722280632

namespace A049777

/-- `A329854(n)+A294317(n)` -/
def P13340078774722280632.Spec : Prop :=
  ∀ n, P13340078774722280632.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P7606746338933268096

`A271668(n)-A002262(n)`
-/

namespace A049777.P7606746338933268096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n - A002262 n

end

end A049777.P7606746338933268096

namespace A049777

/-- `A271668(n)-A002262(n)` -/
def P7606746338933268096.Spec : Prop :=
  ∀ n, P7606746338933268096.a n = A049777 (n + 1)

theorem P7606746338933268096.correct : P7606746338933268096.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P7606746338933268096.a, A049777.P8069278756495172327.a, A002262, A002262.P17823619022233514403.a, A271668, A271668.P273675855261280975.a, A049780, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-! ## A049777.P4732988982984494587

`A049780(n)+∑[A010054(n)]`
-/

namespace A049777.P4732988982984494587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049777.P4732988982984494587

namespace A049777

/-- `A049780(n)+∑[A010054(n)]` -/
def P4732988982984494587.Spec : Prop :=
  ∀ n, P4732988982984494587.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P5777656937799413836

`A049780(n)+A002024(n+1)`
-/

namespace A049777.P5777656937799413836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + A002024 (n + 1)

end

end A049777.P5777656937799413836

namespace A049777

/-- `A049780(n)+A002024(n+1)` -/
def P5777656937799413836.Spec : Prop :=
  ∀ n, P5777656937799413836.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P17669607539721353540

`A131783(n+1)-A025581(n)`
-/

namespace A049777.P17669607539721353540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) - A025581 n

end

end A049777.P17669607539721353540

namespace A049777

/-- `A131783(n+1)-A025581(n)` -/
def P17669607539721353540.Spec : Prop :=
  ∀ n, P17669607539721353540.a n = A049777 (n + 1)

theorem P17669607539721353540.correct : P17669607539721353540.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P17669607539721353540.a, A049777.P8069278756495172327.a, A025581, A025581.P16112744757063613497.a, A131783, A131783.P16711198060458241591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-! ## A049777.P17677347751236753562

`A104633(n+1)-A062707(n)`
-/

namespace A049777.P17677347751236753562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A062707 n

end

end A049777.P17677347751236753562

namespace A049777

/-- `A104633(n+1)-A062707(n)` -/
def P17677347751236753562.Spec : Prop :=
  ∀ n, P17677347751236753562.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P8466085005548334832

`A131416(n+1)-A059036(n)`
-/

namespace A049777.P8466085005548334832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131416 (n + 1) - A059036 n

end

end A049777.P8466085005548334832

namespace A049777

/-- `A131416(n+1)-A059036(n)` -/
def P8466085005548334832.Spec : Prop :=
  ∀ n, P8466085005548334832.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P11914066464453439912

`A193974(n)-A004736(n+1)`
-/

namespace A049777.P11914066464453439912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A004736 (n + 1)

end

end A049777.P11914066464453439912

namespace A049777

/-- `A193974(n)-A004736(n+1)` -/
def P11914066464453439912.Spec : Prop :=
  ∀ n, P11914066464453439912.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P827072266685734770

`A127739(n+1)-A112367(n)`
-/

namespace A049777.P827072266685734770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A112367 n

end

end A049777.P827072266685734770

namespace A049777

/-- `A127739(n+1)-A112367(n)` -/
def P827072266685734770.Spec : Prop :=
  ∀ n, P827072266685734770.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P3140250684764053073

`A365904(n+1)-A057944(n)`
-/

namespace A049777.P3140250684764053073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365904 (n + 1) - A057944 n

end

end A049777.P3140250684764053073

namespace A049777

/-- `A365904(n+1)-A057944(n)` -/
def P3140250684764053073.Spec : Prop :=
  ∀ n, P3140250684764053073.a n = A049777 (n + 1)

end A049777

/-! ## A049777.P6414365363573203764

`A120070(n+2)-A193974(n)`
-/

namespace A049777.P6414365363573203764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - A193974 n

end

end A049777.P6414365363573203764

namespace A049777

/-- `A120070(n+2)-A193974(n)` -/
def P6414365363573203764.Spec : Prop :=
  ∀ n, P6414365363573203764.a n = A049777 (n + 1)

theorem P6414365363573203764.correct : P6414365363573203764.Spec := by
  intro n
  simp only [A049777, Nat.add_sub_cancel, A049777.P6414365363573203764.a, A049777.P8069278756495172327.a, A120070, A120070.P8418683465396432844.a, A193974, A193974.P14269232743332111222.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, A131783, A131783.P16711198060458241591.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049777

/-!
# A049778: a(n) = Sum_{k=1..floor((n+1)/2)} T(n,2k-1), array T as in A049777.

The programs for A049778, the canonical program `A049778.P8441536841071272121` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049778 has offset 1).

The definition of A049778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049778.P13873586764065516903

`ogf((1+x+2x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A049778.P13873586764065516903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -2, -1, 4, -1, -2, 1] n

end

end A049778.P13873586764065516903

namespace A049778

/-- `ogf((1+x+2x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P13873586764065516903.Spec : Prop :=
  ∀ n, P13873586764065516903.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P8441536841071272121

`(3+10*(n+1)+18*(n+1)²+8*(n+1)^3-3*(-1)^(n+1)*(1+2*(n+1)))/48`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049778

/-- `(3+10*(n+1)+18*(n+1)²+8*(n+1)^3-3*(-1)^(n+1)*(1+2*(n+1)))/48` -/
def P8441536841071272121.Spec : Prop :=
  ∀ n, P8441536841071272121.a n = (A049778 (n + 1) : ℚ)

end A049778

/-! ## A049778.P17111814127115782110

`∑[(n+1)*∑[log2(gcd(2, n))]]`
-/

namespace A049778.P17111814127115782110
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P17111814127115782110

namespace A049778

/-- `∑[(n+1)*∑[log2(gcd(2, n))]]` -/
def P17111814127115782110.Spec : Prop :=
  ∀ n, P17111814127115782110.a n = (A049778 (n + 1) : ℝ)

end A049778

/-! ## A049778.P3744806661604496967

`∑[∑[n²%Δ[n²]]]+n+1`
-/

namespace A049778.P3744806661604496967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A049778.P3744806661604496967

namespace A049778

/-- `∑[∑[n²%Δ[n²]]]+n+1` -/
def P3744806661604496967.Spec : Prop :=
  ∀ n, P3744806661604496967.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P11689153402853838080

`∑[∑[2*n]+lcm(2, n+1)]/2`
-/

namespace A049778.P11689153402853838080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A049778.P11689153402853838080

namespace A049778

/-- `∑[∑[2*n]+lcm(2, n+1)]/2` -/
def P11689153402853838080.Spec : Prop :=
  ∀ n, P11689153402853838080.a n = (A049778 (n + 1) : ℚ)

end A049778

/-! ## A049778.P9967991965655798950

`∑[(n+1)*∑[1-a(n-1)]]` with `a(0)=1`
-/

namespace A049778.P9967991965655798950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P9967991965655798950

namespace A049778

/-- `∑[(n+1)*∑[1-a(n-1)]]` -/
def P9967991965655798950.Spec : Prop :=
  ∀ n, P9967991965655798950.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P16022464071809765053

`∑[∑[n]/a(n-1)]+∑[∑[n]]` with `a(0)=1`
-/

namespace A049778.P16022464071809765053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A049778.P16022464071809765053

namespace A049778

/-- `∑[∑[n]/a(n-1)]+∑[∑[n]]` -/
def P16022464071809765053.Spec : Prop :=
  ∀ n, P16022464071809765053.a n = (A049778 (n + 1) : ℚ)

end A049778

/-! ## A049778.P12849688617536763817

`∑[∑[n]]-∑[∑[n]/a(n-1)]` with `a(0)=-1`
-/

namespace A049778.P12849688617536763817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ) / f3 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A049778.P12849688617536763817

namespace A049778

/-- `∑[∑[n]]-∑[∑[n]/a(n-1)]` -/
def P12849688617536763817.Spec : Prop :=
  ∀ n, P12849688617536763817.a n = (A049778 (n + 1) : ℚ)

end A049778

/-! ## A049778.P12920412031621099775

`∑[∑[a(n-2)+4]-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A049778.P12920412031621099775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P12920412031621099775

namespace A049778

/-- `∑[∑[a(n-2)+4]-a(n-1)]` -/
def P12920412031621099775.Spec : Prop :=
  ∀ n, P12920412031621099775.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P7597396095101062688

`a(n-1)+(n+1)*(floor(n/2)+1)` with `a(0)=1`
-/

namespace A049778.P7597396095101062688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * (⌊(n : ℚ) / 2⌋ + 1)

end

end A049778.P7597396095101062688

namespace A049778

/-- `a(n-1)+(n+1)*(floor(n/2)+1)` -/
def P7597396095101062688.Spec : Prop :=
  ∀ n, P7597396095101062688.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P6618330702049466913

`∑[A093005(n+1)]`
-/

namespace A049778.P6618330702049466913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P6618330702049466913

namespace A049778

/-- `∑[A093005(n+1)]` -/
def P6618330702049466913.Spec : Prop :=
  ∀ n, P6618330702049466913.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P8093973288398487215

`∑[∑[A123684(n+1)]]`
-/

namespace A049778.P8093973288398487215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P8093973288398487215

namespace A049778

/-- `∑[∑[A123684(n+1)]]` -/
def P8093973288398487215.Spec : Prop :=
  ∀ n, P8093973288398487215.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P1784605830919159276

`∑[(n+1)*A008619(n)]`
-/

namespace A049778.P1784605830919159276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P1784605830919159276

namespace A049778

/-- `∑[(n+1)*A008619(n)]` -/
def P1784605830919159276.Spec : Prop :=
  ∀ n, P1784605830919159276.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P17939234032986013945

`∑[(n+1)²-A093353(n)]`
-/

namespace A049778.P17939234032986013945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A093353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P17939234032986013945

namespace A049778

/-- `∑[(n+1)²-A093353(n)]` -/
def P17939234032986013945.Spec : Prop :=
  ∀ n, P17939234032986013945.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P8616369782922470318

`∑[(n+1)*A110654(n+1)]`
-/

namespace A049778.P8616369782922470318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P8616369782922470318

namespace A049778

/-- `∑[(n+1)*A110654(n+1)]` -/
def P8616369782922470318.Spec : Prop :=
  ∀ n, P8616369782922470318.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P3261105670408259057

`∑[A130656(n+1)/(n+1)]`
-/

namespace A049778.P3261105670408259057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130656 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049778.P3261105670408259057

namespace A049778

/-- `∑[A130656(n+1)/(n+1)]` -/
def P3261105670408259057.Spec : Prop :=
  ∀ n, P3261105670408259057.a n = (A049778 (n + 1) : ℚ)

end A049778

/-! ## A049778.P13671528310798137489

`∑[A026741(n+1)]+∑[∑[n]]`
-/

namespace A049778.P13671528310798137489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A049778.P13671528310798137489

namespace A049778

/-- `∑[A026741(n+1)]+∑[∑[n]]` -/
def P13671528310798137489.Spec : Prop :=
  ∀ n, P13671528310798137489.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P1403319285547396509

`A059329(n)+A001318(n)`
-/

namespace A049778.P1403319285547396509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n + A001318 n

end

end A049778.P1403319285547396509

namespace A049778

/-- `A059329(n)+A001318(n)` -/
def P1403319285547396509.Spec : Prop :=
  ∀ n, P1403319285547396509.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P10244428781351489687

`A210978(n)+A000125(n)`
-/

namespace A049778.P10244428781351489687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n + A000125 n

end

end A049778.P10244428781351489687

namespace A049778

/-- `A210978(n)+A000125(n)` -/
def P10244428781351489687.Spec : Prop :=
  ∀ n, P10244428781351489687.a n = A049778 (n + 1)

end A049778

/-! ## A049778.P17451852114813643164

`A212968(n)-A212981(n)`
-/

namespace A049778.P17451852114813643164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - A212981 n

end

end A049778.P17451852114813643164

namespace A049778

/-- `A212968(n)-A212981(n)` -/
def P17451852114813643164.Spec : Prop :=
  ∀ n, P17451852114813643164.a n = A049778 (n + 1)

end A049778

/-!
# A049779: a(n) = Sum_{k=1..floor(n/2)} T(n, 2k), array T as in A049777.

The programs for A049779, the canonical program `A049779.P5205010349373902002` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049779 has offset 2).

The definition of A049779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049779.P12794276016542579718

`ogf((2+x+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A049779.P12794276016542579718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A049779.P12794276016542579718

namespace A049779

/-- `ogf((2+x+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P12794276016542579718.Spec : Prop :=
  ∀ n, P12794276016542579718.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P5205010349373902002

`((n+2)*(n+3)*(4*(n+2)-1)+6*(-1)^(n+2)*floor((n+3)/2))/24`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049779

/-- `((n+2)*(n+3)*(4*(n+2)-1)+6*(-1)^(n+2)*floor((n+3)/2))/24` -/
def P5205010349373902002.Spec : Prop :=
  ∀ n, P5205010349373902002.a n = (A049779 (n + 2) : ℚ)

end A049779

/-! ## A049779.P4418836119627594065

`∑[∑[lcm(3, ∑[gcd(2, n)])/3]]`
-/

namespace A049779.P4418836119627594065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f3 j) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049779.P4418836119627594065

namespace A049779

/-- `∑[∑[lcm(3, ∑[gcd(2, n)])/3]]` -/
def P4418836119627594065.Spec : Prop :=
  ∀ n, P4418836119627594065.a n = (A049779 (n + 2) : ℚ)

end A049779

/-! ## A049779.P17236007723227841752

`∑[(n+2)*∑[1-a(n-1)]]` with `a(0)=1`
-/

namespace A049779.P17236007723227841752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049779.P17236007723227841752

namespace A049779

/-- `∑[(n+2)*∑[1-a(n-1)]]` -/
def P17236007723227841752.Spec : Prop :=
  ∀ n, P17236007723227841752.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P6245626203980019557

`a(n-1)+(n+2)*(floor(n/2)+1)` with `a(0)=2`
-/

namespace A049779.P6245626203980019557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 2 : ℤ) * (⌊(n : ℚ) / 2⌋ + 1)

end

end A049779.P6245626203980019557

namespace A049779

/-- `a(n-1)+(n+2)*(floor(n/2)+1)` -/
def P6245626203980019557.Spec : Prop :=
  ∀ n, P6245626203980019557.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P2201005505415843856

`∑[∑[∑[floor(3/a(n-1))]]]-a(n-1)` with `a(0)=2`
-/

namespace A049779.P2201005505415843856
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  ⌊3 / (f3 (n - 1) : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A049779.P2201005505415843856

namespace A049779

/-- `∑[∑[∑[floor(3/a(n-1))]]]-a(n-1)` -/
def P2201005505415843856.Spec : Prop :=
  ∀ n, P2201005505415843856.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P12331471414400929869

`∑[∑[A014682(n+1)]]`
-/

namespace A049779.P12331471414400929869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049779.P12331471414400929869

namespace A049779

/-- `∑[∑[A014682(n+1)]]` -/
def P12331471414400929869.Spec : Prop :=
  ∀ n, P12331471414400929869.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P14238232743666255278

`A008805(n)+∑[∑[n+1]]`
-/

namespace A049779.P14238232743666255278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049779.P14238232743666255278

namespace A049779

/-- `A008805(n)+∑[∑[n+1]]` -/
def P14238232743666255278.Spec : Prop :=
  ∀ n, P14238232743666255278.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P10576912913458371203

`A000217(comp[3*n]-n)+∑[∑[n+1]]`
-/

namespace A049779.P10576912913458371203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A049779.P10576912913458371203

namespace A049779

/-- `A000217(comp[3*n]-n)+∑[∑[n+1]]` -/
def P10576912913458371203.Spec : Prop :=
  ∀ n, P10576912913458371203.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P2013720223146619800

`A005993(n)+A002623(n)`
-/

namespace A049779.P2013720223146619800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + A002623 n

end

end A049779.P2013720223146619800

namespace A049779

/-- `A005993(n)+A002623(n)` -/
def P2013720223146619800.Spec : Prop :=
  ∀ n, P2013720223146619800.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P8406182601887144243

`A370307(n)+A109622(n)`
-/

namespace A049779.P8406182601887144243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370307 n + A109622 n

end

end A049779.P8406182601887144243

namespace A049779

/-- `A370307(n)+A109622(n)` -/
def P8406182601887144243.Spec : Prop :=
  ∀ n, P8406182601887144243.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P3291625499520403398

`A087099(n+1)+A059329(n)`
-/

namespace A049779.P3291625499520403398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (n + 1) + A059329 n

end

end A049779.P3291625499520403398

namespace A049779

/-- `A087099(n+1)+A059329(n)` -/
def P3291625499520403398.Spec : Prop :=
  ∀ n, P3291625499520403398.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P9774001121813580907

`A143785(n+1)-A002623(n)`
-/

namespace A049779.P9774001121813580907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143785 (n + 1) - A002623 n

end

end A049779.P9774001121813580907

namespace A049779

/-- `A143785(n+1)-A002623(n)` -/
def P9774001121813580907.Spec : Prop :=
  ∀ n, P9774001121813580907.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P17212290742348269790

`A000292(n+1)+∑[A027656(n)]`
-/

namespace A049779.P17212290742348269790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049779.P17212290742348269790

namespace A049779

/-- `A000292(n+1)+∑[A027656(n)]` -/
def P17212290742348269790.Spec : Prop :=
  ∀ n, P17212290742348269790.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P13453571822392043009

`A087811(n+1)+A049778(n+1)`
-/

namespace A049779.P13453571822392043009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A049778 (n + 1)

end

end A049779.P13453571822392043009

namespace A049779

/-- `A087811(n+1)+A049778(n+1)` -/
def P13453571822392043009.Spec : Prop :=
  ∀ n, P13453571822392043009.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P7517238659648359298

`A002623(n)+A168380(n+1)/2`
-/

namespace A049779.P7517238659648359298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002623 n : ℚ) + (A168380 (n + 1) : ℚ) / 2

end

end A049779.P7517238659648359298

namespace A049779

/-- `A002623(n)+A168380(n+1)/2` -/
def P7517238659648359298.Spec : Prop :=
  ∀ n, P7517238659648359298.a n = (A049779 (n + 2) : ℚ)

end A049779

/-! ## A049779.P10181706245998953966

`A000292(n+1)+A000217(A110654(n+1))`
-/

namespace A049779.P10181706245998953966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A000217 (A110654 (n + 1)).toNat

end

end A049779.P10181706245998953966

namespace A049779

/-- `A000292(n+1)+A000217(A110654(n+1))` -/
def P10181706245998953966.Spec : Prop :=
  ∀ n, P10181706245998953966.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P6880579808702850947

`A049778(n+1)+A008619(n+1)*A008619(n)`
-/

namespace A049779.P6880579808702850947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) + A008619 (n + 1) * A008619 n

end

end A049779.P6880579808702850947

namespace A049779

/-- `A049778(n+1)+A008619(n+1)*A008619(n)` -/
def P6880579808702850947.Spec : Prop :=
  ∀ n, P6880579808702850947.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P11454302018366621623

`A000292(n+1)+A023856(n+1)-A023855(n+1)`
-/

namespace A049779.P11454302018366621623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A023856 (n + 1) - A023855 (n + 1))

end

end A049779.P11454302018366621623

namespace A049779

/-- `A000292(n+1)+A023856(n+1)-A023855(n+1)` -/
def P11454302018366621623.Spec : Prop :=
  ∀ n, P11454302018366621623.a n = A049779 (n + 2)

end A049779

/-! ## A049779.P7034037710126112719

`A000292(n+1)+A023857(n+1)-A023856(n+1)`
-/

namespace A049779.P7034037710126112719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A023857 (n + 1) - A023856 (n + 1))

end

end A049779.P7034037710126112719

namespace A049779

/-- `A000292(n+1)+A023857(n+1)-A023856(n+1)` -/
def P7034037710126112719.Spec : Prop :=
  ∀ n, P7034037710126112719.a n = A049779 (n + 2)

end A049779

/-!
# A049780: Array T, read by descending antidiagonals: T(n, k) = k*(2*n + k + 1)/2 for n, k >= 0.

The programs for A049780, the canonical program `A049780.P1451714115053196753` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049780 has offset 0).

The definition of A049780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))*(2*col(n)+row(n)-col(n)+1)/2` (program `A049780.P9779287607306038592`, by `A049780.P9779287607306038592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049780.P6572951159774474429

`row(n)*(row(n)+1)/2-col(n)*(col(n)+1)/2`
-/

namespace A049780.P6572951159774474429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) : ℚ) / 2 - (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A049780.P6572951159774474429

namespace A049780

/-- `row(n)*(row(n)+1)/2-col(n)*(col(n)+1)/2` -/
def P6572951159774474429.Spec : Prop :=
  ∀ n, P6572951159774474429.a n = (A049780 n : ℚ)

theorem P6572951159774474429.correct : P6572951159774474429.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P6572951159774474429.a, A049780.P1451714115053196753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049780

/-! ## A049780.P9779287607306038592

`(row(n)-col(n))*(2*col(n)+row(n)-col(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049780.P9779287607306038592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((2 * SequenceMachineLib.triCol n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1) : ℚ) / 2

end

end A049780.P9779287607306038592

namespace A049780

/-- `(row(n)-col(n))*(2*col(n)+row(n)-col(n)+1)/2` -/
def P9779287607306038592.Spec : Prop :=
  ∀ n, P9779287607306038592.a n = (A049780 n : ℚ)

theorem P9779287607306038592.correct : P9779287607306038592.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P9779287607306038592.a, A049780.P1451714115053196753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049780

/-! ## A049780.P1451714115053196753

`C(row(n)+1, 2)-C(col(n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049780

/-- `C(row(n)+1, 2)-C(col(n)+1, 2)` -/
def P1451714115053196753.Spec : Prop :=
  ∀ n, P1451714115053196753.a n = A049780 n

theorem P1451714115053196753.correct : P1451714115053196753.Spec := by
  intro n
  simp only [A049780]

end A049780

/-! ## A049780.P7696532555922332523

`floor(A185877(n+1)/2)`
-/

namespace A049780.P7696532555922332523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185877 (n + 1) : ℚ) / 2⌋

end

end A049780.P7696532555922332523

namespace A049780

/-- `floor(A185877(n+1)/2)` -/
def P7696532555922332523.Spec : Prop :=
  ∀ n, P7696532555922332523.a n = A049780 n

end A049780

/-! ## A049780.P16074404367704671355

`A343752(n+1)%(n+1)`
-/

namespace A049780.P16074404367704671355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343752 (n + 1)) (n + 1 : ℤ)

end

end A049780.P16074404367704671355

namespace A049780

/-- `A343752(n+1)%(n+1)` -/
def P16074404367704671355.Spec : Prop :=
  ∀ n, P16074404367704671355.a n = A049780 n

end A049780

/-! ## A049780.P7907391970177104858

`1-C(A002260(n+1)+1, 2)+n`
-/

namespace A049780.P7907391970177104858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A002260 (n + 1) + 1).toNat 2 : ℤ) + (n : ℤ)

end

end A049780.P7907391970177104858

namespace A049780

/-- `1-C(A002260(n+1)+1, 2)+n` -/
def P7907391970177104858.Spec : Prop :=
  ∀ n, P7907391970177104858.a n = A049780 n

end A049780

/-! ## A049780.P10485603032597892174

`A000217(row(n)-col(n))+(row(n)-col(n))*col(n)`
-/

namespace A049780.P10485603032597892174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)

end

end A049780.P10485603032597892174

namespace A049780

/-- `A000217(row(n)-col(n))+(row(n)-col(n))*col(n)` -/
def P10485603032597892174.Spec : Prop :=
  ∀ n, P10485603032597892174.a n = A049780 n

end A049780

/-! ## A049780.P2204015133670579611

`1-C(2-C(A002024(n+1), 2)+n, 2)+n`
-/

namespace A049780.P2204015133670579611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (2 - (Nat.choose (A002024 (n + 1)).toNat 2 : ℤ) + (n : ℤ)).toNat 2 : ℤ) + (n : ℤ)

end

end A049780.P2204015133670579611

namespace A049780

/-- `1-C(2-C(A002024(n+1), 2)+n, 2)+n` -/
def P2204015133670579611.Spec : Prop :=
  ∀ n, P2204015133670579611.a n = A049780 n

end A049780

/-! ## A049780.P7313894449106874752

`n-A000096(A002262(n))`
-/

namespace A049780.P7313894449106874752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000096 (A002262 n).toNat

end

end A049780.P7313894449106874752

namespace A049780

/-- `n-A000096(A002262(n))` -/
def P7313894449106874752.Spec : Prop :=
  ∀ n, P7313894449106874752.a n = A049780 n

end A049780

/-! ## A049780.P16495614625881604745

`A057944(n)-A112367(n)`
-/

namespace A049780.P16495614625881604745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n - A112367 n

end

end A049780.P16495614625881604745

namespace A049780

/-- `A057944(n)-A112367(n)` -/
def P16495614625881604745.Spec : Prop :=
  ∀ n, P16495614625881604745.a n = A049780 n

end A049780

/-! ## A049780.P2649342132724980992

`A144330(n)-A144328(n+1)`
-/

namespace A049780.P2649342132724980992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144330 n - A144328 (n + 1)

end

end A049780.P2649342132724980992

namespace A049780

/-- `A144330(n)-A144328(n+1)` -/
def P2649342132724980992.Spec : Prop :=
  ∀ n, P2649342132724980992.a n = A049780 n

theorem P2649342132724980992.correct : P2649342132724980992.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P2649342132724980992.a, A049780.P1451714115053196753.a, A144328, A144328.P13677371458497017703.a, A144330, A144330.P3619810151422796478.a, A002260, A002260.P9170571874073898642.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049780

/-! ## A049780.P3265479745329230621

`A271668(n)-A094727(n+1)`
-/

namespace A049780.P3265479745329230621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n - A094727 (n + 1)

end

end A049780.P3265479745329230621

namespace A049780

/-- `A271668(n)-A094727(n+1)` -/
def P3265479745329230621.Spec : Prop :=
  ∀ n, P3265479745329230621.a n = A049780 n

theorem P3265479745329230621.correct : P3265479745329230621.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P3265479745329230621.a, A049780.P1451714115053196753.a, A094727, A094727.P1041695477673985807.a, A271668, A271668.P273675855261280975.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049780

/-! ## A049780.P4500943014687781963

`A094728(n+1)-A271668(n)`
-/

namespace A049780.P4500943014687781963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A271668 n

end

end A049780.P4500943014687781963

namespace A049780

/-- `A094728(n+1)-A271668(n)` -/
def P4500943014687781963.Spec : Prop :=
  ∀ n, P4500943014687781963.a n = A049780 n

theorem P4500943014687781963.correct : P4500943014687781963.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P4500943014687781963.a, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, A271668, A271668.P273675855261280975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049780

/-! ## A049780.P14021610142077179429

`A393443(n)-A162609(n+1)`
-/

namespace A049780.P14021610142077179429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393443 n - A162609 (n + 1)

end

end A049780.P14021610142077179429

namespace A049780

/-- `A393443(n)-A162609(n+1)` -/
def P14021610142077179429.Spec : Prop :=
  ∀ n, P14021610142077179429.a n = A049780 n

theorem P14021610142077179429.correct : P14021610142077179429.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P14021610142077179429.a, A049780.P1451714115053196753.a, A162609, A162609.P12740708106325830142.a, A393443, A393443.P16093483747421340757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049780

/-! ## A049780.P13141899997562095918

`(A335821(n)+A025581(n))/2`
-/

namespace A049780.P13141899997562095918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335821 n + A025581 n : ℚ) / 2

end

end A049780.P13141899997562095918

namespace A049780

/-- `(A335821(n)+A025581(n))/2` -/
def P13141899997562095918.Spec : Prop :=
  ∀ n, P13141899997562095918.a n = (A049780 n : ℚ)

theorem P13141899997562095918.correct : P13141899997562095918.Spec := by
  intro n
  simp only [A049780, Nat.add_sub_cancel, A049780.P13141899997562095918.a, A049780.P1451714115053196753.a, A025581, A025581.P16112744757063613497.a, A335821, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049780

/-! ## A049780.P7542221845949489542

`n-A000096(val(A059268(n), 2))`
-/

namespace A049780.P7542221845949489542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000096 (SequenceMachineLib.valuation (A059268 n).toNat 2)

end

end A049780.P7542221845949489542

namespace A049780

/-- `n-A000096(val(A059268(n), 2))` -/
def P7542221845949489542.Spec : Prop :=
  ∀ n, P7542221845949489542.a n = A049780 n

end A049780

/-! ## A049780.P2303691096994492135

`n-(A112367(n)+A002262(n))`
-/

namespace A049780.P2303691096994492135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A112367 n + A002262 n)

end

end A049780.P2303691096994492135

namespace A049780

/-- `n-(A112367(n)+A002262(n))` -/
def P2303691096994492135.Spec : Prop :=
  ∀ n, P2303691096994492135.a n = A049780 n

end A049780

/-! ## A049780.P13596008268985370707

`A061885(n)-(A112367(n)+n)`
-/

namespace A049780.P13596008268985370707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n - (A112367 n + (n : ℤ))

end

end A049780.P13596008268985370707

namespace A049780

/-- `A061885(n)-(A112367(n)+n)` -/
def P13596008268985370707.Spec : Prop :=
  ∀ n, P13596008268985370707.a n = A049780 n

end A049780

/-! ## A049780.P8166724469554135735

`n-A000096(n-A057944(n))`
-/

namespace A049780.P8166724469554135735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000096 ((n : ℤ) - A057944 n).toNat

end

end A049780.P8166724469554135735

namespace A049780

/-- `n-A000096(n-A057944(n))` -/
def P8166724469554135735.Spec : Prop :=
  ∀ n, P8166724469554135735.a n = A049780 n

end A049780

/-! ## A049780.P17138081443699479899

`∑[n*A010054(n)-A002262(n)]`
-/

namespace A049780.P17138081443699479899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010054 n - A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049780.P17138081443699479899

namespace A049780

/-- `∑[n*A010054(n)-A002262(n)]` -/
def P17138081443699479899.Spec : Prop :=
  ∀ n, P17138081443699479899.a n = A049780 n

end A049780

/-!
# A049781: a(n) = (b(n) + 1)/2, where b = A000959 (the lucky numbers).

The programs for A049781, there is no canonical definition to state claims against.
-/

/-! ## A049781.P5403387155940839517

`ceil(A000959(n+1)/2)`
-/

namespace A049781.P5403387155940839517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000959 (n + 1) : ℚ) / 2⌉

end

end A049781.P5403387155940839517

/-! ## A049781.P6692325186855728136

`round(A139269(n+1)/4)`
-/

namespace A049781.P6692325186855728136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 4)

end

end A049781.P6692325186855728136

/-! ## A049781.P4257546595239659670

`round(sqrt(A032598(n+1))/2)`
-/

namespace A049781.P4257546595239659670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A032598 (n + 1) : ℝ) / 2)

end

end A049781.P4257546595239659670

/-! ## A049781.P2813537366830489122

`(A000959(A000027(n+1))+1)/2`
-/

namespace A049781.P2813537366830489122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A049781.P2813537366830489122

/-! ## A049781.P16452439343487840640

`(A032600(n+1)+A000040(n+1)+1)/2`
-/

namespace A049781.P16452439343487840640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032600 (n + 1) + A000040 (n + 1) + 1 : ℚ) / 2

end

end A049781.P16452439343487840640

/-! ## A049781.P2902401750733557644

`record[(n+1)*A145649(2*n+1)]`
-/

namespace A049781.P2902401750733557644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145649 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049781.P2902401750733557644

/-! ## A049781.P14899680635918831540

`eq[1, A145649(2*n+1)]+1`
-/

namespace A049781.P14899680635918831540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049781.P14899680635918831540

/-! ## A049781.P13951045593451636648

`round(A000959(n+1)/A264940(2*(n+1)))`
-/

namespace A049781.P13951045593451636648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000959 (n + 1) : ℚ) / (A264940 (2 * (n + 1)) : ℚ))

end

end A049781.P13951045593451636648

/-! ## A049781.P3015120773308416903

`A328399(A000959(n+1)-1)`
-/

namespace A049781.P3015120773308416903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A000959 (n + 1) - 1).toNat

end

end A049781.P3015120773308416903

/-! ## A049781.P7141369569651130156

`A302032(A000959(n+1)+1)`
-/

namespace A049781.P7141369569651130156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A000959 (n + 1) + 1).toNat

end

end A049781.P7141369569651130156

/-! ## A049781.P13921189173792315957

`A028310((A000959(n+1)+1)/2)`
-/

namespace A049781.P13921189173792315957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A000959 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A049781.P13921189173792315957

/-! ## A049781.P11264289494341177492

`A278529(A000959(n+1)+1)`
-/

namespace A049781.P11264289494341177492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A000959 (n + 1) + 1).toNat

end

end A049781.P11264289494341177492

/-! ## A049781.P11635677362263220919

`A278537(A000959(n+1)+1)`
-/

namespace A049781.P11635677362263220919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A000959 (n + 1) + 1).toNat

end

end A049781.P11635677362263220919

/-! ## A049781.P10405138298233244387

`A260739(A000959(n+1)+1)`
-/

namespace A049781.P10405138298233244387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A000959 (n + 1) + 1).toNat

end

end A049781.P10405138298233244387

/-! ## A049781.P13449532924150178441

`A260435(A000959(n+1)+1)/2`
-/

namespace A049781.P13449532924150178441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260435 (A000959 (n + 1) + 1).toNat : ℚ) / 2

end

end A049781.P13449532924150178441

/-! ## A049781.P10146654064443106938

`eq[1, A260429(2*n+1)]+1`
-/

namespace A049781.P10146654064443106938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049781.P10146654064443106938

/-! ## A049781.P16982665843625984395

`lt[A260437(2*n+1), 1]+1`
-/

namespace A049781.P16982665843625984395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049781.P16982665843625984395

/-! ## A049781.P9039160470193010596

`ceil(record[(n+1)/A260429(n+1)]/2)`
-/

namespace A049781.P9039160470193010596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2⌉

end

end A049781.P9039160470193010596

/-! ## A049781.P2513231488820269372

`A260439(eq[1, A260439(n+1)])+1`
-/

namespace A049781.P2513231488820269372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A049781.P2513231488820269372

/-! ## A049781.P12733151917729996752

`record[ratio[A260439(n+2)]]`
-/

namespace A049781.P12733151917729996752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049781.P12733151917729996752

/-!
# A049782: a(n) = (0! + 1! + ... + (n-1)!) mod n.

The programs for A049782, the canonical program `A049782.P12248443618628013241` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049782 has offset 1).

The definition of A049782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049782.P12248443618628013241

`A003422(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049782

/-- `A003422(n+1)%(n+1)` -/
def P12248443618628013241.Spec : Prop :=
  ∀ n, P12248443618628013241.a n = A049782 (n + 1)

theorem P12248443618628013241.correct : P12248443618628013241.Spec := by
  intro n
  simp only [A049782, Nat.add_sub_cancel]

end A049782

/-! ## A049782.P17681887625596814648

`(A067462(n+1)+1)%(n+1)`
-/

namespace A049782.P17681887625596814648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067462 (n + 1) + 1) (n + 1 : ℤ)

end

end A049782.P17681887625596814648

namespace A049782

/-- `(A067462(n+1)+1)%(n+1)` -/
def P17681887625596814648.Spec : Prop :=
  ∀ n, P17681887625596814648.a n = A049782 (n + 1)

end A049782

/-! ## A049782.P2816541258378844565

`(A226570(n+1)+2)%(n+1)`
-/

namespace A049782.P2816541258378844565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226570 (n + 1) + 2) (n + 1 : ℤ)

end

end A049782.P2816541258378844565

namespace A049782

/-- `(A226570(n+1)+2)%(n+1)` -/
def P2816541258378844565.Spec : Prop :=
  ∀ n, P2816541258378844565.a n = A049782 (n + 1)

end A049782

/-! ## A049782.P18360842333331689517

`A067462(n+1)-A134824(n)`
-/

namespace A049782.P18360842333331689517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067462 (n + 1) - A134824 n

end

end A049782.P18360842333331689517

namespace A049782

/-- `A067462(n+1)-A134824(n)` -/
def P18360842333331689517.Spec : Prop :=
  ∀ n, P18360842333331689517.a n = A049782 (n + 1)

end A049782

/-! ## A049782.P8028257331471787908

`(n*A216369(2*(n+1)))%(n+1)`
-/

namespace A049782.P8028257331471787908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A216369 (2 * (n + 1))) (n + 1 : ℤ)

end

end A049782.P8028257331471787908

namespace A049782

/-- `(n*A216369(2*(n+1)))%(n+1)` -/
def P8028257331471787908.Spec : Prop :=
  ∀ n, P8028257331471787908.a n = A049782 (n + 1)

end A049782

/-! ## A049782.P18439024581189842815

`A002262(A067462(n+1)+A000124(n))`
-/

namespace A049782.P18439024581189842815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A067462 (n + 1) + A000124 n).toNat

end

end A049782.P18439024581189842815

namespace A049782

/-- `A002262(A067462(n+1)+A000124(n))` -/
def P18439024581189842815.Spec : Prop :=
  ∀ n, P18439024581189842815.a n = A049782 (n + 1)

end A049782

/-! ## A049782.P2987016832134043838

`A002262(A226570(n+1)+A133263(n))`
-/

namespace A049782.P2987016832134043838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A226570 (n + 1) + A133263 n).toNat

end

end A049782.P2987016832134043838

namespace A049782

/-- `A002262(A226570(n+1)+A133263(n))` -/
def P2987016832134043838.Spec : Prop :=
  ∀ n, P2987016832134043838.a n = A049782 (n + 1)

end A049782

/-! ## A049782.P4832085781992831067

`∑[n!]%(n+1)`
-/

namespace A049782.P4832085781992831067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049782.P4832085781992831067

namespace A049782

/-- `∑[n!]%(n+1)` -/
def P4832085781992831067.Spec : Prop :=
  ∀ n, (P4832085781992831067.a n : ℤ) = A049782 (n + 1)

end A049782

/-! ## A049782.P9011833322609513093

`∑[n*a(n-1)]%(n+1)` with `a(0)=1`
-/

namespace A049782.P9011833322609513093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049782.P9011833322609513093

namespace A049782

/-- `∑[n*a(n-1)]%(n+1)` -/
def P9011833322609513093.Spec : Prop :=
  ∀ n, (P9011833322609513093.a n : ℤ) = A049782 (n + 1)

end A049782

/-! ## A049782.P266726975230183176

`A014145(n+1)%(n+1)`
-/

namespace A049782.P266726975230183176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014145 (n + 1)) (n + 1 : ℤ)

end

end A049782.P266726975230183176

namespace A049782

/-- `A014145(n+1)%(n+1)` -/
def P266726975230183176.Spec : Prop :=
  ∀ n, P266726975230183176.a n = A049782 (n + 1)

end A049782

/-!
# A049783: Triangular array T read by rows: T(n,k) = Sum_{j=1..k} (n mod floor(k/j)) for n, k >= 1.

The programs for A049783, there is no canonical definition to state claims against.
-/

/-! ## A049783.P5206878499578084310

`A347579(A119265(n+1))+A048158(n+1)`
-/

namespace A049783.P5206878499578084310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347579 (A119265 (n + 1)).toNat + A048158 (n + 1)

end

end A049783.P5206878499578084310

/-! ## A049783.P10606755365579286546

`A048158(n+1)+A025466(A342373(n+3))`
-/

namespace A049783.P10606755365579286546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A025466 (A342373 (n + 3)).toNat

end

end A049783.P10606755365579286546

/-! ## A049783.P15623666130965767506

`A024361(gcd(A101692(n), A127093(n+1)))`
-/

namespace A049783.P15623666130965767506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (Int.gcd (A101692 n) (A127093 (n + 1)))

end

end A049783.P15623666130965767506

/-! ## A049783.P13901952417372253580

`and(A224782(A224787(n+1)), A331570(n))`
-/

namespace A049783.P13901952417372253580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A224782 (A224787 (n + 1)).toNat) (A331570 n)

end

end A049783.P13901952417372253580

/-! ## A049783.P12693393421554534511

`A048158(n+1)+A048158(A000005(A299335(n)))`
-/

namespace A049783.P12693393421554534511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A048158 (A000005 (A299335 n).toNat).toNat

end

end A049783.P12693393421554534511

/-!
# A049785: a(n) = Sum_{k=1..n} (n mod floor(n/k)) = T(n,n), array T as in A049783.

The programs for A049785, there is no canonical definition to state claims against.
-/

/-! ## A049785.P522034255852170196

`A049783(∑[n+1])`
-/

namespace A049785.P522034255852170196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049785.P522034255852170196

/-! ## A049785.P2647513577535827137

`or(char[4], A049783(A000217(n+1)))`
-/

namespace A049785.P2647513577535827137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049783 (A000217 (n + 1)).toNat)

end

end A049785.P2647513577535827137

/-! ## A049785.P14318232815555618169

`or(char[4], A049783(A161680(n+2)))`
-/

namespace A049785.P14318232815555618169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A049783 (A161680 (n + 2)).toNat)

end

end A049785.P14318232815555618169

/-! ## A049785.P14704256644137377121

`A049783(A000217(n+1))%A000009(n)`
-/

namespace A049785.P14704256644137377121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049783 (A000217 (n + 1)).toNat) (A000009 n)

end

end A049785.P14704256644137377121

/-! ## A049785.P11489615984439323562

`A049783(A161680(n+2))%A000041(n)`
-/

namespace A049785.P11489615984439323562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049783 (A161680 (n + 2)).toNat) (A000041 n)

end

end A049785.P11489615984439323562

/-! ## A049785.P2764379892350615138

`lcm(A014963(2*(n+1)), A049783(A000217(n+1)))`
-/

namespace A049785.P2764379892350615138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (2 * (n + 1))) (A049783 (A000217 (n + 1)).toNat)

end

end A049785.P2764379892350615138

/-! ## A049785.P6530251548196144301

`(A000027(n+1)-n)*A049783(A161680(n+2))`
-/

namespace A049785.P6530251548196144301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A049783 (A161680 (n + 2)).toNat

end

end A049785.P6530251548196144301

/-! ## A049785.P13290322307765067053

`A007318(A161680(n))*A049783(A161680(n+2))`
-/

namespace A049785.P13290322307765067053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161680 n).toNat * A049783 (A161680 (n + 2)).toNat

end

end A049785.P13290322307765067053

/-! ## A049785.P8568591798732635293

`A049783(A000217(n+1))+A025437(A000005(n+1))`
-/

namespace A049785.P8568591798732635293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (A000217 (n + 1)).toNat + A025437 (A000005 (n + 1)).toNat

end

end A049785.P8568591798732635293

/-! ## A049785.P844393940701906697

`A049783(A161680(n+1)+n+1)/A007318(A161680(n))`
-/

namespace A049785.P844393940701906697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049783 (A161680 (n + 1) + (n + 1 : ℤ)).toNat : ℚ) / (A007318 (A161680 n).toNat : ℚ)

end

end A049785.P844393940701906697

/-!
# A049786: a(n) = T(n,n-1), array T as in A049783.

The programs for A049786, there is no canonical definition to state claims against.
-/

/-! ## A049786.P2318032961412691950

`A049783(∑[1-char[1]+n])`
-/

namespace A049786.P2318032961412691950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049786.P2318032961412691950

/-!
# A049787: a(n) = T(n,n-2), array T as in A049783.

The programs for A049787, there is no canonical definition to state claims against.
-/

/-! ## A049787.P13409095282473907196

`A049783(abs(2-∑[n+1]))`
-/

namespace A049787.P13409095282473907196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A049787.P13409095282473907196

/-!
# A049788: a(n) = T(n,n-3), array T as in A049783.

The programs for A049788, there is no canonical definition to state claims against.
-/

/-! ## A049788.P11890563698754896262

`A049783(abs(2-∑[n])+n)`
-/

namespace A049788.P11890563698754896262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (|2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + (n : ℤ)).toNat

end

end A049788.P11890563698754896262

/-!
# A049789: a(n) = T(n,n-4), array T as in A049783.

The programs for A049789, there is no canonical definition to state claims against.
-/

/-! ## A049789.P12301064948013981929

`A049783(abs(4-∑[n+1]))`
-/

namespace A049789.P12301064948013981929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 |4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A049789.P12301064948013981929

/-!
# A049790: Triangular array T read by rows: T(n,k) = Sum_{j=1..k} floor(n/floor(k/j)).

The programs for A049790, there is no canonical definition to state claims against.
-/

/-! ## A049790.P9809645186886314888

`A333295(A044915(n+1))-A219463(n)`
-/

namespace A049790.P9809645186886314888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333295 (A044915 (n + 1)).toNat - A219463 n

end

end A049790.P9809645186886314888

/-!
# A049791: a(n) = Sum_{k=1..n} T(n,k), array T as in A049790.

The programs for A049791, there is no canonical definition to state claims against.
-/

/-! ## A049791.P710170338441425011

`A062367(A000244(n))-A302698(n+1)`
-/

namespace A049791.P710170338441425011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062367 (A000244 n).toNat - A302698 (n + 1)

end

end A049791.P710170338441425011

/-! ## A049791.P3726825188149821165

`∑[∑[A067513(A226259(n))]]`
-/

namespace A049791.P3726825188149821165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A226259 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049791.P3726825188149821165

/-! ## A049791.P15804261865568945221

`∑[∑[A159918(A002379(3*n+2))]]`
-/

namespace A049791.P15804261865568945221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A002379 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049791.P15804261865568945221

/-!
# A049792: a(n) = Sum_{k=1..n} floor(n/floor(n/k)).

The programs for A049792, the canonical program `A049792.P48132103565309296` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049792 has offset 1).

The definition of A049792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/floor((n+1)/(#+1)))]` (program `A049792.P48132103565309296`, by `A049792.P48132103565309296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049792.P48132103565309296

`∑{#}[n, floor((n+1)/floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049792

/-- `∑{#}[n, floor((n+1)/floor((n+1)/(#+1)))]` -/
def P48132103565309296.Spec : Prop :=
  ∀ n, P48132103565309296.a n = A049792 (n + 1)

theorem P48132103565309296.correct : P48132103565309296.Spec := by
  intro n
  simp only [A049792, Nat.add_sub_cancel]

end A049792

/-! ## A049792.P10254051839203427680

`A049790(∑[n+1])`
-/

namespace A049792.P10254051839203427680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049792.P10254051839203427680

namespace A049792

/-- `A049790(∑[n+1])` -/
def P10254051839203427680.Spec : Prop :=
  ∀ n, P10254051839203427680.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P10287991269625591201

`record[A049790(A260220(n))]`
-/

namespace A049792.P10287991269625591201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A260220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P10287991269625591201

namespace A049792

/-- `record[A049790(A260220(n))]` -/
def P10287991269625591201.Spec : Prop :=
  ∀ n, P10287991269625591201.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P5835709021537972964

`record[A049790(A049777(n+1))]`
-/

namespace A049792.P5835709021537972964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P5835709021537972964

namespace A049792

/-- `record[A049790(A049777(n+1))]` -/
def P5835709021537972964.Spec : Prop :=
  ∀ n, P5835709021537972964.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P5548359220970791391

`record[A049790(record[A167374(n)+n])]`
-/

namespace A049792.P5548359220970791391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P5548359220970791391

namespace A049792

/-- `record[A049790(record[A167374(n)+n])]` -/
def P5548359220970791391.Spec : Prop :=
  ∀ n, P5548359220970791391.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P2888886059967081106

`record[A049790(n+1)-A049780(n)]`
-/

namespace A049792.P2888886059967081106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (n + 1) - A049780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P2888886059967081106

namespace A049792

/-- `record[A049790(n+1)-A049780(n)]` -/
def P2888886059967081106.Spec : Prop :=
  ∀ n, P2888886059967081106.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P11528243316556668085

`record[A049790(A008805(n))-and(1, n)]`
-/

namespace A049792.P11528243316556668085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A008805 n).toNat - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P11528243316556668085

namespace A049792

/-- `record[A049790(A008805(n))-and(1, n)]` -/
def P11528243316556668085.Spec : Prop :=
  ∀ n, P11528243316556668085.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P13409413141844159338

`record[A049790(n+1)-A049765(n+1)]`
-/

namespace A049792.P13409413141844159338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (n + 1) - A049765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P13409413141844159338

namespace A049792

/-- `record[A049790(n+1)-A049765(n+1)]` -/
def P13409413141844159338.Spec : Prop :=
  ∀ n, P13409413141844159338.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P11065338670549041267

`record[A049790(n+1)-A049769(n+1)]`
-/

namespace A049792.P11065338670549041267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (n + 1) - A049769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P11065338670549041267

namespace A049792

/-- `record[A049790(n+1)-A049769(n+1)]` -/
def P11065338670549041267.Spec : Prop :=
  ∀ n, P11065338670549041267.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P12398786853605117921

`record[(1-A049767(n+1))*A049790(n+1)]`
-/

namespace A049792.P12398786853605117921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049767 (n + 1)) * A049790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P12398786853605117921

namespace A049792

/-- `record[(1-A049767(n+1))*A049790(n+1)]` -/
def P12398786853605117921.Spec : Prop :=
  ∀ n, P12398786853605117921.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P4313881050808772736

`record[A049790(A008805(A022290(n)))]`
-/

namespace A049792.P4313881050808772736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A008805 (A022290 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P4313881050808772736

namespace A049792

/-- `record[A049790(A008805(A022290(n)))]` -/
def P4313881050808772736.Spec : Prop :=
  ∀ n, P4313881050808772736.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P3004935633607242774

`record[A049790(A008805(A026741(n)))]`
-/

namespace A049792.P3004935633607242774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A008805 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P3004935633607242774

namespace A049792

/-- `record[A049790(A008805(A026741(n)))]` -/
def P3004935633607242774.Spec : Prop :=
  ∀ n, P3004935633607242774.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P18270833130279313979

`record[A049790(A008805(A213714(n)))]`
-/

namespace A049792.P18270833130279313979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A008805 (A213714 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P18270833130279313979

namespace A049792

/-- `record[A049790(A008805(A213714(n)))]` -/
def P18270833130279313979.Spec : Prop :=
  ∀ n, P18270833130279313979.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P11693719158332507585

`record[A049790(A000217(A130747(n+1)))]`
-/

namespace A049792.P11693719158332507585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A000217 (A130747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P11693719158332507585

namespace A049792

/-- `record[A049790(A000217(A130747(n+1)))]` -/
def P11693719158332507585.Spec : Prop :=
  ∀ n, P11693719158332507585.a n = A049792 (n + 1)

end A049792

/-! ## A049792.P12241673169215277100

`record[A049790(A008805(n))-A000035(n)]`
-/

namespace A049792.P12241673169215277100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A008805 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049792.P12241673169215277100

namespace A049792

/-- `record[A049790(A008805(n))-A000035(n)]` -/
def P12241673169215277100.Spec : Prop :=
  ∀ n, P12241673169215277100.a n = A049792 (n + 1)

end A049792

/-!
# A049793: a(n) = T(n,n-1), array T as in A049790.

The programs for A049793, there is no canonical definition to state claims against.
-/

/-! ## A049793.P7539035715843397878

`A049790(∑[1-char[1]+n])`
-/

namespace A049793.P7539035715843397878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049793.P7539035715843397878

/-! ## A049793.P7663109290979853815

`record[and(A049790(n+1), A167374(n))]`
-/

namespace A049793.P7663109290979853815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049790 (n + 1)) (A167374 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049793.P7663109290979853815

/-! ## A049793.P4186704019954442230

`record[A049790(n+1)/A115991(n+1)]`
-/

namespace A049793.P4186704019954442230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049790 (n + 1) : ℚ) / (A115991 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049793.P4186704019954442230

/-! ## A049793.P1973298378633670722

`record[A049790(A038722(n+1)-A049767(n+1))]`
-/

namespace A049793.P1973298378633670722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A038722 (n + 1) - A049767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049793.P1973298378633670722

/-! ## A049793.P6178265745818646689

`record[A049790(A049777(n+1)-A049767(n+1))]`
-/

namespace A049793.P6178265745818646689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A049777 (n + 1) - A049767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049793.P6178265745818646689

/-! ## A049793.P18359870673073164662

`record[gcd(A008290(n), A049790(n+1))]`
-/

namespace A049793.P18359870673073164662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A049790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049793.P18359870673073164662

/-!
# A049794: a(n) = T(n,n-2), array T as in A049790.

The programs for A049794, there is no canonical definition to state claims against.
-/

/-! ## A049794.P18309333633519419317

`A049790(A186752(n+2))`
-/

namespace A049794.P18309333633519419317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A186752 (n + 2)).toNat

end

end A049794.P18309333633519419317

/-! ## A049794.P43250361959298429

`A049790(A289207(n)+∑[n]+1)`
-/

namespace A049794.P43250361959298429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A289207 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A049794.P43250361959298429

/-! ## A049794.P30884542615313431

`A049790(A161680(n)+record[A029579(n)])`
-/

namespace A049794.P30884542615313431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A161680 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049794.P30884542615313431

/-! ## A049794.P13237034118311338220

`A049790(A161680(n)+A004280(n+1))`
-/

namespace A049794.P13237034118311338220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A161680 n + A004280 (n + 1)).toNat

end

end A049794.P13237034118311338220

/-! ## A049794.P9113449533213159674

`A049790(∑[A055495(n+1)]-A016789(n))`
-/

namespace A049794.P9113449533213159674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (∑ j ∈ Finset.range (n + 1), f1 j - A016789 n).toNat

end

end A049794.P9113449533213159674

/-! ## A049794.P8536427253192887715

`A049790(A000217(n)+record[A029579(n)]-n)`
-/

namespace A049794.P8536427253192887715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A000217 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))).toNat

end

end A049794.P8536427253192887715

/-! ## A049794.P2608263319931918370

`A049790(eq[A049790(n+3), A208341(n+3)])`
-/

namespace A049794.P2608263319931918370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049794.P2608263319931918370

/-!
# A049795: a(n) = T(n,n-3), array T as in A049790.

The programs for A049795, there is no canonical definition to state claims against.
-/

/-! ## A049795.P15797291498918600790

`A049790(∑[A171526(n+1)])`
-/

namespace A049795.P15797291498918600790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049795.P15797291498918600790

/-! ## A049795.P13753807681818628480

`A049790(eq[A061579(n), A106513(n)])`
-/

namespace A049795.P13753807681818628480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049795.P13753807681818628480

/-! ## A049795.P17396173528607424239

`A049790(A004273(n)+abs(A080956(n)))`
-/

namespace A049795.P17396173528607424239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049790 (A004273 n + |A080956 n|).toNat

end

end A049795.P17396173528607424239

/-! ## A049795.P11019282792405449431

`A154290(n+1)+record[A099884(A326625(n))]`
-/

namespace A049795.P11019282792405449431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 (A326625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154290 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049795.P11019282792405449431

/-! ## A049795.P1226340243558241393

`A125990(A029744(n+1))-A029744(n+1)`
-/

namespace A049795.P1226340243558241393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125990 (A029744 (n + 1)).toNat - A029744 (n + 1)

end

end A049795.P1226340243558241393

/-!
# A049796: a(n) = T(n,n-4), array T as in A049790.

The programs for A049796, there is no canonical definition to state claims against.
-/

/-! ## A049796.P9267724767673676866

`record[A101204(n)%A129767(n+1)]`
-/

namespace A049796.P9267724767673676866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101204 n) (A129767 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049796.P9267724767673676866

/-! ## A049796.P712250501283000913

`record[record[A101204(n)]%A167614(n+1)]`
-/

namespace A049796.P712250501283000913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A167614 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049796.P712250501283000913

/-! ## A049796.P16305002803940681240

`∑[A173715(n+1)%A257457(n+1)]`
-/

namespace A049796.P16305002803940681240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173715 (n + 1)) (A257457 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049796.P16305002803940681240

/-! ## A049796.P4573852761913461549

`lt[A217873(A242248(2*(n+2))), A004488(3*n+1)]`
-/

namespace A049796.P4573852761913461549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 (A242248 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049796.P4573852761913461549

/-! ## A049796.P3197800711510436244

`record[A284249(A250072(3*n+1))]`
-/

namespace A049796.P3197800711510436244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A250072 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049796.P3197800711510436244

/-!
# A049797: a(n) = Sum_{k = 2..n} T(n,k), array T as in A049800.

The programs for A049797, the canonical program `A049797.P8834432724964485178` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049797 has offset 1).

The definition of A049797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049797.P15435588266944003545

`2*A049798(n+1)`
-/

namespace A049797.P15435588266944003545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049798 (n + 1)

end

end A049797.P15435588266944003545

namespace A049797

/-- `2*A049798(n+1)` -/
def P15435588266944003545.Spec : Prop :=
  ∀ n, P15435588266944003545.a n = A049797 (n + 1)

end A049797

/-! ## A049797.P8834432724964485178

`∑[lcm(2, n+1)-A091818(n+2)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049797

/-- `∑[lcm(2, n+1)-A091818(n+2)]` -/
def P8834432724964485178.Spec : Prop :=
  ∀ n, P8834432724964485178.a n = A049797 (n + 1)

theorem P8834432724964485178.correct : P8834432724964485178.Spec := by
  intro n
  simp only [A049797, Nat.add_sub_cancel]

end A049797

/-! ## A049797.P14547950256439434155

`A049798(A000027(n+1))+A049798(n+1)`
-/

namespace A049797.P14547950256439434155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049798 (A000027 (n + 1)).toNat + A049798 (n + 1)

end

end A049797.P14547950256439434155

namespace A049797

/-- `A049798(A000027(n+1))+A049798(n+1)` -/
def P14547950256439434155.Spec : Prop :=
  ∀ n, P14547950256439434155.a n = A049797 (n + 1)

end A049797

/-! ## A049797.P7341379258320958812

`A049798(n+1)+A049798(n+1)%A033581(n+1)`
-/

namespace A049797.P7341379258320958812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049798 (n + 1) + Int.tmod (A049798 (n + 1)) (A033581 (n + 1))

end

end A049797.P7341379258320958812

namespace A049797

/-- `A049798(n+1)+A049798(n+1)%A033581(n+1)` -/
def P7341379258320958812.Spec : Prop :=
  ∀ n, P7341379258320958812.a n = A049797 (n + 1)

end A049797

/-! ## A049797.P13893036663780905731

`A049798(n+1)+A049798(A008619(n+n))`
-/

namespace A049797.P13893036663780905731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049798 (n + 1) + A049798 (A008619 (n + n)).toNat

end

end A049797.P13893036663780905731

namespace A049797

/-- `A049798(n+1)+A049798(A008619(n+n))` -/
def P13893036663780905731.Spec : Prop :=
  ∀ n, P13893036663780905731.a n = A049797 (n + 1)

end A049797

/-! ## A049797.P1691153986582362089

`A049798(A233583(n+1)+1)+A049798(n+1)`
-/

namespace A049797.P1691153986582362089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049798 (A233583 (n + 1) + 1).toNat + A049798 (n + 1)

end

end A049797.P1691153986582362089

namespace A049797

/-- `A049798(A233583(n+1)+1)+A049798(n+1)` -/
def P1691153986582362089.Spec : Prop :=
  ∀ n, P1691153986582362089.a n = A049797 (n + 1)

end A049797

/-! ## A049797.P2338328202729972921

`A005843(A049798(n+1))`
-/

namespace A049797.P2338328202729972921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A049798 (n + 1)).toNat

end

end A049797.P2338328202729972921

namespace A049797

/-- `A005843(A049798(n+1))` -/
def P2338328202729972921.Spec : Prop :=
  ∀ n, P2338328202729972921.a n = A049797 (n + 1)

end A049797

/-!
# A049798: a(n) = (1/2)*Sum_{k = 1..n} T(n,k), array T as in A049800.

The programs for A049798, the canonical program `A049798.P6422793039726687053` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049798 has offset 1).

The definition of A049798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049798.P6422793039726687053

`∑{#}[floor((n+2)/2)-2, (n+2)%(#+2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049798

/-- `∑{#}[floor((n+2)/2)-2, (n+2)%(#+2)]` -/
def P6422793039726687053.Spec : Prop :=
  ∀ n, (P6422793039726687053.a n : ℤ) = A049798 (n + 1)

theorem P6422793039726687053.correct : P6422793039726687053.Spec := by
  intro n
  simp only [A049798, Nat.add_sub_cancel]

end A049798

/-! ## A049798.P9800128026807984643

`A049797(n+1)/2`
-/

namespace A049798.P9800128026807984643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049797 (n + 1) : ℚ) / 2

end

end A049798.P9800128026807984643

namespace A049798

/-- `A049797(n+1)/2` -/
def P9800128026807984643.Spec : Prop :=
  ∀ n, P9800128026807984643.a n = (A049798 (n + 1) : ℚ)

end A049798

/-! ## A049798.P9252601489208202656

`∑[round(n/2)-A296955(n+2)]`
-/

namespace A049798.P9252601489208202656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) - A296955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049798.P9252601489208202656

namespace A049798

/-- `∑[round(n/2)-A296955(n+2)]` -/
def P9252601489208202656.Spec : Prop :=
  ∀ n, P9252601489208202656.a n = A049798 (n + 1)

end A049798

/-! ## A049798.P8875461247913792285

`∑[gcd(n+1, ∑[n])-A001065(n+2)]`
-/

namespace A049798.P8875461247913792285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - A001065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049798.P8875461247913792285

namespace A049798

/-- `∑[gcd(n+1, ∑[n])-A001065(n+2)]` -/
def P8875461247913792285.Spec : Prop :=
  ∀ n, P8875461247913792285.a n = A049798 (n + 1)

end A049798

/-! ## A049798.P10324550016318379936

`A004125(n+2)-A000217(A004526(n+1))`
-/

namespace A049798.P10324550016318379936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 2) - A000217 (A004526 (n + 1)).toNat

end

end A049798.P10324550016318379936

namespace A049798

/-- `A004125(n+2)-A000217(A004526(n+1))` -/
def P10324550016318379936.Spec : Prop :=
  ∀ n, P10324550016318379936.a n = A049798 (n + 1)

end A049798

/-! ## A049798.P17787049159960739203

`A008619(n+1)+A004125(n+2)-A008805(n+1)`
-/

namespace A049798.P17787049159960739203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + (A004125 (n + 2) - A008805 (n + 1))

end

end A049798.P17787049159960739203

namespace A049798

/-- `A008619(n+1)+A004125(n+2)-A008805(n+1)` -/
def P17787049159960739203.Spec : Prop :=
  ∀ n, P17787049159960739203.a n = A049798 (n + 1)

end A049798

/-! ## A049798.P5015106685336093467

`A093005(n+1)+A004125(n+2)-A210977(n+1)`
-/

namespace A049798.P5015106685336093467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) + (A004125 (n + 2) - A210977 (n + 1))

end

end A049798.P5015106685336093467

namespace A049798

/-- `A093005(n+1)+A004125(n+2)-A210977(n+1)` -/
def P5015106685336093467.Spec : Prop :=
  ∀ n, P5015106685336093467.a n = A049798 (n + 1)

end A049798

/-! ## A049798.P16257677033680690388

`A001281(A049797(n+1))`
-/

namespace A049798.P16257677033680690388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049797 (n + 1)).toNat

end

end A049798.P16257677033680690388

namespace A049798

/-- `A001281(A049797(n+1))` -/
def P16257677033680690388.Spec : Prop :=
  ∀ n, P16257677033680690388.a n = A049798 (n + 1)

end A049798

