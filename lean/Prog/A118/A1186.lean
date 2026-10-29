import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A118600: Palindromes in base 9 (written in base 9).

The programs for A118600, there is no canonical definition to state claims against.
-/

/-! ## A118600.P17117112181845401259

`A007095(record[A265523(n)])`
-/

namespace A118600.P17117112181845401259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118600.P17117112181845401259

/-! ## A118600.P14738120308339276980

`A007095(A029955(n+1))`
-/

namespace A118600.P14738120308339276980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A029955 (n + 1)).toNat

end

end A118600.P14738120308339276980

/-! ## A118600.P584694143426763066

`∩[A002113(n+1), A007095(n)]`
-/

namespace A118600.P584694143426763066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118600.P584694143426763066

/-! ## A118600.P7614682267758008761

`A007095(eq[0, A055959(n)])`
-/

namespace A118600.P7614682267758008761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118600.P7614682267758008761

/-! ## A118600.P13796508593222042481

`A007095(eq[n, A030108(n)])`
-/

namespace A118600.P13796508593222042481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118600.P13796508593222042481

/-! ## A118600.P10643811544849719481

`record[A047813(A004728(n))]`
-/

namespace A118600.P10643811544849719481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A004728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118600.P10643811544849719481

/-! ## A118600.P2957914201386130930

`record[A047813(A007095(n))]`
-/

namespace A118600.P2957914201386130930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118600.P2957914201386130930

/-! ## A118600.P5771957347869771869

`record[A004184(A262038(n))]`
-/

namespace A118600.P5771957347869771869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A262038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118600.P5771957347869771869

/-! ## A118600.P5465525080559853911

`record[A265525(A004184(n))]`
-/

namespace A118600.P5465525080559853911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A004184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118600.P5465525080559853911

/-! ## A118600.P6674264692077169289

`record[A235049(A047813(n))]`
-/

namespace A118600.P6674264692077169289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A047813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118600.P6674264692077169289

/-! ## A118600.P11311633264856371370

`record[A265525(A235049(n))]`
-/

namespace A118600.P11311633264856371370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118600.P11311633264856371370

/-! ## A118600.P16652383040174705644

`filter[A007095(n), A136522(#)]`
-/

namespace A118600.P16652383040174705644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A118600.P16652383040174705644

/-! ## A118600.P17907544926722092410

`eq[n, A004184(A004086(n))]`
-/

namespace A118600.P17907544926722092410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118600.P17907544926722092410

/-! ## A118600.P6446201890168895065

`eq[A004184(n), A082216(n)]`
-/

namespace A118600.P6446201890168895065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118600.P6446201890168895065

/-! ## A118600.P11224689148011954288

`eq[A056965(n), A102683(n)]`
-/

namespace A118600.P11224689148011954288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118600.P11224689148011954288

/-! ## A118600.P1199970993200258690

`eq[n, A004184(A261423(n))]`
-/

namespace A118600.P1199970993200258690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A261423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118600.P1199970993200258690

/-! ## A118600.P6357016220834194412

`eq[A004184(n), A262037(n)]`
-/

namespace A118600.P6357016220834194412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118600.P6357016220834194412

/-! ## A118600.P14017923171872553006

`eq[A004184(n), A262038(n)]`
-/

namespace A118600.P14017923171872553006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118600.P14017923171872553006

/-! ## A118600.P15385508260997204828

`eq[n, A004184(A265558(n))]`
-/

namespace A118600.P15385508260997204828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A265558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118600.P15385508260997204828

/-! ## A118600.P3927131959369623776

`eq[A102683(n), A256756(n)]`
-/

namespace A118600.P3927131959369623776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118600.P3927131959369623776

/-!
# A118601: Partial sums of A058129.

The programs for A118601, there is no canonical definition to state claims against.
-/

/-! ## A118601.P12224073016700686346

`∑[A058129(n+1)]`
-/

namespace A118601.P12224073016700686346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118601.P12224073016700686346

/-! ## A118601.P8935164017003055286

`∑[A125697(∑[n]+1)]`
-/

namespace A118601.P8935164017003055286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125697 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118601.P8935164017003055286

/-! ## A118601.P14150288493734460262

`∑[record[A125699(n+1)]]`
-/

namespace A118601.P14150288493734460262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118601.P14150288493734460262

/-! ## A118601.P1581038117993875472

`∑[record[A058129(Δ[ceil(sqrt(n^3))])]]`
-/

namespace A118601.P1581038117993875472
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 (f3 (n + 1) - f3 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118601.P1581038117993875472

/-!
# A118602: Start with 1 and repeatedly reverse the digits and add 21 to get the next term.

The programs for A118602, there is no canonical definition to state claims against.
-/

/-! ## A118602.P13596807652111783152

`A004086(a(n-1))+21` with `a(0)=1`
-/

namespace A118602.P13596807652111783152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 21

end

end A118602.P13596807652111783152

/-!
# A118603: Start with 1 and repeatedly reverse the digits and add 22 to get the next term.

The programs for A118603, there is no canonical definition to state claims against.
-/

/-! ## A118603.P7103648890124684213

`A004086(a(n-1))+22` with `a(0)=1`
-/

namespace A118603.P7103648890124684213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 22

end

end A118603.P7103648890124684213

/-!
# A118604: a(n) = a(n-1) mod 13 + a(n-2) mod 8, with a(0) = 0 and a(1) = 1.

The programs for A118604, the canonical program `A118604.P1584790690969479076` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118604 has offset 0).

The definition of A118604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)%13+a(n-2)%8` (program `A118604.P1584790690969479076`, by `A118604.P1584790690969479076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118604.P1584790690969479076

`a(n-1)%13+a(n-2)%8` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118604

/-- `a(n-1)%13+a(n-2)%8` -/
def P1584790690969479076.Spec : Prop :=
  ∀ n, (P1584790690969479076.a n : ℤ) = A118604 n

theorem P1584790690969479076.correct : P1584790690969479076.Spec := by
  intro n
  simp only [A118604]

end A118604

/-!
# A118605: a(0)=0, a(1)=1; and for n>1: if n in binary representation is contained in the concatenation of all preceding terms then a(n)=1 else a(n)=0.

The programs for A118605, there is no canonical definition to state claims against.
-/

/-! ## A118605.P2474321429005825908

`Δ[A119026(C(2, n+2)-1+n)]`
-/

namespace A118605.P2474321429005825908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 ((Nat.choose 2 (n + 2) : ℤ) - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P2474321429005825908

/-! ## A118605.P3585996502875291649

`Δ[A119026(A028310(n)-1)]`
-/

namespace A118605.P3585996502875291649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P3585996502875291649

/-! ## A118605.P4636659685658838977

`Δ[A119026(A057428(n)+n)]`
-/

namespace A118605.P4636659685658838977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P4636659685658838977

/-! ## A118605.P10564590699232900750

`Δ[A119026(A004273(n)-n)]`
-/

namespace A118605.P10564590699232900750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P10564590699232900750

/-! ## A118605.P2381126952565332898

`Δ[A119026(n-A178334(n))]`
-/

namespace A118605.P2381126952565332898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P2381126952565332898

/-! ## A118605.P15419090671282851887

`Δ[A119026(n-A057428(n)²)]`
-/

namespace A118605.P15419090671282851887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P15419090671282851887

/-! ## A118605.P13848654904913000194

`A119026(n)-A119026((2*n)%(n+1))`
-/

namespace A118605.P13848654904913000194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 n - A119026 (2 * n % (n + 1))

end

end A118605.P13848654904913000194

/-! ## A118605.P12996909182527818959

`Δ[A119026(A004524(A004273(n)))]`
-/

namespace A118605.P12996909182527818959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P12996909182527818959

/-! ## A118605.P16348686107022246450

`Δ[A119026(A004526(A004275(n)))]`
-/

namespace A118605.P16348686107022246450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P16348686107022246450

/-! ## A118605.P13614443326744019946

`Δ[A119026(A002262(A027379(n)))]`
-/

namespace A118605.P13614443326744019946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118605.P13614443326744019946

/-!
# A118606: Start with 1 and repeatedly reverse the digits and add 17 to get the next term.

The programs for A118606, there is no canonical definition to state claims against.
-/

/-! ## A118606.P11412898719018427943

`A004086(a(n-1))+17` with `a(0)=1`
-/

namespace A118606.P11412898719018427943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 17

end

end A118606.P11412898719018427943

/-!
# A118607: Start with 1 and repeatedly reverse the digits and add 18 to get the next term.

The programs for A118607, there is no canonical definition to state claims against.
-/

/-! ## A118607.P11423066366617234770

`A004086(a(n-1))+18` with `a(0)=1`
-/

namespace A118607.P11423066366617234770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 18

end

end A118607.P11423066366617234770

/-!
# A118608: Start with 1 and repeatedly reverse the digits and add 19 to get the next term.

The programs for A118608, there is no canonical definition to state claims against.
-/

/-! ## A118608.P11631397107262615643

`A004086(a(n-1))+19` with `a(0)=1`
-/

namespace A118608.P11631397107262615643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 19

end

end A118608.P11631397107262615643

/-!
# A118609: Start with 1 and repeatedly reverse the digits and add 23 to get the next term.

The programs for A118609, there is no canonical definition to state claims against.
-/

/-! ## A118609.P2306571108119157979

`A004086(a(n-1))+23` with `a(0)=1`
-/

namespace A118609.P2306571108119157979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 23

end

end A118609.P2306571108119157979

/-!
# A118610: Start with 1 and repeatedly reverse the digits and add 24 to get the next term.

The programs for A118610, there is no canonical definition to state claims against.
-/

/-! ## A118610.P3947736059910593033

`A004086(a(n-1))+24` with `a(0)=1`
-/

namespace A118610.P3947736059910593033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 24

end

end A118610.P3947736059910593033

/-!
# A118612: 

The programs for A118612, there is no canonical definition to state claims against.
-/

/-! ## A118612.P9070789967538262786

`A000129(A331399(n+1))`
-/

namespace A118612.P9070789967538262786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A331399 (n + 1)).toNat

end

end A118612.P9070789967538262786

/-!
# A118613: Start with 1 and repeatedly reverse the digits and add 27 to get the next term.

The programs for A118613, there is no canonical definition to state claims against.
-/

/-! ## A118613.P15793171279685816058

`A004086(a(n-1))+27` with `a(0)=1`
-/

namespace A118613.P15793171279685816058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 27

end

end A118613.P15793171279685816058

/-!
# A118614: Start with 1 and repeatedly reverse the digits and add 28 to get the next term.

The programs for A118614, there is no canonical definition to state claims against.
-/

/-! ## A118614.P9570952457868762626

`A004086(a(n-1))+28` with `a(0)=1`
-/

namespace A118614.P9570952457868762626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 28

end

end A118614.P9570952457868762626

/-!
# A118615: Start with 1 and repeatedly reverse the digits and add 26 to get the next term.

The programs for A118615, there is no canonical definition to state claims against.
-/

/-! ## A118615.P2939316902920270511

`A004086(a(n-1))+26` with `a(0)=1`
-/

namespace A118615.P2939316902920270511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 26

end

end A118615.P2939316902920270511

/-!
# A118616: Start with 1 and repeatedly reverse the digits and add 29 to get the next term.

The programs for A118616, there is no canonical definition to state claims against.
-/

/-! ## A118616.P4855716347360888363

`A004086(a(n-1))+29` with `a(0)=1`
-/

namespace A118616.P4855716347360888363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 29

end

end A118616.P4855716347360888363

/-!
# A118617: Start with 1 and repeatedly reverse the digits and add 31 to get the next term.

The programs for A118617, there is no canonical definition to state claims against.
-/

/-! ## A118617.P414036032177849171

`A004086(a(n-1))+31` with `a(0)=1`
-/

namespace A118617.P414036032177849171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 31

end

end A118617.P414036032177849171

/-!
# A118618: Start with 1 and repeatedly reverse the digits and add 32 to get the next term.

The programs for A118618, there is no canonical definition to state claims against.
-/

/-! ## A118618.P7209876370939243966

`A004086(a(n-1))+32` with `a(0)=1`
-/

namespace A118618.P7209876370939243966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 32

end

end A118618.P7209876370939243966

/-!
# A118619: Start with 1 and repeatedly reverse the digits and add 33 to get the next term.

The programs for A118619, the canonical program `A118619.P3948226898142737452` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118619 has offset 1).

The definition of A118619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118619.P3948226898142737452

`a(n-3)` with `a(0)=1, a(1)=34, a(2)=76, a(3)=100`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118619

/-- `a(n-3)` -/
def P3948226898142737452.Spec : Prop :=
  ∀ n, (P3948226898142737452.a n : ℤ) = A118619 (n + 1)

theorem P3948226898142737452.correct : P3948226898142737452.Spec := by
  intro n
  simp only [A118619, Nat.add_sub_cancel]

end A118619

/-!
# A118620: Start with 1 and repeatedly reverse the digits and add 45 to get the next term.

The programs for A118620, there is no canonical definition to state claims against.
-/

/-! ## A118620.P11779549812807790865

`A004086(a(n-1))+45` with `a(0)=1`
-/

namespace A118620.P11779549812807790865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 45

end

end A118620.P11779549812807790865

/-!
# A118623: a(0) = 1, a(n+1) = a(n)^2 + number of divisors of a(n).

The programs for A118623, the canonical program `A118623.P9012952356885345567` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118623 has offset 0).

The definition of A118623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118623.P9012952356885345567

`A000290(a(n-1))+A000005(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A118623

/-- `A000290(a(n-1))+A000005(a(n-1))` -/
def P9012952356885345567.Spec : Prop :=
  ∀ n, P9012952356885345567.a n = A118623 n

theorem P9012952356885345567.correct : P9012952356885345567.Spec := by
  intro n
  simp only [A118623]

end A118623

/-! ## A118623.P7856211066089534750

`A011782(n)+A000290(a(n-1))` with `a(0)=1`
-/

namespace A118623.P7856211066089534750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 n + A000290 (a (n - 1)).toNat

end

end A118623.P7856211066089534750

namespace A118623

/-- `A011782(n)+A000290(a(n-1))` -/
def P7856211066089534750.Spec : Prop :=
  ∀ n, P7856211066089534750.a n = A118623 n

end A118623

/-!
# A118624: Primes of the form prime(n+1)*prime(n+3) - prime(n)*prime(n+2) - 1, ordered by n.

The programs for A118624, the canonical program `A118624.P709661768869797743` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118624 has offset 1).

The definition of A118624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118624.P709661768869797743

`p?[A226502(n+1)-1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A118624

/-- `p?[A226502(n+1)-1]` -/
def P709661768869797743.Spec : Prop :=
  ∀ n, P709661768869797743.a n = A118624 (n + 1)

theorem P709661768869797743.correct : P709661768869797743.Spec := by
  intro n
  simp only [A118624, Nat.add_sub_cancel]

end A118624

/-! ## A118624.P16012536344067265364

`p?[Δ[A090076(n+1)]-1]`
-/

namespace A118624.P16012536344067265364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P16012536344067265364

namespace A118624

/-- `p?[Δ[A090076(n+1)]-1]` -/
def P16012536344067265364.Spec : Prop :=
  ∀ n, P16012536344067265364.a n = A118624 (n + 1)

theorem P16012536344067265364.correct : P16012536344067265364.Spec := by
  intro n
  simp only [A118624, Nat.add_sub_cancel, A118624.P16012536344067265364.f2, A118624.P16012536344067265364.f1, A118624.P16012536344067265364.a, A118624.P709661768869797743.f1, A118624.P709661768869797743.a, A090076, A090076.P13758090141823920472.a, A226502, A226502.P5184286944715152525.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118624

/-! ## A118624.P3578449099478909239

`p?[A090076(n+2)-(A090076(n+1)+1)]`
-/

namespace A118624.P3578449099478909239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 2) - (A090076 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P3578449099478909239

namespace A118624

/-- `p?[A090076(n+2)-(A090076(n+1)+1)]` -/
def P3578449099478909239.Spec : Prop :=
  ∀ n, P3578449099478909239.a n = A118624 (n + 1)

theorem P3578449099478909239.correct : P3578449099478909239.Spec := by
  intro n
  simp only [A118624, Nat.add_sub_cancel, A118624.P3578449099478909239.f1, A118624.P3578449099478909239.a, A118624.P709661768869797743.f1, A118624.P709661768869797743.a, A090076, A090076.P13758090141823920472.a, A226502, A226502.P5184286944715152525.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118624

/-! ## A118624.P4291056913954488330

`p?[A176098(n+4)-A176098(n+3)-1]`
-/

namespace A118624.P4291056913954488330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 4) - A176098 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P4291056913954488330

namespace A118624

/-- `p?[A176098(n+4)-A176098(n+3)-1]` -/
def P4291056913954488330.Spec : Prop :=
  ∀ n, P4291056913954488330.a n = A118624 (n + 1)

end A118624

/-! ## A118624.P14967441859859513503

`p?[A333747(2*(n+2))-A333747(2*(n+1))-1]`
-/

namespace A118624.P14967441859859513503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 2)) - A333747 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P14967441859859513503

namespace A118624

