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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import SequenceMachineLib.Triangle

/-!
# A107101: Denominators of coefficients in g.f. that satisfies: [x^n] A(x)^(1/n) = 0 for all n>1, with a(0)=a(1)=1.

The programs for A107101, there is no canonical definition to state claims against.
-/

/-! ## A107101.P17438202434069280387

`A002109(n)/A068108(n^n)`
-/

namespace A107101.P17438202434069280387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002109 n : ℚ) / (A068108 (n ^ n) : ℚ)

end

end A107101.P17438202434069280387

/-! ## A107101.P12676250582532346184

`A010552(∑[n])/A068108(n^n)`
-/

namespace A107101.P12676250582532346184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010552 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A068108 (n ^ n) : ℚ)

end

end A107101.P12676250582532346184

/-!
# A107102: Matrix inverse of A100862.

The programs for A107102, there is no canonical definition to state claims against.
-/

/-! ## A107102.P13309004580458214555

`A121434(A043320(n+1)+∑[A010054(n)])`
-/

namespace A107102.P13309004580458214555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121434 (A043320 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107102.P13309004580458214555

/-! ## A107102.P140301950189858390

`A121434(A043320(n+1)+A002024(n+1))`
-/

namespace A107102.P140301950189858390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121434 (A043320 (n + 1) + A002024 (n + 1)).toNat

end

end A107102.P140301950189858390

/-! ## A107102.P14093136883066418012

`A121434(A187829(n+1)+A002024(n+1))`
-/

namespace A107102.P14093136883066418012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121434 (A187829 (n + 1) + A002024 (n + 1)).toNat

end

end A107102.P14093136883066418012

/-! ## A107102.P6778328659361010963

`A121434(A014132(n+1))^A019431(2^n)`
-/

namespace A107102.P6778328659361010963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121434 (A014132 (n + 1)).toNat : ℚ) ^ (A019431 (2 ^ n) : ℤ)

end

end A107102.P6778328659361010963

/-! ## A107102.P3893165597583376266

`A103364(n+1)-A326637(A029967(n+1))`
-/

namespace A107102.P3893165597583376266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103364 (n + 1) - A326637 (A029967 (n + 1)).toNat

end

end A107102.P3893165597583376266

/-!
# A107103: Column 1 of triangle A107102, which is the matrix inverse of A100862.

The programs for A107103, there is no canonical definition to state claims against.
-/

/-! ## A107103.P12691057194436099167

`A107102(∑[n+1]+1)`
-/

namespace A107103.P12691057194436099167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107102 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107103.P12691057194436099167

/-! ## A107103.P8795756397383395587

`A126120(2*n+1)+A107102(A000124(n+1))`
-/

namespace A107103.P8795756397383395587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n + 1) + A107102 (A000124 (n + 1)).toNat

end

end A107103.P8795756397383395587

/-! ## A107103.P15599897705776998777

`A107102(A134519(2*(n+1)))*A355382(n+1)`
-/

namespace A107103.P15599897705776998777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107102 (A134519 (2 * (n + 1))).toNat * A355382 (n + 1)

end

end A107103.P15599897705776998777

/-!
# A107104: Absolute row sums of triangle A107102, which is the matrix inverse of A100862.

The programs for A107104, there is no canonical definition to state claims against.
-/

/-! ## A107104.P1805482246561080632

`A369723(n)/A000079(n)`
-/

namespace A107104.P1805482246561080632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369723 n : ℚ) / (A000079 n : ℚ)

end

end A107104.P1805482246561080632

/-! ## A107104.P7269951478364910445

`A369723(n)/record[A072345(n)]`
-/

namespace A107104.P7269951478364910445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369723 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A107104.P7269951478364910445

/-! ## A107104.P7925446097070218599

`A369723(n)/A131577(n+1)`
-/

namespace A107104.P7925446097070218599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369723 n : ℚ) / (A131577 (n + 1) : ℚ)

end

end A107104.P7925446097070218599

/-! ## A107104.P15660249169038410444

`A369723(n)/A131575(A000265(2*n+1))`
-/

namespace A107104.P15660249169038410444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369723 n : ℚ) / (A131575 (A000265 (2 * n + 1)).toNat : ℚ)

end

end A107104.P15660249169038410444

/-! ## A107104.P18227621233222862305

`A369723(n)/record[A329900(n+1)]`
-/

namespace A107104.P18227621233222862305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369723 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A107104.P18227621233222862305

/-!
# A107105: Triangle, read by rows, where T(n,k) = C(n,k)*(C(n,k) + 1)/2, n>=k>=0.

The programs for A107105, the canonical program `A107105.P14462965736479600750` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107105 has offset 0).

The definition of A107105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107105.P14462965736479600750

`C(row(n), col(n))*(C(row(n), col(n))+1)/2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107105

/-- `C(row(n), col(n))*(C(row(n), col(n))+1)/2` -/
def P14462965736479600750.Spec : Prop :=
  ∀ n, P14462965736479600750.a n = (A107105 n : ℚ)

end A107105

/-! ## A107105.P8117755028337733551

`C(C(row(n), col(n))+1, 2)`
-/

namespace A107105.P8117755028337733551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) + 1) 2

end

end A107105.P8117755028337733551

namespace A107105

/-- `C(C(row(n), col(n))+1, 2)` -/
def P8117755028337733551.Spec : Prop :=
  ∀ n, (P8117755028337733551.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P7207134297343697420

`C(A007318(n)+1, 2)`
-/

namespace A107105.P7207134297343697420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n + 1).toNat 2

end

end A107105.P7207134297343697420

namespace A107105

/-- `C(A007318(n)+1, 2)` -/
def P7207134297343697420.Spec : Prop :=
  ∀ n, (P7207134297343697420.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P9927574043767857736

`C(A014473(n)+2, 2)`
-/

namespace A107105.P9927574043767857736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014473 n + 2).toNat 2

end

end A107105.P9927574043767857736

namespace A107105

/-- `C(A014473(n)+2, 2)` -/
def P9927574043767857736.Spec : Prop :=
  ∀ n, (P9927574043767857736.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P15906134360031878657

`C(abs(A108086(n))+1, 2)`
-/

namespace A107105.P15906134360031878657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|A108086 n| + 1).toNat 2

end

end A107105.P15906134360031878657

namespace A107105

/-- `C(abs(A108086(n))+1, 2)` -/
def P15906134360031878657.Spec : Prop :=
  ∀ n, (P15906134360031878657.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P16676743174258271323

`C(abs(A117440(n))+1, 2)`
-/

namespace A107105.P16676743174258271323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|A117440 n| + 1).toNat 2

end

end A107105.P16676743174258271323

namespace A107105

/-- `C(abs(A117440(n))+1, 2)` -/
def P16676743174258271323.Spec : Prop :=
  ∀ n, (P16676743174258271323.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P9858545549866229814

`C(abs(A130595(n))+1, 2)`
-/

namespace A107105.P9858545549866229814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|A130595 n| + 1).toNat 2

end

end A107105.P9858545549866229814

namespace A107105

/-- `C(abs(A130595(n))+1, 2)` -/
def P9858545549866229814.Spec : Prop :=
  ∀ n, (P9858545549866229814.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P2608005005032028979

`C(sqrt(A008459(n))+1, 2)`
-/

namespace A107105.P2608005005032028979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ) + 1)).toNat 2

end

end A107105.P2608005005032028979

namespace A107105

/-- `C(sqrt(A008459(n))+1, 2)` -/
def P2608005005032028979.Spec : Prop :=
  ∀ n, (P2608005005032028979.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P12831308350558565820

`C(Δ[A102363(n)]+1, 2)`
-/

namespace A107105.P12831308350558565820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A107105.P12831308350558565820

namespace A107105

/-- `C(Δ[A102363(n)]+1, 2)` -/
def P12831308350558565820.Spec : Prop :=
  ∀ n, (P12831308350558565820.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P5737367360608651854

`C(A028326(n)/2+1, 2)`
-/

namespace A107105.P5737367360608651854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2 + 1)).toNat 2

end

end A107105.P5737367360608651854

namespace A107105

/-- `C(A028326(n)/2+1, 2)` -/
def P5737367360608651854.Spec : Prop :=
  ∀ n, (P5737367360608651854.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P15926677722568228381

`C(ceil(A109128(n)/2)+1, 2)`
-/

namespace A107105.P15926677722568228381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(A109128 n : ℚ) / 2⌉ + 1).toNat 2

end

end A107105.P15926677722568228381

namespace A107105

/-- `C(ceil(A109128(n)/2)+1, 2)` -/
def P15926677722568228381.Spec : Prop :=
  ∀ n, (P15926677722568228381.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P17300014299083085196

`C(ceil(A124927(n)/2)+1, 2)`
-/

namespace A107105.P17300014299083085196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(A124927 n : ℚ) / 2⌉ + 1).toNat 2

end

end A107105.P17300014299083085196

namespace A107105

/-- `C(ceil(A124927(n)/2)+1, 2)` -/
def P17300014299083085196.Spec : Prop :=
  ∀ n, (P17300014299083085196.a n : ℤ) = A107105 n

end A107105

/-! ## A107105.P1857855720443341470

`A000217(A007318(n))`
-/

namespace A107105.P1857855720443341470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007318 n).toNat

end

end A107105.P1857855720443341470

namespace A107105

/-- `A000217(A007318(n))` -/
def P1857855720443341470.Spec : Prop :=
  ∀ n, P1857855720443341470.a n = A107105 n

end A107105

/-! ## A107105.P4540344576310492767

`A000217(A028326(n)/2)`
-/

namespace A107105.P4540344576310492767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A107105.P4540344576310492767

namespace A107105

/-- `A000217(A028326(n)/2)` -/
def P4540344576310492767.Spec : Prop :=
  ∀ n, P4540344576310492767.a n = A107105 n

end A107105

/-! ## A107105.P8708495809092562528

`A073424(n)+A000217(A206735(n))`
-/

namespace A107105.P8708495809092562528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A000217 (A206735 n).toNat

end

end A107105.P8708495809092562528

namespace A107105

/-- `A073424(n)+A000217(A206735(n))` -/
def P8708495809092562528.Spec : Prop :=
  ∀ n, P8708495809092562528.a n = A107105 n

end A107105

/-! ## A107105.P8280677809265343285

`A000217(A206735(n-A073424(n)))`
-/

namespace A107105.P8280677809265343285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A206735 ((n : ℤ) - A073424 n).toNat).toNat

end

end A107105.P8280677809265343285

namespace A107105

/-- `A000217(A206735(n-A073424(n)))` -/
def P8280677809265343285.Spec : Prop :=
  ∀ n, P8280677809265343285.a n = A107105 n

end A107105

/-! ## A107105.P10830085596100256442

`A000217(A222405(n)-A222404(n))`
-/

namespace A107105.P10830085596100256442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A222405 n - A222404 n).toNat

end

end A107105.P10830085596100256442

namespace A107105

/-- `A000217(A222405(n)-A222404(n))` -/
def P10830085596100256442.Spec : Prop :=
  ∀ n, P10830085596100256442.a n = A107105 n

end A107105

/-! ## A107105.P11716412008611024289

`A000217(A102363(n+1)-A102363(n))`
-/

namespace A107105.P11716412008611024289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A102363 (n + 1) - A102363 n).toNat

end

end A107105.P11716412008611024289

namespace A107105

/-- `A000217(A102363(n+1)-A102363(n))` -/
def P11716412008611024289.Spec : Prop :=
  ∀ n, P11716412008611024289.a n = A107105 n

end A107105

/-! ## A107105.P14842147699009981875

`A179865(A104795(n))`
-/

namespace A107105.P14842147699009981875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A104795 n).toNat

end

end A107105.P14842147699009981875

namespace A107105

/-- `A179865(A104795(n))` -/
def P14842147699009981875.Spec : Prop :=
  ∀ n, P14842147699009981875.a n = A107105 n

end A107105

/-! ## A107105.P12544405747135652096

`A179865(A132735(n))`
-/

namespace A107105.P12544405747135652096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A132735 n).toNat

end

end A107105.P12544405747135652096

namespace A107105

/-- `A179865(A132735(n))` -/
def P12544405747135652096.Spec : Prop :=
  ∀ n, P12544405747135652096.a n = A107105 n

end A107105

/-!
# A107106: Irregular triangle T(n,k) = A036039(n,k) / A036040(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A107106, there is no canonical definition to state claims against.
-/

/-! ## A107106.P17174572982626362749

`A134133(n)/A118851(n)`
-/

namespace A107106.P17174572982626362749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 n : ℚ) / (A118851 n : ℚ)

end

end A107106.P17174572982626362749

/-! ## A107106.P4750500197002065835

`A178802(n)/A182779(n)`
-/

namespace A107106.P4750500197002065835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A182779 n : ℚ)

end

end A107106.P4750500197002065835

/-! ## A107106.P4066403567167011977

`A134133(n)/A003963(A129129(n)%A018829(2*n+5))`
-/

namespace A107106.P4066403567167011977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 n : ℚ) / (A003963 (Int.tmod (A129129 n) (A018829 (2 * n + 5))).toNat : ℚ)

end

end A107106.P4066403567167011977

/-! ## A107106.P13815294876388739584

`A121457(n)/∏{e}[A000079(n), A036038(#)]`
-/

namespace A107106.P13815294876388739584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121457 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036038 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ)

end

end A107106.P13815294876388739584

/-! ## A107106.P4476824708134667449

`A018772(A179318(n))`
-/

namespace A107106.P4476824708134667449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018772 (A179318 n).toNat

end

end A107106.P4476824708134667449

/-!
# A107107: For each partition of n, calculate (dM2/dM3) where dM2 = A036039(p) and dM3 = A036040(p); then sum over all partitions of n.

The programs for A107107, there is no canonical definition to state claims against.
-/

/-! ## A107107.P6944630748300309758

`A179327(n)+A049320(A002788(n))`
-/

namespace A107107.P6944630748300309758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179327 n + A049320 (A002788 n).toNat

end

end A107107.P6944630748300309758

/-! ## A107107.P2683485565920196618

`A179327(n)+A086008(A046161(n))`
-/

namespace A107107.P2683485565920196618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179327 n + A086008 (A046161 n).toNat

end

end A107107.P2683485565920196618

/-! ## A107107.P2580613311317275448

`A179327(n)+A065202(A189886(n))`
-/

namespace A107107.P2580613311317275448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179327 n + A065202 (A189886 n).toNat

end

end A107107.P2580613311317275448

/-! ## A107107.P13186755003155292256

`A335460(A335518(n+4))+A179327(n)`
-/

namespace A107107.P13186755003155292256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A335518 (n + 4)).toNat + A179327 n

end

end A107107.P13186755003155292256

/-!
# A107108: Shorthand of n-th smallest n-digit prime, see comments.

The programs for A107108, the canonical program `A107108.P9202005962894118963` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107108 has offset 1).

The definition of A107108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107108.P9202005962894118963

`A069100(n+1)-A178500(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107108

/-- `A069100(n+1)-A178500(n)` -/
def P9202005962894118963.Spec : Prop :=
  ∀ n, P9202005962894118963.a n = A107108 (n + 1)

theorem P9202005962894118963.correct : P9202005962894118963.Spec := by
  intro n
  simp only [A107108, Nat.add_sub_cancel]

end A107108

/-! ## A107108.P17470539309204246004

`A069100(n+1)-10*A178501(n)`
-/

namespace A107108.P17470539309204246004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069100 (n + 1) - 10 * A178501 n

end

end A107108.P17470539309204246004

namespace A107108

/-- `A069100(n+1)-10*A178501(n)` -/
def P17470539309204246004.Spec : Prop :=
  ∀ n, P17470539309204246004.a n = A107108 (n + 1)

end A107108

/-! ## A107108.P14393740826328395563

`or(1, A069100(n+1))-A011557(n)`
-/

namespace A107108.P14393740826328395563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069100 (n + 1)) - A011557 n

end

end A107108.P14393740826328395563

namespace A107108

/-- `or(1, A069100(n+1))-A011557(n)` -/
def P14393740826328395563.Spec : Prop :=
  ∀ n, P14393740826328395563.a n = A107108 (n + 1)

end A107108

/-! ## A107108.P17696661360859027681

`A069100(n+1)%A017934(A004277(n))`
-/

namespace A107108.P17696661360859027681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069100 (n + 1)) (A017934 (A004277 n).toNat)

end

end A107108.P17696661360859027681

namespace A107108

/-- `A069100(n+1)%A017934(A004277(n))` -/
def P17696661360859027681.Spec : Prop :=
  ∀ n, P17696661360859027681.a n = A107108 (n + 1)

end A107108

/-!
# A107109: n-th largest n-digit prime.

The programs for A107109, the canonical program `A107109.P12890959328992555873` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107109 has offset 1).

The definition of A107109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107109.P12890959328992555873

`A000040(A000720(10^(n+1))-(n+1)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107109

/-- `A000040(A000720(10^(n+1))-(n+1)+1)` -/
def P12890959328992555873.Spec : Prop :=
  ∀ n, P12890959328992555873.a n = A107109 (n + 1)

theorem P12890959328992555873.correct : P12890959328992555873.Spec := by
  intro n
  simp only [A107109, Nat.add_sub_cancel]

end A107109

/-!
# A107110: Square array by antidiagonals where T(n,k) is the number of partitions of k into no more than n parts each no more than n. Visible version of A063746.

The programs for A107110, there is no canonical definition to state claims against.
-/

/-! ## A107110.P2269706186889275799

`A003056(A321609(n))-A055641(A254766(n+1))`
-/

namespace A107110.P2269706186889275799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A321609 n).toNat - A055641 (A254766 (n + 1)).toNat

end

end A107110.P2269706186889275799

/-! ## A107110.P2174357406928119834

`A287272(4*A321609(n))`
-/

namespace A107110.P2174357406928119834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (4 * A321609 n).toNat

end

end A107110.P2174357406928119834

/-! ## A107110.P12628023368945386627

`A089293(A001057(A321609(n))²)`
-/

namespace A107110.P12628023368945386627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A001057 (A321609 n).toNat ^ 2).toNat

end

end A107110.P12628023368945386627

/-! ## A107110.P761132791307155413

`A003056(A321609(n))%Δ[A253089(n)]`
-/

namespace A107110.P761132791307155413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A321609 n).toNat) (f1 (n + 1) - f1 n)

end

end A107110.P761132791307155413

/-! ## A107110.P6442042826453928519

`A003056(A321609(n)%A002091(n+1))`
-/

namespace A107110.P6442042826453928519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A321609 n) (A002091 (n + 1))).toNat

end

end A107110.P6442042826453928519

/-!
# A107111: Number array whose rows are the series reversions of x(1-x)/(1+x)^k, read by antidiagonals.

The programs for A107111, there is no canonical definition to state claims against.
-/

/-! ## A107111.P2329398990583149536

`A247507(n)+A025465(A023105(n))`
-/

namespace A107111.P2329398990583149536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 n + A025465 (A023105 n).toNat

end

end A107111.P2329398990583149536

/-! ## A107111.P17976231175528713420

`A083896(A000079(n))+A056860(n+1)`
-/

namespace A107111.P17976231175528713420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A000079 n).toNat + A056860 (n + 1)

end

end A107111.P17976231175528713420

/-! ## A107111.P2702253689254071909

`A322438(A032101(n+1))+A247507(n)`
-/

namespace A107111.P2702253689254071909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322438 (A032101 (n + 1)).toNat + A247507 n

end

end A107111.P2702253689254071909

/-! ## A107111.P5342839625397931760

`A158825(n+1)+A025444(A327662(n+1))`
-/

namespace A107111.P5342839625397931760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (n + 1) + A025444 (A327662 (n + 1)).toNat

end

end A107111.P5342839625397931760

/-!
# A107112: Row sums of A107111, viewed as a number triangle.

The programs for A107112, there is no canonical definition to state claims against.
-/

/-! ## A107112.P15363370876366028973

`A193318(n+1)-A285726(A000055(2*(n+1)))`
-/

namespace A107112.P15363370876366028973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193318 (n + 1) - A285726 (A000055 (2 * (n + 1))).toNat

end

end A107112.P15363370876366028973

/-! ## A107112.P13327341858944516401

`3*A298303(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A107112.P13327341858944516401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 * A298303 (a (n - 1)).toNat

end

end A107112.P13327341858944516401

/-!
# A107113: Diagonal sums of A107111, viewed as a number triangle.

The programs for A107113, there is no canonical definition to state claims against.
-/

/-! ## A107113.P1413284919538807707

`∑[A050372(A328964(∑[n]))]`
-/

namespace A107113.P1413284919538807707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (A328964 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107113.P1413284919538807707

/-! ## A107113.P6115247275443179949

`A002024(A259438(n+1))-1`
-/

namespace A107113.P6115247275443179949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A259438 (n + 1)).toNat - 1

end

end A107113.P6115247275443179949

/-! ## A107113.P2329097707521409698

`A124016(n+1)-A275210(n)`
-/

namespace A107113.P2329097707521409698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124016 (n + 1) - A275210 n

end

end A107113.P2329097707521409698

/-! ## A107113.P9365584252472918607

`A325863(A219601(n))+A034349(n+1)`
-/

namespace A107113.P9365584252472918607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (A219601 n).toNat + A034349 (n + 1)

end

end A107113.P9365584252472918607

/-!
# A107114: Two-digit numbers from the decimal expansion of Pi.

The programs for A107114, there is no canonical definition to state claims against.
-/

/-! ## A107114.P4503656889654212372

`A000796(n+1)+10*A000796(n)`
-/

namespace A107114.P4503656889654212372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + 10 * A000796 (n + 1)

end

end A107114.P4503656889654212372

/-! ## A107114.P5194708027305008225

`A110883(n+1)+Δ[9*A059582(n)]`
-/

namespace A107114.P5194708027305008225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) + (f1 (n + 1) - f1 n)

end

end A107114.P5194708027305008225

/-! ## A107114.P14288628970202371907

`Δ[A059582(n+1)+10*A059582(n)]`
-/

namespace A107114.P14288628970202371907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1) + 10 * A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107114.P14288628970202371907

/-! ## A107114.P2422198906968125464

`A110883(n+1)+9*A110766(Δ[n²])`
-/

namespace A107114.P2422198906968125464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) + 9 * A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107114.P2422198906968125464

/-! ## A107114.P12896835252720079452

`A110883(n+1)+9*(A123152(n+1)-1)`
-/

namespace A107114.P12896835252720079452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) + 9 * (A123152 (n + 1) - 1)

end

end A107114.P12896835252720079452

/-! ## A107114.P16084308626880603620

`A110766(2*n+3)+10*(9-A030644(n))`
-/

namespace A107114.P16084308626880603620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3) + 10 * (9 - A030644 (n + 1))

end

end A107114.P16084308626880603620

/-! ## A107114.P1925421153537934340

`A110766(2*n+3)+10*A001355(Δ[n²])`
-/

namespace A107114.P1925421153537934340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3) + 10 * A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107114.P1925421153537934340

/-! ## A107114.P9605966955453441343

`A110766(2*n+3)+10*A110766(Δ[n²])`
-/

namespace A107114.P9605966955453441343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3) + 10 * A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107114.P9605966955453441343

/-! ## A107114.P8042896644637061451

`A110766(2*n+3)+10*(A123152(n+1)-1)`
-/

namespace A107114.P8042896644637061451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3) + 10 * (A123152 (n + 1) - 1)

end

end A107114.P8042896644637061451

/-! ## A107114.P9695830001458647808

`A110766(2*n+3)+10*A065253(n+1)%10`
-/

namespace A107114.P9695830001458647808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3) + 10 * Int.tmod (A065253 (n + 1)) 10

end

end A107114.P9695830001458647808

/-!
# A107115: Three-digit numbers from the decimal expansion of Pi (version 3) -- but see comments.

The programs for A107115, there is no canonical definition to state claims against.
-/

/-! ## A107115.P2630729110979288682

`A107116(3*n+1)`
-/

namespace A107115.P2630729110979288682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (3 * n + 1)

end

end A107115.P2630729110979288682

/-! ## A107115.P9002524833318266657

`A107116(A016777(n))+char[21]`
-/

namespace A107115.P9002524833318266657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (A016777 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107115.P9002524833318266657

/-! ## A107115.P8301250189131249125

`lcm(A033999(n), A107116(A016777(n)))`
-/

namespace A107115.P8301250189131249125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A107116 (A016777 n).toNat)

end

end A107115.P8301250189131249125

/-!
# A107117: Three-digit numbers from the decimal expansion of Pi (version 2).

The programs for A107117, there is no canonical definition to state claims against.
-/

/-! ## A107117.P4460236751480794088

`A107116(Δ[n²])`
-/

namespace A107117.P4460236751480794088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107117.P4460236751480794088

/-! ## A107117.P9250481405356184687

`and(-1, A107116(2*n+1))`
-/

namespace A107117.P9250481405356184687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A107116 (2 * n + 1))

end

end A107117.P9250481405356184687

/-! ## A107117.P13888093138806486309

`A000027(A107116(2*n+1))`
-/

namespace A107117.P13888093138806486309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A107116 (2 * n + 1)).toNat

end

end A107117.P13888093138806486309

/-! ## A107117.P17755143404263674330

`A028310(A107116(n+1+n))`
-/

namespace A107117.P17755143404263674330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A107116 (n + 1 + n)).toNat

end

end A107117.P17755143404263674330

/-! ## A107117.P13102070183508584302

`A107116(2*n+1)%A346830(n)`
-/

namespace A107117.P13102070183508584302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107116 (2 * n + 1)) (A346830 n)

end

end A107117.P13102070183508584302

/-!
# A107118: Numbers that are both centered triangular numbers (A005448) and centered hexagonal numbers (A003215).

The programs for A107118, the canonical program `A107118.P5598875730346475128` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107118 has offset 1).

The definition of A107118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107118.P5598875730346475128

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=1, a(1)=19, a(2)=631`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107118

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P5598875730346475128.Spec : Prop :=
  ∀ n, P5598875730346475128.a n = A107118 (n + 1)

theorem P5598875730346475128.correct : P5598875730346475128.Spec := by
  intro n
  simp only [A107118, Nat.add_sub_cancel]

end A107118

/-! ## A107118.P16944600707501445120

`∑[A350984(n)]+1`
-/

namespace A107118.P16944600707501445120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A107118.P16944600707501445120

namespace A107118

/-- `∑[A350984(n)]+1` -/
def P16944600707501445120.Spec : Prop :=
  ∀ n, P16944600707501445120.a n = A107118 (n + 1)

end A107118

/-! ## A107118.P9575571924848052159

`3*A029549(n)+1`
-/

namespace A107118.P9575571924848052159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029549 n + 1

end

end A107118.P9575571924848052159

namespace A107118

/-- `3*A029549(n)+1` -/
def P9575571924848052159.Spec : Prop :=
  ∀ n, P9575571924848052159.a n = A107118 (n + 1)

end A107118

/-! ## A107118.P396926166125991471

`6*A075528(n)+1`
-/

namespace A107118.P396926166125991471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A075528 n + 1

end

end A107118.P396926166125991471

namespace A107118

/-- `6*A075528(n)+1` -/
def P396926166125991471.Spec : Prop :=
  ∀ n, P396926166125991471.a n = A107118 (n + 1)

end A107118

/-! ## A107118.P6752697807355286734

`∑[ceil(A004294(n)/2)]`
-/

namespace A107118.P6752697807355286734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004294 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107118.P6752697807355286734

namespace A107118

/-- `∑[ceil(A004294(n)/2)]` -/
def P6752697807355286734.Spec : Prop :=
  ∀ n, P6752697807355286734.a n = A107118 (n + 1)

end A107118

/-! ## A107118.P14263477174064952594

`ceil(A006062(n+1)/2)`
-/

namespace A107118.P14263477174064952594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006062 (n + 1) : ℚ) / 2⌉

end

end A107118.P14263477174064952594

namespace A107118

/-- `ceil(A006062(n+1)/2)` -/
def P14263477174064952594.Spec : Prop :=
  ∀ n, P14263477174064952594.a n = A107118 (n + 1)

