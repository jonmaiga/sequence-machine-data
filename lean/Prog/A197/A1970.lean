import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B004.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A197039: Numbers such that sum of the cube of decimal digits is a perfect square.

The programs for A197039, the canonical program `A197039.P17477955772829590761` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197039 has offset 1).

The definition of A197039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197039.P3676123584282450217

`eq[2, A000122(A055012(n))]`
-/

namespace A197039.P3676123584282450217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197039.P3676123584282450217

namespace A197039

/-- `eq[2, A000122(A055012(n))]` -/
def P3676123584282450217.Spec : Prop :=
  ∀ n, (P3676123584282450217.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P17477955772829590761

`eq[1, A053186(A055012(n)+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A197039

/-- `eq[1, A053186(A055012(n)+1)]` -/
def P17477955772829590761.Spec : Prop :=
  ∀ n, (P17477955772829590761.a n : ℤ) = A197039 (n + 1)

theorem P17477955772829590761.correct : P17477955772829590761.Spec := by
  intro n
  simp only [A197039, Nat.add_sub_cancel]

end A197039

/-! ## A197039.P11236001510564468855

`eq[1, A262678(A055012(n)+1)]`
-/

namespace A197039.P11236001510564468855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A055012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197039.P11236001510564468855

namespace A197039

/-- `eq[1, A262678(A055012(n)+1)]` -/
def P11236001510564468855.Spec : Prop :=
  ∀ n, (P11236001510564468855.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P10651349062314926486

`eq[A000038(n), A053186(A055012(n))]`
-/

namespace A197039.P10651349062314926486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P10651349062314926486

namespace A197039

/-- `eq[A000038(n), A053186(A055012(n))]` -/
def P10651349062314926486.Spec : Prop :=
  ∀ n, (P10651349062314926486.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P3265903469464197356

`eq[A003417(n), A010052(A055012(n))]`
-/

namespace A197039.P3265903469464197356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P3265903469464197356

namespace A197039

/-- `eq[A003417(n), A010052(A055012(n))]` -/
def P3265903469464197356.Spec : Prop :=
  ∀ n, (P3265903469464197356.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P7187952880892416814

`eq[A000007(n), A262678(A055012(n))]`
-/

namespace A197039.P7187952880892416814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P7187952880892416814

namespace A197039

/-- `eq[A000007(n), A262678(A055012(n))]` -/
def P7187952880892416814.Spec : Prop :=
  ∀ n, (P7187952880892416814.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P12863329631661829701

`eq[A010052(A055012(n)), A206774(2*n+1)]`
-/

namespace A197039.P12863329631661829701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A055012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P12863329631661829701

namespace A197039

/-- `eq[A010052(A055012(n)), A206774(2*n+1)]` -/
def P12863329631661829701.Spec : Prop :=
  ∀ n, (P12863329631661829701.a n : ℤ) = A197039 (n + 1)

end A197039

/-!
# A197041: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197041, there is no canonical definition to state claims against.
-/

/-! ## A197041.P989367663817113456

`A197047(∑[4*n]+1)`
-/

namespace A197041.P989367663817113456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197041.P989367663817113456

/-! ## A197041.P9708266083193794003

`record[A197047(A330613(n+1))]`
-/

namespace A197041.P9708266083193794003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197041.P9708266083193794003

/-! ## A197041.P11747360863535472035

`record[A197047(A286457(n+2))]`
-/

namespace A197041.P11747360863535472035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197041.P11747360863535472035

/-!
# A197042: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197042, there is no canonical definition to state claims against.
-/

/-! ## A197042.P3944224644070853383

`A197047(∑[n+2]+4)`
-/

namespace A197042.P3944224644070853383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197042.P3944224644070853383

/-! ## A197042.P15708735809305363403

`record[A197047(A167614(val(n+1, 2)+1))]`
-/

namespace A197042.P15708735809305363403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197042.P15708735809305363403

/-! ## A197042.P16877635070610003218

`record[gcd(A197047(n+4), A244118(n+1))]`
-/

namespace A197042.P16877635070610003218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197047 (n + 4)) (A244118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197042.P16877635070610003218

/-!
# A197043: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197043, there is no canonical definition to state claims against.
-/

/-! ## A197043.P9044735856143618952

`A197047(A374004(n+1))`
-/

namespace A197043.P9044735856143618952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374004 (n + 1)).toNat

end

end A197043.P9044735856143618952

/-! ## A197043.P6830023094883924261

`A197047(A141214(n+1))`
-/

namespace A197043.P6830023094883924261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A141214 (n + 1)).toNat

end

end A197043.P6830023094883924261

/-!
# A197044: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197044, there is no canonical definition to state claims against.
-/

/-! ## A197044.P2673558177108258054

`A197047(A374005(n+1))`
-/

namespace A197044.P2673558177108258054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374005 (n + 1)).toNat

end

end A197044.P2673558177108258054

/-! ## A197044.P10204318805217289009

`A197047(Δ[A264443(n)])`
-/

namespace A197044.P10204318805217289009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (f1 (n + 1) - f1 n).toNat

end

end A197044.P10204318805217289009

/-!
# A197045: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197045, there is no canonical definition to state claims against.
-/

/-! ## A197045.P13507331175980789005

`A197047(A374007(n+1))`
-/

namespace A197045.P13507331175980789005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374007 (n + 1)).toNat

end

end A197045.P13507331175980789005

/-!
# A197046: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197046, there is no canonical definition to state claims against.
-/

/-! ## A197046.P16646351835264131038

`A197047(A374008(n+1))`
-/

namespace A197046.P16646351835264131038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374008 (n + 1)).toNat

end

end A197046.P16646351835264131038

/-!
# A197047: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197047, there is no canonical definition to state claims against.
-/

/-! ## A197047.P2076788957424577533

`A235145(A196590(n+1))+A196590(n+1)`
-/

namespace A197047.P2076788957424577533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A196590 (n + 1)).toNat + A196590 (n + 1)

end

end A197047.P2076788957424577533

/-! ## A197047.P15489028900993434750

`A235145(A196802(n+1))+A196802(n+1)`
-/

namespace A197047.P15489028900993434750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A196802 (n + 1)).toNat + A196802 (n + 1)

end

end A197047.P15489028900993434750

/-! ## A197047.P14435392398447765215

`A196590(n+1)+A004198(A185044(n))`
-/

namespace A197047.P14435392398447765215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (n + 1) + A004198 (A185044 n).toNat

end

end A197047.P14435392398447765215

/-! ## A197047.P11637190848583603831

`A196802(n+1)+A004198(A185044(n))`
-/

namespace A197047.P11637190848583603831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (n + 1) + A004198 (A185044 n).toNat

end

end A197047.P11637190848583603831

/-! ## A197047.P16167100415176509041

`A309785(A331562(n))+A196590(n+1)`
-/

namespace A197047.P16167100415176509041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A196590 (n + 1)

end

end A197047.P16167100415176509041

/-!
# A197048: Number of maximal independent vertex sets in the n X n grid graph.

The programs for A197048, there is no canonical definition to state claims against.
-/

/-! ## A197048.P7613537437353753524

`A197054(2*(n+1)²-2*(n+1)+1)`
-/

namespace A197048.P7613537437353753524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A197048.P7613537437353753524

/-! ## A197048.P14741271298178103175

`record[A197054(Δ[A235355(n)])]`
-/

namespace A197048.P14741271298178103175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P14741271298178103175

/-! ## A197048.P13705173019535258215

`record[A197054(A330613(n+1))]`
-/

namespace A197048.P13705173019535258215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P13705173019535258215

/-! ## A197048.P3048767338746114065

`record[A003982(n)*A197054(n+1)]`
-/

namespace A197048.P3048767338746114065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P3048767338746114065

/-! ## A197048.P123396509055417223

`record[gcd(A197054(n+1), A204016(n+1))]`
-/

namespace A197048.P123396509055417223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197054 (n + 1)) (A204016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P123396509055417223

/-!
# A197049: Number of n X 3 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197049, the canonical program `A197049.P5087552465773645348` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197049 has offset 0).

The definition of A197049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197049.P5087552465773645348

`ogf((1+x+x^2+x^3-x^4+x^5-2x^6)/(1-x-x^2-3x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197049

/-- `ogf((1+x+x^2+x^3-x^4+x^5-2x^6)/(1-x-x^2-3x^3+x^4+x^5))` -/
def P5087552465773645348.Spec : Prop :=
  ∀ n, P5087552465773645348.a n = A197049 n

theorem P5087552465773645348.correct : P5087552465773645348.Spec := by
  intro n
  simp only [A197049]

end A197049

/-! ## A197049.P786983890373212959

`a(n-1)+a(n-2)+3*a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10, a(4)=18, a(5)=38, a(6)=78`
-/

namespace A197049.P786983890373212959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 10, 18, 38, 78] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) - a (n - 4) - a (n - 5)

end

end A197049.P786983890373212959

namespace A197049

/-- `a(n-1)+a(n-2)+3*a(n-3)-a(n-4)-a(n-5)` -/
def P786983890373212959.Spec : Prop :=
  ∀ n, P786983890373212959.a n = A197049 n

end A197049

/-! ## A197049.P5999806629386859781

`A197054(∑[n+1]+n)`
-/

namespace A197049.P5999806629386859781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A197049.P5999806629386859781

namespace A197049

/-- `A197054(∑[n+1]+n)` -/
def P5999806629386859781.Spec : Prop :=
  ∀ n, P5999806629386859781.a n = A197049 n

end A197049

/-! ## A197049.P1153241075014088414

`A339695(A150228(n))`
-/

namespace A197049.P1153241075014088414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339695 (A150228 n).toNat

end

end A197049.P1153241075014088414

namespace A197049

/-- `A339695(A150228(n))` -/
def P1153241075014088414.Spec : Prop :=
  ∀ n, P1153241075014088414.a n = A197049 n

end A197049

/-!
# A197050: Number of nX4 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197050, the canonical program `A197050.P8303522043283678464` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197050 has offset 1).

The definition of A197050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197050.P8303522043283678464

`ogf((3+3x+3x^2-3x^3-3x^4-2x^5+x^6)/(1-x-3x^2-3x^3+x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197050

/-- `ogf((3+3x+3x^2-3x^3-3x^4-2x^5+x^6)/(1-x-3x^2-3x^3+x^4+2x^5+x^6))` -/
def P8303522043283678464.Spec : Prop :=
  ∀ n, P8303522043283678464.a n = A197050 (n + 1)

theorem P8303522043283678464.correct : P8303522043283678464.Spec := by
  intro n
  simp only [A197050, Nat.add_sub_cancel]

end A197050

/-! ## A197050.P8640991366426845664

`A197054(∑[n+4]+3)`
-/

namespace A197050.P8640991366426845664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A197050.P8640991366426845664

namespace A197050

/-- `A197054(∑[n+4]+3)` -/
def P8640991366426845664.Spec : Prop :=
  ∀ n, P8640991366426845664.a n = A197050 (n + 1)

end A197050

/-!
# A197051: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197051, the canonical program `A197051.P4592590031477242241` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197051 has offset 1).

The definition of A197051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197051.P4592590031477242241

`ogf((4+6x+12x^2-10x^3-18x^4+2x^5-20x^6+20x^7-50x^8+38x^9-18x^10+2x^11+6x^12+2x^13)/(1-x-4x^2-10x^3-4x^4+20x^5-x^6+2x^7-2x^8+16x^9-4x^10-x^13))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197051

/-- `ogf((4+6x+12x^2-10x^3-18x^4+2x^5-20x^6+20x^7-50x^8+38x^9-18x^10+2x^11+6x^12+2x^13)/(1-x-4x^2-10x^3-4x^4+20x^5-x^6+2x^7-2x^8+16x^9-4x^10-x^13))` -/
def P4592590031477242241.Spec : Prop :=
  ∀ n, P4592590031477242241.a n = A197051 (n + 1)

theorem P4592590031477242241.correct : P4592590031477242241.Spec := by
  intro n
  simp only [A197051, Nat.add_sub_cancel]

end A197051

/-! ## A197051.P5038396458314119059

`A197054(A374005(n+1))`
-/

namespace A197051.P5038396458314119059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374005 (n + 1)).toNat

