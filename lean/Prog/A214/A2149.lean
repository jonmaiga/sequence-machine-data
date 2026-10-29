import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214901: Number of nXnXn triangular 0..3 arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214901, there is no canonical definition to state claims against.
-/

/-! ## A214901.P7143095910094684003

`2*(∏[A001399(n+1)]+1)`
-/

namespace A214901.P7143095910094684003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214901.P7143095910094684003

/-! ## A214901.P15509787611072791483

`∏[A001399(A028310(n)+1)]+2`
-/

namespace A214901.P15509787611072791483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214901.P15509787611072791483

/-! ## A214901.P4778178788848063217

`∏[A001399(A054977(n)+n)]+2`
-/

namespace A214901.P4778178788848063217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A054977 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214901.P4778178788848063217

/-! ## A214901.P7039679488951485185

`∏[A001399(A000007(n)+1+n)]+2`
-/

namespace A214901.P7039679488951485185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A000007 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214901.P7039679488951485185

/-! ## A214901.P7247863203709376863

`A214906(∑[n+3]+1)`
-/

namespace A214901.P7247863203709376863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214901.P7247863203709376863

/-!
# A214902: Number of nXnXn triangular 0..4 arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214902, there is no canonical definition to state claims against.
-/

/-! ## A214902.P1920546100224420579

`A214906(∑[n+4]+3)`
-/

namespace A214902.P1920546100224420579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A214902.P1920546100224420579

/-! ## A214902.P11705146371839980392

`and(-1, A214906(A055998(n+2)))`
-/

namespace A214902.P11705146371839980392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A214906 (A055998 (n + 2)).toNat)

end

end A214902.P11705146371839980392

/-! ## A214902.P16563628631952733585

`A214906(A055998(n+2))+A025466(n)`
-/

namespace A214902.P16563628631952733585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A055998 (n + 2)).toNat + A025466 n

end

end A214902.P16563628631952733585

/-!
# A214903: Number of nXnXn triangular 0..5 arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214903, there is no canonical definition to state claims against.
-/

/-! ## A214903.P4716552393869358215

`A214906(eq[2, A092921(n)])`
-/

namespace A214903.P4716552393869358215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214903.P4716552393869358215

/-! ## A214903.P10975662237405929797

`A214906(eq[4, A193592(n)])`
-/

namespace A214903.P10975662237405929797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214903.P10975662237405929797

/-! ## A214903.P15346833431632120748

`A214906(Δ[A023545(n+1)])`
-/

namespace A214903.P15346833431632120748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (f1 (n + 1) - f1 n).toNat

end

end A214903.P15346833431632120748

/-! ## A214903.P8212936028401020519

`A214906(A027379(n+3)-1)`
-/

namespace A214903.P8212936028401020519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A027379 (n + 3) - 1).toNat

end

end A214903.P8212936028401020519

/-! ## A214903.P14107632850497000704

`A214906(eq[5, A194921(n+1)])`
-/

namespace A214903.P14107632850497000704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214903.P14107632850497000704

/-!
# A214904: Number of nXnXn triangular 0..6 arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214904, there is no canonical definition to state claims against.
-/

/-! ## A214904.P8349700591382823309

`A214906(eq[3, A219347(n)])`
-/

namespace A214904.P8349700591382823309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214904.P8349700591382823309

/-! ## A214904.P11539424352031084656

`A214906(eq[5, A193592(n)])`
-/

namespace A214904.P11539424352031084656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214904.P11539424352031084656

/-! ## A214904.P10713007626685704676

`A214906(eq[8, A258709(n)])`
-/

namespace A214904.P10713007626685704676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214904.P10713007626685704676

/-! ## A214904.P12428380472003394522

`A214906(A000096(n+5)-4)`
-/

namespace A214904.P12428380472003394522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A000096 (n + 5) - 4).toNat

end

end A214904.P12428380472003394522

/-! ## A214904.P13981192915255636250

`A214906(A000217(n+6)-5)`
-/

namespace A214904.P13981192915255636250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A000217 (n + 6) - 5).toNat

end

end A214904.P13981192915255636250

/-!
# A214905: Number of nXnXn triangular 0..7 arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214905, there is no canonical definition to state claims against.
-/

/-! ## A214905.P550221154302839257

`A214906(eq[4, A219347(n)])`
-/

namespace A214905.P550221154302839257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214905.P550221154302839257

/-! ## A214905.P8030283548430229232

`A214906(eq[6, A193592(n)])`
-/

namespace A214905.P8030283548430229232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214905.P8030283548430229232

/-! ## A214905.P6593938053672719594

`A214906(eq[10, A185782(n+1)])`
-/

namespace A214905.P6593938053672719594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214905.P6593938053672719594

/-! ## A214905.P7280220396189012384

`A214906(A000096(n+5)+n+2)`
-/

namespace A214905.P7280220396189012384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A214905.P7280220396189012384

/-! ## A214905.P6739414690129799351

`A214906(A000217(n+6)+n+1)`
-/

namespace A214905.P6739414690129799351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A214905.P6739414690129799351

/-!
# A214906: T(n,k)=Number of nXnXn triangular 0..k arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214906, there is no canonical definition to state claims against.
-/

/-! ## A214906.P14269183245712117904

`A215182(n+1)+A122203(A185144(n))`
-/

namespace A214906.P14269183245712117904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (n + 1) + A122203 (A185144 n).toNat

end

end A214906.P14269183245712117904

/-! ## A214906.P4145161674078464869

`A345377(A368493(n+1))`
-/

namespace A214906.P4145161674078464869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345377 (A368493 (n + 1)).toNat

end

end A214906.P4145161674078464869

/-! ## A214906.P11555949457449220062

`A084516(A181236(n+2))`
-/

namespace A214906.P11555949457449220062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084516 (A181236 (n + 2)).toNat

end

end A214906.P11555949457449220062

/-! ## A214906.P1605409869018582150

`A244580(A207625(n+2))`
-/

namespace A214906.P1605409869018582150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (A207625 (n + 2)).toNat

end

end A214906.P1605409869018582150

/-! ## A214906.P9571078175309084714

`A331246(A325012(n+1)+2)`
-/

namespace A214906.P9571078175309084714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A325012 (n + 1) + 2).toNat

end

end A214906.P9571078175309084714

/-!
# A214907: Number of 3 X 3 X 3 triangular 0..n arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214907, the canonical program `A214907.P13997272547491748181` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214907 has offset 1).

The definition of A214907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214907.P13997272547491748181

`ogf((2+6x+10x^2+13x^3+10x^4+10x^5+8x^6+7x^7+6x^8+x^9-2x^10-2x^11+x^13)/(1-2x^2-2x^3+4x^5+3x^6-3x^8-4x^9+2x^11+2x^12-x^14))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214907

/-- `ogf((2+6x+10x^2+13x^3+10x^4+10x^5+8x^6+7x^7+6x^8+x^9-2x^10-2x^11+x^13)/(1-2x^2-2x^3+4x^5+3x^6-3x^8-4x^9+2x^11+2x^12-x^14))` -/
def P13997272547491748181.Spec : Prop :=
  ∀ n, P13997272547491748181.a n = A214907 (n + 1)

theorem P13997272547491748181.correct : P13997272547491748181.Spec := by
  intro n
  simp only [A214907, Nat.add_sub_cancel]

end A214907

/-! ## A214907.P15025778965416292901

`A214906(∑[n+2]+4)`
-/

namespace A214907.P15025778965416292901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214907.P15025778965416292901

namespace A214907

/-- `A214906(∑[n+2]+4)` -/
def P15025778965416292901.Spec : Prop :=
  ∀ n, P15025778965416292901.a n = A214907 (n + 1)

end A214907

/-! ## A214907.P4344394337540314433

`A214906(A167614(n+1))*A304042(n)`
-/

namespace A214907.P4344394337540314433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A167614 (n + 1)).toNat * A304042 n

end

end A214907.P4344394337540314433

namespace A214907

/-- `A214906(A167614(n+1))*A304042(n)` -/
def P4344394337540314433.Spec : Prop :=
  ∀ n, P4344394337540314433.a n = A214907 (n + 1)

end A214907

/-! ## A214907.P431042373350789189

`A214906(A167614(n+1))%A257890(n)`
-/

namespace A214907.P431042373350789189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214906 (A167614 (n + 1)).toNat) (A257890 n)

end

end A214907.P431042373350789189

namespace A214907

/-- `A214906(A167614(n+1))%A257890(n)` -/
def P431042373350789189.Spec : Prop :=
  ∀ n, P431042373350789189.a n = A214907 (n + 1)

end A214907

/-! ## A214907.P3012839485777571954

`lcm(A158388(n), A214906(A167614(n+1)))`
-/

namespace A214907.P3012839485777571954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A214906 (A167614 (n + 1)).toNat)

end

end A214907.P3012839485777571954

namespace A214907

/-- `lcm(A158388(n), A214906(A167614(n+1)))` -/
def P3012839485777571954.Spec : Prop :=
  ∀ n, (P3012839485777571954.a n : ℤ) = A214907 (n + 1)

end A214907

/-!
# A214908: Number of 4X4X4 triangular 0..n arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214908, there is no canonical definition to state claims against.
-/

/-! ## A214908.P8267201072513570846

`A214906(∑[n+3]+7)`
-/

namespace A214908.P8267201072513570846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A214908.P8267201072513570846

/-! ## A214908.P15834590589205607123

`A214906(A055999(n)+10)%A094794(n)`
-/

namespace A214908.P15834590589205607123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214906 (A055999 n + 10).toNat) (A094794 n)

end

end A214908.P15834590589205607123

/-!
# A214909: Number of 5X5X5 triangular 0..n arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214909, there is no canonical definition to state claims against.
-/

/-! ## A214909.P6928561627544029481

`A214906(A167499(n+3))`
-/

namespace A214909.P6928561627544029481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A167499 (n + 3)).toNat

end

end A214909.P6928561627544029481

/-! ## A214909.P13894723243485478503

`A214906(A155212(n)+13)`
-/

namespace A214909.P13894723243485478503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A155212 n + 13).toNat

end

end A214909.P13894723243485478503

/-! ## A214909.P2192200512452983253

`A214906(A056000(n)+15)`
-/

namespace A214909.P2192200512452983253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A056000 n + 15).toNat

end

end A214909.P2192200512452983253

/-! ## A214909.P11055041186428619241

`A214906(eq[6, A131818(n+1)])`
-/

namespace A214909.P11055041186428619241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214909.P11055041186428619241

/-! ## A214909.P6162169197856293140

`A214906(A167614(n+2)+n+6)`
-/

namespace A214909.P6162169197856293140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A214909.P6162169197856293140

/-!
# A214910: Number of 6X6X6 triangular 0..n arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214910, there is no canonical definition to state claims against.
-/

/-! ## A214910.P15201382345835695503

`A214906(A166136(n+4))`
-/

namespace A214910.P15201382345835695503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A166136 (n + 4)).toNat

end

end A214910.P15201382345835695503

/-! ## A214910.P2295547008164377566

`A214906(A167499(n+4)+1)`
-/

namespace A214910.P2295547008164377566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A167499 (n + 4) + 1).toNat

end

end A214910.P2295547008164377566

/-! ## A214910.P4653477099173338598

`A214906(A000217(n+5)+6)`
-/

namespace A214910.P4653477099173338598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A000217 (n + 5) + 6).toNat

end

end A214910.P4653477099173338598

/-! ## A214910.P2761947233850331480

`A214906(eq[7, A131818(n+1)])`
-/

namespace A214910.P2761947233850331480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214910.P2761947233850331480

/-! ## A214910.P17449215853450831282

`A214906(A000096(n+5)-(n-1))`
-/

namespace A214910.P17449215853450831282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A214910.P17449215853450831282

/-!
# A214911: Number of 7X7X7 triangular 0..n arrays with every horizontal row nondecreasing and having the same average value.

The programs for A214911, there is no canonical definition to state claims against.
-/

/-! ## A214911.P10176440013056786698

`A214906(eq[11, A066657(n)])`
-/

namespace A214911.P10176440013056786698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214911.P10176440013056786698

/-! ## A214911.P5924042041496346286

`A214906(A167499(n+5)+2)`
-/

namespace A214911.P5924042041496346286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A167499 (n + 5) + 2).toNat

end

end A214911.P5924042041496346286

/-! ## A214911.P6517043114741729363

`A214906(A141214(n+3)+10)`
-/

namespace A214911.P6517043114741729363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A141214 (n + 3) + 10).toNat

end

end A214911.P6517043114741729363

/-! ## A214911.P279648805343220242

`A214906(eq[8, A131818(n+1)])`
-/

namespace A214911.P279648805343220242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214911.P279648805343220242

/-! ## A214911.P1562058205081384864

`A214906(A166136(n+4)+n+7)`
-/

namespace A214911.P1562058205081384864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (A166136 (n + 4) + (n + 7 : ℤ)).toNat

end

end A214911.P1562058205081384864

/-!
# A214912: Primes p such that A215029(p) = 0.

The programs for A214912, there is no canonical definition to state claims against.
-/

/-! ## A214912.P14494211847701110345

`p?[lt[abs(A215029(n)), 1]]`
-/

namespace A214912.P14494211847701110345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215029 n|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214912.P14494211847701110345

/-! ## A214912.P1347084685412894439

`p?[A057811(4*n+2)+2]`
-/

namespace A214912.P1347084685412894439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (4 * n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214912.P1347084685412894439

/-! ## A214912.P11141919266649701784

`p?[or(1, A057811(A004767(n)))]`
-/

namespace A214912.P11141919266649701784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057811 (A004767 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214912.P11141919266649701784

/-! ## A214912.P16125734373522373088

`p?[lt[A215029(n), A000035(n)]]`
-/

namespace A214912.P16125734373522373088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214912.P16125734373522373088

/-! ## A214912.P4004301751880875586

`A065091(eq[0, A215030(n+1)])`
-/

namespace A214912.P4004301751880875586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214912.P4004301751880875586

/-! ## A214912.P6466438294141477090

`eq[2, A215029(n)+A005127(n)]`
-/

namespace A214912.P6466438294141477090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n + A005127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214912.P6466438294141477090

/-! ## A214912.P9164063120973903608

`eq[2, A215029(n)+A005128(n)]`
-/

namespace A214912.P9164063120973903608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n + A005128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214912.P9164063120973903608

/-! ## A214912.P5670274463887473118

`A000040(eq[0, A215030(n+1)]+1)`
-/

namespace A214912.P5670274463887473118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A214912.P5670274463887473118

/-! ## A214912.P4156647825182981145

`record[A020639(A057811(4*n+2)+2)]`
-/

namespace A214912.P4156647825182981145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057811 (4 * n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214912.P4156647825182981145

/-! ## A214912.P7315123667270990026

`p?[or(-A215030(n+1), A000040(n+1))]`
-/

namespace A214912.P7315123667270990026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A215030 (n + 1)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214912.P7315123667270990026

/-!
# A214913: a(n+1) = a(n) + max(1, count0s), where count0s is number of 0's in binary representation of a(n).

The programs for A214913, there is no canonical definition to state claims against.
-/

/-! ## A214913.P2749454926604614730

`record[gcd(n, A213727(A080079(n+1)))]`
-/

namespace A214913.P2749454926604614730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A213727 (A080079 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214913.P2749454926604614730

/-! ## A214913.P10449556085629714308

`eq[A063524(n), A213727(A080079(n+1))]`
-/

namespace A214913.P10449556085629714308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (A080079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214913.P10449556085629714308

/-! ## A214913.P13968263995397520874

`eq[A089012(n+10), A213727(A080079(n+1))]`
-/

namespace A214913.P13968263995397520874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089012 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (A080079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214913.P13968263995397520874

/-! ## A214913.P8814237599246138442

`eq[0, A117078(n+1)*A213727(A080079(n+1))]`
-/

namespace A214913.P8814237599246138442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1) * A213727 (A080079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214913.P8814237599246138442

/-! ## A214913.P789929921386618896

`eq[1, A213719(A035327(n))]`
-/

namespace A214913.P789929921386618896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214913.P789929921386618896

/-!
# A214914: a(0)=a(1)=1, a(n) = least k > a(n-1) such that k*a(n-2) is a Fibonacci number.

The programs for A214914, there is no canonical definition to state claims against.
-/

/-! ## A214914.P16320464892447998192

`A219791(A053253(n)²*a(n-1))` with `a(0)=1`
-/

namespace A214914.P16320464892447998192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219791 (A053253 n ^ 2 * a (n - 1)).toNat

end

end A214914.P16320464892447998192

/-! ## A214914.P12018317846397530938

`A220413(A249741(n+1)+A001250(n+1))`
-/

namespace A214914.P12018317846397530938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A249741 (n + 1) + A001250 (n + 1)).toNat

end

end A214914.P12018317846397530938

/-!
# A214915: a(0)=a(1)=1, a(n) = least k > a(n-1) such that k*a(n-2) is a Lucas number.

The programs for A214915, there is no canonical definition to state claims against.
-/

/-! ## A214915.P6303036514482808882

`A129608(A322441(n))+n`
-/

namespace A214915.P6303036514482808882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129608 (A322441 n).toNat + (n : ℤ)

end

end A214915.P6303036514482808882

/-! ## A214915.P10281622594433433230

`and(A109497(A003087(n)), A158005(n+4))`
-/

namespace A214915.P10281622594433433230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109497 (A003087 n).toNat) (A158005 (n + 4))

end

end A214915.P10281622594433433230

/-! ## A214915.P12980494507351260771

`A129608(2*A339626(n)-A008683(2*(n+1)²))+n`
-/

namespace A214915.P12980494507351260771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129608 (2 * A339626 n - A008683 (2 * (n + 1) ^ 2)).toNat + (n : ℤ)

end

end A214915.P12980494507351260771

/-!
# A214916: a(0) = a(1) = 1, a(n) = n! / a(n-2).

The programs for A214916, the canonical program `A214916.P10670883763877657307` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214916 has offset 0).

The definition of A214916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214916.P10670883763877657307

`n!/a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214916

/-- `n!/a(n-2)` -/
def P10670883763877657307.Spec : Prop :=
  ∀ n, P10670883763877657307.a n = (A214916 n : ℚ)

end A214916

/-! ## A214916.P1181591992021445545

`∏[n/a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A214916.P1181591992021445545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214916.P1181591992021445545

namespace A214916

/-- `∏[n/a(n-2)]` -/
def P1181591992021445545.Spec : Prop :=
  ∀ n, P1181591992021445545.a n = (A214916 n : ℚ)

end A214916

/-! ## A214916.P588763282583396462

`n*a(n-1)/a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A214916.P588763282583396462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℚ) * (a (n - 1) / a (n - 2) * a (n - 3))

end

end A214916.P588763282583396462

namespace A214916

/-- `n*a(n-1)/a(n-2)*a(n-3)` -/
def P588763282583396462.Spec : Prop :=
  ∀ n, P588763282583396462.a n = (A214916 n : ℚ)

end A214916

/-! ## A214916.P5513743210713450038

`A006882(n+1)/ratio[A007662(n)]`
-/

namespace A214916.P5513743210713450038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A214916.P5513743210713450038

namespace A214916

/-- `A006882(n+1)/ratio[A007662(n)]` -/
def P5513743210713450038.Spec : Prop :=
  ∀ n, P5513743210713450038.a n = (A214916 n : ℚ)

end A214916

/-! ## A214916.P17032460245864516163

`A007662(A004273(n)-n)*A007662(n)`
-/

namespace A214916.P17032460245864516163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A004273 n - (n : ℤ)).toNat * A007662 n

end

end A214916.P17032460245864516163

namespace A214916

/-- `A007662(A004273(n)-n)*A007662(n)` -/
def P17032460245864516163.Spec : Prop :=
  ∀ n, P17032460245864516163.a n = A214916 n

end A214916

/-! ## A214916.P7318166029790318965

`A006882(n+1)/A007662(n+1)*A007662(n)`
-/

namespace A214916.P7318166029790318965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A007662 (n + 1) : ℚ) * (A007662 n : ℚ)

end

end A214916.P7318166029790318965

namespace A214916

/-- `A006882(n+1)/A007662(n+1)*A007662(n)` -/
def P7318166029790318965.Spec : Prop :=
  ∀ n, P7318166029790318965.a n = (A214916 n : ℚ)

end A214916

/-! ## A214916.P3845692999965807403

`∏[A007662(n)²/A006882(n)]`
-/

namespace A214916.P3845692999965807403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007662 n ^ 2 : ℚ) / (A006882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214916.P3845692999965807403

namespace A214916

/-- `∏[A007662(n)²/A006882(n)]` -/
def P3845692999965807403.Spec : Prop :=
  ∀ n, P3845692999965807403.a n = (A214916 n : ℚ)

end A214916

/-!
# A214917: a(n) is the least m > 0 such that Fibonacci(n-m) divides Fibonacci(n+1+m).

The programs for A214917, the canonical program `A214917.P17382985834125884691` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214917 has offset 2).

The definition of A214917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214917.P17382985834125884691

`A028310(n)-A014681(A089196(2*(n+2)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A214917

/-- `A028310(n)-A014681(A089196(2*(n+2)))` -/
def P17382985834125884691.Spec : Prop :=
  ∀ n, P17382985834125884691.a n = A214917 (n + 2)

theorem P17382985834125884691.correct : P17382985834125884691.Spec := by
  intro n
  simp only [A214917, Nat.add_sub_cancel]

end A214917

/-! ## A214917.P3393981886381882830

`A065033(2*n)-A014681(A089196(2*(n+2)))`
-/

namespace A214917.P3393981886381882830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A014681 (A089196 (2 * (n + 2))).toNat

end

end A214917.P3393981886381882830

namespace A214917

/-- `A065033(2*n)-A014681(A089196(2*(n+2)))` -/
def P3393981886381882830.Spec : Prop :=
  ∀ n, P3393981886381882830.a n = A214917 (n + 2)

end A214917

/-! ## A214917.P15725083028546591542

`A000007(n)+n-A014681(A089196(2*(n+2)))`
-/

namespace A214917.P15725083028546591542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) - A014681 (A089196 (2 * (n + 2))).toNat

end

end A214917.P15725083028546591542

namespace A214917

/-- `A000007(n)+n-A014681(A089196(2*(n+2)))` -/
def P15725083028546591542.Spec : Prop :=
  ∀ n, P15725083028546591542.a n = A214917 (n + 2)

end A214917

/-! ## A214917.P9505721964212027650

`A004277(n)-n-A014681(A089196(2*(n+2)))`
-/

namespace A214917.P9505721964212027650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (n : ℤ) - A014681 (A089196 (2 * (n + 2))).toNat

end

end A214917.P9505721964212027650

namespace A214917

/-- `A004277(n)-n-A014681(A089196(2*(n+2)))` -/
def P9505721964212027650.Spec : Prop :=
  ∀ n, P9505721964212027650.a n = A214917 (n + 2)

end A214917

/-! ## A214917.P13567935638125455583

`A032742(A004280(n+2)-A004280(A032742(2*n+5)))`
-/

namespace A214917.P13567935638125455583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004280 (n + 2) - A004280 (A032742 (2 * n + 5)).toNat).toNat

end

end A214917.P13567935638125455583

namespace A214917

/-- `A032742(A004280(n+2)-A004280(A032742(2*n+5)))` -/
def P13567935638125455583.Spec : Prop :=
  ∀ n, P13567935638125455583.a n = A214917 (n + 2)

end A214917

/-! ## A214917.P6938480333653769971

`A180906(A238531(n))-A014681(A089196(2*(n+2)))`
-/

namespace A214917.P6938480333653769971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A238531 n).toNat - A014681 (A089196 (2 * (n + 2))).toNat

end

end A214917.P6938480333653769971

namespace A214917

/-- `A180906(A238531(n))-A014681(A089196(2*(n+2)))` -/
def P6938480333653769971.Spec : Prop :=
  ∀ n, P6938480333653769971.a n = A214917 (n + 2)

end A214917

/-!
# A214918: a(n) is the least m > 0 such that Fibonacci(n-m) divides Fibonacci(n+2+m).

The programs for A214918, the canonical program `A214918.P16590612627639944249` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214918 has offset 2).

The definition of A214918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214918.P16590612627639944249

`A028310(A075861(n+3)-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A214918

/-- `A028310(A075861(n+3)-1)` -/
def P16590612627639944249.Spec : Prop :=
  ∀ n, P16590612627639944249.a n = A214918 (n + 2)

theorem P16590612627639944249.correct : P16590612627639944249.Spec := by
  intro n
  simp only [A214918, Nat.add_sub_cancel]

end A214918

/-! ## A214918.P10998688704251495327

`A075861(n+3)-char[A319716(n+1)]`
-/

namespace A214918.P10998688704251495327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A214918.P10998688704251495327

namespace A214918

/-- `A075861(n+3)-char[A319716(n+1)]` -/
def P10998688704251495327.Spec : Prop :=
  ∀ n, P10998688704251495327.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P8449623864840397743

`A075861(n+3)-A000040(n+1)%2`
-/

namespace A214918.P8449623864840397743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (n + 3) - Int.tmod (A000040 (n + 1)) 2

end

end A214918.P8449623864840397743

namespace A214918

/-- `A075861(n+3)-A000040(n+1)%2` -/
def P8449623864840397743.Spec : Prop :=
  ∀ n, P8449623864840397743.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P9183920254163018334

`A075861(n+3)-n/A065033(2*n)`
-/

namespace A214918.P9183920254163018334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075861 (n + 3) : ℚ) - (n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A214918.P9183920254163018334

namespace A214918

/-- `A075861(n+3)-n/A065033(2*n)` -/
def P9183920254163018334.Spec : Prop :=
  ∀ n, P9183920254163018334.a n = (A214918 (n + 2) : ℚ)

end A214918

/-! ## A214918.P973954372105812711

`A075861(n+3)-n/A123108(2*n)`
-/

namespace A214918.P973954372105812711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075861 (n + 3) : ℚ) - (n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A214918.P973954372105812711

namespace A214918

/-- `A075861(n+3)-n/A123108(2*n)` -/
def P973954372105812711.Spec : Prop :=
  ∀ n, P973954372105812711.a n = (A214918 (n + 2) : ℚ)

end A214918

/-! ## A214918.P5310551193061474550

`A075861(n+3)-A000982(n²%(n+1))`
-/

namespace A214918.P5310551193061474550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (n + 3) - A000982 (n ^ 2 % (n + 1))

end

end A214918.P5310551193061474550

namespace A214918

/-- `A075861(n+3)-A000982(n²%(n+1))` -/
def P5310551193061474550.Spec : Prop :=
  ∀ n, P5310551193061474550.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P4634323575871599622

`A075861(n+3)-A075861(C(a(n-1), n)+2)` with `a(0)=1`
-/

namespace A214918.P4634323575871599622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075861 (n + 3) - A075861 (Nat.choose (a (n - 1)).toNat n + 2)

end

end A214918.P4634323575871599622

namespace A214918

/-- `A075861(n+3)-A075861(C(a(n-1), n)+2)` -/
def P4634323575871599622.Spec : Prop :=
  ∀ n, P4634323575871599622.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P11703674024312481512

`A065033(2*n)+A075861(n+3)-A065033(2*n+1)`
-/

namespace A214918.P11703674024312481512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (A075861 (n + 3) - A065033 (2 * n + 1))

end

end A214918.P11703674024312481512

namespace A214918

/-- `A065033(2*n)+A075861(n+3)-A065033(2*n+1)` -/
def P11703674024312481512.Spec : Prop :=
  ∀ n, P11703674024312481512.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P15750782942220417283

`A075861(n+3)-A007318(A007318(A001222(a(n-1))))` with `a(0)=1`
-/

namespace A214918.P15750782942220417283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075861 (n + 3) - A007318 (A007318 (A001222 (a (n - 1)).toNat).toNat).toNat

end

end A214918.P15750782942220417283

namespace A214918

/-- `A075861(n+3)-A007318(A007318(A001222(a(n-1))))` -/
def P15750782942220417283.Spec : Prop :=
  ∀ n, P15750782942220417283.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P5571574520804893420

`A233583(2*n+1)+A075861(n+3)-A233583(2*(n+1))`
-/

namespace A214918.P5571574520804893420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * n + 1) + (A075861 (n + 3) - A233583 (2 * (n + 1)))