end A107118

/-! ## A107118.P868217163246400660

`∑[3*A082405(n)]+1`
-/

namespace A107118.P868217163246400660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A107118.P868217163246400660

namespace A107118

/-- `∑[3*A082405(n)]+1` -/
def P868217163246400660.Spec : Prop :=
  ∀ n, P868217163246400660.a n = A107118 (n + 1)

end A107118

/-! ## A107118.P1010006479033858047

`(A217758(n+1)+2)/3`
-/

namespace A107118.P1010006479033858047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217758 (n + 1) + 2 : ℚ) / 3

end

end A107118.P1010006479033858047

namespace A107118

/-- `(A217758(n+1)+2)/3` -/
def P1010006479033858047.Spec : Prop :=
  ∀ n, P1010006479033858047.a n = (A107118 (n + 1) : ℚ)

end A107118

/-! ## A107118.P15715578879367418813

`(A361491(n+1)+3)/4`
-/

namespace A107118.P15715578879367418813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361491 (n + 1) + 3 : ℚ) / 4

end

end A107118.P15715578879367418813

namespace A107118

/-- `(A361491(n+1)+3)/4` -/
def P15715578879367418813.Spec : Prop :=
  ∀ n, P15715578879367418813.a n = (A107118 (n + 1) : ℚ)

end A107118

/-! ## A107118.P7113819924543299343

`(3*A098890(n)-1)/2`
-/

namespace A107118.P7113819924543299343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A098890 n - 1 : ℚ) / 2

end

end A107118.P7113819924543299343

namespace A107118

/-- `(3*A098890(n)-1)/2` -/
def P7113819924543299343.Spec : Prop :=
  ∀ n, P7113819924543299343.a n = (A107118 (n + 1) : ℚ)

end A107118

/-!
# A107123: Numbers k such that (10^(2*k+1)+18*10^k-1)/9 is prime.

The programs for A107123, there is no canonical definition to state claims against.
-/

/-! ## A107123.P48880751617106082

`A089259(A131704(3*n+2))-A108917(n)`
-/

namespace A107123.P48880751617106082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089259 (A131704 (3 * n + 2)).toNat - A108917 n

end

end A107123.P48880751617106082

/-!
# A107124: Numbers k such that (10^(2*k+1)+27*10^k-1)/9 is prime.

The programs for A107124, there is no canonical definition to state claims against.
-/

/-! ## A107124.P4074981255398114937

`(A077780(n+1)-1)/2`
-/

namespace A107124.P4074981255398114937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077780 (n + 1) - 1 : ℚ) / 2

end

end A107124.P4074981255398114937

/-!
# A107125: Numbers k such that (10^(2*k+1) + 36*10^k - 1)/9 is prime.

The programs for A107125, there is no canonical definition to state claims against.
-/

/-! ## A107125.P16038429379367338629

`record[A057979(A331869(n+1))]`
-/

namespace A107125.P16038429379367338629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A331869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107125.P16038429379367338629

/-!
# A107126: Numbers n such that (10^(2n+1)+45*10^n-1)/9 is prime.

The programs for A107126, there is no canonical definition to state claims against.
-/

/-! ## A107126.P8981943642920092085

`(A077787(n+1)-1)/2`
-/

namespace A107126.P8981943642920092085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077787 (n + 1) - 1 : ℚ) / 2

end

end A107126.P8981943642920092085

/-! ## A107126.P2482947670545740707

`floor(A077787(n+1)/2)`
-/

namespace A107126.P2482947670545740707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077787 (n + 1) : ℚ) / 2⌋

end

end A107126.P2482947670545740707

/-! ## A107126.P582640084682062454

`A004524(A077787(n+1))`
-/

namespace A107126.P582640084682062454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A077787 (n + 1)).toNat

end

end A107126.P582640084682062454

/-! ## A107126.P15261886349297366676

`A065423(A077787(n+1)+1)`
-/

namespace A107126.P15261886349297366676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A077787 (n + 1) + 1).toNat

end

end A107126.P15261886349297366676

/-! ## A107126.P4947449091578025225

`A140106(A077787(n+1)+1)`
-/

namespace A107126.P4947449091578025225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A077787 (n + 1) + 1).toNat

end

end A107126.P4947449091578025225

/-!
# A107127: Numbers k such that (10^(2k+1)+54*10^k-1)/9 is prime.

The programs for A107127, there is no canonical definition to state claims against.
-/

/-! ## A107127.P14759845391683086664

`A068639(A158513(n)-A342889(n))`
-/

namespace A107127.P14759845391683086664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A158513 n - A342889 n).toNat

end

end A107127.P14759845391683086664

/-!
# A107128: Divide the even digits of n by 2!.

The programs for A107128, there is no canonical definition to state claims against.
-/

/-! ## A107128.P18112698238473173350

`A106747(n)+n-A107130(n)`
-/

namespace A107128.P18112698238473173350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + ((n : ℤ) - A107130 n)

end

end A107128.P18112698238473173350

/-! ## A107128.P15032554544042283405

`A106647(n)+n-A351744(n)`
-/

namespace A107128.P15032554544042283405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106647 n + ((n : ℤ) - A351744 n)

end

end A107128.P15032554544042283405

/-! ## A107128.P9204636158316182422

`A136400(n)+A107130(A235049(n))`
-/

namespace A107128.P9204636158316182422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n + A107130 (A235049 n).toNat

end

end A107128.P9204636158316182422

/-! ## A107128.P17528736423105988996

`A107130(A306436(n))+A103181(n)`
-/

namespace A107128.P17528736423105988996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A306436 n).toNat + A103181 n

end

end A107128.P17528736423105988996

/-! ## A107128.P6187044316069263280

`A136400(n)+A107130(n-A136400(n))`
-/

namespace A107128.P6187044316069263280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n + A107130 ((n : ℤ) - A136400 n).toNat

end

end A107128.P6187044316069263280

/-! ## A107128.P15446191448713254633

`A107130(A351744(n))+n-A107130(n)`
-/

namespace A107128.P15446191448713254633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A351744 n).toNat + ((n : ℤ) - A107130 n)

end

end A107128.P15446191448713254633

/-! ## A107128.P12458886539241984145

`A106747(n)-A001489(n-A107130(n))`
-/

namespace A107128.P12458886539241984145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n - A001489 ((n : ℤ) - A107130 n).toNat

end

end A107128.P12458886539241984145

/-! ## A107128.P7598331294208930206

`n-A222248(A107130(n)-A106747(n))`
-/

namespace A107128.P7598331294208930206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A222248 (A107130 n - A106747 n).toNat

end

end A107128.P7598331294208930206

/-! ## A107128.P9786167476608796153

`A107130(A235049(n))+A064770(A064770(n))`
-/

namespace A107128.P9786167476608796153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A235049 n).toNat + A064770 (A064770 n).toNat

end

end A107128.P9786167476608796153

/-!
# A107130: Replace each odd digit d of n with (d-1)/2.

The programs for A107130, there is no canonical definition to state claims against.
-/

/-! ## A107130.P4770476260654827740

`A106747(n)+n-A107128(n)`
-/

namespace A107130.P4770476260654827740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + ((n : ℤ) - A107128 n)

end

end A107130.P4770476260654827740

/-! ## A107130.P12754514192822269280

`A106747(n)+A351744(n)-A106647(n)`
-/

namespace A107130.P12754514192822269280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + (A351744 n - A106647 n)

end

end A107130.P12754514192822269280

/-! ## A107130.P9749823908753538306

`A106747(n)-A001489(n-A107128(n))`
-/

namespace A107130.P9749823908753538306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n - A001489 ((n : ℤ) - A107128 n).toNat

end

end A107130.P9749823908753538306

/-! ## A107130.P9469474856509045140

`n-(A107128(n)-A106747(A306436(n)))`
-/

namespace A107130.P9469474856509045140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A107128 n - A106747 (A306436 n).toNat)

end

end A107130.P9469474856509045140

/-! ## A107130.P4925157213783037725

`A107128(A235049(n))+A103181(A235049(n))`
-/

namespace A107130.P4925157213783037725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A235049 n).toNat + A103181 (A235049 n).toNat

end

end A107130.P4925157213783037725

/-! ## A107130.P2807144641062865791

`A107128(A306436(n))-A103181(A048379(n))`
-/

namespace A107130.P2807144641062865791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A306436 n).toNat - A103181 (A048379 n).toNat

end

end A107130.P2807144641062865791

/-! ## A107130.P5308315124428150891

`A107128(A306436(n))-A103181(A061601(n))`
-/

namespace A107130.P5308315124428150891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A306436 n).toNat - A103181 (A061601 n).toNat

end

end A107130.P5308315124428150891

/-! ## A107130.P131019421547355341

`A107128(A306436(n))-A106747(A065031(n))`
-/

namespace A107130.P131019421547355341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A306436 n).toNat - A106747 (A065031 n).toNat

end

end A107130.P131019421547355341

/-!
# A107131: A Motzkin related triangle.

The programs for A107131, the canonical program `A107131.P167059320166310651` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107131 has offset 0).

The definition of A107131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107131.P13019480316499733290

`C(col(n)+1, row(n)-col(n)+1)*C(row(n), col(n))/(col(n)+1)`
-/

namespace A107131.P13019480316499733290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 1) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A107131.P13019480316499733290

namespace A107131

/-- `C(col(n)+1, row(n)-col(n)+1)*C(row(n), col(n))/(col(n)+1)` -/
def P13019480316499733290.Spec : Prop :=
  ∀ n, P13019480316499733290.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P167059320166310651

`C(row(n), 2*row(n)-2*col(n))*A000108(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107131

/-- `C(row(n), 2*row(n)-2*col(n))*A000108(row(n)-col(n))` -/
def P167059320166310651.Spec : Prop :=
  ∀ n, P167059320166310651.a n = A107131 n

theorem P167059320166310651.correct : P167059320166310651.Spec := by
  intro n
  simp only [A107131]

end A107131

/-! ## A107131.P14834185149124705002

`A132814(n)/A002260(n+1)`
-/

namespace A107131.P14834185149124705002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132814 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A107131.P14834185149124705002

namespace A107131

/-- `A132814(n)/A002260(n+1)` -/
def P14834185149124705002.Spec : Prop :=
  ∀ n, P14834185149124705002.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P7479607508523954086

`A132814(n)/A051125(n+1)`
-/

namespace A107131.P7479607508523954086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132814 n : ℚ) / (A051125 (n + 1) : ℚ)

end

end A107131.P7479607508523954086

namespace A107131

/-- `A132814(n)/A051125(n+1)` -/
def P7479607508523954086.Spec : Prop :=
  ∀ n, P7479607508523954086.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P17266010508876953225

`A080159(A061579(n))`
-/

namespace A107131.P17266010508876953225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 (A061579 n).toNat

end

end A107131.P17266010508876953225

namespace A107131

/-- `A080159(A061579(n))` -/
def P17266010508876953225.Spec : Prop :=
  ∀ n, P17266010508876953225.a n = A107131 n

end A107131

/-! ## A107131.P636296175159531244

`A080159(A038722(n+1)-1)`
-/

namespace A107131.P636296175159531244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 (A038722 (n + 1) - 1).toNat

end

end A107131.P636296175159531244

namespace A107131

/-- `A080159(A038722(n+1)-1)` -/
def P636296175159531244.Spec : Prop :=
  ∀ n, P636296175159531244.a n = A107131 n

end A107131

/-! ## A107131.P366371042790182920

`A080159(A038722(n+2))`
-/

namespace A107131.P366371042790182920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 (A038722 (n + 2)).toNat

end

end A107131.P366371042790182920

namespace A107131

/-- `A080159(A038722(n+2))` -/
def P366371042790182920.Spec : Prop :=
  ∀ n, P366371042790182920.a n = A107131 n

end A107131

/-! ## A107131.P15006607546098050439

`A105868(n)/A089688(n)`
-/

namespace A107131.P15006607546098050439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A089688 n : ℚ)

end

end A107131.P15006607546098050439

namespace A107131

/-- `A105868(n)/A089688(n)` -/
def P15006607546098050439.Spec : Prop :=
  ∀ n, P15006607546098050439.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P3556013962877024392

`A105868(n)/A193592(n)`
-/

namespace A107131.P3556013962877024392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A193592 n : ℚ)

end

end A107131.P3556013962877024392

namespace A107131

/-- `A105868(n)/A193592(n)` -/
def P3556013962877024392.Spec : Prop :=
  ∀ n, P3556013962877024392.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P11400305383827831500

`A105868(n)/A193739(n)`
-/

namespace A107131.P11400305383827831500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A193739 n : ℚ)

end

end A107131.P11400305383827831500

namespace A107131

/-- `A105868(n)/A193739(n)` -/
def P11400305383827831500.Spec : Prop :=
  ∀ n, P11400305383827831500.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P1704244551726161690

`A105868(n)/A397991(n)`
-/

namespace A107131.P1704244551726161690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A397991 n : ℚ)

end

end A107131.P1704244551726161690

namespace A107131

/-- `A105868(n)/A397991(n)` -/
def P1704244551726161690.Spec : Prop :=
  ∀ n, P1704244551726161690.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P5141332111681606705

`A105868(n)/A003983(n+1)`
-/

namespace A107131.P5141332111681606705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A003983 (n + 1) : ℚ)

end

end A107131.P5141332111681606705

namespace A107131

/-- `A105868(n)/A003983(n+1)` -/
def P5141332111681606705.Spec : Prop :=
  ∀ n, P5141332111681606705.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P6583776072786880097

`A105868(n)/(A004197(n)+1)`
-/

namespace A107131.P6583776072786880097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A004197 n + 1 : ℚ)

end

end A107131.P6583776072786880097

namespace A107131

/-- `A105868(n)/(A004197(n)+1)` -/
def P6583776072786880097.Spec : Prop :=
  ∀ n, P6583776072786880097.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P16098620747819651775

`A105868(n)/A004736(n+1)`
-/

namespace A107131.P16098620747819651775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A107131.P16098620747819651775

namespace A107131

/-- `A105868(n)/A004736(n+1)` -/
def P16098620747819651775.Spec : Prop :=
  ∀ n, P16098620747819651775.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P7194658289454532560

`A105868(n)/A089606(n+1)`
-/

namespace A107131.P7194658289454532560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A089606 (n + 1) : ℚ)

end

end A107131.P7194658289454532560

namespace A107131

/-- `A105868(n)/A089606(n+1)` -/
def P7194658289454532560.Spec : Prop :=
  ∀ n, P7194658289454532560.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P10836154819374980970

`A105868(n)/A130297(n+1)`
-/

namespace A107131.P10836154819374980970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A130297 (n + 1) : ℚ)

end

end A107131.P10836154819374980970

namespace A107131

/-- `A105868(n)/A130297(n+1)` -/
def P10836154819374980970.Spec : Prop :=
  ∀ n, P10836154819374980970.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P10556043196009229592

`A105868(n)/A130302(n+1)`
-/

namespace A107131.P10556043196009229592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A130302 (n + 1) : ℚ)

end

end A107131.P10556043196009229592

namespace A107131

/-- `A105868(n)/A130302(n+1)` -/
def P10556043196009229592.Spec : Prop :=
  ∀ n, P10556043196009229592.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P14170363200593821927

`A105868(n)/A130303(n+1)`
-/

namespace A107131.P14170363200593821927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A130303 (n + 1) : ℚ)

end

end A107131.P14170363200593821927

namespace A107131

/-- `A105868(n)/A130303(n+1)` -/
def P14170363200593821927.Spec : Prop :=
  ∀ n, P14170363200593821927.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P16051716967577923595

`A105868(n)/A134542(n+1)`
-/

namespace A107131.P16051716967577923595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A134542 (n + 1) : ℚ)

end

end A107131.P16051716967577923595

namespace A107131

/-- `A105868(n)/A134542(n+1)` -/
def P16051716967577923595.Spec : Prop :=
  ∀ n, P16051716967577923595.a n = (A107131 n : ℚ)

end A107131

/-! ## A107131.P12252798202183709268

`A105868(n)/A134545(n+1)`
-/

namespace A107131.P12252798202183709268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A134545 (n + 1) : ℚ)

end

end A107131.P12252798202183709268

namespace A107131

/-- `A105868(n)/A134545(n+1)` -/
def P12252798202183709268.Spec : Prop :=
  ∀ n, P12252798202183709268.a n = (A107131 n : ℚ)

end A107131

/-!
# A107132: Primes of the form 2x^2 + 13y^2.

The programs for A107132, there is no canonical definition to state claims against.
-/

/-! ## A107132.P1916899037599508999

`A163466(xor(∑{d}[n+1, lcm(#, (n+1)²)], ∏{p}[n+1, #-1]))`
-/

namespace A107132.P1916899037599508999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (Int.xor ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d ((n + 1) ^ 2) : ℕ) : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))).toNat

end

end A107132.P1916899037599508999

/-!
# A107133: Primes of the form 4x^2 + 7y^2.

The programs for A107133, the canonical program `A107133.P1704800267406391955` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107133 has offset 1).

The definition of A107133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107133.P5670502089347737144

`A033207(eq[1, A002345(n+1)%2]+1)`
-/

namespace A107133.P5670502089347737144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002345 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107133.P5670502089347737144

namespace A107133

/-- `A033207(eq[1, A002345(n+1)%2]+1)` -/
def P5670502089347737144.Spec : Prop :=
  ∀ n, P5670502089347737144.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P12412632212306358144

`p?[A033207(n+1)+A002344(n+1)%2]`
-/