/-- `p?[A333747(2*(n+2))-A333747(2*(n+1))-1]` -/
def P14967441859859513503.Spec : Prop :=
  ∀ n, P14967441859859513503.a n = A118624 (n + 1)

end A118624

/-!
# A118626: Number of permutations of digits of n which denote a palindromic number.

The programs for A118626, there is no canonical definition to state claims against.
-/

/-! ## A118626.P13361526485166826204

`A136522(xor(n², A004086(n)²))`
-/

namespace A118626.P13361526485166826204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (Int.xor (n ^ 2 : ℤ) (A004086 n ^ 2)).toNat

end

end A118626.P13361526485166826204

/-! ## A118626.P1870257039872486446

`A010054(A347648(n)^A241173(n))`
-/

namespace A118626.P1870257039872486446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.roundAway ((A347648 n : ℚ) ^ (A241173 n : ℤ))).toNat

end

end A118626.P1870257039872486446

/-! ## A118626.P3579288631499781142

`C(A071669(n), A062279(A062279(n)))`
-/

namespace A118626.P3579288631499781142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071669 n).toNat (A062279 (A062279 n).toNat).toNat

end

end A118626.P3579288631499781142

/-! ## A118626.P1227684141164885025

`C(A016272(A075790(2*n+3)), A061674(n))`
-/

namespace A118626.P1227684141164885025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016272 (A075790 (2 * n + 3)).toNat).toNat (A061674 n).toNat

end

end A118626.P1227684141164885025

/-! ## A118626.P10738174518393324629

`A118553(gcd(A061901(n), A138869(n+1)))`
-/

namespace A118626.P10738174518393324629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118553 (Int.gcd (A061901 n) (A138869 (n + 1)))

end

end A118626.P10738174518393324629

/-!
# A118628: "Say what you see".

The programs for A118628, there is no canonical definition to state claims against.
-/

/-! ## A118628.P16003059174507070902

`A047842(a(n-1))` with `a(0)=3`
-/

namespace A118628.P16003059174507070902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A047842 (a (n - 1)).toNat

end

end A118628.P16003059174507070902

/-!
# A118631: Start with 1 and repeatedly reverse the digits and add 34 to get the next term.

The programs for A118631, there is no canonical definition to state claims against.
-/

/-! ## A118631.P6621657646342179958

`A004086(a(n-1))+34` with `a(0)=1`
-/

namespace A118631.P6621657646342179958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 34

end

end A118631.P6621657646342179958

/-!
# A118632: Start with 1 and repeatedly reverse the digits and add 35 to get the next term.

The programs for A118632, there is no canonical definition to state claims against.
-/

/-! ## A118632.P17422504655673450587

`A004086(a(n-1))+35` with `a(0)=1`
-/

namespace A118632.P17422504655673450587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 35

end

end A118632.P17422504655673450587

/-!
# A118633: Start with 1 and repeatedly reverse the digits and add 37 to get the next term.

The programs for A118633, there is no canonical definition to state claims against.
-/

/-! ## A118633.P7696538602950206

`A004086(a(n-1))+37` with `a(0)=1`
-/

namespace A118633.P7696538602950206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 37

end

end A118633.P7696538602950206

/-!
# A118634: Start with 1 and repeatedly reverse the digits and add 38 to get the next term.

The programs for A118634, there is no canonical definition to state claims against.
-/

/-! ## A118634.P16102497196979916450

`A004086(a(n-1))+38` with `a(0)=1`
-/

namespace A118634.P16102497196979916450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 38

end

end A118634.P16102497196979916450

/-!
# A118635: Start with 1 and repeatedly reverse the digits and add 39 to get the next term.

The programs for A118635, there is no canonical definition to state claims against.
-/

/-! ## A118635.P7241219788626978325

`A004086(a(n-1))+39` with `a(0)=1`
-/

namespace A118635.P7241219788626978325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 39

end

end A118635.P7241219788626978325

/-!
# A118636: Start with 1 and repeatedly reverse the digits and add 40 to get the next term.

The programs for A118636, there is no canonical definition to state claims against.
-/

/-! ## A118636.P14580607283660558425

`A004086(a(n-1))+40` with `a(0)=1`
-/

namespace A118636.P14580607283660558425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 40

end

end A118636.P14580607283660558425

/-!
# A118637: Start with 1 and repeatedly reverse the digits and add 30 to get the next term.

The programs for A118637, there is no canonical definition to state claims against.
-/

/-! ## A118637.P2840889508477785568

`A004086(a(n-1))+30` with `a(0)=1`
-/

namespace A118637.P2840889508477785568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 30

end

end A118637.P2840889508477785568

/-!
# A118638: Lesser of a twin-prime pair where both are expressible as the sum of two triangular numbers.

The programs for A118638, there is no canonical definition to state claims against.
-/

/-! ## A118638.P354694627955876293

`A117314(Δ[n²])`
-/

namespace A118638.P354694627955876293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118638.P354694627955876293

/-! ## A118638.P9291795621856276577

`A117314(2*(n+1))-2`
-/

namespace A118638.P9291795621856276577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (2 * (n + 1)) - 2

end

end A118638.P9291795621856276577

/-! ## A118638.P2083693799273438548

`record[A117314(A000265(n+1))]`
-/

namespace A118638.P2083693799273438548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118638.P2083693799273438548

/-! ## A118638.P14941642556361918731

`record[A117314(n+1)/A000034(n)]`
-/

namespace A118638.P14941642556361918731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117314 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118638.P14941642556361918731

/-! ## A118638.P2160086608910120315

`record[A062157(n+1)*A117314(n+1)]`
-/

namespace A118638.P2160086608910120315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A117314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118638.P2160086608910120315

/-! ## A118638.P3220211340660166811

`∩[A001359(n+1), A117314(n+1)]`
-/

namespace A118638.P3220211340660166811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P3220211340660166811

/-! ## A118638.P3781143815592227472

`∩[A117314(n+1), A378983(n+1)]`
-/

namespace A118638.P3781143815592227472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P3781143815592227472

/-! ## A118638.P1535146126093711187

`∩[A117314(n+1), A087693(n)]`
-/

namespace A118638.P1535146126093711187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P1535146126093711187

/-! ## A118638.P13105708492855653426

`∩[A054799(n+1), A117314(n+1)]`
-/

namespace A118638.P13105708492855653426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P13105708492855653426

/-! ## A118638.P9694060794709593592

`∩[A111166(n+1), A117314(n+1)]`
-/

namespace A118638.P9694060794709593592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P9694060794709593592

/-! ## A118638.P17564766396100393158

`∩[A117314(n+1), A124588(n+1)]`
-/

namespace A118638.P17564766396100393158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P17564766396100393158

/-! ## A118638.P4839237807900846222

`∩[A117314(n+1), A181747(n+1)]`
-/

namespace A118638.P4839237807900846222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P4839237807900846222

/-! ## A118638.P9500608921012406649

`∩[A117314(n+1), A238528(n+1)]`
-/

namespace A118638.P9500608921012406649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P9500608921012406649

/-! ## A118638.P11828739959880853990

`∩[A063700(n+1), A117314(n+1)]`
-/

namespace A118638.P11828739959880853990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P11828739959880853990

/-! ## A118638.P3095599648819450023

`∩[A063693(n+1), A117314(n+1)]`
-/

namespace A118638.P3095599648819450023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P3095599648819450023

/-! ## A118638.P11399626499370208484

`∩[A117314(n+1), A280255(n+1)]`
-/

namespace A118638.P11399626499370208484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P11399626499370208484

/-! ## A118638.P9145313720045165590

`∩[A064076(n+1), A117314(n+1)]`
-/

namespace A118638.P9145313720045165590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P9145313720045165590

/-! ## A118638.P14288250708833764459

`∩[A117314(n+1), A229064(n+1)]`
-/

namespace A118638.P14288250708833764459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P14288250708833764459

/-! ## A118638.P15288824129750709406

`∩[A117314(n+1), A267944(n+1)]`
-/

namespace A118638.P15288824129750709406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P15288824129750709406

/-! ## A118638.P15589183040531219950

`∩[A117314(n+1), A120431(n+1)]`
-/

namespace A118638.P15589183040531219950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118638.P15589183040531219950

/-!
# A118639: Smallest number expressible using the next Roman-numeral symbol under the vinculum system.

The programs for A118639, there is no canonical definition to state claims against.
-/

/-! ## A118639.P1562276117517998207

`ogf((1+4x-x^2)/(1-10x^2))`
-/

namespace A118639.P1562276117517998207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, 0, -10] n

end

end A118639.P1562276117517998207

/-! ## A118639.P4932728098568293132

`10*a(n-2)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A118639.P4932728098568293132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  10 * a (n - 2)

end

end A118639.P4932728098568293132

/-! ## A118639.P13145576410725264459

`a(n-2)/(1-9/10)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A118639.P13145576410725264459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a (n - 2) / (1 - (9 : ℚ) / 10)

end

end A118639.P13145576410725264459

/-! ## A118639.P1412578333469695358

`∪[Δ[10^n], A093141(n)]`
-/

namespace A118639.P1412578333469695358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A118639.P1412578333469695358

/-! ## A118639.P18081675290292315777

`A046030(A134683(n)+1)`
-/

namespace A118639.P18081675290292315777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (A134683 n + 1).toNat

end

end A118639.P18081675290292315777

/-!
# A118640: Result of left concatenation of the next Roman-numeral symbol.

The programs for A118640, there is no canonical definition to state claims against.
-/

/-! ## A118640.P11272906879242107094

`∑[ogf((1+5x)/(1-10x^2))]`
-/

namespace A118640.P11272906879242107094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118640.P11272906879242107094

/-! ## A118640.P1673931331522195379

`ogf((1+5x)/(1-x-10x^2+10x^3))`
-/

namespace A118640.P1673931331522195379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -1, -10, 10] n

end

end A118640.P1673931331522195379

/-! ## A118640.P17103449668780821701

`∑[10*a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A118640.P17103449668780821701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118640.P17103449668780821701

/-! ## A118640.P1625737403788087485

`10*a(n-2)+6` with `a(0)=1, a(1)=6`
-/

namespace A118640.P1625737403788087485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  10 * a (n - 2) + 6

end

end A118640.P1625737403788087485

/-! ## A118640.P6477084375564393161

`∑[∏[abs(a(n-2))]]` with `a(0)=1, a(1)=5, a(2)=2`
-/

namespace A118640.P6477084375564393161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 2] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118640.P6477084375564393161

/-!
# A118642: Two finite groups are conformal if they have the same number of elements of each order. A natural number n is said to be a conformal order if there exist two conformal groups of order n which are not isomorphic to each other. The sequence lists the conformal orders.

The programs for A118642, there is no canonical definition to state claims against.
-/

/-! ## A118642.P1926541399693968279

`lt[A355038(n^ceil(atan(n))), n*(2*n^4+10*n²+3)/15]`
-/

namespace A118642.P1926541399693968279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355038 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 * n ^ 4 + 10 * n ^ 2 + 3 : ℚ) / 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A118642.P1926541399693968279

/-! ## A118642.P17979596945590288138

`lt[A279891(A064549(n+1)), n]+1`
-/

namespace A118642.P17979596945590288138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A064549 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A118642.P17979596945590288138

/-! ## A118642.P3178430365377440375

`lt[A079254(3*(n+1)), A003557(A253909(n))]`
-/

namespace A118642.P3178430365377440375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079254 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118642.P3178430365377440375

/-! ## A118642.P17354721276022858439

`∩[A132829(n+1), A228957(n+1)]`
-/

namespace A118642.P17354721276022858439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118642.P17354721276022858439

/-!
# A118643: Lucky numbers whose prime factors are also lucky numbers.

The programs for A118643, there is no canonical definition to state claims against.
-/

/-! ## A118643.P490085412636378964

`A043772(n+1)-A067169(A054252(n))`
-/

namespace A118643.P490085412636378964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1) - A067169 ((A054252 n).toNat + 11)

end

end A118643.P490085412636378964

/-!
# A118644: Number of distinct (n red, n blue, n green)-bead necklaces.

The programs for A118644, there is no canonical definition to state claims against.
-/

/-! ## A118644.P15543965651040841158

`A208183(∑[n+3]+n+3)`
-/

namespace A118644.P15543965651040841158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A118644.P15543965651040841158

/-! ## A118644.P16369785532993342731

`record[A208183(eq[1, A208183(n+2)])]`
-/

namespace A118644.P16369785532993342731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118644.P16369785532993342731

/-! ## A118644.P16728717885024674056

`record[A208183(lt[A208183(n+2), 2])]`
-/

namespace A118644.P16728717885024674056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118644.P16728717885024674056

/-! ## A118644.P18101613428219953370

`record[root(A208183(n), A208183(n+2))]`
-/

namespace A118644.P18101613428219953370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208183 n : ℝ) ^ (1 / (A208183 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118644.P18101613428219953370

/-! ## A118644.P11145147324614992844

`record[gcd(A002262(n+4), A208183(n))]`
-/

namespace A118644.P11145147324614992844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 4)) (A208183 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118644.P11145147324614992844

/-!
# A118645: Number of binary strings of length n such that there exist three consecutive digits where at least two of them are 1's.

The programs for A118645, the canonical program `A118645.P9988651607657554541` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118645 has offset 0).

The definition of A118645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118645.P12964131346682133226

`ogf((x^2+x^3)/(1-3x+2x^2-x^3+2x^4))`
-/

namespace A118645.P12964131346682133226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, -3, 2, -1, 2] n

end

end A118645.P12964131346682133226

namespace A118645

/-- `ogf((x^2+x^3)/(1-3x+2x^2-x^3+2x^4))` -/
def P12964131346682133226.Spec : Prop :=
  ∀ n, P12964131346682133226.a n = A118645 n

end A118645

/-! ## A118645.P12056922728682674226

`3*2^(n-3)+a(n-1)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A118645.P12056922728682674226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) + a (n - 1) + a (n - 3)

end

end A118645.P12056922728682674226

namespace A118645

/-- `3*2^(n-3)+a(n-1)+a(n-3)` -/
def P12056922728682674226.Spec : Prop :=
  ∀ n, P12056922728682674226.a n = (A118645 n : ℚ)

end A118645

/-! ## A118645.P9988651607657554541

`2^n-A000930(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A118645

/-- `2^n-A000930(n+2)` -/
def P9988651607657554541.Spec : Prop :=
  ∀ n, P9988651607657554541.a n = A118645 n

theorem P9988651607657554541.correct : P9988651607657554541.Spec := by
  intro n
  simp only [A118645]

end A118645

/-! ## A118645.P17389865974567737152

`2^n-record[A078012(n)]`
-/

namespace A118645.P17389865974567737152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118645.P17389865974567737152

namespace A118645

/-- `2^n-record[A078012(n)]` -/
def P17389865974567737152.Spec : Prop :=
  ∀ n, P17389865974567737152.a n = A118645 n

end A118645

/-! ## A118645.P4236778918557805342

`2^n-A068921(n+1)`
-/

namespace A118645.P4236778918557805342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A068921 (n + 1)

end

end A118645.P4236778918557805342

namespace A118645

/-- `2^n-A068921(n+1)` -/
def P4236778918557805342.Spec : Prop :=
  ∀ n, P4236778918557805342.a n = A118645 n

end A118645

/-! ## A118645.P5437544139053145390

`∑[ceil(2^(n-1))]-1-∑[A078012(n+2)]`
-/

namespace A118645.P5437544139053145390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A118645.P5437544139053145390

namespace A118645

/-- `∑[ceil(2^(n-1))]-1-∑[A078012(n+2)]` -/
def P5437544139053145390.Spec : Prop :=
  ∀ n, P5437544139053145390.a n = A118645 n

end A118645

/-! ## A118645.P8353646803756962598

`A143281(n)+A008466(n)`
-/

namespace A118645.P8353646803756962598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143281 n + A008466 n

end

end A118645.P8353646803756962598

namespace A118645

/-- `A143281(n)+A008466(n)` -/
def P8353646803756962598.Spec : Prop :=
  ∀ n, P8353646803756962598.a n = A118645 n

theorem P8353646803756962598.correct : P8353646803756962598.Spec := by
  intro n
  simp only [A118645, Nat.add_sub_cancel, A118645.P8353646803756962598.a, A118645.P9988651607657554541.a, A000930, A000930.P1809025983395262284.a, A008466, A008466.P13225017953189168160.a, A143281, A143281.P18435193582386234759.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118645

/-! ## A118645.P3377184665492722155

`A000079(n)-(∑[A078012(n+2)]+1)`
-/

namespace A118645.P3377184665492722155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118645.P3377184665492722155

namespace A118645

/-- `A000079(n)-(∑[A078012(n+2)]+1)` -/
def P3377184665492722155.Spec : Prop :=
  ∀ n, P3377184665492722155.a n = A118645 n

end A118645

/-! ## A118645.P11554978880151286140

`A011782(n+1)-(A167704(n+1)+A167704(n))`
-/

namespace A118645.P11554978880151286140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A167704 (n + 1) + A167704 n)

end

end A118645.P11554978880151286140

namespace A118645

/-- `A011782(n+1)-(A167704(n+1)+A167704(n))` -/
def P11554978880151286140.Spec : Prop :=
  ∀ n, P11554978880151286140.a n = A118645 n

end A118645

/-! ## A118645.P7534614725079523569

`A000051(n+1)-(A068921(n+1)+A000051(n))`
-/

namespace A118645.P7534614725079523569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A068921 (n + 1) + A000051 n)

end

end A118645.P7534614725079523569

namespace A118645

/-- `A000051(n+1)-(A068921(n+1)+A000051(n))` -/
def P7534614725079523569.Spec : Prop :=
  ∀ n, P7534614725079523569.a n = A118645 n

end A118645

/-!
# A118646: a(n) is the number of binary strings of length n such that there exists a subsequence of length 4 containing 3 or more ones.

The programs for A118646, the canonical program `A118646.P1793454714069651902` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118646 has offset 1).

The definition of A118646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118646.P16294054913565361515

`ogf((x^2+2x^3-x^4-x^5)/(1-3x+x^2+2x^3-x^4+2x^5+x^6-2x^7))`
-/

namespace A118646.P16294054913565361515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, -1, -1] [1, -3, 1, 2, -1, 2, 1, -2] n

end

end A118646.P16294054913565361515

namespace A118646

/-- `ogf((x^2+2x^3-x^4-x^5)/(1-3x+x^2+2x^3-x^4+2x^5+x^6-2x^7))` -/
def P16294054913565361515.Spec : Prop :=
  ∀ n, P16294054913565361515.a n = A118646 (n + 1)

end A118646

/-! ## A118646.P1793454714069651902

`a(n-1)+a(n-2)+a(n-4)-a(n-6)+13*2^(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=13, a(5)=31`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118646

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-6)+13*2^(n-5)` -/
def P1793454714069651902.Spec : Prop :=
  ∀ n, P1793454714069651902.a n = (A118646 (n + 1) : ℚ)

end A118646

/-! ## A118646.P16203006629142178389

`2^(n+1)-A118647(n+1)`
-/

namespace A118646.P16203006629142178389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A118647 (n + 1)

end

end A118646.P16203006629142178389

namespace A118646

/-- `2^(n+1)-A118647(n+1)` -/
def P16203006629142178389.Spec : Prop :=
  ∀ n, P16203006629142178389.a n = A118646 (n + 1)

end A118646

/-! ## A118646.P18163969580817442327

`and(-A118647(n+1), A126646(n))`
-/

namespace A118646.P18163969580817442327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A118647 (n + 1)) (A126646 n)