end

end A214918.P5571574520804893420

namespace A214918

/-- `A233583(2*n+1)+A075861(n+3)-A233583(2*(n+1))` -/
def P5571574520804893420.Spec : Prop :=
  ∀ n, P5571574520804893420.a n = A214918 (n + 2)

end A214918

/-! ## A214918.P12917681315518378650

`A075861(n+3)-A001221(A000043(A122196(a(n-1)+1)+1))` with `a(0)=1`
-/

namespace A214918.P12917681315518378650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075861 (n + 3) - A001221 (A000043 (A122196 (a (n - 1) + 1).toNat + 1).toNat).toNat

end

end A214918.P12917681315518378650

namespace A214918

/-- `A075861(n+3)-A001221(A000043(A122196(a(n-1)+1)+1))` -/
def P12917681315518378650.Spec : Prop :=
  ∀ n, P12917681315518378650.a n = A214918 (n + 2)

end A214918

/-!
# A214919: a(n) is the least m > 0 such that Lucas(n-m) divides Fibonacci(n+m).

The programs for A214919, there is no canonical definition to state claims against.
-/

/-! ## A214919.P535502595836015860

`A087117(A337667(2*(n+2)))`
-/

namespace A214919.P535502595836015860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A337667 (2 * (n + 2))).toNat

end

end A214919.P535502595836015860

/-! ## A214919.P10050847821552234683

`A065120(A178472(2*(n+2)))-1`
-/

namespace A214919.P10050847821552234683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A178472 (2 * (n + 2))).toNat - 1

end

end A214919.P10050847821552234683

/-! ## A214919.P14506658156803761854

`A065120(A337667(2*n+4))-1`
-/

namespace A214919.P14506658156803761854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A337667 (2 * n + 4)).toNat - 1

end

end A214919.P14506658156803761854

/-! ## A214919.P16075018967531163089

`A087117(A152061(2*(n+2))+1)`
-/

namespace A214919.P16075018967531163089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A152061 (2 * (n + 2)) + 1).toNat

end

end A214919.P16075018967531163089

/-! ## A214919.P3306449642087572527

`A319416(A353681(n+4)+A152061(2*(n+2)))`
-/

namespace A214919.P3306449642087572527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A353681 (n + 4) + A152061 (2 * (n + 2))).toNat

end

end A214919.P3306449642087572527

/-!
# A214920: a(n) is the least m > 0 such that Fibonacci(n-m) divides Lucas(n+m).

The programs for A214920, the canonical program `A214920.P16234763398744443129` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214920 has offset 2).

The definition of A214920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214920.P16234763398744443129

`xor(1, n)-a(a(n-2)%(a(n-1)-n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214920

/-- `xor(1, n)-a(a(n-2)%(a(n-1)-n))` -/
def P16234763398744443129.Spec : Prop :=
  ∀ n, P16234763398744443129.a n = A214920 (n + 2)

theorem P16234763398744443129.correct : P16234763398744443129.Spec := by
  intro n
  simp only [A214920, Nat.add_sub_cancel]

end A214920

/-! ## A214920.P12818344249960972190

`A267458(n)+char[A047238(n+2)]`
-/

namespace A214920.P12818344249960972190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A214920.P12818344249960972190

namespace A214920

/-- `A267458(n)+char[A047238(n+2)]` -/
def P12818344249960972190.Spec : Prop :=
  ∀ n, P12818344249960972190.a n = A214920 (n + 2)

end A214920

/-! ## A214920.P15563437657947180763

`char[A047238(n+1)]+A047241(n+1)%(n+1)`
-/

namespace A214920.P15563437657947180763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod (A047241 (n + 1)) (n + 1 : ℤ)

end

end A214920.P15563437657947180763

namespace A214920

/-- `char[A047238(n+1)]+A047241(n+1)%(n+1)` -/
def P15563437657947180763.Spec : Prop :=
  ∀ n, P15563437657947180763.a n = A214920 (n + 2)

end A214920

/-! ## A214920.P10813710683911029157

`A300293(n)+A028242(A289207(n))`
-/

namespace A214920.P10813710683911029157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 n + A028242 (A289207 n).toNat

end

end A214920.P10813710683911029157

namespace A214920

/-- `A300293(n)+A028242(A289207(n))` -/
def P10813710683911029157.Spec : Prop :=
  ∀ n, P10813710683911029157.a n = A214920 (n + 2)

end A214920

/-! ## A214920.P5675811124163808580

`A028242(A004275(n)-Δ[A285870(n)])`
-/

namespace A214920.P5675811124163808580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004275 n - (f1 (n + 1) - f1 n)).toNat

end

end A214920.P5675811124163808580

namespace A214920

/-- `A028242(A004275(n)-Δ[A285870(n)])` -/
def P5675811124163808580.Spec : Prop :=
  ∀ n, P5675811124163808580.a n = A214920 (n + 2)

end A214920

/-! ## A214920.P7068765467986844416

`A267458(n)+Δ[A002264(A267458(n+1))]`
-/

namespace A214920.P7068765467986844416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A267458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n + (f1 (n + 1) - f1 n)

end

end A214920.P7068765467986844416

namespace A214920

/-- `A267458(n)+Δ[A002264(A267458(n+1))]` -/
def P7068765467986844416.Spec : Prop :=
  ∀ n, P7068765467986844416.a n = A214920 (n + 2)

end A214920

/-! ## A214920.P5743480377561342450

`A047304(n+1)-A047480(n+1)%A047216(n+1)`
-/

namespace A214920.P5743480377561342450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1) - Int.tmod (A047480 (n + 1)) (A047216 (n + 1))

end

end A214920.P5743480377561342450

namespace A214920

/-- `A047304(n+1)-A047480(n+1)%A047216(n+1)` -/
def P5743480377561342450.Spec : Prop :=
  ∀ n, P5743480377561342450.a n = A214920 (n + 2)

end A214920

/-!
# A214922: Numbers of the form x^2 + y^2 + z^3 + w^3 (x, y, z, w >= 0).

The programs for A214922, there is no canonical definition to state claims against.
-/

/-! ## A214922.P11109771143952725565

`comp[n!-97]`
-/

namespace A214922.P11109771143952725565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 97

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214922.P11109771143952725565

/-! ## A214922.P11794105904029432540

`comp[xor(n², 339)]`
-/

namespace A214922.P11794105904029432540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 2) 339

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A214922.P11794105904029432540

/-! ## A214922.P6690222564411647283

`round(root(n, tanh(sqrt(8))))`
-/

namespace A214922.P6690222564411647283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (1 / Real.tanh (Real.sqrt (8 : ℝ))))

end

end A214922.P6690222564411647283

/-! ## A214922.P18330047578052171320

`round(n/sin(sinh(8)))`
-/

namespace A214922.P18330047578052171320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sin (Real.sinh (8 : ℝ)))

end

end A214922.P18330047578052171320

/-!
# A214923: Total count of 1's in binary representation of Fibonacci(n) and previous Fibonacci numbers, minus total count of 0's. That is, partial sums of b(n) = -A037861(Fibonacci(n)).

The programs for A214923, the canonical program `A214923.P17745120934001476500` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214923 has offset 0).

The definition of A214923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214923.P12597739213231496590

`∑[A350700(n)]`
-/

namespace A214923.P12597739213231496590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P12597739213231496590

namespace A214923

/-- `∑[A350700(n)]` -/
def P12597739213231496590.Spec : Prop :=
  ∀ n, P12597739213231496590.a n = A214923 n

end A214923

/-! ## A214923.P17745120934001476500

`∑[A011373(n)-A059016(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214923

/-- `∑[A011373(n)-A059016(n)]` -/
def P17745120934001476500.Spec : Prop :=
  ∀ n, P17745120934001476500.a n = A214923 n

theorem P17745120934001476500.correct : P17745120934001476500.Spec := by
  intro n
  simp only [A214923]

end A214923

/-! ## A214923.P13201730931943029847

`∑[2*A011373(n)-A020909(A028310(n))]`
-/

namespace A214923.P13201730931943029847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011373 n - A020909 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P13201730931943029847

namespace A214923

/-- `∑[2*A011373(n)-A020909(A028310(n))]` -/
def P13201730931943029847.Spec : Prop :=
  ∀ n, P13201730931943029847.a n = A214923 n

end A214923

/-! ## A214923.P7354013847621363479

`∑[∑{digits}[A004685(n), A056220(#)]]`
-/

namespace A214923.P7354013847621363479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A056220 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P7354013847621363479

namespace A214923

/-- `∑[∑{digits}[A004685(n), A056220(#)]]` -/
def P7354013847621363479.Spec : Prop :=
  ∀ n, P7354013847621363479.a n = A214923 n

end A214923

/-! ## A214923.P14141721098313799657

`∑[∑{digits}[A004685(n), #]-A059016(n)]`
-/

namespace A214923.P14141721098313799657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A059016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P14141721098313799657

namespace A214923

/-- `∑[∑{digits}[A004685(n), #]-A059016(n)]` -/
def P14141721098313799657.Spec : Prop :=
  ∀ n, P14141721098313799657.a n = A214923 n

end A214923

/-! ## A214923.P16338885452969604415

`∑[A011373(n)-∑{digits}[A004685(n), 1-#]]`
-/

namespace A214923.P16338885452969604415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P16338885452969604415

namespace A214923

/-- `∑[A011373(n)-∑{digits}[A004685(n), 1-#]]` -/
def P16338885452969604415.Spec : Prop :=
  ∀ n, P16338885452969604415.a n = A214923 n

end A214923

/-!
# A214924: Number of primes <= A214756(n).

The programs for A214924, there is no canonical definition to state claims against.
-/

/-! ## A214924.P16245173660342749921

`A214925(n+1)-A214926(n+1)`
-/

namespace A214924.P16245173660342749921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214925 (n + 1) - A214926 (n + 1)

end

end A214924.P16245173660342749921

/-! ## A214924.P6386040859850301135

`A000720(A214756(n+1))`
-/

namespace A214924.P6386040859850301135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A214756 (n + 1)).toNat

end

end A214924.P6386040859850301135

/-!
# A214925: Number of primes <= A214757(n).

The programs for A214925, there is no canonical definition to state claims against.
-/

/-! ## A214925.P13131631955718031619

`A000720(A214757(n+1))`
-/

namespace A214925.P13131631955718031619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A214757 (n + 1)).toNat

end

end A214925.P13131631955718031619

/-! ## A214925.P10147110723484801769

`A214926(n+1)+A214924(n+1)`
-/

namespace A214925.P10147110723484801769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214926 (n + 1) + A214924 (n + 1)

end

end A214925.P10147110723484801769

/-!
# A214926: Difference A214925(n) - A214924(n), prime count between Ramanujan primes bounding maximal gap primes.

The programs for A214926, there is no canonical definition to state claims against.
-/

/-! ## A214926.P6819042292246110244

`A000720(A214757(n+1))-A000720(A214756(n+1))`
-/

namespace A214926.P6819042292246110244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A214757 (n + 1)).toNat - A000720 (A214756 (n + 1)).toNat

end

end A214926.P6819042292246110244

/-! ## A214926.P4293825415950385549

`A214925(n+1)-A214924(n+1)`
-/

namespace A214926.P4293825415950385549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214925 (n + 1) - A214924 (n + 1)

end

end A214926.P4293825415950385549

/-! ## A214926.P547065166664188736

`A000720(A214757(n+1))-A214924(n+1)`
-/

namespace A214926.P547065166664188736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A214757 (n + 1)).toNat - A214924 (n + 1)

end

end A214926.P547065166664188736

/-! ## A214926.P12940105895799514999

`A214925(n+1)-A000720(A214756(n+1))`
-/

namespace A214926.P12940105895799514999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214925 (n + 1) - A000720 (A214756 (n + 1)).toNat

end

end A214926.P12940105895799514999

/-!
# A214927: Number of n-digit numbers N that do not end with 0 and are such that the reversal of N divides N but is different from N.

The programs for A214927, the canonical program `A214927.P9563668064815521514` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214927 has offset 1).

The definition of A214927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214927.P9563668064815521514

`ogf((2x^3+2x^4)/(1-x^2-x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214927

/-- `ogf((2x^3+2x^4)/(1-x^2-x^4))` -/
def P9563668064815521514.Spec : Prop :=
  ∀ n, P9563668064815521514.a n = A214927 (n + 1)

theorem P9563668064815521514.correct : P9563668064815521514.Spec := by
  intro n
  simp only [A214927, Nat.add_sub_cancel]

end A214927

/-! ## A214927.P12360954561059643585

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A214927.P12360954561059643585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2, 2] fun n a =>
  a (n - 2) + a (n - 4)

end

end A214927.P12360954561059643585

namespace A214927

/-- `a(n-2)+a(n-4)` -/
def P12360954561059643585.Spec : Prop :=
  ∀ n, (P12360954561059643585.a n : ℤ) = A214927 (n + 1)

end A214927

/-! ## A214927.P8107020685558445615

`2*A000045(∑[char[2*n+3]])`
-/

namespace A214927.P8107020685558445615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214927.P8107020685558445615

namespace A214927

/-- `2*A000045(∑[char[2*n+3]])` -/
def P8107020685558445615.Spec : Prop :=
  ∀ n, P8107020685558445615.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P7286647436263705803

`2*A212804(round(∑[or(1, n)]/(n+2)))`
-/

namespace A214927.P7286647436263705803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ))).toNat

end

end A214927.P7286647436263705803

namespace A214927

/-- `2*A212804(round(∑[or(1, n)]/(n+2)))` -/
def P7286647436263705803.Spec : Prop :=
  ∀ n, P7286647436263705803.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P14413331609872733880

`A006355(A065033(n))`
-/

namespace A214927.P14413331609872733880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A065033 n).toNat

end

end A214927.P14413331609872733880

namespace A214927

/-- `A006355(A065033(n))` -/
def P14413331609872733880.Spec : Prop :=
  ∀ n, P14413331609872733880.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P7648041599332405180

`A198834(A080513(n))`
-/

namespace A214927.P7648041599332405180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (A080513 n).toNat

end

end A214927.P7648041599332405180

namespace A214927

/-- `A198834(A080513(n))` -/
def P7648041599332405180.Spec : Prop :=
  ∀ n, P7648041599332405180.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P6396641942952701836

`A198834(A008619(n+1))`
-/

namespace A214927.P6396641942952701836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (A008619 (n + 1)).toNat

end

end A214927.P6396641942952701836

namespace A214927

/-- `A198834(A008619(n+1))` -/
def P6396641942952701836.Spec : Prop :=
  ∀ n, P6396641942952701836.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P13365554089969303348

`A198834(A263997(n+2))`
-/

namespace A214927.P13365554089969303348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (A263997 (n + 2)).toNat

end

end A214927.P13365554089969303348

namespace A214927

/-- `A198834(A263997(n+2))` -/
def P13365554089969303348.Spec : Prop :=
  ∀ n, P13365554089969303348.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P16079037078534465687

`A198834(A004526(n+3))`
-/

namespace A214927.P16079037078534465687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (A004526 (n + 3)).toNat

end

end A214927.P16079037078534465687

namespace A214927

/-- `A198834(A004526(n+3))` -/
def P16079037078534465687.Spec : Prop :=
  ∀ n, P16079037078534465687.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P7422880554585762431

`A006355(A263997(n+2)-1)`
-/

namespace A214927.P7422880554585762431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A263997 (n + 2) - 1).toNat

end

end A214927.P7422880554585762431

namespace A214927

/-- `A006355(A263997(n+2)-1)` -/
def P7422880554585762431.Spec : Prop :=
  ∀ n, P7422880554585762431.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P5506387216858457635

`2*A103609(A028310(n)-1)`
-/

namespace A214927.P5506387216858457635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A028310 n - 1).toNat

end

end A214927.P5506387216858457635

namespace A214927

/-- `2*A103609(A028310(n)-1)` -/
def P5506387216858457635.Spec : Prop :=
  ∀ n, P5506387216858457635.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P6507002432476084500

`A198834(A110656(4*n)+1)`
-/

namespace A214927.P6507002432476084500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (A110656 (4 * n) + 1).toNat

end

end A214927.P6507002432476084500

namespace A214927

/-- `A198834(A110656(4*n)+1)` -/
def P6507002432476084500.Spec : Prop :=
  ∀ n, P6507002432476084500.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P1470746641628117544

`A198834(1-(A004526(n)-n))`
-/

namespace A214927.P1470746641628117544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (1 - (A004526 n - (n : ℤ))).toNat

end

end A214927.P1470746641628117544

namespace A214927

/-- `A198834(1-(A004526(n)-n))` -/
def P1470746641628117544.Spec : Prop :=
  ∀ n, P1470746641628117544.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P11039065995999229259

`A198834(2-(A008619(n)-n))`
-/

namespace A214927.P11039065995999229259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (2 - (A008619 n - (n : ℤ))).toNat

end

end A214927.P11039065995999229259

namespace A214927

/-- `A198834(2-(A008619(n)-n))` -/
def P11039065995999229259.Spec : Prop :=
  ∀ n, P11039065995999229259.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P9214474088647925931

`2*A103609(A004273(n)-n)`
-/

namespace A214927.P9214474088647925931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A004273 n - (n : ℤ)).toNat

end

end A214927.P9214474088647925931

namespace A214927

/-- `2*A103609(A004273(n)-n)` -/
def P9214474088647925931.Spec : Prop :=
  ∀ n, P9214474088647925931.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P5164012098769455469

`2*A103609(n-A057427(n))`
-/

namespace A214927.P5164012098769455469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 ((n : ℤ) - A057427 n).toNat

end

end A214927.P5164012098769455469

namespace A214927

/-- `2*A103609(n-A057427(n))` -/
def P5164012098769455469.Spec : Prop :=
  ∀ n, P5164012098769455469.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P573273371182478348

`2*A302126(n-A134451(n))`
-/

namespace A214927.P573273371182478348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302126 ((n : ℤ) - A134451 n).toNat

end

end A214927.P573273371182478348

namespace A214927

/-- `2*A302126(n-A134451(n))` -/
def P573273371182478348.Spec : Prop :=
  ∀ n, P573273371182478348.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P10756341255202679395

`2*(A157725(A140106(n+1))-2)`
-/

namespace A214927.P10756341255202679395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157725 (A140106 (n + 1)).toNat - 2)

end

end A214927.P10756341255202679395

namespace A214927

/-- `2*(A157725(A140106(n+1))-2)` -/
def P10756341255202679395.Spec : Prop :=
  ∀ n, P10756341255202679395.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P1329339140476618314

`A006355((3*n)%A001068(2*n+1)+1)`
-/

namespace A214927.P1329339140476618314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod (3 * n : ℤ) (A001068 (2 * n + 1)) + 1).toNat

end

end A214927.P1329339140476618314

namespace A214927

/-- `A006355((3*n)%A001068(2*n+1)+1)` -/
def P1329339140476618314.Spec : Prop :=
  ∀ n, P1329339140476618314.a n = A214927 (n + 1)

end A214927

/-! ## A214927.P5190813765913733100

`A006355(A028310(A004526(n+1)))`
-/

namespace A214927.P5190813765913733100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A028310 (A004526 (n + 1)).toNat).toNat

end

end A214927.P5190813765913733100

namespace A214927

/-- `A006355(A028310(A004526(n+1)))` -/
def P5190813765913733100.Spec : Prop :=
  ∀ n, P5190813765913733100.a n = A214927 (n + 1)

end A214927

/-!
# A214928: A209293 as table read layer by layer clockwise.

The programs for A214928, there is no canonical definition to state claims against.
-/

/-! ## A214928.P7987962404203265411

`A059399(A064790(n+1))`
-/

namespace A214928.P7987962404203265411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A064790 (n + 1)).toNat

end

end A214928.P7987962404203265411

/-! ## A214928.P6583118272926449579

`A059399(A064788(n+1)-A196199(n))`
-/

namespace A214928.P6583118272926449579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A064788 (n + 1) - A196199 n).toNat

end

end A214928.P6583118272926449579

/-! ## A214928.P11071203626205882951

`A214929(A060736(A211377(A216253(n+1))))`
-/

namespace A214928.P11071203626205882951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214929 (A060736 (A211377 (A216253 (n + 1)).toNat).toNat).toNat

end

end A214928.P11071203626205882951

/-! ## A214928.P11033335539809664243

`A209293(A064788(n+1))`
-/

namespace A214928.P11033335539809664243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A064788 (n + 1)).toNat

end

end A214928.P11033335539809664243

/-! ## A214928.P9827028833144014437

`A209293(A211377(A216252(n+1)))`
-/

namespace A214928.P9827028833144014437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A211377 (A216252 (n + 1)).toNat).toNat

end

end A214928.P9827028833144014437

/-! ## A214928.P2909817641576284450

`A209293(A196199(n)+A064790(n+1))`
-/

namespace A214928.P2909817641576284450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A196199 n + A064790 (n + 1)).toNat

end

end A214928.P2909817641576284450

/-!
# A214929: A209293 as table read layer by layer - layer clockwise, layer counterclockwise and so on.

The programs for A214929, there is no canonical definition to state claims against.
-/

/-! ## A214929.P5305297698558511623

`A059399(A194280(n+1))`
-/

namespace A214929.P5305297698558511623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A194280 (n + 1)).toNat

end

end A214929.P5305297698558511623

/-! ## A214929.P16170314021629198837

`A214928(A081344(A064790(n+1)))`
-/

namespace A214929.P16170314021629198837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A081344 (A064790 (n + 1)).toNat).toNat

end

end A214929.P16170314021629198837

/-! ## A214929.P6038013098970612809

`A214928(A060736(A211377(A216253(n+1))))`
-/

namespace A214929.P6038013098970612809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A060736 (A211377 (A216253 (n + 1)).toNat).toNat).toNat

end

end A214929.P6038013098970612809

/-! ## A214929.P3721390812269496970

`A161680(A209302(n+1))+A057059(A194280(n+1))`
-/

namespace A214929.P3721390812269496970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A209302 (n + 1)).toNat + A057059 (A194280 (n + 1)).toNat

end

end A214929.P3721390812269496970

/-! ## A214929.P84347559101325016

`A265129(A214928(n+1))-A057027(A194280(n+1))`
-/

namespace A214929.P84347559101325016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (A214928 (n + 1)).toNat - A057027 (A194280 (n + 1)).toNat

end

end A214929.P84347559101325016

/-! ## A214929.P8586208177429575208

`A209293(A211377(A216253(n+1)))`
-/

namespace A214929.P8586208177429575208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A211377 (A216253 (n + 1)).toNat).toNat

end

end A214929.P8586208177429575208

/-! ## A214929.P5868550224010988713

`A209293(A329116(n)+A194280(n+1))`
-/

namespace A214929.P5868550224010988713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A329116 n + A194280 (n + 1)).toNat

end

end A214929.P5868550224010988713

/-! ## A214929.P14227412256024681567

`A214928(A060734(A188568(A064788(n+1))))`
-/

namespace A214929.P14227412256024681567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A060734 (A188568 (A064788 (n + 1)).toNat).toNat).toNat

end

end A214929.P14227412256024681567

/-!
# A214930: E.g.f. satisfies: A(x) = Sum_{n>=0} 1/n! * Product_{k=1..n} log(1 + x*A(x)^k).

The programs for A214930, there is no canonical definition to state claims against.
-/

/-! ## A214930.P16115688728461651025

`A268680((n+1)^(record[and(n+1, xor(n, n+1)-n)]-2))`
-/

namespace A214930.P16115688728461651025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 : ℤ))).toNat

end

end A214930.P16115688728461651025

/-! ## A214930.P16141085836660833071

`A255072(A178123(n)²)`
-/

namespace A214930.P16141085836660833071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A178123 n ^ 2).toNat

end

end A214930.P16141085836660833071

/-!
# A214931: Number of self-avoiding walks of any length from NW to SW corners of a grid or lattice with 4 rows and n columns.

The programs for A214931, the canonical program `A214931.P1959355975989739120` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214931 has offset 1).

The definition of A214931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214931.P1959355975989739120

`ogf((1+x-6x^2+x^3+x^4)/(1-7x+12x^2-7x^3+3x^4+2x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214931

/-- `ogf((1+x-6x^2+x^3+x^4)/(1-7x+12x^2-7x^3+3x^4+2x^5))` -/
def P1959355975989739120.Spec : Prop :=
  ∀ n, P1959355975989739120.a n = A214931 (n + 1)

theorem P1959355975989739120.correct : P1959355975989739120.Spec := by
  intro n
  simp only [A214931, Nat.add_sub_cancel]

end A214931

/-! ## A214931.P9318025066987885896

`A271465(A052905(n)+9)`
-/

namespace A214931.P9318025066987885896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A052905 n + 9).toNat

end

end A214931.P9318025066987885896

namespace A214931

/-- `A271465(A052905(n)+9)` -/
def P9318025066987885896.Spec : Prop :=
  ∀ n, P9318025066987885896.a n = A214931 (n + 1)

end A214931

/-! ## A214931.P14754196730714778186

`A271465(A055999(n)+10)`
-/

namespace A214931.P14754196730714778186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A055999 n + 10).toNat

end

end A214931.P14754196730714778186

namespace A214931

/-- `A271465(A055999(n)+10)` -/
def P14754196730714778186.Spec : Prop :=
  ∀ n, P14754196730714778186.a n = A214931 (n + 1)

end A214931

/-! ## A214931.P9160240632043679738

`A271465(A167614(n+2)+1)`
-/

namespace A214931.P9160240632043679738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A167614 (n + 2) + 1).toNat

end

end A214931.P9160240632043679738

namespace A214931

/-- `A271465(A167614(n+2)+1)` -/
def P9160240632043679738.Spec : Prop :=
  ∀ n, P9160240632043679738.a n = A214931 (n + 1)

end A214931

/-! ## A214931.P13375487846745951705

`A271465(A000096(n+2)+5)`
-/

namespace A214931.P13375487846745951705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A000096 (n + 2) + 5).toNat

end

end A214931.P13375487846745951705

namespace A214931

/-- `A271465(A000096(n+2)+5)` -/
def P13375487846745951705.Spec : Prop :=
  ∀ n, P13375487846745951705.a n = A214931 (n + 1)

end A214931

/-!
# A214932: Number of practical numbers between powers of 2 where the practical numbers are A005153.

The programs for A214932, there is no canonical definition to state claims against.
-/

/-! ## A214932.P16485759980741620405

`Δ[A209237(n)]`
-/

namespace A214932.P16485759980741620405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214932.P16485759980741620405

/-! ## A214932.P2646354244029668233

`A209237(n+1)-A209237(n)`
-/

namespace A214932.P2646354244029668233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209237 (n + 1) - A209237 n

end

end A214932.P2646354244029668233

/-! ## A214932.P1830013238485556451

`Δ[A225559(2^n)]`
-/

namespace A214932.P1830013238485556451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214932.P1830013238485556451

/-! ## A214932.P5244038145299865107

`abs(Δ[A225559(A000079(n))])`
-/

namespace A214932.P5244038145299865107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A214932.P5244038145299865107

/-! ## A214932.P8160784241535466879

`Δ[record[A225559(A059268(n))]]`
-/

namespace A214932.P8160784241535466879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (A059268 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214932.P8160784241535466879

/-!
# A214933: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n * exp(n*x*A(x)^n) / n!.

The programs for A214933, there is no canonical definition to state claims against.
-/

/-! ## A214933.P9444509507670483261

`A008619(n*A191812(n))`
-/

namespace A214933.P9444509507670483261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A191812 n).toNat

end

end A214933.P9444509507670483261

/-! ## A214933.P10091519931987648979

`A008619(n*A290978(n^n+3))`
-/

namespace A214933.P10091519931987648979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A290978 (n ^ n + 3)).toNat

end

end A214933.P10091519931987648979

/-!
# A214934: Numbers R(k) such that R(k) >= 2k log R(k), where R(k) = A104272(k) is the k-th Ramanujan prime.

The programs for A214934, there is no canonical definition to state claims against.
-/

/-! ## A214934.P11677010962690345662