end

end A197051.P5038396458314119059

namespace A197051

/-- `A197054(A374005(n+1))` -/
def P5038396458314119059.Spec : Prop :=
  ∀ n, P5038396458314119059.a n = A197051 (n + 1)

end A197051

/-!
# A197052: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197052, there is no canonical definition to state claims against.
-/

/-! ## A197052.P15208897647612814016

`A197054(A374007(n+1))`
-/

namespace A197052.P15208897647612814016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374007 (n + 1)).toNat

end

end A197052.P15208897647612814016

/-!
# A197053: Number of nX7 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197053, there is no canonical definition to state claims against.
-/

/-! ## A197053.P11285990820553940620

`A197054(A374008(n+1))`
-/

namespace A197053.P11285990820553940620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374008 (n + 1)).toNat

end

end A197053.P11285990820553940620

/-!
# A197054: T(n,k) is the number of maximal independent vertex sets in the n X k grid graph, n >= 1, k >= 1, read by antidiagonals.

The programs for A197054, there is no canonical definition to state claims against.
-/

/-! ## A197054.P169431867725070787

`A219502(n+1)-A179184(A331917(3*n+2))`
-/

namespace A197054.P169431867725070787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (n + 1) - A179184 (A331917 (3 * n + 2)).toNat

end

end A197054.P169431867725070787