end

end A118646.P18163969580817442327

namespace A118646

/-- `and(-A118647(n+1), A126646(n))` -/
def P18163969580817442327.Spec : Prop :=
  ∀ n, P18163969580817442327.a n = A118646 (n + 1)

end A118646

/-! ## A118646.P5271741134104515024

`abs(A000079(n+1)-A118647(n+1))`
-/

namespace A118646.P5271741134104515024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A118647 (n + 1)|

end

end A118646.P5271741134104515024

namespace A118646

/-- `abs(A000079(n+1)-A118647(n+1))` -/
def P5271741134104515024.Spec : Prop :=
  ∀ n, P5271741134104515024.a n = A118646 (n + 1)

end A118646

/-! ## A118646.P2170716821809837616

`A125513(n+1)+A130902(n)-A118647(n+1)`
-/

namespace A118646.P2170716821809837616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125513 (n + 1) + (A130902 n - A118647 (n + 1))

end

end A118646.P2170716821809837616

namespace A118646

/-- `A125513(n+1)+A130902(n)-A118647(n+1)` -/
def P2170716821809837616.Spec : Prop :=
  ∀ n, P2170716821809837616.a n = A118646 (n + 1)

end A118646

/-! ## A118646.P15005880757115266220

`A120118(n+1)+A131283(n+1)-A118647(n+1)`
-/

namespace A118646.P15005880757115266220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120118 (n + 1) + (A131283 (n + 1) - A118647 (n + 1))

end

end A118646.P15005880757115266220

namespace A118646

/-- `A120118(n+1)+A131283(n+1)-A118647(n+1)` -/
def P15005880757115266220.Spec : Prop :=
  ∀ n, P15005880757115266220.a n = A118646 (n + 1)

end A118646

/-! ## A118646.P6883472259241447868

`abs(A118647(n+1)-record[A329146(n+1)])`
-/

namespace A118646.P6883472259241447868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118647 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A118646.P6883472259241447868

namespace A118646

/-- `abs(A118647(n+1)-record[A329146(n+1)])` -/
def P6883472259241447868.Spec : Prop :=
  ∀ n, P6883472259241447868.a n = A118646 (n + 1)

end A118646

/-!
# A118647: a(n) is the number of binary strings of length n such that no subsequence of length 4 contains 3 or more ones.

The programs for A118647, the canonical program `A118647.P12226838052713077662` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118647 has offset 1).

The definition of A118647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118647.P12284028025062919162

`ogf((2+2x+x^2-x^4-x^5)/(1-x-x^2-x^4+x^6))`
-/

namespace A118647.P12284028025062919162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1, 0, -1, -1] [1, -1, -1, 0, -1, 0, 1] n

end

end A118647.P12284028025062919162

namespace A118647

/-- `ogf((2+2x+x^2-x^4-x^5)/(1-x-x^2-x^4+x^6))` -/
def P12284028025062919162.Spec : Prop :=
  ∀ n, P12284028025062919162.a n = A118647 (n + 1)

end A118647

/-! ## A118647.P12226838052713077662

`a(n-1)+a(n-2)+a(n-4)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=11, a(4)=19, a(5)=33`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118647

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-6)` -/
def P12226838052713077662.Spec : Prop :=
  ∀ n, P12226838052713077662.a n = A118647 (n + 1)

theorem P12226838052713077662.correct : P12226838052713077662.Spec := by
  intro n
  simp only [A118647, Nat.add_sub_cancel]

end A118647

/-! ## A118647.P17539088364957076503

`Δ[A245437(n+6)+A245437(n+7)]`
-/

namespace A118647.P17539088364957076503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245437 (n + 6) + A245437 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118647.P17539088364957076503

namespace A118647

/-- `Δ[A245437(n+6)+A245437(n+7)]` -/
def P17539088364957076503.Spec : Prop :=
  ∀ n, P17539088364957076503.a n = A118647 (n + 1)

end A118647

/-! ## A118647.P10281234695931174884

`2^(n+1)-A118646(n+1)`
-/

namespace A118647.P10281234695931174884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A118646 (n + 1)

end

end A118647.P10281234695931174884

namespace A118647

/-- `2^(n+1)-A118646(n+1)` -/
def P10281234695931174884.Spec : Prop :=
  ∀ n, P10281234695931174884.a n = A118647 (n + 1)

end A118647

/-! ## A118647.P18377161312690384945

`A000079(n)+A000079(n)-A118646(n+1)`
-/

namespace A118647.P18377161312690384945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A118646 (n + 1))

end

end A118647.P18377161312690384945

namespace A118647

/-- `A000079(n)+A000079(n)-A118646(n+1)` -/
def P18377161312690384945.Spec : Prop :=
  ∀ n, P18377161312690384945.a n = A118647 (n + 1)

end A118647

/-! ## A118647.P10260523971338281365

`A125513(n+1)+A130902(n)-A118646(n+1)`
-/

namespace A118647.P10260523971338281365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125513 (n + 1) + (A130902 n - A118646 (n + 1))

end

end A118647.P10260523971338281365

namespace A118647

/-- `A125513(n+1)+A130902(n)-A118646(n+1)` -/
def P10260523971338281365.Spec : Prop :=
  ∀ n, P10260523971338281365.a n = A118647 (n + 1)

end A118647

/-! ## A118647.P7439853649555696033

`A120118(n+1)+A131283(n+1)-A118646(n+1)`
-/

namespace A118647.P7439853649555696033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120118 (n + 1) + (A131283 (n + 1) - A118646 (n + 1))

end

end A118647.P7439853649555696033

namespace A118647

/-- `A120118(n+1)+A131283(n+1)-A118646(n+1)` -/
def P7439853649555696033.Spec : Prop :=
  ∀ n, P7439853649555696033.a n = A118647 (n + 1)

end A118647

/-!
# A118648: a(n) is the number of binary strings of length n+3 such that there exists a subsequence of length 4 with 2 ones in it.

The programs for A118648, the canonical program `A118648.P15793452987007092984` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118648 has offset 4).

The definition of A118648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118648.P15793452987007092984

`ogf((11-8x+x^2+2x^3-8x^4)/(1-3x+2x^2-x^4+2x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118648

/-- `ogf((11-8x+x^2+2x^3-8x^4)/(1-3x+2x^2-x^4+2x^5))` -/
def P15793452987007092984.Spec : Prop :=
  ∀ n, P15793452987007092984.a n = A118648 (n + 4)

theorem P15793452987007092984.correct : P15793452987007092984.Spec := by
  intro n
  simp only [A118648, Nat.add_sub_cancel]

end A118648

/-! ## A118648.P15042325621871813191

`A020707(n+2)-A003269(n+8)`
-/

namespace A118648.P15042325621871813191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 2) - A003269 (n + 8)

end

end A118648.P15042325621871813191

namespace A118648

/-- `A020707(n+2)-A003269(n+8)` -/
def P15042325621871813191.Spec : Prop :=
  ∀ n, P15042325621871813191.a n = A118648 (n + 4)

end A118648

/-! ## A118648.P13731976806359376358

`A000079(n+4)-A003269(n+8)`
-/

namespace A118648.P13731976806359376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) - A003269 (n + 8)

end

end A118648.P13731976806359376358

namespace A118648

/-- `A000079(n+4)-A003269(n+8)` -/
def P13731976806359376358.Spec : Prop :=
  ∀ n, P13731976806359376358.a n = A118648 (n + 4)

end A118648

/-! ## A118648.P383697121176552960

`A000079(n+4)-A017898(n+11)`
-/

namespace A118648.P383697121176552960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) - A017898 (n + 11)

end

end A118648.P383697121176552960

namespace A118648

/-- `A000079(n+4)-A017898(n+11)` -/
def P383697121176552960.Spec : Prop :=
  ∀ n, P383697121176552960.a n = A118648 (n + 4)

end A118648

/-! ## A118648.P12641341422610289751

`A000295(A020705(n))-A145131(n)`
-/

namespace A118648.P12641341422610289751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A020705 n).toNat - A145131 n

end

end A118648.P12641341422610289751

namespace A118648

/-- `A000295(A020705(n))-A145131(n)` -/
def P12641341422610289751.Spec : Prop :=
  ∀ n, P12641341422610289751.a n = A118648 (n + 4)

end A118648

/-! ## A118648.P16465766913086628783

`Δ[A175164(n)]-A003269(n+8)`
-/

namespace A118648.P16465766913086628783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003269 (n + 8)

end

end A118648.P16465766913086628783

namespace A118648

/-- `Δ[A175164(n)]-A003269(n+8)` -/
def P16465766913086628783.Spec : Prop :=
  ∀ n, P16465766913086628783.a n = A118648 (n + 4)

end A118648

/-!
# A118649: Row sums for A106597.

The programs for A118649, the canonical program `A118649.P2542869351960560453` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118649 has offset 0).

The definition of A118649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118649.P14293793836729677722

`ogf((1-x^2)/(1-2x-2x^2+2x^3))`
-/

namespace A118649.P14293793836729677722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, -2, 2] n

end

end A118649.P14293793836729677722

namespace A118649

/-- `ogf((1-x^2)/(1-2x-2x^2+2x^3))` -/
def P14293793836729677722.Spec : Prop :=
  ∀ n, P14293793836729677722.a n = A118649 n

end A118649

/-! ## A118649.P2542869351960560453

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118649

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P2542869351960560453.Spec : Prop :=
  ∀ n, P2542869351960560453.a n = A118649 n

theorem P2542869351960560453.correct : P2542869351960560453.Spec := by
  intro n
  simp only [A118649]

end A118649

/-! ## A118649.P3779579747155080139

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A118649.P3779579747155080139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A118649.P3779579747155080139

namespace A118649

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P3779579747155080139.Spec : Prop :=
  ∀ n, P3779579747155080139.a n = A118649 n

theorem P3779579747155080139.correct : P3779579747155080139.Spec := by
  intro n
  simp only [A118649, Nat.add_sub_cancel, A118649.P3779579747155080139.a, A118649.P2542869351960560453.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A118649

/-! ## A118649.P9287680863257856412

`∑[A181306(n)]`
-/

namespace A118649.P9287680863257856412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118649.P9287680863257856412

namespace A118649

/-- `∑[A181306(n)]` -/
def P9287680863257856412.Spec : Prop :=
  ∀ n, P9287680863257856412.a n = A118649 n

end A118649

/-! ## A118649.P14982026619618791107

`∑[ceil(∑[A052528(n)/2])]`
-/

namespace A118649.P14982026619618791107
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052528 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118649.P14982026619618791107

namespace A118649

/-- `∑[ceil(∑[A052528(n)/2])]` -/
def P14982026619618791107.Spec : Prop :=
  ∀ n, P14982026619618791107.a n = A118649 n

end A118649

/-! ## A118649.P8396666036458247921

`ceil(A077847(n)/2)`
-/

namespace A118649.P8396666036458247921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077847 n : ℚ) / 2⌉

end

end A118649.P8396666036458247921

namespace A118649

/-- `ceil(A077847(n)/2)` -/
def P8396666036458247921.Spec : Prop :=
  ∀ n, P8396666036458247921.a n = A118649 n

end A118649

/-! ## A118649.P9387417992904543290

`A052987(n+1)/2`
-/

namespace A118649.P9387417992904543290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052987 (n + 1) : ℚ) / 2

end

end A118649.P9387417992904543290

namespace A118649

/-- `A052987(n+1)/2` -/
def P9387417992904543290.Spec : Prop :=
  ∀ n, P9387417992904543290.a n = (A118649 n : ℚ)

end A118649

/-! ## A118649.P12233385977426621720

`A107300(n+1)/2-A052970(n+1)`
-/

namespace A118649.P12233385977426621720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107300 (n + 1) : ℚ) / 2 - (A052970 (n + 1) : ℚ)

end

end A118649.P12233385977426621720

namespace A118649

/-- `A107300(n+1)/2-A052970(n+1)` -/
def P12233385977426621720.Spec : Prop :=
  ∀ n, P12233385977426621720.a n = (A118649 n : ℚ)

end A118649

/-!
# A118650: Center column a(2n,n) of A106597.

The programs for A118650, there is no canonical definition to state claims against.
-/

/-! ## A118650.P9098734497212791966

`A106597(∑[4*n])`
-/

namespace A118650.P9098734497212791966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118650.P9098734497212791966

/-! ## A118650.P8862795154088920048

`record[A106597(A265225(n))]`
-/

namespace A118650.P8862795154088920048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118650.P8862795154088920048

/-! ## A118650.P15907765316957167206

`record[A106597(A266725(n))]`
-/

namespace A118650.P15907765316957167206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118650.P15907765316957167206

/-! ## A118650.P9035367144134113530

`record[A106597(gcd(n, A049581(n)))]`
-/