namespace A107133.P12412632212306358144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1) + Int.tmod (A002344 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107133.P12412632212306358144

namespace A107133

/-- `p?[A033207(n+1)+A002344(n+1)%2]` -/
def P12412632212306358144.Spec : Prop :=
  ∀ n, P12412632212306358144.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P1704800267406391955

`∩[A002145(n+1), A033207(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107133

/-- `∩[A002145(n+1), A033207(n+1)]` -/
def P1704800267406391955.Spec : Prop :=
  ∀ n, (P1704800267406391955.a n : ℤ) = A107133 (n + 1)

theorem P1704800267406391955.correct : P1704800267406391955.Spec := by
  intro n
  simp only [A107133, Nat.add_sub_cancel]

end A107133

/-! ## A107133.P4306857160865714944

`∩[A002145(n+1), A045373(n+1)]`
-/

namespace A107133.P4306857160865714944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P4306857160865714944

namespace A107133

/-- `∩[A002145(n+1), A045373(n+1)]` -/
def P4306857160865714944.Spec : Prop :=
  ∀ n, (P4306857160865714944.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P4477831646031743998

`∩[A033207(n+1), A097987(n+1)]`
-/

namespace A107133.P4477831646031743998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P4477831646031743998

namespace A107133

/-- `∩[A033207(n+1), A097987(n+1)]` -/
def P4477831646031743998.Spec : Prop :=
  ∀ n, (P4477831646031743998.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P13272289724864501248

`filter[A033207(n+1), A359152(#)]`
-/

namespace A107133.P13272289724864501248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A107133.P13272289724864501248

namespace A107133

/-- `filter[A033207(n+1), A359152(#)]` -/
def P13272289724864501248.Spec : Prop :=
  ∀ n, P13272289724864501248.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P18359470218699661944

`filter[A045373(n+1), A359152(#)]`
-/

namespace A107133.P18359470218699661944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A107133.P18359470218699661944

namespace A107133

/-- `filter[A045373(n+1), A359152(#)]` -/
def P18359470218699661944.Spec : Prop :=
  ∀ n, P18359470218699661944.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P1924353638093185720

`p?[A020683(n+1)]`
-/

namespace A107133.P1924353638093185720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107133.P1924353638093185720

namespace A107133

/-- `p?[A020683(n+1)]` -/
def P1924353638093185720.Spec : Prop :=
  ∀ n, P1924353638093185720.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P12691447769763756887

`record[A006530(A020683(n+3))]`
-/

namespace A107133.P12691447769763756887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020683 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107133.P12691447769763756887

namespace A107133

/-- `record[A006530(A020683(n+3))]` -/
def P12691447769763756887.Spec : Prop :=
  ∀ n, P12691447769763756887.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P10253531489622000342

`filter[A020683(n+2), A010051(#)]`
-/

namespace A107133.P10253531489622000342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A107133.P10253531489622000342

namespace A107133

/-- `filter[A020683(n+2), A010051(#)]` -/
def P10253531489622000342.Spec : Prop :=
  ∀ n, P10253531489622000342.a n = A107133 (n + 1)

end A107133

/-! ## A107133.P11133515352668947826

`∩[A020683(n+1), A042988(n)]`
-/

namespace A107133.P11133515352668947826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P11133515352668947826

namespace A107133

/-- `∩[A020683(n+1), A042988(n)]` -/
def P11133515352668947826.Spec : Prop :=
  ∀ n, (P11133515352668947826.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P11722419911704201370

`∩[A000040(n+1), A020683(n+1)]`
-/

namespace A107133.P11722419911704201370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P11722419911704201370

namespace A107133

/-- `∩[A000040(n+1), A020683(n+1)]` -/
def P11722419911704201370.Spec : Prop :=
  ∀ n, (P11722419911704201370.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P14492336647931112018

`∩[A002145(n+1), A020683(n+1)]`
-/

namespace A107133.P14492336647931112018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P14492336647931112018

namespace A107133

/-- `∩[A002145(n+1), A020683(n+1)]` -/
def P14492336647931112018.Spec : Prop :=
  ∀ n, (P14492336647931112018.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P18065119639294022457

`∩[A004139(n+1), A020683(n+1)]`
-/

namespace A107133.P18065119639294022457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P18065119639294022457

namespace A107133

/-- `∩[A004139(n+1), A020683(n+1)]` -/
def P18065119639294022457.Spec : Prop :=
  ∀ n, (P18065119639294022457.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P8601986176924906207

`∩[A006005(n+1), A020683(n+1)]`
-/

namespace A107133.P8601986176924906207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P8601986176924906207

namespace A107133

/-- `∩[A006005(n+1), A020683(n+1)]` -/
def P8601986176924906207.Spec : Prop :=
  ∀ n, (P8601986176924906207.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P1878168069962462619

`∩[A008578(n+1), A020683(n+1)]`
-/

namespace A107133.P1878168069962462619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P1878168069962462619

namespace A107133

/-- `∩[A008578(n+1), A020683(n+1)]` -/
def P1878168069962462619.Spec : Prop :=
  ∀ n, (P1878168069962462619.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P12864182040940025706

`∩[A020683(n+1), A033207(n+1)]`
-/

namespace A107133.P12864182040940025706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P12864182040940025706

namespace A107133

/-- `∩[A020683(n+1), A033207(n+1)]` -/
def P12864182040940025706.Spec : Prop :=
  ∀ n, (P12864182040940025706.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P10746947097231850022

`∩[A020683(n+1), A033946(n+1)]`
-/

namespace A107133.P10746947097231850022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P10746947097231850022

namespace A107133

/-- `∩[A020683(n+1), A033946(n+1)]` -/
def P10746947097231850022.Spec : Prop :=
  ∀ n, (P10746947097231850022.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P7173827312711229763

`∩[A020683(n+1), A034849(n+1)]`
-/

namespace A107133.P7173827312711229763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P7173827312711229763

namespace A107133

/-- `∩[A020683(n+1), A034849(n+1)]` -/
def P7173827312711229763.Spec : Prop :=
  ∀ n, (P7173827312711229763.a n : ℤ) = A107133 (n + 1)

end A107133

/-! ## A107133.P12123316753289119771

`∩[A020683(n+1), A040116(n+1)]`
-/

namespace A107133.P12123316753289119771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P12123316753289119771

namespace A107133

/-- `∩[A020683(n+1), A040116(n+1)]` -/
def P12123316753289119771.Spec : Prop :=
  ∀ n, (P12123316753289119771.a n : ℤ) = A107133 (n + 1)

end A107133

/-!
# A107134: Primes of the form x^2+28y^2.

The programs for A107134, there is no canonical definition to state claims against.
-/

/-! ## A107134.P13563778570138231801

`A141172(n+2)`
-/

namespace A107134.P13563778570138231801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 2)

end

end A107134.P13563778570138231801

/-! ## A107134.P14475905142904521942

`∩[A008846(n+1), A038878(n+1)]`
-/

namespace A107134.P14475905142904521942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P14475905142904521942

/-! ## A107134.P13433927286892384067

`∩[A002144(n+1), A038878(n+1)]`
-/

namespace A107134.P13433927286892384067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P13433927286892384067

/-! ## A107134.P10918809526384351576

`∩[A002313(n+1), A038878(n+2)]`
-/

namespace A107134.P10918809526384351576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P10918809526384351576

/-! ## A107134.P13811352387984496960

`∩[A002144(n+1), A033207(n+1)]`
-/

namespace A107134.P13811352387984496960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P13811352387984496960

/-! ## A107134.P17938681452287952749

`∩[A002313(n+1), A033207(n+1)]`
-/

namespace A107134.P17938681452287952749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P17938681452287952749

/-! ## A107134.P17191189042613992693

`∩[A008846(n+1), A033207(n+1)]`
-/

namespace A107134.P17191189042613992693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P17191189042613992693

/-! ## A107134.P1859255995759430374

`∩[A002144(n+1), A045373(n+1)]`
-/

namespace A107134.P1859255995759430374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P1859255995759430374

/-! ## A107134.P9405038720359860652

`∩[A002144(n+1), A045386(n+1)]`
-/

namespace A107134.P9405038720359860652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P9405038720359860652

/-! ## A107134.P12781329037163130843

`∩[A002313(n+2), A045373(n+2)]`
-/

namespace A107134.P12781329037163130843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P12781329037163130843

/-! ## A107134.P11950834121030270288

`∩[A002313(n+2), A045386(n+2)]`
-/

namespace A107134.P11950834121030270288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P11950834121030270288

/-! ## A107134.P10494810856354907183

`A033207(eq[1, A002344(n+1)%2]+1)`
-/

namespace A107134.P10494810856354907183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002344 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107134.P10494810856354907183

/-! ## A107134.P13937014494297005890

`p?[A033207(n+1)+A002345(n+1)%2]`
-/

namespace A107134.P13937014494297005890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1) + Int.tmod (A002345 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107134.P13937014494297005890

/-! ## A107134.P5097571198160530288

`∩[A033207(n+1), A055025(n+1)]`
-/

namespace A107134.P5097571198160530288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P5097571198160530288

/-! ## A107134.P10584595082750863537

`p?[A155568(n+1)]`
-/

namespace A107134.P10584595082750863537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107134.P10584595082750863537

/-! ## A107134.P14886898279300480089

`∩[A033207(n+1), A230779(n+1)]`
-/

namespace A107134.P14886898279300480089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P14886898279300480089

/-! ## A107134.P2460748573181093253

`∩[A038878(n+1), A230779(n+1)]`
-/

namespace A107134.P2460748573181093253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P2460748573181093253

/-! ## A107134.P1717545574683875792

`∩[A045373(n+1), A230779(n+1)]`
-/

namespace A107134.P1717545574683875792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P1717545574683875792

/-! ## A107134.P4418436685238120195

`∩[A045386(n+1), A230779(n+1)]`
-/

namespace A107134.P4418436685238120195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P4418436685238120195

/-! ## A107134.P9681351685318079093

`∩[A230779(n+1), A296934(n+1)]`
-/

namespace A107134.P9681351685318079093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107134.P9681351685318079093

/-!
# A107135: Primes of the form 5x^2 + 6y^2.

The programs for A107135, the canonical program `A107135.P2710238364664105918` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107135 has offset 1).

The definition of A107135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107135.P2710238364664105918

`∪[A139856(n+1), A139859(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107135

/-- `∪[A139856(n+1), A139859(n+1)]` -/
def P2710238364664105918.Spec : Prop :=
  ∀ n, (P2710238364664105918.a n : ℤ) = A107135 (n + 1)

theorem P2710238364664105918.correct : P2710238364664105918.Spec := by
  intro n
  simp only [A107135, Nat.add_sub_cancel]

end A107135

/-! ## A107135.P220507660238608154

`∩[A084865(n+1), A141785(n+1)]`
-/

namespace A107135.P220507660238608154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P220507660238608154

namespace A107135

/-- `∩[A084865(n+1), A141785(n+1)]` -/
def P220507660238608154.Spec : Prop :=
  ∀ n, (P220507660238608154.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P9052971525452124167

`∩[A038872(n+1), A084865(n+1)]`
-/

namespace A107135.P9052971525452124167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P9052971525452124167

namespace A107135

/-- `∩[A038872(n+1), A084865(n+1)]` -/
def P9052971525452124167.Spec : Prop :=
  ∀ n, (P9052971525452124167.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P12835239704389476948

`∩[A141785(n+1), A157437(n+1)]`
-/

namespace A107135.P12835239704389476948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P12835239704389476948

namespace A107135

/-- `∩[A141785(n+1), A157437(n+1)]` -/
def P12835239704389476948.Spec : Prop :=
  ∀ n, (P12835239704389476948.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P9073201939988307373

`∩[A141785(n+1), A296924(n+1)]`
-/

namespace A107135.P9073201939988307373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P9073201939988307373

namespace A107135

/-- `∩[A141785(n+1), A296924(n+1)]` -/
def P9073201939988307373.Spec : Prop :=
  ∀ n, (P9073201939988307373.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P14469580038069357800

`∩[A084865(n+1), A341783(n+1)]`
-/

namespace A107135.P14469580038069357800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P14469580038069357800

namespace A107135

/-- `∩[A084865(n+1), A341783(n+1)]` -/
def P14469580038069357800.Spec : Prop :=
  ∀ n, (P14469580038069357800.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P4720741305670916348

`∩[A003629(n+1), A141785(n+1)]`
-/

namespace A107135.P4720741305670916348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P4720741305670916348

namespace A107135

/-- `∩[A003629(n+1), A141785(n+1)]` -/
def P4720741305670916348.Spec : Prop :=
  ∀ n, (P4720741305670916348.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P2148481894276229644

`∩[A042999(n+1), A141785(n+1)]`
-/

namespace A107135.P2148481894276229644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P2148481894276229644

namespace A107135

/-- `∩[A042999(n+1), A141785(n+1)]` -/
def P2148481894276229644.Spec : Prop :=
  ∀ n, (P2148481894276229644.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P1811795111942972694

`∩[A141785(n+1), A391366(n+1)]`
-/

namespace A107135.P1811795111942972694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P1811795111942972694

namespace A107135

/-- `∩[A141785(n+1), A391366(n+1)]` -/
def P1811795111942972694.Spec : Prop :=
  ∀ n, (P1811795111942972694.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P15115940480960861542

`∩[A141785(n+1), A319041(n+1)]`
-/

namespace A107135.P15115940480960861542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P15115940480960861542

namespace A107135

/-- `∩[A141785(n+1), A319041(n+1)]` -/
def P15115940480960861542.Spec : Prop :=
  ∀ n, (P15115940480960861542.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P11436020024753916382

`∩[A141785(n+1), A270699(n+1)]`
-/

namespace A107135.P11436020024753916382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P11436020024753916382

namespace A107135

/-- `∩[A141785(n+1), A270699(n+1)]` -/
def P11436020024753916382.Spec : Prop :=
  ∀ n, (P11436020024753916382.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P3976346440327447151

`∩[A040993(n+1), A141785(n+1)]`
-/

namespace A107135.P3976346440327447151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P3976346440327447151

namespace A107135

/-- `∩[A040993(n+1), A141785(n+1)]` -/
def P3976346440327447151.Spec : Prop :=
  ∀ n, (P3976346440327447151.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P17005306614787820680

`∩[A141785(n+1), A212375(n+1)]`
-/

namespace A107135.P17005306614787820680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P17005306614787820680

namespace A107135

/-- `∩[A141785(n+1), A212375(n+1)]` -/
def P17005306614787820680.Spec : Prop :=
  ∀ n, (P17005306614787820680.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P7099321175342526694

`p?[A020685(n+1)]`
-/

namespace A107135.P7099321175342526694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107135.P7099321175342526694

namespace A107135

/-- `p?[A020685(n+1)]` -/
def P7099321175342526694.Spec : Prop :=
  ∀ n, P7099321175342526694.a n = A107135 (n + 1)

end A107135

/-! ## A107135.P6080721248210088006

`∩[A000040(n+1), A020685(n+1)]`
-/

namespace A107135.P6080721248210088006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P6080721248210088006

namespace A107135

/-- `∩[A000040(n+1), A020685(n+1)]` -/
def P6080721248210088006.Spec : Prop :=
  ∀ n, (P6080721248210088006.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P13994891505012463350

`∩[A000430(n+1), A020685(n+1)]`
-/

namespace A107135.P13994891505012463350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P13994891505012463350

namespace A107135

/-- `∩[A000430(n+1), A020685(n+1)]` -/
def P13994891505012463350.Spec : Prop :=
  ∀ n, (P13994891505012463350.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P6487657258296148038

`∩[A003627(n+1), A020685(n+1)]`
-/

namespace A107135.P6487657258296148038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P6487657258296148038

namespace A107135

/-- `∩[A003627(n+1), A020685(n+1)]` -/
def P6487657258296148038.Spec : Prop :=
  ∀ n, (P6487657258296148038.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P10510900036474001176

`∩[A003629(n+1), A020685(n+1)]`
-/

namespace A107135.P10510900036474001176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P10510900036474001176

namespace A107135

/-- `∩[A003629(n+1), A020685(n+1)]` -/
def P10510900036474001176.Spec : Prop :=
  ∀ n, (P10510900036474001176.a n : ℤ) = A107135 (n + 1)

end A107135

/-! ## A107135.P184621782169962484

`∩[A006005(n+1), A020685(n+1)]`
-/

namespace A107135.P184621782169962484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P184621782169962484

namespace A107135

/-- `∩[A006005(n+1), A020685(n+1)]` -/
def P184621782169962484.Spec : Prop :=
  ∀ n, (P184621782169962484.a n : ℤ) = A107135 (n + 1)

end A107135

/-!
# A107136: Primes of the form 3x^2 + 10y^2.

The programs for A107136, the canonical program `A107136.P8570020010701659730` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107136 has offset 1).

The definition of A107136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107136.P8570020010701659730

`∪[A139854(n+1), A139860(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107136

/-- `∪[A139854(n+1), A139860(n+1)]` -/
def P8570020010701659730.Spec : Prop :=
  ∀ n, (P8570020010701659730.a n : ℤ) = A107136 (n + 1)

theorem P8570020010701659730.correct : P8570020010701659730.Spec := by
  intro n
  simp only [A107136, Nat.add_sub_cancel]

end A107136

/-! ## A107136.P10630423641570091926

`∩[A106952(n+1), A141179(n+1)]`
-/

namespace A107136.P10630423641570091926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P10630423641570091926

namespace A107136

/-- `∩[A106952(n+1), A141179(n+1)]` -/
def P10630423641570091926.Spec : Prop :=
  ∀ n, (P10630423641570091926.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P11315448948765101608

`∩[A106952(n+1), A128288(n+2)]`
-/

namespace A107136.P11315448948765101608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P11315448948765101608

namespace A107136

/-- `∩[A106952(n+1), A128288(n+2)]` -/
def P11315448948765101608.Spec : Prop :=
  ∀ n, (P11315448948765101608.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P7565168126269143486

`∩[A007645(n+1), A141179(n+1)]`
-/

namespace A107136.P7565168126269143486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P7565168126269143486

namespace A107136

/-- `∩[A007645(n+1), A141179(n+1)]` -/
def P7565168126269143486.Spec : Prop :=
  ∀ n, (P7565168126269143486.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P10271551180150044501

`∩[A007645(n+1), A128288(n+2)]`
-/

namespace A107136.P10271551180150044501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P10271551180150044501

namespace A107136

/-- `∩[A007645(n+1), A128288(n+2)]` -/
def P10271551180150044501.Spec : Prop :=
  ∀ n, (P10271551180150044501.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P17309702538636797898

`∩[A045331(n+1), A128288(n+2)]`
-/

namespace A107136.P17309702538636797898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P17309702538636797898

namespace A107136

/-- `∩[A045331(n+1), A128288(n+2)]` -/
def P17309702538636797898.Spec : Prop :=
  ∀ n, (P17309702538636797898.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P6622170067479172342

`∩[A141179(n+1), A279815(n+1)]`
-/

namespace A107136.P6622170067479172342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P6622170067479172342

namespace A107136

/-- `∩[A141179(n+1), A279815(n+1)]` -/
def P6622170067479172342.Spec : Prop :=
  ∀ n, (P6622170067479172342.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P4403343155743793927

`∩[A279815(n+1), A128288(n+2)]`
-/

namespace A107136.P4403343155743793927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P4403343155743793927

namespace A107136

/-- `∩[A279815(n+1), A128288(n+2)]` -/
def P4403343155743793927.Spec : Prop :=
  ∀ n, (P4403343155743793927.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P2218617708724718667

`∩[A038879(n+1), A106952(n+1)]`
-/

namespace A107136.P2218617708724718667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P2218617708724718667

namespace A107136

/-- `∩[A038879(n+1), A106952(n+1)]` -/
def P2218617708724718667.Spec : Prop :=
  ∀ n, (P2218617708724718667.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P12415026820967226305

`∩[A097955(n+1), A106952(n+1)]`
-/

namespace A107136.P12415026820967226305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P12415026820967226305

namespace A107136

/-- `∩[A097955(n+1), A106952(n+1)]` -/
def P12415026820967226305.Spec : Prop :=
  ∀ n, (P12415026820967226305.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P7409936477049740498

`∩[A003629(n+1), A106952(n+1)]`
-/

namespace A107136.P7409936477049740498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P7409936477049740498

namespace A107136

/-- `∩[A003629(n+1), A106952(n+1)]` -/
def P7409936477049740498.Spec : Prop :=
  ∀ n, (P7409936477049740498.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P8929391344081595146

`∩[A042999(n+1), A106952(n+1)]`
-/

namespace A107136.P8929391344081595146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P8929391344081595146

namespace A107136

/-- `∩[A042999(n+1), A106952(n+1)]` -/
def P8929391344081595146.Spec : Prop :=
  ∀ n, (P8929391344081595146.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P16344981068366979388

`∩[A055664(n+1), A141179(n+1)]`
-/

namespace A107136.P16344981068366979388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P16344981068366979388

namespace A107136

/-- `∩[A055664(n+1), A141179(n+1)]` -/
def P16344981068366979388.Spec : Prop :=
  ∀ n, (P16344981068366979388.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P561768605291803131

`∩[A055664(n+1), A128288(n+2)]`
-/

namespace A107136.P561768605291803131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P561768605291803131

namespace A107136

/-- `∩[A055664(n+1), A128288(n+2)]` -/
def P561768605291803131.Spec : Prop :=
  ∀ n, (P561768605291803131.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P12913702723198396082

`∩[A106952(n+1), A319041(n+1)]`
-/

namespace A107136.P12913702723198396082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P12913702723198396082

namespace A107136

/-- `∩[A106952(n+1), A319041(n+1)]` -/
def P12913702723198396082.Spec : Prop :=
  ∀ n, (P12913702723198396082.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P6885975079537912357

`∩[A106952(n+1), A391367(n+1)]`
-/

namespace A107136.P6885975079537912357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P6885975079537912357

namespace A107136

/-- `∩[A106952(n+1), A391367(n+1)]` -/
def P6885975079537912357.Spec : Prop :=
  ∀ n, (P6885975079537912357.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P3646394587997246612

`∩[A106952(n+1), A270699(n+1)]`
-/

namespace A107136.P3646394587997246612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P3646394587997246612

namespace A107136

/-- `∩[A106952(n+1), A270699(n+1)]` -/
def P3646394587997246612.Spec : Prop :=
  ∀ n, (P3646394587997246612.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P672113141501329176

`∩[A059263(n+1), A106952(n+1)]`
-/

namespace A107136.P672113141501329176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P672113141501329176

namespace A107136

/-- `∩[A059263(n+1), A106952(n+1)]` -/
def P672113141501329176.Spec : Prop :=
  ∀ n, (P672113141501329176.a n : ℤ) = A107136 (n + 1)

end A107136

/-! ## A107136.P4987336752434273794

`∩[A059639(n+1), A106952(n+1)]`
-/

namespace A107136.P4987336752434273794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P4987336752434273794

namespace A107136

/-- `∩[A059639(n+1), A106952(n+1)]` -/
def P4987336752434273794.Spec : Prop :=
  ∀ n, (P4987336752434273794.a n : ℤ) = A107136 (n + 1)

end A107136

/-!
# A107137: Primes of the form 2x^2 + 15y^2.

The programs for A107137, the canonical program `A107137.P776458122758253668` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107137 has offset 1).

The definition of A107137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107137.P5892775122409553192

`∩[A040992(n+1), A106859(n+1)]`
-/

namespace A107137.P5892775122409553192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P5892775122409553192

namespace A107137

/-- `∩[A040992(n+1), A106859(n+1)]` -/
def P5892775122409553192.Spec : Prop :=
  ∀ n, (P5892775122409553192.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P4590696030672233388

`∩[A040992(n+1), A343241(n+1)]`
-/

namespace A107137.P4590696030672233388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P4590696030672233388

namespace A107137

/-- `∩[A040992(n+1), A343241(n+1)]` -/
def P4590696030672233388.Spec : Prop :=
  ∀ n, (P4590696030672233388.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P8040422965655677769

`∩[A049542(n+1), A106859(n+1)]`
-/

namespace A107137.P8040422965655677769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P8040422965655677769

namespace A107137

/-- `∩[A049542(n+1), A106859(n+1)]` -/
def P8040422965655677769.Spec : Prop :=
  ∀ n, (P8040422965655677769.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P12551977923696004972

`∩[A049542(n+1), A343241(n+1)]`
-/

namespace A107137.P12551977923696004972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P12551977923696004972

namespace A107137

/-- `∩[A049542(n+1), A343241(n+1)]` -/
def P12551977923696004972.Spec : Prop :=
  ∀ n, (P12551977923696004972.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P776458122758253668

`∩[A038873(n+1), A106859(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107137

/-- `∩[A038873(n+1), A106859(n+1)]` -/
def P776458122758253668.Spec : Prop :=
  ∀ n, (P776458122758253668.a n : ℤ) = A107137 (n + 1)

theorem P776458122758253668.correct : P776458122758253668.Spec := by
  intro n
  simp only [A107137, Nat.add_sub_cancel]

end A107137

/-! ## A107137.P17543611857943490690

`∩[A038873(n+1), A343241(n+1)]`
-/

namespace A107137.P17543611857943490690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P17543611857943490690

namespace A107137

/-- `∩[A038873(n+1), A343241(n+1)]` -/
def P17543611857943490690.Spec : Prop :=
  ∀ n, (P17543611857943490690.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P9928901329441340710

`∩[A055673(n+1), A106859(n+1)]`
-/

namespace A107137.P9928901329441340710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P9928901329441340710

namespace A107137

/-- `∩[A055673(n+1), A106859(n+1)]` -/
def P9928901329441340710.Spec : Prop :=
  ∀ n, (P9928901329441340710.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P5798025343936244349

`∩[A055673(n+1), A343241(n+1)]`
-/

namespace A107137.P5798025343936244349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P5798025343936244349

namespace A107137

/-- `∩[A055673(n+1), A343241(n+1)]` -/
def P5798025343936244349.Spec : Prop :=
  ∀ n, (P5798025343936244349.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P15870896172277601960

`∩[A049550(n+1), A106859(n+1)]`
-/

namespace A107137.P15870896172277601960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P15870896172277601960

namespace A107137

/-- `∩[A049550(n+1), A106859(n+1)]` -/
def P15870896172277601960.Spec : Prop :=
  ∀ n, (P15870896172277601960.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P16711221694356747656

`∩[A049550(n+1), A343241(n+1)]`
-/

namespace A107137.P16711221694356747656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P16711221694356747656

namespace A107137

/-- `∩[A049550(n+1), A343241(n+1)]` -/
def P16711221694356747656.Spec : Prop :=
  ∀ n, (P16711221694356747656.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P3371024321124635796

`∩[A049562(n+1), A106859(n+1)]`
-/

namespace A107137.P3371024321124635796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P3371024321124635796

namespace A107137

/-- `∩[A049562(n+1), A106859(n+1)]` -/
def P3371024321124635796.Spec : Prop :=
  ∀ n, (P3371024321124635796.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P6325795179663362286

`∩[A049562(n+1), A343241(n+1)]`
-/

namespace A107137.P6325795179663362286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P6325795179663362286

namespace A107137

/-- `∩[A049562(n+1), A343241(n+1)]` -/
def P6325795179663362286.Spec : Prop :=
  ∀ n, (P6325795179663362286.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P6112546794575648365

`∩[A049582(n+1), A106859(n+1)]`
-/

namespace A107137.P6112546794575648365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P6112546794575648365

namespace A107137

/-- `∩[A049582(n+1), A106859(n+1)]` -/
def P6112546794575648365.Spec : Prop :=
  ∀ n, (P6112546794575648365.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P10678260233057557080

`∩[A049582(n+1), A343241(n+1)]`
-/

namespace A107137.P10678260233057557080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P10678260233057557080

namespace A107137

/-- `∩[A049582(n+1), A343241(n+1)]` -/
def P10678260233057557080.Spec : Prop :=
  ∀ n, (P10678260233057557080.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P17442066313324744154

`∩[A057126(n+1), A106859(n+1)]`
-/

namespace A107137.P17442066313324744154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P17442066313324744154

namespace A107137

/-- `∩[A057126(n+1), A106859(n+1)]` -/
def P17442066313324744154.Spec : Prop :=
  ∀ n, (P17442066313324744154.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P1701685666055080131

`∩[A057126(n+1), A343241(n+1)]`
-/

namespace A107137.P1701685666055080131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P1701685666055080131

namespace A107137

/-- `∩[A057126(n+1), A343241(n+1)]` -/
def P1701685666055080131.Spec : Prop :=
  ∀ n, (P1701685666055080131.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P13152723085411735849

`∩[A028955(n+1), A038873(n+1)]`
-/

namespace A107137.P13152723085411735849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P13152723085411735849

namespace A107137

/-- `∩[A028955(n+1), A038873(n+1)]` -/
def P13152723085411735849.Spec : Prop :=
  ∀ n, (P13152723085411735849.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P1623598607340409238

`∩[A028955(n+1), A040992(n+1)]`
-/

namespace A107137.P1623598607340409238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P1623598607340409238

namespace A107137

/-- `∩[A028955(n+1), A040992(n+1)]` -/
def P1623598607340409238.Spec : Prop :=
  ∀ n, (P1623598607340409238.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P6488723021629146105

`∩[A028955(n+1), A049542(n+1)]`
-/

namespace A107137.P6488723021629146105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P6488723021629146105

namespace A107137

/-- `∩[A028955(n+1), A049542(n+1)]` -/
def P6488723021629146105.Spec : Prop :=
  ∀ n, (P6488723021629146105.a n : ℤ) = A107137 (n + 1)

end A107137

/-! ## A107137.P7878952041026818072

`∩[A028955(n+1), A049550(n+1)]`
-/

namespace A107137.P7878952041026818072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P7878952041026818072

namespace A107137

/-- `∩[A028955(n+1), A049550(n+1)]` -/
def P7878952041026818072.Spec : Prop :=
  ∀ n, (P7878952041026818072.a n : ℤ) = A107137 (n + 1)

end A107137

/-!
# A107138: Primes of the form 3x^2 + 11y^2.

The programs for A107138, there is no canonical definition to state claims against.
-/

/-! ## A107138.P915060568061523233

`∩[A056874(n+1), A141123(n+1)]`
-/

namespace A107138.P915060568061523233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P915060568061523233

/-! ## A107138.P5151297045836583614

`∩[A056874(n+1), A141187(n+1)]`
-/

namespace A107138.P5151297045836583614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P5151297045836583614

/-! ## A107138.P3854912863299117365

`∩[A141123(n+1), A341785(n+1)]`
-/

namespace A107138.P3854912863299117365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P3854912863299117365

/-! ## A107138.P831974604497985793

`∩[A141187(n+1), A341785(n+1)]`
-/

namespace A107138.P831974604497985793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P831974604497985793

/-! ## A107138.P17630094678015286980

`∩[A056874(n+1), A084917(n+1)]`
-/

namespace A107138.P17630094678015286980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P17630094678015286980

/-! ## A107138.P1075311257760561650

`∩[A084917(n+1), A341785(n+1)]`
-/

namespace A107138.P1075311257760561650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P1075311257760561650

/-! ## A107138.P4538229707931398089

`∩[A035247(n+1), A141123(n+1)]`
-/

namespace A107138.P4538229707931398089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P4538229707931398089

/-! ## A107138.P4178818174832515043

`∩[A035247(n+1), A141187(n+1)]`
-/

namespace A107138.P4178818174832515043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P4178818174832515043

/-! ## A107138.P140155292274849342

`∩[A042944(n+1), A056874(n+1)]`
-/

namespace A107138.P140155292274849342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P140155292274849342

/-! ## A107138.P13930972494785766450

`∩[A042944(n+1), A341785(n+1)]`
-/

namespace A107138.P13930972494785766450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P13930972494785766450

/-! ## A107138.P8068416156004547498

`∩[A056874(n+1), A108752(n+1)]`
-/

namespace A107138.P8068416156004547498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P8068416156004547498

/-! ## A107138.P1978436609993894830

`∩[A056874(n+1), A218155(n+1)]`
-/

namespace A107138.P1978436609993894830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P1978436609993894830

/-! ## A107138.P5663542426482771295

`∩[A108752(n+1), A341785(n+1)]`
-/

namespace A107138.P5663542426482771295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P5663542426482771295

/-! ## A107138.P13607050295836101112

`∩[A218155(n+1), A341785(n+1)]`
-/

namespace A107138.P13607050295836101112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107138.P13607050295836101112

/-!
# A107139: Primes of the form 2x^2 + 17y^2.

The programs for A107139, there is no canonical definition to state claims against.
-/

/-! ## A107139.P12081609952562346140

`A112303(ceil(sqrt(A001847(n))))`
-/

namespace A107139.P12081609952562346140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112303 ⌈Real.sqrt (A001847 n : ℝ)⌉.toNat

end

end A107139.P12081609952562346140

/-! ## A107139.P7657828712130913970

`p?[A047211(∑[A185316(n)])]`
-/

namespace A107139.P7657828712130913970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107139.P7657828712130913970

/-!
# A107140: Primes of the form 5x^2 + 7y^2.

The programs for A107140, there is no canonical definition to state claims against.
-/

/-! ## A107140.P14721698898940847521

`p?[A020686(n+1)]`
-/

namespace A107140.P14721698898940847521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107140.P14721698898940847521

/-! ## A107140.P3689259119629774061

`p?[record[A020686(A328397(n))]]`
-/

namespace A107140.P3689259119629774061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107140.P3689259119629774061

/-! ## A107140.P10769262975592320795

`∩[A020686(n+1), A042990(n)]`
-/

namespace A107140.P10769262975592320795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P10769262975592320795

/-! ## A107140.P11620537497626703126

`∩[A009087(n+1), A020686(n+1)]`
-/

namespace A107140.P11620537497626703126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P11620537497626703126

/-! ## A107140.P12131203269806450287

`∩[A020686(n+1), A040159(n+1)]`
-/

namespace A107140.P12131203269806450287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P12131203269806450287

/-! ## A107140.P555813701114020061

`∩[A020686(n+1), A040161(n+1)]`
-/

namespace A107140.P555813701114020061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P555813701114020061

/-! ## A107140.P5367219054391712188

`∩[A020686(n+1), A040165(n+1)]`
-/

namespace A107140.P5367219054391712188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P5367219054391712188

/-! ## A107140.P5411902731005309414

`∩[A020686(n+1), A040169(n+1)]`
-/

namespace A107140.P5411902731005309414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P5411902731005309414

/-! ## A107140.P1457851023448700411

`∩[A020686(n+1), A040171(n+1)]`
-/

namespace A107140.P1457851023448700411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P1457851023448700411

/-! ## A107140.P513824986762682364

`∩[A020686(n+1), A040177(n+1)]`
-/

namespace A107140.P513824986762682364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P513824986762682364

/-! ## A107140.P3598557487526651573

`∩[A020686(n+1), A040179(n+1)]`
-/

namespace A107140.P3598557487526651573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P3598557487526651573

/-! ## A107140.P5370969536516075175

`∩[A020686(n+1), A040184(n+1)]`
-/

namespace A107140.P5370969536516075175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P5370969536516075175

/-! ## A107140.P7641823540019154094

`∩[A020686(n+1), A040970(n+1)]`
-/

namespace A107140.P7641823540019154094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P7641823540019154094

/-! ## A107140.P5002657948705334584

`∩[A020686(n+1), A040972(n+1)]`
-/

namespace A107140.P5002657948705334584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P5002657948705334584

/-! ## A107140.P3612360321201330379

`∩[A020686(n+1), A040974(n+1)]`
-/

namespace A107140.P3612360321201330379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P3612360321201330379

/-! ## A107140.P10892863781376783399

`∩[A020686(n+1), A040978(n+1)]`
-/

namespace A107140.P10892863781376783399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P10892863781376783399

/-! ## A107140.P917884676723976514

`∩[A020686(n+1), A040980(n+1)]`
-/

namespace A107140.P917884676723976514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P917884676723976514

/-! ## A107140.P17382186708861933432

`∩[A020686(n+1), A040982(n+1)]`
-/

namespace A107140.P17382186708861933432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P17382186708861933432

/-! ## A107140.P12568496936032640541

`∩[A020686(n+1), A040986(n+1)]`
-/

namespace A107140.P12568496936032640541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107140.P12568496936032640541

/-!
# A107141: Primes of the form 4x^2 + 9y^2.

The programs for A107141, there is no canonical definition to state claims against.
-/

/-! ## A107141.P12682714132619153805

`p?[gcd(A002972(n+1)%3, A002144(n+1))]`
-/

namespace A107141.P12682714132619153805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A002972 (n + 1)) 3) (A002144 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107141.P12682714132619153805

/-! ## A107141.P1951306395607935184

`∩[A038874(n+1), A040125(n+1)]`
-/

namespace A107141.P1951306395607935184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P1951306395607935184

/-! ## A107141.P3146944179141783151

`∩[A040125(n+1), A068228(n+1)]`
-/

namespace A107141.P3146944179141783151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P3146944179141783151

/-! ## A107141.P1397020111185002970

`∩[A040125(n+1), A097933(n+1)]`
-/

namespace A107141.P1397020111185002970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P1397020111185002970

/-! ## A107141.P12869247846842997424

`∩[A040125(n+1), A155560(n+1)]`
-/

namespace A107141.P12869247846842997424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P12869247846842997424

/-! ## A107141.P13331264625521327384

`∩[A040125(n+1), A155563(n+1)]`
-/

namespace A107141.P13331264625521327384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P13331264625521327384

/-! ## A107141.P2000039930635252327

`∩[A040125(n+1), A264732(n+1)]`
-/

namespace A107141.P2000039930635252327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P2000039930635252327

/-! ## A107141.P4157295979561532065

`∩[A040125(n+1), A296933(n+1)]`
-/

namespace A107141.P4157295979561532065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P4157295979561532065

/-! ## A107141.P16826727040423346257

`∩[A040125(n+1), A351537(n+1)]`
-/

namespace A107141.P16826727040423346257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P16826727040423346257

/-! ## A107141.P4723955477171795551

`∩[A040125(n+1), A353198(n+1)]`
-/

namespace A107141.P4723955477171795551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P4723955477171795551

/-! ## A107141.P14734266323106893780

`∩[A040125(n+1), A354467(n+1)]`
-/

namespace A107141.P14734266323106893780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P14734266323106893780

/-! ## A107141.P8165271654342069493

`∩[A040125(n+1), A365313(n+1)]`
-/

namespace A107141.P8165271654342069493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P8165271654342069493

/-! ## A107141.P3923688878854483075

`∩[A040125(n+1), A391369(n+1)]`
-/

namespace A107141.P3923688878854483075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P3923688878854483075

/-! ## A107141.P9905758050291050614

`∩[A040125(n+1), A072330(n+1)]`
-/

namespace A107141.P9905758050291050614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P9905758050291050614

/-! ## A107141.P5899259825949340719

`∩[A040125(n+1), A017533(n)]`
-/

namespace A107141.P5899259825949340719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P5899259825949340719

/-! ## A107141.P17794197385375898775

`p?[A020684(n+1)]`
-/

namespace A107141.P17794197385375898775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107141.P17794197385375898775

/-! ## A107141.P12434249818157634361

`p?[record[A020684(A258451(n))]]`
-/

namespace A107141.P12434249818157634361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020684 (A258451 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107141.P12434249818157634361

/-! ## A107141.P578872093942036707

`p?[record[A020684(A331300(n))]]`
-/

namespace A107141.P578872093942036707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020684 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107141.P578872093942036707

/-! ## A107141.P1205110269603795023

`∩[A002144(n+1), A020684(n+1)]`
-/

namespace A107141.P1205110269603795023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P1205110269603795023

/-! ## A107141.P16037897621270982503

`∩[A002313(n+1), A020684(n+1)]`
-/

namespace A107141.P16037897621270982503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107141.P16037897621270982503

/-!
# A107142: Primes of the form x^2 + 36y^2.

The programs for A107142, there is no canonical definition to state claims against.
-/

/-! ## A107142.P1157748327370203148

`∩[A008846(n+1), A040124(n+1)]`
-/

namespace A107142.P1157748327370203148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P1157748327370203148

/-! ## A107142.P8184309662652515349

`∩[A040124(n+1), A068228(n+1)]`
-/

namespace A107142.P8184309662652515349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P8184309662652515349

/-! ## A107142.P8670311790498605589

`∩[A040124(n+1), A191218(n+1)]`
-/

namespace A107142.P8670311790498605589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P8670311790498605589

/-! ## A107142.P7175010696075246818

`∩[A040124(n+1), A351537(n+1)]`
-/

namespace A107142.P7175010696075246818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P7175010696075246818

/-! ## A107142.P11388214154031271147

`∩[A040124(n+1), A354467(n+1)]`
-/

namespace A107142.P11388214154031271147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P11388214154031271147

/-! ## A107142.P9223395268908858909

`∩[A002144(n+1), A040124(n+1)]`
-/

namespace A107142.P9223395268908858909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P9223395268908858909

/-! ## A107142.P11165723991156391124

`∩[A002476(n+1), A040124(n+1)]`
-/

namespace A107142.P11165723991156391124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P11165723991156391124

/-! ## A107142.P1783130839699722470

`∩[A040124(n+1), A123365(n+1)]`
-/

namespace A107142.P1783130839699722470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P1783130839699722470

/-! ## A107142.P845847464524753018

`∩[A040124(n+1), A280084(n+1)]`
-/

namespace A107142.P845847464524753018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P845847464524753018

/-! ## A107142.P17390918298323362556

`p?[gcd(A002973(n+1)%3, A002144(n+1))]`
-/

namespace A107142.P17390918298323362556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A002973 (n + 1)) 3) (A002144 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107142.P17390918298323362556

/-! ## A107142.P13693604835353506705

`∩[A040124(n+1), A120960(n+1)]`
-/

namespace A107142.P13693604835353506705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P13693604835353506705

/-! ## A107142.P7122531449536515130

`∩[A040124(n+1), A133290(n+1)]`
-/

namespace A107142.P7122531449536515130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P7122531449536515130

/-! ## A107142.P5945933679060064360

`∩[A040124(n+1), A354936(n+1)]`
-/

namespace A107142.P5945933679060064360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P5945933679060064360

/-! ## A107142.P16116666009516604243

`∩[A040124(n+1), A085759(n+1)]`
-/

namespace A107142.P16116666009516604243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P16116666009516604243

/-! ## A107142.P6710784196745061001

`∩[A040124(n+1), A137827(n+1)]`
-/

namespace A107142.P6710784196745061001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P6710784196745061001

/-! ## A107142.P16241747295080090152

`∩[A040124(n+1), A353198(n+1)]`
-/

namespace A107142.P16241747295080090152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P16241747295080090152

/-! ## A107142.P12206443436060566319

`∩[A040124(n+1), A155560(n+1)]`
-/

namespace A107142.P12206443436060566319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P12206443436060566319

/-! ## A107142.P3928382335040017822

`∩[A040124(n+1), A264732(n+1)]`
-/

namespace A107142.P3928382335040017822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P3928382335040017822

/-! ## A107142.P3139196636625334683

`∩[A040124(n+1), A155563(n+1)]`
-/

namespace A107142.P3139196636625334683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P3139196636625334683

/-! ## A107142.P12210809016546128720

`∩[A040124(n+1), A351535(n+1)]`
-/

namespace A107142.P12210809016546128720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107142.P12210809016546128720

/-!
# A107143: Primes of the form 2x^2 + 19y^2.

The programs for A107143, there is no canonical definition to state claims against.
-/

/-! ## A107143.P1177659251120081097

`A368278(A090879(n+1))`
-/

namespace A107143.P1177659251120081097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368278 (A090879 (n + 1)).toNat

end

end A107143.P1177659251120081097

/-!
# A107144: Primes of the form 5x^2 + 8y^2.

The programs for A107144, the canonical program `A107144.P11431327978363662706` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107144 has offset 1).

The definition of A107144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107144.P2053064412928482719

`∪[A139860(n+1), A139899(n+1)]`
-/

namespace A107144.P2053064412928482719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P2053064412928482719

namespace A107144

/-- `∪[A139860(n+1), A139899(n+1)]` -/
def P2053064412928482719.Spec : Prop :=
  ∀ n, (P2053064412928482719.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P5096976717720536114

`∩[A008846(n+1), A141179(n+1)]`
-/

namespace A107144.P5096976717720536114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P5096976717720536114

namespace A107144

/-- `∩[A008846(n+1), A141179(n+1)]` -/
def P5096976717720536114.Spec : Prop :=
  ∀ n, (P5096976717720536114.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P11431327978363662706

`∩[A007521(n+1), A141179(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107144

/-- `∩[A007521(n+1), A141179(n+1)]` -/
def P11431327978363662706.Spec : Prop :=
  ∀ n, (P11431327978363662706.a n : ℤ) = A107144 (n + 1)

theorem P11431327978363662706.correct : P11431327978363662706.Spec := by
  intro n
  simp only [A107144, Nat.add_sub_cancel]

end A107144

/-! ## A107144.P18347812406169102040

`∩[A007521(n+1), A106889(n+1)]`
-/

namespace A107144.P18347812406169102040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P18347812406169102040

namespace A107144

/-- `∩[A007521(n+1), A106889(n+1)]` -/
def P18347812406169102040.Spec : Prop :=
  ∀ n, (P18347812406169102040.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P13448996382995025698

`∩[A008846(n+1), A106889(n+1)]`
-/

namespace A107144.P13448996382995025698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P13448996382995025698

namespace A107144

/-- `∩[A008846(n+1), A106889(n+1)]` -/
def P13448996382995025698.Spec : Prop :=
  ∀ n, (P13448996382995025698.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P15989555194196771298

`∩[A053028(n+1), A106889(n+1)]`
-/

namespace A107144.P15989555194196771298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P15989555194196771298

namespace A107144

/-- `∩[A053028(n+1), A106889(n+1)]` -/
def P15989555194196771298.Spec : Prop :=
  ∀ n, (P15989555194196771298.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P4836591770529792661

`∩[A053028(n+1), A141179(n+1)]`
-/

namespace A107144.P4836591770529792661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P4836591770529792661

namespace A107144

/-- `∩[A053028(n+1), A141179(n+1)]` -/
def P4836591770529792661.Spec : Prop :=
  ∀ n, (P4836591770529792661.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P5648921626546428172

`∩[A004627(n+1), A106889(n+1)]`
-/

namespace A107144.P5648921626546428172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P5648921626546428172

namespace A107144

/-- `∩[A004627(n+1), A106889(n+1)]` -/
def P5648921626546428172.Spec : Prop :=
  ∀ n, (P5648921626546428172.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P15341790756779075983

`∩[A004627(n+1), A141179(n+1)]`
-/

namespace A107144.P15341790756779075983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P15341790756779075983

namespace A107144

/-- `∩[A004627(n+1), A141179(n+1)]` -/
def P15341790756779075983.Spec : Prop :=
  ∀ n, (P15341790756779075983.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P16834755139760047985

`∩[A002144(n+1), A106889(n+1)]`
-/

namespace A107144.P16834755139760047985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P16834755139760047985

namespace A107144

/-- `∩[A002144(n+1), A106889(n+1)]` -/
def P16834755139760047985.Spec : Prop :=
  ∀ n, (P16834755139760047985.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P4753499260143500040

`∩[A002144(n+1), A141179(n+1)]`
-/

namespace A107144.P4753499260143500040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P4753499260143500040

namespace A107144

/-- `∩[A002144(n+1), A141179(n+1)]` -/
def P4753499260143500040.Spec : Prop :=
  ∀ n, (P4753499260143500040.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P14776684175920152324

`∩[A004627(n+1), A293859(n+1)]`
-/

namespace A107144.P14776684175920152324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P14776684175920152324

namespace A107144

/-- `∩[A004627(n+1), A293859(n+1)]` -/
def P14776684175920152324.Spec : Prop :=
  ∀ n, (P14776684175920152324.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P1877462637402900300

`∩[A004627(n+1), A038879(n+1)]`
-/

namespace A107144.P1877462637402900300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P1877462637402900300

namespace A107144

/-- `∩[A004627(n+1), A038879(n+1)]` -/
def P1877462637402900300.Spec : Prop :=
  ∀ n, (P1877462637402900300.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P1399010389342538020

`∩[A007521(n+1), A038879(n+1)]`
-/

namespace A107144.P1399010389342538020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P1399010389342538020

namespace A107144

/-- `∩[A007521(n+1), A038879(n+1)]` -/
def P1399010389342538020.Spec : Prop :=
  ∀ n, (P1399010389342538020.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P1520040671096250649

`∩[A003628(n+1), A141179(n+1)]`
-/

namespace A107144.P1520040671096250649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P1520040671096250649

namespace A107144

/-- `∩[A003628(n+1), A141179(n+1)]` -/
def P1520040671096250649.Spec : Prop :=
  ∀ n, (P1520040671096250649.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P16433663562691396730

`∩[A003629(n+1), A106889(n+1)]`
-/

namespace A107144.P16433663562691396730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P16433663562691396730

namespace A107144

/-- `∩[A003629(n+1), A106889(n+1)]` -/
def P16433663562691396730.Spec : Prop :=
  ∀ n, (P16433663562691396730.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P18074282626117958800

`∩[A106889(n+1), A120960(n+1)]`
-/

namespace A107144.P18074282626117958800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P18074282626117958800

namespace A107144

/-- `∩[A106889(n+1), A120960(n+1)]` -/
def P18074282626117958800.Spec : Prop :=
  ∀ n, (P18074282626117958800.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P11384823646960450222

`∩[A004627(n+1), A042993(n+1)]`
-/

namespace A107144.P11384823646960450222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P11384823646960450222

namespace A107144

/-- `∩[A004627(n+1), A042993(n+1)]` -/
def P11384823646960450222.Spec : Prop :=
  ∀ n, (P11384823646960450222.a n : ℤ) = A107144 (n + 1)

end A107144

/-! ## A107144.P16143023585088272388

`∩[A007521(n+1), A042993(n+1)]`
-/

namespace A107144.P16143023585088272388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P16143023585088272388

namespace A107144

/-- `∩[A007521(n+1), A042993(n+1)]` -/
def P16143023585088272388.Spec : Prop :=
  ∀ n, (P16143023585088272388.a n : ℤ) = A107144 (n + 1)

end A107144

/-!
# A107145: Primes of the form x^2 + 40y^2.

The programs for A107145, the canonical program `A107145.P8009869190067062348` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107145 has offset 1).

The definition of A107145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107145.P8009869190067062348

`p?[a(n-2)+40]` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107145

/-- `p?[a(n-2)+40]` -/
def P8009869190067062348.Spec : Prop :=
  ∀ n, (P8009869190067062348.a n : ℤ) = A107145 (n + 1)

theorem P8009869190067062348.correct : P8009869190067062348.Spec := by
  intro n
  simp only [A107145, Nat.add_sub_cancel]

end A107145

/-! ## A107145.P16376768333182226341

`∩[A008846(n+1), A141180(n+1)]`
-/

namespace A107145.P16376768333182226341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P16376768333182226341

namespace A107145

/-- `∩[A008846(n+1), A141180(n+1)]` -/
def P16376768333182226341.Spec : Prop :=
  ∀ n, (P16376768333182226341.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P1121105151287323709

`∩[A007519(n+1), A033201(n+1)]`
-/

namespace A107145.P1121105151287323709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P1121105151287323709

namespace A107145

/-- `∩[A007519(n+1), A033201(n+1)]` -/
def P1121105151287323709.Spec : Prop :=
  ∀ n, (P1121105151287323709.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P4910634643583368478

`∩[A008846(n+1), A033201(n+1)]`
-/

namespace A107145.P4910634643583368478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P4910634643583368478

namespace A107145

/-- `∩[A008846(n+1), A033201(n+1)]` -/
def P4910634643583368478.Spec : Prop :=
  ∀ n, (P4910634643583368478.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P5369101106040323559

`∩[A209544(n+1), A033201(n+1)]`
-/

namespace A107145.P5369101106040323559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P5369101106040323559

namespace A107145

/-- `∩[A209544(n+1), A033201(n+1)]` -/
def P5369101106040323559.Spec : Prop :=
  ∀ n, (P5369101106040323559.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P14604265424396307096

`∩[A033201(n+1), A332226(n+1)]`
-/

namespace A107145.P14604265424396307096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P14604265424396307096

namespace A107145

/-- `∩[A033201(n+1), A332226(n+1)]` -/
def P14604265424396307096.Spec : Prop :=
  ∀ n, (P14604265424396307096.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P14150944241821829302

`∩[A033205(n+1), A332226(n+1)]`
-/

namespace A107145.P14150944241821829302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P14150944241821829302

namespace A107145

/-- `∩[A033205(n+1), A332226(n+1)]` -/
def P14150944241821829302.Spec : Prop :=
  ∀ n, (P14150944241821829302.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P7112726166529264949

`∩[A004625(n+1), A033201(n+1)]`
-/

namespace A107145.P7112726166529264949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P7112726166529264949

namespace A107145

/-- `∩[A004625(n+1), A033201(n+1)]` -/
def P7112726166529264949.Spec : Prop :=
  ∀ n, (P7112726166529264949.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P14577251467560878984

`∩[A004625(n+1), A033205(n+1)]`
-/

namespace A107145.P14577251467560878984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P14577251467560878984

namespace A107145

/-- `∩[A004625(n+1), A033205(n+1)]` -/
def P14577251467560878984.Spec : Prop :=
  ∀ n, (P14577251467560878984.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P11035815573781402815

`∩[A033201(n+1), A191218(n+1)]`
-/

namespace A107145.P11035815573781402815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P11035815573781402815

namespace A107145

/-- `∩[A033201(n+1), A191218(n+1)]` -/
def P11035815573781402815.Spec : Prop :=
  ∀ n, (P11035815573781402815.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P7837686145608241627

`∩[A141180(n+1), A191218(n+1)]`
-/

namespace A107145.P7837686145608241627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P7837686145608241627

namespace A107145

/-- `∩[A141180(n+1), A191218(n+1)]` -/
def P7837686145608241627.Spec : Prop :=
  ∀ n, (P7837686145608241627.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P9951387748118130645

`∩[A004625(n+1), A045468(n+1)]`
-/

namespace A107145.P9951387748118130645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P9951387748118130645

namespace A107145

/-- `∩[A004625(n+1), A045468(n+1)]` -/
def P9951387748118130645.Spec : Prop :=
  ∀ n, (P9951387748118130645.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P874370867878205628

`∩[A001132(n+1), A033201(n+1)]`
-/

namespace A107145.P874370867878205628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P874370867878205628

namespace A107145

/-- `∩[A001132(n+1), A033201(n+1)]` -/
def P874370867878205628.Spec : Prop :=
  ∀ n, (P874370867878205628.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P2174501497688522055

`∩[A001132(n+1), A033205(n+1)]`
-/

namespace A107145.P2174501497688522055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P2174501497688522055

namespace A107145

/-- `∩[A001132(n+1), A033205(n+1)]` -/
def P2174501497688522055.Spec : Prop :=
  ∀ n, (P2174501497688522055.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P429935957480833981

`∩[A033201(n+1), A038873(n+1)]`
-/

namespace A107145.P429935957480833981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P429935957480833981

namespace A107145

/-- `∩[A033201(n+1), A038873(n+1)]` -/
def P429935957480833981.Spec : Prop :=
  ∀ n, (P429935957480833981.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P3040514578395319642

`∩[A001132(n+1), A091729(n+1)]`
-/

namespace A107145.P3040514578395319642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P3040514578395319642

namespace A107145

/-- `∩[A001132(n+1), A091729(n+1)]` -/
def P3040514578395319642.Spec : Prop :=
  ∀ n, (P3040514578395319642.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P16793678361968513583

`∩[A216815(n+1), A001132(n+1)]`
-/

namespace A107145.P16793678361968513583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P16793678361968513583

namespace A107145

/-- `∩[A216815(n+1), A001132(n+1)]` -/
def P16793678361968513583.Spec : Prop :=
  ∀ n, (P16793678361968513583.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P2624456593470846199

`∩[A002144(n+1), A033201(n+1)]`
-/

namespace A107145.P2624456593470846199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P2624456593470846199

namespace A107145

/-- `∩[A002144(n+1), A033201(n+1)]` -/
def P2624456593470846199.Spec : Prop :=
  ∀ n, (P2624456593470846199.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P7977658935757414551

`∩[A002313(n+1), A033201(n+1)]`
-/

namespace A107145.P7977658935757414551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107145.P7977658935757414551

namespace A107145

/-- `∩[A002313(n+1), A033201(n+1)]` -/
def P7977658935757414551.Spec : Prop :=
  ∀ n, (P7977658935757414551.a n : ℤ) = A107145 (n + 1)

end A107145

/-! ## A107145.P9857197737077669093

`p?[A155567(n+1)]`
-/

namespace A107145.P9857197737077669093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107145.P9857197737077669093

namespace A107145

/-- `p?[A155567(n+1)]` -/
def P9857197737077669093.Spec : Prop :=
  ∀ n, P9857197737077669093.a n = A107145 (n + 1)

end A107145

/-!
# A107146: Primes of the form 6x^2 + 7y^2.

The programs for A107146, there is no canonical definition to state claims against.
-/

/-! ## A107146.P12998351645213620203

`∪[A139876(n+1), A139880(n+1)]`
-/

namespace A107146.P12998351645213620203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P12998351645213620203

/-! ## A107146.P7759209090841089959

`p?[A020689(n+1)]`
-/

namespace A107146.P7759209090841089959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107146.P7759209090841089959

/-! ## A107146.P3402056203907600936

`∩[A020689(n+1), A038885(n+1)]`
-/

namespace A107146.P3402056203907600936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P3402056203907600936

/-! ## A107146.P10127885372437676976

`∩[A002476(n+1), A020689(n+1)]`
-/

namespace A107146.P10127885372437676976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P10127885372437676976

/-! ## A107146.P3536634340868447233

`∩[A007645(n+1), A020689(n+1)]`
-/

namespace A107146.P3536634340868447233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P3536634340868447233

/-! ## A107146.P3242463690497816785

`∩[A020689(n+1), A045331(n+1)]`
-/

namespace A107146.P3242463690497816785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P3242463690497816785

/-! ## A107146.P15083015049198239278

`∩[A020689(n+1), A045375(n+1)]`
-/

namespace A107146.P15083015049198239278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P15083015049198239278

/-! ## A107146.P3185684631562601703

`∩[A002476(n+1), A141191(n+1)]`
-/

namespace A107146.P3185684631562601703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P3185684631562601703

/-! ## A107146.P12806901379848872227

`∩[A007645(n+1), A141191(n+1)]`
-/

namespace A107146.P12806901379848872227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P12806901379848872227

/-! ## A107146.P2361653264979063176

`∩[A045331(n+1), A141191(n+1)]`
-/

namespace A107146.P2361653264979063176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P2361653264979063176

/-! ## A107146.P4210021317982041438

`∩[A045375(n+1), A141191(n+1)]`
-/

namespace A107146.P4210021317982041438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P4210021317982041438

/-! ## A107146.P17832663974006487634

`∩[A123365(n+1), A141191(n+1)]`
-/

namespace A107146.P17832663974006487634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P17832663974006487634

/-! ## A107146.P9930759805677041814

`∩[A141191(n+1), A279815(n+1)]`
-/

namespace A107146.P9930759805677041814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P9930759805677041814

/-! ## A107146.P15224310252837153727

`∩[A003628(n+1), A020689(n+1)]`
-/

namespace A107146.P15224310252837153727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P15224310252837153727

/-! ## A107146.P17186844516952172035

`∩[A020689(n+1), A045355(n+1)]`
-/

namespace A107146.P17186844516952172035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P17186844516952172035

/-! ## A107146.P108561315611537631

`∩[A020689(n+1), A045399(n+1)]`
-/

namespace A107146.P108561315611537631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P108561315611537631

/-! ## A107146.P5061718588347886818

`∩[A055664(n+1), A141191(n+1)]`
-/

namespace A107146.P5061718588347886818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P5061718588347886818

/-! ## A107146.P11932451077796644487

`∩[A133290(n+1), A141191(n+1)]`
-/

namespace A107146.P11932451077796644487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P11932451077796644487

/-! ## A107146.P8381301021710856389

`∩[A020689(n+1), A038877(n+1)]`
-/

namespace A107146.P8381301021710856389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P8381301021710856389

/-! ## A107146.P6096964170493185570

`∩[A038877(n+1), A141191(n+1)]`
-/

namespace A107146.P6096964170493185570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107146.P6096964170493185570

/-!
# A107147: Primes of the form 3x^2 + 14y^2.

The programs for A107147, the canonical program `A107147.P16137290350496970727` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107147 has offset 1).

The definition of A107147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107147.P16137290350496970727

`∪[A139874(n+1), A139879(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107147

/-- `∪[A139874(n+1), A139879(n+1)]` -/
def P16137290350496970727.Spec : Prop :=
  ∀ n, (P16137290350496970727.a n : ℤ) = A107147 (n + 1)

theorem P16137290350496970727.correct : P16137290350496970727.Spec := by
  intro n
  simp only [A107147, Nat.add_sub_cancel]

end A107147

/-! ## A107147.P15420946071983393914

`∩[A033200(n+1), A141160(n+1)]`
-/

namespace A107147.P15420946071983393914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P15420946071983393914

namespace A107147

/-- `∩[A033200(n+1), A141160(n+1)]` -/
def P15420946071983393914.Spec : Prop :=
  ∀ n, (P15420946071983393914.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P10052717130941951667

`∩[A033203(n+1), A141160(n+1)]`
-/

namespace A107147.P10052717130941951667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P10052717130941951667

namespace A107147

/-- `∩[A033203(n+1), A141160(n+1)]` -/
def P10052717130941951667.Spec : Prop :=
  ∀ n, (P10052717130941951667.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P7782527170350056767

`∩[A141160(n+1), A341784(n+1)]`
-/

namespace A107147.P7782527170350056767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P7782527170350056767

namespace A107147

/-- `∩[A141160(n+1), A341784(n+1)]` -/
def P7782527170350056767.Spec : Prop :=
  ∀ n, (P7782527170350056767.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P6193820933934279269

`∩[A038886(n+1), A141160(n+1)]`
-/

namespace A107147.P6193820933934279269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P6193820933934279269

namespace A107147

/-- `∩[A038886(n+1), A141160(n+1)]` -/
def P6193820933934279269.Spec : Prop :=
  ∀ n, (P6193820933934279269.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P324470444826277903

`∩[A141160(n+1), A365082(n+1)]`
-/

namespace A107147.P324470444826277903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P324470444826277903

namespace A107147

/-- `∩[A141160(n+1), A365082(n+1)]` -/
def P324470444826277903.Spec : Prop :=
  ∀ n, (P324470444826277903.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P10603800830392079706

`∩[A051072(n+1), A141160(n+1)]`
-/

namespace A107147.P10603800830392079706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P10603800830392079706

namespace A107147

/-- `∩[A051072(n+1), A141160(n+1)]` -/
def P10603800830392079706.Spec : Prop :=
  ∀ n, (P10603800830392079706.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P1697841972803599897

`∩[A051076(n+1), A141160(n+1)]`
-/

namespace A107147.P1697841972803599897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P1697841972803599897

namespace A107147

/-- `∩[A051076(n+1), A141160(n+1)]` -/
def P1697841972803599897.Spec : Prop :=
  ∀ n, (P1697841972803599897.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P17955511048264192787

`∩[A051078(n+1), A141160(n+1)]`
-/

namespace A107147.P17955511048264192787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P17955511048264192787

namespace A107147

/-- `∩[A051078(n+1), A141160(n+1)]` -/
def P17955511048264192787.Spec : Prop :=
  ∀ n, (P17955511048264192787.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P7874580499006276900

`∩[A051090(n+1), A141160(n+1)]`
-/

namespace A107147.P7874580499006276900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P7874580499006276900

namespace A107147

/-- `∩[A051090(n+1), A141160(n+1)]` -/
def P7874580499006276900.Spec : Prop :=
  ∀ n, (P7874580499006276900.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P2478779324549704752

`∩[A034031(n+1), A141160(n+1)]`
-/

namespace A107147.P2478779324549704752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P2478779324549704752

namespace A107147

/-- `∩[A034031(n+1), A141160(n+1)]` -/
def P2478779324549704752.Spec : Prop :=
  ∀ n, (P2478779324549704752.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P7335223694575261030

`∩[A057127(n+1), A141160(n+1)]`
-/

namespace A107147.P7335223694575261030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P7335223694575261030

namespace A107147

/-- `∩[A057127(n+1), A141160(n+1)]` -/
def P7335223694575261030.Spec : Prop :=
  ∀ n, (P7335223694575261030.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P2122280949485125881

`∩[A047471(n+1), A141160(n+1)]`
-/

namespace A107147.P2122280949485125881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P2122280949485125881

namespace A107147

/-- `∩[A047471(n+1), A141160(n+1)]` -/
def P2122280949485125881.Spec : Prop :=
  ∀ n, (P2122280949485125881.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P14871412192068177524

`∩[A034034(n+1), A141160(n+1)]`
-/

namespace A107147.P14871412192068177524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P14871412192068177524

namespace A107147

/-- `∩[A034034(n+1), A141160(n+1)]` -/
def P14871412192068177524.Spec : Prop :=
  ∀ n, (P14871412192068177524.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P6124537990223971523

`∩[A141160(n+1), A154777(n+1)]`
-/

namespace A107147.P6124537990223971523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P6124537990223971523

namespace A107147

/-- `∩[A141160(n+1), A154777(n+1)]` -/
def P6124537990223971523.Spec : Prop :=
  ∀ n, (P6124537990223971523.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P14525097782279991936

`∩[A002479(n+1), A141160(n+1)]`
-/

namespace A107147.P14525097782279991936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P14525097782279991936

namespace A107147

/-- `∩[A002479(n+1), A141160(n+1)]` -/
def P14525097782279991936.Spec : Prop :=
  ∀ n, (P14525097782279991936.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P15152269770084835101

`∩[A047400(n+1), A141160(n+1)]`
-/

namespace A107147.P15152269770084835101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P15152269770084835101

namespace A107147

/-- `∩[A047400(n+1), A141160(n+1)]` -/
def P15152269770084835101.Spec : Prop :=
  ∀ n, (P15152269770084835101.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P17648364961084717080

`∩[A047459(n+1), A141160(n+1)]`
-/

namespace A107147.P17648364961084717080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P17648364961084717080

namespace A107147

/-- `∩[A047459(n+1), A141160(n+1)]` -/
def P17648364961084717080.Spec : Prop :=
  ∀ n, (P17648364961084717080.a n : ℤ) = A107147 (n + 1)

end A107147

/-! ## A107147.P5109546891445859687

`∩[A047472(n+1), A141160(n+1)]`
-/

namespace A107147.P5109546891445859687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P5109546891445859687

namespace A107147

/-- `∩[A047472(n+1), A141160(n+1)]` -/
def P5109546891445859687.Spec : Prop :=
  ∀ n, (P5109546891445859687.a n : ℤ) = A107147 (n + 1)

end A107147

/-!
# A107148: Primes of the form 2x^2 + 21y^2.

The programs for A107148, the canonical program `A107148.P16161660040525170745` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107148 has offset 1).

The definition of A107148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107148.P16161660040525170745

`∩[A106927(n+1), A141171(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107148

/-- `∩[A106927(n+1), A141171(n+1)]` -/
def P16161660040525170745.Spec : Prop :=
  ∀ n, (P16161660040525170745.a n : ℤ) = A107148 (n + 1)

theorem P16161660040525170745.correct : P16161660040525170745.Spec := by
  intro n
  simp only [A107148, Nat.add_sub_cancel]

end A107148

/-! ## A107148.P9824935240970490290

`∩[A038876(n+1), A106927(n+1)]`
-/

namespace A107148.P9824935240970490290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P9824935240970490290

namespace A107148

/-- `∩[A038876(n+1), A106927(n+1)]` -/
def P9824935240970490290.Spec : Prop :=
  ∀ n, (P9824935240970490290.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P17881142942334146751

`∩[A045386(n+1), A141171(n+1)]`
-/

namespace A107148.P17881142942334146751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P17881142942334146751

namespace A107148

/-- `∩[A045386(n+1), A141171(n+1)]` -/
def P17881142942334146751.Spec : Prop :=
  ∀ n, (P17881142942334146751.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P17121007701243428084

`∩[A045373(n+1), A141171(n+1)]`
-/

namespace A107148.P17121007701243428084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P17121007701243428084

namespace A107148

/-- `∩[A045373(n+1), A141171(n+1)]` -/
def P17121007701243428084.Spec : Prop :=
  ∀ n, (P17121007701243428084.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P10196773783456242755

`∩[A106927(n+1), A391371(n+1)]`
-/

namespace A107148.P10196773783456242755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P10196773783456242755

namespace A107148

/-- `∩[A106927(n+1), A391371(n+1)]` -/
def P10196773783456242755.Spec : Prop :=
  ∀ n, (P10196773783456242755.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P5966047278896678830

`∩[A038894(n+1), A141171(n+1)]`
-/

namespace A107148.P5966047278896678830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P5966047278896678830

namespace A107148

/-- `∩[A038894(n+1), A141171(n+1)]` -/
def P5966047278896678830.Spec : Prop :=
  ∀ n, (P5966047278896678830.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P17552649058820540102

`∩[A045355(n+1), A106927(n+1)]`
-/

namespace A107148.P17552649058820540102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P17552649058820540102

namespace A107148

/-- `∩[A045355(n+1), A106927(n+1)]` -/
def P17552649058820540102.Spec : Prop :=
  ∀ n, (P17552649058820540102.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P16035428235405014226

`∩[A106927(n+1), A262931(n+1)]`
-/

namespace A107148.P16035428235405014226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P16035428235405014226

namespace A107148

/-- `∩[A106927(n+1), A262931(n+1)]` -/
def P16035428235405014226.Spec : Prop :=
  ∀ n, (P16035428235405014226.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P9683165541962167708

`∩[A106927(n+1), A243805(n+1)]`
-/

namespace A107148.P9683165541962167708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P9683165541962167708

namespace A107148

/-- `∩[A106927(n+1), A243805(n+1)]` -/
def P9683165541962167708.Spec : Prop :=
  ∀ n, (P9683165541962167708.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P17492300270125064340

`∩[A038894(n+1), A242665(n+1)]`
-/

namespace A107148.P17492300270125064340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P17492300270125064340

namespace A107148

/-- `∩[A038894(n+1), A242665(n+1)]` -/
def P17492300270125064340.Spec : Prop :=
  ∀ n, (P17492300270125064340.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P13077078787011981155

`∩[A045373(n+1), A242665(n+1)]`
-/

namespace A107148.P13077078787011981155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P13077078787011981155

namespace A107148

/-- `∩[A045373(n+1), A242665(n+1)]` -/
def P13077078787011981155.Spec : Prop :=
  ∀ n, (P13077078787011981155.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P4162716207890243801

`∩[A045386(n+1), A242665(n+1)]`
-/

namespace A107148.P4162716207890243801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P4162716207890243801

namespace A107148

/-- `∩[A045386(n+1), A242665(n+1)]` -/
def P4162716207890243801.Spec : Prop :=
  ∀ n, (P4162716207890243801.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P12243768861924246002

`∩[A106927(n+1), A242665(n+1)]`
-/

namespace A107148.P12243768861924246002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P12243768861924246002

namespace A107148

/-- `∩[A106927(n+1), A242665(n+1)]` -/
def P12243768861924246002.Spec : Prop :=
  ∀ n, (P12243768861924246002.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P7733103072610301039

`∩[A141171(n+1), A244779(n+1)]`
-/

namespace A107148.P7733103072610301039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P7733103072610301039

namespace A107148

/-- `∩[A141171(n+1), A244779(n+1)]` -/
def P7733103072610301039.Spec : Prop :=
  ∀ n, (P7733103072610301039.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P13379206905297327501

`∩[A035248(n+1), A141171(n+1)]`
-/

namespace A107148.P13379206905297327501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P13379206905297327501

namespace A107148

/-- `∩[A035248(n+1), A141171(n+1)]` -/
def P13379206905297327501.Spec : Prop :=
  ∀ n, (P13379206905297327501.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P4108883807617391988

`∩[A047480(n+1), A106927(n+1)]`
-/

namespace A107148.P4108883807617391988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P4108883807617391988

namespace A107148

/-- `∩[A047480(n+1), A106927(n+1)]` -/
def P4108883807617391988.Spec : Prop :=
  ∀ n, (P4108883807617391988.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P3229377433703117773

`∩[A047350(n+1), A141171(n+1)]`
-/

namespace A107148.P3229377433703117773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P3229377433703117773

namespace A107148

/-- `∩[A047350(n+1), A141171(n+1)]` -/
def P3229377433703117773.Spec : Prop :=
  ∀ n, (P3229377433703117773.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P5582857140553662307

`∩[A047481(n+1), A106927(n+1)]`
-/

namespace A107148.P5582857140553662307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P5582857140553662307

namespace A107148

/-- `∩[A047481(n+1), A106927(n+1)]` -/
def P5582857140553662307.Spec : Prop :=
  ∀ n, (P5582857140553662307.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P3136115950876681155

`∩[A047495(n+1), A106927(n+1)]`
-/

namespace A107148.P3136115950876681155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P3136115950876681155

namespace A107148

/-- `∩[A047495(n+1), A106927(n+1)]` -/
def P3136115950876681155.Spec : Prop :=
  ∀ n, (P3136115950876681155.a n : ℤ) = A107148 (n + 1)

end A107148

/-! ## A107148.P7935774962298397213

`∩[A047578(n+1), A106927(n+1)]`
-/

namespace A107148.P7935774962298397213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P7935774962298397213

namespace A107148

/-- `∩[A047578(n+1), A106927(n+1)]` -/
def P7935774962298397213.Spec : Prop :=
  ∀ n, (P7935774962298397213.a n : ℤ) = A107148 (n + 1)

end A107148

/-!
# A107149: Primes of the form 4x^2 + 11y^2.

The programs for A107149, there is no canonical definition to state claims against.
-/

/-! ## A107149.P1330964976046277143

`∩[A002145(n+1), A033209(n+1)]`
-/

namespace A107149.P1330964976046277143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P1330964976046277143

/-! ## A107149.P17077982070887039224

`∩[A033209(n+1), A045326(n+1)]`
-/

namespace A107149.P17077982070887039224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P17077982070887039224

/-! ## A107149.P16579040480644246354

`∩[A033209(n+1), A085760(n+1)]`
-/

namespace A107149.P16579040480644246354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P16579040480644246354

/-! ## A107149.P15235243264703030696

`∩[A033209(n+1), A197504(n+1)]`
-/

namespace A107149.P15235243264703030696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P15235243264703030696

/-! ## A107149.P11541742883609741157

`∩[A033209(n+1), A332555(n+1)]`
-/

namespace A107149.P11541742883609741157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P11541742883609741157

/-! ## A107149.P1283362613593427331

`∩[A033209(n+1), A292762(n+1)]`
-/

namespace A107149.P1283362613593427331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P1283362613593427331

/-! ## A107149.P3730848352648218761

`∩[A033209(n+1), A066499(n+1)]`
-/

namespace A107149.P3730848352648218761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P3730848352648218761

/-! ## A107149.P7240264110159094461

`∩[A033209(n+1), A097987(n+1)]`
-/

namespace A107149.P7240264110159094461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P7240264110159094461

/-! ## A107149.P4724118384560676334

`∩[A033209(n+1), A094179(n+1)]`
-/

namespace A107149.P4724118384560676334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P4724118384560676334

/-! ## A107149.P14097712481449200240

`filter[A033209(n+1), A359152(#)]`
-/

namespace A107149.P14097712481449200240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A107149.P14097712481449200240

/-! ## A107149.P15551177181861808378

`∩[A033209(n+1), A380787(n+1)]`
-/

namespace A107149.P15551177181861808378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P15551177181861808378

/-! ## A107149.P4502601645558853784

`∩[A033209(n+1), A120127(n+1)]`
-/

namespace A107149.P4502601645558853784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P4502601645558853784

/-! ## A107149.P1563108598492054666

`∩[A033209(n+1), A167181(n+1)]`
-/

namespace A107149.P1563108598492054666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P1563108598492054666

/-! ## A107149.P7396799243920537289

`∩[A033209(n+1), A359153(n+1)]`
-/

namespace A107149.P7396799243920537289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P7396799243920537289

/-! ## A107149.P10698592534577177901

`∩[A033209(n+1), A309388(n+1)]`
-/

namespace A107149.P10698592534577177901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P10698592534577177901

/-! ## A107149.P745997705271202984

`∩[A004614(n+1), A033209(n+1)]`
-/

namespace A107149.P745997705271202984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107149.P745997705271202984

/-! ## A107149.P11218112137918563977

`filter[A033209(n+1), A354028(#)]`
-/

namespace A107149.P11218112137918563977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A107149.P11218112137918563977

/-! ## A107149.P11425978281120647602

`filter[A033209(n+1), A354029(#)]`
-/

namespace A107149.P11425978281120647602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A107149.P11425978281120647602

/-! ## A107149.P6786641276522551068

`filter[A033209(n+1), A354033(#)]`
-/

namespace A107149.P6786641276522551068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A107149.P6786641276522551068

/-! ## A107149.P7934352176840394099

`filter[A033209(n+1), A347871(#)]`
-/

namespace A107149.P7934352176840394099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A107149.P7934352176840394099

/-!
# A107150: Primes of the form x^2 + 44y^2.

The programs for A107150, there is no canonical definition to state claims against.
-/

/-! ## A107150.P3766075432054072782

`A033209(eq[1, A033209(n+1)%4]+1)`
-/

namespace A107150.P3766075432054072782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033209 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107150.P3766075432054072782

/-! ## A107150.P15152454877066569083

`∩[A008846(n+1), A033209(n+1)]`
-/

namespace A107150.P15152454877066569083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P15152454877066569083

/-! ## A107150.P14491437943398137133

`∩[A033209(n+1), A141182(n+1)]`
-/

namespace A107150.P14491437943398137133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P14491437943398137133

/-! ## A107150.P7610916898270289647

`∩[A141182(n+1), A232570(n+1)]`
-/

namespace A107150.P7610916898270289647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P7610916898270289647

/-! ## A107150.P10361528777918341805

`∩[A008846(n+1), A141579(n+1)]`
-/

namespace A107150.P10361528777918341805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P10361528777918341805

/-! ## A107150.P9826223163041500708

`∩[A141182(n+1), A141579(n+1)]`
-/

namespace A107150.P9826223163041500708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P9826223163041500708

/-! ## A107150.P8724835775331771710

`∩[A008846(n+1), A072874(n+1)]`
-/

namespace A107150.P8724835775331771710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P8724835775331771710

/-! ## A107150.P11693042982877459778

`∩[A072874(n+1), A141182(n+1)]`
-/

namespace A107150.P11693042982877459778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P11693042982877459778

/-! ## A107150.P17783169636999400710

`∩[A008846(n+1), A140973(n+1)]`
-/

namespace A107150.P17783169636999400710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P17783169636999400710

/-! ## A107150.P5255741784779081124

`∩[A140973(n+1), A141182(n+1)]`
-/

namespace A107150.P5255741784779081124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P5255741784779081124

/-! ## A107150.P14381542047837307549

`∩[A033209(n+1), A191218(n+1)]`
-/

namespace A107150.P14381542047837307549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P14381542047837307549

/-! ## A107150.P10218068670599357740

`∩[A072874(n+1), A191218(n+1)]`
-/

namespace A107150.P10218068670599357740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P10218068670599357740

/-! ## A107150.P14477058859947951975

`∩[A140973(n+1), A191218(n+1)]`
-/

namespace A107150.P14477058859947951975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P14477058859947951975

/-! ## A107150.P2374152424238265864

`∩[A141579(n+1), A191218(n+1)]`
-/

namespace A107150.P2374152424238265864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P2374152424238265864

/-! ## A107150.P1327325474447957170

`∩[A191218(n+1), A232570(n+1)]`
-/

namespace A107150.P1327325474447957170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P1327325474447957170

/-! ## A107150.P8097653268319697801

`∩[A002144(n+1), A033209(n+1)]`
-/

namespace A107150.P8097653268319697801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P8097653268319697801

/-! ## A107150.P5714756736511341298

`∩[A002313(n+1), A033209(n+1)]`
-/

namespace A107150.P5714756736511341298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P5714756736511341298

/-! ## A107150.P9196506140479568482

`∩[A002144(n+1), A072874(n+1)]`
-/

namespace A107150.P9196506140479568482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P9196506140479568482

/-! ## A107150.P8243727796443383922

`∩[A038881(n+1), A072874(n+1)]`
-/

namespace A107150.P8243727796443383922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P8243727796443383922

/-! ## A107150.P7704480025281353056

`∩[A002144(n+1), A140973(n+1)]`
-/

namespace A107150.P7704480025281353056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107150.P7704480025281353056

/-!
# A107151: Primes of the form 5x^2 + 9y^2.

The programs for A107151, the canonical program `A107151.P15846634840429619920` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107151 has offset 1).

The definition of A107151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107151.P15846634840429619920

`p?[xor(3, (n+1)%3+5*(n+1))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107151

/-- `p?[xor(3, (n+1)%3+5*(n+1))]` -/
def P15846634840429619920.Spec : Prop :=
  ∀ n, (P15846634840429619920.a n : ℤ) = A107151 (n + 1)

theorem P15846634840429619920.correct : P15846634840429619920.Spec := by
  intro n
  simp only [A107151, Nat.add_sub_cancel]

end A107151

/-! ## A107151.P15069990045904623849

`∩[A033205(n+1), A040117(n+1)]`
-/

namespace A107151.P15069990045904623849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P15069990045904623849

namespace A107151

/-- `∩[A033205(n+1), A040117(n+1)]` -/
def P15069990045904623849.Spec : Prop :=
  ∀ n, (P15069990045904623849.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P17585932609561512376

`p?[and(-3, A141785(n+1))]`
-/

namespace A107151.P17585932609561512376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A141785 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107151.P17585932609561512376

namespace A107151

/-- `p?[and(-3, A141785(n+1))]` -/
def P17585932609561512376.Spec : Prop :=
  ∀ n, P17585932609561512376.a n = A107151 (n + 1)

end A107151

/-! ## A107151.P240342193983200394

`∩[A008846(n+1), A141785(n+1)]`
-/

namespace A107151.P240342193983200394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P240342193983200394

namespace A107151

/-- `∩[A008846(n+1), A141785(n+1)]` -/
def P240342193983200394.Spec : Prop :=
  ∀ n, (P240342193983200394.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P823937189779276955

`∩[A141785(n+1), A191218(n+1)]`
-/

namespace A107151.P823937189779276955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P823937189779276955

namespace A107151

/-- `∩[A141785(n+1), A191218(n+1)]` -/
def P823937189779276955.Spec : Prop :=
  ∀ n, (P823937189779276955.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P3814958223834575281

`∩[A040117(n+1), A040998(n+1)]`
-/

namespace A107151.P3814958223834575281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P3814958223834575281

namespace A107151

/-- `∩[A040117(n+1), A040998(n+1)]` -/
def P3814958223834575281.Spec : Prop :=
  ∀ n, (P3814958223834575281.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P15711194830927690132

`∩[A038872(n+1), A040117(n+1)]`
-/

namespace A107151.P15711194830927690132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P15711194830927690132

namespace A107151

/-- `∩[A038872(n+1), A040117(n+1)]` -/
def P15711194830927690132.Spec : Prop :=
  ∀ n, (P15711194830927690132.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P16241482101729218764

`∩[A002144(n+1), A141785(n+1)]`
-/

namespace A107151.P16241482101729218764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P16241482101729218764

namespace A107151

/-- `∩[A002144(n+1), A141785(n+1)]` -/
def P16241482101729218764.Spec : Prop :=
  ∀ n, (P16241482101729218764.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P15089995877133069137

`∩[A141785(n+1), A280084(n+1)]`
-/

namespace A107151.P15089995877133069137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P15089995877133069137

namespace A107151

/-- `∩[A141785(n+1), A280084(n+1)]` -/
def P15089995877133069137.Spec : Prop :=
  ∀ n, (P15089995877133069137.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P8169027169026307577

`∩[A007528(n+1), A033205(n+1)]`
-/

namespace A107151.P8169027169026307577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P8169027169026307577

namespace A107151

/-- `∩[A007528(n+1), A033205(n+1)]` -/
def P8169027169026307577.Spec : Prop :=
  ∀ n, (P8169027169026307577.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P10292454938900458769

`∩[A007528(n+1), A091729(n+1)]`
-/

namespace A107151.P10292454938900458769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P10292454938900458769

namespace A107151

/-- `∩[A007528(n+1), A091729(n+1)]` -/
def P10292454938900458769.Spec : Prop :=
  ∀ n, (P10292454938900458769.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P244317246927340177

`∩[A003627(n+1), A033205(n+1)]`
-/

namespace A107151.P244317246927340177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P244317246927340177

namespace A107151

/-- `∩[A003627(n+1), A033205(n+1)]` -/
def P244317246927340177.Spec : Prop :=
  ∀ n, (P244317246927340177.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P1223053287173709990

`∩[A033205(n+1), A045309(n+1)]`
-/

namespace A107151.P1223053287173709990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P1223053287173709990

namespace A107151

/-- `∩[A033205(n+1), A045309(n+1)]` -/
def P1223053287173709990.Spec : Prop :=
  ∀ n, (P1223053287173709990.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P13733182279264637967

`∩[A033205(n+1), A045410(n+1)]`
-/

namespace A107151.P13733182279264637967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P13733182279264637967

namespace A107151

/-- `∩[A033205(n+1), A045410(n+1)]` -/
def P13733182279264637967.Spec : Prop :=
  ∀ n, (P13733182279264637967.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P1414436605295141764

`∩[A033205(n+1), A056955(n+1)]`
-/

namespace A107151.P1414436605295141764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P1414436605295141764

namespace A107151

/-- `∩[A033205(n+1), A056955(n+1)]` -/
def P1414436605295141764.Spec : Prop :=
  ∀ n, (P1414436605295141764.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P7949429507102913879

`∩[A003627(n+1), A091729(n+1)]`
-/

namespace A107151.P7949429507102913879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P7949429507102913879

namespace A107151

/-- `∩[A003627(n+1), A091729(n+1)]` -/
def P7949429507102913879.Spec : Prop :=
  ∀ n, (P7949429507102913879.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P6548248155602541185

`∩[A045309(n+1), A091729(n+1)]`
-/

namespace A107151.P6548248155602541185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P6548248155602541185

namespace A107151

/-- `∩[A045309(n+1), A091729(n+1)]` -/
def P6548248155602541185.Spec : Prop :=
  ∀ n, (P6548248155602541185.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P16133439298570991060

`∩[A045410(n+1), A091729(n+1)]`
-/

namespace A107151.P16133439298570991060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P16133439298570991060

namespace A107151

/-- `∩[A045410(n+1), A091729(n+1)]` -/
def P16133439298570991060.Spec : Prop :=
  ∀ n, (P16133439298570991060.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P2116082630912414813

`∩[A056955(n+1), A091729(n+1)]`
-/

namespace A107151.P2116082630912414813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P2116082630912414813

namespace A107151

/-- `∩[A056955(n+1), A091729(n+1)]` -/
def P2116082630912414813.Spec : Prop :=
  ∀ n, (P2116082630912414813.a n : ℤ) = A107151 (n + 1)

end A107151

/-! ## A107151.P12918203028758866558

`∩[A055025(n+1), A141785(n+1)]`
-/

namespace A107151.P12918203028758866558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107151.P12918203028758866558

namespace A107151

/-- `∩[A055025(n+1), A141785(n+1)]` -/
def P12918203028758866558.Spec : Prop :=
  ∀ n, (P12918203028758866558.a n : ℤ) = A107151 (n + 1)

end A107151

/-!
# A107152: Primes of the form x^2 + 45y^2.

The programs for A107152, the canonical program `A107152.P3013090277288221645` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107152 has offset 1).

The definition of A107152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107152.P3013090277288221645

`∪[A088955(n+1), A142797(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A107152

/-- `∪[A088955(n+1), A142797(n+1)]` -/
def P3013090277288221645.Spec : Prop :=
  ∀ n, (P3013090277288221645.a n : ℤ) = A107152 (n + 1)

theorem P3013090277288221645.correct : P3013090277288221645.Spec := by
  intro n
  simp only [A107152, Nat.add_sub_cancel]

end A107152

/-! ## A107152.P2537396219080906141

`p?[A243188(n+1)]`
-/

namespace A107152.P2537396219080906141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107152.P2537396219080906141

namespace A107152

/-- `p?[A243188(n+1)]` -/
def P2537396219080906141.Spec : Prop :=
  ∀ n, P2537396219080906141.a n = A107152 (n + 1)

end A107152

/-! ## A107152.P15620929540408789303

`p?[xor(2, A033212(n+1))-2]`
-/

namespace A107152.P15620929540408789303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A033212 (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107152.P15620929540408789303

namespace A107152

/-- `p?[xor(2, A033212(n+1))-2]` -/
def P15620929540408789303.Spec : Prop :=
  ∀ n, P15620929540408789303.a n = A107152 (n + 1)

end A107152

/-! ## A107152.P13633686567919454825

`∩[A008846(n+1), A033212(n+1)]`
-/

namespace A107152.P13633686567919454825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P13633686567919454825

namespace A107152

/-- `∩[A008846(n+1), A033212(n+1)]` -/
def P13633686567919454825.Spec : Prop :=
  ∀ n, (P13633686567919454825.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P14537962668694588629

`∩[A033212(n+1), A243188(n+1)]`
-/

namespace A107152.P14537962668694588629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P14537962668694588629

namespace A107152

/-- `∩[A033212(n+1), A243188(n+1)]` -/
def P14537962668694588629.Spec : Prop :=
  ∀ n, (P14537962668694588629.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P10858414827942235533

`∩[A033212(n+1), A068228(n+1)]`
-/

namespace A107152.P10858414827942235533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P10858414827942235533

namespace A107152

/-- `∩[A033212(n+1), A068228(n+1)]` -/
def P10858414827942235533.Spec : Prop :=
  ∀ n, (P10858414827942235533.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P12102160408726474112

`∩[A068228(n+1), A243174(n+1)]`
-/

namespace A107152.P12102160408726474112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P12102160408726474112

namespace A107152

/-- `∩[A068228(n+1), A243174(n+1)]` -/
def P12102160408726474112.Spec : Prop :=
  ∀ n, (P12102160408726474112.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P13860832445999957785

`∩[A216815(n+1), A243174(n+1)]`
-/

namespace A107152.P13860832445999957785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P13860832445999957785

namespace A107152

/-- `∩[A216815(n+1), A243174(n+1)]` -/
def P13860832445999957785.Spec : Prop :=
  ∀ n, (P13860832445999957785.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P16345048250521167924

`∩[A033205(n+1), A033212(n+1)]`
-/

namespace A107152.P16345048250521167924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P16345048250521167924

namespace A107152

/-- `∩[A033205(n+1), A033212(n+1)]` -/
def P16345048250521167924.Spec : Prop :=
  ∀ n, (P16345048250521167924.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P4399775437486266193

`∩[A033205(n+1), A068228(n+1)]`
-/

namespace A107152.P4399775437486266193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P4399775437486266193

namespace A107152

/-- `∩[A033205(n+1), A068228(n+1)]` -/
def P4399775437486266193.Spec : Prop :=
  ∀ n, (P4399775437486266193.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P16327074032707990385

`∩[A033205(n+1), A243174(n+1)]`
-/

namespace A107152.P16327074032707990385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P16327074032707990385

namespace A107152

/-- `∩[A033205(n+1), A243174(n+1)]` -/
def P16327074032707990385.Spec : Prop :=
  ∀ n, (P16327074032707990385.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P11799059070865828024

`∩[A033205(n+1), A243188(n+1)]`
-/

namespace A107152.P11799059070865828024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P11799059070865828024

namespace A107152

/-- `∩[A033205(n+1), A243188(n+1)]` -/
def P11799059070865828024.Spec : Prop :=
  ∀ n, (P11799059070865828024.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P873397820330405415

`∩[A033212(n+1), A191218(n+1)]`
-/

namespace A107152.P873397820330405415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P873397820330405415

namespace A107152

/-- `∩[A033212(n+1), A191218(n+1)]` -/
def P873397820330405415.Spec : Prop :=
  ∀ n, (P873397820330405415.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P5552785263192302003

`p?[6*A090771(n+1)-5]`
-/

namespace A107152.P5552785263192302003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A090771 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107152.P5552785263192302003

namespace A107152

/-- `p?[6*A090771(n+1)-5]` -/
def P5552785263192302003.Spec : Prop :=
  ∀ n, P5552785263192302003.a n = A107152 (n + 1)

end A107152

/-! ## A107152.P9268574150000776243

`p?[A155570(n+1)]`
-/

namespace A107152.P9268574150000776243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107152.P9268574150000776243

namespace A107152

/-- `p?[A155570(n+1)]` -/
def P9268574150000776243.Spec : Prop :=
  ∀ n, P9268574150000776243.a n = A107152 (n + 1)

end A107152

/-! ## A107152.P459414787750558770

`∩[A045468(n+1), A068228(n+1)]`
-/

namespace A107152.P459414787750558770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P459414787750558770

namespace A107152

/-- `∩[A045468(n+1), A068228(n+1)]` -/
def P459414787750558770.Spec : Prop :=
  ∀ n, (P459414787750558770.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P7960970914562993971

`∩[A045468(n+1), A155570(n+1)]`
-/

namespace A107152.P7960970914562993971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P7960970914562993971

namespace A107152

/-- `∩[A045468(n+1), A155570(n+1)]` -/
def P7960970914562993971.Spec : Prop :=
  ∀ n, (P7960970914562993971.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P17188120933383419839

`∩[A038872(n+1), A068228(n+1)]`
-/

namespace A107152.P17188120933383419839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P17188120933383419839

namespace A107152

/-- `∩[A038872(n+1), A068228(n+1)]` -/
def P17188120933383419839.Spec : Prop :=
  ∀ n, (P17188120933383419839.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P12539048925145737380

`∩[A064739(n+1), A068228(n+1)]`
-/

namespace A107152.P12539048925145737380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P12539048925145737380

namespace A107152

/-- `∩[A064739(n+1), A068228(n+1)]` -/
def P12539048925145737380.Spec : Prop :=
  ∀ n, (P12539048925145737380.a n : ℤ) = A107152 (n + 1)

end A107152

/-! ## A107152.P12322588276737687554

`∩[A038872(n+1), A243188(n+1)]`
-/

namespace A107152.P12322588276737687554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107152.P12322588276737687554

namespace A107152

/-- `∩[A038872(n+1), A243188(n+1)]` -/
def P12322588276737687554.Spec : Prop :=
  ∀ n, (P12322588276737687554.a n : ℤ) = A107152 (n + 1)

end A107152

/-!
# A107153: Primes of the form 2x^2 + 23y^2.

The programs for A107153, there is no canonical definition to state claims against.
-/

/-! ## A107153.P12654567620347027140

`p?[∑[A004277(A025115(n+1))]]`
-/

namespace A107153.P12654567620347027140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025115 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107153.P12654567620347027140

/-!
# A107155: Primes of the form x^2 + 49y^2.

The programs for A107155, there is no canonical definition to state claims against.
-/

/-! ## A107155.P15280870628416133998

`A141172(lt[A059802(n+1), A030001(2*(n+1))])`
-/

namespace A107155.P15280870628416133998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030001 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107155.P15280870628416133998

/-! ## A107155.P16898334841361278805

`record[A107134(A228351(3*(n+1))+2)]`
-/

namespace A107155.P16898334841361278805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (A228351 (3 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107155.P16898334841361278805

/-! ## A107155.P16422262499969876650

`A141172(A002808(n+1)%A049058(n))`
-/

namespace A107155.P16422262499969876650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (Int.tmod (A002808 (n + 1)) (A049058 n)).toNat

end

end A107155.P16422262499969876650

/-!
# A107156: Primes of the form 2x^2 + 25y^2.

The programs for A107156, there is no canonical definition to state claims against.
-/

/-! ## A107156.P8061858919181457792

`p?[A283963(A283969(n))*A283967(n+1)]`
-/

namespace A107156.P8061858919181457792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (A283969 n).toNat * A283967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107156.P8061858919181457792

/-!
# A107158: Primes of the form 3x^2 + 17y^2.

The programs for A107158, there is no canonical definition to state claims against.
-/

/-! ## A107158.P8369933102281877619

`A231608(or(10, A006506(n)))`
-/

namespace A107158.P8369933102281877619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (Int.lor 10 (A006506 n)).toNat

end

end A107158.P8369933102281877619

/-!
# A107159: Primes of the form 4x^2 + 13y^2.

The programs for A107159, there is no canonical definition to state claims against.
-/

/-! ## A107159.P4640807829145235703

`record[A248213(n+1)%2*A033210(n+1)]`
-/

namespace A107159.P4640807829145235703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248213 (n + 1)) 2 * A033210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107159.P4640807829145235703

/-! ## A107159.P17769770924225800818

`record[A000035(A248213(n+1))*A033210(n+1)]`
-/

namespace A107159.P17769770924225800818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A248213 (n + 1)).toNat * A033210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107159.P17769770924225800818

/-! ## A107159.P9343725250695705286

`p?[A033210(n+1)+A000035(A248212(n+1))]`
-/

namespace A107159.P9343725250695705286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1) + A000035 (A248212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107159.P9343725250695705286

/-!
# A107160: Primes of the form x^2 + 52y^2.

The programs for A107160, there is no canonical definition to state claims against.
-/

/-! ## A107160.P820136555936381841

`p?[A033210(n+1)+A248213(n+1)%2]`
-/

namespace A107160.P820136555936381841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1) + Int.tmod (A248213 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107160.P820136555936381841

/-! ## A107160.P16923611265610020799

`p?[A033210(n+1)+A000035(A248213(n+1))]`
-/

namespace A107160.P16923611265610020799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1) + A000035 (A248213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107160.P16923611265610020799

/-! ## A107160.P2108087189192234478

`p?[A248212(n+1)%2*A033210(n+1)]`
-/

namespace A107160.P2108087189192234478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248212 (n + 1)) 2 * A033210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107160.P2108087189192234478

/-! ## A107160.P11380392835861606444

`p?[A000035(A248212(n+1))*A033210(n+1)]`
-/

namespace A107160.P11380392835861606444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A248212 (n + 1)).toNat * A033210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107160.P11380392835861606444

/-!
# A107163: Primes of the form 7x^2 + 8y^2.

The programs for A107163, there is no canonical definition to state claims against.
-/

/-! ## A107163.P2340818319213947375

`A106917(eq[3, A106917(n+1)%4]+1)`
-/

namespace A107163.P2340818319213947375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106917 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107163.P2340818319213947375

/-! ## A107163.P415406423376644815

`∩[A106917(n+1), A139852(n+1)]`
-/

namespace A107163.P415406423376644815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P415406423376644815

/-! ## A107163.P6799109953581655673

`∩[A007522(n+1), A106917(n+1)]`
-/

namespace A107163.P6799109953581655673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P6799109953581655673

/-! ## A107163.P1021977912146832820

`∩[A106917(n+1), A107133(n+1)]`
-/

namespace A107163.P1021977912146832820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P1021977912146832820

/-! ## A107163.P4785382669632279113

`∩[A004628(n+1), A106917(n+1)]`
-/

namespace A107163.P4785382669632279113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P4785382669632279113

/-! ## A107163.P8069348250192786357

`∩[A003628(n+1), A106917(n+1)]`
-/

namespace A107163.P8069348250192786357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P8069348250192786357

/-! ## A107163.P18337866327654992621

`∩[A002145(n+1), A106917(n+1)]`
-/

namespace A107163.P18337866327654992621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P18337866327654992621

/-! ## A107163.P10264446249806515148

`∩[A085760(n+1), A106917(n+1)]`
-/

namespace A107163.P10264446249806515148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P10264446249806515148

/-! ## A107163.P7107434370784108866

`∩[A106917(n+1), A197504(n+1)]`
-/

namespace A107163.P7107434370784108866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P7107434370784108866

/-! ## A107163.P5417079315805791170

`∩[A106917(n+1), A292762(n+1)]`
-/

namespace A107163.P5417079315805791170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P5417079315805791170

/-! ## A107163.P14028471068758139738

`∩[A045395(n+1), A106917(n+1)]`
-/

namespace A107163.P14028471068758139738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P14028471068758139738

/-! ## A107163.P3156442516276466312

`∩[A066499(n+1), A106917(n+1)]`
-/

namespace A107163.P3156442516276466312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P3156442516276466312

/-! ## A107163.P16121079936277644248

`p?[A020690(n+1)]`
-/

namespace A107163.P16121079936277644248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107163.P16121079936277644248

/-! ## A107163.P9359677591918972010

`∩[A001132(n+1), A020690(n+1)]`
-/

namespace A107163.P9359677591918972010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P9359677591918972010

/-! ## A107163.P12542855952835400059

`∩[A002145(n+1), A020690(n+1)]`
-/

namespace A107163.P12542855952835400059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P12542855952835400059

/-! ## A107163.P9183053456573821558

`∩[A003628(n+1), A020690(n+1)]`
-/

namespace A107163.P9183053456573821558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P9183053456573821558

/-! ## A107163.P15477630323277311769

`∩[A007522(n+1), A020690(n+1)]`
-/

namespace A107163.P15477630323277311769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P15477630323277311769

/-! ## A107163.P18008150668186903621

`∩[A014663(n+1), A020690(n+1)]`
-/

namespace A107163.P18008150668186903621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P18008150668186903621

/-! ## A107163.P16278992520621974914

`∩[A020690(n+1), A033207(n+1)]`
-/

namespace A107163.P16278992520621974914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P16278992520621974914

/-! ## A107163.P4049347711229956598

`∩[A020690(n+1), A038873(n+1)]`
-/

namespace A107163.P4049347711229956598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107163.P4049347711229956598

/-!
# A107164: Primes of the form x^2 + 56y^2.

The programs for A107164, there is no canonical definition to state claims against.
-/

/-! ## A107164.P14968405072288147956

`∩[A033211(n+1), A139645(n+1)]`
-/

namespace A107164.P14968405072288147956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P14968405072288147956

/-! ## A107164.P6711107541571764691

`∩[A033211(n+1), A332227(n+1)]`
-/

namespace A107164.P6711107541571764691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P6711107541571764691

/-! ## A107164.P14943941820666039996

`∩[A008846(n+1), A033211(n+1)]`
-/

namespace A107164.P14943941820666039996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P14943941820666039996

/-! ## A107164.P2444462874784990219

`∩[A033211(n+1), A242663(n+1)]`
-/

namespace A107164.P2444462874784990219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P2444462874784990219

/-! ## A107164.P14435028594017484860

`∩[A033211(n+1), A107134(n+1)]`
-/

namespace A107164.P14435028594017484860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P14435028594017484860

/-! ## A107164.P15953588494956774470

`∩[A033211(n+1), A141172(n+1)]`
-/

namespace A107164.P15953588494956774470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P15953588494956774470

/-! ## A107164.P9937854503888677943

`∩[A007519(n+1), A033211(n+1)]`
-/

namespace A107164.P9937854503888677943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P9937854503888677943

/-! ## A107164.P18110428005109151973

`∩[A033211(n+1), A045390(n+1)]`
-/

namespace A107164.P18110428005109151973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P18110428005109151973

/-! ## A107164.P8186409032047122416

`∩[A033211(n+1), A209544(n+1)]`
-/

namespace A107164.P8186409032047122416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P8186409032047122416

/-! ## A107164.P11542594330767445674

`∩[A033211(n+1), A141190(n+1)]`
-/

namespace A107164.P11542594330767445674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P11542594330767445674

/-! ## A107164.P5600435312417440440

`∩[A033211(n+1), A332226(n+1)]`
-/

namespace A107164.P5600435312417440440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P5600435312417440440

/-! ## A107164.P12191596062340735021

`∩[A004625(n+1), A033211(n+1)]`
-/

namespace A107164.P12191596062340735021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P12191596062340735021

/-! ## A107164.P3379541480527024023

`∩[A033211(n+1), A191218(n+1)]`
-/

namespace A107164.P3379541480527024023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P3379541480527024023

/-! ## A107164.P2048297468930419140

`∩[A033211(n+1), A263011(n+1)]`
-/

namespace A107164.P2048297468930419140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P2048297468930419140

/-! ## A107164.P13082619918757728004

`∩[A033211(n+1), A038885(n+1)]`
-/

namespace A107164.P13082619918757728004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P13082619918757728004

/-! ## A107164.P9864280043699207829

`∩[A002144(n+1), A033211(n+1)]`
-/

namespace A107164.P9864280043699207829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P9864280043699207829

/-! ## A107164.P4015492389899900697

`∩[A002313(n+1), A033211(n+1)]`
-/

namespace A107164.P4015492389899900697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P4015492389899900697

/-! ## A107164.P5722833329429688354

`∩[A033200(n+1), A033211(n+1)]`
-/

namespace A107164.P5722833329429688354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P5722833329429688354

/-! ## A107164.P5583328424334586564

`∩[A033203(n+1), A033211(n+1)]`
-/

namespace A107164.P5583328424334586564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P5583328424334586564

/-! ## A107164.P12370598500227941143

`∩[A033211(n+1), A038878(n+1)]`
-/

namespace A107164.P12370598500227941143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107164.P12370598500227941143

/-!
# A107165: Primes of the form 3x^2 + 19y^2.

The programs for A107165, there is no canonical definition to state claims against.
-/

/-! ## A107165.P8794974396441378880

`∩[A007645(n+1), A142955(n+1)]`
-/

namespace A107165.P8794974396441378880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P8794974396441378880

/-! ## A107165.P13769482273168744882

`∩[A142955(n+1), A279815(n+1)]`
-/

namespace A107165.P13769482273168744882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P13769482273168744882

/-! ## A107165.P624514039878258237

`∩[A055664(n+1), A142955(n+1)]`
-/

namespace A107165.P624514039878258237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P624514039878258237

/-! ## A107165.P16869362832120534253

`filter[A142955(n+1), A353815(#)]`
-/

namespace A107165.P16869362832120534253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A107165.P16869362832120534253

/-! ## A107165.P17547644526773100015

`filter[A142955(n+1), A353816(#)]`
-/

namespace A107165.P17547644526773100015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A107165.P17547644526773100015

/-! ## A107165.P1299676603468365892

`∩[A034021(n+1), A142955(n+1)]`
-/

namespace A107165.P1299676603468365892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P1299676603468365892

/-! ## A107165.P16014889238177608569

`∩[A034017(n+1), A142955(n+1)]`
-/

namespace A107165.P16014889238177608569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P16014889238177608569

/-! ## A107165.P8095966881126454965

`∩[A142955(n+1), A198772(n+1)]`
-/

namespace A107165.P8095966881126454965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P8095966881126454965

/-! ## A107165.P14732059376017947771

`∩[A020677(n+1), A038891(n+1)]`
-/

namespace A107165.P14732059376017947771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P14732059376017947771

/-! ## A107165.P16106031426957474800

`∩[A020677(n+1), A040145(n+1)]`
-/

namespace A107165.P16106031426957474800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P16106031426957474800

/-! ## A107165.P7765850312361497078

`∩[A020677(n+1), A142955(n+1)]`
-/

namespace A107165.P7765850312361497078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P7765850312361497078

/-! ## A107165.P9435844318721812411

`∩[A142955(n+1), A364614(n+1)]`
-/

namespace A107165.P9435844318721812411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P9435844318721812411

/-! ## A107165.P10198036275839517249

`∩[A142955(n+1), A266836(n+1)]`
-/

namespace A107165.P10198036275839517249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P10198036275839517249

/-! ## A107165.P3897972162469252258

`filter[A142955(n+1), A135461(#)]`
-/

namespace A107165.P3897972162469252258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A107165.P3897972162469252258

/-! ## A107165.P5652064513634876460

`∩[A038891(n+1), A092899(n)]`
-/

namespace A107165.P5652064513634876460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P5652064513634876460

/-! ## A107165.P18249631609864603724

`∩[A040145(n+1), A092899(n)]`
-/

namespace A107165.P18249631609864603724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P18249631609864603724

/-! ## A107165.P18355672693645818779

`∩[A142955(n+1), A092899(n)]`
-/

namespace A107165.P18355672693645818779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P18355672693645818779

/-! ## A107165.P121522612705958239

`∩[A142955(n+1), A329963(n+1)]`
-/

namespace A107165.P121522612705958239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P121522612705958239

/-! ## A107165.P11549687256636808298

`∩[A056531(n+1), A142955(n+1)]`
-/

namespace A107165.P11549687256636808298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P11549687256636808298

/-! ## A107165.P2799753566370581915

`∩[A034022(n+1), A142955(n+1)]`
-/

namespace A107165.P2799753566370581915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107165.P2799753566370581915

/-!
# A107166: Primes of the form 2x^2 + 29y^2.

The programs for A107166, there is no canonical definition to state claims against.
-/

/-! ## A107166.P8614621368527794586

`A007641(A028310(n))%A083250(n+1)`
-/

namespace A107166.P8614621368527794586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007641 (A028310 n).toNat) (A083250 (n + 1))

end

end A107166.P8614621368527794586

/-! ## A107166.P6997873313255200786

`A007641(A000007(n)+n)%A075679(n+3)`
-/

namespace A107166.P6997873313255200786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007641 (A000007 n + (n : ℤ)).toNat) (A075679 (n + 3))

end

end A107166.P6997873313255200786

/-!
# A107167: Primes of the form 5x^2 + 12y^2.

The programs for A107167, there is no canonical definition to state claims against.
-/

/-! ## A107167.P16857643827132164645

`A141303(n+2)`
-/

namespace A107167.P16857643827132164645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 2)

end

end A107167.P16857643827132164645

/-! ## A107167.P16715997872404535861

`p?[and(-3, A106859(n+1))]`
-/

namespace A107167.P16715997872404535861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A106859 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107167.P16715997872404535861

/-! ## A107167.P1785439191190555929

`∩[A008846(n+1), A106859(n+1)]`
-/

namespace A107167.P1785439191190555929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P1785439191190555929

/-! ## A107167.P3859694903912181428

`∩[A040117(n+1), A106859(n+1)]`
-/

namespace A107167.P3859694903912181428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P3859694903912181428

/-! ## A107167.P9277994135132353376

`∩[A106859(n+2), A243183(n+2)]`
-/

namespace A107167.P9277994135132353376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P9277994135132353376

/-! ## A107167.P5700623695035740465

`∩[A053028(n+1), A106859(n+1)]`
-/

namespace A107167.P5700623695035740465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P5700623695035740465

/-! ## A107167.P8983237768060865334

`∩[A002144(n+1), A106859(n+1)]`
-/

namespace A107167.P8983237768060865334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P8983237768060865334

/-! ## A107167.P17821216725501708239

`∩[A002313(n+1), A106859(n+2)]`
-/

namespace A107167.P17821216725501708239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P17821216725501708239

/-! ## A107167.P5110579874017843681

`∩[A038887(n+1), A040117(n+1)]`
-/

namespace A107167.P5110579874017843681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P5110579874017843681

/-! ## A107167.P2244843202446498665

`∩[A038887(n+2), A243183(n+2)]`
-/

namespace A107167.P2244843202446498665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P2244843202446498665

/-! ## A107167.P7881642002934695917

`∩[A040117(n+1), A341786(n+1)]`
-/

namespace A107167.P7881642002934695917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P7881642002934695917

/-! ## A107167.P16469482481274238620

`∩[A055025(n+1), A106859(n+2)]`
-/

namespace A107167.P16469482481274238620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P16469482481274238620

/-! ## A107167.P15622230475505115070

`∩[A243183(n+2), A341786(n+2)]`
-/

namespace A107167.P15622230475505115070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P15622230475505115070

/-! ## A107167.P7627623598449496541

`∩[A003630(n+1), A106859(n+1)]`
-/

namespace A107167.P7627623598449496541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P7627623598449496541

/-! ## A107167.P12997995219799850647

`∩[A106859(n+1), A120960(n+1)]`
-/

namespace A107167.P12997995219799850647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P12997995219799850647

/-! ## A107167.P5823601922794628342

`∩[A172480(n+1), A106859(n+1)]`
-/

namespace A107167.P5823601922794628342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P5823601922794628342

/-! ## A107167.P11190283387679754186

`∩[A038875(n+1), A106859(n+2)]`
-/

namespace A107167.P11190283387679754186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P11190283387679754186

/-! ## A107167.P15453800696703677302

`∩[A040117(n+1), A042993(n+1)]`
-/

namespace A107167.P15453800696703677302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P15453800696703677302

/-! ## A107167.P11941036188841469676

`∩[A042993(n+2), A243183(n+2)]`
-/

namespace A107167.P11941036188841469676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P11941036188841469676

/-! ## A107167.P15845488793687204819

`∩[A085759(n+1), A106859(n+1)]`
-/

namespace A107167.P15845488793687204819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107167.P15845488793687204819

/-!
# A107168: Primes of the form 4x^2 + 15y^2.

The programs for A107168, the canonical program `A107168.P10088901203869572944` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107168 has offset 1).

The definition of A107168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107168.P3817424685857098650

`∪[A142789(n+1), A142792(n+1)]`
-/

namespace A107168.P3817424685857098650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P3817424685857098650

namespace A107168

/-- `∪[A142789(n+1), A142792(n+1)]` -/
def P3817424685857098650.Spec : Prop :=
  ∀ n, (P3817424685857098650.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P10088901203869572944

`p?[or(2, A033212(n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107168

/-- `p?[or(2, A033212(n+1))]` -/
def P10088901203869572944.Spec : Prop :=
  ∀ n, P10088901203869572944.a n = A107168 (n + 1)

theorem P10088901203869572944.correct : P10088901203869572944.Spec := by
  intro n
  simp only [A107168, Nat.add_sub_cancel]

end A107168

/-! ## A107168.P5683470174318929266

`∩[A068229(n+1), A243174(n+1)]`
-/

namespace A107168.P5683470174318929266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P5683470174318929266

namespace A107168

/-- `∩[A068229(n+1), A243174(n+1)]` -/
def P5683470174318929266.Spec : Prop :=
  ∀ n, (P5683470174318929266.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P471102881732896431

`∩[A122869(n+1), A243174(n+1)]`
-/

namespace A107168.P471102881732896431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P471102881732896431

namespace A107168

/-- `∩[A122869(n+1), A243174(n+1)]` -/
def P471102881732896431.Spec : Prop :=
  ∀ n, (P471102881732896431.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P10027515160315493441

`∩[A053032(n+1), A068229(n+1)]`
-/

namespace A107168.P10027515160315493441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P10027515160315493441

namespace A107168

/-- `∩[A053032(n+1), A068229(n+1)]` -/
def P10027515160315493441.Spec : Prop :=
  ∀ n, (P10027515160315493441.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P7380378532001994644

`p?[2*abs(n+2-A272100(n+1))-1]`
-/

namespace A107168.P7380378532001994644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(n + 2 : ℤ) - A272100 (n + 1)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107168.P7380378532001994644

namespace A107168

/-- `p?[2*abs(n+2-A272100(n+1))-1]` -/
def P7380378532001994644.Spec : Prop :=
  ∀ n, P7380378532001994644.a n = A107168 (n + 1)

end A107168

/-! ## A107168.P14251041558593984159

`∩[A040105(n+1), A068229(n+1)]`
-/

namespace A107168.P14251041558593984159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P14251041558593984159

namespace A107168

/-- `∩[A040105(n+1), A068229(n+1)]` -/
def P14251041558593984159.Spec : Prop :=
  ∀ n, (P14251041558593984159.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P3455564429270357989

`∩[A040147(n+1), A068229(n+1)]`
-/

namespace A107168.P3455564429270357989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P3455564429270357989

namespace A107168

/-- `∩[A040147(n+1), A068229(n+1)]` -/
def P3455564429270357989.Spec : Prop :=
  ∀ n, (P3455564429270357989.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P2852135014948160915

`∩[A045468(n+1), A068229(n+1)]`
-/

namespace A107168.P2852135014948160915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P2852135014948160915

namespace A107168

/-- `∩[A045468(n+1), A068229(n+1)]` -/
def P2852135014948160915.Spec : Prop :=
  ∀ n, (P2852135014948160915.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P4175262481254840863

`∩[A064739(n+1), A068229(n+1)]`
-/

namespace A107168.P4175262481254840863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P4175262481254840863

namespace A107168

/-- `∩[A064739(n+1), A068229(n+1)]` -/
def P4175262481254840863.Spec : Prop :=
  ∀ n, (P4175262481254840863.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P6070681160119800833

`∩[A076518(n+1), A068229(n+1)]`
-/

namespace A107168.P6070681160119800833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P6070681160119800833

namespace A107168

/-- `∩[A076518(n+1), A068229(n+1)]` -/
def P6070681160119800833.Spec : Prop :=
  ∀ n, (P6070681160119800833.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P10231732394263394834

`∩[A038888(n+1), A243174(n+1)]`
-/

namespace A107168.P10231732394263394834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P10231732394263394834

namespace A107168

/-- `∩[A038888(n+1), A243174(n+1)]` -/
def P10231732394263394834.Spec : Prop :=
  ∀ n, (P10231732394263394834.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P13517101778599517876

`∩[A076518(n+1), A332514(n+1)]`
-/

namespace A107168.P13517101778599517876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P13517101778599517876

namespace A107168

/-- `∩[A076518(n+1), A332514(n+1)]` -/
def P13517101778599517876.Spec : Prop :=
  ∀ n, (P13517101778599517876.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P14431715751887620106

`∩[A002145(n+1), A033212(n+1)]`
-/

namespace A107168.P14431715751887620106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P14431715751887620106

namespace A107168

/-- `∩[A002145(n+1), A033212(n+1)]` -/
def P14431715751887620106.Spec : Prop :=
  ∀ n, (P14431715751887620106.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P14082190621391873567

`∩[A045326(n+1), A033212(n+1)]`
-/

namespace A107168.P14082190621391873567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P14082190621391873567

namespace A107168

/-- `∩[A045326(n+1), A033212(n+1)]` -/
def P14082190621391873567.Spec : Prop :=
  ∀ n, (P14082190621391873567.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P6501848109903217100

`∩[A002145(n+1), A243174(n+1)]`
-/

namespace A107168.P6501848109903217100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P6501848109903217100

namespace A107168

/-- `∩[A002145(n+1), A243174(n+1)]` -/
def P6501848109903217100.Spec : Prop :=
  ∀ n, (P6501848109903217100.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P12038188702535452459

`∩[A045326(n+1), A243174(n+1)]`
-/

namespace A107168.P12038188702535452459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P12038188702535452459

namespace A107168

/-- `∩[A045326(n+1), A243174(n+1)]` -/
def P12038188702535452459.Spec : Prop :=
  ∀ n, (P12038188702535452459.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P5181156200640052279

`∩[A003626(n+1), A033212(n+1)]`
-/

namespace A107168.P5181156200640052279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P5181156200640052279

namespace A107168

/-- `∩[A003626(n+1), A033212(n+1)]` -/
def P5181156200640052279.Spec : Prop :=
  ∀ n, (P5181156200640052279.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P5799196511649872569

`∩[A003626(n+1), A068229(n+1)]`
-/

namespace A107168.P5799196511649872569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P5799196511649872569

namespace A107168

/-- `∩[A003626(n+1), A068229(n+1)]` -/
def P5799196511649872569.Spec : Prop :=
  ∀ n, (P5799196511649872569.a n : ℤ) = A107168 (n + 1)

end A107168

/-! ## A107168.P15607130533640521849

`∩[A003626(n+1), A243174(n+1)]`
-/

namespace A107168.P15607130533640521849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107168.P15607130533640521849

namespace A107168

/-- `∩[A003626(n+1), A243174(n+1)]` -/
def P15607130533640521849.Spec : Prop :=
  ∀ n, (P15607130533640521849.a n : ℤ) = A107168 (n + 1)

end A107168

/-!
# A107169: Primes of the form 3x^2 + 20y^2.

The programs for A107169, the canonical program `A107169.P7299049902031610127` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107169 has offset 1).

The definition of A107169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107169.P3848660471439111108

`or(1, A139831(n+1))`
-/

namespace A107169.P3848660471439111108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A139831 (n + 1))

end

end A107169.P3848660471439111108

namespace A107169

/-- `or(1, A139831(n+1))` -/
def P3848660471439111108.Spec : Prop :=
  ∀ n, P3848660471439111108.a n = A107169 (n + 1)

end A107169

/-! ## A107169.P15069646916253344421

`A139831(n+1)+A000007(n)`
-/

namespace A107169.P15069646916253344421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1) + A000007 n

end

end A107169.P15069646916253344421

namespace A107169

/-- `A139831(n+1)+A000007(n)` -/
def P15069646916253344421.Spec : Prop :=
  ∀ n, P15069646916253344421.a n = A107169 (n + 1)

end A107169

/-! ## A107169.P13491361510104295207

`A139831(n+1)+and(1, A301212(n))`
-/

namespace A107169.P13491361510104295207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1) + Int.land 1 (A301212 n)

end

end A107169.P13491361510104295207

namespace A107169

/-- `A139831(n+1)+and(1, A301212(n))` -/
def P13491361510104295207.Spec : Prop :=
  ∀ n, P13491361510104295207.a n = A107169 (n + 1)

end A107169

/-! ## A107169.P7299049902031610127

`∪[A139857(n+1), A139897(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107169

/-- `∪[A139857(n+1), A139897(n+1)]` -/
def P7299049902031610127.Spec : Prop :=
  ∀ n, (P7299049902031610127.a n : ℤ) = A107169 (n + 1)

theorem P7299049902031610127.correct : P7299049902031610127.Spec := by
  intro n
  simp only [A107169, Nat.add_sub_cancel]

end A107169

/-! ## A107169.P3800927744546063294

`A139831(n+1)+Δ[A003817(n)]%2`
-/

namespace A107169.P3800927744546063294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A107169.P3800927744546063294

namespace A107169

/-- `A139831(n+1)+Δ[A003817(n)]%2` -/
def P3800927744546063294.Spec : Prop :=
  ∀ n, P3800927744546063294.a n = A107169 (n + 1)

end A107169

/-! ## A107169.P2374293445661627609

`A139831(n+1)+A000217(A003817(n+1))%2`
-/

namespace A107169.P2374293445661627609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1) + Int.tmod (A000217 (A003817 (n + 1)).toNat) 2

end

end A107169.P2374293445661627609

namespace A107169

/-- `A139831(n+1)+A000217(A003817(n+1))%2` -/
def P2374293445661627609.Spec : Prop :=
  ∀ n, P2374293445661627609.a n = A107169 (n + 1)

end A107169

/-! ## A107169.P13051806630882100816

`∩[A122870(n+1), A141123(n+1)]`
-/

namespace A107169.P13051806630882100816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P13051806630882100816

namespace A107169

/-- `∩[A122870(n+1), A141123(n+1)]` -/
def P13051806630882100816.Spec : Prop :=
  ∀ n, (P13051806630882100816.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P13285595261051180253

`∩[A053027(n+1), A106859(n+1)]`
-/

namespace A107169.P13285595261051180253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P13285595261051180253

namespace A107169

/-- `∩[A053027(n+1), A106859(n+1)]` -/
def P13285595261051180253.Spec : Prop :=
  ∀ n, (P13285595261051180253.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P10688199956531451094

`∩[A053027(n+1), A141123(n+1)]`
-/

namespace A107169.P10688199956531451094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P10688199956531451094

namespace A107169

/-- `∩[A053027(n+1), A141123(n+1)]` -/
def P10688199956531451094.Spec : Prop :=
  ∀ n, (P10688199956531451094.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P13391780796708648041

`∩[A053027(n+1), A141187(n+1)]`
-/

namespace A107169.P13391780796708648041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P13391780796708648041

namespace A107169

/-- `∩[A053027(n+1), A141187(n+1)]` -/
def P13391780796708648041.Spec : Prop :=
  ∀ n, (P13391780796708648041.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P15988242570000128124

`∩[A040101(n+1), A122870(n+1)]`
-/

namespace A107169.P15988242570000128124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P15988242570000128124

namespace A107169

/-- `∩[A040101(n+1), A122870(n+1)]` -/
def P15988242570000128124.Spec : Prop :=
  ∀ n, (P15988242570000128124.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P2304687784733039248

`∩[A040124(n+1), A122870(n+1)]`
-/

namespace A107169.P2304687784733039248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P2304687784733039248

namespace A107169

/-- `∩[A040124(n+1), A122870(n+1)]` -/
def P2304687784733039248.Spec : Prop :=
  ∀ n, (P2304687784733039248.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P1695191015748779658

`∩[A040994(n+1), A122870(n+1)]`
-/

namespace A107169.P1695191015748779658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P1695191015748779658

namespace A107169

/-- `∩[A040994(n+1), A122870(n+1)]` -/
def P1695191015748779658.Spec : Prop :=
  ∀ n, (P1695191015748779658.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P13355472055714594230

`∩[A045317(n+1), A122870(n+1)]`
-/

namespace A107169.P13355472055714594230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P13355472055714594230

namespace A107169

/-- `∩[A045317(n+1), A122870(n+1)]` -/
def P13355472055714594230.Spec : Prop :=
  ∀ n, (P13355472055714594230.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P3262634508322660162

`∩[A296933(n+1), A106859(n+1)]`
-/

namespace A107169.P3262634508322660162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P3262634508322660162

namespace A107169

/-- `∩[A296933(n+1), A106859(n+1)]` -/
def P3262634508322660162.Spec : Prop :=
  ∀ n, (P3262634508322660162.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P2314223173246620734

`∩[A038874(n+1), A122870(n+1)]`
-/

namespace A107169.P2314223173246620734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P2314223173246620734

namespace A107169

/-- `∩[A038874(n+1), A122870(n+1)]` -/
def P2314223173246620734.Spec : Prop :=
  ∀ n, (P2314223173246620734.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P8867001015711014255

`∩[A045410(n+1), A106865(n+1)]`
-/

namespace A107169.P8867001015711014255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P8867001015711014255

namespace A107169

/-- `∩[A045410(n+1), A106865(n+1)]` -/
def P8867001015711014255.Spec : Prop :=
  ∀ n, (P8867001015711014255.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P18116326835656870218

`∩[A045410(n+1), A122870(n+1)]`
-/

namespace A107169.P18116326835656870218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P18116326835656870218

namespace A107169

/-- `∩[A045410(n+1), A122870(n+1)]` -/
def P18116326835656870218.Spec : Prop :=
  ∀ n, (P18116326835656870218.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P7608095347088529432

`∩[A002145(n+1), A106859(n+1)]`
-/

namespace A107169.P7608095347088529432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P7608095347088529432

namespace A107169

/-- `∩[A002145(n+1), A106859(n+1)]` -/
def P7608095347088529432.Spec : Prop :=
  ∀ n, (P7608095347088529432.a n : ℤ) = A107169 (n + 1)

end A107169

/-! ## A107169.P12690701656945228180

`∩[A045309(n+1), A122870(n+1)]`
-/

namespace A107169.P12690701656945228180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P12690701656945228180

namespace A107169

/-- `∩[A045309(n+1), A122870(n+1)]` -/
def P12690701656945228180.Spec : Prop :=
  ∀ n, (P12690701656945228180.a n : ℤ) = A107169 (n + 1)

end A107169

/-!
# A107170: Primes of the form 2x^2 + 31y^2.

The programs for A107170, there is no canonical definition to state claims against.
-/

/-! ## A107170.P11432611435587968877

`A164958(or(A131575(n), A341400(n)))`
-/

namespace A107170.P11432611435587968877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164958 (Int.lor (A131575 n) (A341400 n)).toNat

end

end A107170.P11432611435587968877

/-!
# A107171: Primes of the form 5x^2 + 13y^2.

The programs for A107171, there is no canonical definition to state claims against.
-/

/-! ## A107171.P2313945691349616415

`A107803(eq[and(3, -n), A090751(n+1)]+1)`
-/

namespace A107171.P2313945691349616415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107803 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A107171.P2313945691349616415

/-!
# A107173: Primes of the form 3x^2 + 22y^2.

The programs for A107173, there is no canonical definition to state claims against.
-/

/-! ## A107173.P9085636702212537818

`A260793(A291758(n+1)+A239703(n))`
-/

namespace A107173.P9085636702212537818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260793 (A291758 (n + 1) + A239703 n).toNat

end

end A107173.P9085636702212537818

/-!
# A107174: Primes of the form 2x^2 + 33y^2.

The programs for A107174, there is no canonical definition to state claims against.
-/

/-! ## A107174.P649182394069491930

`p?[∏{p}[∑[a(n-1)+4]², #]]` with `a(0)=1, a(1)=3, a(2)=29, a(3)=2`
-/

namespace A107174.P649182394069491930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 29, 2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107174.P649182394069491930

/-!
# A107175: Primes of the form 4x^2 + 17y^2.

The programs for A107175, there is no canonical definition to state claims against.
-/

/-! ## A107175.P17350912135748108221

`∩[A033213(n+1), A268593(n+1)]`
-/

namespace A107175.P17350912135748108221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107175.P17350912135748108221

/-!
# A107177: Primes of the form 3x^2+23y^2.

The programs for A107177, there is no canonical definition to state claims against.
-/

/-! ## A107177.P13710223795862675299

`A327783(A298014(n)+A008458(n))`
-/

namespace A107177.P13710223795862675299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (A298014 n + A008458 n).toNat

end

end A107177.P13710223795862675299

/-! ## A107177.P8253428597749223294

`A294674(A057127(2*n+1)+A047241(2*n+1))`
-/

namespace A107177.P8253428597749223294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (A057127 (2 * n + 1) + A047241 (2 * n + 1)).toNat

end

end A107177.P8253428597749223294

/-!
# A107178: Primes of the form 7x^2 + 10y^2.

The programs for A107178, the canonical program `A107178.P16614462838010122114` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107178 has offset 1).

The definition of A107178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107178.P6780562530948268349

`∩[A049542(n+1), A106878(n+1)]`
-/

namespace A107178.P6780562530948268349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P6780562530948268349

namespace A107178

/-- `∩[A049542(n+1), A106878(n+1)]` -/
def P6780562530948268349.Spec : Prop :=
  ∀ n, (P6780562530948268349.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P16614462838010122114

`∩[A001132(n+1), A106878(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107178

/-- `∩[A001132(n+1), A106878(n+1)]` -/
def P16614462838010122114.Spec : Prop :=
  ∀ n, (P16614462838010122114.a n : ℤ) = A107178 (n + 1)

theorem P16614462838010122114.correct : P16614462838010122114.Spec := by
  intro n
  simp only [A107178, Nat.add_sub_cancel]

end A107178

/-! ## A107178.P13512119512098427039

`∩[A038880(n+1), A106878(n+1)]`
-/

namespace A107178.P13512119512098427039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P13512119512098427039

namespace A107178

/-- `∩[A038880(n+1), A106878(n+1)]` -/
def P13512119512098427039.Spec : Prop :=
  ∀ n, (P13512119512098427039.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P16880225600679151153

`p?[A020692(n+1)]`
-/

namespace A107178.P16880225600679151153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107178.P16880225600679151153

namespace A107178

/-- `p?[A020692(n+1)]` -/
def P16880225600679151153.Spec : Prop :=
  ∀ n, P16880225600679151153.a n = A107178 (n + 1)

end A107178

/-! ## A107178.P7244363204357320519

`p?[record[A020692(A328399(n))]]`
-/

namespace A107178.P7244363204357320519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107178.P7244363204357320519

namespace A107178

/-- `p?[record[A020692(A328399(n))]]` -/
def P7244363204357320519.Spec : Prop :=
  ∀ n, P7244363204357320519.a n = A107178 (n + 1)

end A107178

/-! ## A107178.P11541476154077354672

`p?[record[A020692(A329048(n))]]`
-/

namespace A107178.P11541476154077354672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107178.P11541476154077354672

namespace A107178

/-- `p?[record[A020692(A329048(n))]]` -/
def P11541476154077354672.Spec : Prop :=
  ∀ n, P11541476154077354672.a n = A107178 (n + 1)

end A107178

/-! ## A107178.P1394206226501703492

`∩[A001132(n+1), A020692(n+1)]`
-/

namespace A107178.P1394206226501703492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P1394206226501703492

namespace A107178

/-- `∩[A001132(n+1), A020692(n+1)]` -/
def P1394206226501703492.Spec : Prop :=
  ∀ n, (P1394206226501703492.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P15872668843812545183

`∩[A003631(n+1), A020692(n+1)]`
-/

namespace A107178.P15872668843812545183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P15872668843812545183

namespace A107178

/-- `∩[A003631(n+1), A020692(n+1)]` -/
def P15872668843812545183.Spec : Prop :=
  ∀ n, (P15872668843812545183.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P3464704743370824285

`∩[A020692(n+1), A028416(n+1)]`
-/

namespace A107178.P3464704743370824285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P3464704743370824285

namespace A107178

/-- `∩[A020692(n+1), A028416(n+1)]` -/
def P3464704743370824285.Spec : Prop :=
  ∀ n, (P3464704743370824285.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P17378914860393447341

`∩[A020692(n+1), A038873(n+1)]`
-/

namespace A107178.P17378914860393447341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P17378914860393447341

namespace A107178

/-- `∩[A020692(n+1), A038873(n+1)]` -/
def P17378914860393447341.Spec : Prop :=
  ∀ n, (P17378914860393447341.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P14533428872129741662

`∩[A020692(n+1), A038880(n+1)]`
-/

namespace A107178.P14533428872129741662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P14533428872129741662

namespace A107178

/-- `∩[A020692(n+1), A038880(n+1)]` -/
def P14533428872129741662.Spec : Prop :=
  ∀ n, (P14533428872129741662.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P14707877064335034439

`∩[A020692(n+1), A040106(n+1)]`
-/

namespace A107178.P14707877064335034439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P14707877064335034439

namespace A107178

/-- `∩[A020692(n+1), A040106(n+1)]` -/
def P14707877064335034439.Spec : Prop :=
  ∀ n, (P14707877064335034439.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P14169784496141414155

`∩[A020692(n+1), A040121(n+1)]`
-/

namespace A107178.P14169784496141414155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P14169784496141414155

namespace A107178

/-- `∩[A020692(n+1), A040121(n+1)]` -/
def P14169784496141414155.Spec : Prop :=
  ∀ n, (P14169784496141414155.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P9859932376603943716

`∩[A020692(n+1), A040148(n+1)]`
-/

namespace A107178.P9859932376603943716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P9859932376603943716

namespace A107178

/-- `∩[A020692(n+1), A040148(n+1)]` -/
def P9859932376603943716.Spec : Prop :=
  ∀ n, (P9859932376603943716.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P8278350210297109292

`∩[A020692(n+1), A040999(n+1)]`
-/

namespace A107178.P8278350210297109292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P8278350210297109292

namespace A107178

/-- `∩[A020692(n+1), A040999(n+1)]` -/
def P8278350210297109292.Spec : Prop :=
  ∀ n, (P8278350210297109292.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P2343271145962491529

`∩[A020692(n+1), A042986(n+1)]`
-/

namespace A107178.P2343271145962491529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P2343271145962491529

namespace A107178

/-- `∩[A020692(n+1), A042986(n+1)]` -/
def P2343271145962491529.Spec : Prop :=
  ∀ n, (P2343271145962491529.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P6242664612486532000

`∩[A020692(n+1), A042991(n+1)]`
-/

namespace A107178.P6242664612486532000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P6242664612486532000

namespace A107178

/-- `∩[A020692(n+1), A042991(n+1)]` -/
def P6242664612486532000.Spec : Prop :=
  ∀ n, (P6242664612486532000.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P17202488850305691668

`∩[A020692(n+1), A042992(n+1)]`
-/

namespace A107178.P17202488850305691668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P17202488850305691668

namespace A107178

/-- `∩[A020692(n+1), A042992(n+1)]` -/
def P17202488850305691668.Spec : Prop :=
  ∀ n, (P17202488850305691668.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P10403955401087790386

`∩[A020692(n+1), A042993(n+1)]`
-/

namespace A107178.P10403955401087790386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P10403955401087790386

namespace A107178

/-- `∩[A020692(n+1), A042993(n+1)]` -/
def P10403955401087790386.Spec : Prop :=
  ∀ n, (P10403955401087790386.a n : ℤ) = A107178 (n + 1)

end A107178

/-! ## A107178.P18325302965104973751

`∩[A020692(n+1), A045321(n+1)]`
-/

namespace A107178.P18325302965104973751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P18325302965104973751

namespace A107178

/-- `∩[A020692(n+1), A045321(n+1)]` -/
def P18325302965104973751.Spec : Prop :=
  ∀ n, (P18325302965104973751.a n : ℤ) = A107178 (n + 1)

end A107178

/-!
# A107179: Primes of the form 5x^2 + 14y^2.

The programs for A107179, there is no canonical definition to state claims against.
-/

/-! ## A107179.P12825558925758725793

`∪[A139915(n+1), A139920(n+1)]`
-/

namespace A107179.P12825558925758725793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P12825558925758725793

/-! ## A107179.P10937439530569705738

`∩[A038872(n+1), A106915(n+1)]`
-/

namespace A107179.P10937439530569705738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P10937439530569705738

/-! ## A107179.P15768864430686616355

`∩[A106915(n+1), A341783(n+1)]`
-/

namespace A107179.P15768864430686616355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P15768864430686616355

/-! ## A107179.P14998255026247660827

`∩[A031363(n+1), A106915(n+1)]`
-/

namespace A107179.P14998255026247660827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P14998255026247660827

/-! ## A107179.P11687328789945985966

`∩[A057762(n+1), A106915(n+1)]`
-/

namespace A107179.P11687328789945985966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P11687328789945985966

/-! ## A107179.P521076125512851083

`∩[A035259(n+1), A106915(n+1)]`
-/

namespace A107179.P521076125512851083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P521076125512851083

/-! ## A107179.P16426243791054961298

`∩[A063213(n+1), A106915(n+1)]`
-/

namespace A107179.P16426243791054961298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P16426243791054961298

/-! ## A107179.P15456307264157049726

`∩[A106915(n+1), A374492(n+1)]`
-/

namespace A107179.P15456307264157049726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P15456307264157049726

/-! ## A107179.P17633224227064605667

`∩[A008854(n+1), A106915(n+1)]`
-/

namespace A107179.P17633224227064605667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P17633224227064605667

/-! ## A107179.P152405660113167004

`p?[eq[A028928(n), A040573(n)]]`
-/

namespace A107179.P152405660113167004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040573 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107179.P152405660113167004

/-! ## A107179.P14673107863801687777

`∩[A106915(n+1), A275068(n)]`
-/

namespace A107179.P14673107863801687777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P14673107863801687777

/-! ## A107179.P17428767541063609626

`∩[A089270(n+1), A106915(n+1)]`
-/

namespace A107179.P17428767541063609626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107179.P17428767541063609626

/-!
# A107180: Primes of the form 2x^2 + 35y^2.

The programs for A107180, the canonical program `A107180.P2579341068721493242` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107180 has offset 1).

The definition of A107180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107180.P2579341068721493242

`∩[A045373(n+1), A141179(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107180

/-- `∩[A045373(n+1), A141179(n+1)]` -/
def P2579341068721493242.Spec : Prop :=
  ∀ n, (P2579341068721493242.a n : ℤ) = A107180 (n + 1)

theorem P2579341068721493242.correct : P2579341068721493242.Spec := by
  intro n
  simp only [A107180, Nat.add_sub_cancel]

end A107180

/-! ## A107180.P1166420108586233476

`∩[A045386(n+1), A141179(n+1)]`
-/

namespace A107180.P1166420108586233476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P1166420108586233476

namespace A107180

/-- `∩[A045386(n+1), A141179(n+1)]` -/
def P1166420108586233476.Spec : Prop :=
  ∀ n, (P1166420108586233476.a n : ℤ) = A107180 (n + 1)

end A107180

/-! ## A107180.P18211628993121819150

`∩[A141179(n+1), A274504(n+1)]`
-/

namespace A107180.P18211628993121819150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P18211628993121819150

namespace A107180

/-- `∩[A141179(n+1), A274504(n+1)]` -/
def P18211628993121819150.Spec : Prop :=
  ∀ n, (P18211628993121819150.a n : ℤ) = A107180 (n + 1)

end A107180

/-! ## A107180.P16948195599381744231

`∩[A141179(n+1), A191068(n+1)]`
-/

namespace A107180.P16948195599381744231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P16948195599381744231

namespace A107180

/-- `∩[A141179(n+1), A191068(n+1)]` -/
def P16948195599381744231.Spec : Prop :=
  ∀ n, (P16948195599381744231.a n : ℤ) = A107180 (n + 1)

end A107180

/-! ## A107180.P280549056837501837

`∩[A141179(n+1), A244779(n+1)]`
-/

namespace A107180.P280549056837501837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P280549056837501837

namespace A107180

/-- `∩[A141179(n+1), A244779(n+1)]` -/
def P280549056837501837.Spec : Prop :=
  ∀ n, (P280549056837501837.a n : ℤ) = A107180 (n + 1)

end A107180

/-! ## A107180.P4600541716216946072

`∩[A035248(n+1), A141179(n+1)]`
-/

namespace A107180.P4600541716216946072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P4600541716216946072

namespace A107180

/-- `∩[A035248(n+1), A141179(n+1)]` -/
def P4600541716216946072.Spec : Prop :=
  ∀ n, (P4600541716216946072.a n : ℤ) = A107180 (n + 1)

end A107180

/-! ## A107180.P18032915869766020909

`∩[A047350(n+1), A141179(n+1)]`
-/

namespace A107180.P18032915869766020909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P18032915869766020909

namespace A107180

/-- `∩[A047350(n+1), A141179(n+1)]` -/
def P18032915869766020909.Spec : Prop :=
  ∀ n, (P18032915869766020909.a n : ℤ) = A107180 (n + 1)

end A107180

/-! ## A107180.P13598952054384368166

`∩[A047351(n+1), A141179(n+1)]`
-/

namespace A107180.P13598952054384368166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P13598952054384368166

namespace A107180

/-- `∩[A047351(n+1), A141179(n+1)]` -/
def P13598952054384368166.Spec : Prop :=
  ∀ n, (P13598952054384368166.a n : ℤ) = A107180 (n + 1)

end A107180

/-!
# A107181: Primes of the form 8x^2 + 9y^2.

The programs for A107181, the canonical program `A107181.P7230960381474383032` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107181 has offset 1).

The definition of A107181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9820 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107181.P333701628097776305

`24*A139531(n+1)+17`
-/

namespace A107181.P333701628097776305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A139531 (n + 1) + 17

end

end A107181.P333701628097776305

namespace A107181

/-- `24*A139531(n+1)+17` -/
def P333701628097776305.Spec : Prop :=
  ∀ n, P333701628097776305.a n = A107181 (n + 1)

end A107181

/-! ## A107181.P7230960381474383032

`p?[24*n-7]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107181

/-- `p?[24*n-7]` -/
def P7230960381474383032.Spec : Prop :=
  ∀ n, P7230960381474383032.a n = A107181 (n + 1)

theorem P7230960381474383032.correct : P7230960381474383032.Spec := by
  intro n
  simp only [A107181, Nat.add_sub_cancel]

end A107181

/-! ## A107181.P16692334603725256069

`record[p?[lcm(9, n+1)-n]]`
-/

namespace A107181.P16692334603725256069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107181.P16692334603725256069

namespace A107181

/-- `record[p?[lcm(9, n+1)-n]]` -/
def P16692334603725256069.Spec : Prop :=
  ∀ n, P16692334603725256069.a n = A107181 (n + 1)

end A107181

/-! ## A107181.P13746367338035262351

`A007519(eq[2, A007519(n+1)%3]+1)`
-/

namespace A107181.P13746367338035262351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007519 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107181.P13746367338035262351

namespace A107181

/-- `A007519(eq[2, A007519(n+1)%3]+1)` -/
def P13746367338035262351.Spec : Prop :=
  ∀ n, P13746367338035262351.a n = A107181 (n + 1)

end A107181

/-! ## A107181.P560974151149128494

`∩[A008846(n+1), A290402(n+1)]`
-/

namespace A107181.P560974151149128494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P560974151149128494

namespace A107181

/-- `∩[A008846(n+1), A290402(n+1)]` -/
def P560974151149128494.Spec : Prop :=
  ∀ n, (P560974151149128494.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P81294904513976254

`∩[A040117(n+1), A242663(n+1)]`
-/

namespace A107181.P81294904513976254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P81294904513976254

namespace A107181

/-- `∩[A040117(n+1), A242663(n+1)]` -/
def P81294904513976254.Spec : Prop :=
  ∀ n, (P81294904513976254.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P5426510312812490283

`∩[A008846(n+1), A106949(n+1)]`
-/

namespace A107181.P5426510312812490283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P5426510312812490283

namespace A107181

/-- `∩[A008846(n+1), A106949(n+1)]` -/
def P5426510312812490283.Spec : Prop :=
  ∀ n, (P5426510312812490283.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P5357843899828986289

`∩[A106949(n+1), A242663(n+1)]`
-/

namespace A107181.P5357843899828986289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P5357843899828986289

namespace A107181

/-- `∩[A106949(n+1), A242663(n+1)]` -/
def P5357843899828986289.Spec : Prop :=
  ∀ n, (P5357843899828986289.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P12646292215485731273

`∩[A008846(n+1), A256397(n+1)]`
-/

namespace A107181.P12646292215485731273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P12646292215485731273

namespace A107181

/-- `∩[A008846(n+1), A256397(n+1)]` -/
def P12646292215485731273.Spec : Prop :=
  ∀ n, (P12646292215485731273.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P1152106131573049326

`∩[A040117(n+1), A256397(n+1)]`
-/

namespace A107181.P1152106131573049326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P1152106131573049326

namespace A107181

/-- `∩[A040117(n+1), A256397(n+1)]` -/
def P1152106131573049326.Spec : Prop :=
  ∀ n, (P1152106131573049326.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P11786756429511411854

`∩[A040117(n+1), A332226(n+1)]`
-/

namespace A107181.P11786756429511411854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P11786756429511411854

namespace A107181

/-- `∩[A040117(n+1), A332226(n+1)]` -/
def P11786756429511411854.Spec : Prop :=
  ∀ n, (P11786756429511411854.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P16230769219379635637

`record[p?[lcm(6, n)+1+n]]`
-/

namespace A107181.P16230769219379635637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107181.P16230769219379635637

namespace A107181

/-- `record[p?[lcm(6, n)+1+n]]` -/
def P16230769219379635637.Spec : Prop :=
  ∀ n, (P16230769219379635637.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P15423000570380649489

`∩[A106949(n+1), A191218(n+1)]`
-/

namespace A107181.P15423000570380649489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P15423000570380649489

namespace A107181

/-- `∩[A106949(n+1), A191218(n+1)]` -/
def P15423000570380649489.Spec : Prop :=
  ∀ n, (P15423000570380649489.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P8307126885540261195

`∩[A191218(n+1), A256397(n+1)]`
-/

namespace A107181.P8307126885540261195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P8307126885540261195

namespace A107181

/-- `∩[A191218(n+1), A256397(n+1)]` -/
def P8307126885540261195.Spec : Prop :=
  ∀ n, (P8307126885540261195.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P771184930758937930

`∩[A191218(n+1), A290402(n+1)]`
-/

namespace A107181.P771184930758937930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P771184930758937930

namespace A107181

/-- `∩[A191218(n+1), A290402(n+1)]` -/
def P771184930758937930.Spec : Prop :=
  ∀ n, (P771184930758937930.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P766956756431959097

`A350052(A139531(n+1))`
-/

namespace A107181.P766956756431959097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 (A139531 (n + 1)).toNat

end

end A107181.P766956756431959097

namespace A107181

/-- `A350052(A139531(n+1))` -/
def P766956756431959097.Spec : Prop :=
  ∀ n, P766956756431959097.a n = A107181 (n + 1)

end A107181

/-! ## A107181.P14169124781655254958

`∩[A040117(n+1), A350052(n)]`
-/

namespace A107181.P14169124781655254958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P14169124781655254958

namespace A107181

/-- `∩[A040117(n+1), A350052(n)]` -/
def P14169124781655254958.Spec : Prop :=
  ∀ n, (P14169124781655254958.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P1674132190777903882

`∩[A350052(n), A001132(n+1)]`
-/

namespace A107181.P1674132190777903882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P1674132190777903882

namespace A107181

/-- `∩[A350052(n), A001132(n+1)]` -/
def P1674132190777903882.Spec : Prop :=
  ∀ n, (P1674132190777903882.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P4043508414199569950

`∩[A038873(n+1), A350052(n)]`
-/

namespace A107181.P4043508414199569950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P4043508414199569950

namespace A107181

/-- `∩[A038873(n+1), A350052(n)]` -/
def P4043508414199569950.Spec : Prop :=
  ∀ n, (P4043508414199569950.a n : ℤ) = A107181 (n + 1)

end A107181

/-! ## A107181.P4163367306290311770

`∩[A003627(n+1), A242663(n+1)]`
-/

namespace A107181.P4163367306290311770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107181.P4163367306290311770

namespace A107181

/-- `∩[A003627(n+1), A242663(n+1)]` -/
def P4163367306290311770.Spec : Prop :=
  ∀ n, (P4163367306290311770.a n : ℤ) = A107181 (n + 1)

end A107181

/-!
# A107182: Primes of the form 2x^2 + 37y^2.

The programs for A107182, there is no canonical definition to state claims against.
-/

/-! ## A107182.P17421805527351365029

`A135834(A220908(n+1)+1)`
-/

namespace A107182.P17421805527351365029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135834 (A220908 (n + 1) + 1).toNat

end

end A107182.P17421805527351365029

/-!
# A107183: Primes of the form 3x^2 + 25y^2.

The programs for A107183, there is no canonical definition to state claims against.
-/

/-! ## A107183.P2739805002109115526

`∩[A040054(n+1), A106952(n+1)]`
-/

namespace A107183.P2739805002109115526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107183.P2739805002109115526

/-! ## A107183.P13269302864521437063

`∩[A040054(n+1), A298360(n+1)]`
-/

namespace A107183.P13269302864521437063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107183.P13269302864521437063

/-! ## A107183.P4572940482644504037

`∩[A047271(2*(n+1))+n, A040054(n+1)]`
-/

namespace A107183.P4572940482644504037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107183.P4572940482644504037

/-!
# A107184: Primes of the form x^2 + 75y^2.

The programs for A107184, there is no canonical definition to state claims against.
-/

/-! ## A107184.P12916952004892677807

`∩[A033212(n+1), A040054(n+1)]`
-/

namespace A107184.P12916952004892677807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107184.P12916952004892677807

/-! ## A107184.P3555847803712148765

`∩[A040054(n+1), A243174(n+1)]`
-/

namespace A107184.P3555847803712148765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107184.P3555847803712148765

/-! ## A107184.P5865866573191261624

`∩[A040054(n+1), A390422(n+1)]`
-/

namespace A107184.P5865866573191261624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107184.P5865866573191261624

/-! ## A107184.P8952096185466441087

`∩[A040054(n+1), A243173(n+1)]`
-/

namespace A107184.P8952096185466441087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107184.P8952096185466441087

/-! ## A107184.P9117830138251726987

`∩[A040054(n+1), A146510(n+1)]`
-/

namespace A107184.P9117830138251726987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107184.P9117830138251726987

/-!
# A107185: Primes of the form 4x^2 + 19y^2.

The programs for A107185, there is no canonical definition to state claims against.
-/

/-! ## A107185.P10524881643903056415

`∩[A002145(n+1), A033214(n+1)]`
-/

namespace A107185.P10524881643903056415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P10524881643903056415

/-! ## A107185.P10752802721125476143

`∩[A033214(n+1), A045326(n+1)]`
-/

namespace A107185.P10752802721125476143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P10752802721125476143

/-! ## A107185.P13910589195977642338

`∩[A033214(n+1), A085760(n+1)]`
-/

namespace A107185.P13910589195977642338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P13910589195977642338

/-! ## A107185.P3226443421918232796

`∩[A033214(n+1), A197504(n+1)]`
-/

namespace A107185.P3226443421918232796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P3226443421918232796

/-! ## A107185.P10526241558624364610

`∩[A033214(n+1), A332555(n+1)]`
-/

namespace A107185.P10526241558624364610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P10526241558624364610

/-! ## A107185.P11201148693814341500

`∩[A033214(n+1), A292762(n+1)]`
-/

namespace A107185.P11201148693814341500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P11201148693814341500

/-! ## A107185.P15602368619005362481

`∩[A033214(n+1), A066499(n+1)]`
-/

namespace A107185.P15602368619005362481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P15602368619005362481

/-! ## A107185.P3262019027756226670

`∩[A033214(n+1), A097987(n+1)]`
-/

namespace A107185.P3262019027756226670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P3262019027756226670

/-! ## A107185.P16735405659748488273

`∩[A033214(n+1), A094179(n+1)]`
-/

namespace A107185.P16735405659748488273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P16735405659748488273

/-! ## A107185.P509636037962180821

`filter[A033214(n+1), A359152(#)]`
-/

namespace A107185.P509636037962180821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A107185.P509636037962180821

/-! ## A107185.P6065923878529341473

`∩[A033214(n+1), A380787(n+1)]`
-/

namespace A107185.P6065923878529341473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P6065923878529341473

/-! ## A107185.P5760210714616478014

`∩[A033214(n+1), A120127(n+1)]`
-/

namespace A107185.P5760210714616478014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P5760210714616478014

/-! ## A107185.P2299694679551323594

`∩[A033214(n+1), A167181(n+1)]`
-/

namespace A107185.P2299694679551323594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P2299694679551323594

/-! ## A107185.P772357813756780358

`∩[A033214(n+1), A359153(n+1)]`
-/

namespace A107185.P772357813756780358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P772357813756780358

/-! ## A107185.P10084235067412596044

`∩[A033214(n+1), A309388(n+1)]`
-/

namespace A107185.P10084235067412596044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P10084235067412596044

/-! ## A107185.P10190329797146907160

`∩[A004614(n+1), A033214(n+1)]`
-/

namespace A107185.P10190329797146907160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107185.P10190329797146907160

/-! ## A107185.P8042120845872984230

`filter[A033214(n+1), A347871(#)]`
-/

namespace A107185.P8042120845872984230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A107185.P8042120845872984230

/-! ## A107185.P49483202802405051

`filter[A033214(n+1), A354028(#)]`
-/

namespace A107185.P49483202802405051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A107185.P49483202802405051

/-! ## A107185.P12575908538215930289

`filter[A033214(n+1), A354029(#)]`
-/

namespace A107185.P12575908538215930289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A107185.P12575908538215930289

/-! ## A107185.P7150056670322056375

`filter[A033214(n+1), A354033(#)]`
-/

namespace A107185.P7150056670322056375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A107185.P7150056670322056375

/-!
# A107186: Primes of the form x^2 + 76y^2.

The programs for A107186, there is no canonical definition to state claims against.
-/

/-! ## A107186.P10550097865875218456

`∩[A008846(n+1), A033214(n+1)]`
-/

namespace A107186.P10550097865875218456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P10550097865875218456

/-! ## A107186.P9610868945544917121

`∩[A033214(n+1), A142956(n+1)]`
-/

namespace A107186.P9610868945544917121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P9610868945544917121

/-! ## A107186.P16472643313323294457

`∩[A033214(n+1), A191218(n+1)]`
-/

namespace A107186.P16472643313323294457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P16472643313323294457

/-! ## A107186.P1352222935978205322

`∩[A002144(n+1), A033214(n+1)]`
-/

namespace A107186.P1352222935978205322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P1352222935978205322

/-! ## A107186.P2538587620475782279

`∩[A002313(n+1), A033214(n+1)]`
-/

namespace A107186.P2538587620475782279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P2538587620475782279

/-! ## A107186.P12770465974015312909

`∩[A033214(n+1), A280084(n+1)]`
-/

namespace A107186.P12770465974015312909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P12770465974015312909

/-! ## A107186.P10773435383263212438

`∩[A033214(n+1), A297175(n+1)]`
-/

namespace A107186.P10773435383263212438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P10773435383263212438

/-! ## A107186.P15938392755700242762

`∩[A033214(n+1), A055025(n+1)]`
-/

namespace A107186.P15938392755700242762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P15938392755700242762

/-! ## A107186.P15389109996068963958

`∩[A033214(n+1), A120960(n+1)]`
-/

namespace A107186.P15389109996068963958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P15389109996068963958

/-! ## A107186.P3550112744283106813

`∩[A033214(n+1), A085759(n+1)]`
-/

namespace A107186.P3550112744283106813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P3550112744283106813

/-! ## A107186.P6246293066222296545

`∩[A033214(n+1), A351535(n+1)]`
-/

namespace A107186.P6246293066222296545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P6246293066222296545

/-! ## A107186.P6195413424563641729

`∩[A033214(n+1), A125018(n+1)]`
-/

namespace A107186.P6195413424563641729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P6195413424563641729

/-! ## A107186.P16407856403157205662

`∩[A033214(n+1), A230779(n+1)]`
-/

namespace A107186.P16407856403157205662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P16407856403157205662

/-! ## A107186.P4094225284090465604

`∩[A033214(n+1), A347877(n+1)]`
-/

namespace A107186.P4094225284090465604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P4094225284090465604

/-! ## A107186.P306386918286766693

`∩[A033214(n+1), A281292(n+1)]`
-/

namespace A107186.P306386918286766693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P306386918286766693

/-! ## A107186.P8302897885511833850

`∩[A033214(n+1), A224450(n+1)]`
-/

namespace A107186.P8302897885511833850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P8302897885511833850

/-! ## A107186.P14218399149617041170

`∩[A033214(n+1), A354934(n+1)]`
-/

namespace A107186.P14218399149617041170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P14218399149617041170

/-! ## A107186.P13520479203124832785

`∩[A003653(n+1), A033214(n+1)]`
-/

namespace A107186.P13520479203124832785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P13520479203124832785

/-! ## A107186.P3617883135282829384

`∩[A033214(n+1), A231754(n+1)]`
-/

namespace A107186.P3617883135282829384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P3617883135282829384

/-! ## A107186.P8046887147375032252

`∩[A004613(n+1), A033214(n+1)]`
-/

namespace A107186.P8046887147375032252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107186.P8046887147375032252

/-!
# A107187: Primes of the form 7x^2 + 11y^2.

The programs for A107187, there is no canonical definition to state claims against.
-/

/-! ## A107187.P16688241642901700697

`A177681(A045878(n+2))`
-/

namespace A107187.P16688241642901700697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177681 (A045878 (n + 2)).toNat

end

end A107187.P16688241642901700697

/-!
# A107188: Primes of the form 6x^2 + 13y^2.

The programs for A107188, there is no canonical definition to state claims against.
-/

/-! ## A107188.P228791492777067316

`∪[A139926(n+1), A139927(n+1)]`
-/

namespace A107188.P228791492777067316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107188.P228791492777067316

/-! ## A107188.P15820062410414048588

`A387471(n²+3)`
-/

namespace A107188.P15820062410414048588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387471 (n ^ 2 + 3)

end

end A107188.P15820062410414048588

/-! ## A107188.P5263611810362300702

`A144917(n²+4)`
-/

namespace A107188.P5263611810362300702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (n ^ 2 + 4)

end

end A107188.P5263611810362300702

/-! ## A107188.P2064257740923591397

`A343250(18*n²+39)`
-/

namespace A107188.P2064257740923591397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (18 * n ^ 2 + 39)

end

end A107188.P2064257740923591397

/-!
# A107189: Primes of the form 3x^2 + 26y^2.

The programs for A107189, there is no canonical definition to state claims against.
-/

/-! ## A107189.P2024599543739137068

`∪[A139921(n+1), A139925(n+1)]`
-/

namespace A107189.P2024599543739137068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P2024599543739137068

/-! ## A107189.P4713981504148384609

`∩[A038883(n+1), A084865(n+1)]`
-/

namespace A107189.P4713981504148384609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P4713981504148384609

/-! ## A107189.P13698479974551727678

`∩[A084865(n+1), A296937(n+1)]`
-/

namespace A107189.P13698479974551727678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P13698479974551727678

/-! ## A107189.P11338118396531227158

`∩[A038900(n+1), A084865(n+1)]`
-/

namespace A107189.P11338118396531227158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P11338118396531227158

/-! ## A107189.P9030062639212417352

`∩[A084865(n+1), A270997(n+1)]`
-/

namespace A107189.P9030062639212417352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P9030062639212417352

/-! ## A107189.P11391565849168271127

`∩[A035256(n+1), A084865(n+1)]`
-/

namespace A107189.P11391565849168271127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P11391565849168271127

/-! ## A107189.P13571287416699414948

`∩[A002480(n+1), A038883(n+1)]`
-/

namespace A107189.P13571287416699414948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P13571287416699414948

/-! ## A107189.P8993222483599676257

`∩[A002480(n+1), A038900(n+1)]`
-/

namespace A107189.P8993222483599676257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P8993222483599676257

/-! ## A107189.P2513086929739679900

`∩[A002480(n+1), A296937(n+1)]`
-/

namespace A107189.P2513086929739679900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107189.P2513086929739679900

/-!
# A107190: Primes of the form 2x^2 + 39y^2.

The programs for A107190, there is no canonical definition to state claims against.
-/

/-! ## A107190.P7994175856261912372

`∩[A040992(n+1), A106886(n+1)]`
-/

namespace A107190.P7994175856261912372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P7994175856261912372

/-! ## A107190.P14214840138052885745

`∩[A038873(n+1), A106886(n+1)]`
-/

namespace A107190.P14214840138052885745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P14214840138052885745

/-! ## A107190.P3180034213464285877

`∩[A055673(n+1), A106886(n+1)]`
-/

namespace A107190.P3180034213464285877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P3180034213464285877

/-! ## A107190.P826217268392679240

`∩[A049550(n+1), A106886(n+1)]`
-/

namespace A107190.P826217268392679240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P826217268392679240

/-! ## A107190.P280694245993210905

`∩[A049558(n+1), A106886(n+1)]`
-/

namespace A107190.P280694245993210905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P280694245993210905

/-! ## A107190.P162958348209766815

`∩[A057126(n+1), A106886(n+1)]`
-/

namespace A107190.P162958348209766815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P162958348209766815

/-! ## A107190.P11967942972368729861

`∩[A038873(n+1), A243680(n)]`
-/

namespace A107190.P11967942972368729861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P11967942972368729861

/-! ## A107190.P10987246157403180755

`∩[A040992(n+1), A243680(n)]`
-/

namespace A107190.P10987246157403180755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P10987246157403180755

/-! ## A107190.P12716667895264808213

`∩[A049550(n+1), A243680(n)]`
-/

namespace A107190.P12716667895264808213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P12716667895264808213

/-! ## A107190.P1710844526896531289

`∩[A049558(n+1), A243680(n)]`
-/

namespace A107190.P1710844526896531289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P1710844526896531289

/-! ## A107190.P14334836996105414223

`∩[A055673(n+1), A243680(n)]`
-/

namespace A107190.P14334836996105414223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P14334836996105414223

/-! ## A107190.P3326846320526896987

`∩[A106886(n+1), A227144(n+1)]`
-/

namespace A107190.P3326846320526896987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P3326846320526896987

/-! ## A107190.P14978569867250529950

`∩[A035251(n+1), A106886(n+1)]`
-/

namespace A107190.P14978569867250529950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P14978569867250529950

/-! ## A107190.P14459551375971086780

`∩[A106886(n+1), A385723(n+1)]`
-/

namespace A107190.P14459551375971086780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P14459551375971086780

/-! ## A107190.P14116168596712253490

`∩[A047526(n+1), A106886(n+1)]`
-/

namespace A107190.P14116168596712253490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P14116168596712253490

/-! ## A107190.P5026724262018599411

`∩[A047527(n+1), A106886(n+1)]`
-/

namespace A107190.P5026724262018599411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P5026724262018599411

/-! ## A107190.P9623234618063277829

`∩[A047541(n+1), A106886(n+1)]`
-/

namespace A107190.P9623234618063277829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P9623234618063277829

/-! ## A107190.P8424063613122469173

`∩[A047554(n+1), A106886(n+1)]`
-/

namespace A107190.P8424063613122469173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P8424063613122469173

/-! ## A107190.P11199713605029933152

`∩[A066507(n+1), A106886(n+1)]`
-/

namespace A107190.P11199713605029933152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P11199713605029933152

/-! ## A107190.P17211254928945712513

`∩[A047512(n+1), A106886(n+1)]`
-/

namespace A107190.P17211254928945712513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107190.P17211254928945712513

/-!
# A107191: Primes of the form 5x^2 + 16y^2.

The programs for A107191, there is no canonical definition to state claims against.
-/

/-! ## A107191.P2955114394818288023

`∩[A007521(n+1), A106963(n+1)]`
-/

namespace A107191.P2955114394818288023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P2955114394818288023

/-! ## A107191.P10732807062079606933

`∩[A045366(n+1), A106963(n+1)]`
-/

namespace A107191.P10732807062079606933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P10732807062079606933

/-! ## A107191.P136814912170932151

`∩[A053028(n+1), A106963(n+1)]`
-/

namespace A107191.P136814912170932151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P136814912170932151

/-! ## A107191.P8508824838739003803

`∩[A106963(n+1), A395264(n+1)]`
-/

namespace A107191.P8508824838739003803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P8508824838739003803

/-! ## A107191.P13871322916723334031

`∩[A004627(n+1), A106963(n+1)]`
-/

namespace A107191.P13871322916723334031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P13871322916723334031

/-! ## A107191.P7015975605394251732

`∩[A003628(n+1), A106963(n+1)]`
-/

namespace A107191.P7015975605394251732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P7015975605394251732

/-! ## A107191.P14933504114980350182

`∩[A003629(n+1), A106963(n+1)]`
-/

namespace A107191.P14933504114980350182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P14933504114980350182

/-! ## A107191.P11795794278763698108

`∩[A045355(n+1), A106963(n+1)]`
-/

namespace A107191.P11795794278763698108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P11795794278763698108

/-! ## A107191.P3854581310338740742

`∩[A106963(n+1), A228228(n+1)]`
-/

namespace A107191.P3854581310338740742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P3854581310338740742

/-! ## A107191.P872340503967777404

`∩[A042999(n+1), A106963(n+1)]`
-/

namespace A107191.P872340503967777404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P872340503967777404

/-! ## A107191.P6691653364873772567

`∩[A106963(n+1), A319041(n+1)]`
-/

namespace A107191.P6691653364873772567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P6691653364873772567

/-! ## A107191.P12839417756706845359

`∩[A106963(n+1), A270699(n+1)]`
-/

namespace A107191.P12839417756706845359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P12839417756706845359

/-! ## A107191.P11407444470432579796

`∩[A042987(n+1), A106963(n+1)]`
-/

namespace A107191.P11407444470432579796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P11407444470432579796

/-! ## A107191.P3301801157174736505

`∩[A045395(n+1), A106963(n+1)]`
-/

namespace A107191.P3301801157174736505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P3301801157174736505

/-! ## A107191.P15402980806222198224

`∩[A053029(n+1), A106963(n+1)]`
-/

namespace A107191.P15402980806222198224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P15402980806222198224

/-! ## A107191.P8132633677676813094

`∩[A003628(n+1), A020682(n+1)]`
-/

namespace A107191.P8132633677676813094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P8132633677676813094

/-! ## A107191.P5181628131651296306

`∩[A003629(n+1), A020682(n+1)]`
-/

namespace A107191.P5181628131651296306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P5181628131651296306

/-! ## A107191.P209384012488649046

`∩[A007521(n+1), A020682(n+1)]`
-/

namespace A107191.P209384012488649046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P209384012488649046

/-! ## A107191.P8189574863594178393

`∩[A020682(n+1), A042987(n+1)]`
-/

namespace A107191.P8189574863594178393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107191.P8189574863594178393

/-!
# A107192: Primes of the form x^2 + 80*y^2.

The programs for A107192, there is no canonical definition to state claims against.
-/

/-! ## A107192.P15134382327484030480

`∩[A107145(n+1), A047650(n)]`
-/

namespace A107192.P15134382327484030480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P15134382327484030480

/-! ## A107192.P4617685228178781020

`∩[A047272(n+1), A047650(n)]`
-/

namespace A107192.P4617685228178781020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P4617685228178781020

/-! ## A107192.P13986528529037497877

`∩[A047272(n+1), A107145(n+1)]`
-/

namespace A107192.P13986528529037497877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P13986528529037497877

/-! ## A107192.P6679348732350119499

`∩[A332227(n+1), A047650(n)]`
-/

namespace A107192.P6679348732350119499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P6679348732350119499

/-! ## A107192.P1340283342050872753

`∩[A047272(n+1), A332227(n+1)]`
-/

namespace A107192.P1340283342050872753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P1340283342050872753

/-! ## A107192.P15488068063382920614

`∩[A047650(n), A242663(n+1)]`
-/

namespace A107192.P15488068063382920614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P15488068063382920614

/-! ## A107192.P4955589291681507231

`∩[A047272(n+1), A242663(n+1)]`
-/

namespace A107192.P4955589291681507231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P4955589291681507231

/-! ## A107192.P16799070239582693457

`∩[A141180(n+1), A047650(n)]`
-/

namespace A107192.P16799070239582693457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P16799070239582693457

/-! ## A107192.P2049430801346764901

`∩[A047272(n+1), A141180(n+1)]`
-/

namespace A107192.P2049430801346764901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P2049430801346764901

/-! ## A107192.P2411804435706995914

`∩[A007519(n+1), A047650(n)]`
-/

namespace A107192.P2411804435706995914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P2411804435706995914

/-! ## A107192.P14681822589007090480

`∩[A045390(n+1), A047650(n)]`
-/

namespace A107192.P14681822589007090480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P14681822589007090480

/-! ## A107192.P12360868608742361832

`∩[A209544(n+1), A047650(n)]`
-/

namespace A107192.P12360868608742361832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P12360868608742361832

/-! ## A107192.P15774167561971261351

`∩[A007519(n+1), A047272(n+1)]`
-/

namespace A107192.P15774167561971261351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P15774167561971261351

/-! ## A107192.P18054097060237240725

`∩[A045390(n+1), A047272(n+1)]`
-/

namespace A107192.P18054097060237240725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P18054097060237240725

/-! ## A107192.P2745060369184217337

`∩[A047272(n+1), A209544(n+1)]`
-/

namespace A107192.P2745060369184217337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P2745060369184217337

/-! ## A107192.P9474346287935153582

`∩[A033201(n+1), A047650(n)]`
-/

namespace A107192.P9474346287935153582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P9474346287935153582

/-! ## A107192.P2859699795942807500

`∩[A033201(n+1), A047272(n+1)]`
-/

namespace A107192.P2859699795942807500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P2859699795942807500

/-! ## A107192.P247098847311578090

`∩[A332226(n+1), A047650(n)]`
-/

namespace A107192.P247098847311578090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P247098847311578090

/-! ## A107192.P4435949183702077536

`∩[A047272(n+1), A332226(n+1)]`
-/

namespace A107192.P4435949183702077536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P4435949183702077536

/-! ## A107192.P61655122261174774

`∩[A004625(n+1), A047650(n)]`
-/

namespace A107192.P61655122261174774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107192.P61655122261174774

/-!
# A107193: Primes of the form x^2 + 81y^2.

The programs for A107193, there is no canonical definition to state claims against.
-/

/-! ## A107193.P11170998576289109460

`A387471(A031467(n+1))`
-/

namespace A107193.P11170998576289109460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387471 (A031467 (n + 1)).toNat

end

end A107193.P11170998576289109460

/-!
# A107194: Primes of the form 2x^2 + 41y^2.

The programs for A107194, there is no canonical definition to state claims against.
-/

/-! ## A107194.P12834437018009900532

`p?[A006370(A035121(n+1))]`
-/

namespace A107194.P12834437018009900532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A035121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107194.P12834437018009900532

/-! ## A107194.P13065062711457042246

`A342183(n+5)%A000040(A344103(2*(n+1)))`
-/

namespace A107194.P13065062711457042246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342183 (n + 5)) (A000040 (A344103 (2 * (n + 1))).toNat)

end

end A107194.P13065062711457042246

/-!
# A107195: Primes of the form 7x^2 + 12y^2.

The programs for A107195, there is no canonical definition to state claims against.
-/

/-! ## A107195.P15821656665118028497

`∩[A040096(n+1), A359476(n+1)]`
-/

namespace A107195.P15821656665118028497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107195.P15821656665118028497

/-! ## A107195.P14342834170304940225

`A102271(Δ[A325108(2*n+3)]+n)`
-/

namespace A107195.P14342834170304940225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325108 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A107195.P14342834170304940225

/-!
# A107196: Primes of the form 4x^2 + 21y^2.

The programs for A107196, there is no canonical definition to state claims against.
-/

/-! ## A107196.P9062859497172825841

`A250216(A169598(n+1))`
-/

namespace A107196.P9062859497172825841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250216 (A169598 (n + 1)).toNat

end

end A107196.P9062859497172825841

/-!
# A107197: Primes of the form 3x^2 + 28y^2.

The programs for A107197, there is no canonical definition to state claims against.
-/

/-! ## A107197.P1469365798488957126

`A256864(A137009(n+1))`
-/

namespace A107197.P1469365798488957126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256864 (A137009 (n + 1)).toNat

end

end A107197.P1469365798488957126

/-!
# A107198: Primes of the form x^2 + 84y^2.

The programs for A107198, there is no canonical definition to state claims against.
-/

/-! ## A107198.P12353842293332678688

`∩[A033215(n+1), A045319(A342741(n+1))]`
-/

namespace A107198.P12353842293332678688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A342741 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107198.P12353842293332678688

/-! ## A107198.P18128410981335684413

`∩[A033215(n+1), A000040(A342741(n+1)+1)]`
-/

namespace A107198.P18128410981335684413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A342741 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107198.P18128410981335684413

/-!
# A107199: Primes of the form 5x^2 + 17y^2.

The programs for A107199, there is no canonical definition to state claims against.
-/

/-! ## A107199.P12842589643070293662

`∩[A008846(n+1), A141772(n+1)]`
-/

namespace A107199.P12842589643070293662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P12842589643070293662

/-! ## A107199.P12891423776878614304

`∩[A053028(n+1), A141772(n+1)]`
-/

namespace A107199.P12891423776878614304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P12891423776878614304

/-! ## A107199.P16915697443451828721

`∩[A141772(n+1), A191218(n+1)]`
-/

namespace A107199.P16915697443451828721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P16915697443451828721

/-! ## A107199.P3899446599605903068

`∩[A002144(n+1), A141772(n+1)]`
-/

namespace A107199.P3899446599605903068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P3899446599605903068

/-! ## A107199.P16883679303501152404

`∩[A002313(n+1), A141772(n+1)]`
-/

namespace A107199.P16883679303501152404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P16883679303501152404

/-! ## A107199.P5694802012645259396

`∩[A141772(n+1), A280084(n+1)]`
-/

namespace A107199.P5694802012645259396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P5694802012645259396

/-! ## A107199.P9209225151243904275

`∩[A055025(n+1), A141772(n+1)]`
-/

namespace A107199.P9209225151243904275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P9209225151243904275

/-! ## A107199.P14917739628226728920

`∩[A120960(n+1), A141772(n+1)]`
-/

namespace A107199.P14917739628226728920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P14917739628226728920

/-! ## A107199.P6766778509847586996

`∩[A085759(n+1), A141772(n+1)]`
-/

namespace A107199.P6766778509847586996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P6766778509847586996

/-! ## A107199.P7344549537055670861

`∩[A141772(n+1), A351535(n+1)]`
-/

namespace A107199.P7344549537055670861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P7344549537055670861

/-! ## A107199.P15585766611460667151

`∩[A125018(n+1), A141772(n+1)]`
-/

namespace A107199.P15585766611460667151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P15585766611460667151

/-! ## A107199.P13688603451188602851

`∩[A141772(n+1), A230779(n+1)]`
-/

namespace A107199.P13688603451188602851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P13688603451188602851

/-! ## A107199.P10813851410211151722

`∩[A141772(n+1), A347877(n+1)]`
-/

namespace A107199.P10813851410211151722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P10813851410211151722

/-! ## A107199.P11460066621028028698

`∩[A141772(n+1), A281292(n+1)]`
-/

namespace A107199.P11460066621028028698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P11460066621028028698

/-! ## A107199.P15218805387144133179

`∩[A141772(n+1), A224450(n+1)]`
-/

namespace A107199.P15218805387144133179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P15218805387144133179

/-! ## A107199.P9295387496395919358

`∩[A141772(n+1), A354934(n+1)]`
-/

namespace A107199.P9295387496395919358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P9295387496395919358

/-! ## A107199.P16623174728509819368

`∩[A003653(n+1), A141772(n+1)]`
-/

namespace A107199.P16623174728509819368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P16623174728509819368

/-! ## A107199.P16763684575798657520

`∩[A141772(n+1), A231754(n+1)]`
-/

namespace A107199.P16763684575798657520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P16763684575798657520

/-! ## A107199.P1233030716807311058

`∩[A053029(n+1), A141772(n+1)]`
-/

namespace A107199.P1233030716807311058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P1233030716807311058

/-! ## A107199.P2704193798772763783

`∩[A004613(n+1), A141772(n+1)]`
-/

namespace A107199.P2704193798772763783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107199.P2704193798772763783