/-! ## A197054.P13541453006403407331

`A219502(n+1)-A105812(A001045(n))`
-/

namespace A197054.P13541453006403407331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (n + 1) - A105812 (A001045 n).toNat

end

end A197054.P13541453006403407331

/-! ## A197054.P9455421520170501423

`A219502(A187829(n+1))-A179184(n)`
-/

namespace A197054.P9455421520170501423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A187829 (n + 1)).toNat - A179184 n

end

end A197054.P9455421520170501423

/-! ## A197054.P8695602327763034356

`A000194(A222862(n+1)^A333751(n+1))`
-/

namespace A197054.P8695602327763034356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A222862 (n + 1) : ℚ) ^ (A333751 (n + 1) : ℤ))).toNat

end

end A197054.P8695602327763034356

/-!
# A197055: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors equal to 2.

The programs for A197055, there is no canonical definition to state claims against.
-/

/-! ## A197055.P7430054212525663515

`A197061(∑[4*n]+1)`
-/

namespace A197055.P7430054212525663515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197055.P7430054212525663515

/-! ## A197055.P291238750213729301

`record[A197061(A330613(n+1))]`
-/

namespace A197055.P291238750213729301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197055.P291238750213729301

/-! ## A197055.P4852410141016118877

`record[A197061(A001844(∑{digits}[n, #]))]`
-/

namespace A197055.P4852410141016118877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197055.P4852410141016118877

/-!
# A197056: Number of nX3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197056, the canonical program `A197056.P7606430672042596512` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197056 has offset 1).

The definition of A197056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197056.P7606430672042596512

`a(n-1)+2*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=14, a(5)=22`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197056

/-- `a(n-1)+2*a(n-4)+a(n-5)+a(n-6)` -/
def P7606430672042596512.Spec : Prop :=
  ∀ n, (P7606430672042596512.a n : ℤ) = A197056 (n + 1)

theorem P7606430672042596512.correct : P7606430672042596512.Spec := by
  intro n
  simp only [A197056, Nat.add_sub_cancel]

end A197056

/-! ## A197056.P13723994122728582417

`A197061(∑[n+2]+4)`
-/

namespace A197056.P13723994122728582417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197056.P13723994122728582417

namespace A197056

/-- `A197061(∑[n+2]+4)` -/
def P13723994122728582417.Spec : Prop :=
  ∀ n, P13723994122728582417.a n = A197056 (n + 1)

end A197056

/-!
# A197057: Number of n X 4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197057, the canonical program `A197057.P15403370465844039455` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197057 has offset 1).

The definition of A197057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197057.P15403370465844039455