`A104272(A178779(2*n+3)+A000961(n+1))`
-/

namespace A214934.P11677010962690345662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A178779 (2 * n + 3) + A000961 (n + 1)).toNat

end

end A214934.P11677010962690345662

/-! ## A214934.P6596838192326760744

`A104272(eq[0, A029444(n)])`
-/

namespace A214934.P6596838192326760744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214934.P6596838192326760744

/-! ## A214934.P6633090148696376385

`A104272(lt[A049798(n+1), A010074(n)])`
-/

namespace A214934.P6633090148696376385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214934.P6633090148696376385

/-! ## A214934.P5006227132837027817

`A104272(lt[A217751(n+3), A217764(2*(n+1))])`
-/

namespace A214934.P5006227132837027817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217751 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217764 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214934.P5006227132837027817

/-!
# A214935: Index of the primes of A205827, A000720(A205827(n)).

The programs for A214935, there is no canonical definition to state claims against.
-/

/-! ## A214935.P17269155261320276986

`A000720(A205827(n+1))`
-/

namespace A214935.P17269155261320276986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205827 (n + 1)).toNat

end

end A214935.P17269155261320276986

/-! ## A214935.P15391998061896224123

`A061395(2*A205827(n+1))`
-/

namespace A214935.P15391998061896224123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205827 (n + 1)).toNat

end

end A214935.P15391998061896224123

/-! ## A214935.P418594248364763665

`∩[A005669(n+1), A008727(n)]`
-/

namespace A214935.P418594248364763665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214935.P418594248364763665

/-!
# A214936: a(0) = 1, a(n) = a(n - 1) * (length of binary representation of n).

The programs for A214936, the canonical program `A214936.P8604888565439129316` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214936 has offset 0).

The definition of A214936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214936.P8604888565439129316

`a(n-1)*A070939(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214936

/-- `a(n-1)*A070939(n)` -/
def P8604888565439129316.Spec : Prop :=
  ∀ n, P8604888565439129316.a n = A214936 n

theorem P8604888565439129316.correct : P8604888565439129316.Spec := by
  intro n
  simp only [A214936]

end A214936

/-! ## A214936.P4930169796619482625

`∏[ceil(abs(log2(acot(n))))]`
-/

namespace A214936.P4930169796619482625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (n : ℝ))|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214936.P4930169796619482625

namespace A214936

/-- `∏[ceil(abs(log2(acot(n))))]` -/
def P4930169796619482625.Spec : Prop :=
  ∀ n, P4930169796619482625.a n = A214936 n

end A214936

/-! ## A214936.P15058437869602299352

`∏[floor(record[log2(or(2, n))])]`
-/

namespace A214936.P15058437869602299352
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214936.P15058437869602299352

namespace A214936

/-- `∏[floor(record[log2(or(2, n))])]` -/
def P15058437869602299352.Spec : Prop :=
  ∀ n, P15058437869602299352.a n = A214936 n

end A214936

/-! ## A214936.P7298590514565272415

`∏[floor(log2(record[xor(2, n)]))]`
-/

namespace A214936.P7298590514565272415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214936.P7298590514565272415

namespace A214936

/-- `∏[floor(log2(record[xor(2, n)]))]` -/
def P7298590514565272415.Spec : Prop :=
  ∀ n, (P7298590514565272415.a n : ℤ) = A214936 n

end A214936

/-! ## A214936.P17927869828458902137

`∏[ceil(abs(log2(n+γ)))]`
-/

namespace A214936.P17927869828458902137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 ((n : ℝ) + Real.eulerMascheroniConstant)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214936.P17927869828458902137

namespace A214936

/-- `∏[ceil(abs(log2(n+γ)))]` -/
def P17927869828458902137.Spec : Prop :=
  ∀ n, P17927869828458902137.a n = A214936 n

end A214936

/-! ## A214936.P9173122889250432927

`abs(∏[-(floor(log2(or(1, n)))+1)])`
-/

namespace A214936.P9173122889250432927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.log 2 (Nat.lor 1 n) + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A214936.P9173122889250432927

namespace A214936

/-- `abs(∏[-(floor(log2(or(1, n)))+1)])` -/
def P9173122889250432927.Spec : Prop :=
  ∀ n, P9173122889250432927.a n = A214936 n

end A214936

/-! ## A214936.P2737059383889737525

`ceil(log2(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A214936.P2737059383889737525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ * a (n - 1)

end

end A214936.P2737059383889737525

namespace A214936

/-- `ceil(log2(n+1))*a(n-1)` -/
def P2737059383889737525.Spec : Prop :=
  ∀ n, P2737059383889737525.a n = A214936 n

end A214936

/-! ## A214936.P17251456012871535195

`a(n-1)*∑[char[2^n]]` with `a(0)=1`
-/

namespace A214936.P17251456012871535195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214936.P17251456012871535195

namespace A214936

/-- `a(n-1)*∑[char[2^n]]` -/
def P17251456012871535195.Spec : Prop :=
  ∀ n, (P17251456012871535195.a n : ℤ) = A214936 n

end A214936

/-! ## A214936.P14601438443242786093

`∏[A070939(n+1)]/A070939(n+1)`
-/

namespace A214936.P14601438443242786093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A070939 (n + 1) : ℚ)

end

end A214936.P14601438443242786093

namespace A214936

/-- `∏[A070939(n+1)]/A070939(n+1)` -/
def P14601438443242786093.Spec : Prop :=
  ∀ n, P14601438443242786093.a n = (A214936 n : ℚ)

end A214936

/-! ## A214936.P17461856304833535252

`∏[A029837(n+2)]/A029837(n+2)`
-/

namespace A214936.P17461856304833535252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A029837 (n + 2) : ℚ)

end

end A214936.P17461856304833535252

namespace A214936

/-- `∏[A029837(n+2)]/A029837(n+2)` -/
def P17461856304833535252.Spec : Prop :=
  ∀ n, P17461856304833535252.a n = (A214936 n : ℚ)

end A214936

/-! ## A214936.P11231881826199814426

`∏[A000523(2*(n+1))]/A000523(2*(n+1))`
-/

namespace A214936.P11231881826199814426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000523 (2 * (n + 1)) : ℚ)

end

end A214936.P11231881826199814426

namespace A214936

/-- `∏[A000523(2*(n+1))]/A000523(2*(n+1))` -/
def P11231881826199814426.Spec : Prop :=
  ∀ n, P11231881826199814426.a n = (A214936 n : ℚ)

end A214936

/-!
# A214937: Square numbers that can be expressed as sums of a positive square number and a positive triangular number.

The programs for A214937, there is no canonical definition to state claims against.
-/

/-! ## A214937.P1534152448870059701

`A215069(n+1)²`
-/

namespace A214937.P1534152448870059701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215069 (n + 1) ^ 2

end

end A214937.P1534152448870059701

/-! ## A214937.P11341103487939274366

`A182531(2*A215069(n+1))`
-/

namespace A214937.P11341103487939274366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (2 * A215069 (n + 1)).toNat

end

end A214937.P11341103487939274366

/-! ## A214937.P2396059969556036678

`A000290(A215069(∑[2*n+1]/(n+1)))`
-/

namespace A214937.P2396059969556036678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A215069 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A214937.P2396059969556036678

/-! ## A214937.P2317488943896774430

`A000290(2*A215069(n+1)-A215069(n+1))`
-/

namespace A214937.P2317488943896774430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A215069 (n + 1) - A215069 (n + 1)).toNat

end

end A214937.P2317488943896774430

/-! ## A214937.P8606561174167383016

`A215069(n+1)^(A000124(n+1)-A000096(n))`
-/

namespace A214937.P8606561174167383016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215069 (n + 1) : ℚ) ^ (A000124 (n + 1) - A000096 n : ℤ)

end

end A214937.P8606561174167383016

/-! ## A214937.P7506370511669405382

`A215069(A000290(n+1)/(n+1))*A215069(n+1)`
-/

namespace A214937.P7506370511669405382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215069 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A215069 (n + 1)

end

end A214937.P7506370511669405382

/-! ## A214937.P5593132792658536388

`A215069(n+1)*A215069((n+1)%A008574(n+1))`
-/

namespace A214937.P5593132792658536388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215069 (n + 1) * A215069 (Int.tmod (n + 1 : ℤ) (A008574 (n + 1))).toNat

end

end A214937.P5593132792658536388

/-!
# A214938: Number of Motzkin n-paths avoiding even-numbered steps that are flat steps.

The programs for A214938, there is no canonical definition to state claims against.
-/

/-! ## A214938.P5700236912117462786

`A059347(∑[n%2+n])`
-/

namespace A214938.P5700236912117462786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214938.P5700236912117462786

/-! ## A214938.P13365264150188083372

`A059347(∑[and(1, n)+n])`
-/

namespace A214938.P13365264150188083372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214938.P13365264150188083372

/-! ## A214938.P4364466389519308400

`A059347(floor((n+1)²/2))`
-/

namespace A214938.P4364466389519308400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A214938.P4364466389519308400

/-! ## A214938.P8156317326628304443

`A005843(A026553(n+1)-A026537(n+1))-A026538(n+1)`
-/

namespace A214938.P8156317326628304443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A026553 (n + 1) - A026537 (n + 1)).toNat - A026538 (n + 1)

end

end A214938.P8156317326628304443

/-! ## A214938.P6825113235065815669

`A177849(A318689(3*n+4)+A000040(n+1))`
-/

namespace A214938.P6825113235065815669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A318689 (3 * n + 4) + A000040 (n + 1)).toNat

end

end A214938.P6825113235065815669

/-!
# A214939: Number of squarefree words of length n in a 5-ary alphabet.

The programs for A214939, there is no canonical definition to state claims against.
-/

/-! ## A214939.P10576467113575284244

`A214943(∑[n+4]+3)`
-/

namespace A214939.P10576467113575284244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A214939.P10576467113575284244

/-! ## A214939.P3180399326235654220

`A154639(n+1)`
-/

namespace A214939.P3180399326235654220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154639 (n + 1)

end

end A214939.P3180399326235654220

/-!
# A214940: Number of squarefree words of length n in a 6-ary alphabet.

The programs for A214940, there is no canonical definition to state claims against.
-/

/-! ## A214940.P11775493931011841689

`A214943(∑[n+5]+6)`
-/

namespace A214940.P11775493931011841689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A214940.P11775493931011841689

/-! ## A214940.P8050227831962332930

`lcm(2, A214943(Δ[A264443(n)]))`
-/

namespace A214940.P8050227831962332930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A214943 (f1 (n + 1) - f1 n).toNat)

end

end A214940.P8050227831962332930

/-! ## A214940.P10339103866036953976

`A014963(10*(n+1))*A214943(Δ[A264443(n)])`
-/

namespace A214940.P10339103866036953976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A214943 (f1 (n + 1) - f1 n).toNat

end

end A214940.P10339103866036953976

/-! ## A214940.P10329684542970573656

`A214943(Δ[A264443(n)])+A001222(((-1)^n)²)`
-/

namespace A214940.P10329684542970573656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (f1 (n + 1) - f1 n).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A214940.P10329684542970573656

/-! ## A214940.P2372782714411563179

`(A000040(n+1)%2)!*A214943(Δ[A264443(n)])`
-/

namespace A214940.P2372782714411563179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A214943 (f1 (n + 1) - f1 n).toNat

end

end A214940.P2372782714411563179

/-!
# A214941: Number of squarefree words of length n in a 7-ary alphabet.

The programs for A214941, there is no canonical definition to state claims against.
-/

/-! ## A214941.P14498005376287398298

`A214943(A052905(n+3))`
-/

namespace A214941.P14498005376287398298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A052905 (n + 3)).toNat

end

end A214941.P14498005376287398298

/-! ## A214941.P3182143637253006032

`A214943(A056119(n)+16)`
-/

namespace A214941.P3182143637253006032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A056119 n + 16).toNat

end

end A214941.P3182143637253006032

/-! ## A214941.P8576458134394248506

`A214943(eq[3, A219347(n)])`
-/

namespace A214941.P8576458134394248506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214941.P8576458134394248506

/-! ## A214941.P6475882083952820581

`A214943(eq[5, A193592(n)])`
-/

namespace A214941.P6475882083952820581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214941.P6475882083952820581

/-! ## A214941.P2661281086369702229

`A214943(eq[16, A166065(n)])`
-/

namespace A214941.P2661281086369702229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214941.P2661281086369702229

/-!
# A214942: Number of squarefree words of length n in an 8-ary alphabet.

The programs for A214942, there is no canonical definition to state claims against.
-/

/-! ## A214942.P9144934060775159129

`A214943(A055999(n+4))`
-/

namespace A214942.P9144934060775159129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A055999 (n + 4)).toNat

end

end A214942.P9144934060775159129

/-! ## A214942.P4615629748028067542

`A214943(eq[4, A219347(n)])`
-/

namespace A214942.P4615629748028067542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214942.P4615629748028067542

/-! ## A214942.P4403715660695545333

`A214943(eq[6, A193592(n)])`
-/

namespace A214942.P4403715660695545333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214942.P4403715660695545333

/-! ## A214942.P14390755169396162657

`A214943(A155212(n+3)+2)`
-/

namespace A214942.P14390755169396162657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A155212 (n + 3) + 2).toNat

end

end A214942.P14390755169396162657

/-! ## A214942.P17564588275320718871

`A214943(A056000(n+3)+4)`
-/

namespace A214942.P17564588275320718871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A056000 (n + 3) + 4).toNat

end

end A214942.P17564588275320718871

/-!
# A214943: T(n,k) = Number of squarefree words of length n in a (k+1)-ary alphabet.

The programs for A214943, there is no canonical definition to state claims against.
-/

/-! ## A214943.P8534282538396269199

`A215190(A151764(n+1))`
-/

namespace A214943.P8534282538396269199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A151764 (n + 1)).toNat

end

end A214943.P8534282538396269199

/-! ## A214943.P6150075184599958803

`A215190(n+1)%record[A215239(n)]`
-/

namespace A214943.P6150075184599958803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215190 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A214943.P6150075184599958803

/-! ## A214943.P768007879909046948

`A215190(n+1)+A000007(A000031(n))`
-/

namespace A214943.P768007879909046948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (n + 1) + A000007 (A000031 n).toNat

end

end A214943.P768007879909046948

/-! ## A214943.P14209958315253080179

`A215190(n+1)+A000007(A001383(n))`
-/

namespace A214943.P14209958315253080179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (n + 1) + A000007 (A001383 n).toNat

end

end A214943.P14209958315253080179

/-! ## A214943.P14736406860984146992

`A215190(n+1)+A000007(A003242(n))`
-/

namespace A214943.P14736406860984146992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (n + 1) + A000007 (A003242 n).toNat

end

end A214943.P14736406860984146992

/-!
# A214944: Number of squarefree words of length 5 in an (n+1)-ary alphabet.

The programs for A214944, the canonical program `A214944.P11267327677457747790` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214944 has offset 1).

The definition of A214944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214944.P11267327677457747790

`n*∑[∑[∑[24*n]+2]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214944

/-- `n*∑[∑[∑[24*n]+2]]` -/
def P11267327677457747790.Spec : Prop :=
  ∀ n, (P11267327677457747790.a n : ℤ) = A214944 (n + 1)

theorem P11267327677457747790.correct : P11267327677457747790.Spec := by
  intro n
  simp only [A214944, Nat.add_sub_cancel]

end A214944

/-! ## A214944.P13748341287973920524

`ogf((30x+84x^2+6x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A214944.P13748341287973920524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 30, 84, 6] [1, -6, 15, -20, 15, -6, 1] n

end

end A214944.P13748341287973920524

namespace A214944

/-- `ogf((30x+84x^2+6x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13748341287973920524.Spec : Prop :=
  ∀ n, P13748341287973920524.a n = A214944 (n + 1)

end A214944

/-! ## A214944.P2920850863265792608

`n*8*C((n+1)*(n+2), 2)/4`
-/

namespace A214944.P2920850863265792608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (8 * Nat.choose ((n + 1) * (n + 2)) 2) : ℚ) / 4

end

end A214944.P2920850863265792608

namespace A214944

/-- `n*8*C((n+1)*(n+2), 2)/4` -/
def P2920850863265792608.Spec : Prop :=
  ∀ n, P2920850863265792608.a n = (A214944 (n + 1) : ℚ)

end A214944

/-! ## A214944.P17244342169138828499

`lcm(2, 2*n*C((n+1)*(n+2), 2))`
-/

namespace A214944.P17244342169138828499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n * Nat.choose ((n + 1) * (n + 2)) 2)

end

end A214944.P17244342169138828499

namespace A214944

/-- `lcm(2, 2*n*C((n+1)*(n+2), 2))` -/
def P17244342169138828499.Spec : Prop :=
  ∀ n, (P17244342169138828499.a n : ℤ) = A214944 (n + 1)

end A214944

/-! ## A214944.P11732526403214407816

`n*A086302(n)/4`
-/

namespace A214944.P11732526403214407816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A086302 n : ℚ) / 4

end

end A214944.P11732526403214407816

namespace A214944

/-- `n*A086302(n)/4` -/
def P11732526403214407816.Spec : Prop :=
  ∀ n, P11732526403214407816.a n = (A214944 (n + 1) : ℚ)

end A214944

/-! ## A214944.P8753986815051597685

`lcm(∑[∑[6*n]], A028387(n))`
-/

namespace A214944.P8753986815051597685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A028387 n)

end

end A214944.P8753986815051597685

namespace A214944

/-- `lcm(∑[∑[6*n]], A028387(n))` -/
def P8753986815051597685.Spec : Prop :=
  ∀ n, (P8753986815051597685.a n : ℤ) = A214944 (n + 1)

end A214944

/-! ## A214944.P10164307146599392602

`lcm((n+1)²+n, ∑[A028896(n)])`
-/

namespace A214944.P10164307146599392602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 + n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214944.P10164307146599392602

namespace A214944

/-- `lcm((n+1)²+n, ∑[A028896(n)])` -/
def P10164307146599392602.Spec : Prop :=
  ∀ n, (P10164307146599392602.a n : ℤ) = A214944 (n + 1)

end A214944

/-! ## A214944.P735076677415092757

`lcm(A005563(n), A081437(n))`
-/

namespace A214944.P735076677415092757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005563 n) (A081437 n)

end

end A214944.P735076677415092757

namespace A214944

/-- `lcm(A005563(n), A081437(n))` -/
def P735076677415092757.Spec : Prop :=
  ∀ n, (P735076677415092757.a n : ℤ) = A214944 (n + 1)

end A214944

/-! ## A214944.P15277422631328008681

`A214946(n+1)/A008865(n+1)`
-/

namespace A214944.P15277422631328008681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214946 (n + 1) : ℚ) / (A008865 (n + 1) : ℚ)

end

end A214944.P15277422631328008681

namespace A214944

/-- `A214946(n+1)/A008865(n+1)` -/
def P15277422631328008681.Spec : Prop :=
  ∀ n, P15277422631328008681.a n = (A214944 (n + 1) : ℚ)

end A214944

/-! ## A214944.P12705953923862277459

`A000290(n+1)*A081437(n)-A081437(n)`
-/

namespace A214944.P12705953923862277459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A081437 n - A081437 n

end

end A214944.P12705953923862277459

namespace A214944

/-- `A000290(n+1)*A081437(n)-A081437(n)` -/
def P12705953923862277459.Spec : Prop :=
  ∀ n, P12705953923862277459.a n = A214944 (n + 1)

end A214944

/-! ## A214944.P3009586339959825097

`A005563(n)*A100109(n+2)-A005563(n)`
-/

namespace A214944.P3009586339959825097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A100109 (n + 2) - A005563 n

end

end A214944.P3009586339959825097

namespace A214944

/-- `A005563(n)*A100109(n+2)-A005563(n)` -/
def P3009586339959825097.Spec : Prop :=
  ∀ n, P3009586339959825097.a n = A214944 (n + 1)

end A214944

/-! ## A214944.P12526364407485348278

`A061167(n+1)+A258837(n+1)*A258837(n)`
-/

namespace A214944.P12526364407485348278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 (n + 1) + A258837 (n + 1) * A258837 n

end

end A214944.P12526364407485348278

namespace A214944

/-- `A061167(n+1)+A258837(n+1)*A258837(n)` -/
def P12526364407485348278.Spec : Prop :=
  ∀ n, P12526364407485348278.a n = A214944 (n + 1)

end A214944

/-! ## A214944.P16494958897527406601

`A005563(n+1)*A045991(n+1)-A002378(n)`
-/

namespace A214944.P16494958897527406601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) * A045991 (n + 1) - A002378 n

end

end A214944.P16494958897527406601

namespace A214944

/-- `A005563(n+1)*A045991(n+1)-A002378(n)` -/
def P16494958897527406601.Spec : Prop :=
  ∀ n, P16494958897527406601.a n = A214944 (n + 1)

end A214944

/-! ## A214944.P17677952920291898008

`A085490(n+1)+A008865(n+1)*A085490(n+1)`
-/

namespace A214944.P17677952920291898008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (n + 1) + A008865 (n + 1) * A085490 (n + 1)

end

end A214944.P17677952920291898008

namespace A214944

/-- `A085490(n+1)+A008865(n+1)*A085490(n+1)` -/
def P17677952920291898008.Spec : Prop :=
  ∀ n, P17677952920291898008.a n = A214944 (n + 1)

end A214944

/-! ## A214944.P10550382426839723004

`A047927(n+2)+A002378(n+1)*A045991(n+1)`
-/

namespace A214944.P10550382426839723004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (n + 2) + A002378 (n + 1) * A045991 (n + 1)

end

end A214944.P10550382426839723004

namespace A214944

/-- `A047927(n+2)+A002378(n+1)*A045991(n+1)` -/
def P10550382426839723004.Spec : Prop :=
  ∀ n, P10550382426839723004.a n = A214944 (n + 1)

end A214944

/-!
# A214945: Number of squarefree words of length 6 in an (n+1)-ary alphabet.

The programs for A214945, the canonical program `A214945.P2334347710688580479` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214945 has offset 1).

The definition of A214945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214945.P773946194289067087

`ogf((42x+402x^2+270x^3+6x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A214945.P773946194289067087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 42, 402, 270, 6] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A214945.P773946194289067087

namespace A214945

/-- `ogf((42x+402x^2+270x^3+6x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P773946194289067087.Spec : Prop :=
  ∀ n, P773946194289067087.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P2526353284929471621

`(n+1)^6+(n+1)^5-3*(n+1)^4-2*(n+1)^3+2*(n+1)²+n+1`
-/

namespace A214945.P2526353284929471621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 + (n + 1) ^ 5 : ℤ) - (3 * (n + 1) ^ 4 : ℤ) - (2 * (n + 1) ^ 3 : ℤ) + (2 * (n + 1) ^ 2 : ℤ) + (n + 1 : ℤ)

end

end A214945.P2526353284929471621

namespace A214945

/-- `(n+1)^6+(n+1)^5-3*(n+1)^4-2*(n+1)^3+2*(n+1)²+n+1` -/
def P2526353284929471621.Spec : Prop :=
  ∀ n, P2526353284929471621.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P2334347710688580479

`(A196506(n)-n²)*∑[n+1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214945

/-- `(A196506(n)-n²)*∑[n+1]` -/
def P2334347710688580479.Spec : Prop :=
  ∀ n, P2334347710688580479.a n = A214945 (n + 1)

theorem P2334347710688580479.correct : P2334347710688580479.Spec := by
  intro n
  simp only [A214945, Nat.add_sub_cancel]

end A214945

/-! ## A214945.P17250917250729261224

`(A062938(n)-(n+3))*A002378(n)`
-/

namespace A214945.P17250917250729261224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062938 n - (n + 3 : ℤ)) * A002378 n

end

end A214945.P17250917250729261224

namespace A214945

/-- `(A062938(n)-(n+3))*A002378(n)` -/
def P17250917250729261224.Spec : Prop :=
  ∀ n, P17250917250729261224.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P2933899620844187088

`(A062938(n)-(n+3))*∑[A005843(n)]`
-/

namespace A214945.P2933899620844187088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062938 n - (n + 3 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214945.P2933899620844187088

namespace A214945

/-- `(A062938(n)-(n+3))*∑[A005843(n)]` -/
def P2933899620844187088.Spec : Prop :=
  ∀ n, P2933899620844187088.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P12567577452819283958

`(A000124(n)+n)*(A196506(n)-n²)`
-/

namespace A214945.P12567577452819283958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n + (n : ℤ)) * (A196506 n - (n ^ 2 : ℤ))

end

end A214945.P12567577452819283958

namespace A214945

/-- `(A000124(n)+n)*(A196506(n)-n²)` -/
def P12567577452819283958.Spec : Prop :=
  ∀ n, P12567577452819283958.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P9739332074000989306

`(A057722(n+1)+n+1)*A002378(n+1)`
-/

namespace A214945.P9739332074000989306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057722 (n + 1) + (n + 1 : ℤ)) * A002378 (n + 1)

end

end A214945.P9739332074000989306

namespace A214945

/-- `(A057722(n+1)+n+1)*A002378(n+1)` -/
def P9739332074000989306.Spec : Prop :=
  ∀ n, P9739332074000989306.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P7503431732696566185

`∑[2*n]*record[A052762(n+1)-n]`
-/

namespace A214945.P7503431732696566185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A214945.P7503431732696566185

namespace A214945

/-- `∑[2*n]*record[A052762(n+1)-n]` -/
def P7503431732696566185.Spec : Prop :=
  ∀ n, P7503431732696566185.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P3779911126088676919

`record[A052762(n+1)-n]*A002378(n)`
-/

namespace A214945.P3779911126088676919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002378 n

end

end A214945.P3779911126088676919

namespace A214945

/-- `record[A052762(n+1)-n]*A002378(n)` -/
def P3779911126088676919.Spec : Prop :=
  ∀ n, P3779911126088676919.a n = A214945 (n + 1)

end A214945

/-! ## A214945.P14466218146115973868

`(A062938(n)-(n+3))*A005843(∑[n])`
-/

namespace A214945.P14466218146115973868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062938 n - (n + 3 : ℤ)) * A005843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214945.P14466218146115973868

namespace A214945

/-- `(A062938(n)-(n+3))*A005843(∑[n])` -/
def P14466218146115973868.Spec : Prop :=
  ∀ n, P14466218146115973868.a n = A214945 (n + 1)

end A214945

/-!
# A214946: Number of squarefree words of length 7 in an (n+1)-ary alphabet.

The programs for A214946, the canonical program `A214946.P7493096639732243063` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214946 has offset 1).

The definition of A214946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214946.P7493096639732243063