namespace A118650.P9035367144134113530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 (Int.gcd (n : ℤ) (A049581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118650.P9035367144134113530

/-! ## A118650.P12399108660463012795

`record[A106597(A182456(n))]`
-/

namespace A118650.P12399108660463012795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 (A182456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118650.P12399108660463012795

/-!
# A118651: Numbers k such that k^2 is a palindrome when written in base 17.

The programs for A118651, there is no canonical definition to state claims against.
-/

/-! ## A118651.P17028569317482697929

`A000031(n)-A003557(A065887(n))`
-/

namespace A118651.P17028569317482697929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A003557 (A065887 n).toNat

end

end A118651.P17028569317482697929

/-! ## A118651.P17069931267113083364

`lt[A351441(A327275(n+1)), 5]`
-/

namespace A118651.P17069931267113083364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351441 (A327275 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118651.P17069931267113083364

/-! ## A118651.P16304819940318385389

`lt[A283347(A084984(n+4)), 16]`
-/

namespace A118651.P16304819940318385389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A084984 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118651.P16304819940318385389

/-! ## A118651.P365317807142058496

`eq[A033667(n), A363721(n+1)]`
-/

namespace A118651.P365317807142058496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363721 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118651.P365317807142058496

/-! ## A118651.P10495888112820137659

`lt[A067138(∑[A067139(n+1)]), 4]`
-/

namespace A118651.P10495888112820137659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067139 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A118651.P10495888112820137659

/-!
# A118653: Least number of squares that add up to the partition number A000041(n).

The programs for A118653, there is no canonical definition to state claims against.
-/

/-! ## A118653.P9032274204619184947

`A002828(A000041(n))`
-/

namespace A118653.P9032274204619184947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000041 n).toNat

end

end A118653.P9032274204619184947

/-! ## A118653.P1698445589128636556

`A002828(A213598(n))`
-/

namespace A118653.P1698445589128636556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A213598 n).toNat

end

end A118653.P1698445589128636556

/-! ## A118653.P6077801070321125284

`A002828(sqrt(A001255(n)))`
-/

namespace A118653.P6077801070321125284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A118653.P6077801070321125284

/-! ## A118653.P5010397166174859505

`A002828(∑[A002865(n)])`
-/

namespace A118653.P5010397166174859505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118653.P5010397166174859505

/-! ## A118653.P17746473910018934407

`A002828(A055375(∑[n]))`
-/

namespace A118653.P17746473910018934407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A055375 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118653.P17746473910018934407

/-!
# A118654: Square array T(n,k) read by antidiagonals: T(n,k) = 2^n*Fibonacci(k) - Fibonacci(k-2).

The programs for A118654, the canonical program `A118654.P1879375366937263027` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118654 has offset 0).

The definition of A118654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118654.P1879375366937263027

`(2^(row(n)-col(n))-2)*A000045(col(n))+A000045(col(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A118654

/-- `(2^(row(n)-col(n))-2)*A000045(col(n))+A000045(col(n)+1)` -/
def P1879375366937263027.Spec : Prop :=
  ∀ n, P1879375366937263027.a n = (A118654 n : ℚ)

end A118654

/-! ## A118654.P1268000463124442291

`or(A292508(n), A321964(A276974(n)))`
-/

namespace A118654.P1268000463124442291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292508 n) (A321964 (A276974 n).toNat)

end

end A118654.P1268000463124442291

namespace A118654

/-- `or(A292508(n), A321964(A276974(n)))` -/
def P1268000463124442291.Spec : Prop :=
  ∀ n, P1268000463124442291.a n = A118654 n

end A118654

/-!
# A118656: If C represents the minimum number of segments required to construct n unit cubes, then this sequence represents the number of additional segments required to construct n+1 unit cubes. First differences of sequence A117227.

The programs for A118656, there is no canonical definition to state claims against.
-/

/-! ## A118656.P2238619987403278403

`Δ[∪[A117227(n+1), (n*(18*n+6))²]]`
-/

namespace A118656.P2238619987403278403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117227 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (18 * n + 6)) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A118656.P2238619987403278403

/-! ## A118656.P15336146380274341964

`A133263(4-∑{digits}[A115846(n), #])`
-/

namespace A118656.P15336146380274341964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (4 - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A118656.P15336146380274341964

/-! ## A118656.P13969425889443083281

`A000212(6-∑{digits}[A115846(n), #])`
-/

namespace A118656.P13969425889443083281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (6 - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A118656.P13969425889443083281

/-! ## A118656.P9909069309403529608

`Δ[∪[A059986(n), A117227(n+1)]]`
-/

namespace A118656.P9909069309403529608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A118656.P9909069309403529608

/-! ## A118656.P1341090673160878904

`A000217(4-∑{digits}[A115846(n), #])+2`
-/

namespace A118656.P1341090673160878904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum) + 2

end

end A118656.P1341090673160878904

/-!
# A118658: a(n) = 2*F(n-1) = L(n) - F(n), where F(n) and L(n) are Fibonacci and Lucas numbers respectively.

The programs for A118658, the canonical program `A118658.P8652943087803871292` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118658 has offset 0).

The definition of A118658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118658.P8652943087803871292

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118658

/-- `a(n-1)+a(n-2)` -/
def P8652943087803871292.Spec : Prop :=
  ∀ n, (P8652943087803871292.a n : ℤ) = A118658 n

theorem P8652943087803871292.correct : P8652943087803871292.Spec := by
  intro n
  simp only [A118658]

end A118658

/-! ## A118658.P4387187202391105274

`2*A212804(n)`
-/

namespace A118658.P4387187202391105274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 n

end

end A118658.P4387187202391105274

namespace A118658

/-- `2*A212804(n)` -/
def P4387187202391105274.Spec : Prop :=
  ∀ n, P4387187202391105274.a n = A118658 n

end A118658

/-! ## A118658.P11427077538629589229

`A000032(n)-A000045(n)`
-/

namespace A118658.P11427077538629589229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A000045 n

end

end A118658.P11427077538629589229

namespace A118658

/-- `A000032(n)-A000045(n)` -/
def P11427077538629589229.Spec : Prop :=
  ∀ n, P11427077538629589229.a n = A118658 n

end A118658

/-! ## A118658.P8267517393869969507

`ogf((-2+2x)/(-1+x+x^2))`
-/

namespace A118658.P8267517393869969507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -1, -1] n

end

end A118658.P8267517393869969507

namespace A118658

/-- `ogf((-2+2x)/(-1+x+x^2))` -/
def P8267517393869969507.Spec : Prop :=
  ∀ n, P8267517393869969507.a n = A118658 n

end A118658

/-! ## A118658.P5106545271184044412

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A118658.P5106545271184044412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A118658.P5106545271184044412

namespace A118658

/-- `a(n-1)-floor(-a(n-2))` -/
def P5106545271184044412.Spec : Prop :=
  ∀ n, P5106545271184044412.a n = A118658 n

end A118658

/-! ## A118658.P17815836146301837027

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A118658.P17815836146301837027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A118658.P17815836146301837027

namespace A118658

/-- `a(n-1)-ceil(-a(n-2))` -/
def P17815836146301837027.Spec : Prop :=
  ∀ n, P17815836146301837027.a n = A118658 n

end A118658

/-! ## A118658.P5153658430254700212

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A118658.P5153658430254700212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A118658.P5153658430254700212

namespace A118658

/-- `a(n-1)-round(-a(n-2))` -/
def P5153658430254700212.Spec : Prop :=
  ∀ n, P5153658430254700212.a n = A118658 n

end A118658

/-! ## A118658.P2528334987083370184

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=4, a(1)=2`
-/

namespace A118658.P2528334987083370184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A118658.P2528334987083370184

namespace A118658

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P2528334987083370184.Spec : Prop :=
  ∀ n, P2528334987083370184.a n = A118658 n

end A118658

/-! ## A118658.P17047474575829011274

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A118658.P17047474575829011274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A118658.P17047474575829011274

namespace A118658

/-- `2*a(n-1)-a(n-3)` -/
def P17047474575829011274.Spec : Prop :=
  ∀ n, P17047474575829011274.a n = A118658 n

end A118658

/-! ## A118658.P10290891873157122156

`a(n-1)-(char[1]-a(n-2))` with `a(0)=2, a(1)=0`
-/

namespace A118658.P10290891873157122156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A118658.P10290891873157122156

namespace A118658

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P10290891873157122156.Spec : Prop :=
  ∀ n, P10290891873157122156.a n = A118658 n

end A118658

/-! ## A118658.P15402156145832450947

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A118658.P15402156145832450947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A118658.P15402156145832450947

namespace A118658

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P15402156145832450947.Spec : Prop :=
  ∀ n, P15402156145832450947.a n = A118658 n

end A118658

/-! ## A118658.P13077732592805400875

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=2, a(1)=0`
-/

namespace A118658.P13077732592805400875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 0] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A118658.P13077732592805400875

namespace A118658

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P13077732592805400875.Spec : Prop :=
  ∀ n, P13077732592805400875.a n = (A118658 n : ℚ)

end A118658

/-! ## A118658.P17130018388234791709

`lcm(2, A006355(n))`
-/

namespace A118658.P17130018388234791709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A006355 n)

end

end A118658.P17130018388234791709

namespace A118658

/-- `lcm(2, A006355(n))` -/
def P17130018388234791709.Spec : Prop :=
  ∀ n, (P17130018388234791709.a n : ℤ) = A118658 n

end A118658

/-! ## A118658.P13844410774846569945

`2*Δ[A000045(n)]`
-/

namespace A118658.P13844410774846569945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A118658.P13844410774846569945

namespace A118658

/-- `2*Δ[A000045(n)]` -/
def P13844410774846569945.Spec : Prop :=
  ∀ n, P13844410774846569945.a n = A118658 n

end A118658

/-! ## A118658.P5174173549184932195

`2*Δ[A001611(n)]`
-/

namespace A118658.P5174173549184932195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A118658.P5174173549184932195

namespace A118658

/-- `2*Δ[A001611(n)]` -/
def P5174173549184932195.Spec : Prop :=
  ∀ n, P5174173549184932195.a n = A118658 n

end A118658

/-! ## A118658.P13215606173946080896

`2*Δ[A157725(n)]`
-/

namespace A118658.P13215606173946080896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A118658.P13215606173946080896

namespace A118658

/-- `2*Δ[A157725(n)]` -/
def P13215606173946080896.Spec : Prop :=
  ∀ n, P13215606173946080896.a n = A118658 n

end A118658

/-! ## A118658.P15580729018663643796

`2*Δ[A157726(n)]`
-/

namespace A118658.P15580729018663643796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A118658.P15580729018663643796

namespace A118658

/-- `2*Δ[A157726(n)]` -/
def P15580729018663643796.Spec : Prop :=
  ∀ n, P15580729018663643796.a n = A118658 n

end A118658

/-! ## A118658.P207544050016448374

`2*Δ[A157727(n)]`
-/

namespace A118658.P207544050016448374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A118658.P207544050016448374

namespace A118658

/-- `2*Δ[A157727(n)]` -/
def P207544050016448374.Spec : Prop :=
  ∀ n, P207544050016448374.a n = A118658 n

end A118658

/-! ## A118658.P3305911477701680337

`2*Δ[A157729(n)]`
-/

namespace A118658.P3305911477701680337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A118658.P3305911477701680337

namespace A118658

/-- `2*Δ[A157729(n)]` -/
def P3305911477701680337.Spec : Prop :=
  ∀ n, P3305911477701680337.a n = A118658 n

end A118658

/-! ## A118658.P12822832084582471542

`2*A247049(3*n)`
-/

namespace A118658.P12822832084582471542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247049 (3 * n)

end

end A118658.P12822832084582471542

namespace A118658

/-- `2*A247049(3*n)` -/
def P12822832084582471542.Spec : Prop :=
  ∀ n, P12822832084582471542.a n = A118658 n

end A118658

/-!
# A118659: Minimum number of unit faces required to construct n unit cubes.

The programs for A118659, there is no canonical definition to state claims against.
-/

/-! ## A118659.P9976564247033099661

`6*(n+1)-A007818(n+1)`
-/

namespace A118659.P9976564247033099661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A007818 (n + 1)

end

end A118659.P9976564247033099661

/-! ## A118659.P5819264582099853760

`A007818(n+1)+A193416(n+1)`
-/

namespace A118659.P5819264582099853760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007818 (n + 1) + A193416 (n + 1)

end

end A118659.P5819264582099853760

/-! ## A118659.P4088120769605013553

`A016969(n)+1-A007818(n+1)`
-/

namespace A118659.P4088120769605013553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (1 - A007818 (n + 1))

end

end A118659.P4088120769605013553

/-! ## A118659.P10439449123780164423

`abs(A007818(n+1)-A008588(n+1))`
-/

namespace A118659.P10439449123780164423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007818 (n + 1) - A008588 (n + 1)|

end

end A118659.P10439449123780164423

/-! ## A118659.P6804885313724233310

`(A193416(n+1)+A016969(n)+1)/2`
-/

namespace A118659.P6804885313724233310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193416 (n + 1) + A016969 n + 1 : ℚ) / 2

end

end A118659.P6804885313724233310

/-! ## A118659.P10526704325962971387

`A017029(n)-(A007818(n+1)+n-2)`
-/

namespace A118659.P10526704325962971387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - (A007818 (n + 1) + ((n : ℤ) - 2))

end

end A118659.P10526704325962971387

/-! ## A118659.P8094416924398339844

`A008619(A193416(n+1)+A016957(n))`
-/

namespace A118659.P8094416924398339844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193416 (n + 1) + A016957 n).toNat

end

end A118659.P8094416924398339844

/-! ## A118659.P12811734726654999222

`A008619(A193416(n+1)+A016969(n))`
-/

namespace A118659.P12811734726654999222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193416 (n + 1) + A016969 n).toNat

end

end A118659.P12811734726654999222

/-! ## A118659.P8348856461791770781

`A065033(A193416(n+1)+A016969(n))`
-/

namespace A118659.P8348856461791770781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A193416 (n + 1) + A016969 n).toNat

end

end A118659.P8348856461791770781

/-! ## A118659.P2904942890233444125

`A020725(A016969(n)-A007818(n+1))`
-/

namespace A118659.P2904942890233444125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A016969 n - A007818 (n + 1)).toNat

end

end A118659.P2904942890233444125

/-!
# A118660: Numbers k such that 4*k^4 + 3 is prime.

The programs for A118660, there is no canonical definition to state claims against.
-/

/-! ## A118660.P2214279705548635825

`lt[A053000(2*n²), 4]`
-/

namespace A118660.P2214279705548635825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (2 * n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118660.P2214279705548635825

/-! ## A118660.P13974480814367457116

`lt[A300817(A001105(n)), 4]`
-/

namespace A118660.P13974480814367457116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A001105 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118660.P13974480814367457116

/-! ## A118660.P7569452314170501003

`eq[A157532(n+1), A300817(A001105(n))]`
-/

namespace A118660.P7569452314170501003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A001105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118660.P7569452314170501003

/-! ## A118660.P13309467532375210322

`eq[A057427(n)+2, A300817(A001105(n))]`
-/

namespace A118660.P13309467532375210322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A001105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118660.P13309467532375210322

/-!
# A118662: Month in which the Jewish New Year occurs in the Gregorian year n.

The programs for A118662, there is no canonical definition to state claims against.
-/

/-! ## A118662.P7913339067011668678

`A079979(A131191(2*(n+2)))+9`
-/

namespace A118662.P7913339067011668678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A131191 (2 * (n + 2))).toNat + 9

end

end A118662.P7913339067011668678

/-!
# A118663: Index of the least prime dividing the n-th composite number: A000720(A020639(A002808(n))).

The programs for A118663, the canonical program `A118663.P11786938206908144306` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118663 has offset 1).

The definition of A118663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118663.P11786938206908144306