`ogf((1+3x+6x^2+7x^3+4x^4-2x^5-6x^6-5x^7-2x^8)/(1-x-x^3-2x^4-3x^5-2x^6+x^7+3x^8+2x^9))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197057

/-- `ogf((1+3x+6x^2+7x^3+4x^4-2x^5-6x^6-5x^7-2x^8)/(1-x-x^3-2x^4-3x^5-2x^6+x^7+3x^8+2x^9))` -/
def P15403370465844039455.Spec : Prop :=
  ∀ n, P15403370465844039455.a n = A197057 (n + 1)

theorem P15403370465844039455.correct : P15403370465844039455.Spec := by
  intro n
  simp only [A197057, Nat.add_sub_cancel]

end A197057

/-! ## A197057.P2940736085728773466

`A197061(∑[n+3]+7)`
-/

namespace A197057.P2940736085728773466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197057.P2940736085728773466

namespace A197057

/-- `A197061(∑[n+3]+7)` -/
def P2940736085728773466.Spec : Prop :=
  ∀ n, P2940736085728773466.a n = A197057 (n + 1)

end A197057

/-!
# A197058: Number of n X 5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197058, the canonical program `A197058.P3583979346756199714` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197058 has offset 1).

The definition of A197058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197058.P3583979346756199714

`ogf((1+3x+5x^2+4x^3-x^4-5x^5-2x^6-2x^7-x^8-6x^9-5x^10-4x^11-x^12)/(1-2x+x^2-x^3-2x^4-3x^5+x^6+2x^7+2x^8-2x^9+2x^10+x^11+3x^12+x^13))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197058

/-- `ogf((1+3x+5x^2+4x^3-x^4-5x^5-2x^6-2x^7-x^8-6x^9-5x^10-4x^11-x^12)/(1-2x+x^2-x^3-2x^4-3x^5+x^6+2x^7+2x^8-2x^9+2x^10+x^11+3x^12+x^13))` -/
def P3583979346756199714.Spec : Prop :=
  ∀ n, P3583979346756199714.a n = A197058 (n + 1)

theorem P3583979346756199714.correct : P3583979346756199714.Spec := by
  intro n
  simp only [A197058, Nat.add_sub_cancel]

end A197058

/-! ## A197058.P8848211843801562969

`A197061(A374005(n+1))`
-/

namespace A197058.P8848211843801562969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A374005 (n + 1)).toNat

end

end A197058.P8848211843801562969

namespace A197058

/-- `A197061(A374005(n+1))` -/
def P8848211843801562969.Spec : Prop :=
  ∀ n, P8848211843801562969.a n = A197058 (n + 1)

end A197058

/-!
# A197059: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197059, there is no canonical definition to state claims against.
-/

/-! ## A197059.P15456830591752629150

`A197061(A374007(n+1))`
-/

namespace A197059.P15456830591752629150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A374007 (n + 1)).toNat

end

end A197059.P15456830591752629150

/-!
# A197060: Number of nX7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197060, there is no canonical definition to state claims against.
-/

/-! ## A197060.P2058683463797633194

`A197061(A374008(n+1))`
-/

namespace A197060.P2058683463797633194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A374008 (n + 1)).toNat

end

end A197060.P2058683463797633194

/-!
# A197061: T(n,k)=Number of nXk 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors equal to 2.

The programs for A197061, there is no canonical definition to state claims against.
-/

/-! ## A197061.P7101093452389672333

`A076935(A134398(n+1))`
-/

namespace A197061.P7101093452389672333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076935 (A134398 (n + 1)).toNat

end

end A197061.P7101093452389672333

/-! ## A197061.P12488707793085410915

`A039836(A126770(n))`
-/

namespace A197061.P12488707793085410915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A126770 n).toNat

end

end A197061.P12488707793085410915

/-! ## A197061.P17175648675675134687

`A100678(A129276(n))`
-/

namespace A197061.P17175648675675134687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100678 (A129276 n).toNat

end

end A197061.P17175648675675134687

/-! ## A197061.P16650508528025948296

`A108582(A142465(n))`
-/

namespace A197061.P16650508528025948296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A142465 n).toNat

end

end A197061.P16650508528025948296

/-! ## A197061.P15393142154549560328

`A111850(A177944(n))`
-/

namespace A197061.P15393142154549560328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A177944 n).toNat

end

end A197061.P15393142154549560328

/-!
# A197062: Successive records in A152676.

The programs for A197062, there is no canonical definition to state claims against.
-/

/-! ## A197062.P13536343094354550281

`record[A152676(n+1)]`
-/

namespace A197062.P13536343094354550281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P13536343094354550281

/-! ## A197062.P15159786474566520585

`record[A152676(-xor(n, -1))%(59*n-26)]`
-/

namespace A197062.P15159786474566520585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152676 (-Int.xor (n : ℤ) (-1)).toNat) ((59 * n : ℤ) - 26)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P15159786474566520585

/-! ## A197062.P11191341777648724335

`A000027(record[A152676(-xor(n, -1))])`
-/

namespace A197062.P11191341777648724335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A197062.P11191341777648724335

/-! ## A197062.P5818801462779593031

`record[A002144(n+1)-A002314(n+1)]`
-/

namespace A197062.P5818801462779593031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P5818801462779593031

/-! ## A197062.P15290358805234470693

`record[A002313(n+2)-A002314(n+1)]`
-/

namespace A197062.P15290358805234470693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P15290358805234470693

/-! ## A197062.P2740184956961648366

`record[A000040(A080147(n+1))-A002314(n+1)]`
-/

namespace A197062.P2740184956961648366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080147 (n + 1)).toNat - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P2740184956961648366

/-! ## A197062.P5051750757018614193

`record[A006530(A055131(n))-A002314(n+1)]`
-/

namespace A197062.P5051750757018614193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055131 n).toNat - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P5051750757018614193

/-!
# A197063: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197063, there is no canonical definition to state claims against.
-/

/-! ## A197063.P5842973479577444309

`A197069(∑[4*n]+1)`
-/

namespace A197063.P5842973479577444309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197063.P5842973479577444309

/-! ## A197063.P15810618059862135665

`record[A003982(n)*A197069(n+1)]`
-/

namespace A197063.P15810618059862135665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197063.P15810618059862135665

/-! ## A197063.P15341343832080170344

`record[gcd(A037012(n), A197069(n+1))]`
-/

namespace A197063.P15341343832080170344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A197069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197063.P15341343832080170344