`lcm(record[A242135(n)], A214944(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214946

/-- `lcm(record[A242135(n)], A214944(n+1))` -/
def P7493096639732243063.Spec : Prop :=
  ∀ n, (P7493096639732243063.a n : ℤ) = A214946 (n + 1)

theorem P7493096639732243063.correct : P7493096639732243063.Spec := by
  intro n
  simp only [A214946, Nat.add_sub_cancel]

end A214946

/-! ## A214946.P13540493269998986934

`A008865(n+1)*A214944(n+1)`
-/

namespace A214946.P13540493269998986934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1) * A214944 (n + 1)

end

end A214946.P13540493269998986934

namespace A214946

/-- `A008865(n+1)*A214944(n+1)` -/
def P13540493269998986934.Spec : Prop :=
  ∀ n, P13540493269998986934.a n = A214946 (n + 1)

end A214946

/-! ## A214946.P10471605074745983175

`(A005563(n)-1)*A214944(n+1)`
-/

namespace A214946.P10471605074745983175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n - 1) * A214944 (n + 1)

end

end A214946.P10471605074745983175

namespace A214946

/-- `(A005563(n)-1)*A214944(n+1)` -/
def P10471605074745983175.Spec : Prop :=
  ∀ n, P10471605074745983175.a n = A214946 (n + 1)

end A214946

/-! ## A214946.P13000080891165740593

`(A005563(n)²-A005563(n))*A081437(n)`
-/

namespace A214946.P13000080891165740593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n ^ 2 - A005563 n) * A081437 n

end

end A214946.P13000080891165740593

namespace A214946

/-- `(A005563(n)²-A005563(n))*A081437(n)` -/
def P13000080891165740593.Spec : Prop :=
  ∀ n, P13000080891165740593.a n = A214946 (n + 1)

end A214946

/-! ## A214946.P13315260069540285476

`A000578(n)*A047928(n+3)-A047928(n+2)`
-/

namespace A214946.P13315260069540285476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A047928 (n + 3) - A047928 (n + 2)

end

end A214946.P13315260069540285476

namespace A214946

/-- `A000578(n)*A047928(n+3)-A047928(n+2)` -/
def P13315260069540285476.Spec : Prop :=
  ∀ n, P13315260069540285476.a n = A214946 (n + 1)

end A214946

/-! ## A214946.P6371865492505766851

`(A000578(n)+A000384(n))*A002939(∑[n+1])`
-/

namespace A214946.P6371865492505766851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000384 n) * A002939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214946.P6371865492505766851

namespace A214946

/-- `(A000578(n)+A000384(n))*A002939(∑[n+1])` -/
def P6371865492505766851.Spec : Prop :=
  ∀ n, P6371865492505766851.a n = A214946 (n + 1)

end A214946

/-! ## A214946.P17354219198749578772

`n*A008865(n+1)*A002378(A028387(n))`
-/

namespace A214946.P17354219198749578772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008865 (n + 1) * A002378 (A028387 n).toNat

end

end A214946.P17354219198749578772

namespace A214946

/-- `n*A008865(n+1)*A002378(A028387(n))` -/
def P17354219198749578772.Spec : Prop :=
  ∀ n, P17354219198749578772.a n = A214946 (n + 1)

end A214946

/-!
# A214948: a(n) is the sum over all proper integer partitions of n of the previous terms.

The programs for A214948, there is no canonical definition to state claims against.
-/

/-! ## A214948.P15915102745430344256

`A046108(A073663(n))`
-/

namespace A214948.P15915102745430344256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A073663 n).toNat

end

end A214948.P15915102745430344256

/-! ## A214948.P15109473781497598527

`∑[A326536(A164617(n))]`
-/

namespace A214948.P15109473781497598527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (A164617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214948.P15109473781497598527

/-!
# A214949: Numerator of sum of reciprocals of all nonzero digits of n in decimal representation.

The programs for A214949, there is no canonical definition to state claims against.
-/

/-! ## A214949.P3616503994443388828

`A318573(A113581(n))`
-/

namespace A214949.P3616503994443388828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A113581 n).toNat

end

end A214949.P3616503994443388828

/-! ## A214949.P15649261216950253897

`∑{e}[A054842(n), A214950(n)/#]`
-/

namespace A214949.P15649261216950253897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A214950 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A214949.P15649261216950253897

/-! ## A214949.P5578226264714933816

`∑{e}[A069877(n), A214950(n)/#]`
-/

namespace A214949.P5578226264714933816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A214950 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A214949.P5578226264714933816

/-! ## A214949.P16603182832852371667

`A379141(A054842(n))`
-/

namespace A214949.P16603182832852371667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379141 (A054842 n).toNat

end

end A214949.P16603182832852371667

/-! ## A214949.P7873461498990217916

`A379141(A069877(n))`
-/

namespace A214949.P7873461498990217916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379141 (A069877 n).toNat

end

end A214949.P7873461498990217916

/-!
# A214950: Denominator of sum of reciprocals of all nonzero digits of n in decimal representation.

The programs for A214950, there is no canonical definition to state claims against.
-/

/-! ## A214950.P133251913890022529

`A214949(10*n+1)-A214949(n)`
-/

namespace A214950.P133251913890022529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (10 * n + 1) - A214949 n

end

end A214950.P133251913890022529

/-! ## A214950.P11663306515680452006

`A318574(A113581(n))`
-/

namespace A214950.P11663306515680452006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A113581 n).toNat

end

end A214950.P11663306515680452006

/-! ## A214950.P15960178630977533301

`A214949(A017281(n))-A318573(A113581(n))`
-/

namespace A214950.P15960178630977533301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A017281 n).toNat - A318573 (A113581 n).toNat

end

end A214950.P15960178630977533301

/-! ## A214950.P18299866650887505209

`A318573(2*A113581(n))-A214949(n)`
-/

namespace A214950.P18299866650887505209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (2 * A113581 n).toNat - A214949 n

end

end A214950.P18299866650887505209

/-! ## A214950.P11481501018045939618

`A051802(lt[A087643(n+6), A087406(2*n+5)])`
-/

namespace A214950.P11481501018045939618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087643 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087406 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214950.P11481501018045939618

/-!
# A214951: a(n) = 3*a(n-1) + 6*a(n-2) + a(n-3) with a(0)=2, a(1)=5, a(2)=26.

The programs for A214951, the canonical program `A214951.P16410246077065278112` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214951 has offset 0).

The definition of A214951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+6*a(n-2)+a(n-3)` (program `A214951.P16410246077065278112`, by `A214951.P16410246077065278112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214951.P10114162652936047958

`ogf((2-x-x^2)/(1-3x-6x^2-x^3))`
-/

namespace A214951.P10114162652936047958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1] [1, -3, -6, -1] n

end

end A214951.P10114162652936047958

namespace A214951

/-- `ogf((2-x-x^2)/(1-3x-6x^2-x^3))` -/
def P10114162652936047958.Spec : Prop :=
  ∀ n, P10114162652936047958.a n = A214951 n

end A214951

/-! ## A214951.P16410246077065278112

`3*a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=2, a(1)=5, a(2)=26`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214951

/-- `3*a(n-1)+6*a(n-2)+a(n-3)` -/
def P16410246077065278112.Spec : Prop :=
  ∀ n, (P16410246077065278112.a n : ℤ) = A214951 n

theorem P16410246077065278112.correct : P16410246077065278112.Spec := by
  intro n
  simp only [A214951]

end A214951

/-! ## A214951.P3391498613175997438

`Δ[A214954(n)]`
-/

namespace A214951.P3391498613175997438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214951.P3391498613175997438

namespace A214951

/-- `Δ[A214954(n)]` -/
def P3391498613175997438.Spec : Prop :=
  ∀ n, P3391498613175997438.a n = A214951 n

end A214951

/-! ## A214951.P17232504389372779145

`∑[A214778(n)]-1`
-/

namespace A214951.P17232504389372779145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A214951.P17232504389372779145

namespace A214951

/-- `∑[A214778(n)]-1` -/
def P17232504389372779145.Spec : Prop :=
  ∀ n, P17232504389372779145.a n = A214951 n

end A214951

/-! ## A214951.P9468546698948364658

`∑[xor(A000007(n), A214778(n))]`
-/

namespace A214951.P9468546698948364658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A214778 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214951.P9468546698948364658

namespace A214951

/-- `∑[xor(A000007(n), A214778(n))]` -/
def P9468546698948364658.Spec : Prop :=
  ∀ n, P9468546698948364658.a n = A214951 n

end A214951

/-! ## A214951.P12449447369951484711

`A214954(n+1)-A214954(n)`
-/

namespace A214951.P12449447369951484711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214954 (n + 1) - A214954 n

end

end A214951.P12449447369951484711

namespace A214951

/-- `A214954(n+1)-A214954(n)` -/
def P12449447369951484711.Spec : Prop :=
  ∀ n, P12449447369951484711.a n = A214951 n

end A214951

/-!
# A214952: a(n) is the sum over all proper integer partitions with distinct parts of n of the previous terms.

The programs for A214952, there is no canonical definition to state claims against.
-/

/-! ## A214952.P15915890474492677789

`A100196(A148154(n)+A010815(n))`
-/

namespace A214952.P15915890474492677789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148154 n + A010815 n).toNat

end

end A214952.P15915890474492677789

/-! ## A214952.P14889089033775889700

`A054404(A185087(n)+A059117(n))`
-/

namespace A214952.P14889089033775889700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A185087 n + A059117 n).toNat

end

end A214952.P14889089033775889700

/-! ## A214952.P12826818414703564790

`A100196(A148154(n)+A057428(n))`
-/

namespace A214952.P12826818414703564790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148154 n + A057428 n).toNat

end

end A214952.P12826818414703564790

/-! ## A214952.P4463893795223036518

`A100196(A148154(n)-A004525(n))`
-/

namespace A214952.P4463893795223036518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148154 n - A004525 n).toNat

end

end A214952.P4463893795223036518

/-! ## A214952.P8658162785696192578

`A100196(A148154(n)-A057427(n))`
-/

namespace A214952.P8658162785696192578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148154 n - A057427 n).toNat

end

end A214952.P8658162785696192578

/-!
# A214954: a(n) = 3*a(n-1) + 6*a(n-2) + a(n-3), with a(0) = 0, a(1) = 2, and a(2) = 7.

The programs for A214954, the canonical program `A214954.P12572482633363243621` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214954 has offset 0).

The definition of A214954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+6*a(n-2)+a(n-3)` (program `A214954.P12572482633363243621`, by `A214954.P12572482633363243621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214954.P11340630769890881895

`ogf((2x+x^2)/(1-3x-6x^2-x^3))`
-/

namespace A214954.P11340630769890881895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -3, -6, -1] n

end

end A214954.P11340630769890881895

namespace A214954

/-- `ogf((2x+x^2)/(1-3x-6x^2-x^3))` -/
def P11340630769890881895.Spec : Prop :=
  ∀ n, P11340630769890881895.a n = A214954 n

end A214954

/-! ## A214954.P12572482633363243621

`3*a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214954

/-- `3*a(n-1)+6*a(n-2)+a(n-3)` -/
def P12572482633363243621.Spec : Prop :=
  ∀ n, (P12572482633363243621.a n : ℤ) = A214954 n

theorem P12572482633363243621.correct : P12572482633363243621.Spec := by
  intro n
  simp only [A214954]

end A214954

/-! ## A214954.P653655017540022071

`Δ[A214778(n)/9]`
-/

namespace A214954.P653655017540022071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214778 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214954.P653655017540022071

namespace A214954

/-- `Δ[A214778(n)/9]` -/
def P653655017540022071.Spec : Prop :=
  ∀ n, P653655017540022071.a n = (A214954 n : ℚ)

end A214954

/-! ## A214954.P11036677361881106065

`∑[A214951(n)]-A214951(n)`
-/

namespace A214954.P11036677361881106065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214951 n

end

end A214954.P11036677361881106065

namespace A214954

/-- `∑[A214951(n)]-A214951(n)` -/
def P11036677361881106065.Spec : Prop :=
  ∀ n, P11036677361881106065.a n = A214954 n

end A214954

/-! ## A214954.P16245162015386953372

`A214778(n+1)/9-A214778(n)/9`
-/

namespace A214954.P16245162015386953372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214778 (n + 1) : ℚ) / 9 - (A214778 n : ℚ) / 9

end

end A214954.P16245162015386953372

namespace A214954

/-- `A214778(n+1)/9-A214778(n)/9` -/
def P16245162015386953372.Spec : Prop :=
  ∀ n, P16245162015386953372.a n = (A214954 n : ℚ)

end A214954

/-!
# A214955: Number of solid standard Young tableaux of shape [[n,n-1],[1]].

The programs for A214955, the canonical program `A214955.P7782077404515265110` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214955 has offset 1).

The definition of A214955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214955.P2004986755728897187

`2*(2*(n+1)-1)²/((n+2)*(2*(n+1)-3))*a(n-1)` with `a(0)=1`
-/

namespace A214955.P2004986755728897187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * ((2 * (n + 1) : ℤ) - 1) ^ 2 : ℚ) / ((n + 2 : ℤ) * ((2 * (n + 1) : ℤ) - 3) : ℚ) * a (n - 1)

end

end A214955.P2004986755728897187

namespace A214955

/-- `2*(2*(n+1)-1)²/((n+2)*(2*(n+1)-3))*a(n-1)` -/
def P2004986755728897187.Spec : Prop :=
  ∀ n, P2004986755728897187.a n = (A214955 (n + 1) : ℚ)

end A214955

/-! ## A214955.P7782077404515265110

`A060747(n+1)*A000108(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214955

/-- `A060747(n+1)*A000108(n+1)` -/
def P7782077404515265110.Spec : Prop :=
  ∀ n, P7782077404515265110.a n = A214955 (n + 1)

theorem P7782077404515265110.correct : P7782077404515265110.Spec := by
  intro n
  simp only [A214955, Nat.add_sub_cancel]

end A214955

/-! ## A214955.P18225049856220634376

`2*(2*(n+1)-1)²*a(n-1)/((n+2)*(2*(n+1)-3))` with `a(0)=1`
-/

namespace A214955.P18225049856220634376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * ((2 * (n + 1) : ℤ) - 1) ^ 2 : ℚ) * a (n - 1) / ((n + 2 : ℤ) * ((2 * (n + 1) : ℤ) - 3) : ℚ)

end

end A214955.P18225049856220634376

namespace A214955

/-- `2*(2*(n+1)-1)²*a(n-1)/((n+2)*(2*(n+1)-3))` -/
def P18225049856220634376.Spec : Prop :=
  ∀ n, P18225049856220634376.a n = (A214955 (n + 1) : ℚ)

end A214955

/-! ## A214955.P13471347094097865991

`(2*(n+1)-1)*C(2*(n+1), n+1)/(n+2)`
-/

namespace A214955.P13471347094097865991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (Nat.choose (2 * (n + 1)) (n + 1) : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A214955.P13471347094097865991

namespace A214955

/-- `(2*(n+1)-1)*C(2*(n+1), n+1)/(n+2)` -/
def P13471347094097865991.Spec : Prop :=
  ∀ n, P13471347094097865991.a n = (A214955 (n + 1) : ℚ)

end A214955

/-! ## A214955.P6716510482666950948

`(2*n+1)*∏[2*(2*n+1)/(n+2)]`
-/

namespace A214955.P6716510482666950948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A214955.P6716510482666950948

namespace A214955

/-- `(2*n+1)*∏[2*(2*n+1)/(n+2)]` -/
def P6716510482666950948.Spec : Prop :=
  ∀ n, P6716510482666950948.a n = (A214955 (n + 1) : ℚ)

end A214955

/-! ## A214955.P6869514694437875033

`record[Δ[A238452(n)]]`
-/

namespace A214955.P6869514694437875033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214955.P6869514694437875033

namespace A214955

/-- `record[Δ[A238452(n)]]` -/
def P6869514694437875033.Spec : Prop :=
  ∀ n, P6869514694437875033.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P9665466944390652785

`record[(n+1)*A099364(n)]`
-/

namespace A214955.P9665466944390652785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214955.P9665466944390652785

namespace A214955

/-- `record[(n+1)*A099364(n)]` -/
def P9665466944390652785.Spec : Prop :=
  ∀ n, P9665466944390652785.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P12478265020494189351

`record[abs(1-n)*A126120(n)]`
-/

namespace A214955.P12478265020494189351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214955.P12478265020494189351

namespace A214955

/-- `record[abs(1-n)*A126120(n)]` -/
def P12478265020494189351.Spec : Prop :=
  ∀ n, P12478265020494189351.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P2784509820091463783

`record[Δ[n*A126120(n+1)]]`
-/

namespace A214955.P2784509820091463783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214955.P2784509820091463783

namespace A214955

/-- `record[Δ[n*A126120(n+1)]]` -/
def P2784509820091463783.Spec : Prop :=
  ∀ n, P2784509820091463783.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P11523875213575742798

`abs(Δ[n²]*A090192(2*n+3))`
-/

namespace A214955.P11523875213575742798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A090192 (2 * n + 3)|

end

end A214955.P11523875213575742798

namespace A214955

/-- `abs(Δ[n²]*A090192(2*n+3))` -/
def P11523875213575742798.Spec : Prop :=
  ∀ n, P11523875213575742798.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P18278773937468100801

`A099376(n)+A002054(n+1)`
-/

namespace A214955.P18278773937468100801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A002054 (n + 1)

end

end A214955.P18278773937468100801

namespace A214955

/-- `A099376(n)+A002054(n+1)` -/
def P18278773937468100801.Spec : Prop :=
  ∀ n, P18278773937468100801.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P16580690006635503632

`abs(A000108(n+1)*A157142(n))`
-/

namespace A214955.P16580690006635503632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (n + 1) * A157142 n|

end

end A214955.P16580690006635503632

namespace A214955

/-- `abs(A000108(n+1)*A157142(n))` -/
def P16580690006635503632.Spec : Prop :=
  ∀ n, P16580690006635503632.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P561037796003428248

`A246574(n+1)+A000108(n+1)`
-/

namespace A214955.P561037796003428248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (n + 1) + A000108 (n + 1)

end

end A214955.P561037796003428248

namespace A214955

/-- `A246574(n+1)+A000108(n+1)` -/
def P561037796003428248.Spec : Prop :=
  ∀ n, P561037796003428248.a n = A214955 (n + 1)

theorem P561037796003428248.correct : P561037796003428248.Spec := by
  intro n
  simp only [A214955, Nat.add_sub_cancel, A214955.P561037796003428248.a, A214955.P7782077404515265110.a, A000108, A000108.P17551949696095299361.a, A060747, A060747.P16920431360270313306.a, A246574, A246574.P14723244290240147423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214955

/-! ## A214955.P373284953773451005

`A276666(n+1)+A001791(n+1)`
-/

namespace A214955.P373284953773451005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 1) + A001791 (n + 1)

end

end A214955.P373284953773451005

namespace A214955

/-- `A276666(n+1)+A001791(n+1)` -/
def P373284953773451005.Spec : Prop :=
  ∀ n, P373284953773451005.a n = A214955 (n + 1)

theorem P373284953773451005.correct : P373284953773451005.Spec := by
  intro n
  simp only [A214955, Nat.add_sub_cancel, A214955.P373284953773451005.a, A214955.P7782077404515265110.a, A000108, A000108.P17551949696095299361.a, A001791, A001791.P9713013280951293137.a, A060747, A060747.P16920431360270313306.a, A276666, A276666.P3198409013776322395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214955

/-! ## A214955.P596918594513670952

`A002420(n+2)+A001700(n+1)`
-/

namespace A214955.P596918594513670952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (n + 2) + A001700 (n + 1)

end

end A214955.P596918594513670952

namespace A214955

/-- `A002420(n+2)+A001700(n+1)` -/
def P596918594513670952.Spec : Prop :=
  ∀ n, P596918594513670952.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P15611818999711772723

`A024483(n+2)+A001791(n+1)`
-/

namespace A214955.P15611818999711772723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 2) + A001791 (n + 1)

end

end A214955.P15611818999711772723

namespace A214955

/-- `A024483(n+2)+A001791(n+1)` -/
def P15611818999711772723.Spec : Prop :=
  ∀ n, P15611818999711772723.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P5588507581298857389

`A062561(n+1)-A000984(n+1)`
-/

namespace A214955.P5588507581298857389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 (n + 1) - A000984 (n + 1)

end

end A214955.P5588507581298857389

namespace A214955

/-- `A062561(n+1)-A000984(n+1)` -/
def P5588507581298857389.Spec : Prop :=
  ∀ n, P5588507581298857389.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P8541336839633312578

`A001700(n+1)-A068875(n+1)`
-/

namespace A214955.P8541336839633312578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) - A068875 (n + 1)

end

end A214955.P8541336839633312578

namespace A214955

/-- `A001700(n+1)-A068875(n+1)` -/
def P8541336839633312578.Spec : Prop :=
  ∀ n, P8541336839633312578.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P119005607207790296

`A051944(n+1)-A028329(n+1)`
-/

namespace A214955.P119005607207790296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 (n + 1) - A028329 (n + 1)

end

end A214955.P119005607207790296

namespace A214955

/-- `A051944(n+1)-A028329(n+1)` -/
def P119005607207790296.Spec : Prop :=
  ∀ n, P119005607207790296.a n = A214955 (n + 1)

end A214955

/-! ## A214955.P1284449646098236273

`A162551(n+1)-A000108(n+1)`
-/

namespace A214955.P1284449646098236273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 (n + 1) - A000108 (n + 1)

end

end A214955.P1284449646098236273

namespace A214955

/-- `A162551(n+1)-A000108(n+1)` -/
def P1284449646098236273.Spec : Prop :=
  ∀ n, P1284449646098236273.a n = A214955 (n + 1)

theorem P1284449646098236273.correct : P1284449646098236273.Spec := by
  intro n
  simp only [A214955, Nat.add_sub_cancel, A214955.P1284449646098236273.a, A214955.P7782077404515265110.a, A000108, A000108.P17551949696095299361.a, A060747, A060747.P16920431360270313306.a, A162551, A162551.P10524967716150044895.a, A001791, A001791.P9713013280951293137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214955

/-!
# A214956: Number of primes of the form x^32 + 1 less than 10^n.

The programs for A214956, there is no canonical definition to state claims against.
-/

/-! ## A214956.P3731204970304984089

`A188169(∑[char[A004771(n)]]!)`
-/

namespace A214956.P3731204970304984089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A214956.P3731204970304984089

/-! ## A214956.P2789235075950333318

`A347447(A195882(or(7, n+1)))`
-/

namespace A214956.P2789235075950333318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (A195882 (Nat.lor 7 (n + 1))).toNat

end

end A214956.P2789235075950333318

/-! ## A214956.P13341825666105481062

`A112348(A000213(∑[val(n+1, 8)]))`
-/

namespace A214956.P13341825666105481062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (A000213 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A214956.P13341825666105481062

/-! ## A214956.P8187414082853160061

`∏{e}[A002294(A054900(2*(n+1))), #]`
-/

namespace A214956.P8187414082853160061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 (A054900 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A214956.P8187414082853160061

/-! ## A214956.P15680425425395229150

`∑[val(A115570(A064455(n+3)), 5)]+1`
-/

namespace A214956.P15680425425395229150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115570 (A064455 (n + 3)).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214956.P15680425425395229150

/-! ## A214956.P14255880258968130165

`A305633((A037477(n+1)-n)²+1)`
-/

namespace A214956.P14255880258968130165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305633 ((A037477 (n + 1) - (n : ℤ)) ^ 2 + 1).toNat

end

end A214956.P14255880258968130165

/-! ## A214956.P14417627177383608831

`∑[A046412(n+5)%A002260(A000688(n+1))]+1`
-/

namespace A214956.P14417627177383608831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046412 (n + 5)) (A002260 (A000688 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214956.P14417627177383608831

/-! ## A214956.P1171378773068300478

`A248231(ceil(A053263(n)/A347451(n+1)))`
-/

namespace A214956.P1171378773068300478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 ⌈(A053263 n : ℚ) / (A347451 (n + 1) : ℚ)⌉.toNat

end

end A214956.P1171378773068300478

/-!
# A214957: Numbers for which the sum of reciprocals of nonzero digits is an integer.

The programs for A214957, there is no canonical definition to state claims against.
-/

/-! ## A214957.P14878369897052092666

`eq[1, A214950(n)]`
-/

namespace A214957.P14878369897052092666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214957.P14878369897052092666

/-! ## A214957.P1522039563411907048

`record[A005843(n)-n*A214950(n)]`
-/

namespace A214957.P1522039563411907048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (n : ℤ) * A214950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214957.P1522039563411907048

/-! ## A214957.P17976815274801302683

`record[(A214950(n)-2)*A001489(n)]`
-/

namespace A214957.P17976815274801302683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214950 n - 2) * A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214957.P17976815274801302683

/-! ## A214957.P4549769514859574157

`record[A008587(n)/A011535(A214950(n))]`
-/

namespace A214957.P4549769514859574157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008587 n : ℚ) / (A011535 (A214950 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214957.P4549769514859574157

/-! ## A214957.P12589467317883620337

`record[A001489(n)+A005843(n)/A214950(n)]`
-/

namespace A214957.P12589467317883620337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) + (A005843 n : ℚ) / (A214950 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214957.P12589467317883620337

/-!
# A214958: Numbers for which the sum of reciprocals of nonzero digits is reciprocal of an integer.

The programs for A214958, there is no canonical definition to state claims against.
-/

/-! ## A214958.P14113746220369322771

`eq[1, A214949(n)]`
-/

namespace A214958.P14113746220369322771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214958.P14113746220369322771

/-! ## A214958.P683370753199652386

`record[(n+1)/A214949(n+1)]`
-/

namespace A214958.P683370753199652386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214949 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214958.P683370753199652386

/-! ## A214958.P1560897769171946220

`record[gcd(n+1, A214949(A214949(n+1)-1))]`
-/

namespace A214958.P1560897769171946220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A214949 (A214949 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214958.P1560897769171946220

/-! ## A214958.P16452139420935292946

`record[A028310(n)/A000041(A214949(n))]`
-/

namespace A214958.P16452139420935292946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A000041 (A214949 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214958.P16452139420935292946

/-! ## A214958.P7987918170866399601

`eq[1, A318573(A113581(n))]`
-/

namespace A214958.P7987918170866399601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214958.P7987918170866399601

/-!
# A214959: Numbers for which the sum of reciprocals of nonzero digits = 1.

The programs for A214959, there is no canonical definition to state claims against.
-/

/-! ## A214959.P3423113550309237624

`∩[A214957(n+1), A214958(n+1)]`
-/

namespace A214959.P3423113550309237624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214959.P3423113550309237624

/-! ## A214959.P8542936710090320865

`eq[A214949(n), A214950(n)]`
-/

namespace A214959.P8542936710090320865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214959.P8542936710090320865

/-! ## A214959.P15508112944952658915

`eq[2, A214949(A017281(n))]`
-/

namespace A214959.P15508112944952658915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214959.P15508112944952658915

/-! ## A214959.P8042208085343360748

`eq[6, A214949(A017329(n))]`
-/

namespace A214959.P8042208085343360748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A017329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214959.P8042208085343360748

/-! ## A214959.P5050623766041558239

`eq[8, A214949(A017353(n))]`
-/

namespace A214959.P5050623766041558239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A017353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214959.P5050623766041558239

/-!
# A214960: Expansion of psi(x^2) - x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

The programs for A214960, the canonical program `A214960.P4106115688173494549` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214960 has offset 0).

The definition of A214960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214960.P4106115688173494549

`(-1)^n*A127693(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214960

/-- `(-1)^n*A127693(n)` -/
def P4106115688173494549.Spec : Prop :=
  ∀ n, P4106115688173494549.a n = A214960 n

theorem P4106115688173494549.correct : P4106115688173494549.Spec := by
  intro n
  simp only [A214960]

end A214960

/-! ## A214960.P4218600989774388546

`A010052(4*n+1)-A010052(20*n+5)`
-/

namespace A214960.P4218600989774388546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (4 * n + 1) - A010052 (20 * n + 5)

end

end A214960.P4218600989774388546

namespace A214960

/-- `A010052(4*n+1)-A010052(20*n+5)` -/
def P4218600989774388546.Spec : Prop :=
  ∀ n, P4218600989774388546.a n = A214960 n

end A214960

/-! ## A214960.P12225393968732542633

`A089800(n)-A127693(n)`
-/

namespace A214960.P12225393968732542633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n - A127693 n

end

end A214960.P12225393968732542633

namespace A214960

/-- `A089800(n)-A127693(n)` -/
def P12225393968732542633.Spec : Prop :=
  ∀ n, P12225393968732542633.a n = A214960 n

end A214960

/-! ## A214960.P18398121005636848347

`(A030202(n)*A159818(n))%2`
-/

namespace A214960.P18398121005636848347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030202 n * A159818 n) 2

end

end A214960.P18398121005636848347

namespace A214960

/-- `(A030202(n)*A159818(n))%2` -/
def P18398121005636848347.Spec : Prop :=
  ∀ n, P18398121005636848347.a n = A214960 n

end A214960

/-! ## A214960.P5647128487487448759

`A000034(A030202(n)+n)-A000034(n)`
-/

namespace A214960.P5647128487487448759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A030202 n + (n : ℤ)).toNat - A000034 n

end

end A214960.P5647128487487448759

namespace A214960

/-- `A000034(A030202(n)+n)-A000034(n)` -/
def P5647128487487448759.Spec : Prop :=
  ∀ n, P5647128487487448759.a n = A214960 n

end A214960

/-! ## A214960.P2859760382833364109

`A000035(A030202(n)+n)-A000035(n)`
-/

namespace A214960.P2859760382833364109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030202 n + (n : ℤ)).toNat - A000035 n

end

end A214960.P2859760382833364109

namespace A214960

/-- `A000035(A030202(n)+n)-A000035(n)` -/
def P2859760382833364109.Spec : Prop :=
  ∀ n, P2859760382833364109.a n = A214960 n

end A214960

/-! ## A214960.P12876526224544484178

`A010693(A159818(n)+n)-A010693(n)`
-/

namespace A214960.P12876526224544484178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A159818 n + (n : ℤ)).toNat - A010693 n

end

end A214960.P12876526224544484178

namespace A214960

/-- `A010693(A159818(n)+n)-A010693(n)` -/
def P12876526224544484178.Spec : Prop :=
  ∀ n, P12876526224544484178.a n = A214960 n

end A214960

/-! ## A214960.P3235515955402790514

`A128765(2*n)%2`
-/

namespace A214960.P3235515955402790514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128765 (2 * n)) 2

end

end A214960.P3235515955402790514

namespace A214960

/-- `A128765(2*n)%2` -/
def P3235515955402790514.Spec : Prop :=
  ∀ n, P3235515955402790514.a n = A214960 n

end A214960

/-! ## A214960.P12601488952418528325

`A214293(4*n+1)`
-/

namespace A214960.P12601488952418528325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (4 * n + 1)

end

end A214960.P12601488952418528325

namespace A214960

/-- `A214293(4*n+1)` -/
def P12601488952418528325.Spec : Prop :=
  ∀ n, P12601488952418528325.a n = A214960 n

end A214960

/-! ## A214960.P11162820016679667

`A005369(n)-A005369(A017293(n)/2)`
-/

namespace A214960.P11162820016679667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n - A005369 (SequenceMachineLib.roundAway ((A017293 n : ℚ) / 2)).toNat

end

end A214960.P11162820016679667

namespace A214960

/-- `A005369(n)-A005369(A017293(n)/2)` -/
def P11162820016679667.Spec : Prop :=
  ∀ n, P11162820016679667.a n = A214960 n

end A214960

/-! ## A214960.P3333293547439415491

`A005369(n)-A005369(A016813(n)+n)`
-/

namespace A214960.P3333293547439415491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n - A005369 (A016813 n + (n : ℤ)).toNat

end

end A214960.P3333293547439415491

namespace A214960

/-- `A005369(n)-A005369(A016813(n)+n)` -/
def P3333293547439415491.Spec : Prop :=
  ∀ n, P3333293547439415491.a n = A214960 n

end A214960

/-! ## A214960.P13379077504458875628

`A214295(A267099(4*n+1))`
-/

namespace A214960.P13379077504458875628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A267099 (4 * n + 1)).toNat

end

end A214960.P13379077504458875628

namespace A214960

/-- `A214295(A267099(4*n+1))` -/
def P13379077504458875628.Spec : Prop :=
  ∀ n, P13379077504458875628.a n = A214960 n

end A214960

/-!
# A214963: a(0)=a(1)=1, a(n) = least k > a(n-1) such that k*a(n-2) is an oblong number.

The programs for A214963, there is no canonical definition to state claims against.
-/

/-! ## A214963.P3201303044397031125

`A252463(eq[A080545(n+1), A324664(n)])`
-/

namespace A214963.P3201303044397031125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A214963.P3201303044397031125

/-!
# A214970: Integers n that divide f(n), where f is the change-of-base function defined at A214969, using b = (golden ratio) and c=b^2.

The programs for A214970, there is no canonical definition to state claims against.
-/

/-! ## A214970.P10124244827678807747

`A171070(record[A170972(2*n)])`
-/

namespace A214970.P10124244827678807747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214970.P10124244827678807747

/-! ## A214970.P399115887708251479

`A171070(lt[A262811(n), A324785(n+1)])`
-/

namespace A214970.P399115887708251479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214970.P399115887708251479

/-! ## A214970.P16870265224947605906

`A178482(lt[A022998(n+2), A178431(3*(n+1))])`
-/

namespace A214970.P16870265224947605906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178431 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214970.P16870265224947605906

/-!
# A214971: Integers k for which the base-phi representation of k includes 1.

The programs for A214971, the canonical program `A214971.P11920621393360693990` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214971 has offset 1).

The definition of A214971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214971.P11920621393360693990

`floor(n*ϕ)+2*(n+1)-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214971

/-- `floor(n*ϕ)+2*(n+1)-1` -/
def P11920621393360693990.Spec : Prop :=
  ∀ n, P11920621393360693990.a n = A214971 (n + 1)

theorem P11920621393360693990.correct : P11920621393360693990.Spec := by
  intro n
  simp only [A214971, Nat.add_sub_cancel]

end A214971

/-! ## A214971.P3814678005841188617

`comp[A195121(n)]`
-/

namespace A214971.P3814678005841188617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214971.P3814678005841188617

namespace A214971

/-- `comp[A195121(n)]` -/
def P3814678005841188617.Spec : Prop :=
  ∀ n, (P3814678005841188617.a n : ℤ) = A214971 (n + 1)

end A214971

/-! ## A214971.P4587449718335348431

`record[Δ[A005752(n)]]`
-/

namespace A214971.P4587449718335348431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214971.P4587449718335348431

namespace A214971

/-- `record[Δ[A005752(n)]]` -/
def P4587449718335348431.Spec : Prop :=
  ∀ n, P4587449718335348431.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P4208975968939393862

`eq[1, A284749(n+1)]`
-/

namespace A214971.P4208975968939393862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214971.P4208975968939393862

namespace A214971

/-- `eq[1, A284749(n+1)]` -/
def P4208975968939393862.Spec : Prop :=
  ∀ n, (P4208975968939393862.a n : ℤ) = A214971 (n + 1)

end A214971

/-! ## A214971.P17237721999186458382

`(A285682(n+1)+n)/2`
-/

namespace A214971.P17237721999186458382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285682 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A214971.P17237721999186458382

namespace A214971

/-- `(A285682(n+1)+n)/2` -/
def P17237721999186458382.Spec : Prop :=
  ∀ n, P17237721999186458382.a n = (A214971 (n + 1) : ℚ)

end A214971

/-! ## A214971.P12645720214011519253

`A050140(A026351(n))`
-/

namespace A214971.P12645720214011519253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A026351 n).toNat

end

end A214971.P12645720214011519253

namespace A214971

/-- `A050140(A026351(n))` -/
def P12645720214011519253.Spec : Prop :=
  ∀ n, P12645720214011519253.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P8038762795008192726

`A249115(A026352(n))`
-/

namespace A214971.P8038762795008192726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A026352 n).toNat

end

end A214971.P8038762795008192726

namespace A214971

/-- `A249115(A026352(n))` -/
def P8038762795008192726.Spec : Prop :=
  ∀ n, P8038762795008192726.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P1514765891456314370

`A063732(A026356(n+1))`
-/

namespace A214971.P1514765891456314370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A026356 (n + 1)).toNat

end

end A214971.P1514765891456314370

namespace A214971

/-- `A063732(A026356(n+1))` -/
def P1514765891456314370.Spec : Prop :=
  ∀ n, P1514765891456314370.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P5490466388607210415

`A023443(A284624(n+1))`
-/

namespace A214971.P5490466388607210415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284624 (n + 1)).toNat

end

end A214971.P5490466388607210415

namespace A214971

/-- `A023443(A284624(n+1))` -/
def P5490466388607210415.Spec : Prop :=
  ∀ n, P5490466388607210415.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P9405599673984225151

`A063732(A066096(n)+n+2)`
-/

namespace A214971.P9405599673984225151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A066096 n + (n + 2 : ℤ)).toNat