`A000720(A020639(A002808(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A118663

/-- `A000720(A020639(A002808(n+1)))` -/
def P11786938206908144306.Spec : Prop :=
  ∀ n, P11786938206908144306.a n = A118663 (n + 1)

theorem P11786938206908144306.correct : P11786938206908144306.Spec := by
  intro n
  simp only [A118663, Nat.add_sub_cancel]

end A118663

/-! ## A118663.P9857351162219183814

`A055396(Δ[A053767(n)])`
-/

namespace A118663.P9857351162219183814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (n + 1) - f1 n).toNat

end

end A118663.P9857351162219183814

namespace A118663

/-- `A055396(Δ[A053767(n)])` -/
def P9857351162219183814.Spec : Prop :=
  ∀ n, P9857351162219183814.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P17215906394523395204

`A000720(p?[A107286(n)])`
-/

namespace A118663.P17215906394523395204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P17215906394523395204

namespace A118663

/-- `A000720(p?[A107286(n)])` -/
def P17215906394523395204.Spec : Prop :=
  ∀ n, P17215906394523395204.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P14767263976996010517

`A003963(p?[A107286(n)])`
-/

namespace A118663.P14767263976996010517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P14767263976996010517

namespace A118663

/-- `A003963(p?[A107286(n)])` -/
def P14767263976996010517.Spec : Prop :=
  ∀ n, P14767263976996010517.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P11345947038190720584

`A026233(p?[A107286(n)])`
-/

namespace A118663.P11345947038190720584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P11345947038190720584

namespace A118663

/-- `A026233(p?[A107286(n)])` -/
def P11345947038190720584.Spec : Prop :=
  ∀ n, P11345947038190720584.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P10635519243907896393

`A026238(p?[A107286(n)])`
-/

namespace A118663.P10635519243907896393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P10635519243907896393

namespace A118663

/-- `A026238(p?[A107286(n)])` -/
def P10635519243907896393.Spec : Prop :=
  ∀ n, P10635519243907896393.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P16171175723831768933

`A049084(p?[A107286(n)])`
-/

namespace A118663.P16171175723831768933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P16171175723831768933

namespace A118663

/-- `A049084(p?[A107286(n)])` -/
def P16171175723831768933.Spec : Prop :=
  ∀ n, P16171175723831768933.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P4348100828559971069

`A061395(p?[A107286(n)])`
-/

namespace A118663.P4348100828559971069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P4348100828559971069

namespace A118663

/-- `A061395(p?[A107286(n)])` -/
def P4348100828559971069.Spec : Prop :=
  ∀ n, P4348100828559971069.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P2687333489576137122

`A066136(p?[A107286(n)])`
-/

namespace A118663.P2687333489576137122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P2687333489576137122

namespace A118663

/-- `A066136(p?[A107286(n)])` -/
def P2687333489576137122.Spec : Prop :=
  ∀ n, P2687333489576137122.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P9698980451952665251

`A230980(p?[A107286(n)])`
-/

namespace A118663.P9698980451952665251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P9698980451952665251

namespace A118663

/-- `A230980(p?[A107286(n)])` -/
def P9698980451952665251.Spec : Prop :=
  ∀ n, P9698980451952665251.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P304159537623199927

`A319855(p?[A107286(n)])`
-/

namespace A118663.P304159537623199927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118663.P304159537623199927

namespace A118663

/-- `A319855(p?[A107286(n)])` -/
def P304159537623199927.Spec : Prop :=
  ∀ n, P304159537623199927.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P9271349511762094555

`A000006(A056608(n+1))`
-/

namespace A118663.P9271349511762094555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A056608 (n + 1)).toNat

end

end A118663.P9271349511762094555

namespace A118663

/-- `A000006(A056608(n+1))` -/
def P9271349511762094555.Spec : Prop :=
  ∀ n, P9271349511762094555.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P18262967130976082192

`A055396(A002808(n+1))`
-/

namespace A118663.P18262967130976082192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A002808 (n + 1)).toNat

end

end A118663.P18262967130976082192

namespace A118663

/-- `A055396(A002808(n+1))` -/
def P18262967130976082192.Spec : Prop :=
  ∀ n, P18262967130976082192.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P5587857267825899708

`A055396(A088739(n+1))`
-/

namespace A118663.P5587857267825899708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A088739 (n + 1)).toNat

end

end A118663.P5587857267825899708

namespace A118663

/-- `A055396(A088739(n+1))` -/
def P5587857267825899708.Spec : Prop :=
  ∀ n, P5587857267825899708.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P1091523128868847306

`A055396(A161003(n+1))`
-/

namespace A118663.P1091523128868847306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A161003 (n + 1)).toNat

end

end A118663.P1091523128868847306

namespace A118663

/-- `A055396(A161003(n+1))` -/
def P1091523128868847306.Spec : Prop :=
  ∀ n, P1091523128868847306.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P15815808803810182891

`A286477(A056653(n+1))`
-/

namespace A118663.P15815808803810182891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A056653 (n + 1)).toNat

end

end A118663.P15815808803810182891

namespace A118663

/-- `A286477(A056653(n+1))` -/
def P15815808803810182891.Spec : Prop :=
  ∀ n, P15815808803810182891.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P14117119884115455905

`A286471(A282671(n+1))`
-/

namespace A118663.P14117119884115455905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (A282671 (n + 1)).toNat

end

end A118663.P14117119884115455905

namespace A118663

/-- `A286471(A282671(n+1))` -/
def P14117119884115455905.Spec : Prop :=
  ∀ n, P14117119884115455905.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P9799055276219832946

`A055396(A018252(n+2))`
-/

namespace A118663.P9799055276219832946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A018252 (n + 2)).toNat

end

end A118663.P9799055276219832946

namespace A118663

/-- `A055396(A018252(n+2))` -/
def P9799055276219832946.Spec : Prop :=
  ∀ n, P9799055276219832946.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P8973627265175467240

`A286471(A139270(n+2))`
-/

namespace A118663.P8973627265175467240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (A139270 (n + 2)).toNat

end

end A118663.P8973627265175467240

namespace A118663

/-- `A286471(A139270(n+2))` -/
def P8973627265175467240.Spec : Prop :=
  ∀ n, P8973627265175467240.a n = A118663 (n + 1)

end A118663

/-! ## A118663.P11055090044541768389

`A070804(p?[A107286(n)])+1`
-/

namespace A118663.P11055090044541768389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A118663.P11055090044541768389

namespace A118663

/-- `A070804(p?[A107286(n)])+1` -/
def P11055090044541768389.Spec : Prop :=
  ∀ n, P11055090044541768389.a n = A118663 (n + 1)

end A118663

/-!
# A118664: a(n) is the least prime p such that n*(p#^2)-1 is prime or 0 if n > 1 is a square so no prime possible.

The programs for A118664, there is no canonical definition to state claims against.
-/

/-! ## A118664.P15162363174470257444

`A269254(4*n+2)+A209615(A205479(n+1)²)`
-/

namespace A118664.P15162363174470257444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269254 (4 * n + 2) + A209615 (A205479 (n + 1) ^ 2).toNat

end

end A118664.P15162363174470257444

/-! ## A118664.P9253699853545186131

`xor(A112606(A215081(4*n+1)), A275437(n))`
-/

namespace A118664.P9253699853545186131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112606 (A215081 (4 * n + 1)).toNat) (A275437 n)

end

end A118664.P9253699853545186131

/-! ## A118664.P17376521047918851849

`A069010(A000069(n+1))+A008683(A134067(n))`
-/

namespace A118664.P17376521047918851849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A000069 (n + 1)).toNat + A008683 (A134067 n).toNat

end

end A118664.P17376521047918851849

/-!
# A118666: Binary polynomials p(x) that are fixed points of the map p(x) -> p(x+1), evaluated as polynomials over Z at x=2.

The programs for A118666, there is no canonical definition to state claims against.
-/

/-! ## A118666.P11780892169522912292

`eq[0, A280507(n)]`
-/

namespace A118666.P11780892169522912292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118666.P11780892169522912292

/-! ## A118666.P688910683873395352

`eq[n, A193231(n)]`
-/

namespace A118666.P688910683873395352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118666.P688910683873395352

/-! ## A118666.P13715921650958690414

`record[A280501(n+1)-C(2, n)]`
-/

namespace A118666.P13715921650958690414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280501 (n + 1) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118666.P13715921650958690414

/-! ## A118666.P6490879136343397485

`A280507(A001196(n))`
-/

namespace A118666.P6490879136343397485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280507 (A001196 n).toNat

end

end A118666.P6490879136343397485

/-! ## A118666.P11596321399839551109

`record[A280507(A277335(n))]`
-/

namespace A118666.P11596321399839551109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280507 (A277335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118666.P11596321399839551109

/-! ## A118666.P76623301741071619

`A280507(3*A000695(n))`
-/

namespace A118666.P76623301741071619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280507 (3 * A000695 n).toNat

end

end A118666.P76623301741071619

/-! ## A118666.P4152441408193619198

`eq[n, A234612(A003188(n))]`
-/

namespace A118666.P4152441408193619198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118666.P4152441408193619198

/-! ## A118666.P14519692291672222812

`eq[n, A234613(A006068(n))]`
-/

namespace A118666.P14519692291672222812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118666.P14519692291672222812

/-! ## A118666.P792956764892485025

`eq[A019565(n), A365810(n)]`
-/

namespace A118666.P792956764892485025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118666.P792956764892485025

/-! ## A118666.P15939709368037444615

`eq[n, A057889(A379472(n))]`
-/

namespace A118666.P15939709368037444615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A379472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118666.P15939709368037444615

/-!
# A118667: a(n) = a(n-1)+ (abs(2^a(n-1)*a(n-1)) mod 10).

The programs for A118667, the canonical program `A118667.P2690186390336528696` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118667 has offset 0).

The definition of A118667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+abs(2^a(n-1)*a(n-1))%10` (program `A118667.P2690186390336528696`, by `A118667.P2690186390336528696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118667.P2690186390336528696

`a(n-1)+abs(2^a(n-1)*a(n-1))%10` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118667

/-- `a(n-1)+abs(2^a(n-1)*a(n-1))%10` -/
def P2690186390336528696.Spec : Prop :=
  ∀ n, (P2690186390336528696.a n : ℤ) = A118667 n

theorem P2690186390336528696.correct : P2690186390336528696.Spec := by
  intro n
  simp only [A118667]

end A118667

/-! ## A118667.P9513714402765321333

`record[A266664(n)-A271751(n)]`
-/

namespace A118667.P9513714402765321333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 n - A271751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118667.P9513714402765321333

namespace A118667

/-- `record[A266664(n)-A271751(n)]` -/
def P9513714402765321333.Spec : Prop :=
  ∀ n, P9513714402765321333.a n = A118667 n

end A118667

/-! ## A118667.P3235189788505018811

`record[A266724(n)-A271751(n)]`
-/

namespace A118667.P3235189788505018811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n - A271751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118667.P3235189788505018811

namespace A118667

/-- `record[A266724(n)-A271751(n)]` -/
def P3235189788505018811.Spec : Prop :=
  ∀ n, P3235189788505018811.a n = A118667 n

end A118667

/-! ## A118667.P1617936794557715890

`A266664(2*n)-A271751(2*n)`
-/

namespace A118667.P1617936794557715890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 (2 * n) - A271751 (2 * n)

end

end A118667.P1617936794557715890

namespace A118667

/-- `A266664(2*n)-A271751(2*n)` -/
def P1617936794557715890.Spec : Prop :=
  ∀ n, P1617936794557715890.a n = A118667 n

end A118667

/-! ## A118667.P10618305352127065053

`A266724(2*n)-A271751(2*n)`
-/

namespace A118667.P10618305352127065053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (2 * n) - A271751 (2 * n)

end

end A118667.P10618305352127065053

namespace A118667

/-- `A266724(2*n)-A271751(2*n)` -/
def P10618305352127065053.Spec : Prop :=
  ∀ n, P10618305352127065053.a n = A118667 n

end A118667

/-! ## A118667.P7894840284514873467

`A312475(n)-A005408(A058207(n))`
-/

namespace A118667.P7894840284514873467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n - A005408 (A058207 n).toNat

end

end A118667.P7894840284514873467

namespace A118667

/-- `A312475(n)-A005408(A058207(n))` -/
def P7894840284514873467.Spec : Prop :=
  ∀ n, P7894840284514873467.a n = A118667 n

end A118667

/-! ## A118667.P11832309799384856924

`A004273(A005843(n)-abs(A253262(n)))`
-/

namespace A118667.P11832309799384856924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005843 n - |A253262 n|).toNat

end

end A118667.P11832309799384856924

namespace A118667

/-- `A004273(A005843(n)-abs(A253262(n)))` -/
def P11832309799384856924.Spec : Prop :=
  ∀ n, P11832309799384856924.a n = A118667 n

end A118667

/-! ## A118667.P5696270699206685399

`record[A004273(A042948(n))-A261557(n)]`
-/

namespace A118667.P5696270699206685399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A042948 n).toNat - A261557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118667.P5696270699206685399

namespace A118667

/-- `record[A004273(A042948(n))-A261557(n)]` -/
def P5696270699206685399.Spec : Prop :=
  ∀ n, P5696270699206685399.a n = A118667 n

end A118667

/-! ## A118667.P5636051224087926444

`A004277(A005843(n)-abs(A253262(n)))-1`
-/

namespace A118667.P5636051224087926444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005843 n - |A253262 n|).toNat - 1

end

end A118667.P5636051224087926444

namespace A118667

/-- `A004277(A005843(n)-abs(A253262(n)))-1` -/
def P5636051224087926444.Spec : Prop :=
  ∀ n, P5636051224087926444.a n = A118667 n

end A118667

/-! ## A118667.P11487931015916568251

`A008574(n)-A010134(A082111(n))`
-/

namespace A118667.P11487931015916568251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A010134 (A082111 n).toNat

end

end A118667.P11487931015916568251

namespace A118667

/-- `A008574(n)-A010134(A082111(n))` -/
def P11487931015916568251.Spec : Prop :=
  ∀ n, P11487931015916568251.a n = A118667 n

end A118667

/-! ## A118667.P10889527969557966179

`record[A257088(n)]-A010134(A082111(n))`
-/

namespace A118667.P10889527969557966179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010134 (A082111 n).toNat

end

end A118667.P10889527969557966179

namespace A118667

/-- `record[A257088(n)]-A010134(A082111(n))` -/
def P10889527969557966179.Spec : Prop :=
  ∀ n, P10889527969557966179.a n = A118667 n

end A118667

/-! ## A118667.P2286891696649771809

`A257088(2*n)-A010134(A082111(n))`
-/

namespace A118667.P2286891696649771809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) - A010134 (A082111 n).toNat

end

end A118667.P2286891696649771809

namespace A118667

/-- `A257088(2*n)-A010134(A082111(n))` -/
def P2286891696649771809.Spec : Prop :=
  ∀ n, P2286891696649771809.a n = A118667 n

end A118667

/-!
# A118668: Number of distinct digits needed to write the n-th triangular number in decimal representation.

The programs for A118668, the canonical program `A118668.P12338032722953581586` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118668 has offset 0).

The definition of A118668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118668.P3117501511753631430

`dr(A086067(∑[n]))`
-/

namespace A118668.P3117501511753631430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086067 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A118668.P3117501511753631430

namespace A118668

/-- `dr(A086067(∑[n]))` -/
def P3117501511753631430.Spec : Prop :=
  ∀ n, (P3117501511753631430.a n : ℤ) = A118668 n

end A118668

/-! ## A118668.P12338032722953581586

`A043537(∑[n]+C(2, n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118668

/-- `A043537(∑[n]+C(2, n))` -/
def P12338032722953581586.Spec : Prop :=
  ∀ n, P12338032722953581586.a n = A118668 n

theorem P12338032722953581586.correct : P12338032722953581586.Spec := by
  intro n
  simp only [A118668]

end A118668

/-! ## A118668.P8412472395674267322

`A043537(or(C(2, n), ∑[n]))`
-/

namespace A118668.P8412472395674267322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Nat.lor (Nat.choose 2 n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A118668.P8412472395674267322

namespace A118668

/-- `A043537(or(C(2, n), ∑[n]))` -/
def P8412472395674267322.Spec : Prop :=
  ∀ n, P8412472395674267322.a n = A118668 n

end A118668

/-! ## A118668.P15269799079290656393

`A043537(∑[n]+floor(acot(n)))`
-/

namespace A118668.P15269799079290656393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A118668.P15269799079290656393

namespace A118668

/-- `A043537(∑[n]+floor(acot(n)))` -/
def P15269799079290656393.Spec : Prop :=
  ∀ n, P15269799079290656393.a n = A118668 n

end A118668

/-! ## A118668.P17005518711431003957

`A043537(∑[n]+round(acot(n)))`
-/

namespace A118668.P17005518711431003957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ))).toNat

end

end A118668.P17005518711431003957

namespace A118668

/-- `A043537(∑[n]+round(acot(n)))` -/
def P17005518711431003957.Spec : Prop :=
  ∀ n, P17005518711431003957.a n = A118668 n

end A118668

/-! ## A118668.P4049930668783761884

`A043537(abs(1-∑[n])+1)`
-/

namespace A118668.P4049930668783761884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (|1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A118668.P4049930668783761884

namespace A118668

/-- `A043537(abs(1-∑[n])+1)` -/
def P4049930668783761884.Spec : Prop :=
  ∀ n, P4049930668783761884.a n = A118668 n

end A118668

/-! ## A118668.P13091035954456021609

`A043562(A004186(∑[n]))`
-/

namespace A118668.P13091035954456021609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A004186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118668.P13091035954456021609

namespace A118668

/-- `A043562(A004186(∑[n]))` -/
def P13091035954456021609.Spec : Prop :=
  ∀ n, P13091035954456021609.a n = A118668 n

end A118668

/-! ## A118668.P15690828150857061439

`A000120(A086066(∑[n]))`
-/

namespace A118668.P15690828150857061439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118668.P15690828150857061439

namespace A118668

/-- `A000120(A086066(∑[n]))` -/
def P15690828150857061439.Spec : Prop :=
  ∀ n, P15690828150857061439.a n = A118668 n

end A118668

/-! ## A118668.P2937430029803763657

`A043562(A057846(∑[n]))`
-/

namespace A118668.P2937430029803763657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A057846 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118668.P2937430029803763657

namespace A118668

/-- `A043562(A057846(∑[n]))` -/
def P2937430029803763657.Spec : Prop :=
  ∀ n, P2937430029803763657.a n = A118668 n

end A118668

/-! ## A118668.P8940556920429790524

`A043562(A137564(∑[n]))`
-/

namespace A118668.P8940556920429790524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A137564 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118668.P8940556920429790524

namespace A118668

/-- `A043562(A137564(∑[n]))` -/
def P8940556920429790524.Spec : Prop :=
  ∀ n, P8940556920429790524.a n = A118668 n

end A118668

/-! ## A118668.P9063498217896592044

`A043562(A227362(∑[n]))`
-/

namespace A118668.P9063498217896592044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A227362 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118668.P9063498217896592044

namespace A118668

/-- `A043562(A227362(∑[n]))` -/
def P9063498217896592044.Spec : Prop :=
  ∀ n, P9063498217896592044.a n = A118668 n

end A118668

/-! ## A118668.P16735658028282656618

`A055642(A227362(A000217(n)))`
-/

namespace A118668.P16735658028282656618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A227362 (A000217 n).toNat).toNat

end

end A118668.P16735658028282656618

namespace A118668

/-- `A055642(A227362(A000217(n)))` -/
def P16735658028282656618.Spec : Prop :=
  ∀ n, P16735658028282656618.a n = A118668 n

end A118668

/-! ## A118668.P10912027461764363313

`A101598(∑[n+1]+2)`
-/

namespace A118668.P10912027461764363313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101598 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A118668.P10912027461764363313

namespace A118668

/-- `A101598(∑[n+1]+2)` -/
def P10912027461764363313.Spec : Prop :=
  ∀ n, P10912027461764363313.a n = A118668 n

end A118668

/-! ## A118668.P9787951907335089397

`A001221(A359802(∑[n]))`
-/

namespace A118668.P9787951907335089397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A359802 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118668.P9787951907335089397

namespace A118668

/-- `A001221(A359802(∑[n]))` -/
def P9787951907335089397.Spec : Prop :=
  ∀ n, P9787951907335089397.a n = A118668 n

end A118668

/-! ## A118668.P8147217778239612777

`A001221(∏{digits}[∑[n], A000040(#+1)])`
-/

namespace A118668.P8147217778239612777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000040 (x + 1)).prod.toNat

end

end A118668.P8147217778239612777