/-!
# A197064: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197064, there is no canonical definition to state claims against.
-/

/-! ## A197064.P6651219500844067696

`A197069(∑[n+2]+4)`
-/

namespace A197064.P6651219500844067696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197064.P6651219500844067696

/-!
# A197065: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197065, there is no canonical definition to state claims against.
-/

/-! ## A197065.P3202604004355541195

`A197069(A374004(n+1))`
-/

namespace A197065.P3202604004355541195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374004 (n + 1)).toNat

end

end A197065.P3202604004355541195

/-! ## A197065.P819410804015240056

`A197069(A141214(n+1))`
-/

namespace A197065.P819410804015240056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A141214 (n + 1)).toNat

end

end A197065.P819410804015240056

/-!
# A197066: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197066, there is no canonical definition to state claims against.
-/

/-! ## A197066.P7946038973388068456

`A197069(A374005(n+1))`
-/

namespace A197066.P7946038973388068456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374005 (n + 1)).toNat

end

end A197066.P7946038973388068456

/-! ## A197066.P2360434118523011752

`A197069(Δ[A264443(n)])`
-/

namespace A197066.P2360434118523011752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (f1 (n + 1) - f1 n).toNat

end

end A197066.P2360434118523011752

/-!
# A197067: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197067, there is no canonical definition to state claims against.
-/

/-! ## A197067.P2459730175714848164

`A197069(A374007(n+1))`
-/

namespace A197067.P2459730175714848164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374007 (n + 1)).toNat

end

end A197067.P2459730175714848164

/-!
# A197068: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197068, there is no canonical definition to state claims against.
-/

/-! ## A197068.P2554440296041674394

`A197069(A374008(n+1))`
-/

namespace A197068.P2554440296041674394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374008 (n + 1)).toNat

end

end A197068.P2554440296041674394

/-!
# A197069: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197069, there is no canonical definition to state claims against.
-/

/-! ## A197069.P11474432389935047042

`A196696(n+1)+A185284(A025148(n))`
-/

namespace A197069.P11474432389935047042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (n + 1) + A185284 (A025148 n).toNat

end

end A197069.P11474432389935047042

/-! ## A197069.P5621106689733151077

`A196729(n+1)+A185284(A025148(n))`
-/

namespace A197069.P5621106689733151077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (n + 1) + A185284 (A025148 n).toNat

end

end A197069.P5621106689733151077

/-! ## A197069.P6109247229395220463

`A196696(n+1)+A185238(A028326(n))`
-/

namespace A197069.P6109247229395220463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (n + 1) + A185238 (A028326 n).toNat

end

end A197069.P6109247229395220463

/-! ## A197069.P9352567431729441654

`A196729(n+1)+A185238(A028326(n))`
-/

namespace A197069.P9352567431729441654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (n + 1) + A185238 (A028326 n).toNat

end

end A197069.P9352567431729441654

/-! ## A197069.P17321304315590266265

`A196696(n+1)+A086015(A273712(n))`
-/

namespace A197069.P17321304315590266265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (n + 1) + A086015 (A273712 n).toNat

end

end A197069.P17321304315590266265

/-!
# A197072: a(n) = prime(2^(n+1)) - 2*prime(2^n).

The programs for A197072, the canonical program `A197072.P14756618527467231371` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197072 has offset 0).

The definition of A197072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^(n+1))-2*A000040(2^n)` (program `A197072.P14756618527467231371`, by `A197072.P14756618527467231371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197072.P4728426870046244660

`A033844(n+1)-2*A033844(n)`
-/

namespace A197072.P4728426870046244660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - 2 * A033844 n

end

end A197072.P4728426870046244660

namespace A197072

/-- `A033844(n+1)-2*A033844(n)` -/
def P4728426870046244660.Spec : Prop :=
  ∀ n, P4728426870046244660.a n = A197072 n

end A197072

/-! ## A197072.P14756618527467231371