end

end A214971.P9405599673984225151

namespace A214971

/-- `A063732(A066096(n)+n+2)` -/
def P9405599673984225151.Spec : Prop :=
  ∀ n, P9405599673984225151.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P17926697760913672621

`A063732(A284624(n+1)-n)`
-/

namespace A214971.P17926697760913672621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A284624 (n + 1) - (n : ℤ)).toNat

end

end A214971.P17926697760913672621

namespace A214971

/-- `A063732(A284624(n+1)-n)` -/
def P17926697760913672621.Spec : Prop :=
  ∀ n, P17926697760913672621.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P13908722439283212005

`filter[A190723(n+1), A230603(#)]`
-/

namespace A214971.P13908722439283212005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230603 (f1 j).toNat = 1) n)

end

end A214971.P13908722439283212005

namespace A214971

/-- `filter[A190723(n+1), A230603(#)]` -/
def P13908722439283212005.Spec : Prop :=
  ∀ n, P13908722439283212005.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P222993467138638589

`filter[A190723(n+1), A287772(#)]`
-/

namespace A214971.P222993467138638589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287772 (f1 j).toNat = 1) n)

end

end A214971.P222993467138638589

namespace A214971

/-- `filter[A190723(n+1), A287772(#)]` -/
def P222993467138638589.Spec : Prop :=
  ∀ n, P222993467138638589.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P2994798638990199635

`∩[A050140(n+1), A190723(n+1)]`
-/

namespace A214971.P2994798638990199635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214971.P2994798638990199635

namespace A214971

/-- `∩[A050140(n+1), A190723(n+1)]` -/
def P2994798638990199635.Spec : Prop :=
  ∀ n, (P2994798638990199635.a n : ℤ) = A214971 (n + 1)

end A214971

/-! ## A214971.P9482620552603026883

`∩[A063732(n+1), A190723(n+1)]`
-/

namespace A214971.P9482620552603026883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214971.P9482620552603026883

namespace A214971

/-- `∩[A063732(n+1), A190723(n+1)]` -/
def P9482620552603026883.Spec : Prop :=
  ∀ n, (P9482620552603026883.a n : ℤ) = A214971 (n + 1)

end A214971

/-! ## A214971.P18344084436210148604

`∩[A190723(n+1), A399305(n+1)]`
-/

namespace A214971.P18344084436210148604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214971.P18344084436210148604

namespace A214971

/-- `∩[A190723(n+1), A399305(n+1)]` -/
def P18344084436210148604.Spec : Prop :=
  ∀ n, (P18344084436210148604.a n : ℤ) = A214971 (n + 1)

end A214971

/-! ## A214971.P17925944073301573737

`A050140(2*n+1-A189663(n+1))`
-/

namespace A214971.P17925944073301573737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 ((2 * n + 1 : ℤ) - A189663 (n + 1)).toNat

end

end A214971.P17925944073301573737

namespace A214971

/-- `A050140(2*n+1-A189663(n+1))` -/
def P17925944073301573737.Spec : Prop :=
  ∀ n, P17925944073301573737.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P12419456984517117656

`A050140(A284624(n+1)-(2*n+1))`
-/

namespace A214971.P12419456984517117656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A284624 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A214971.P12419456984517117656

namespace A214971

/-- `A050140(A284624(n+1)-(2*n+1))` -/
def P12419456984517117656.Spec : Prop :=
  ∀ n, P12419456984517117656.a n = A214971 (n + 1)

end A214971

/-! ## A214971.P13338108448811216379

`A189579(A189578(A026352(n)+n))`
-/

namespace A214971.P13338108448811216379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189579 (A189578 (A026352 n + (n : ℤ)).toNat).toNat

end

end A214971.P13338108448811216379

namespace A214971

/-- `A189579(A189578(A026352(n)+n))` -/
def P13338108448811216379.Spec : Prop :=
  ∀ n, P13338108448811216379.a n = A214971 (n + 1)

end A214971

/-!
# A214972: a(n) = a(floor(2*(n-1)/3)) + 1, where a(0) = 0.

The programs for A214972, the canonical program `A214972.P2458998127496770264` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214972 has offset 0).

The definition of A214972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*(n-1)/3))+1` (program `A214972.P2458998127496770264`, by `A214972.P2458998127496770264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214972.P2458998127496770264

`a(floor(2*(n-1)/3))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214972

/-- `a(floor(2*(n-1)/3))+1` -/
def P2458998127496770264.Spec : Prop :=
  ∀ n, (P2458998127496770264.a n : ℤ) = A214972 n

theorem P2458998127496770264.correct : P2458998127496770264.Spec := by
  intro n
  simp only [A214972]

end A214972

/-! ## A214972.P14431944640634678295

`∑[char[ceil(3*a(n-1)/2)+1]]` with `a(0)=1`
-/

namespace A214972.P14431944640634678295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌈(3 * f2 (n - 1) : ℚ) / 2⌉ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214972.P14431944640634678295

namespace A214972

/-- `∑[char[ceil(3*a(n-1)/2)+1]]` -/
def P14431944640634678295.Spec : Prop :=
  ∀ n, (P14431944640634678295.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P7905574072717310517

`∑[char[floor(a(n-1)/2+a(n-1)+ϕ)]]` with `a(0)=1`
-/

namespace A214972.P7905574072717310517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊((f2 (n - 1) : ℚ) / 2 : ℝ) + ((f2 (n - 1) : ℝ) + Real.goldenRatio)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214972.P7905574072717310517

namespace A214972

/-- `∑[char[floor(a(n-1)/2+a(n-1)+ϕ)]]` -/
def P7905574072717310517.Spec : Prop :=
  ∀ n, (P7905574072717310517.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P3435207256475370206

`∑[char[A152009(n+1)]]`
-/

namespace A214972.P3435207256475370206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152009 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214972.P3435207256475370206

namespace A214972

/-- `∑[char[A152009(n+1)]]` -/
def P3435207256475370206.Spec : Prop :=
  ∀ n, (P3435207256475370206.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P10098125139467113749

`∑[char[∑[A005428(n+1)]]]`
-/

namespace A214972.P10098125139467113749
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214972.P10098125139467113749

namespace A214972

/-- `∑[char[∑[A005428(n+1)]]]` -/
def P10098125139467113749.Spec : Prop :=
  ∀ n, (P10098125139467113749.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P18431050199104676081

`∑[char[A061418(n+1)-3]]-1`
-/

namespace A214972.P18431050199104676081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A214972.P18431050199104676081

namespace A214972

/-- `∑[char[A061418(n+1)-3]]-1` -/
def P18431050199104676081.Spec : Prop :=
  ∀ n, P18431050199104676081.a n = A214972 n

end A214972

/-! ## A214972.P14273273332067340263

`∑[char[A032766(a(n-1)+1)]]` with `a(0)=1`
-/

namespace A214972.P14273273332067340263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A032766 (f2 (n - 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214972.P14273273332067340263

namespace A214972

/-- `∑[char[A032766(a(n-1)+1)]]` -/
def P14273273332067340263.Spec : Prop :=
  ∀ n, (P14273273332067340263.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P9889222334321125723

`∑[char[A032766(A006999(n+1))]]`
-/

namespace A214972.P9889222334321125723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A006999 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214972.P9889222334321125723

namespace A214972

/-- `∑[char[A032766(A006999(n+1))]]` -/
def P9889222334321125723.Spec : Prop :=
  ∀ n, (P9889222334321125723.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P15459912838328972861

`∑[char[A032766(A006999(n))]]-1`
-/

namespace A214972.P15459912838328972861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A006999 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A214972.P15459912838328972861

namespace A214972

/-- `∑[char[A032766(A006999(n))]]-1` -/
def P15459912838328972861.Spec : Prop :=
  ∀ n, P15459912838328972861.a n = A214972 n

end A214972

/-! ## A214972.P17207957540273159886

`floor(log2(A006998(n+2)/2))`
-/

namespace A214972.P17207957540273159886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A006998 (n + 2) : ℚ) / 2 : ℝ)⌋

end

end A214972.P17207957540273159886

namespace A214972

/-- `floor(log2(A006998(n+2)/2))` -/
def P17207957540273159886.Spec : Prop :=
  ∀ n, P17207957540273159886.a n = A214972 n

end A214972

/-! ## A214972.P14789621002871772160

`A061420(n+2)-2`
-/

namespace A214972.P14789621002871772160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (n + 2) - 2

end

end A214972.P14789621002871772160

namespace A214972

/-- `A061420(n+2)-2` -/
def P14789621002871772160.Spec : Prop :=
  ∀ n, P14789621002871772160.a n = A214972 n

end A214972

/-! ## A214972.P4202377840636186482

`A246435(2*(n+2))-2`
-/

namespace A214972.P4202377840636186482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (2 * (n + 2)) - 2

end

end A214972.P4202377840636186482

namespace A214972

/-- `A246435(2*(n+2))-2` -/
def P4202377840636186482.Spec : Prop :=
  ∀ n, P4202377840636186482.a n = A214972 n

end A214972

/-! ## A214972.P2465496071167040731

`floor(log2(A205591(n+1)))`
-/

namespace A214972.P2465496071167040731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A205591 (n + 1)).toNat

end

end A214972.P2465496071167040731

namespace A214972

/-- `floor(log2(A205591(n+1)))` -/
def P2465496071167040731.Spec : Prop :=
  ∀ n, (P2465496071167040731.a n : ℤ) = A214972 n

end A214972

/-! ## A214972.P4071150658771000706

`A000523(A205591(n+1))`
-/

namespace A214972.P4071150658771000706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A205591 (n + 1)).toNat

end

end A214972.P4071150658771000706

namespace A214972

/-- `A000523(A205591(n+1))` -/
def P4071150658771000706.Spec : Prop :=
  ∀ n, P4071150658771000706.a n = A214972 n

end A214972

/-!
# A214973: Number of terms in greedy representation of n using Fibonacci and Lucas numbers.

The programs for A214973, there is no canonical definition to state claims against.
-/

/-! ## A214973.P282544956254581779

`Δ[A214981(A028310(n))%(n+1)²]`
-/

namespace A214973.P282544956254581779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214981 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214973.P282544956254581779

/-! ## A214973.P1023359482713905151

`A028310(Δ[A214981(A028310(n))])`
-/

namespace A214973.P1023359482713905151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214981 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A214973.P1023359482713905151

/-! ## A214973.P8230392800016509117

`A000007(n)+Δ[A214981(A000007(n)+n)]`
-/

namespace A214973.P8230392800016509117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214981 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A214973.P8230392800016509117

/-! ## A214973.P6771030006845289008

`A007302(abs(A232723(n+2)))`
-/

namespace A214973.P6771030006845289008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 |A232723 (n + 2)|.toNat

end

end A214973.P6771030006845289008

/-! ## A214973.P10295961476909579509

`A329320(A048679(n+1))`
-/

namespace A214973.P10295961476909579509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A048679 (n + 1)).toNat

end

end A214973.P10295961476909579509

/-! ## A214973.P7728409867195867889

`A329320(A371176(n+1))`
-/

namespace A214973.P7728409867195867889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A371176 (n + 1)).toNat

end

end A214973.P7728409867195867889

/-!
# A214974: Numbers k for which A116543(k) = A007895(k); i.e., the Lucas and Zeckendorf representations of k have the same length.

The programs for A214974, the canonical program `A214974.P2106782757956089730` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214974 has offset 1).

The definition of A214974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214974.P2106782757956089730

`eq[A007895(n+1), A116543(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214974

/-- `eq[A007895(n+1), A116543(n+1)]+1` -/
def P2106782757956089730.Spec : Prop :=
  ∀ n, (P2106782757956089730.a n : ℤ) = A214974 (n + 1)

theorem P2106782757956089730.correct : P2106782757956089730.Spec := by
  intro n
  simp only [A214974, Nat.add_sub_cancel]

end A214974

/-! ## A214974.P8805953082921928387

`eq[A007895(n), A116543(A028310(n))]`
-/

namespace A214974.P8805953082921928387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214974.P8805953082921928387

namespace A214974

/-- `eq[A007895(n), A116543(A028310(n))]` -/
def P8805953082921928387.Spec : Prop :=
  ∀ n, (P8805953082921928387.a n : ℤ) = A214974 (n + 1)

end A214974

/-! ## A214974.P8692247158398178689

`eq[A065033(A104324(n)), A116543(n)]`
-/

namespace A214974.P8692247158398178689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A104324 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214974.P8692247158398178689

namespace A214974

/-- `eq[A065033(A104324(n)), A116543(n)]` -/
def P8692247158398178689.Spec : Prop :=
  ∀ n, (P8692247158398178689.a n : ℤ) = A214974 (n + 1)

end A214974

/-! ## A214974.P15678580978673698024

`eq[A007895(A000007(n)+n), A116543(n)]`
-/

namespace A214974.P15678580978673698024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214974.P15678580978673698024

namespace A214974

/-- `eq[A007895(A000007(n)+n), A116543(n)]` -/
def P15678580978673698024.Spec : Prop :=
  ∀ n, (P15678580978673698024.a n : ℤ) = A214974 (n + 1)

end A214974

/-! ## A214974.P10871747078471784831

`eq[A007895(n)-A000007(n), A116543(n)]`
-/

namespace A214974.P10871747078471784831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214974.P10871747078471784831

namespace A214974

/-- `eq[A007895(n)-A000007(n), A116543(n)]` -/
def P10871747078471784831.Spec : Prop :=
  ∀ n, (P10871747078471784831.a n : ℤ) = A214974 (n + 1)

end A214974

/-! ## A214974.P173099017260674097

`eq[A007895(A233583(n+1)), A116543(n)]`
-/

namespace A214974.P173099017260674097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214974.P173099017260674097

namespace A214974

/-- `eq[A007895(A233583(n+1)), A116543(n)]` -/
def P173099017260674097.Spec : Prop :=
  ∀ n, (P173099017260674097.a n : ℤ) = A214974 (n + 1)

end A214974

/-! ## A214974.P7897952620142028106

`eq[A000120(A003714(n+1)), A116543(n+1)]+1`
-/

namespace A214974.P7897952620142028106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214974.P7897952620142028106

namespace A214974

/-- `eq[A000120(A003714(n+1)), A116543(n+1)]+1` -/
def P7897952620142028106.Spec : Prop :=
  ∀ n, (P7897952620142028106.a n : ℤ) = A214974 (n + 1)

end A214974

/-!
# A214975: Numbers k for which A116543(k) < A007895(k); i.e., the Lucas representation of k is shorter than the Zeckendorf representation.

The programs for A214975, the canonical program `A214975.P9208562958097402134` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214975 has offset 1).

The definition of A214975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214975.P9208562958097402134

`lt[A116543(n), A007895(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214975

/-- `lt[A116543(n), A007895(n)]` -/
def P9208562958097402134.Spec : Prop :=
  ∀ n, (P9208562958097402134.a n : ℤ) = A214975 (n + 1)

theorem P9208562958097402134.correct : P9208562958097402134.Spec := by
  intro n
  simp only [A214975, Nat.add_sub_cancel]

end A214975

/-! ## A214975.P10030540695301338898

`lt[dr(A130310(n)), A007895(n)]`
-/

namespace A214975.P10030540695301338898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214975.P10030540695301338898

namespace A214975

/-- `lt[dr(A130310(n)), A007895(n)]` -/
def P10030540695301338898.Spec : Prop :=
  ∀ n, (P10030540695301338898.a n : ℤ) = A214975 (n + 1)

end A214975

/-! ## A214975.P18211649064579681409

`lt[A219641(n)+dr(A130310(n)), n]`
-/

namespace A214975.P18211649064579681409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + (SequenceMachineLib.digitalRoot (A130310 n) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214975.P18211649064579681409

namespace A214975

/-- `lt[A219641(n)+dr(A130310(n)), n]` -/
def P18211649064579681409.Spec : Prop :=
  ∀ n, (P18211649064579681409.a n : ℤ) = A214975 (n + 1)

end A214975

/-! ## A214975.P16113129937975571316

`lt[A220115(n)+A116543(n), A000120(n)]`
-/

namespace A214975.P16113129937975571316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n + A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214975.P16113129937975571316

namespace A214975

/-- `lt[A220115(n)+A116543(n), A000120(n)]` -/
def P16113129937975571316.Spec : Prop :=
  ∀ n, (P16113129937975571316.a n : ℤ) = A214975 (n + 1)

end A214975

/-! ## A214975.P17041434719624670968

`lt[dr(A130310(n)), 2*(n+1)-A288625(n+1)]`
-/

namespace A214975.P17041434719624670968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214975.P17041434719624670968

namespace A214975

/-- `lt[dr(A130310(n)), 2*(n+1)-A288625(n+1)]` -/
def P17041434719624670968.Spec : Prop :=
  ∀ n, (P17041434719624670968.a n : ℤ) = A214975 (n + 1)

end A214975

/-! ## A214975.P10829252274428807877

`lt[A219640(n)+A116543(n), A022342(n+1)]`
-/

namespace A214975.P10829252274428807877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n + A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214975.P10829252274428807877

namespace A214975

/-- `lt[A219640(n)+A116543(n), A022342(n+1)]` -/
def P10829252274428807877.Spec : Prop :=
  ∀ n, (P10829252274428807877.a n : ℤ) = A214975 (n + 1)

end A214975

/-! ## A214975.P2876667710456897648

`lt[A116543(n), A213911(A004956(n))]`
-/

namespace A214975.P2876667710456897648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214975.P2876667710456897648

namespace A214975

/-- `lt[A116543(n), A213911(A004956(n))]` -/
def P2876667710456897648.Spec : Prop :=
  ∀ n, (P2876667710456897648.a n : ℤ) = A214975 (n + 1)

end A214975

/-!
# A214976: Numbers k for which A116543(k) > A007895(k); i.e., the Lucas representation of k is longer than the Zeckendorf representation.

The programs for A214976, the canonical program `A214976.P15271784311769597705` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214976 has offset 1).

The definition of A214976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214976.P15271784311769597705

`lt[A007895(n), A116543(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214976

/-- `lt[A007895(n), A116543(n)]` -/
def P15271784311769597705.Spec : Prop :=
  ∀ n, (P15271784311769597705.a n : ℤ) = A214976 (n + 1)

theorem P15271784311769597705.correct : P15271784311769597705.Spec := by
  intro n
  simp only [A214976, Nat.add_sub_cancel]

end A214976

/-! ## A214976.P13120844403260133359

`lt[A007895(n), dr(A130310(n))]`
-/

namespace A214976.P13120844403260133359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214976.P13120844403260133359

namespace A214976

/-- `lt[A007895(n), dr(A130310(n))]` -/
def P13120844403260133359.Spec : Prop :=
  ∀ n, (P13120844403260133359.a n : ℤ) = A214976 (n + 1)

end A214976

/-! ## A214976.P15535367621704137672

`lt[n, A219641(n)+dr(A130310(n))]`
-/

namespace A214976.P15535367621704137672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + (SequenceMachineLib.digitalRoot (A130310 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214976.P15535367621704137672

namespace A214976

/-- `lt[n, A219641(n)+dr(A130310(n))]` -/
def P15535367621704137672.Spec : Prop :=
  ∀ n, (P15535367621704137672.a n : ℤ) = A214976 (n + 1)

end A214976

/-! ## A214976.P13401540872116342596

`lt[2*(n+1)-A288625(n+1), dr(A130310(n))]`
-/

namespace A214976.P13401540872116342596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214976.P13401540872116342596

namespace A214976

/-- `lt[2*(n+1)-A288625(n+1), dr(A130310(n))]` -/
def P13401540872116342596.Spec : Prop :=
  ∀ n, (P13401540872116342596.a n : ℤ) = A214976 (n + 1)

end A214976

/-! ## A214976.P11651326813202327367

`lt[A000120(n), A220115(n)+A116543(n)]`
-/

namespace A214976.P11651326813202327367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n + A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214976.P11651326813202327367

namespace A214976

/-- `lt[A000120(n), A220115(n)+A116543(n)]` -/
def P11651326813202327367.Spec : Prop :=
  ∀ n, (P11651326813202327367.a n : ℤ) = A214976 (n + 1)

end A214976

/-! ## A214976.P2429048468063240539

`lt[A022342(n+1), A219640(n)+A116543(n)]`
-/

namespace A214976.P2429048468063240539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n + A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214976.P2429048468063240539

namespace A214976

/-- `lt[A022342(n+1), A219640(n)+A116543(n)]` -/
def P2429048468063240539.Spec : Prop :=
  ∀ n, (P2429048468063240539.a n : ℤ) = A214976 (n + 1)

end A214976

/-! ## A214976.P2703929419777368056

`lt[A213911(A004956(n)), A116543(n)]`
-/

namespace A214976.P2703929419777368056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214976.P2703929419777368056

namespace A214976

/-- `lt[A213911(A004956(n)), A116543(n)]` -/
def P2703929419777368056.Spec : Prop :=
  ∀ n, (P2703929419777368056.a n : ℤ) = A214976 (n + 1)

end A214976

/-!
# A214977: Number of terms in Lucas representations of 1,2,...,n.

The programs for A214977, the canonical program `A214977.P6749457083996536388` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214977 has offset 1).

The definition of A214977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214977.P6749457083996536388

`∑[A116543(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214977

/-- `∑[A116543(n+1)]` -/
def P6749457083996536388.Spec : Prop :=
  ∀ n, P6749457083996536388.a n = A214977 (n + 1)

theorem P6749457083996536388.correct : P6749457083996536388.Spec := by
  intro n
  simp only [A214977, Nat.add_sub_cancel]

end A214977

/-! ## A214977.P176618636491677379

`∑[dr(A130310(n+1))]`
-/

namespace A214977.P176618636491677379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130310 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214977.P176618636491677379

namespace A214977

/-- `∑[dr(A130310(n+1))]` -/
def P176618636491677379.Spec : Prop :=
  ∀ n, (P176618636491677379.a n : ℤ) = A214977 (n + 1)

end A214977

/-! ## A214977.P5950811788602812643

`A179180(n+1)-A214979(n+1)`
-/

namespace A214977.P5950811788602812643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 (n + 1) - A214979 (n + 1)

end

end A214977.P5950811788602812643

namespace A214977

/-- `A179180(n+1)-A214979(n+1)` -/
def P5950811788602812643.Spec : Prop :=
  ∀ n, P5950811788602812643.a n = A214977 (n + 1)

theorem P5950811788602812643.correct : P5950811788602812643.Spec := by
  intro n
  simp only [A214977, Nat.add_sub_cancel, A214977.P5950811788602812643.a, A214977.P6749457083996536388.f1, A214977.P6749457083996536388.a, A116543, A116543.P12066350740739985589.f1, A116543.P12066350740739985589.a, A179180, A179180.P10718591488616343433.f1, A179180.P10718591488616343433.a, A214979, A214979.P11630726130086561855.a, A143299, A143299.P15563677956109418683.a, A213911, A213911.P10704289243874186372.a, A284749, A284749.P11495634495222630683.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A286746, A286746.P13513340777740574846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214977

/-! ## A214977.P7433377640477552255

`∑[A007895(n+1)]-A214979(n+1)`
-/

namespace A214977.P7433377640477552255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214979 (n + 1)

end

end A214977.P7433377640477552255

namespace A214977

/-- `∑[A007895(n+1)]-A214979(n+1)` -/
def P7433377640477552255.Spec : Prop :=
  ∀ n, P7433377640477552255.a n = A214977 (n + 1)

end A214977

/-! ## A214977.P1735429123940423009

`∑[A213911(∑[A284749(n+3)])]`
-/

namespace A214977.P1735429123940423009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214977.P1735429123940423009

namespace A214977

/-- `∑[A213911(∑[A284749(n+3)])]` -/
def P1735429123940423009.Spec : Prop :=
  ∀ n, P1735429123940423009.a n = A214977 (n + 1)

end A214977

/-! ## A214977.P13757214704530371419

`∑[A000120(A003714(n+1))]-A214979(n+1)`
-/

namespace A214977.P13757214704530371419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214979 (n + 1)

end

end A214977.P13757214704530371419

namespace A214977

/-- `∑[A000120(A003714(n+1))]-A214979(n+1)` -/
def P13757214704530371419.Spec : Prop :=
  ∀ n, P13757214704530371419.a n = A214977 (n + 1)

end A214977

/-! ## A214977.P13501452420207360741

`∑[ceil(A133770(n+1)/2)]`
-/

namespace A214977.P13501452420207360741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133770 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214977.P13501452420207360741

namespace A214977

/-- `∑[ceil(A133770(n+1)/2)]` -/
def P13501452420207360741.Spec : Prop :=
  ∀ n, P13501452420207360741.a n = A214977 (n + 1)

end A214977

/-!
# A214978: Array T(m,n) = Fibonacci(m*n)/Fibonacci(m), by antidiagonals; transpose of A028412.

The programs for A214978, the canonical program `A214978.P11777979330650438196` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214978 has offset 1).

The definition of A214978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214978.P11777979330650438196

`A000045((col(n)+1)*(row(n)-col(n)+1))/A000045(col(n)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214978

/-- `A000045((col(n)+1)*(row(n)-col(n)+1))/A000045(col(n)+1)` -/
def P11777979330650438196.Spec : Prop :=
  ∀ n, P11777979330650438196.a n = (A214978 (n + 1) : ℚ)

end A214978

/-! ## A214978.P15055894369161094190

`A028412(A061579(n))`
-/

namespace A214978.P15055894369161094190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A061579 n).toNat

end

end A214978.P15055894369161094190

namespace A214978

/-- `A028412(A061579(n))` -/
def P15055894369161094190.Spec : Prop :=
  ∀ n, P15055894369161094190.a n = A214978 (n + 1)

end A214978

/-! ## A214978.P9981058324180139961

`A028412(A114327(n)+n)`
-/

namespace A214978.P9981058324180139961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A114327 n + (n : ℤ)).toNat

end

end A214978.P9981058324180139961

namespace A214978

/-- `A028412(A114327(n)+n)` -/
def P9981058324180139961.Spec : Prop :=
  ∀ n, P9981058324180139961.a n = A214978 (n + 1)

end A214978

/-! ## A214978.P10198892160066796932

`A028412(A038722(n+1)-1)`
-/

namespace A214978.P10198892160066796932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A038722 (n + 1) - 1).toNat

end

end A214978.P10198892160066796932

namespace A214978

/-- `A028412(A038722(n+1)-1)` -/
def P10198892160066796932.Spec : Prop :=
  ∀ n, P10198892160066796932.a n = A214978 (n + 1)

end A214978

/-! ## A214978.P12598328520223489102

`A028412(A038722(n+2))`
-/

namespace A214978.P12598328520223489102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A038722 (n + 2)).toNat

end

end A214978.P12598328520223489102

namespace A214978

/-- `A028412(A038722(n+2))` -/
def P12598328520223489102.Spec : Prop :=
  ∀ n, P12598328520223489102.a n = A214978 (n + 1)

end A214978

/-! ## A214978.P9542269931896878851

`A102310(n+1)/A104763(n+1)`
-/

namespace A214978.P9542269931896878851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102310 (n + 1) : ℚ) / (A104763 (n + 1) : ℚ)