namespace A118668

/-- `A001221(∏{digits}[∑[n], A000040(#+1)])` -/
def P8147217778239612777.Spec : Prop :=
  ∀ n, P8147217778239612777.a n = A118668 n

end A118668

/-!
# A118671: Primitive elements of A096490.

The programs for A118671, there is no canonical definition to state claims against.
-/

/-! ## A118671.P14604864108737206512

`A118032(3*n+4)*A197127(A207182(2*(n+1)))`
-/

namespace A118671.P14604864108737206512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (3 * n + 4) * A197127 (A207182 (2 * (n + 1))).toNat

end

end A118671.P14604864108737206512

/-!
# A118672: Numbers divisible by prime(i)^i for some i.

The programs for A118672, the canonical program `A118672.P6633940070354547350` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118672 has offset 1).

The definition of A118672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118672.P6633940070354547350

`comp[A325128(n+1)-1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A118672

/-- `comp[A325128(n+1)-1]+1` -/
def P6633940070354547350.Spec : Prop :=
  ∀ n, (P6633940070354547350.a n : ℤ) = A118672 (n + 1)

theorem P6633940070354547350.correct : P6633940070354547350.Spec := by
  intro n
  simp only [A118672, Nat.add_sub_cancel]

end A118672

/-! ## A118672.P6541927527944989043

`lt[A328618(round(acot(n)+n)), n²]`
-/

namespace A118672.P6541927527944989043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118672.P6541927527944989043

namespace A118672

/-- `lt[A328618(round(acot(n)+n)), n²]` -/
def P6541927527944989043.Spec : Prop :=
  ∀ n, (P6541927527944989043.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P5937489020373510986

`lt[A328621(round(acot(n)+n)), n²]`
-/

namespace A118672.P5937489020373510986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118672.P5937489020373510986

namespace A118672

/-- `lt[A328621(round(acot(n)+n)), n²]` -/
def P5937489020373510986.Spec : Prop :=
  ∀ n, (P5937489020373510986.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P12617528179681378141

`lt[A328618(n^(n%2)), n²/2]`
-/

namespace A118672.P12617528179681378141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (n ^ (n % 2))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A118672.P12617528179681378141

namespace A118672

/-- `lt[A328618(n^(n%2)), n²/2]` -/
def P12617528179681378141.Spec : Prop :=
  ∀ n, (P12617528179681378141.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P15501554027837432088

`lt[A328621(A028310(n)), n²]`
-/

namespace A118672.P15501554027837432088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118672.P15501554027837432088

namespace A118672

/-- `lt[A328621(A028310(n)), n²]` -/
def P15501554027837432088.Spec : Prop :=
  ∀ n, (P15501554027837432088.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P10921182024527929688

`lt[char[A325128(n+1)], n/A354148(n+1)]`
-/

namespace A118672.P10921182024527929688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A354148 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A118672.P10921182024527929688

namespace A118672

/-- `lt[char[A325128(n+1)], n/A354148(n+1)]` -/
def P10921182024527929688.Spec : Prop :=
  ∀ n, (P10921182024527929688.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P13649933032897912900

`lt[A328621(A004277(n)), n²]`
-/

namespace A118672.P13649933032897912900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118672.P13649933032897912900

namespace A118672

/-- `lt[A328621(A004277(n)), n²]` -/
def P13649933032897912900.Spec : Prop :=
  ∀ n, (P13649933032897912900.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P4061650271269820652

`eq[floor(acot(n)), A256750(n²)]`
-/

namespace A118672.P4061650271269820652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P4061650271269820652

namespace A118672

/-- `eq[floor(acot(n)), A256750(n²)]` -/
def P4061650271269820652.Spec : Prop :=
  ∀ n, (P4061650271269820652.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P15972925358290345359

`eq[0, A256750(n^ceil(atan(n)))]`
-/

namespace A118672.P15972925358290345359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118672.P15972925358290345359

namespace A118672

/-- `eq[0, A256750(n^ceil(atan(n)))]` -/
def P15972925358290345359.Spec : Prop :=
  ∀ n, (P15972925358290345359.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P9112012224460991829

`eq[0, A256750((n+1)²)]+1`
-/

namespace A118672.P9112012224460991829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118672.P9112012224460991829

namespace A118672

/-- `eq[0, A256750((n+1)²)]+1` -/
def P9112012224460991829.Spec : Prop :=
  ∀ n, (P9112012224460991829.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P5198498781989123080

`eq[1, A342023((n+1)*(n+1))]+1`
-/

namespace A118672.P5198498781989123080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 ((n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118672.P5198498781989123080

namespace A118672

/-- `eq[1, A342023((n+1)*(n+1))]+1` -/
def P5198498781989123080.Spec : Prop :=
  ∀ n, (P5198498781989123080.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P3607266344762437038

`eq[0, A256750(A253909(n))]`
-/

namespace A118672.P3607266344762437038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118672.P3607266344762437038

namespace A118672

/-- `eq[0, A256750(A253909(n))]` -/
def P3607266344762437038.Spec : Prop :=
  ∀ n, (P3607266344762437038.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P4933755525604537740

`eq[A000007(n), A256750(n²)]`
-/

namespace A118672.P4933755525604537740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P4933755525604537740

namespace A118672

/-- `eq[A000007(n), A256750(n²)]` -/
def P4933755525604537740.Spec : Prop :=
  ∀ n, (P4933755525604537740.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P12757969682724408336

`eq[A000038(n), A256750(n²)]`
-/

namespace A118672.P12757969682724408336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P12757969682724408336

namespace A118672

/-- `eq[A000038(n), A256750(n²)]` -/
def P12757969682724408336.Spec : Prop :=
  ∀ n, (P12757969682724408336.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P6047297775979265587

`eq[A130706(n), A256750(n²)]`
-/

namespace A118672.P6047297775979265587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P6047297775979265587

namespace A118672

/-- `eq[A130706(n), A256750(n²)]` -/
def P6047297775979265587.Spec : Prop :=
  ∀ n, (P6047297775979265587.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P15338583273196307172

`eq[A169585(n), A256750(n²)]`
-/

namespace A118672.P15338583273196307172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P15338583273196307172

namespace A118672

/-- `eq[A169585(n), A256750(n²)]` -/
def P15338583273196307172.Spec : Prop :=
  ∀ n, (P15338583273196307172.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P11950362568316809825

`eq[A256750(n²), A285476(n)]`
-/

namespace A118672.P11950362568316809825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P11950362568316809825

namespace A118672

/-- `eq[A256750(n²), A285476(n)]` -/
def P11950362568316809825.Spec : Prop :=
  ∀ n, (P11950362568316809825.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P423247033139770983

`eq[A154281(n+1), A256750(n²)]`
-/

namespace A118672.P423247033139770983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P423247033139770983

namespace A118672

/-- `eq[A154281(n+1), A256750(n²)]` -/
def P423247033139770983.Spec : Prop :=
  ∀ n, (P423247033139770983.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P9089350557354810662

`eq[A154955(n+1), A256750(n²)]`
-/

namespace A118672.P9089350557354810662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P9089350557354810662

namespace A118672

/-- `eq[A154955(n+1), A256750(n²)]` -/
def P9089350557354810662.Spec : Prop :=
  ∀ n, (P9089350557354810662.a n : ℤ) = A118672 (n + 1)

end A118672

/-! ## A118672.P15520833453336001517

`eq[A008683(A008574(n)), A256750(n²)]`
-/

namespace A118672.P15520833453336001517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118672.P15520833453336001517

namespace A118672

/-- `eq[A008683(A008574(n)), A256750(n²)]` -/
def P15520833453336001517.Spec : Prop :=
  ∀ n, (P15520833453336001517.a n : ℤ) = A118672 (n + 1)

end A118672

/-!
# A118673: Positive solutions x to the equation x^2 + (x+71)^2 = y^2.

The programs for A118673, the canonical program `A118673.P9949980854759988245` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118673 has offset 0).

The definition of A118673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118673.P9949980854759988245

`ogf((13x+147x^2+53x^3-11x^4-49x^5-11x^6)/(1-x-6x^3+6x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118673

/-- `ogf((13x+147x^2+53x^3-11x^4-49x^5-11x^6)/(1-x-6x^3+6x^4+x^6-x^7))` -/
def P9949980854759988245.Spec : Prop :=
  ∀ n, P9949980854759988245.a n = A118673 n

theorem P9949980854759988245.correct : P9949980854759988245.Spec := by
  intro n
  simp only [A118673]

end A118673

/-! ## A118673.P11666509774109076125

`A129992(n+1)+A130608(n+1)-A130609(n+1)`
-/

namespace A118673.P11666509774109076125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129992 (n + 1) + (A130608 (n + 1) - A130609 (n + 1))

end

end A118673.P11666509774109076125

namespace A118673

/-- `A129992(n+1)+A130608(n+1)-A130609(n+1)` -/
def P11666509774109076125.Spec : Prop :=
  ∀ n, P11666509774109076125.a n = A118673 n

end A118673

/-!
# A118674: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2 + (x + 31)^2 = y^2.

The programs for A118674, the canonical program `A118674.P5978535402460963575` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118674 has offset 1).

The definition of A118674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118674.P5978535402460963575

`6*a(n-3)-a(n-6)+62` with `a(0)=0, a(1)=9, a(2)=60, a(3)=93, a(4)=140, a(5)=429`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118674

/-- `6*a(n-3)-a(n-6)+62` -/
def P5978535402460963575.Spec : Prop :=
  ∀ n, P5978535402460963575.a n = A118674 (n + 1)

theorem P5978535402460963575.correct : P5978535402460963575.Spec := by
  intro n
  simp only [A118674, Nat.add_sub_cancel]

end A118674

/-! ## A118674.P14350611724542972227

`ogf((9x+51x^2+33x^3-7x^4-17x^5-7x^6)/(1-x-6x^3+6x^4+x^6-x^7))`
-/

namespace A118674.P14350611724542972227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 51, 33, -7, -17, -7] [1, -1, 0, -6, 6, 0, 1, -1] n

end

end A118674.P14350611724542972227

namespace A118674

/-- `ogf((9x+51x^2+33x^3-7x^4-17x^5-7x^6)/(1-x-6x^3+6x^4+x^6-x^7))` -/
def P14350611724542972227.Spec : Prop :=
  ∀ n, P14350611724542972227.a n = A118674 (n + 1)

end A118674

/-! ## A118674.P8712802370126210452

`A118675(n+1)+A129289(n+1)-A129298(n+1)`
-/

namespace A118674.P8712802370126210452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118675 (n + 1) + (A129289 (n + 1) - A129298 (n + 1))

end

end A118674.P8712802370126210452

namespace A118674

/-- `A118675(n+1)+A129289(n+1)-A129298(n+1)` -/
def P8712802370126210452.Spec : Prop :=
  ∀ n, P8712802370126210452.a n = A118674 (n + 1)

end A118674

/-! ## A118674.P13737794041036226081

`A118676(n+1)+A129725(n+1)-A101152(n+1)`
-/

namespace A118674.P13737794041036226081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118676 (n + 1) + (A129725 (n + 1) - A101152 (n + 1))

end

end A118674.P13737794041036226081

namespace A118674

/-- `A118676(n+1)+A129725(n+1)-A101152(n+1)` -/
def P13737794041036226081.Spec : Prop :=
  ∀ n, P13737794041036226081.a n = A118674 (n + 1)

end A118674

/-!
# A118675: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+47)^2 = y^2.

The programs for A118675, the canonical program `A118675.P10393377332617653130` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118675 has offset 1).

The definition of A118675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118675.P10393377332617653130

`6*a(n-3)-a(n-6)+94` with `a(0)=0, a(1)=16, a(2)=85, a(3)=141, a(4)=225, a(5)=616`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118675

/-- `6*a(n-3)-a(n-6)+94` -/
def P10393377332617653130.Spec : Prop :=
  ∀ n, P10393377332617653130.a n = A118675 (n + 1)

theorem P10393377332617653130.correct : P10393377332617653130.Spec := by
  intro n
  simp only [A118675, Nat.add_sub_cancel]

end A118675

/-! ## A118675.P3474100318501381040

`ogf((16x+69x^2+56x^3-12x^4-23x^5-12x^6)/(1-x-6x^3+6x^4+x^6-x^7))`
-/

namespace A118675.P3474100318501381040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16, 69, 56, -12, -23, -12] [1, -1, 0, -6, 6, 0, 1, -1] n

end

end A118675.P3474100318501381040

namespace A118675

/-- `ogf((16x+69x^2+56x^3-12x^4-23x^5-12x^6)/(1-x-6x^3+6x^4+x^6-x^7))` -/
def P3474100318501381040.Spec : Prop :=
  ∀ n, P3474100318501381040.a n = A118675 (n + 1)

end A118675

/-! ## A118675.P6003328443854114409

`A118674(n+1)+A129298(n+1)-A129289(n+1)`
-/

namespace A118675.P6003328443854114409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118674 (n + 1) + (A129298 (n + 1) - A129289 (n + 1))

end

end A118675.P6003328443854114409

namespace A118675

/-- `A118674(n+1)+A129298(n+1)-A129289(n+1)` -/
def P6003328443854114409.Spec : Prop :=
  ∀ n, P6003328443854114409.a n = A118675 (n + 1)

end A118675

/-!
# A118676: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+79)^2 = y^2.

The programs for A118676, the canonical program `A118676.P10706902638805042976` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118676 has offset 1).

The definition of A118676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118676.P10706902638805042976

`ogf((20x+141x^2+76x^3-16x^4-47x^5-16x^6)/(1-x-6x^3+6x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A118676

/-- `ogf((20x+141x^2+76x^3-16x^4-47x^5-16x^6)/(1-x-6x^3+6x^4+x^6-x^7))` -/
def P10706902638805042976.Spec : Prop :=
  ∀ n, P10706902638805042976.a n = A118676 (n + 1)

theorem P10706902638805042976.correct : P10706902638805042976.Spec := by
  intro n
  simp only [A118676, Nat.add_sub_cancel]

end A118676

/-! ## A118676.P17165736298171740488

`A101152(n+1)+A118674(n+1)-A129725(n+1)`
-/

namespace A118676.P17165736298171740488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101152 (n + 1) + (A118674 (n + 1) - A129725 (n + 1))

end

end A118676.P17165736298171740488

namespace A118676

/-- `A101152(n+1)+A118674(n+1)-A129725(n+1)` -/
def P17165736298171740488.Spec : Prop :=
  ∀ n, P17165736298171740488.a n = A118676 (n + 1)

end A118676

/-!
# A118677: Number of Motzkin paths of length n in 3D with no level steps at odd level.

The programs for A118677, there is no canonical definition to state claims against.
-/

/-! ## A118677.P15068592244368674309

`or(A046523(A039302(n)), A322940(n))`
-/

namespace A118677.P15068592244368674309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046523 (A039302 n).toNat) (A322940 n)

end

end A118677.P15068592244368674309

/-! ## A118677.P10874185549939005956

`A048117(n+2)-A048105(A008981(n))`
-/

namespace A118677.P10874185549939005956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048117 (n + 2) - A048105 (A008981 n).toNat

end

end A118677.P10874185549939005956

/-!
# A118678: Primitive orders of cyclotomic polynomials containing a coefficient with absolute value >= 2.

The programs for A118678, there is no canonical definition to state claims against.
-/

/-! ## A118678.P17707144703253424393

`record[A080305(A154430(n+1))]`
-/

namespace A118678.P17707144703253424393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A154430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118678.P17707144703253424393

/-! ## A118678.P2343384117299066978

`filter[A154430(n+1), A066829(#)]`
-/

namespace A118678.P2343384117299066978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A118678.P2343384117299066978

/-! ## A118678.P7936858344565607105

`filter[A154430(n+1), A252233(#)]`
-/

namespace A118678.P7936858344565607105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A118678.P7936858344565607105

/-! ## A118678.P11159295299080366115

`filter[A154430(n+1), A340369(#)]`
-/

namespace A118678.P11159295299080366115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A118678.P11159295299080366115

/-! ## A118678.P11037735803859308564

`filter[A154430(n+1), A353558(#)]`
-/

namespace A118678.P11037735803859308564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A118678.P11037735803859308564

/-! ## A118678.P1909567881352127929

`filter[A154430(n+1), A353673(#)]`
-/

namespace A118678.P1909567881352127929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A118678.P1909567881352127929

/-! ## A118678.P9964240785020240372

`filter[A154430(n+1), A354806(#)]`
-/

namespace A118678.P9964240785020240372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354806 (f1 j).toNat = 1) n)

end

end A118678.P9964240785020240372

/-! ## A118678.P13837001798471099129

`filter[A154430(n+1), A354807(#)]`
-/

namespace A118678.P13837001798471099129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A118678.P13837001798471099129

/-! ## A118678.P15124180603637838866

`filter[A154430(n+1), A354926(#)]`
-/

namespace A118678.P15124180603637838866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A118678.P15124180603637838866

/-! ## A118678.P16826188429274299521

`filter[A154430(n+1), A358753(#)]`
-/

namespace A118678.P16826188429274299521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A118678.P16826188429274299521

/-! ## A118678.P7755875489035555620