`A000040(2^(n+1))-2*A000040(2^n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A197072

/-- `A000040(2^(n+1))-2*A000040(2^n)` -/
def P14756618527467231371.Spec : Prop :=
  ∀ n, P14756618527467231371.a n = A197072 n

theorem P14756618527467231371.correct : P14756618527467231371.Spec := by
  intro n
  simp only [A197072]

end A197072

/-! ## A197072.P5299705183235571071

`Δ[A033844(n)]-A033844(n)`
-/

namespace A197072.P5299705183235571071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033844 n

end

end A197072.P5299705183235571071

namespace A197072

/-- `Δ[A033844(n)]-A033844(n)` -/
def P5299705183235571071.Spec : Prop :=
  ∀ n, P5299705183235571071.a n = A197072 n

theorem P5299705183235571071.correct : P5299705183235571071.Spec := by
  intro n
  simp only [A197072, Nat.add_sub_cancel, A197072.P5299705183235571071.f1, A197072.P5299705183235571071.a, A197072.P14756618527467231371.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033844, A033844.P10148935378251685530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A197072

/-! ## A197072.P18306280472874939761

`A073799(char[1]+1+n)%A033844(n)-C(2, n+2)`
-/

namespace A197072.P18306280472874939761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073799 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A033844 n) - (Nat.choose 2 (n + 2) : ℤ)

end

end A197072.P18306280472874939761

namespace A197072

/-- `A073799(char[1]+1+n)%A033844(n)-C(2, n+2)` -/
def P18306280472874939761.Spec : Prop :=
  ∀ n, P18306280472874939761.a n = A197072 n

end A197072

/-! ## A197072.P5079264578842508840

`A018249(n+1)-(A033844(n)+A018249(n))`
-/

namespace A197072.P5079264578842508840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (n + 1) - (A033844 n + A018249 n)

end

end A197072.P5079264578842508840

namespace A197072

/-- `A018249(n+1)-(A033844(n)+A018249(n))` -/
def P5079264578842508840.Spec : Prop :=
  ∀ n, P5079264578842508840.a n = A197072 n

theorem P5079264578842508840.correct : P5079264578842508840.Spec := by
  intro n
  simp only [A197072, Nat.add_sub_cancel, A197072.P5079264578842508840.a, A197072.P14756618527467231371.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018249, A018249.P2453322492412683053.a, A033844, A033844.P10148935378251685530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A197072

/-! ## A197072.P10668488696317378048

`A073799(n+1)%A033844(n)-A000007(n)`
-/

namespace A197072.P10668488696317378048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073799 (n + 1)) (A033844 n) - A000007 n

end

end A197072.P10668488696317378048

namespace A197072

/-- `A073799(n+1)%A033844(n)-A000007(n)` -/
def P10668488696317378048.Spec : Prop :=
  ∀ n, P10668488696317378048.a n = A197072 n

end A197072

/-! ## A197072.P16202459009815569123

`Δ[A051439(n)-A074325(n)]-(A051439(n)-A074325(n))`
-/

namespace A197072.P16202459009815569123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 n - A074325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A051439 n - A074325 n)

end

end A197072.P16202459009815569123

namespace A197072

/-- `Δ[A051439(n)-A074325(n)]-(A051439(n)-A074325(n))` -/
def P16202459009815569123.Spec : Prop :=
  ∀ n, P16202459009815569123.a n = A197072 n

end A197072

/-!
# A197073: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197073, there is no canonical definition to state claims against.
-/

/-! ## A197073.P5717210634496718469

`A197079(∑[4*n]+1)`
-/

namespace A197073.P5717210634496718469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197073.P5717210634496718469

/-! ## A197073.P4414492834431187642

`record[gcd(A114327(n), A197079(n+1))]`
-/

namespace A197073.P4414492834431187642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A197079 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197073.P4414492834431187642

/-!
# A197074: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197074, there is no canonical definition to state claims against.
-/

/-! ## A197074.P13009787779506968460

`A197079(∑[n+2]+4)`
-/

namespace A197074.P13009787779506968460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197074.P13009787779506968460

/-!
# A197075: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197075, there is no canonical definition to state claims against.
-/

/-! ## A197075.P1359339372311983493

`A197079(A374004(n+1))`
-/

namespace A197075.P1359339372311983493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374004 (n + 1)).toNat

end

end A197075.P1359339372311983493

/-! ## A197075.P13033354012107995502

`A197079(A141214(n+1))`
-/

namespace A197075.P13033354012107995502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A141214 (n + 1)).toNat

end

end A197075.P13033354012107995502

/-!
# A197076: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197076, there is no canonical definition to state claims against.
-/

/-! ## A197076.P4257148176270821892

`A197079(A374005(n+1))`
-/

namespace A197076.P4257148176270821892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374005 (n + 1)).toNat

end

end A197076.P4257148176270821892

/-! ## A197076.P113398020314026949

`A197079(Δ[A264443(n)])`
-/

namespace A197076.P113398020314026949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (f1 (n + 1) - f1 n).toNat

end

end A197076.P113398020314026949

/-!
# A197077: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197077, there is no canonical definition to state claims against.
-/

/-! ## A197077.P11275653994171538933

`A197079(A374007(n+1))`
-/

namespace A197077.P11275653994171538933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374007 (n + 1)).toNat

end

end A197077.P11275653994171538933

/-!
# A197078: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197078, there is no canonical definition to state claims against.
-/

/-! ## A197078.P15345504332600154948

`A197079(A374008(n+1))`
-/

namespace A197078.P15345504332600154948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374008 (n + 1)).toNat

end

end A197078.P15345504332600154948

/-!
# A197079: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197079, there is no canonical definition to state claims against.
-/

/-! ## A197079.P8767027754369265202

`A321936(A174116(n))+A196912(n+1)`
-/

namespace A197079.P8767027754369265202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A174116 n).toNat + A196912 (n + 1)

end

end A197079.P8767027754369265202

/-! ## A197079.P1137411642634064538

`A196912(n+1)+A025465(A023105(n))`
-/

namespace A197079.P1137411642634064538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) + A025465 (A023105 n).toNat

end

end A197079.P1137411642634064538

/-! ## A197079.P14548892609204877587

`A196912(n+1)+A044940(A014437(n))`
-/

namespace A197079.P14548892609204877587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) + A044940 (A014437 n).toNat

end

end A197079.P14548892609204877587

/-! ## A197079.P11370386899212409824

`A196912(n+1)+A025469(A045925(n))`
-/

namespace A197079.P11370386899212409824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) + A025469 (A045925 n).toNat

end

end A197079.P11370386899212409824

/-! ## A197079.P11556094169532530744

`A196912(n+1)-A016389(A022166(n))`
-/

namespace A197079.P11556094169532530744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) - A016389 (A022166 n).toNat

end

end A197079.P11556094169532530744

/-!
# A197081: Number of partitions of n into distinct positive quarter-squares (cf. A002620).

The programs for A197081, there is no canonical definition to state claims against.
-/

/-! ## A197081.P5993567260081046406

`A043562(∏{p}[A181600(n), #])`
-/

namespace A197081.P5993567260081046406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A197081.P5993567260081046406

/-! ## A197081.P12369647406432888422

`A004218(2^A130872(n+1))`
-/

namespace A197081.P12369647406432888422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P12369647406432888422

/-! ## A197081.P18303140582250908297

`A043537(2^A130872(n+1))`
-/

namespace A197081.P18303140582250908297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P18303140582250908297

/-! ## A197081.P6165828819637027799

`A055642(2^A130872(n+1))`
-/

namespace A197081.P6165828819637027799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P6165828819637027799

/-!
# A197082: Smallest number with n prime divisors (counted with multiplicity) which is not divisible by a(k) for any k < n.

The programs for A197082, there is no canonical definition to state claims against.
-/

/-! ## A197082.P8762960413991530242

`A003870(A000105(n))*A380888(n+1)`
-/

namespace A197082.P8762960413991530242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003870 (A000105 n).toNat * A380888 (n + 1)

end

end A197082.P8762960413991530242

/-!
# A197083: Number of solutions to a+b+c = d+e+f with 0 < a <= n, 0 <= b,c,d,e,f <= n.

The programs for A197083, the canonical program `A197083.P9899578085510339531` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197083 has offset 0).

The definition of A197083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197083.P1533457634696955374

`ogf((10x+36x^2+19x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A197083.P1533457634696955374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 36, 19, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A197083.P1533457634696955374

namespace A197083

/-- `ogf((10x+36x^2+19x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P1533457634696955374.Spec : Prop :=
  ∀ n, P1533457634696955374.a n = A197083 n

end A197083

/-! ## A197083.P9899578085510339531

`n*(n+1)*(66*n^3+209*n²+231*n+94)/120`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197083

/-- `n*(n+1)*(66*n^3+209*n²+231*n+94)/120` -/
def P9899578085510339531.Spec : Prop :=
  ∀ n, P9899578085510339531.a n = (A197083 n : ℚ)

end A197083

/-!
# A197084: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197084, there is no canonical definition to state claims against.
-/

/-! ## A197084.P12883242905741456719

`A197090(∑[4*n]+1)`
-/

namespace A197084.P12883242905741456719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197084.P12883242905741456719

/-! ## A197084.P16686500790640545139

`record[gcd(A003987(n), A197090(n+1))]`
-/

namespace A197084.P16686500790640545139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A197090 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197084.P16686500790640545139

/-!
# A197085: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197085, there is no canonical definition to state claims against.
-/

/-! ## A197085.P9080162350599959067

`A197090(∑[n+2]+4)`
-/

namespace A197085.P9080162350599959067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197085.P9080162350599959067

/-!
# A197086: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197086, there is no canonical definition to state claims against.
-/

/-! ## A197086.P5479481463169792957

`A197090(A374004(n+1))`
-/

namespace A197086.P5479481463169792957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374004 (n + 1)).toNat

end

end A197086.P5479481463169792957

/-! ## A197086.P16976722561232688557

`A197090(A141214(n+1))`
-/

namespace A197086.P16976722561232688557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A141214 (n + 1)).toNat

end

end A197086.P16976722561232688557

/-!
# A197087: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197087, there is no canonical definition to state claims against.
-/

/-! ## A197087.P18098800969132397770

`A197090(A374005(n+1))`
-/

namespace A197087.P18098800969132397770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374005 (n + 1)).toNat