end

end A214978.P9542269931896878851

namespace A214978

/-- `A102310(n+1)/A104763(n+1)` -/
def P9542269931896878851.Spec : Prop :=
  ∀ n, P9542269931896878851.a n = (A214978 (n + 1) : ℚ)

end A214978

/-! ## A214978.P16984836818957827146

`A000045(A003991(n+1))/A104763(n+1)`
-/

namespace A214978.P16984836818957827146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003991 (n + 1)).toNat : ℚ) / (A104763 (n + 1) : ℚ)

end

end A214978.P16984836818957827146

namespace A214978

/-- `A000045(A003991(n+1))/A104763(n+1)` -/
def P16984836818957827146.Spec : Prop :=
  ∀ n, P16984836818957827146.a n = (A214978 (n + 1) : ℚ)

end A214978

/-!
# A214979: A179180 - A214977.

The programs for A214979, the canonical program `A214979.P11630726130086561855` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214979 has offset 1).

The definition of A214979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214979.P11630726130086561855

`A179180(n+1)-A214977(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A214979

/-- `A179180(n+1)-A214977(n+1)` -/
def P11630726130086561855.Spec : Prop :=
  ∀ n, P11630726130086561855.a n = A214979 (n + 1)

theorem P11630726130086561855.correct : P11630726130086561855.Spec := by
  intro n
  simp only [A214979, Nat.add_sub_cancel]

end A214979

/-! ## A214979.P10332001613747166973

`∑[A007895(n+1)]-A214977(n+1)`
-/

namespace A214979.P10332001613747166973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214977 (n + 1)

end

end A214979.P10332001613747166973

namespace A214979

/-- `∑[A007895(n+1)]-A214977(n+1)` -/
def P10332001613747166973.Spec : Prop :=
  ∀ n, P10332001613747166973.a n = A214979 (n + 1)

end A214979

/-! ## A214979.P10797437422907711975

`A007895(n+1)+a(n-1)-A116543(n+1)` with `a(0)=0`
-/

namespace A214979.P10797437422907711975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007895 (n + 1) + (a (n - 1) - A116543 (n + 1))

end

end A214979.P10797437422907711975

namespace A214979

/-- `A007895(n+1)+a(n-1)-A116543(n+1)` -/
def P10797437422907711975.Spec : Prop :=
  ∀ n, P10797437422907711975.a n = A214979 (n + 1)

end A214979

/-! ## A214979.P9452732555942023797

`∑[A000120(A003714(n+1))-A116543(n+1)]`
-/

namespace A214979.P9452732555942023797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 (n + 1)).toNat - A116543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214979.P9452732555942023797

namespace A214979

/-- `∑[A000120(A003714(n+1))-A116543(n+1)]` -/
def P9452732555942023797.Spec : Prop :=
  ∀ n, P9452732555942023797.a n = A214979 (n + 1)

end A214979

/-! ## A214979.P11116237020847540429

`∑[A000120(A003714(n+1))]-A214977(n+1)`
-/

namespace A214979.P11116237020847540429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214977 (n + 1)

end

end A214979.P11116237020847540429

namespace A214979

/-- `∑[A000120(A003714(n+1))]-A214977(n+1)` -/
def P11116237020847540429.Spec : Prop :=
  ∀ n, P11116237020847540429.a n = A214979 (n + 1)

end A214979

/-!
# A214980: Positions of zeros in A214979.

The programs for A214980, there is no canonical definition to state claims against.
-/

/-! ## A214980.P17395231504045117174

`record[(n+1)/A053699(A214979(n+1))]`
-/

namespace A214980.P17395231504045117174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053699 (A214979 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214980.P17395231504045117174

/-! ## A214980.P12262609431557383162

`eq[1, A214977(A214979(n+1)+1)]+1`
-/

namespace A214980.P12262609431557383162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214977 (A214979 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214980.P12262609431557383162

/-! ## A214980.P7702417012953520231

`record[(n+1)/A136833(A214979(n+1)+2)]`
-/

namespace A214980.P7702417012953520231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A136833 (A214979 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214980.P7702417012953520231

/-! ## A214980.P13681659559720458057

`record[(n+1)/A285106(4*A214979(n+1))]`
-/

namespace A214980.P13681659559720458057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A285106 (4 * A214979 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214980.P13681659559720458057

/-! ## A214980.P17173042714967496443

`eq[A214979(A214979(n+2)+1), A214979(n+1)]+1`
-/

namespace A214980.P17173042714967496443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A214979 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214980.P17173042714967496443

/-!
# A214981: Number of terms in the greedy Lucas-and-Fibonacci representations of 1,2,...,n; partial sums of A214973.

The programs for A214981, there is no canonical definition to state claims against.
-/

/-! ## A214981.P5823948774282948320

`∑[A214973(n+1)]`
-/

namespace A214981.P5823948774282948320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214981.P5823948774282948320

/-! ## A214981.P16279856255401477655

`A214973(char[1]+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A214981.P16279856255401477655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214973 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A214981.P16279856255401477655

/-! ## A214981.P6565767295091723755

`∑[dr(A214973(A008619(2*n)))]`
-/

namespace A214981.P6565767295091723755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A214973 (A008619 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214981.P6565767295091723755

/-! ## A214981.P6661400840050208352

`A261102(A261102(a(n-1)))+A214973(n+1)` with `a(0)=1`
-/

namespace A214981.P6661400840050208352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261102 (A261102 (a (n - 1)).toNat).toNat + A214973 (n + 1)

end

end A214981.P6661400840050208352

/-! ## A214981.P4047743209225977973

`∑[A329320(A048679(n+1))]`
-/

namespace A214981.P4047743209225977973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A048679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214981.P4047743209225977973

/-!
# A214982: a(n) = (Fibonacci(5n)/Fibonacci(n) - 5)/50.

The programs for A214982, the canonical program `A214982.P2519318134242998290` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214982 has offset 1).

The definition of A214982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214982.P2519318134242998290

`5*a(n-1)+15*a(n-2)-15*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=45, a(4)=300`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214982

/-- `5*a(n-1)+15*a(n-2)-15*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2519318134242998290.Spec : Prop :=
  ∀ n, P2519318134242998290.a n = A214982 (n + 1)

theorem P2519318134242998290.correct : P2519318134242998290.Spec := by
  intro n
  simp only [A214982, Nat.add_sub_cancel]

end A214982

/-! ## A214982.P3560839087499681837

`1/2*A000045(n+1)²*(A000045(n+1)²+(-1)^(n+1))`
-/

namespace A214982.P3560839087499681837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000045 (n + 1) ^ 2 : ℚ) * (A000045 (n + 1) ^ 2 + (-1) ^ (n + 1) : ℚ)

end

end A214982.P3560839087499681837

namespace A214982

/-- `1/2*A000045(n+1)²*(A000045(n+1)²+(-1)^(n+1))` -/
def P3560839087499681837.Spec : Prop :=
  ∀ n, P3560839087499681837.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P15008170643898743677

`(A000045(5*(n+1))/A000045(n+1)-5)/50`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214982.P15008170643898743677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (5 * (n + 1)) : ℚ) / (A000045 (n + 1) : ℚ) - 5) / 50

end

end A214982.P15008170643898743677

namespace A214982

/-- `(A000045(5*(n+1))/A000045(n+1)-5)/50` -/
def P15008170643898743677.Spec : Prop :=
  ∀ n, P15008170643898743677.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P4582101448772659722

`ogf((x+x^2)/(1-5x-15x^2+15x^3+5x^4-x^5))`
-/

namespace A214982.P4582101448772659722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, -15, 15, 5, -1] n

end

end A214982.P4582101448772659722

namespace A214982

/-- `ogf((x+x^2)/(1-5x-15x^2+15x^3+5x^4-x^5))` -/
def P4582101448772659722.Spec : Prop :=
  ∀ n, P4582101448772659722.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P3179909767634985219

`∑[∑[A085695(n)]]`
-/

namespace A214982.P3179909767634985219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214982.P3179909767634985219

namespace A214982

/-- `∑[∑[A085695(n)]]` -/
def P3179909767634985219.Spec : Prop :=
  ∀ n, P3179909767634985219.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P10265368508486839887

`∑[∑[A000045(n)*A001076(n)]]`
-/

namespace A214982.P10265368508486839887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214982.P10265368508486839887

namespace A214982

/-- `∑[∑[A000045(n)*A001076(n)]]` -/
def P10265368508486839887.Spec : Prop :=
  ∀ n, P10265368508486839887.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P5363235280014119509

`∑[A066258(n)]*∑[A212804(n)]`
-/

namespace A214982.P5363235280014119509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A214982.P5363235280014119509

namespace A214982

/-- `∑[A066258(n)]*∑[A212804(n)]` -/
def P5363235280014119509.Spec : Prop :=
  ∀ n, P5363235280014119509.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P7934102951351587293

`(A064831(n)+A064831(n)²)/2`
-/

namespace A214982.P7934102951351587293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064831 n + A064831 n ^ 2 : ℚ) / 2

end

end A214982.P7934102951351587293

namespace A214982

/-- `(A064831(n)+A064831(n)²)/2` -/
def P7934102951351587293.Spec : Prop :=
  ∀ n, P7934102951351587293.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P6798769874788303219

`A001654(n+1)/2*A001654(n)`
-/

namespace A214982.P6798769874788303219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 (n + 1) : ℚ) / 2 * (A001654 n : ℚ)

end

end A214982.P6798769874788303219

namespace A214982

/-- `A001654(n+1)/2*A001654(n)` -/
def P6798769874788303219.Spec : Prop :=
  ∀ n, P6798769874788303219.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P7007345788884230305

`A066258(n+1)/2*A212804(n+1)`
-/

namespace A214982.P7007345788884230305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066258 (n + 1) : ℚ) / 2 * (A212804 (n + 1) : ℚ)

end

end A214982.P7007345788884230305

namespace A214982

/-- `A066258(n+1)/2*A212804(n+1)` -/
def P7007345788884230305.Spec : Prop :=
  ∀ n, P7007345788884230305.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P4480493191898456872

`A070550(2*n)*A074677(2*n)/2`
-/

namespace A214982.P4480493191898456872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070550 (2 * n) * A074677 (2 * n) : ℚ) / 2

end

end A214982.P4480493191898456872

namespace A214982

/-- `A070550(2*n)*A074677(2*n)/2` -/
def P4480493191898456872.Spec : Prop :=
  ∀ n, P4480493191898456872.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P15652763835432409832

`∑[∑[A000045(3*n)/2*A000045(n)]]`
-/

namespace A214982.P15652763835432409832
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n) : ℚ) / 2 * (A000045 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214982.P15652763835432409832

namespace A214982

/-- `∑[∑[A000045(3*n)/2*A000045(n)]]` -/
def P15652763835432409832.Spec : Prop :=
  ∀ n, P15652763835432409832.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P11341128543464524428

`A006498(2*n+1)*A074677(2*n)/2`
-/

namespace A214982.P11341128543464524428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006498 (2 * n + 1) * A074677 (2 * n) : ℚ) / 2

end

end A214982.P11341128543464524428

namespace A214982

/-- `A006498(2*n+1)*A074677(2*n)/2` -/
def P11341128543464524428.Spec : Prop :=
  ∀ n, P11341128543464524428.a n = (A214982 (n + 1) : ℚ)

end A214982

/-! ## A214982.P5909320287548532879

`(A001655(n)-A066258(n+1))*A000045(n+1)`
-/

namespace A214982.P5909320287548532879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001655 n - A066258 (n + 1)) * A000045 (n + 1)

end

end A214982.P5909320287548532879

namespace A214982

/-- `(A001655(n)-A066258(n+1))*A000045(n+1)` -/
def P5909320287548532879.Spec : Prop :=
  ∀ n, P5909320287548532879.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P16351284515501156328

`(A066259(n+1)-A001655(n))*A000045(n+1)`
-/

namespace A214982.P16351284515501156328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066259 (n + 1) - A001655 n) * A000045 (n + 1)

end

end A214982.P16351284515501156328

namespace A214982

/-- `(A066259(n+1)-A001655(n))*A000045(n+1)` -/
def P16351284515501156328.Spec : Prop :=
  ∀ n, P16351284515501156328.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P8324784066049039015

`(A099014(n+1)-A001076(n+1))*A000045(n+1)`
-/

namespace A214982.P8324784066049039015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099014 (n + 1) - A001076 (n + 1)) * A000045 (n + 1)

end

end A214982.P8324784066049039015

namespace A214982

/-- `(A099014(n+1)-A001076(n+1))*A000045(n+1)` -/
def P8324784066049039015.Spec : Prop :=
  ∀ n, P8324784066049039015.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P8970124129085576181

`C(A166516(n+1), 2)`
-/

namespace A214982.P8970124129085576181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A166516 (n + 1)).toNat 2

end

end A214982.P8970124129085576181

namespace A214982

/-- `C(A166516(n+1), 2)` -/
def P8970124129085576181.Spec : Prop :=
  ∀ n, (P8970124129085576181.a n : ℤ) = A214982 (n + 1)

end A214982

/-! ## A214982.P15562940679877896090

`floor(A088545(n+1)/10)`
-/

namespace A214982.P15562940679877896090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088545 (n + 1) : ℚ) / 10⌋

end

end A214982.P15562940679877896090

namespace A214982

/-- `floor(A088545(n+1)/10)` -/
def P15562940679877896090.Spec : Prop :=
  ∀ n, P15562940679877896090.a n = A214982 (n + 1)

end A214982

/-! ## A214982.P13869083054386541466

`C(∑[A001654(n)]+1, 2)`
-/

namespace A214982.P13869083054386541466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A214982.P13869083054386541466

namespace A214982

/-- `C(∑[A001654(n)]+1, 2)` -/
def P13869083054386541466.Spec : Prop :=
  ∀ n, (P13869083054386541466.a n : ℤ) = A214982 (n + 1)

end A214982

/-! ## A214982.P12386982761619992669

`C(∑[∑[A245306(n)-1]]+1, 2)`
-/

namespace A214982.P12386982761619992669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A214982.P12386982761619992669

namespace A214982

/-- `C(∑[∑[A245306(n)-1]]+1, 2)` -/
def P12386982761619992669.Spec : Prop :=
  ∀ n, (P12386982761619992669.a n : ℤ) = A214982 (n + 1)

end A214982

/-!
# A214983: Antidiagonal sums of the array A028412.

The programs for A214983, there is no canonical definition to state claims against.
-/

/-! ## A214983.P952391397717868013

`A053604(n)+A034888(A076730(n+1))`
-/

namespace A214983.P952391397717868013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 n + A034888 (A076730 (n + 1)).toNat

end

end A214983.P952391397717868013

/-! ## A214983.P17128581253789049680

`A078705(∏[abs(1-3*n)])+n`
-/

namespace A214983.P17128581253789049680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A214983.P17128581253789049680

/-!
# A214984: Array: T(m,n) = (F(m) + F(2*m) + ... + F(n*m))/F(m), by antidiagonals, where F = A000045 (Fibonacci numbers).

The programs for A214984, there is no canonical definition to state claims against.
-/

/-! ## A214984.P18426292765258376632

`A214985(A038722(n+1))`
-/

namespace A214984.P18426292765258376632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214985 (A038722 (n + 1)).toNat

end

end A214984.P18426292765258376632

/-! ## A214984.P3845648375614530171

`A214985(A061579(n)+1)`
-/

namespace A214984.P3845648375614530171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214985 (A061579 n + 1).toNat

end

end A214984.P3845648375614530171

/-! ## A214984.P1509805798254823717

`A214985(A114327(n)+1+n)`
-/

namespace A214984.P1509805798254823717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214985 (A114327 n + 1 + (n : ℤ)).toNat

end

end A214984.P1509805798254823717

/-! ## A214984.P7549593013078541089

`A214985(A093995(n+1)-n)`
-/

namespace A214984.P7549593013078541089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214985 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A214984.P7549593013078541089

/-! ## A214984.P17640295074575201852

`A214985(A008619(2*A061579(n)))`
-/

namespace A214984.P17640295074575201852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214985 (A008619 (2 * A061579 n).toNat).toNat

end

end A214984.P17640295074575201852

/-!
# A214985: Array: T(m,n) = (F(n) + F(2*n) + ... + F(n*m))/F(n), by antidiagonals; transpose of A214984.

The programs for A214985, there is no canonical definition to state claims against.
-/

/-! ## A214985.P9410695055448973695

`A214984(A038722(n+1))`
-/

namespace A214985.P9410695055448973695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214984 (A038722 (n + 1)).toNat

end

end A214985.P9410695055448973695

/-! ## A214985.P14581902685883942053

`A214984(A061579(n)+1)`
-/

namespace A214985.P14581902685883942053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214984 (A061579 n + 1).toNat

end

end A214985.P14581902685883942053

/-! ## A214985.P14014632925314179498

`A214984(A114327(n)+1+n)`
-/

namespace A214985.P14014632925314179498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214984 (A114327 n + 1 + (n : ℤ)).toNat

end

end A214985.P14014632925314179498

/-! ## A214985.P12147165854367725842

`A214984(A093995(n+1)-n)`
-/

namespace A214985.P12147165854367725842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214984 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A214985.P12147165854367725842

/-! ## A214985.P11681379183966614216

`A214984(A008619(2*A061579(n)))`
-/

namespace A214985.P11681379183966614216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214984 (A008619 (2 * A061579 n).toNat).toNat

end

end A214985.P11681379183966614216

/-!
# A214986: Power ceiling array for the golden ratio, by antidiagonals.

The programs for A214986, there is no canonical definition to state claims against.
-/

/-! ## A214986.P12128058865918772133

`A113609(A220738(n+1))`
-/

namespace A214986.P12128058865918772133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113609 (A220738 (n + 1)).toNat

end

end A214986.P12128058865918772133

/-! ## A214986.P3417707485532454124

`A225633(A124469(n)+1)`
-/

namespace A214986.P3417707485532454124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A124469 n + 1).toNat

end

end A214986.P3417707485532454124

/-! ## A214986.P17142978870643559705

`A196383(A355350(n)+1)`
-/

namespace A214986.P17142978870643559705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196383 (A355350 n + 1).toNat

end

end A214986.P17142978870643559705

/-! ## A214986.P6707498165191271380

`A034463(2*A152924(n))`
-/

namespace A214986.P6707498165191271380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (2 * A152924 n).toNat

end

end A214986.P6707498165191271380

/-! ## A214986.P3421978963168392472

`or(A210764(n), A353463(A022177(n)+1))`
-/

namespace A214986.P3421978963168392472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210764 n) (A353463 (A022177 n + 1).toNat)

end

end A214986.P3421978963168392472

/-!
# A214987: Power round array for the golden ratio, by antidiagonals.

The programs for A214987, there is no canonical definition to state claims against.
-/

/-! ## A214987.P380772047980926460

`A328208(A258708(n+1))%A270831(2*n+5)`
-/

namespace A214987.P380772047980926460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328208 (A258708 (n + 1)).toNat) (A270831 (2 * n + 5))

end

end A214987.P380772047980926460

/-! ## A214987.P3113878900834455734

`A358378(A258708(n+1))%A318929(3*n+5)`
-/

namespace A214987.P3113878900834455734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358378 (A258708 (n + 1)).toNat) (A318929 (3 * n + 5))

end

end A214987.P3113878900834455734

/-! ## A214987.P13136165789089187475

`A079383(A026736(n))`
-/

namespace A214987.P13136165789089187475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079383 (A026736 n).toNat

end

end A214987.P13136165789089187475

/-! ## A214987.P9586624576859467169

`A128330(A308359(n+1))`
-/

namespace A214987.P9586624576859467169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128330 (A308359 (n + 1)).toNat

end

end A214987.P9586624576859467169

/-! ## A214987.P8689470126997587949

`A131624(A322266(n+1))`
-/

namespace A214987.P8689470126997587949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131624 (A322266 (n + 1)).toNat

end

end A214987.P8689470126997587949

/-!
# A214988: Beatty sequence for sqrt(r), where r = (1+sqrt(5))/2 = golden ratio; complement of A214989.

The programs for A214988, the canonical program `A214988.P883652597885103672` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214988 has offset 1).

The definition of A214988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214988.P883652597885103672

`floor((n+1)*sqrt(ϕ))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214988

/-- `floor((n+1)*sqrt(ϕ))` -/
def P883652597885103672.Spec : Prop :=
  ∀ n, P883652597885103672.a n = A214988 (n + 1)

theorem P883652597885103672.correct : P883652597885103672.Spec := by
  intro n
  simp only [A214988, Nat.add_sub_cancel]

end A214988

/-! ## A214988.P647439492070683416

`ceil(sqrt(n*(sqrt(ϕ)*a(n-1)+ϕ)))` with `a(0)=1`
-/

namespace A214988.P647439492070683416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt ((n : ℝ) * (Real.sqrt Real.goldenRatio * (a (n - 1) : ℝ) + Real.goldenRatio))⌉

end

end A214988.P647439492070683416

namespace A214988

/-- `ceil(sqrt(n*(sqrt(ϕ)*a(n-1)+ϕ)))` -/
def P647439492070683416.Spec : Prop :=
  ∀ n, P647439492070683416.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P4067420479134532136

`floor(sqrt(A293400(n+1)))%A293401(n+1)`
-/

namespace A214988.P4067420479134532136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A293400 (n + 1))) (A293401 (n + 1))

end

end A214988.P4067420479134532136

namespace A214988

/-- `floor(sqrt(A293400(n+1)))%A293401(n+1)` -/
def P4067420479134532136.Spec : Prop :=
  ∀ n, P4067420479134532136.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P16620572352388666614

`record[floor(root(ϕ, 2)*A057979(n))]`
-/