`filter[A154430(n+1), A358773(#)]`
-/

namespace A118678.P7755875489035555620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A118678.P7755875489035555620

/-! ## A118678.P11528128049674274130

`filter[A154430(n+1), A359158(#)]`
-/

namespace A118678.P11528128049674274130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A118678.P11528128049674274130

/-! ## A118678.P17379086628700341682

`filter[A154430(n+1), A359372(#)]`
-/

namespace A118678.P17379086628700341682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A118678.P17379086628700341682

/-! ## A118678.P8016181106520463088

`filter[A154430(n+1), A359606(#)]`
-/

namespace A118678.P8016181106520463088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359606 (f1 j).toNat = 1) n)

end

end A118678.P8016181106520463088

/-! ## A118678.P17683830744433270912

`filter[A154430(n+1), A369058(#)]`
-/

namespace A118678.P17683830744433270912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A118678.P17683830744433270912

/-! ## A118678.P15130637977305796599

`filter[A154430(n+1), A373141(#)]`
-/

namespace A118678.P15130637977305796599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A118678.P15130637977305796599

/-! ## A118678.P9845619354266736687

`∩[A007304(n+1), A154430(n+1)]`
-/

namespace A118678.P9845619354266736687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118678.P9845619354266736687

/-! ## A118678.P3217984772940273937

`∩[A030626(n+1), A154430(n+1)]`
-/

namespace A118678.P3217984772940273937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118678.P3217984772940273937

/-! ## A118678.P10687300978182180023

`∩[A046316(n+1), A154430(n+1)]`
-/

namespace A118678.P10687300978182180023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118678.P10687300978182180023

/-! ## A118678.P7174690386799123158

`∩[A046340(n+1), A154430(n+1)]`
-/

namespace A118678.P7174690386799123158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118678.P7174690386799123158

/-!
# A118679: Absolute value of numerator of determinant of n X n matrix with M(i,j) = i/(i+1) if i=j otherwise 1.

The programs for A118679, there is no canonical definition to state claims against.
-/

/-! ## A118679.P14803079191819857278

`A034856(n+1)/gcd(A000165(n), A034856(n+1))`
-/

namespace A118679.P14803079191819857278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034856 (n + 1) : ℚ) / (Int.gcd (A000165 n) (A034856 (n + 1)) : ℚ)

end

end A118679.P14803079191819857278

/-! ## A118679.P11253533490693538368

`A324371(lcm(A019554(n+1), A034856(n+1)))`
-/

namespace A118679.P11253533490693538368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (Int.lcm (A019554 (n + 1)) (A034856 (n + 1)))

end

end A118679.P11253533490693538368

/-! ## A118679.P15544118240972060424

`A324371((∑[n+2]-1)*A217434(n+1))`
-/

namespace A118679.P15544118240972060424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A217434 (n + 1)).toNat

end

end A118679.P15544118240972060424

/-! ## A118679.P18268809408409627223

`A324371(lcm(∑[n+2]-1, A217434(n+1)))`
-/

namespace A118679.P18268809408409627223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (A217434 (n + 1)))

end

end A118679.P18268809408409627223

/-! ## A118679.P7768008002833418069

`A236999(n+1)+A010051(A109298(n+1))`
-/

namespace A118679.P7768008002833418069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236999 (n + 1) + A010051 (A109298 (n + 1)).toNat

end

end A118679.P7768008002833418069

/-!
# A118680: Numerator of determinant of n X n matrix with M(i,j) = (i+1)/i if i=j otherwise 1.

The programs for A118680, there is no canonical definition to state claims against.
-/

/-! ## A118680.P2581526290085674713

`lcm(∑[n+1]+1, (n+1)!)/(n+1)!`
-/

namespace A118680.P2581526290085674713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (Nat.factorial (n + 1)) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A118680.P2581526290085674713

/-! ## A118680.P13348436217063688540

`lcm(A000124(n+1), A000142(n+1))/A000142(n+1)`
-/

namespace A118680.P13348436217063688540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000124 (n + 1)) (A000142 (n + 1)) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A118680.P13348436217063688540

/-! ## A118680.P12114431048279817839

`A056609(n*(n+3)+3)`
-/

namespace A118680.P12114431048279817839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (n * (n + 3) + 3)

end

end A118680.P12114431048279817839

/-! ## A118680.P14934698490426283960

`A324371(A000124(n+1)*A206494(n+3))`
-/

namespace A118680.P14934698490426283960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A000124 (n + 1) * A206494 (n + 3)).toNat

end

end A118680.P14934698490426283960

/-! ## A118680.P16104640576743040810

`A324371(∑[char[1]+1+n]*A013929(n+1))`
-/

namespace A118680.P16104640576743040810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A013929 (n + 1)).toNat

end

end A118680.P16104640576743040810

/-!
# A118681: Numbers that contain a single zero in bases 2 and 10.

The programs for A118681, there is no canonical definition to state claims against.
-/

/-! ## A118681.P12053366183307783240

`∩[A030130(n+1), A153114(n+1)]`
-/

namespace A118681.P12053366183307783240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118681.P12053366183307783240

/-! ## A118681.P7625997651894948813

`∩[A153114(n+1), A089633(A080036(n)-1)]`
-/

namespace A118681.P7625997651894948813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A080036 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118681.P7625997651894948813

/-! ## A118681.P13298902393898853073

`∩[A153114(n+1), A089633(A123578(n)+n)]`
-/

namespace A118681.P13298902393898853073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A123578 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118681.P13298902393898853073

/-! ## A118681.P12957141640424367297

`∩[A153114(n+1), A023758(A080036(n)+1)-1]`
-/

namespace A118681.P12957141640424367297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A080036 n + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118681.P12957141640424367297

/-! ## A118681.P4109998008066682754

`∩[A043569(n+1)-A035214(n), A153114(n+1)]`
-/

namespace A118681.P4109998008066682754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118681.P4109998008066682754

/-!
# A118682: Triangle where T(n,k) depends on the last digit of prime(n)*prime(k). If this is 1 or 9, T(n,k) = 1; if 3 or 7, T(n,k) = 2; otherwise T(n,k) = 0.

The programs for A118682, there is no canonical definition to state claims against.
-/

/-! ## A118682.P15996297381749371869

`A175332(n+1)%A001221(A277807(n+1))`
-/

namespace A118682.P15996297381749371869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175332 (n + 1)) (A001221 (A277807 (n + 1)).toNat)

end

end A118682.P15996297381749371869

/-! ## A118682.P5657473276200057732

`and(∑{p}[A287498(n+1), #], A287475(n))`
-/

namespace A118682.P5657473276200057732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A287475 n)

end

end A118682.P5657473276200057732

/-! ## A118682.P419584094865017298

`A176088(A050873(n+1))!%A022446(A132393(n))`
-/

namespace A118682.P419584094865017298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A176088 (A050873 (n + 1)).toNat).toNat : ℤ) (A022446 (A132393 n).toNat)

end

end A118682.P419584094865017298

/-! ## A118682.P18337488659973076731

`A101436(lcm(2, A061559(n+1)))`
-/

namespace A118682.P18337488659973076731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (Int.lcm 2 (A061559 (n + 1)))

end

end A118682.P18337488659973076731

/-! ## A118682.P8242970949230600990

`xor(n, 3*∑[n]%2)%A104246(A262923(n))`
-/

namespace A118682.P8242970949230600990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor n (3 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2)) : ℤ) (A104246 (A262923 n).toNat)

end

end A118682.P8242970949230600990

/-!
# A118683: Triangle, T(n,k) = A039701(n) + A039701(k) - A039701(n)*A039701(k), read by rows.

The programs for A118683, the canonical program `A118683.P4158127544114815964` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118683 has offset 1).

The definition of A118683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118683.P4158127544114815964

`A039701(row(n)+1)+A039701(col(n)+1)-A039701(row(n)+1)*A039701(col(n)+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A118683

/-- `A039701(row(n)+1)+A039701(col(n)+1)-A039701(row(n)+1)*A039701(col(n)+1)` -/
def P4158127544114815964.Spec : Prop :=
  ∀ n, P4158127544114815964.a n = A118683 (n + 1)

theorem P4158127544114815964.correct : P4158127544114815964.Spec := by
  intro n
  simp only [A118683, Nat.add_sub_cancel]

end A118683

/-! ## A118683.P13386298145138651244

`A321102(A310634(∑[A172991(n)]))`
-/

namespace A118683.P13386298145138651244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 (A310634 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A118683.P13386298145138651244

namespace A118683

/-- `A321102(A310634(∑[A172991(n)]))` -/
def P13386298145138651244.Spec : Prop :=
  ∀ n, P13386298145138651244.a n = A118683 (n + 1)

end A118683

/-! ## A118683.P12032622726612908400

`A054845(∑[A028895(n)]*A057058(n+1))`
-/

namespace A118683.P12032622726612908400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 ((∑ j ∈ Finset.range (n + 1), f1 j) * A057058 (n + 1)).toNat

end

end A118683.P12032622726612908400

namespace A118683

/-- `A054845(∑[A028895(n)]*A057058(n+1))` -/
def P12032622726612908400.Spec : Prop :=
  ∀ n, P12032622726612908400.a n = A118683 (n + 1)

end A118683

/-! ## A118683.P18129722809297842324

`A278700(A265250(n+1)+A074368(n+1))`
-/

namespace A118683.P18129722809297842324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (A265250 (n + 1) + A074368 (n + 1)).toNat

end

end A118683.P18129722809297842324

namespace A118683

/-- `A278700(A265250(n+1)+A074368(n+1))` -/
def P18129722809297842324.Spec : Prop :=
  ∀ n, P18129722809297842324.a n = A118683 (n + 1)

end A118683

/-! ## A118683.P4845255212362089735

`A005090(A049057(n+4))-A005091(n+9)`
-/

namespace A118683.P4845255212362089735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A049057 (n + 4)).toNat - A005091 (n + 9)

end

end A118683.P4845255212362089735

namespace A118683

/-- `A005090(A049057(n+4))-A005091(n+9)` -/
def P4845255212362089735.Spec : Prop :=
  ∀ n, P4845255212362089735.a n = A118683 (n + 1)

end A118683

/-!
# A118684: Numbers k for which the Mertens function M(k) (A002321) is 1.

The programs for A118684, the canonical program `A118684.P5148410373885334086` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118684 has offset 1).

The definition of A118684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118684.P5148410373885334086

`eq[1, A008683(n)+a(n-1)]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A118684

/-- `eq[1, A008683(n)+a(n-1)]` -/
def P5148410373885334086.Spec : Prop :=
  ∀ n, (P5148410373885334086.a n : ℤ) = A118684 (n + 1)

theorem P5148410373885334086.correct : P5148410373885334086.Spec := by
  intro n
  simp only [A118684, Nat.add_sub_cancel]

end A118684

/-! ## A118684.P5668455878194729900

`eq[0, a(n-1)-A008683(2*n-n)]` with `a(0)=1`
-/

namespace A118684.P5668455878194729900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A008683 (2 * n - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118684.P5668455878194729900

namespace A118684

/-- `eq[0, a(n-1)-A008683(2*n-n)]` -/
def P5668455878194729900.Spec : Prop :=
  ∀ n, (P5668455878194729900.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P11628767338963284613

`a(n-1)+A081222(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A118684.P11628767338963284613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081222 (a (n - 1) + 1).toNat + 1)

end

end A118684.P11628767338963284613

namespace A118684

/-- `a(n-1)+A081222(a(n-1)+1)+1` -/
def P11628767338963284613.Spec : Prop :=
  ∀ n, P11628767338963284613.a n = A118684 (n + 1)

end A118684

/-! ## A118684.P1458774323491835421

`eq[1, A002321(n+1)]+1`
-/

namespace A118684.P1458774323491835421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118684.P1458774323491835421

namespace A118684

/-- `eq[1, A002321(n+1)]+1` -/
def P1458774323491835421.Spec : Prop :=
  ∀ n, (P1458774323491835421.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P15668837324976405162

`eq[1, A162943(n+1)]+1`
-/

namespace A118684.P15668837324976405162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118684.P15668837324976405162

namespace A118684

/-- `eq[1, A162943(n+1)]+1` -/
def P15668837324976405162.Spec : Prop :=
  ∀ n, (P15668837324976405162.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P15305120734883027797

`eq[A061669(n+1), A143443(n+1)]`
-/

namespace A118684.P15305120734883027797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118684.P15305120734883027797

namespace A118684

/-- `eq[A061669(n+1), A143443(n+1)]` -/
def P15305120734883027797.Spec : Prop :=
  ∀ n, (P15305120734883027797.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P2921488656321284173

`eq[A143443(n+1)/(n+1), A007423(n+1)]`
-/

namespace A118684.P2921488656321284173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A118684.P2921488656321284173

namespace A118684

/-- `eq[A143443(n+1)/(n+1), A007423(n+1)]` -/
def P2921488656321284173.Spec : Prop :=
  ∀ n, (P2921488656321284173.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P281408606200263565

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=1`
-/

namespace A118684.P281408606200263565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118684.P281408606200263565

namespace A118684

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P281408606200263565.Spec : Prop :=
  ∀ n, (P281408606200263565.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P6782367762119345515

`eq[a(n-1)-A157657(n+1), A080847(n+1)]` with `a(0)=2`
-/

namespace A118684.P6782367762119345515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118684.P6782367762119345515

namespace A118684

/-- `eq[a(n-1)-A157657(n+1), A080847(n+1)]` -/
def P6782367762119345515.Spec : Prop :=
  ∀ n, (P6782367762119345515.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P11023309366998589413

`eq[a(n-1)-A157657(n+1), A231821(n+1)]` with `a(0)=3`
-/

namespace A118684.P11023309366998589413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118684.P11023309366998589413

namespace A118684

/-- `eq[a(n-1)-A157657(n+1), A231821(n+1)]` -/
def P11023309366998589413.Spec : Prop :=
  ∀ n, (P11023309366998589413.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P1514471031070696548

`eq[A002321(A028310(n)), A057427(n)]`
-/

namespace A118684.P1514471031070696548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118684.P1514471031070696548

namespace A118684

/-- `eq[A002321(A028310(n)), A057427(n)]` -/
def P1514471031070696548.Spec : Prop :=
  ∀ n, (P1514471031070696548.a n : ℤ) = A118684 (n + 1)

end A118684

/-! ## A118684.P12948935150676174046

`A000720(p?[A000040(n+1)*A002321(n+1)])`
-/

namespace A118684.P12948935150676174046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A118684.P12948935150676174046

namespace A118684

/-- `A000720(p?[A000040(n+1)*A002321(n+1)])` -/
def P12948935150676174046.Spec : Prop :=
  ∀ n, P12948935150676174046.a n = A118684 (n + 1)

end A118684

/-!
# A118685: Signs of entries in the multiplication table for hypercomplex numbers with Cayley-Dickson construction (by antidiagonals).

The programs for A118685, there is no canonical definition to state claims against.
-/

/-! ## A118685.P1760249834769187875

`A285495(A133676(n+1)+A004881(2*(n+1)))`
-/

namespace A118685.P1760249834769187875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (A133676 (n + 1) + A004881 (2 * (n + 1))).toNat

end

end A118685.P1760249834769187875

/-! ## A118685.P3838134639038764173

`A080846(gcd(A297833(n), A307139(n)))`
-/

namespace A118685.P3838134639038764173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (Int.gcd (A297833 n) (A307139 n))

end

end A118685.P3838134639038764173

/-! ## A118685.P2842550600733079335

`and(A024695(n+1), A049046(A307139(n)))`
-/

namespace A118685.P2842550600733079335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024695 (n + 1)) (A049046 (A307139 n).toNat)

end

end A118685.P2842550600733079335

/-! ## A118685.P16552962061553395761

`and(1, A172264(A111577(n+1)))`
-/

namespace A118685.P16552962061553395761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A172264 (A111577 (n + 1)).toNat)

end

end A118685.P16552962061553395761

/-! ## A118685.P1591901701018733342

`A090173(A362308(n))`
-/

namespace A118685.P1591901701018733342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A362308 n).toNat

end

end A118685.P1591901701018733342

/-!
# A118686: Triangle read by rows. Let g(n) = n if n is a prime, otherwise g(n) = 1. Let p(0) = 1, p(n) = g(n)*p(n-1). Row n gives coefficients of Product_{j=0..n} (x - p(j)), with row 0 = {1}.

The programs for A118686, there is no canonical definition to state claims against.
-/

/-! ## A118686.P14996001175542470971

`A355540(n)%A053327(A355579(n+1)+1)`
-/

namespace A118686.P14996001175542470971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355540 n) (A053327 (A355579 (n + 1) + 1).toNat)

end

end A118686.P14996001175542470971

/-! ## A118686.P17756957372332094369

`A355540(A055645(n))`
-/

namespace A118686.P17756957372332094369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 (A055645 n).toNat

end

end A118686.P17756957372332094369

/-! ## A118686.P3751038412284532520

`A355540(A341709(n))`
-/

namespace A118686.P3751038412284532520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 (A341709 n).toNat

end

end A118686.P3751038412284532520

/-! ## A118686.P6950430788060300674

`A355540(A262545(n+1))`
-/

namespace A118686.P6950430788060300674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 (A262545 (n + 1)).toNat

end

end A118686.P6950430788060300674

/-! ## A118686.P1194540745610067297

`A355540(n*A066701(n+3))`
-/

namespace A118686.P1194540745610067297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 ((n : ℤ) * A066701 (n + 3)).toNat

end

end A118686.P1194540745610067297

/-!
# A118687: A triangular array made from polynomial coefficients of A049614.

The programs for A118687, there is no canonical definition to state claims against.
-/

/-! ## A118687.P6544637539851590249

`A119724(n)-A000120(A090318(n+1))`
-/

namespace A118687.P6544637539851590249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 n - A000120 (A090318 (n + 1)).toNat

end

end A118687.P6544637539851590249

/-! ## A118687.P2970021343115225641

`A119724(A055645(n))`
-/

namespace A118687.P2970021343115225641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 (A055645 n).toNat

end

end A118687.P2970021343115225641

/-! ## A118687.P4895401177493891376

`A119724(A262545(n+1))`
-/

namespace A118687.P4895401177493891376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 (A262545 (n + 1)).toNat

end

end A118687.P4895401177493891376

/-! ## A118687.P13612626374375240087

`A119724(A090318(n+1)+n)`
-/

namespace A118687.P13612626374375240087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 (A090318 (n + 1) + (n : ℤ)).toNat

end

end A118687.P13612626374375240087

/-! ## A118687.P5883141443092346216

`A119724(n)%A080854(n+1)`
-/

namespace A118687.P5883141443092346216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119724 n) (A080854 (n + 1))