end

end A197087.P18098800969132397770

/-!
# A197088: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197088, there is no canonical definition to state claims against.
-/

/-! ## A197088.P12115195396047874380

`A197090(A374007(n+1))`
-/

namespace A197088.P12115195396047874380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374007 (n + 1)).toNat

end

end A197088.P12115195396047874380

/-!
# A197089: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197089, there is no canonical definition to state claims against.
-/

/-! ## A197089.P3338834450923191514

`A197090(A374008(n+1))`
-/

namespace A197089.P3338834450923191514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374008 (n + 1)).toNat

end

end A197089.P3338834450923191514

/-!
# A197090: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197090, there is no canonical definition to state claims against.
-/

/-! ## A197090.P17289875925457722978

`A196636(n+1)-(A196646(n+1)-A000196(A196904(n+1)²))`
-/

namespace A197090.P17289875925457722978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (n + 1) - (A196646 (n + 1) - A000196 (A196904 (n + 1) ^ 2).toNat)

end

end A197090.P17289875925457722978

/-! ## A197090.P8283161055032524330

`A196641(n+1)-(A196646(n+1)-A000196(A196904(n+1)²))`
-/

namespace A197090.P8283161055032524330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (n + 1) - (A196646 (n + 1) - A000196 (A196904 (n + 1) ^ 2).toNat)

end

end A197090.P8283161055032524330

/-! ## A197090.P12022088918589774991

`A196636(n+1)-(A196809(n+1)-A000196(A196904(n+1)²))`
-/

namespace A197090.P12022088918589774991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (n + 1) - (A196809 (n + 1) - A000196 (A196904 (n + 1) ^ 2).toNat)

end

end A197090.P12022088918589774991

/-! ## A197090.P18164262930984442294

`A196641(n+1)-(A196809(n+1)-A000196(A196904(n+1)²))`
-/

namespace A197090.P18164262930984442294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (n + 1) - (A196809 (n + 1) - A000196 (A196904 (n + 1) ^ 2).toNat)

end

end A197090.P18164262930984442294

/-! ## A197090.P4665646515331170234

`A010448(T(n-1,k)+T(n-1,k-1))+1` with `a(0)=1`
-/

namespace A197090.P4665646515331170234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010448 (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n).toNat + 1

end

end A197090.P4665646515331170234

/-!
# A197091: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197091, there is no canonical definition to state claims against.
-/

/-! ## A197091.P9844554017269610094

`A197098(∑[4*n]+1)`
-/

namespace A197091.P9844554017269610094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197091.P9844554017269610094

/-! ## A197091.P1306450812944048529

`record[gcd(A197098(n+1), A231713(n))]`
-/

namespace A197091.P1306450812944048529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197098 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197091.P1306450812944048529