namespace A214988.P16620572352388666614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (1 / (2 : ℝ)) * (A057979 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214988.P16620572352388666614

namespace A214988

/-- `record[floor(root(ϕ, 2)*A057979(n))]` -/
def P16620572352388666614.Spec : Prop :=
  ∀ n, P16620572352388666614.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P7348824445366367075

`A003056(A004956(∑[n+1])-A003056(n))`
-/

namespace A214988.P7348824445366367075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004956 (∑ j ∈ Finset.range (n + 1), f1 j) - A003056 n).toNat

end

end A214988.P7348824445366367075

namespace A214988

/-- `A003056(A004956(∑[n+1])-A003056(n))` -/
def P7348824445366367075.Spec : Prop :=
  ∀ n, P7348824445366367075.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P8493314049250388446

`A003056(A026351(∑[n+1])-A003056(n))`
-/

namespace A214988.P8493314049250388446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026351 (∑ j ∈ Finset.range (n + 1), f1 j) - A003056 n).toNat

end

end A214988.P8493314049250388446

namespace A214988

/-- `A003056(A026351(∑[n+1])-A003056(n))` -/
def P8493314049250388446.Spec : Prop :=
  ∀ n, P8493314049250388446.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P8084198077197514542

`A003056(A214990(∑[n+1])-A003056(n))`
-/

namespace A214988.P8084198077197514542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A214990 (∑ j ∈ Finset.range (n + 1), f1 j) - A003056 n).toNat

end

end A214988.P8084198077197514542

namespace A214988

/-- `A003056(A214990(∑[n+1])-A003056(n))` -/
def P8084198077197514542.Spec : Prop :=
  ∀ n, P8084198077197514542.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P5921856795846744484

`A003056(∑[A000201(n+2)])-1`
-/

namespace A214988.P5921856795846744484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A214988.P5921856795846744484

namespace A214988

/-- `A003056(∑[A000201(n+2)])-1` -/
def P5921856795846744484.Spec : Prop :=
  ∀ n, P5921856795846744484.a n = A214988 (n + 1)

end A214988

/-! ## A214988.P3776874760000713859

`A003056(∑[A010059((n+1)²)+A000201(n+1)])`
-/

namespace A214988.P3776874760000713859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 ((n + 1) ^ 2) + A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214988.P3776874760000713859

namespace A214988

/-- `A003056(∑[A010059((n+1)²)+A000201(n+1)])` -/
def P3776874760000713859.Spec : Prop :=
  ∀ n, P3776874760000713859.a n = A214988 (n + 1)

end A214988

/-!
# A214989: Beatty sequence [sqrt(phi)/(sqrt(phi)-1) * n], where phi = (1 + sqrt(5))/2 = golden ratio; complement of A214988.

The programs for A214989, the canonical program `A214989.P5425402972135891974` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214989 has offset 1).

The definition of A214989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214989.P5425402972135891974

`comp[floor(n*sqrt(ϕ))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214989

/-- `comp[floor(n*sqrt(ϕ))]` -/
def P5425402972135891974.Spec : Prop :=
  ∀ n, (P5425402972135891974.a n : ℤ) = A214989 (n + 1)

theorem P5425402972135891974.correct : P5425402972135891974.Spec := by
  intro n
  simp only [A214989, Nat.add_sub_cancel]

end A214989

/-! ## A214989.P11842157117571461032

`ceil((a(n-1)+5)/sqrt(ϕ)+n)` with `a(0)=4`
-/

namespace A214989.P11842157117571461032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(a (n - 1) + 5 : ℝ) / Real.sqrt Real.goldenRatio + (n : ℝ)⌉

end

end A214989.P11842157117571461032

namespace A214989

/-- `ceil((a(n-1)+5)/sqrt(ϕ)+n)` -/
def P11842157117571461032.Spec : Prop :=
  ∀ n, P11842157117571461032.a n = A214989 (n + 1)

end A214989

/-! ## A214989.P8994810325554863307

`A038123(n+1)+A014306(A185284(n))`
-/

namespace A214989.P8994810325554863307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038123 (n + 1) + A014306 (A185284 n).toNat

end

end A214989.P8994810325554863307

namespace A214989

/-- `A038123(n+1)+A014306(A185284(n))` -/
def P8994810325554863307.Spec : Prop :=
  ∀ n, P8994810325554863307.a n = A214989 (n + 1)

end A214989

/-! ## A214989.P1610311932966308086

`A038123(n+1)%A002764(n)`
-/

namespace A214989.P1610311932966308086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038123 (n + 1)) (A002764 n)

end

end A214989.P1610311932966308086

namespace A214989

/-- `A038123(n+1)%A002764(n)` -/
def P1610311932966308086.Spec : Prop :=
  ∀ n, P1610311932966308086.a n = A214989 (n + 1)

end A214989

/-! ## A214989.P27946219068091247

`A038123(A090110(n+1))`
-/

namespace A214989.P27946219068091247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038123 (A090110 (n + 1)).toNat

end

end A214989.P27946219068091247

namespace A214989

/-- `A038123(A090110(n+1))` -/
def P27946219068091247.Spec : Prop :=
  ∀ n, P27946219068091247.a n = A214989 (n + 1)

end A214989

/-!
# A214990: Second nearest integer to n*r, where r = (1+ sqrt(5))/2, the golden ratio.

The programs for A214990, the canonical program `A214990.P627774021900434845` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214990 has offset 1).

The definition of A214990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214990.P15640797375847470835

`floor(ϕ*(n+1))+and(1, floor(∑[2*(n-ϕ)]))`
-/

namespace A214990.P15640797375847470835
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) - Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + Int.land 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A214990.P15640797375847470835

namespace A214990

/-- `floor(ϕ*(n+1))+and(1, floor(∑[2*(n-ϕ)]))` -/
def P15640797375847470835.Spec : Prop :=
  ∀ n, P15640797375847470835.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P1141162663078302583

`A214991(n+1)-(n+1)`
-/

namespace A214990.P1141162663078302583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214991 (n + 1) - (n + 1 : ℤ)

end

end A214990.P1141162663078302583

namespace A214990

/-- `A214991(n+1)-(n+1)` -/
def P1141162663078302583.Spec : Prop :=
  ∀ n, P1141162663078302583.a n = A214990 (n + 1)

theorem P1141162663078302583.correct : P1141162663078302583.Spec := by
  intro n
  simp only [A214990, Nat.add_sub_cancel, A214990.P1141162663078302583.a, A214990.P627774021900434845.a, A005206, A005206.P7910201692454662432.a, A007064, A007064.P15353569760162023814.a, A214991, A214991.P16550276971825713449.a, A001966, A001966.P7022639990780230216.a, A001965, A001965.P8161936400494253645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214990

/-! ## A214990.P627774021900434845

`A007064(A005206(n)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214990

/-- `A007064(A005206(n)+1)` -/
def P627774021900434845.Spec : Prop :=
  ∀ n, P627774021900434845.a n = A214990 (n + 1)

theorem P627774021900434845.correct : P627774021900434845.Spec := by
  intro n
  simp only [A214990, Nat.add_sub_cancel]

end A214990

/-! ## A214990.P15469279864493540314

`A007064(A019446(n+1))`
-/

namespace A214990.P15469279864493540314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A019446 (n + 1)).toNat

end

end A214990.P15469279864493540314

namespace A214990

/-- `A007064(A019446(n+1))` -/
def P15469279864493540314.Spec : Prop :=
  ∀ n, P15469279864493540314.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P11218329698346171725

`A007064(A060143(n+1)+1)`
-/

namespace A214990.P11218329698346171725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A060143 (n + 1) + 1).toNat

end

end A214990.P11218329698346171725

namespace A214990

/-- `A007064(A060143(n+1)+1)` -/
def P11218329698346171725.Spec : Prop :=
  ∀ n, P11218329698346171725.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P3021611045312997918

`A078796(n+1)+A005206(n)`
-/

namespace A214990.P3021611045312997918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1) + A005206 n

end

end A214990.P3021611045312997918

namespace A214990

/-- `A078796(n+1)+A005206(n)` -/
def P3021611045312997918.Spec : Prop :=
  ∀ n, P3021611045312997918.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P16837211908364016377

`A007064(A000201(n+1)-n)`
-/

namespace A214990.P16837211908364016377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A000201 (n + 1) - (n : ℤ)).toNat

end

end A214990.P16837211908364016377

namespace A214990

/-- `A007064(A000201(n+1)-n)` -/
def P16837211908364016377.Spec : Prop :=
  ∀ n, P16837211908364016377.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P5709714681034401738

`A089809(n+1)+A000201(n+1)`
-/

namespace A214990.P5709714681034401738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) + A000201 (n + 1)

end

end A214990.P5709714681034401738

namespace A214990

/-- `A089809(n+1)+A000201(n+1)` -/
def P5709714681034401738.Spec : Prop :=
  ∀ n, P5709714681034401738.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P11699414059333775450

`A007064(A004956(n+1)-(n+1))`
-/

namespace A214990.P11699414059333775450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A004956 (n + 1) - (n + 1 : ℤ)).toNat

end

end A214990.P11699414059333775450

namespace A214990

/-- `A007064(A004956(n+1)-(n+1))` -/
def P11699414059333775450.Spec : Prop :=
  ∀ n, P11699414059333775450.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P4163333452108755093

`A007064(A022342(n+1)+1-n)`
-/

namespace A214990.P4163333452108755093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A022342 (n + 1) + (1 - (n : ℤ))).toNat

end

end A214990.P4163333452108755093

namespace A214990

/-- `A007064(A022342(n+1)+1-n)` -/
def P4163333452108755093.Spec : Prop :=
  ∀ n, P4163333452108755093.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P11165378507787117139

`A003623(n+1)-A189379(n+1)`
-/

namespace A214990.P11165378507787117139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - A189379 (n + 1)

end

end A214990.P11165378507787117139

namespace A214990

/-- `A003623(n+1)-A189379(n+1)` -/
def P11165378507787117139.Spec : Prop :=
  ∀ n, P11165378507787117139.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P8185397504814211218

`A283233(n+1)-A184656(n+1)`
-/

namespace A214990.P8185397504814211218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) - A184656 (n + 1)

end

end A214990.P8185397504814211218

namespace A214990

/-- `A283233(n+1)-A184656(n+1)` -/
def P8185397504814211218.Spec : Prop :=
  ∀ n, P8185397504814211218.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P8881269974710293528

`A007064(A003622(n+1)-2*n)`
-/

namespace A214990.P8881269974710293528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A003622 (n + 1) - (2 * n : ℤ)).toNat

end

end A214990.P8881269974710293528

namespace A214990

/-- `A007064(A003622(n+1)-2*n)` -/
def P8881269974710293528.Spec : Prop :=
  ∀ n, P8881269974710293528.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P10359492179492151110

`A007064(A003622(n+1)-n-n)`
-/

namespace A214990.P10359492179492151110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A003622 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A214990.P10359492179492151110

namespace A214990

/-- `A007064(A003622(n+1)-n-n)` -/
def P10359492179492151110.Spec : Prop :=
  ∀ n, P10359492179492151110.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P5760687375352792799

`A035336(n+1)+1-A189379(n+1)`
-/

namespace A214990.P5760687375352792799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + (1 - A189379 (n + 1))

end

end A214990.P5760687375352792799

namespace A214990

/-- `A035336(n+1)+1-A189379(n+1)` -/
def P5760687375352792799.Spec : Prop :=
  ∀ n, P5760687375352792799.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P310704709178153640

`A089910(n+1)-(A189379(n+1)+1)`
-/

namespace A214990.P310704709178153640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - (A189379 (n + 1) + 1)

end

end A214990.P310704709178153640

namespace A214990

/-- `A089910(n+1)-(A189379(n+1)+1)` -/
def P310704709178153640.Spec : Prop :=
  ∀ n, P310704709178153640.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P14545403705074063515

`A007064(A001950(n+1)-(2*n+1))`
-/

namespace A214990.P14545403705074063515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A001950 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A214990.P14545403705074063515

namespace A214990

/-- `A007064(A001950(n+1)-(2*n+1))` -/
def P14545403705074063515.Spec : Prop :=
  ∀ n, P14545403705074063515.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P9888937498415270813

`2*A000201(n+1)-A184656(n+1)`
-/

namespace A214990.P9888937498415270813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (n + 1) - A184656 (n + 1)

end

end A214990.P9888937498415270813

namespace A214990

/-- `2*A000201(n+1)-A184656(n+1)` -/
def P9888937498415270813.Spec : Prop :=
  ∀ n, P9888937498415270813.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P14728646205036510323

`A003622(n+1)+A089809(n+1)-n`
-/

namespace A214990.P14728646205036510323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A089809 (n + 1) - (n : ℤ))

end

end A214990.P14728646205036510323

namespace A214990

/-- `A003622(n+1)+A089809(n+1)-n` -/
def P14728646205036510323.Spec : Prop :=
  ∀ n, P14728646205036510323.a n = A214990 (n + 1)

end A214990

/-! ## A214990.P17060965163410376226

`A026351(n+1)-A191329(2*(n+1))/2`
-/

namespace A214990.P17060965163410376226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026351 (n + 1) : ℚ) - (A191329 (2 * (n + 1)) : ℚ) / 2

end

end A214990.P17060965163410376226

namespace A214990

/-- `A026351(n+1)-A191329(2*(n+1))/2` -/
def P17060965163410376226.Spec : Prop :=
  ∀ n, P17060965163410376226.a n = (A214990 (n + 1) : ℚ)

end A214990

/-!
# A214991: Second nearest integer to n*(1+golden ratio).

The programs for A214991, the canonical program `A214991.P16550276971825713449` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214991 has offset 1).

The definition of A214991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214990, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214991.P16550276971825713449

`n+1+A214990(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A214991

/-- `n+1+A214990(n+1)` -/
def P16550276971825713449.Spec : Prop :=
  ∀ n, P16550276971825713449.a n = A214991 (n + 1)

theorem P16550276971825713449.correct : P16550276971825713449.Spec := by
  intro n
  simp only [A214991, Nat.add_sub_cancel]

end A214991

/-! ## A214991.P9578722185014012849

`floor(ϕ*(n+1))+and(1, floor(∑[2*(n-ϕ)]))+1+n`
-/

namespace A214991.P9578722185014012849
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) - Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + Int.land 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1 + (n : ℤ)

end

end A214991.P9578722185014012849

namespace A214991

/-- `floor(ϕ*(n+1))+and(1, floor(∑[2*(n-ϕ)]))+1+n` -/
def P9578722185014012849.Spec : Prop :=
  ∀ n, P9578722185014012849.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P10666048076240213556

`A007064(A019446(n+1))+1+n`
-/

namespace A214991.P10666048076240213556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A019446 (n + 1)).toNat + 1 + (n : ℤ)

end

end A214991.P10666048076240213556

namespace A214991

/-- `A007064(A019446(n+1))+1+n` -/
def P10666048076240213556.Spec : Prop :=
  ∀ n, P10666048076240213556.a n = A214991 (n + 1)

theorem P10666048076240213556.correct : P10666048076240213556.Spec := by
  intro n
  simp only [A214991, Nat.add_sub_cancel, A214991.P10666048076240213556.a, A214991.P16550276971825713449.a, A007064, A007064.P15353569760162023814.a, A019446, A019446.P15799228485202285486.a, A214990, A214990.P627774021900434845.a, A001966, A001966.P7022639990780230216.a, A005206, A005206.P7910201692454662432.a, A001965, A001965.P8161936400494253645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214991

/-! ## A214991.P7605756278528552968

`A078796(n+1)+A000201(n+1)`
-/

namespace A214991.P7605756278528552968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1) + A000201 (n + 1)

end

end A214991.P7605756278528552968

namespace A214991

/-- `A078796(n+1)+A000201(n+1)` -/
def P7605756278528552968.Spec : Prop :=
  ∀ n, P7605756278528552968.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P9850489871436126507

`A089809(n+1)+A001950(n+1)`
-/

namespace A214991.P9850489871436126507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) + A001950 (n + 1)

end

end A214991.P9850489871436126507

namespace A214991

/-- `A089809(n+1)+A001950(n+1)` -/
def P9850489871436126507.Spec : Prop :=
  ∀ n, P9850489871436126507.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P1246655823656027420

`A003623(n+1)-A184656(n+1)`
-/

namespace A214991.P1246655823656027420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - A184656 (n + 1)

end

end A214991.P1246655823656027420

namespace A214991

/-- `A003623(n+1)-A184656(n+1)` -/
def P1246655823656027420.Spec : Prop :=
  ∀ n, P1246655823656027420.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P10195503535742904659

`A283234(n+1)-A189379(n+1)`
-/

namespace A214991.P10195503535742904659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 1) - A189379 (n + 1)

end

end A214991.P10195503535742904659

namespace A214991

/-- `A283234(n+1)-A189379(n+1)` -/
def P10195503535742904659.Spec : Prop :=
  ∀ n, P10195503535742904659.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P5220419174530824130

`A003622(n+1)+A089809(n+1)+1`
-/

namespace A214991.P5220419174530824130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A089809 (n + 1) + 1)

end

end A214991.P5220419174530824130

namespace A214991

/-- `A003622(n+1)+A089809(n+1)+1` -/
def P5220419174530824130.Spec : Prop :=
  ∀ n, P5220419174530824130.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P695376099102597098

`A189379(n+1)+2*A089809(n+1)`
-/

namespace A214991.P695376099102597098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) + 2 * A089809 (n + 1)

end

end A214991.P695376099102597098

namespace A214991

/-- `A189379(n+1)+2*A089809(n+1)` -/
def P695376099102597098.Spec : Prop :=
  ∀ n, P695376099102597098.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P13381095071267106948

`2*A001950(n+1)-A189379(n+1)`
-/

namespace A214991.P13381095071267106948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001950 (n + 1) - A189379 (n + 1)

end

end A214991.P13381095071267106948

namespace A214991

/-- `2*A001950(n+1)-A189379(n+1)` -/
def P13381095071267106948.Spec : Prop :=
  ∀ n, P13381095071267106948.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P17379378657543849435

`A089910(n+1)-A189379(n+1)+n`
-/

namespace A214991.P17379378657543849435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - A189379 (n + 1) + (n : ℤ)

end

end A214991.P17379378657543849435

namespace A214991

/-- `A089910(n+1)-A189379(n+1)+n` -/
def P17379378657543849435.Spec : Prop :=
  ∀ n, P17379378657543849435.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P6867320358408200174

`A001950(n+1)+A026351(n+1)-A007067(n+1)`
-/

namespace A214991.P6867320358408200174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A026351 (n + 1) - A007067 (n + 1))

end

end A214991.P6867320358408200174

namespace A214991

/-- `A001950(n+1)+A026351(n+1)-A007067(n+1)` -/
def P6867320358408200174.Spec : Prop :=
  ∀ n, P6867320358408200174.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P16575784675085648745

`A026352(n+1)-A078588(n+1)`
-/

namespace A214991.P16575784675085648745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (n + 1) - A078588 (n + 1)

end

end A214991.P16575784675085648745

namespace A214991

/-- `A026352(n+1)-A078588(n+1)` -/
def P16575784675085648745.Spec : Prop :=
  ∀ n, P16575784675085648745.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P11827035617471736970

`A188434(n+2)-A004937(n+1)+n`
-/

namespace A214991.P11827035617471736970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 2) - A004937 (n + 1) + (n : ℤ)

end

end A214991.P11827035617471736970

namespace A214991

/-- `A188434(n+2)-A004937(n+1)+n` -/
def P11827035617471736970.Spec : Prop :=
  ∀ n, P11827035617471736970.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P17830604778126532517

`A001950(n+1)+A089910(n+1)-A004976(n+1)`
-/

namespace A214991.P17830604778126532517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A089910 (n + 1) - A004976 (n + 1))

end

end A214991.P17830604778126532517

namespace A214991

/-- `A001950(n+1)+A089910(n+1)-A004976(n+1)` -/
def P17830604778126532517.Spec : Prop :=
  ∀ n, P17830604778126532517.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P10566159680903945267

`A089910(n+1)-(A078588(n+1)+A000201(n+1))`
-/

namespace A214991.P10566159680903945267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - (A078588 (n + 1) + A000201 (n + 1))

end

end A214991.P10566159680903945267

namespace A214991

/-- `A089910(n+1)-(A078588(n+1)+A000201(n+1))` -/
def P10566159680903945267.Spec : Prop :=
  ∀ n, P10566159680903945267.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P14266841505430691621

`A339765(n+1)+A026356(n+2)-A300763(n+1)`
-/

namespace A214991.P14266841505430691621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339765 (n + 1) + (A026356 (n + 2) - A300763 (n + 1))

end

end A214991.P14266841505430691621

namespace A214991

/-- `A339765(n+1)+A026356(n+2)-A300763(n+1)` -/
def P14266841505430691621.Spec : Prop :=
  ∀ n, P14266841505430691621.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P16024670623299560774

`A035337(n)-A188261(A005206(2*n+1))`
-/

namespace A214991.P16024670623299560774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n - A188261 (A005206 (2 * n + 1)).toNat

end

end A214991.P16024670623299560774

namespace A214991

/-- `A035337(n)-A188261(A005206(2*n+1))` -/
def P16024670623299560774.Spec : Prop :=
  ∀ n, P16024670623299560774.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P15453917706344539056

`A382116(A000201(n+1))+1`
-/

namespace A214991.P15453917706344539056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (A000201 (n + 1)).toNat + 1

end

end A214991.P15453917706344539056

namespace A214991

/-- `A382116(A000201(n+1))+1` -/
def P15453917706344539056.Spec : Prop :=
  ∀ n, P15453917706344539056.a n = A214991 (n + 1)

end A214991

/-! ## A214991.P446160713726918709

`A003622(n+1)+A001468(A007067(n+1))`
-/

namespace A214991.P446160713726918709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + A001468 (A007067 (n + 1)).toNat

end

end A214991.P446160713726918709

namespace A214991

/-- `A003622(n+1)+A001468(A007067(n+1))` -/
def P446160713726918709.Spec : Prop :=
  ∀ n, P446160713726918709.a n = A214991 (n + 1)

end A214991

/-!
# A214992: Power ceiling-floor sequence of (golden ratio)^4.

The programs for A214992, the canonical program `A214992.P8391455264854420088` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214992 has offset 0).

The definition of A214992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214992.P16953213809397226287

`ogf((7+5x-x^2)/(1-6x-6x^2+x^3))`
-/

namespace A214992.P16953213809397226287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 5, -1] [1, -6, -6, 1] n

end

end A214992.P16953213809397226287

namespace A214992

/-- `ogf((7+5x-x^2)/(1-6x-6x^2+x^3))` -/
def P16953213809397226287.Spec : Prop :=
  ∀ n, P16953213809397226287.a n = A214992 n

end A214992

/-! ## A214992.P8391455264854420088

`6*a(n-1)+6*a(n-2)-a(n-3)` with `a(0)=7, a(1)=47, a(2)=323`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214992

/-- `6*a(n-1)+6*a(n-2)-a(n-3)` -/
def P8391455264854420088.Spec : Prop :=
  ∀ n, P8391455264854420088.a n = A214992 n

theorem P8391455264854420088.correct : P8391455264854420088.Spec := by
  intro n
  simp only [A214992]

end A214992

/-! ## A214992.P1247950279150734513

`A157335(n)+A049685(n+1)`
-/

namespace A214992.P1247950279150734513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157335 n + A049685 (n + 1)

end

end A214992.P1247950279150734513

namespace A214992

/-- `A157335(n)+A049685(n+1)` -/
def P1247950279150734513.Spec : Prop :=
  ∀ n, P1247950279150734513.a n = A214992 n

end A214992

/-! ## A214992.P7699545569681225748

`A033891(n+1)-A157335(n+1)`
-/

namespace A214992.P7699545569681225748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 (n + 1) - A157335 (n + 1)

end

end A214992.P7699545569681225748

namespace A214992

/-- `A033891(n+1)-A157335(n+1)` -/
def P7699545569681225748.Spec : Prop :=
  ∀ n, P7699545569681225748.a n = A214992 n

end A214992

/-! ## A214992.P11704676331441470642

`A157335(n)+A152119(2*n+3)`
-/

namespace A214992.P11704676331441470642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157335 n + A152119 (2 * n + 3)

end

end A214992.P11704676331441470642

namespace A214992

/-- `A157335(n)+A152119(2*n+3)` -/
def P11704676331441470642.Spec : Prop :=
  ∀ n, P11704676331441470642.a n = A214992 n

end A214992

/-! ## A214992.P9012178556418210545

`A157335(n)+A140824(A004273(n+2))`
-/

namespace A214992.P9012178556418210545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157335 n + A140824 (A004273 (n + 2)).toNat

end

end A214992.P9012178556418210545

namespace A214992

/-- `A157335(n)+A140824(A004273(n+2))` -/
def P9012178556418210545.Spec : Prop :=
  ∀ n, P9012178556418210545.a n = A214992 n

end A214992

/-! ## A214992.P16460859230971698925

`A157335(n+2)-A290903(n+1)`
-/

namespace A214992.P16460859230971698925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157335 (n + 2) - A290903 (n + 1)

end

end A214992.P16460859230971698925

namespace A214992

/-- `A157335(n+2)-A290903(n+1)` -/
def P16460859230971698925.Spec : Prop :=
  ∀ n, P16460859230971698925.a n = A214992 n

end A214992

/-!
# A214993: Power floor sequence of (golden ratio)^5.

The programs for A214993, the canonical program `A214993.P2573474402733789638` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214993 has offset 0).

The definition of A214993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214993.P2573474402733789638

`ogf((11-11x-x^2)/(1-12x+10x^2+x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214993

/-- `ogf((11-11x-x^2)/(1-12x+10x^2+x^3))` -/
def P2573474402733789638.Spec : Prop :=
  ∀ n, P2573474402733789638.a n = A214993 n

theorem P2573474402733789638.correct : P2573474402733789638.Spec := by
  intro n
  simp only [A214993]

end A214993

/-! ## A214993.P13038500491991438159

`2*A138134(n+1)+1`
-/

namespace A214993.P13038500491991438159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138134 (n + 1) + 1

end

end A214993.P13038500491991438159

namespace A214993

/-- `2*A138134(n+1)+1` -/
def P13038500491991438159.Spec : Prop :=
  ∀ n, P13038500491991438159.a n = A214993 n

end A214993

/-! ## A214993.P6607727913169742014

`∑[A055389(5*(n+1))]+1`
-/

namespace A214993.P6607727913169742014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214993.P6607727913169742014

namespace A214993

/-- `∑[A055389(5*(n+1))]+1` -/
def P6607727913169742014.Spec : Prop :=
  ∀ n, P6607727913169742014.a n = A214993 n

end A214993

/-! ## A214993.P3140193081971895529

`∑[A128588(5*(n+1))]+1`
-/

namespace A214993.P3140193081971895529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214993.P3140193081971895529

namespace A214993

/-- `∑[A128588(5*(n+1))]+1` -/
def P3140193081971895529.Spec : Prop :=
  ∀ n, P3140193081971895529.a n = A214993 n

end A214993

/-! ## A214993.P15872893806645743383

`∑[A090991(5*n+2)]+1`
-/

namespace A214993.P15872893806645743383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214993.P15872893806645743383

namespace A214993

/-- `∑[A090991(5*n+2)]+1` -/
def P15872893806645743383.Spec : Prop :=
  ∀ n, P15872893806645743383.a n = A214993 n

end A214993

/-! ## A214993.P2043980667260269057

`∑[A078642(5*n+3)]+1`
-/

namespace A214993.P2043980667260269057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214993.P2043980667260269057

namespace A214993

/-- `∑[A078642(5*n+3)]+1` -/
def P2043980667260269057.Spec : Prop :=
  ∀ n, P2043980667260269057.a n = A214993 n

end A214993

/-! ## A214993.P16240912925405481361

`∑[A068922(5*n+4)]+1`
-/

namespace A214993.P16240912925405481361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214993.P16240912925405481361

namespace A214993

/-- `∑[A068922(5*n+4)]+1` -/
def P16240912925405481361.Spec : Prop :=
  ∀ n, P16240912925405481361.a n = A214993 n

end A214993

/-! ## A214993.P6937278829732460697

`∑[A001588(5*(n+1))]-n`
-/

namespace A214993.P6937278829732460697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A214993.P6937278829732460697

namespace A214993

/-- `∑[A001588(5*(n+1))]-n` -/
def P6937278829732460697.Spec : Prop :=
  ∀ n, P6937278829732460697.a n = A214993 n

end A214993

/-! ## A214993.P510214902388163440

`∑[2*A000045(5*(n+1))]+1`
-/

namespace A214993.P510214902388163440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214993.P510214902388163440

namespace A214993

/-- `∑[2*A000045(5*(n+1))]+1` -/
def P510214902388163440.Spec : Prop :=
  ∀ n, P510214902388163440.a n = A214993 n

end A214993

/-! ## A214993.P16062458910719191343

`n+2+∑[A001595(5*n+4)]`
-/

namespace A214993.P16062458910719191343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214993.P16062458910719191343

namespace A214993

/-- `n+2+∑[A001595(5*n+4)]` -/
def P16062458910719191343.Spec : Prop :=
  ∀ n, P16062458910719191343.a n = A214993 n

end A214993

/-!
# A214994: Power ceiling sequence of (golden ratio)^5.

The programs for A214994, the canonical program `A214994.P4325231653778279750` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214994 has offset 0).

The definition of A214994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214994.P4325231653778279750

`ogf((12-10x-x^2)/(1-12x+10x^2+x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214994

/-- `ogf((12-10x-x^2)/(1-12x+10x^2+x^3))` -/
def P4325231653778279750.Spec : Prop :=
  ∀ n, P4325231653778279750.a n = A214994 n

theorem P4325231653778279750.correct : P4325231653778279750.Spec := by
  intro n
  simp only [A214994]

end A214994

/-! ## A214994.P13029456325987712865

`ceil(ϕ^5*a(n-1))` with `a(0)=12`
-/

namespace A214994.P13029456325987712865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  ⌈Real.goldenRatio ^ 5 * (a (n - 1) : ℝ)⌉

end

end A214994.P13029456325987712865

namespace A214994

/-- `ceil(ϕ^5*a(n-1))` -/
def P13029456325987712865.Spec : Prop :=
  ∀ n, P13029456325987712865.a n = A214994 n

end A214994

/-! ## A214994.P7113345763574009747

`∑[A049666(n+2)]+1`
-/

namespace A214994.P7113345763574009747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214994.P7113345763574009747

namespace A214994

/-- `∑[A049666(n+2)]+1` -/
def P7113345763574009747.Spec : Prop :=
  ∀ n, P7113345763574009747.a n = A214994 n

end A214994

/-! ## A214994.P18296582995185551511

`A214993(n)+∑[A015457(n+1)]`
-/

namespace A214994.P18296582995185551511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214993 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214994.P18296582995185551511

namespace A214994

/-- `A214993(n)+∑[A015457(n+1)]` -/
def P18296582995185551511.Spec : Prop :=
  ∀ n, P18296582995185551511.a n = A214994 n

end A214994

/-! ## A214994.P8982243997897478793

`A138134(n+2)/5`
-/

namespace A214994.P8982243997897478793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138134 (n + 2) : ℚ) / 5

end

end A214994.P8982243997897478793

namespace A214994

/-- `A138134(n+2)/5` -/
def P8982243997897478793.Spec : Prop :=
  ∀ n, P8982243997897478793.a n = (A214994 n : ℚ)

end A214994

/-!
# A214995: Power ceiling-floor sequence of (golden ratio)^6.

The programs for A214995, the canonical program `A214995.P2844546795177261453` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214995 has offset 0).

The definition of A214995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214995.P2844546795177261453

`ogf((18+16x-x^2)/(1-17x-17x^2+x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214995

/-- `ogf((18+16x-x^2)/(1-17x-17x^2+x^3))` -/
def P2844546795177261453.Spec : Prop :=
  ∀ n, P2844546795177261453.a n = A214995 n

theorem P2844546795177261453.correct : P2844546795177261453.Spec := by
  intro n
  simp only [A214995]

end A214995

/-! ## A214995.P2652116481241029817

`A049660(n+2)-A156085(n)`
-/

namespace A214995.P2652116481241029817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 (n + 2) - A156085 n

end

end A214995.P2652116481241029817

namespace A214995

/-- `A049660(n+2)-A156085(n)` -/
def P2652116481241029817.Spec : Prop :=
  ∀ n, P2652116481241029817.a n = A214995 n

end A214995

/-! ## A214995.P8862354697643277874

`A049660(n+2)-∑[A099279(n)]`
-/

namespace A214995.P8862354697643277874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214995.P8862354697643277874

namespace A214995

/-- `A049660(n+2)-∑[A099279(n)]` -/
def P8862354697643277874.Spec : Prop :=
  ∀ n, P8862354697643277874.a n = A214995 n

end A214995

/-! ## A214995.P13366518911112650966

`A156085(n+2)+Δ[A156085(n)]`
-/

namespace A214995.P13366518911112650966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156085 (n + 2) + (f1 (n + 1) - f1 n)

end

end A214995.P13366518911112650966

namespace A214995

/-- `A156085(n+2)+Δ[A156085(n)]` -/
def P13366518911112650966.Spec : Prop :=
  ∀ n, P13366518911112650966.a n = A214995 n

end A214995

/-! ## A214995.P1248444540727595516

`A156085(n+1)+A007805(n+1)`
-/

namespace A214995.P1248444540727595516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156085 (n + 1) + A007805 (n + 1)

end

end A214995.P1248444540727595516

namespace A214995

/-- `A156085(n+1)+A007805(n+1)` -/
def P1248444540727595516.Spec : Prop :=
  ∀ n, P1248444540727595516.a n = A214995 n

end A214995

/-! ## A214995.P10370934944992913926

`A007805(n+1)+A195614(n+1)/8`
-/

namespace A214995.P10370934944992913926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007805 (n + 1) : ℚ) + (A195614 (n + 1) : ℚ) / 8

end

end A214995.P10370934944992913926

namespace A214995

/-- `A007805(n+1)+A195614(n+1)/8` -/
def P10370934944992913926.Spec : Prop :=
  ∀ n, P10370934944992913926.a n = (A214995 n : ℚ)

end A214995

/-!
# A214996: Power floor-ceiling sequence of 2+sqrt(2).

The programs for A214996, the canonical program `A214996.P5507889719808099188` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214996 has offset 0).

The definition of A214996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214996.P7285000650794438200

`ogf((3+2x-2x^2)/(1-3x-2x^2+2x^3))`
-/

namespace A214996.P7285000650794438200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, -2] [1, -3, -2, 2] n