end

end A118687.P5883141443092346216

/-!
# A118688: Semiprimes for which the sum of the digits is also a semiprime.

The programs for A118688, the canonical program `A118688.P11549226486572488328` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118688 has offset 1).

The definition of A118688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118688.P16414744676038386403

`filter[A085802(n+1), A064911(#)]`
-/

namespace A118688.P16414744676038386403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A118688.P16414744676038386403

namespace A118688

/-- `filter[A085802(n+1), A064911(#)]` -/
def P16414744676038386403.Spec : Prop :=
  ∀ n, P16414744676038386403.a n = A118688 (n + 1)

end A118688

/-! ## A118688.P11549226486572488328

`∩[A001358(n+1), A085802(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118688

/-- `∩[A001358(n+1), A085802(n+1)]` -/
def P11549226486572488328.Spec : Prop :=
  ∀ n, (P11549226486572488328.a n : ℤ) = A118688 (n + 1)

theorem P11549226486572488328.correct : P11549226486572488328.Spec := by
  intro n
  simp only [A118688, Nat.add_sub_cancel]

end A118688

/-! ## A118688.P6711345083175435973

`∩[A085802(n+1), A176540(n+1)]`
-/

namespace A118688.P6711345083175435973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118688.P6711345083175435973

namespace A118688

/-- `∩[A085802(n+1), A176540(n+1)]` -/
def P6711345083175435973.Spec : Prop :=
  ∀ n, (P6711345083175435973.a n : ℤ) = A118688 (n + 1)

end A118688

/-! ## A118688.P6045288705047872897

`record[A179312(A085802(n+1))]`
-/

namespace A118688.P6045288705047872897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A085802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118688.P6045288705047872897

namespace A118688

/-- `record[A179312(A085802(n+1))]` -/
def P6045288705047872897.Spec : Prop :=
  ∀ n, P6045288705047872897.a n = A118688 (n + 1)

end A118688

/-! ## A118688.P10474839283516343912

`lt[2, A105700(A007953(n))*A105700(n)]`
-/

namespace A118688.P10474839283516343912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n).toNat * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118688.P10474839283516343912

namespace A118688

/-- `lt[2, A105700(A007953(n))*A105700(n)]` -/
def P10474839283516343912.Spec : Prop :=
  ∀ n, (P10474839283516343912.a n : ℤ) = A118688 (n + 1)

end A118688

/-!
# A118689: Semiprimes for which the product of the digits is also a semiprime.

The programs for A118689, the canonical program `A118689.P2830633073077826485` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118689 has offset 1).

The definition of A118689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118689.P1494105035631314878

`∩[A001358(n+1), A245383(n+1)]`
-/

namespace A118689.P1494105035631314878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118689.P1494105035631314878

namespace A118689

/-- `∩[A001358(n+1), A245383(n+1)]` -/
def P1494105035631314878.Spec : Prop :=
  ∀ n, (P1494105035631314878.a n : ℤ) = A118689 (n + 1)

end A118689

/-! ## A118689.P2830633073077826485

`filter[A245383(n+1), A064911(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118689

/-- `filter[A245383(n+1), A064911(#)]` -/
def P2830633073077826485.Spec : Prop :=
  ∀ n, P2830633073077826485.a n = A118689 (n + 1)

theorem P2830633073077826485.correct : P2830633073077826485.Spec := by
  intro n
  simp only [A118689, Nat.add_sub_cancel]

end A118689

/-! ## A118689.P6298917719398475228

`∩[A112381(n+1), A245383(n+1)]`
-/

namespace A118689.P6298917719398475228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118689.P6298917719398475228

namespace A118689

/-- `∩[A112381(n+1), A245383(n+1)]` -/
def P6298917719398475228.Spec : Prop :=
  ∀ n, (P6298917719398475228.a n : ℤ) = A118689 (n + 1)

end A118689

/-! ## A118689.P18273197096816630665

`∩[A176540(n+1), A245383(n+1)]`
-/

namespace A118689.P18273197096816630665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118689.P18273197096816630665

namespace A118689

/-- `∩[A176540(n+1), A245383(n+1)]` -/
def P18273197096816630665.Spec : Prop :=
  ∀ n, (P18273197096816630665.a n : ℤ) = A118689 (n + 1)

end A118689

/-! ## A118689.P16004778186562740132

`∩[A186621(n+1)+1, A245383(n+1)]`
-/

namespace A118689.P16004778186562740132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118689.P16004778186562740132

namespace A118689

/-- `∩[A186621(n+1)+1, A245383(n+1)]` -/
def P16004778186562740132.Spec : Prop :=
  ∀ n, (P16004778186562740132.a n : ℤ) = A118689 (n + 1)

end A118689

/-! ## A118689.P5359189510155049097

`record[A179312(A245383(n+1))]`
-/

namespace A118689.P5359189510155049097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A245383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118689.P5359189510155049097

namespace A118689

/-- `record[A179312(A245383(n+1))]` -/
def P5359189510155049097.Spec : Prop :=
  ∀ n, P5359189510155049097.a n = A118689 (n + 1)

end A118689

/-!
# A118690: Semiprimes for which both the sum and the product of the digits is also a semiprime.

The programs for A118690, there is no canonical definition to state claims against.
-/

/-! ## A118690.P13907458037644862566

`∩[A118688(n+1), A118689(n+1)]`
-/

namespace A118690.P13907458037644862566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118690.P13907458037644862566

/-! ## A118690.P10802084038668406044

`∩[A118688(n+1), A245383(n+1)]`
-/

namespace A118690.P10802084038668406044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118690.P10802084038668406044

/-! ## A118690.P3512596619155923777

`∩[A085802(n+1), A118689(n+1)]`
-/

namespace A118690.P3512596619155923777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118690.P3512596619155923777

/-!
# A118691: Semiprimes for which the digital root is also a semiprime.

The programs for A118691, the canonical program `A118691.P2417312340011068429` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118691 has offset 1).

The definition of A118691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118691.P15179104501803208778

`∩[A001358(n+1), A047231(n+1)+n]`
-/

namespace A118691.P15179104501803208778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118691.P15179104501803208778

namespace A118691

/-- `∩[A001358(n+1), A047231(n+1)+n]` -/
def P15179104501803208778.Spec : Prop :=
  ∀ n, (P15179104501803208778.a n : ℤ) = A118691 (n + 1)

end A118691

/-! ## A118691.P13295078441526585076

`∩[A047231(n+1)+n, A088707(n+1)-1]`
-/

namespace A118691.P13295078441526585076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118691.P13295078441526585076

namespace A118691

/-- `∩[A047231(n+1)+n, A088707(n+1)-1]` -/
def P13295078441526585076.Spec : Prop :=
  ∀ n, (P13295078441526585076.a n : ℤ) = A118691 (n + 1)

end A118691

/-! ## A118691.P5380596342867678642

`∩[eq[2, A001222(n+1)]+1, A047231(n+1)+n]`
-/

namespace A118691.P5380596342867678642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A118691.P5380596342867678642

namespace A118691

/-- `∩[eq[2, A001222(n+1)]+1, A047231(n+1)+n]` -/
def P5380596342867678642.Spec : Prop :=
  ∀ n, (P5380596342867678642.a n : ℤ) = A118691 (n + 1)

end A118691

/-! ## A118691.P2417312340011068429

`∩[A047231(n+1)+n, A100493(n+1)-(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A118691

/-- `∩[A047231(n+1)+n, A100493(n+1)-(n+1)]` -/
def P2417312340011068429.Spec : Prop :=
  ∀ n, (P2417312340011068429.a n : ℤ) = A118691 (n + 1)

theorem P2417312340011068429.correct : P2417312340011068429.Spec := by
  intro n
  simp only [A118691, Nat.add_sub_cancel]

end A118691

/-! ## A118691.P9576941743479851441

`∩[A047231(n+1)+n, A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A118691.P9576941743479851441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118691.P9576941743479851441

namespace A118691

/-- `∩[A047231(n+1)+n, A065516(n)+a(n-1)]` -/
def P9576941743479851441.Spec : Prop :=
  ∀ n, (P9576941743479851441.a n : ℤ) = A118691 (n + 1)

end A118691

/-! ## A118691.P9368495411613584957

`∩[A047231(n+1)+n, A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A118691.P9368495411613584957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118691.P9368495411613584957

namespace A118691

/-- `∩[A047231(n+1)+n, A118717(n)-a(n-1)]` -/
def P9368495411613584957.Spec : Prop :=
  ∀ n, (P9368495411613584957.a n : ℤ) = A118691 (n + 1)

end A118691

/-!
# A118693: Semiprimes which are divisible by the sum of their digits.

The programs for A118693, there is no canonical definition to state claims against.
-/

/-! ## A118693.P2010637339533799799

`∩[A001358(n+1), A005349(n+1)]`
-/

namespace A118693.P2010637339533799799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118693.P2010637339533799799

/-! ## A118693.P17481744374271243625

`A005349(eq[2, ∑{e}[A005349(n+1), #]]+1)`
-/

namespace A118693.P17481744374271243625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A118693.P17481744374271243625

/-! ## A118693.P11698666572504187456

`filter[A005349(n+1), A064911(#)]`
-/

namespace A118693.P11698666572504187456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A118693.P11698666572504187456

/-! ## A118693.P8143544754655180526

`∩[A005349(n+1), A088707(n+1)-1]`
-/

namespace A118693.P8143544754655180526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118693.P8143544754655180526

/-! ## A118693.P13062260879337888466

`record[A360074(A001358(n+1))]`
-/

namespace A118693.P13062260879337888466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118693.P13062260879337888466

/-! ## A118693.P13645081599503576910

`filter[A001358(n+1), A188641(#)]`
-/

namespace A118693.P13645081599503576910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A118693.P13645081599503576910

/-! ## A118693.P7532446701854261309

`filter[A176540(n+2), A188641(#)]`
-/

namespace A118693.P7532446701854261309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A118693.P7532446701854261309

/-! ## A118693.P9553366547275525111

`filter[A129767(2*(n+1)), A188641(#)]`
-/

namespace A118693.P9553366547275525111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A118693.P9553366547275525111

/-!
# A118694: Semiprimes which are divisible by the product of their digits.

The programs for A118694, there is no canonical definition to state claims against.
-/

/-! ## A118694.P17729941528088080004

`∩[A007602(n+1), A118696(n+1)]`
-/

namespace A118694.P17729941528088080004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118694.P17729941528088080004

/-! ## A118694.P6524510855739454311

`∩[A034838(n+1), A118696(n+1)]`
-/

namespace A118694.P6524510855739454311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118694.P6524510855739454311

/-! ## A118694.P11796592529802882220

`∩[A055471(n+1), A118696(n+1)]`
-/

namespace A118694.P11796592529802882220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118694.P11796592529802882220

/-! ## A118694.P9181668716159139153

`∩[A090274(n+1), A118696(n+1)]`
-/

namespace A118694.P9181668716159139153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118694.P9181668716159139153

/-! ## A118694.P7981129122081414069

`∩[A118696(n+1), A167620(n+1)]`
-/

namespace A118694.P7981129122081414069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118694.P7981129122081414069

/-!
# A118695: Semiprimes which are divisible by their digital root.

The programs for A118695, the canonical program `A118695.P8409322648872834747` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118695 has offset 1).

The definition of A118695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118695.P8163775677357212742

`filter[A064807(n+1), A064911(#)]`
-/

namespace A118695.P8163775677357212742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A118695.P8163775677357212742

namespace A118695

/-- `filter[A064807(n+1), A064911(#)]` -/
def P8163775677357212742.Spec : Prop :=
  ∀ n, P8163775677357212742.a n = A118695 (n + 1)

end A118695

/-! ## A118695.P2034031620357658234

`∩[A001358(n+1), A064807(n+1)]`
-/

namespace A118695.P2034031620357658234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118695.P2034031620357658234

namespace A118695

/-- `∩[A001358(n+1), A064807(n+1)]` -/
def P2034031620357658234.Spec : Prop :=
  ∀ n, (P2034031620357658234.a n : ℤ) = A118695 (n + 1)

end A118695

/-! ## A118695.P8409322648872834747

`∩[A064807(n+1), A088707(n+1)-1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118695

/-- `∩[A064807(n+1), A088707(n+1)-1]` -/
def P8409322648872834747.Spec : Prop :=
  ∀ n, (P8409322648872834747.a n : ℤ) = A118695 (n + 1)

theorem P8409322648872834747.correct : P8409322648872834747.Spec := by
  intro n
  simp only [A118695, Nat.add_sub_cancel]

end A118695

/-! ## A118695.P8318957459516205325

`∩[lt[0, A064911(n+1)]+1, A064807(n+1)]`
-/

namespace A118695.P8318957459516205325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A118695.P8318957459516205325

namespace A118695

/-- `∩[lt[0, A064911(n+1)]+1, A064807(n+1)]` -/
def P8318957459516205325.Spec : Prop :=
  ∀ n, (P8318957459516205325.a n : ℤ) = A118695 (n + 1)

end A118695

/-! ## A118695.P13371770740303791653

`∩[eq[2, A342085(n+1)]+1, A064807(n+1)]`
-/

namespace A118695.P13371770740303791653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A118695.P13371770740303791653

namespace A118695

/-- `∩[eq[2, A342085(n+1)]+1, A064807(n+1)]` -/
def P13371770740303791653.Spec : Prop :=
  ∀ n, (P13371770740303791653.a n : ℤ) = A118695 (n + 1)

end A118695

/-!
# A118696: Semiprimes which are divisible by their multiplicative digital root.

The programs for A118696, there is no canonical definition to state claims against.
-/

/-! ## A118696.P6516516607297007236

`∩[A001358(n+1), A064700(n+1)]`
-/

namespace A118696.P6516516607297007236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118696.P6516516607297007236

/-! ## A118696.P10504922208391271913

`filter[A064700(n+1), A064911(#)]`
-/

namespace A118696.P10504922208391271913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A118696.P10504922208391271913

/-! ## A118696.P10905225976498031811

`∩[A064700(n+1), A112381(n+1)]`
-/

namespace A118696.P10905225976498031811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118696.P10905225976498031811

/-! ## A118696.P3982729004383476797

`∩[A064700(n+1), A186621(n+1)+1]`
-/

namespace A118696.P3982729004383476797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118696.P3982729004383476797

/-! ## A118696.P7499784034607209524

`∩[A064700(n+1), eq[2, A001222(n+1)]+1]`
-/

namespace A118696.P7499784034607209524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A118696.P7499784034607209524

/-! ## A118696.P12299628303830285112

`∩[A000040(n+1)-A065870(n+1), A064700(n+1)]`
-/

namespace A118696.P12299628303830285112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118696.P12299628303830285112

/-!
# A118697: Semiprimes with consecutive digits.

The programs for A118697, there is no canonical definition to state claims against.
-/

/-! ## A118697.P16262228795177208991

`∪[A215477(n+1), A215478(n+3)]`
-/

namespace A118697.P16262228795177208991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215478 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118697.P16262228795177208991

/-! ## A118697.P14688948857555835644

`∩[A320969(n+1), A376425(n+1)]`
-/

namespace A118697.P14688948857555835644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118697.P14688948857555835644

/-! ## A118697.P13498303776810189557

`∩[A320969(n+1), A357142(n+1)]`
-/

namespace A118697.P13498303776810189557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118697.P13498303776810189557

/-! ## A118697.P4608763899366202564

`∩[A103607(n+1), A215014(n+1)]`
-/

namespace A118697.P4608763899366202564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118697.P4608763899366202564

/-! ## A118697.P3920431663898668948

`∩[A103607(n+1), A376300(n+1)]`
-/

namespace A118697.P3920431663898668948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118697.P3920431663898668948