/-!
# A197092: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197092, the canonical program `A197092.P13488187914355065876` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197092 has offset 1).

The definition of A197092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197092.P3911105579599444904

`ogf((1+5x+x^2-2x^3)/(1-2x-3x^2+x^4))`
-/

namespace A197092.P3911105579599444904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1, -2] [1, -2, -3, 0, 1] n

end

end A197092.P3911105579599444904

namespace A197092

/-- `ogf((1+5x+x^2-2x^3)/(1-2x-3x^2+x^4))` -/
def P3911105579599444904.Spec : Prop :=
  ∀ n, P3911105579599444904.a n = A197092 (n + 1)

end A197092

/-! ## A197092.P13488187914355065876

`2*a(n-1)+3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=18, a(3)=55`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197092

/-- `2*a(n-1)+3*a(n-2)-a(n-4)` -/
def P13488187914355065876.Spec : Prop :=
  ∀ n, P13488187914355065876.a n = A197092 (n + 1)

theorem P13488187914355065876.correct : P13488187914355065876.Spec := by
  intro n
  simp only [A197092, Nat.add_sub_cancel]

end A197092

/-! ## A197092.P1430550956347027957

`A197098(∑[n+1]+2)`
-/

namespace A197092.P1430550956347027957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197092.P1430550956347027957

namespace A197092

/-- `A197098(∑[n+1]+2)` -/
def P1430550956347027957.Spec : Prop :=
  ∀ n, P1430550956347027957.a n = A197092 (n + 1)

end A197092

/-! ## A197092.P12964907894732813635

`record[gcd(2-A002260(n+1), A197098(n+1))]`
-/

namespace A197092.P12964907894732813635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002260 (n + 1)) (A197098 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197092.P12964907894732813635

namespace A197092

/-- `record[gcd(2-A002260(n+1), A197098(n+1))]` -/
def P12964907894732813635.Spec : Prop :=
  ∀ n, (P12964907894732813635.a n : ℤ) = A197092 (n + 1)

end A197092

/-! ## A197092.P16156434871078120142

`record[A197098(A022856(A004736(n+1)))]`
-/

namespace A197092.P16156434871078120142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A022856 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197092.P16156434871078120142

namespace A197092

/-- `record[A197098(A022856(A004736(n+1)))]` -/
def P16156434871078120142.Spec : Prop :=
  ∀ n, P16156434871078120142.a n = A197092 (n + 1)

end A197092

/-!
# A197093: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197093, there is no canonical definition to state claims against.
-/

/-! ## A197093.P16191708859167127806

`A197098(∑[n+2]+4)`
-/

namespace A197093.P16191708859167127806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197093.P16191708859167127806

/-!
# A197094: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197094, there is no canonical definition to state claims against.
-/

/-! ## A197094.P14517140742546606359

`A197098(A374004(n+1))`
-/

namespace A197094.P14517140742546606359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374004 (n + 1)).toNat

end

end A197094.P14517140742546606359

/-! ## A197094.P1647505382900679550

`A197098(A141214(n+1))`
-/

namespace A197094.P1647505382900679550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A141214 (n + 1)).toNat

end

end A197094.P1647505382900679550

/-!
# A197095: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197095, there is no canonical definition to state claims against.
-/

/-! ## A197095.P9028720578928215369

`A197098(A374005(n+1))`
-/

namespace A197095.P9028720578928215369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374005 (n + 1)).toNat

end

end A197095.P9028720578928215369

/-! ## A197095.P11890192655722603193

`A197098(Δ[A264443(n)])`
-/

namespace A197095.P11890192655722603193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (f1 (n + 1) - f1 n).toNat

end

end A197095.P11890192655722603193

/-!
# A197096: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197096, there is no canonical definition to state claims against.
-/

/-! ## A197096.P1846839243776619485

`A197098(A374007(n+1))`
-/

namespace A197096.P1846839243776619485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374007 (n + 1)).toNat

end

end A197096.P1846839243776619485

/-!
# A197097: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197097, there is no canonical definition to state claims against.
-/

/-! ## A197097.P13907358356597695897

`A197098(A374008(n+1))`
-/

namespace A197097.P13907358356597695897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374008 (n + 1)).toNat

end

end A197097.P13907358356597695897

/-!
# A197098: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197098, there is no canonical definition to state claims against.
-/

/-! ## A197098.P8836235959248215251

`A227394(A196590(n+1)+1)`
-/

namespace A197098.P8836235959248215251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A196590 (n + 1) + 1).toNat

end

end A197098.P8836235959248215251

/-! ## A197098.P3968008858382814407

`A131818(A157149(n)*A194949(n))`
-/

namespace A197098.P3968008858382814407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A157149 n * A194949 n).toNat

end

end A197098.P3968008858382814407

/-! ## A197098.P14638793634561560114

`A060431(A196590(n+1)%A206367(n+1))`
-/

namespace A197098.P14638793634561560114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (Int.tmod (A196590 (n + 1)) (A206367 (n + 1))).toNat

end

end A197098.P14638793634561560114

/-!
# A197099: Define the array k(n,x) = number of m such that tau(gcd(n,m)) is x where m runs from 1 to n. Also define h(n,x) = Sum_{d|n : tau(d) = x} d. The sequence contains numbers n such that k(n,x)*x = h(n,x) has at least one solution x.

The programs for A197099, there is no canonical definition to state claims against.
-/

/-! ## A197099.P10340808293371325711

`record[A046523(A024610(n²))]`
-/

namespace A197099.P10340808293371325711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A024610 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197099.P10340808293371325711

/-! ## A197099.P9042374458041296739

`record[A278523(A156043(n+1))]`
-/

namespace A197099.P9042374458041296739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A156043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197099.P9042374458041296739