end

end A214996.P7285000650794438200

namespace A214996

/-- `ogf((3+2x-2x^2)/(1-3x-2x^2+2x^3))` -/
def P7285000650794438200.Spec : Prop :=
  ∀ n, P7285000650794438200.a n = A214996 n

end A214996

/-! ## A214996.P5507889719808099188

`3*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=11, a(2)=37`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214996

/-- `3*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P5507889719808099188.Spec : Prop :=
  ∀ n, P5507889719808099188.a n = A214996 n

theorem P5507889719808099188.correct : P5507889719808099188.Spec := by
  intro n
  simp only [A214996]

end A214996

/-! ## A214996.P4402312521673223585

`Δ[ogf(1/(1-4x+x^2+4x^3-2x^4))]`
-/

namespace A214996.P4402312521673223585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 1, 4, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214996.P4402312521673223585

namespace A214996

/-- `Δ[ogf(1/(1-4x+x^2+4x^3-2x^4))]` -/
def P4402312521673223585.Spec : Prop :=
  ∀ n, P4402312521673223585.a n = A214996 n

end A214996

/-! ## A214996.P17388653408079329417

`or(1, floor((sqrt(2)+2)*a(n-1)))` with `a(0)=3`
-/

namespace A214996.P17388653408079329417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 1 ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A214996.P17388653408079329417

namespace A214996

/-- `or(1, floor((sqrt(2)+2)*a(n-1)))` -/
def P17388653408079329417.Spec : Prop :=
  ∀ n, P17388653408079329417.a n = A214996 n

end A214996

/-! ## A214996.P14063765495604834859

`∑[A052543(n+1)]+1`
-/

namespace A214996.P14063765495604834859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A214996.P14063765495604834859

namespace A214996

/-- `∑[A052543(n+1)]+1` -/
def P14063765495604834859.Spec : Prop :=
  ∀ n, P14063765495604834859.a n = A214996 n

end A214996

/-! ## A214996.P7420917101805470667

`A007070(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A214996.P7420917101805470667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007070 (n + 1) - a (n - 1)

end

end A214996.P7420917101805470667

namespace A214996

/-- `A007070(n+1)-a(n-1)` -/
def P7420917101805470667.Spec : Prop :=
  ∀ n, P7420917101805470667.a n = A214996 n

end A214996

/-! ## A214996.P18230160086961492958

`A204089(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A214996.P18230160086961492958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A204089 (n + 2) - a (n - 1)

end

end A214996.P18230160086961492958

namespace A214996

/-- `A204089(n+2)-a(n-1)` -/
def P18230160086961492958.Spec : Prop :=
  ∀ n, P18230160086961492958.a n = A214996 n

end A214996

/-! ## A214996.P17616396862145652345

`A214997(n)-A052543(n)`
-/

namespace A214996.P17616396862145652345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214997 n - A052543 n

end

end A214996.P17616396862145652345

namespace A214996

/-- `A214997(n)-A052543(n)` -/
def P17616396862145652345.Spec : Prop :=
  ∀ n, P17616396862145652345.a n = A214996 n

end A214996

/-! ## A214996.P12236561428253641370

`(A052543(n+1)+A007070(n+1))/2`
-/

namespace A214996.P12236561428253641370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052543 (n + 1) + A007070 (n + 1) : ℚ) / 2

end

end A214996.P12236561428253641370

namespace A214996

/-- `(A052543(n+1)+A007070(n+1))/2` -/
def P12236561428253641370.Spec : Prop :=
  ∀ n, P12236561428253641370.a n = (A214996 n : ℚ)

end A214996

/-! ## A214996.P7867739156839816707

`A007052(n+1)+A007070(n+1)-A214997(n)`
-/

namespace A214996.P7867739156839816707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) + (A007070 (n + 1) - A214997 n)

end

end A214996.P7867739156839816707

namespace A214996

/-- `A007052(n+1)+A007070(n+1)-A214997(n)` -/
def P7867739156839816707.Spec : Prop :=
  ∀ n, P7867739156839816707.a n = A214996 n

end A214996

/-! ## A214996.P15369375484792807033

`A003480(n+2)-A214997(n)`
-/

namespace A214996.P15369375484792807033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 2) - A214997 n

end

end A214996.P15369375484792807033

namespace A214996

/-- `A003480(n+2)-A214997(n)` -/
def P15369375484792807033.Spec : Prop :=
  ∀ n, P15369375484792807033.a n = A214996 n

end A214996

/-! ## A214996.P15601478877704010535

`A214997(n+1)-A007052(n+2)`
-/

namespace A214996.P15601478877704010535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214997 (n + 1) - A007052 (n + 2)

end

end A214996.P15601478877704010535

namespace A214996

/-- `A214997(n+1)-A007052(n+2)` -/
def P15601478877704010535.Spec : Prop :=
  ∀ n, P15601478877704010535.a n = A214996 n

end A214996

/-! ## A214996.P8690193475837039305

`A007070(n+3)-A214997(n+2)`
-/

namespace A214996.P8690193475837039305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 3) - A214997 (n + 2)

end

end A214996.P8690193475837039305

namespace A214996

/-- `A007070(n+3)-A214997(n+2)` -/
def P8690193475837039305.Spec : Prop :=
  ∀ n, P8690193475837039305.a n = A214996 n

end A214996

/-!
# A214997: Power ceiling-floor sequence of 2+sqrt(2).

The programs for A214997, the canonical program `A214997.P77416991492476181` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214997 has offset 0).

The definition of A214997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214997.P14437397067697206768

`ogf((4+x-2x^2)/(1-3x-2x^2+2x^3))`
-/

namespace A214997.P14437397067697206768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -2] [1, -3, -2, 2] n

end

end A214997.P14437397067697206768

namespace A214997

/-- `ogf((4+x-2x^2)/(1-3x-2x^2+2x^3))` -/
def P14437397067697206768.Spec : Prop :=
  ∀ n, P14437397067697206768.a n = A214997 n

end A214997

/-! ## A214997.P77416991492476181

`3*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=13, a(2)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214997

/-- `3*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P77416991492476181.Spec : Prop :=
  ∀ n, P77416991492476181.a n = A214997 n

theorem P77416991492476181.correct : P77416991492476181.Spec := by
  intro n
  simp only [A214997]

end A214997

/-! ## A214997.P4592231825104443868

`or(1, floor((sqrt(2)+2)*a(n-1)))` with `a(0)=4`
-/

namespace A214997.P4592231825104443868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor 1 ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A214997.P4592231825104443868

namespace A214997

/-- `or(1, floor((sqrt(2)+2)*a(n-1)))` -/
def P4592231825104443868.Spec : Prop :=
  ∀ n, P4592231825104443868.a n = A214997 n

end A214997

/-! ## A214997.P322560590501224371

`A010914(n)-a(n-1)` with `a(0)=4`
-/

namespace A214997.P322560590501224371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A010914 n - a (n - 1)

end

end A214997.P322560590501224371

namespace A214997

/-- `A010914(n)-a(n-1)` -/
def P322560590501224371.Spec : Prop :=
  ∀ n, P322560590501224371.a n = A214997 n

end A214997

/-! ## A214997.P12475985518820848464

`A059841(n)+floor((sqrt(2)+2)*a(n-1))` with `a(0)=4`
-/

namespace A214997.P12475985518820848464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A059841 n + ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A214997.P12475985518820848464

namespace A214997

/-- `A059841(n)+floor((sqrt(2)+2)*a(n-1))` -/
def P12475985518820848464.Spec : Prop :=
  ∀ n, P12475985518820848464.a n = A214997 n

end A214997

/-! ## A214997.P7268760576023055614

`A214996(n)+A052543(n)`
-/

namespace A214997.P7268760576023055614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214996 n + A052543 n

end

end A214997.P7268760576023055614

namespace A214997

/-- `A214996(n)+A052543(n)` -/
def P7268760576023055614.Spec : Prop :=
  ∀ n, P7268760576023055614.a n = A214997 n

end A214997

/-! ## A214997.P6137114795547508347

`Δ[A007070(n)]+∑[A052543(n)]`
-/

namespace A214997.P6137114795547508347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A214997.P6137114795547508347

namespace A214997

/-- `Δ[A007070(n)]+∑[A052543(n)]` -/
def P6137114795547508347.Spec : Prop :=
  ∀ n, P6137114795547508347.a n = A214997 n

end A214997

/-! ## A214997.P1803574161296030366

`∑[A052543(n+1)]+A052543(n)+1`
-/

namespace A214997.P1803574161296030366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A052543 n + 1)

end

end A214997.P1803574161296030366

namespace A214997

/-- `∑[A052543(n+1)]+A052543(n)+1` -/
def P1803574161296030366.Spec : Prop :=
  ∀ n, P1803574161296030366.a n = A214997 n

end A214997

/-! ## A214997.P17579505154697619031

`A007052(n+1)+A007070(n+1)-A214996(n)`
-/

namespace A214997.P17579505154697619031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) + (A007070 (n + 1) - A214996 n)

end

end A214997.P17579505154697619031

namespace A214997

/-- `A007052(n+1)+A007070(n+1)-A214996(n)` -/
def P17579505154697619031.Spec : Prop :=
  ∀ n, P17579505154697619031.a n = A214997 n

end A214997

/-! ## A214997.P16686583049063611281

`Δ[A214996(n)]/2`
-/

namespace A214997.P16686583049063611281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214996 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A214997.P16686583049063611281

namespace A214997

/-- `Δ[A214996(n)]/2` -/
def P16686583049063611281.Spec : Prop :=
  ∀ n, P16686583049063611281.a n = (A214997 n : ℚ)

end A214997

/-! ## A214997.P4627670692448241087

`A052543(n+2)/2`
-/

namespace A214997.P4627670692448241087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052543 (n + 2) : ℚ) / 2

end

end A214997.P4627670692448241087

namespace A214997

/-- `A052543(n+2)/2` -/
def P4627670692448241087.Spec : Prop :=
  ∀ n, P4627670692448241087.a n = (A214997 n : ℚ)

end A214997

/-! ## A214997.P15021016999604539197

`A003480(n+2)-A214996(n)`
-/

namespace A214997.P15021016999604539197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 2) - A214996 n

end

end A214997.P15021016999604539197

namespace A214997

/-- `A003480(n+2)-A214996(n)` -/
def P15021016999604539197.Spec : Prop :=
  ∀ n, P15021016999604539197.a n = A214997 n

end A214997

/-! ## A214997.P14580192498773921821

`(A214996(n+1)-A214996(n))/2`
-/

namespace A214997.P14580192498773921821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214996 (n + 1) - A214996 n : ℚ) / 2

end

end A214997.P14580192498773921821

namespace A214997

/-- `(A214996(n+1)-A214996(n))/2` -/
def P14580192498773921821.Spec : Prop :=
  ∀ n, P14580192498773921821.a n = (A214997 n : ℚ)

end A214997

/-!
# A214998: Power ceiling-floor sequence of 2 + sqrt(3).

The programs for A214998, the canonical program `A214998.P14770228354608180815` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214998 has offset 0).

The definition of A214998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214998.P16907555294361558939

`ogf((4+2x-x^2)/(1-3x-3x^2+x^3))`
-/

namespace A214998.P16907555294361558939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, -1] [1, -3, -3, 1] n

end

end A214998.P16907555294361558939

namespace A214998

/-- `ogf((4+2x-x^2)/(1-3x-3x^2+x^3))` -/
def P16907555294361558939.Spec : Prop :=
  ∀ n, P16907555294361558939.a n = A214998 n

end A214998

/-! ## A214998.P14770228354608180815

`(-1)^n+4*a(n-1)-a(n-2)` with `a(0)=4, a(1)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214998

/-- `(-1)^n+4*a(n-1)-a(n-2)` -/
def P14770228354608180815.Spec : Prop :=
  ∀ n, P14770228354608180815.a n = A214998 n

theorem P14770228354608180815.correct : P14770228354608180815.Spec := by
  intro n
  simp only [A214998]

end A214998

/-! ## A214998.P12128849821494196516

`ceil((sqrt(3)+2)*a(n-1))-n%2` with `a(0)=4`
-/

namespace A214998.P12128849821494196516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - ((n % 2 : ℕ) : ℤ)

end

end A214998.P12128849821494196516

namespace A214998

/-- `ceil((sqrt(3)+2)*a(n-1))-n%2` -/
def P12128849821494196516.Spec : Prop :=
  ∀ n, P12128849821494196516.a n = A214998 n

end A214998

/-! ## A214998.P5219900051621419382

`(-1)^n-round(a(n-1)/(sqrt(3)-2))` with `a(0)=4`
-/

namespace A214998.P5219900051621419382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (-1) ^ n - SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A214998.P5219900051621419382

namespace A214998

/-- `(-1)^n-round(a(n-1)/(sqrt(3)-2))` -/
def P5219900051621419382.Spec : Prop :=
  ∀ n, P5219900051621419382.a n = A214998 n

end A214998

/-! ## A214998.P6983932525574061911

`Δ[4*a(n-1)-(a(n-2)+gcd(2, n))]` with `a(0)=2, a(1)=6`
-/

namespace A214998.P6983932525574061911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  4 * f1 (n - 1) - (f1 (n - 2) + (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214998.P6983932525574061911

namespace A214998

/-- `Δ[4*a(n-1)-(a(n-2)+gcd(2, n))]` -/
def P6983932525574061911.Spec : Prop :=
  ∀ n, P6983932525574061911.a n = A214998 n

end A214998

/-! ## A214998.P1178310120222563162

`A144721(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A214998.P1178310120222563162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A144721 (n + 1) - a (n - 1)

end

end A214998.P1178310120222563162

namespace A214998

/-- `A144721(n+1)-a(n-1)` -/
def P1178310120222563162.Spec : Prop :=
  ∀ n, P1178310120222563162.a n = A214998 n

end A214998

/-! ## A214998.P3183147306598470139

`A010905(n)-A109437(n)`
-/

namespace A214998.P3183147306598470139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n - A109437 n

end

end A214998.P3183147306598470139

namespace A214998

/-- `A010905(n)-A109437(n)` -/
def P3183147306598470139.Spec : Prop :=
  ∀ n, P3183147306598470139.a n = A214998 n

end A214998

/-! ## A214998.P15568936819185618517

`A109437(n)+Δ[A109438(n)]`
-/

namespace A214998.P15568936819185618517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + (f1 (n + 1) - f1 n)

end

end A214998.P15568936819185618517

namespace A214998

/-- `A109437(n)+Δ[A109438(n)]` -/
def P15568936819185618517.Spec : Prop :=
  ∀ n, P15568936819185618517.a n = A214998 n

end A214998

/-! ## A214998.P2573019604304219525

`A109437(n)+A105968(n+1)`
-/

namespace A214998.P2573019604304219525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + A105968 (n + 1)

end

end A214998.P2573019604304219525

namespace A214998

/-- `A109437(n)+A105968(n+1)` -/
def P2573019604304219525.Spec : Prop :=
  ∀ n, P2573019604304219525.a n = A214998 n

end A214998

/-! ## A214998.P16402423408182254116

`A001834(n+1)-A109438(n)`
-/

namespace A214998.P16402423408182254116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (n + 1) - A109438 n

end

end A214998.P16402423408182254116

namespace A214998

/-- `A001834(n+1)-A109438(n)` -/
def P16402423408182254116.Spec : Prop :=
  ∀ n, P16402423408182254116.a n = A214998 n

end A214998

/-! ## A214998.P14019338820510189798

`A109437(n+2)+A006253(n)`
-/

namespace A214998.P14019338820510189798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 2) + A006253 n

end

end A214998.P14019338820510189798

namespace A214998

/-- `A109437(n+2)+A006253(n)` -/
def P14019338820510189798.Spec : Prop :=
  ∀ n, P14019338820510189798.a n = A214998 n

end A214998

/-! ## A214998.P9074490729224147448

`A001353(n+2)-A109437(n)`
-/

namespace A214998.P9074490729224147448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 2) - A109437 n

end

end A214998.P9074490729224147448

namespace A214998

/-- `A001353(n+2)-A109437(n)` -/
def P9074490729224147448.Spec : Prop :=
  ∀ n, P9074490729224147448.a n = A214998 n

end A214998

/-! ## A214998.P11814555178192091694

`A079935(n+2)+∑[A006253(n)]`
-/

namespace A214998.P11814555178192091694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214998.P11814555178192091694

namespace A214998

/-- `A079935(n+2)+∑[A006253(n)]` -/
def P11814555178192091694.Spec : Prop :=
  ∀ n, P11814555178192091694.a n = A214998 n

end A214998

/-! ## A214998.P12326753252785124172

`A001834(n+1)-∑[A105968(n)]`
-/

namespace A214998.P12326753252785124172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214998.P12326753252785124172

namespace A214998

/-- `A001834(n+1)-∑[A105968(n)]` -/
def P12326753252785124172.Spec : Prop :=
  ∀ n, P12326753252785124172.a n = A214998 n

end A214998

/-! ## A214998.P845610988908441077

`Δ[A001075(n+1)]-A109438(n)`
-/

namespace A214998.P845610988908441077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109438 n

end

end A214998.P845610988908441077

namespace A214998

/-- `Δ[A001075(n+1)]-A109438(n)` -/
def P845610988908441077.Spec : Prop :=
  ∀ n, P845610988908441077.a n = A214998 n

end A214998

/-! ## A214998.P9362761505847195819

`Δ[A061278(n+1)]-A109437(n)`
-/

namespace A214998.P9362761505847195819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109437 n

end

end A214998.P9362761505847195819

namespace A214998

/-- `Δ[A061278(n+1)]-A109437(n)` -/
def P9362761505847195819.Spec : Prop :=
  ∀ n, P9362761505847195819.a n = A214998 n

end A214998

/-! ## A214998.P7383815556495432968

`A109438(n+1)-Δ[A061278(n)]`
-/

namespace A214998.P7383815556495432968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 (n + 1) - (f1 (n + 1) - f1 n)

end

end A214998.P7383815556495432968

namespace A214998

/-- `A109438(n+1)-Δ[A061278(n)]` -/
def P7383815556495432968.Spec : Prop :=
  ∀ n, P7383815556495432968.a n = A214998 n

end A214998

/-! ## A214998.P4947257792157970410

`Δ[A101265(n+2)]-A109437(n)`
-/

namespace A214998.P4947257792157970410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109437 n

end

end A214998.P4947257792157970410

namespace A214998

/-- `Δ[A101265(n+2)]-A109437(n)` -/
def P4947257792157970410.Spec : Prop :=
  ∀ n, P4947257792157970410.a n = A214998 n

end A214998

/-! ## A214998.P2788393028952323701

`A109438(n+1)-A001353(n+1)`
-/

namespace A214998.P2788393028952323701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 (n + 1) - A001353 (n + 1)

end

end A214998.P2788393028952323701

namespace A214998

/-- `A109438(n+1)-A001353(n+1)` -/
def P2788393028952323701.Spec : Prop :=
  ∀ n, P2788393028952323701.a n = A214998 n

end A214998

/-! ## A214998.P5555166961543772705

`A109437(n+1)+A001835(n+2)`
-/

namespace A214998.P5555166961543772705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 1) + A001835 (n + 2)

end

end A214998.P5555166961543772705

namespace A214998

/-- `A109437(n+1)+A001835(n+2)` -/
def P5555166961543772705.Spec : Prop :=
  ∀ n, P5555166961543772705.a n = A214998 n

end A214998

/-!
# A214999: Power floor sequence of sqrt(5).

The programs for A214999, the canonical program `A214999.P7691134595613861023` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214999 has offset 0).

The definition of A214999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214999.P7691134595613861023

`floor(sqrt(5)*a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A214999

/-- `floor(sqrt(5)*a(n-1))` -/
def P7691134595613861023.Spec : Prop :=
  ∀ n, P7691134595613861023.a n = A214999 n

theorem P7691134595613861023.correct : P7691134595613861023.Spec := by
  intro n
  simp only [A214999]

end A214999

/-! ## A214999.P5352413835441093191

`ceil(sqrt(5)*a(n-1))-1` with `a(0)=2`
-/

namespace A214999.P5352413835441093191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ)⌉ - 1

end

end A214999.P5352413835441093191

namespace A214999

/-- `ceil(sqrt(5)*a(n-1))-1` -/
def P5352413835441093191.Spec : Prop :=
  ∀ n, P5352413835441093191.a n = A214999 n

end A214999

/-! ## A214999.P10393007040690501805

`floor(a(n-1)/sqrt(1/5))` with `a(0)=2`
-/

namespace A214999.P10393007040690501805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 5 : ℝ)⌋

end

end A214999.P10393007040690501805

namespace A214999

/-- `floor(a(n-1)/sqrt(1/5))` -/
def P10393007040690501805.Spec : Prop :=
  ∀ n, P10393007040690501805.a n = A214999 n

end A214999

/-! ## A214999.P17673910051812646139

`floor((ϕ+2)*a(n-1)/ϕ)` with `a(0)=2`
-/

namespace A214999.P17673910051812646139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(Real.goldenRatio + 2) * ((a (n - 1) : ℝ) / Real.goldenRatio)⌋

end

end A214999.P17673910051812646139

namespace A214999

/-- `floor((ϕ+2)*a(n-1)/ϕ)` -/
def P17673910051812646139.Spec : Prop :=
  ∀ n, P17673910051812646139.a n = A214999 n

end A214999

/-! ## A214999.P15855289055427708706

`floor((5*a(n-1)²)^(1/2))` with `a(0)=2`
-/

namespace A214999.P15855289055427708706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(5 * a (n - 1) ^ 2 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A214999.P15855289055427708706

namespace A214999

/-- `floor((5*a(n-1)²)^(1/2))` -/
def P15855289055427708706.Spec : Prop :=
  ∀ n, P15855289055427708706.a n = A214999 n

end A214999

