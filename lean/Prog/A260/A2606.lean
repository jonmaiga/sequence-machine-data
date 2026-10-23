import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A260600: Expansion of x * psi(x^3) * psi(x^12) / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A260600, there is no canonical definition to state claims against.
-/

/-! ## A260600.P5405327439658745427

`A097196(Δ[n²])/2`
-/

namespace A260600.P5405327439658745427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097196 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A260600.P5405327439658745427

/-! ## A260600.P2355556280789095917

`round(A097196(2*n+1)/2)`
-/

namespace A260600.P2355556280789095917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097196 (2 * n + 1) : ℚ) / 2)

end

end A260600.P2355556280789095917

/-! ## A260600.P8472235344246790311

`ceil(A097196(A005408(n))/2)`
-/

namespace A260600.P8472235344246790311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097196 (A005408 n).toNat : ℚ) / 2⌉

end

end A260600.P8472235344246790311

/-! ## A260600.P9153038237278450371

`lcm(A097196(A005408(n))/2, A242179(n))`
-/

namespace A260600.P9153038237278450371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A097196 (A005408 n).toNat : ℚ) / 2)) (A242179 n)

end

end A260600.P9153038237278450371

/-! ## A260600.P12934172482433706347

`A097196(A005408(n))/2*A060576(A141256(n))`
-/

namespace A260600.P12934172482433706347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097196 (A005408 n).toNat : ℚ) / 2 * (A060576 (A141256 n).toNat : ℚ)

end

end A260600.P12934172482433706347

/-! ## A260600.P9154800221918621875

`abs(A260574(4*n+3)/2)`
-/

namespace A260600.P9154800221918621875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A260574 (4 * n + 3) : ℚ) / 2|

end

end A260600.P9154800221918621875

/-! ## A260600.P13799358366116004842

`2^A078027(A297321(∑[n]))*A097196(n+1+n)`
-/

namespace A260600.P13799358366116004842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A078027 (A297321 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ) * (A097196 (n + 1 + n) : ℚ)

end

end A260600.P13799358366116004842

/-! ## A260600.P17570991932264960699

`A097196(A005408(n))/2*A245477(A000384(n))`
-/

namespace A260600.P17570991932264960699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097196 (A005408 n).toNat : ℚ) / 2 * (A245477 (A000384 n).toNat : ℚ)

end

end A260600.P17570991932264960699

/-!
# A260601: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260601, there is no canonical definition to state claims against.
-/

/-! ## A260601.P1838997536432219613

`A260609((n+1)²+n²)`
-/

namespace A260601.P1838997536432219613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 ((n + 1) ^ 2 + n ^ 2)

end

end A260601.P1838997536432219613

/-! ## A260601.P16011773008314915959

`lcm(2, A260609(A001844(n)))`
-/

namespace A260601.P16011773008314915959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260609 (A001844 n).toNat)

end

end A260601.P16011773008314915959

/-! ## A260601.P5548754026360325865

`record[A003982(n)*A260609(n+1)]`
-/

namespace A260601.P5548754026360325865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260601.P5548754026360325865

/-! ## A260601.P15674598028095505521

`record[gcd(A003987(n), A260609(n+1))]`
-/

namespace A260601.P15674598028095505521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A260609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260601.P15674598028095505521

/-! ## A260601.P7328312570190414108

`record[root(A260609(n+1), A274651(n+1))]`
-/

namespace A260601.P7328312570190414108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260609 (n + 1) : ℝ) ^ (1 / (A274651 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260601.P7328312570190414108

/-!
# A260602: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260602, there is no canonical definition to state claims against.
-/

/-! ## A260602.P240572965241535565

`A260609(∑[n]+1)`
-/

namespace A260602.P240572965241535565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260602.P240572965241535565

/-! ## A260602.P808400070273849305

`record[A260609(n+1)/A013610(n)]`
-/

namespace A260602.P808400070273849305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260609 (n + 1) : ℚ) / (A013610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260602.P808400070273849305

/-! ## A260602.P14381608347614605907

`record[A260609(n+1)/A260613(n)]`
-/

namespace A260602.P14381608347614605907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260609 (n + 1) : ℚ) / (A260613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260602.P14381608347614605907

/-! ## A260602.P17776324241404522662

`and(or(n, -1), A260609(A000124(n)))`
-/

namespace A260602.P17776324241404522662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor (n : ℤ) (-1)) (A260609 (A000124 n).toNat)

end

end A260602.P17776324241404522662

/-! ## A260602.P4034367399188778114

`record[gcd(A002262(n), A260609(n+1))]`
-/

namespace A260602.P4034367399188778114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260602.P4034367399188778114

/-!
# A260603: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260603, there is no canonical definition to state claims against.
-/

/-! ## A260603.P10602058036874980529

`A260609(∑[n+1]+2)`
-/

namespace A260603.P10602058036874980529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260603.P10602058036874980529

/-! ## A260603.P15669387963989750455

`record[A260609(n+2)/A013610(n)]`
-/

namespace A260603.P15669387963989750455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260609 (n + 2) : ℚ) / (A013610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260603.P15669387963989750455

/-! ## A260603.P9925282183232810929

`record[gcd(A002262(n), A260609(n+2))]`
-/

namespace A260603.P9925282183232810929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260609 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260603.P9925282183232810929

/-! ## A260603.P14579963993178164350

`A260609(A133263(n+1))+A000007(n+1)`
-/

namespace A260603.P14579963993178164350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A260603.P14579963993178164350

/-! ## A260603.P6358818060101674554

`A260609(A133263(n+1))+A008683(16*n+4)`
-/

namespace A260603.P6358818060101674554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A133263 (n + 1)).toNat + A008683 (16 * n + 4)

end

end A260603.P6358818060101674554

/-!
# A260604: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260604, there is no canonical definition to state claims against.
-/

/-! ## A260604.P10402351127090823446

`A260609(∑[n+2]+4)`
-/

namespace A260604.P10402351127090823446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260604.P10402351127090823446

/-! ## A260604.P10968555472302453169

`record[A260609(A259604(n+1)+3)]`
-/

namespace A260604.P10968555472302453169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A259604 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260604.P10968555472302453169

/-! ## A260604.P1892877085764123406

`or(char[4], A260609(A167614(n+1)))`
-/

namespace A260604.P1892877085764123406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260609 (A167614 (n + 1)).toNat)

end

end A260604.P1892877085764123406

/-! ## A260604.P12746444506995768517

`A260609(A055998(n)+6)%A260605(n+1)`
-/

namespace A260604.P12746444506995768517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260609 (A055998 n + 6).toNat) (A260605 (n + 1))

end

end A260604.P12746444506995768517

/-! ## A260604.P14995320738685092687

`A119329(A007318(n))*A260609(A167614(n+1))`
-/

namespace A260604.P14995320738685092687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119329 (A007318 n).toNat * A260609 (A167614 (n + 1)).toNat

end

end A260604.P14995320738685092687

/-!
# A260605: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260605, there is no canonical definition to state claims against.
-/

/-! ## A260605.P16355389060755114663

`A260609(A052905(n)+9)`
-/

namespace A260605.P16355389060755114663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A052905 n + 9).toNat

end

end A260605.P16355389060755114663

/-! ## A260605.P319742994835296352

`A260609(A055999(n)+10)`
-/

namespace A260605.P319742994835296352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A055999 n + 10).toNat

end

end A260605.P319742994835296352

/-! ## A260605.P2910639299798843376

`A260609(A167614(n+2)+1)`
-/

namespace A260605.P2910639299798843376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A167614 (n + 2) + 1).toNat

end

end A260605.P2910639299798843376

/-! ## A260605.P8729628924641322601

`A260609(A167499(n+2)-1)`
-/

namespace A260605.P8729628924641322601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A167499 (n + 2) - 1).toNat

end

end A260605.P8729628924641322601

/-! ## A260605.P4486158888431571355

`A260609(Δ[A023545(n+1)-n²])`
-/

namespace A260605.P4486158888431571355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (f1 (n + 1) - f1 n).toNat

end

end A260605.P4486158888431571355

/-!
# A260606: Number of (n+2) X (5+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260606, there is no canonical definition to state claims against.
-/

/-! ## A260606.P11467060603803201106

`A260609(A167499(n+3))`
-/

namespace A260606.P11467060603803201106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A167499 (n + 3)).toNat

end

end A260606.P11467060603803201106

/-! ## A260606.P3980496498737602100

`A260609(A155212(n)+13)`
-/

namespace A260606.P3980496498737602100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A155212 n + 13).toNat

end

end A260606.P3980496498737602100

/-! ## A260606.P432535195424242998

`A260609(A038722(Δ[A023545(n+1)]))`
-/

namespace A260606.P432535195424242998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A260606.P432535195424242998

/-! ## A260606.P10735383726018389205

`A260609(A008619(Δ[A026046(n+6)]))`
-/

namespace A260606.P10735383726018389205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A260606.P10735383726018389205

/-! ## A260606.P16629642882920627405

`A260609(A374005(n+1))`
-/

namespace A260606.P16629642882920627405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A374005 (n + 1)).toNat

end

end A260606.P16629642882920627405

/-!
# A260607: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260607, there is no canonical definition to state claims against.
-/

/-! ## A260607.P16214657367291295148

`A260609(A167499(n+4)+1)`
-/

namespace A260607.P16214657367291295148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A167499 (n + 4) + 1).toNat

end

end A260607.P16214657367291295148

/-! ## A260607.P3000721375429342633

`A260609(A000096(n+4)+7)`
-/

namespace A260607.P3000721375429342633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A000096 (n + 4) + 7).toNat

end

end A260607.P3000721375429342633

/-! ## A260607.P7967257239416433312

`A260609(A000217(n+5)+6)`
-/

namespace A260607.P7967257239416433312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A000217 (n + 5) + 6).toNat

end

end A260607.P7967257239416433312

/-! ## A260607.P16312773082068521770

`A260609(A161680(n+6)+6)`
-/

namespace A260607.P16312773082068521770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A161680 (n + 6) + 6).toNat

end

end A260607.P16312773082068521770

/-! ## A260607.P5325805331667534076

`A260609(A052905(n+2)+11)`
-/

namespace A260607.P5325805331667534076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A052905 (n + 2) + 11).toNat

end

end A260607.P5325805331667534076

/-!
# A260608: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010001 or 00010101.

The programs for A260608, there is no canonical definition to state claims against.
-/

/-! ## A260608.P13150116780596384653

`A260609(A056119(n)+28)`
-/

namespace A260608.P13150116780596384653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A056119 n + 28).toNat

end

end A260608.P13150116780596384653

/-! ## A260608.P11569247575011007268

`A260609(A000096(n+5)+8)`
-/

namespace A260608.P11569247575011007268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A000096 (n + 5) + 8).toNat

end

end A260608.P11569247575011007268

/-! ## A260608.P10017555400379848717

`A260609(A000217(n+6)+7)`
-/

namespace A260608.P10017555400379848717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A000217 (n + 6) + 7).toNat

end

end A260608.P10017555400379848717

/-! ## A260608.P15209327379905613444

`A260609(A034856(n+5)+9)`
-/

namespace A260608.P15209327379905613444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A034856 (n + 5) + 9).toNat

end

end A260608.P15209327379905613444

/-! ## A260608.P8991552388010030876

`A260609(A052905(n+3)+12)`
-/

namespace A260608.P8991552388010030876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260609 (A052905 (n + 3) + 12).toNat

end

end A260608.P8991552388010030876

/-!
# A260610: Suprafactorials: Product of first n hyperfactorials divided by the product of the first n superfactorials.

The programs for A260610, there is no canonical definition to state claims against.
-/

/-! ## A260610.P4640163886748120093

`A125760(n)/A055462(n)`
-/

namespace A260610.P4640163886748120093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125760 n : ℚ) / (A055462 n : ℚ)

end

end A260610.P4640163886748120093

/-! ## A260610.P5161923455996259976

`∏[∏[n^n/n!]]`
-/

namespace A260610.P5161923455996259976
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260610.P5161923455996259976

/-! ## A260610.P4417981709731318230

`∏[A001142(n)]`
-/

namespace A260610.P4417981709731318230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260610.P4417981709731318230

/-! ## A260610.P654223356222249310

`A321741(∑[n+1])`
-/

namespace A260610.P654223356222249310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260610.P654223356222249310

/-! ## A260610.P17680583900891891178

`∏[A208650(n+1)/(n+1)]`
-/

namespace A260610.P17680583900891891178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208650 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260610.P17680583900891891178

/-!
# A260611: a(n) = superfactorial(prime(n)-1) mod prime(n).

The programs for A260611, the canonical program `A260611.P9673076266905370187` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260611 has offset 1).

The definition of A260611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260611.P13945614517877414391

`A119688(A006093(n+1))`
-/

namespace A260611.P13945614517877414391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (A006093 (n + 1)).toNat

end

end A260611.P13945614517877414391

namespace A260611

/-- `A119688(A006093(n+1))` -/
def P13945614517877414391.Spec : Prop :=
  ∀ n, P13945614517877414391.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P9673076266905370187

`A126868(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260611

/-- `A126868(A000040(n+1))` -/
def P9673076266905370187.Spec : Prop :=
  ∀ n, P9673076266905370187.a n = A260611 (n + 1)

theorem P9673076266905370187.correct : P9673076266905370187.Spec := by
  intro n
  simp only [A260611, Nat.add_sub_cancel]

end A260611

/-! ## A260611.P696514875004439015

`A126868(A008578(n+2))`
-/

namespace A260611.P696514875004439015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (A008578 (n + 2)).toNat

end

end A260611.P696514875004439015

namespace A260611

/-- `A126868(A008578(n+2))` -/
def P696514875004439015.Spec : Prop :=
  ∀ n, P696514875004439015.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P2759960785149185623

`A126868(A182986(n+2))`
-/

namespace A260611.P2759960785149185623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (A182986 (n + 2)).toNat

end

end A260611.P2759960785149185623

namespace A260611

/-- `A126868(A182986(n+2))` -/
def P2759960785149185623.Spec : Prop :=
  ∀ n, P2759960785149185623.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P12683874869188138301

`A119688(record[A000010(n+1)])`
-/

namespace A260611.P12683874869188138301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260611.P12683874869188138301

namespace A260611

/-- `A119688(record[A000010(n+1)])` -/
def P12683874869188138301.Spec : Prop :=
  ∀ n, P12683874869188138301.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P13813385038314414034

`A126868(record[A006530(n+2)])`
-/

namespace A260611.P13813385038314414034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260611.P13813385038314414034

namespace A260611

/-- `A126868(record[A006530(n+2)])` -/
def P13813385038314414034.Spec : Prop :=
  ∀ n, P13813385038314414034.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P10441344808438769329

`A119688(A040976(n+1)+1)`
-/

namespace A260611.P10441344808438769329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (A040976 (n + 1) + 1).toNat

end

end A260611.P10441344808438769329

namespace A260611

/-- `A119688(A040976(n+1)+1)` -/
def P10441344808438769329.Spec : Prop :=
  ∀ n, P10441344808438769329.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P10673289325144089381

`A119688(A000040(n+1)-1)`
-/

namespace A260611.P10673289325144089381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (A000040 (n + 1) - 1).toNat

end

end A260611.P10673289325144089381

namespace A260611

/-- `A119688(A000040(n+1)-1)` -/
def P10673289325144089381.Spec : Prop :=
  ∀ n, P10673289325144089381.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P5304711450447468879

`A119688(eq[1, A001222(n+1)])`
-/

namespace A260611.P5304711450447468879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260611.P5304711450447468879

namespace A260611

/-- `A119688(eq[1, A001222(n+1)])` -/
def P5304711450447468879.Spec : Prop :=
  ∀ n, P5304711450447468879.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P5579336368691384337

`A119688(eq[1, A010051(n+1)])`
-/

namespace A260611.P5579336368691384337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260611.P5579336368691384337

namespace A260611

/-- `A119688(eq[1, A010051(n+1)])` -/
def P5579336368691384337.Spec : Prop :=
  ∀ n, P5579336368691384337.a n = A260611 (n + 1)

end A260611

/-! ## A260611.P814119117540336199

`A119688(eq[1, A061007(n+1)])`
-/

namespace A260611.P814119117540336199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260611.P814119117540336199

namespace A260611

/-- `A119688(eq[1, A061007(n+1)])` -/
def P814119117540336199.Spec : Prop :=
  ∀ n, P814119117540336199.a n = A260611 (n + 1)

end A260611

/-!
# A260613: Triangle read by rows: T(n, k) = coefficient of x^(n-k) in Product_{m=1..n} (x+prime(m)); 0 <= k <= n, n >= 0.

The programs for A260613, there is no canonical definition to state claims against.
-/

/-! ## A260613.P8840105607350648154

`abs(A070918(A061579(n)))`
-/

namespace A260613.P8840105607350648154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070918 (A061579 n).toNat|

end

end A260613.P8840105607350648154

/-! ## A260613.P5671103776562648605

`abs(A070918(∑[A198954(n)-1]))`
-/

namespace A260613.P5671103776562648605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A260613.P5671103776562648605

/-! ## A260613.P3180825218771607754

`gcd(A000038(n), A070918(A061579(n)))`
-/

namespace A260613.P3180825218771607754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A070918 (A061579 n).toNat)

end

end A260613.P3180825218771607754

/-! ## A260613.P4410965225257353554

`lcm(A020985(n), A070918(A061579(n)))`
-/

namespace A260613.P4410965225257353554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A070918 (A061579 n).toNat)

end

end A260613.P4410965225257353554

/-! ## A260613.P15431277917005383913

`gcd(-A070918(A061579(n)), A010816(n))`
-/

namespace A260613.P15431277917005383913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A070918 (A061579 n).toNat) (A010816 n)

end

end A260613.P15431277917005383913

/-!
# A260614: 

The programs for A260614, there is no canonical definition to state claims against.
-/

/-! ## A260614.P17688379564856650624

`∏[n!^n!]`
-/

namespace A260614.P17688379564856650624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260614.P17688379564856650624

/-!
# A260616: Irregular triangle read by rows: continued fraction expansion of k/n, 1 <= k <= n.

The programs for A260616, there is no canonical definition to state claims against.
-/

/-! ## A260616.P3806978274694350195

`A239706(A284301(n)+A004020(n))`
-/

namespace A260616.P3806978274694350195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (A284301 n + A004020 n).toNat

end

end A260616.P3806978274694350195

/-!
# A260617: Three-dimensional array read by shells: S(i, j, k) = i + j + k; i >= 0, j >= 0, k >= 0.

The programs for A260617, there is no canonical definition to state claims against.
-/

/-! ## A260617.P3775047132226559372

`A089643(ceil(sqrt(A006190(n))))`
-/

namespace A260617.P3775047132226559372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 ⌈Real.sqrt (A006190 n : ℝ)⌉.toNat

end

end A260617.P3775047132226559372

/-! ## A260617.P13699417624425918810

`A001221(A073182(n+1)*A119340(n))`
-/

namespace A260617.P13699417624425918810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073182 (n + 1) * A119340 n).toNat

end

end A260617.P13699417624425918810

/-! ## A260617.P1169922565594727753

`A001221(A073184(n+1)*A119340(n))`
-/

namespace A260617.P1169922565594727753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073184 (n + 1) * A119340 n).toNat

end

end A260617.P1169922565594727753

/-! ## A260617.P7591870716678341701

`A001221(A003159(n+1)*A325545(n))`
-/

namespace A260617.P7591870716678341701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003159 (n + 1) * A325545 n).toNat

end

end A260617.P7591870716678341701

/-! ## A260617.P9662685789521651900

`A001221(lcm(A003159(n+1), A325545(n)))`
-/

namespace A260617.P9662685789521651900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A003159 (n + 1)) (A325545 n))

end

end A260617.P9662685789521651900

/-!
# A260618: Irregular triangle read by rows: denominators of the expansion of k/n using the greedy algorithm, 1<=k<=n.

The programs for A260618, there is no canonical definition to state claims against.
-/

/-! ## A260618.P14987921284933451078

`A354991(A226482(n)+A063512(n+1))`
-/

namespace A260618.P14987921284933451078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (A226482 n + A063512 (n + 1)).toNat

end

end A260618.P14987921284933451078

/-! ## A260618.P5850991055026679463

`gcd(A275648(A032020(2*n+3)), A335456(n))`
-/

namespace A260618.P5850991055026679463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275648 (A032020 (2 * n + 3)).toNat) (A335456 n)

end

end A260618.P5850991055026679463

/-! ## A260618.P1140136428520411041

`gcd(A065119(n+1), A220507(A076831(3*(n+1))))`
-/

namespace A260618.P1140136428520411041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065119 (n + 1)) (A220507 (A076831 (3 * (n + 1))).toNat)

end

end A260618.P1140136428520411041

/-! ## A260618.P1520050013708157599

`C(A001222(A289287(5*n+14)), A069859(2*(n+2)))`
-/

namespace A260618.P1520050013708157599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A289287 (5 * n + 14)).toNat).toNat (A069859 (2 * (n + 2))).toNat

end

end A260618.P1520050013708157599

/-!
# A260619: Arithmetic derivative of hyperfactorial(n).

The programs for A260619, there is no canonical definition to state claims against.
-/

/-! ## A260619.P723667608014179418

`∑[A003415(n)]*A002109(n)`
-/

namespace A260619.P723667608014179418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002109 n

end

end A260619.P723667608014179418

/-! ## A260619.P7306965745963009738

`∑[A302055(n)]*A002109(n)`
-/

namespace A260619.P7306965745963009738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002109 n

end

end A260619.P7306965745963009738

/-! ## A260619.P7454080943250033590

`∑[A003415(n)]*A010552(∑[n])`
-/

namespace A260619.P7454080943250033590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010552 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A260619.P7454080943250033590

/-! ## A260619.P12795106332991123507

`∑[A129283(n)-n]*A002109(n)`
-/

namespace A260619.P12795106332991123507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002109 n

end

end A260619.P12795106332991123507

/-! ## A260619.P8941106256244030089

`A002109(n)*A190121(A028310(n))`
-/

namespace A260619.P8941106256244030089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002109 n * A190121 (A028310 n).toNat

end

end A260619.P8941106256244030089

/-!
# A260620: Arithmetic derivative of superfactorial(n).

The programs for A260620, the canonical program `A260620.P4707896754255925943` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260620 has offset 0).

The definition of A260620 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260620.P4707896754255925943

`A003415(A000178(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A260620

/-- `A003415(A000178(n))` -/
def P4707896754255925943.Spec : Prop :=
  ∀ n, P4707896754255925943.a n = A260620 n

theorem P4707896754255925943.correct : P4707896754255925943.Spec := by
  intro n
  simp only [A260620]

end A260620

/-! ## A260620.P8384166516834314326

`A328099(∏[n!])`
-/

namespace A260620.P8384166516834314326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A260620.P8384166516834314326

namespace A260620

/-- `A328099(∏[n!])` -/
def P8384166516834314326.Spec : Prop :=
  ∀ n, P8384166516834314326.a n = A260620 n

end A260620

/-!
# A260622: a(n) is the sum of the positive divisors of A003266(n).

The programs for A260622, there is no canonical definition to state claims against.
-/

/-! ## A260622.P4313963127819463432

`A000203(A003266(n+1))`
-/

namespace A260622.P4313963127819463432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003266 (n + 1)).toNat

end

end A260622.P4313963127819463432

/-! ## A260622.P2344841307472080191

`∑{d}[∏[ceil(exp((n-1)/2))], #]`
-/

namespace A260622.P2344841307472080191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A260622.P2344841307472080191

/-! ## A260622.P11163712844826504517

`A000203(∏[ceil(sqrt(exp(n-1)))])`
-/

namespace A260622.P11163712844826504517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.exp ((n : ℤ) - 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260622.P11163712844826504517

/-!
# A260624: a(n) = arithmetic derivative of the n-th composite number.

The programs for A260624, the canonical program `A260624.P16422047914652395802` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260624 has offset 1).

The definition of A260624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260624.P16422047914652395802

`A003415(A002808(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A260624

/-- `A003415(A002808(n+1))` -/
def P16422047914652395802.Spec : Prop :=
  ∀ n, P16422047914652395802.a n = A260624 (n + 1)

theorem P16422047914652395802.correct : P16422047914652395802.Spec := by
  intro n
  simp only [A260624, Nat.add_sub_cancel]

end A260624

/-! ## A260624.P3722283259861578647

`A003415(Δ[A053767(n)])`
-/

namespace A260624.P3722283259861578647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A260624.P3722283259861578647

namespace A260624

/-- `A003415(Δ[A053767(n)])` -/
def P3722283259861578647.Spec : Prop :=
  ∀ n, P3722283259861578647.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P14028656308672577003

`A003415(comp[A351078(n)])`
-/

namespace A260624.P14028656308672577003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260624.P14028656308672577003

namespace A260624

/-- `A003415(comp[A351078(n)])` -/
def P14028656308672577003.Spec : Prop :=
  ∀ n, P14028656308672577003.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P16459089911899007827

`A003415(A018252(n+2))`
-/

namespace A260624.P16459089911899007827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A018252 (n + 2)).toNat

end

end A260624.P16459089911899007827

namespace A260624

/-- `A003415(A018252(n+2))` -/
def P16459089911899007827.Spec : Prop :=
  ∀ n, P16459089911899007827.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P1192225341040267614

`A003415(A141468(n+3))`
-/

namespace A260624.P1192225341040267614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A141468 (n + 3)).toNat

end

end A260624.P1192225341040267614

namespace A260624

/-- `A003415(A141468(n+3))` -/
def P1192225341040267614.Spec : Prop :=
  ∀ n, P1192225341040267614.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P245752694859753398

`A003415(lt[1, A003415(n)])`
-/

namespace A260624.P245752694859753398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260624.P245752694859753398

namespace A260624

/-- `A003415(lt[1, A003415(n)])` -/
def P245752694859753398.Spec : Prop :=
  ∀ n, P245752694859753398.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P2689505051001676974

`A003415(comp[A158611(n+1)])`
-/

namespace A260624.P2689505051001676974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260624.P2689505051001676974

namespace A260624

/-- `A003415(comp[A158611(n+1)])` -/
def P2689505051001676974.Spec : Prop :=
  ∀ n, P2689505051001676974.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P8907554823140860000

`A003415(comp[C(A006530(n+1), n)])`
-/

namespace A260624.P8907554823140860000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260624.P8907554823140860000

namespace A260624

/-- `A003415(comp[C(A006530(n+1), n)])` -/
def P8907554823140860000.Spec : Prop :=
  ∀ n, P8907554823140860000.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P5462923744041583156

`A003415(A067563(n+1)/A000040(n+1))`
-/

namespace A260624.P5462923744041583156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A067563 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A260624.P5462923744041583156

namespace A260624

/-- `A003415(A067563(n+1)/A000040(n+1))` -/
def P5462923744041583156.Spec : Prop :=
  ∀ n, P5462923744041583156.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P15809702370949654716

`A319703(A282671(n+1))`
-/

namespace A260624.P15809702370949654716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A282671 (n + 1)).toNat

end

end A260624.P15809702370949654716

namespace A260624

/-- `A319703(A282671(n+1))` -/
def P15809702370949654716.Spec : Prop :=
  ∀ n, P15809702370949654716.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P12362611126041241338

`A319703(A139270(n+2))`
-/

namespace A260624.P12362611126041241338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A139270 (n + 2)).toNat

end

end A260624.P12362611126041241338

namespace A260624

/-- `A319703(A139270(n+2))` -/
def P12362611126041241338.Spec : Prop :=
  ∀ n, P12362611126041241338.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P5737266263097342216

`A319703(2*A018252(n+2))`
-/

namespace A260624.P5737266263097342216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A018252 (n + 2)).toNat

end

end A260624.P5737266263097342216

namespace A260624

/-- `A319703(2*A018252(n+2))` -/
def P5737266263097342216.Spec : Prop :=
  ∀ n, P5737266263097342216.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P9571719213167658450

`A319703(lt[A319702(n+1), A319696(n+1)]+1)`
-/

namespace A260624.P9571719213167658450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A260624.P9571719213167658450

namespace A260624

/-- `A319703(lt[A319702(n+1), A319696(n+1)]+1)` -/
def P9571719213167658450.Spec : Prop :=
  ∀ n, P9571719213167658450.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P2838005412637962327

`A319703(lt[A319702(n+1), A319703(n+1)]+1)`
-/

namespace A260624.P2838005412637962327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A260624.P2838005412637962327

namespace A260624

/-- `A319703(lt[A319702(n+1), A319703(n+1)]+1)` -/
def P2838005412637962327.Spec : Prop :=
  ∀ n, P2838005412637962327.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P7868710691665084167

`A003415(A067747(2*(n+1)))`
-/

namespace A260624.P7868710691665084167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A067747 (2 * (n + 1))).toNat

end

end A260624.P7868710691665084167

namespace A260624

/-- `A003415(A067747(2*(n+1)))` -/
def P7868710691665084167.Spec : Prop :=
  ∀ n, P7868710691665084167.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P3363635142661541145

`A003415(comp[A020500(n+1)])`
-/

namespace A260624.P3363635142661541145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260624.P3363635142661541145

namespace A260624

/-- `A003415(comp[A020500(n+1)])` -/
def P3363635142661541145.Spec : Prop :=
  ∀ n, P3363635142661541145.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P920033775625504071

`A003415(comp[C(n, A003415(n)²)])`
-/

namespace A260624.P920033775625504071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A003415 n ^ 2).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260624.P920033775625504071

namespace A260624

/-- `A003415(comp[C(n, A003415(n)²)])` -/
def P920033775625504071.Spec : Prop :=
  ∀ n, P920033775625504071.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P3051610000637259564

`A003415(comp[C(A014963(n+1), n)])`
-/

namespace A260624.P3051610000637259564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260624.P3051610000637259564

namespace A260624

/-- `A003415(comp[C(A014963(n+1), n)])` -/
def P3051610000637259564.Spec : Prop :=
  ∀ n, P3051610000637259564.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P2043396653501381079

`A319703(A166257(n+2)+1)`
-/

namespace A260624.P2043396653501381079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A166257 (n + 2) + 1).toNat

end

end A260624.P2043396653501381079

namespace A260624

/-- `A319703(A166257(n+2)+1)` -/
def P2043396653501381079.Spec : Prop :=
  ∀ n, P2043396653501381079.a n = A260624 (n + 1)

end A260624

/-! ## A260624.P3548414100956354185

`A319703(A129401(n+1))`
-/

namespace A260624.P3548414100956354185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A129401 (n + 1)).toNat

end

end A260624.P3548414100956354185

namespace A260624

/-- `A319703(A129401(n+1))` -/
def P3548414100956354185.Spec : Prop :=
  ∀ n, P3548414100956354185.a n = A260624 (n + 1)

end A260624

/-!
# A260625: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with (x+3*y+13*z)*x*y*z a square, where x is a positive integer, and y,z,w are nonnegative integers with y >= z.

The programs for A260625, there is no canonical definition to state claims against.
-/

/-! ## A260625.P11919761471715333355

`A306614(A187829(n+1))-A097508(A097508(n))`
-/

namespace A260625.P11919761471715333355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306614 (A187829 (n + 1)).toNat - A097508 (A097508 n).toNat

end

end A260625.P11919761471715333355

/-! ## A260625.P11961437393957128899

`A064547(C(A152980(2*n+3), A273108(n+1)))`
-/

namespace A260625.P11961437393957128899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Nat.choose (A152980 (2 * n + 3)).toNat (A273108 (n + 1)).toNat)

end

end A260625.P11961437393957128899

/-! ## A260625.P5446897518356903423

`A350012(n+1)-A206566(A174449(n))`
-/

namespace A260625.P5446897518356903423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350012 (n + 1) - A206566 (A174449 n).toNat

end

end A260625.P5446897518356903423

/-!
# A260626: a(n) = gcd(m, 2^m-1) where m is the n-th nonprime positive integer.

The programs for A260626, the canonical program `A260626.P15351941485670242193` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260626 has offset 1).

The definition of A260626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260626.P15351941485670242193

`A014491(A018252(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260626

/-- `A014491(A018252(n+1))` -/
def P15351941485670242193.Spec : Prop :=
  ∀ n, P15351941485670242193.a n = A260626 (n + 1)

theorem P15351941485670242193.correct : P15351941485670242193.Spec := by
  intro n
  simp only [A260626, Nat.add_sub_cancel]

end A260626

/-! ## A260626.P13832056976081508795

`A014491(A065090(n+2))`
-/

namespace A260626.P13832056976081508795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A065090 (n + 2)).toNat

end

end A260626.P13832056976081508795

namespace A260626

/-- `A014491(A065090(n+2))` -/
def P13832056976081508795.Spec : Prop :=
  ∀ n, P13832056976081508795.a n = A260626 (n + 1)

end A260626

/-! ## A260626.P89901038403750820

`A014491(A141468(n+2))`
-/

namespace A260626.P89901038403750820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A141468 (n + 2)).toNat

end

end A260626.P89901038403750820

namespace A260626

/-- `A014491(A141468(n+2))` -/
def P89901038403750820.Spec : Prop :=
  ∀ n, P89901038403750820.a n = A260626 (n + 1)

end A260626

/-! ## A260626.P13590585976171348528

`A014491(A060462(n+1)+1)`
-/

namespace A260626.P13590585976171348528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A060462 (n + 1) + 1).toNat

end

end A260626.P13590585976171348528

namespace A260626

/-- `A014491(A060462(n+1)+1)` -/
def P13590585976171348528.Spec : Prop :=
  ∀ n, P13590585976171348528.a n = A260626 (n + 1)

end A260626

/-! ## A260626.P4835674672241897805

`A014491(A166460(n+1)+1)`
-/

namespace A260626.P4835674672241897805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A166460 (n + 1) + 1).toNat

end

end A260626.P4835674672241897805

namespace A260626

/-- `A014491(A166460(n+1)+1)` -/
def P4835674672241897805.Spec : Prop :=
  ∀ n, P4835674672241897805.a n = A260626 (n + 1)

end A260626

/-! ## A260626.P1649095064423835851

`A336314(A175249(n+1))`
-/

namespace A260626.P1649095064423835851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A175249 (n + 1)).toNat

end

end A260626.P1649095064423835851

namespace A260626

/-- `A336314(A175249(n+1))` -/
def P1649095064423835851.Spec : Prop :=
  ∀ n, P1649095064423835851.a n = A260626 (n + 1)

end A260626

/-!
# A260627: Largest n-digit number missing in first 10^n digits after the decimal point in expansion of Pi.

The programs for A260627, there is no canonical definition to state claims against.
-/

/-! ## A260627.P2704852265226974573

`A173833(n+1)+A010815(A000584(n))`
-/

namespace A260627.P2704852265226974573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173833 (n + 1) + A010815 (A000584 n).toNat

end

end A260627.P2704852265226974573

/-! ## A260627.P18001874925714227497

`A173833(n+1)+A010815(A101220(n))`
-/

namespace A260627.P18001874925714227497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173833 (n + 1) + A010815 (A101220 n).toNat

end

end A260627.P18001874925714227497

/-! ## A260627.P14450477095806246582

`A173833(n+1)-A010815(A132310(n))`
-/

namespace A260627.P14450477095806246582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173833 (n + 1) - A010815 (A132310 n).toNat

end

end A260627.P14450477095806246582

/-!
# A260628: Union of missing numbers in first 10, 100, 1000, 10000, ... digits after the decimal point in expansion of Pi.

The programs for A260628, there is no canonical definition to state claims against.
-/

/-! ## A260628.P11210390662767130865

`lt[10^A055642(n), A014777(n)]`
-/

namespace A260628.P11210390662767130865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A260628.P11210390662767130865

/-! ## A260628.P17705779181995414024

`eq[A004216(A014777(n)), A055642(n)]`
-/

namespace A260628.P17705779181995414024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A014777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260628.P17705779181995414024

/-! ## A260628.P10763539917541018072

`lt[A138902(n), A138902(A014777(n))]`
-/

namespace A260628.P10763539917541018072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A014777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260628.P10763539917541018072

/-! ## A260628.P3287896389668112966

`lt[A004216(n+1), A004216(A014777(n))]`
-/

namespace A260628.P3287896389668112966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A014777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260628.P3287896389668112966

/-! ## A260628.P714410581470900965

`lt[A055642(n+1), A055642(A014777(n))]`
-/

namespace A260628.P714410581470900965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A014777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260628.P714410581470900965

/-! ## A260628.P10565840417248136983

`lt[A056524(n+1), A056525(A014777(n))]`
-/

namespace A260628.P10565840417248136983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A014777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260628.P10565840417248136983

/-!
# A260630: Numerators of first derivatives of Catalan numbers (as continuous functions of n).

The programs for A260630, there is no canonical definition to state claims against.
-/

/-! ## A260630.P1775671123147850284

`Δ[and(p?[(n+1)*n²+1], A018610(n+1))]`
-/

namespace A260630.P1775671123147850284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) (A018610 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260630.P1775671123147850284

/-!
# A260631: Denominators of first derivatives of Catalan numbers (as continuous functions of n).

The programs for A260631, there is no canonical definition to state claims against.
-/

/-! ## A260631.P1502943871571718769

`A025540(n)/A000027(A000108(n))`
-/

namespace A260631.P1502943871571718769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A000027 (A000108 n).toNat : ℚ)

end

end A260631.P1502943871571718769

/-! ## A260631.P16541012741681682137

`A025540(n)/A000027(abs(A168491(n)))`
-/

namespace A260631.P16541012741681682137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A000027 |A168491 n|.toNat : ℚ)

end

end A260631.P16541012741681682137

/-! ## A260631.P7181010279137859948

`A025540(n)/A000027(A120588(n+1))`
-/

namespace A260631.P7181010279137859948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A000027 (A120588 (n + 1)).toNat : ℚ)

end

end A260631.P7181010279137859948

/-! ## A260631.P2986196446089126087

`A025540(n)/A000027(A120304(n)+2)`
-/

namespace A260631.P2986196446089126087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A000027 (A120304 n + 2).toNat : ℚ)

end

end A260631.P2986196446089126087

/-! ## A260631.P5771103932405741583

`A025540(n)/A000027(A028303(2*n))`
-/

namespace A260631.P5771103932405741583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A000027 (A028303 (2 * n)).toNat : ℚ)

end

end A260631.P5771103932405741583

/-!
# A260633: Numbers that set new records for the most ordered prime factorizations.

The programs for A260633, there is no canonical definition to state claims against.
-/

/-! ## A260633.P15696625476384430758

`A331188(11*A329889(n+1))`
-/

namespace A260633.P15696625476384430758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (11 * A329889 (n + 1)).toNat

end

end A260633.P15696625476384430758

/-! ## A260633.P10201905983749569141

`A108951(A329889(n+1))`
-/

namespace A260633.P10201905983749569141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A329889 (n + 1)).toNat

end

end A260633.P10201905983749569141

/-! ## A260633.P10741242408049851194

`A329602(A329889(n+1)²)`
-/

namespace A260633.P10741242408049851194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A329889 (n + 1) ^ 2).toNat

end

end A260633.P10741242408049851194

/-! ## A260633.P10727746791934085538

`A331188(A329889(n+1)²)/A331188(A329889(n+1))`
-/

namespace A260633.P10727746791934085538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A329889 (n + 1) ^ 2).toNat : ℚ) / (A331188 (A329889 (n + 1)).toNat : ℚ)

end

end A260633.P10727746791934085538

/-! ## A260633.P5670232002510474246

`A329602(2*A329889(n+1)*A329889(n+1))`
-/

namespace A260633.P5670232002510474246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (2 * A329889 (n + 1) * A329889 (n + 1)).toNat

end

end A260633.P5670232002510474246

/-!
# A260636: a(n) = binomial(3n, n) mod n.

The programs for A260636, the canonical program `A260636.P14850210884062990980` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260636 has offset 1).

The definition of A260636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260636.P14850210884062990980

`C(3*(n+1), n+1)%(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260636

/-- `C(3*(n+1), n+1)%(n+1)` -/
def P14850210884062990980.Spec : Prop :=
  ∀ n, (P14850210884062990980.a n : ℤ) = A260636 (n + 1)

theorem P14850210884062990980.correct : P14850210884062990980.Spec := by
  intro n
  simp only [A260636, Nat.add_sub_cancel]

end A260636

/-! ## A260636.P14027546887178104078

`A001764(n+1)%(n+1)`
-/

namespace A260636.P14027546887178104078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001764 (n + 1)) (n + 1 : ℤ)

end

end A260636.P14027546887178104078

namespace A260636

/-- `A001764(n+1)%(n+1)` -/
def P14027546887178104078.Spec : Prop :=
  ∀ n, P14027546887178104078.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P1293717980842200698

`A336945(n+1)%(n+1)`
-/

namespace A260636.P1293717980842200698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336945 (n + 1)) (n + 1 : ℤ)

end

end A260636.P1293717980842200698

namespace A260636

/-- `A336945(n+1)%(n+1)` -/
def P1293717980842200698.Spec : Prop :=
  ∀ n, P1293717980842200698.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P1247381989272044519

`abs(A179848(n+1)%(n+1))`
-/

namespace A260636.P1247381989272044519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A179848 (n + 1)) (n + 1 : ℤ)|

end

end A260636.P1247381989272044519

namespace A260636

/-- `abs(A179848(n+1)%(n+1))` -/
def P1247381989272044519.Spec : Prop :=
  ∀ n, P1247381989272044519.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P2361949215588825768

`A047749(2*(n+1))%(n+1)`
-/

namespace A260636.P2361949215588825768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047749 (2 * (n + 1))) (n + 1 : ℤ)

end

end A260636.P2361949215588825768

namespace A260636

/-- `A047749(2*(n+1))%(n+1)` -/
def P2361949215588825768.Spec : Prop :=
  ∀ n, P2361949215588825768.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P13184758775880393488

`A047761(2*n+1)%(n+1)`
-/

namespace A260636.P13184758775880393488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047761 (2 * n + 1)) (n + 1 : ℤ)

end

end A260636.P13184758775880393488

namespace A260636

/-- `A047761(2*n+1)%(n+1)` -/
def P13184758775880393488.Spec : Prop :=
  ∀ n, P13184758775880393488.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P12102811218635329375

`A006013(n+1)%(n+1)`
-/

namespace A260636.P12102811218635329375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006013 (n + 1)) (n + 1 : ℤ)

end

end A260636.P12102811218635329375

namespace A260636

/-- `A006013(n+1)%(n+1)` -/
def P12102811218635329375.Spec : Prop :=
  ∀ n, P12102811218635329375.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P18357496710063772207

`A026019(n)%(n+1)`
-/

namespace A260636.P18357496710063772207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026019 n) (n + 1 : ℤ)

end

end A260636.P18357496710063772207

namespace A260636

/-- `A026019(n)%(n+1)` -/
def P18357496710063772207.Spec : Prop :=
  ∀ n, P18357496710063772207.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P9745548353960471536

`A390969(n)%(n+1)`
-/

namespace A260636.P9745548353960471536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390969 n) (n + 1 : ℤ)

end

end A260636.P9745548353960471536

namespace A260636

/-- `A390969(n)%(n+1)` -/
def P9745548353960471536.Spec : Prop :=
  ∀ n, P9745548353960471536.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P6719510167148248912

`A262717(n+1)%(n+1)`
-/

namespace A260636.P6719510167148248912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262717 (n + 1)) (n + 1 : ℤ)

end

end A260636.P6719510167148248912

namespace A260636

/-- `A262717(n+1)%(n+1)` -/
def P6719510167148248912.Spec : Prop :=
  ∀ n, P6719510167148248912.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P12346855639051393740

`Δ[A045721(n)]%(n+1)`
-/

namespace A260636.P12346855639051393740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A260636.P12346855639051393740

namespace A260636

/-- `Δ[A045721(n)]%(n+1)` -/
def P12346855639051393740.Spec : Prop :=
  ∀ n, P12346855639051393740.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P15946165034215669369

`Δ[A174687(n)]%(n+1)`
-/

namespace A260636.P15946165034215669369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A260636.P15946165034215669369

namespace A260636

/-- `Δ[A174687(n)]%(n+1)` -/
def P15946165034215669369.Spec : Prop :=
  ∀ n, P15946165034215669369.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P3049609340350449541

`A005809(n+1)%(n+1)`
-/

namespace A260636.P3049609340350449541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005809 (n + 1)) (n + 1 : ℤ)

end

end A260636.P3049609340350449541

namespace A260636

/-- `A005809(n+1)%(n+1)` -/
def P3049609340350449541.Spec : Prop :=
  ∀ n, P3049609340350449541.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P12806219569256981974

`A045721(n+1)%(n+1)`
-/

namespace A260636.P12806219569256981974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045721 (n + 1)) (n + 1 : ℤ)

end

end A260636.P12806219569256981974

namespace A260636

/-- `A045721(n+1)%(n+1)` -/
def P12806219569256981974.Spec : Prop :=
  ∀ n, P12806219569256981974.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P4324720579611896263

`A174687(n+1)%(n+1)`
-/

namespace A260636.P4324720579611896263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174687 (n + 1)) (n + 1 : ℤ)

end

end A260636.P4324720579611896263

namespace A260636

/-- `A174687(n+1)%(n+1)` -/
def P4324720579611896263.Spec : Prop :=
  ∀ n, P4324720579611896263.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P1237580722007410387

`A052227(n+1)%(n+1)`
-/

namespace A260636.P1237580722007410387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052227 (n + 1)) (n + 1 : ℤ)

end

end A260636.P1237580722007410387

namespace A260636

/-- `A052227(n+1)%(n+1)` -/
def P1237580722007410387.Spec : Prop :=
  ∀ n, P1237580722007410387.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P8557227697375092173

`A108079(n+1)%(n+1)`
-/

namespace A260636.P8557227697375092173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108079 (n + 1)) (n + 1 : ℤ)

end

end A260636.P8557227697375092173

namespace A260636

/-- `A108079(n+1)%(n+1)` -/
def P8557227697375092173.Spec : Prop :=
  ∀ n, P8557227697375092173.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P17477446300272531496

`A117671(n+1)%(n+1)`
-/

namespace A260636.P17477446300272531496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117671 (n + 1)) (n + 1 : ℤ)

end

end A260636.P17477446300272531496

namespace A260636

/-- `A117671(n+1)%(n+1)` -/
def P17477446300272531496.Spec : Prop :=
  ∀ n, P17477446300272531496.a n = A260636 (n + 1)

end A260636

/-! ## A260636.P6404705960449038142

`A090816(n+1)%(n+1)`
-/

namespace A260636.P6404705960449038142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090816 (n + 1)) (n + 1 : ℤ)

end

end A260636.P6404705960449038142

namespace A260636

/-- `A090816(n+1)%(n+1)` -/
def P6404705960449038142.Spec : Prop :=
  ∀ n, P6404705960449038142.a n = A260636 (n + 1)

end A260636

/-!
# A260637: Sums of seven consecutive squares: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2 + (n+5)^2 + (n+6)^2.

The programs for A260637, there is no canonical definition to state claims against.
-/

/-! ## A260637.P10415445334938158003

`7*(n²+4)`
-/

namespace A260637.P10415445334938158003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n ^ 2 + 4)

end

end A260637.P10415445334938158003

/-! ## A260637.P4803955653015400526

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=28, a(1)=35, a(2)=56`
-/

namespace A260637.P4803955653015400526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [28, 35, 56] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A260637.P4803955653015400526

/-! ## A260637.P13688227665961420107

`(n-3)²+(n-2)²+(n-1)²+n²+(n+1)²+(n+2)²+(n+3)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260637.P13688227665961420107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2 + ((n : ℤ) - 2) ^ 2 + ((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) + ((n + 2) ^ 2 : ℤ) + ((n + 3) ^ 2 : ℤ)

end

end A260637.P13688227665961420107

/-! ## A260637.P15464504543121154101

`lcm(7, n²+4)`
-/

namespace A260637.P15464504543121154101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 (n ^ 2 + 4)

end

end A260637.P15464504543121154101

/-! ## A260637.P4973266304560018361

`∑[a(n-1)+14]` with `a(0)=28, a(1)=7`
-/

namespace A260637.P4973266304560018361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 7] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260637.P4973266304560018361

/-! ## A260637.P5058536652378944209

`A008589(n²+4)`
-/

namespace A260637.P5058536652378944209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n ^ 2 + 4)

end

end A260637.P5058536652378944209

/-! ## A260637.P6160170561704306116

`A109048(n²+4)`
-/

namespace A260637.P6160170561704306116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 (n ^ 2 + 4)

end

end A260637.P6160170561704306116

/-! ## A260637.P12802336303231990421

`A168102(n²+4)`
-/

namespace A260637.P12802336303231990421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168102 (n ^ 2 + 4)

end

end A260637.P12802336303231990421

/-!
# A260640: Numbers n such that binomial(3*n,n) == 0 (mod n).

The programs for A260640, the canonical program `A260640.P3177031407237678079` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260640 has offset 1).

The definition of A260640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260640.P16277751130927255093

`record[(n+1)/A014847(A260636(n+1)+1)]`
-/

namespace A260640.P16277751130927255093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014847 (A260636 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260640.P16277751130927255093

namespace A260640

/-- `record[(n+1)/A014847(A260636(n+1)+1)]` -/
def P16277751130927255093.Spec : Prop :=
  ∀ n, P16277751130927255093.a n = (A260640 (n + 1) : ℚ)

end A260640

/-! ## A260640.P16489964428758339642

`record[n+1-A014847(n+1)*A260636(n+1)]`
-/

namespace A260640.P16489964428758339642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014847 (n + 1) * A260636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260640.P16489964428758339642

namespace A260640

/-- `record[n+1-A014847(n+1)*A260636(n+1)]` -/
def P16489964428758339642.Spec : Prop :=
  ∀ n, P16489964428758339642.a n = A260640 (n + 1)

end A260640

/-! ## A260640.P17815822868638627281

`record[n+1-A120623(n+1)*A260636(n+1)]`
-/

namespace A260640.P17815822868638627281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A120623 (n + 1) * A260636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260640.P17815822868638627281

namespace A260640

/-- `record[n+1-A120623(n+1)*A260636(n+1)]` -/
def P17815822868638627281.Spec : Prop :=
  ∀ n, P17815822868638627281.a n = A260640 (n + 1)

end A260640

/-! ## A260640.P3177031407237678079

`record[n+1-A120624(n+1)*A260636(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A260640

/-- `record[n+1-A120624(n+1)*A260636(n+1)]` -/
def P3177031407237678079.Spec : Prop :=
  ∀ n, P3177031407237678079.a n = A260640 (n + 1)

theorem P3177031407237678079.correct : P3177031407237678079.Spec := by
  intro n
  simp only [A260640, Nat.add_sub_cancel]

end A260640

/-! ## A260640.P7313364550786499248

`record[n+1-A121943(n+1)*A260636(n+1)]`
-/

namespace A260640.P7313364550786499248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A121943 (n + 1) * A260636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260640.P7313364550786499248

namespace A260640

/-- `record[n+1-A121943(n+1)*A260636(n+1)]` -/
def P7313364550786499248.Spec : Prop :=
  ∀ n, P7313364550786499248.a n = A260640 (n + 1)

end A260640

/-!
# A260641: Numbers k such that 2^k-1 is in A004782 but not in A081767.

The programs for A260641, there is no canonical definition to state claims against.
-/

/-! ## A260641.P5262656515460991616

`ceil(log2(A260642(n+1)))`
-/

namespace A260641.P5262656515460991616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A260642 (n + 1) : ℝ)⌉

end

end A260641.P5262656515460991616

/-! ## A260641.P4588417698392800197

`floor(log2(A260642(n+1)+A001316(n)))`
-/

namespace A260641.P4588417698392800197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A260642 (n + 1) + A001316 n).toNat

end

end A260641.P4588417698392800197

/-! ## A260641.P3542250622140175374

`floor(log2(A260642(n+1)+A008619(n)))`
-/

namespace A260641.P3542250622140175374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A260642 (n + 1) + A008619 n).toNat

end

end A260641.P3542250622140175374

/-! ## A260641.P872916249933157565

`floor(log2(A260642(n+1)+A000463(n+1)))`
-/

namespace A260641.P872916249933157565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A260642 (n + 1) + A000463 (n + 1)).toNat

end

end A260641.P872916249933157565

/-! ## A260641.P8110836638757596573

`floor(log2(A260642(n+1)+A004782(n+1)))`
-/

namespace A260641.P8110836638757596573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A260642 (n + 1) + A004782 (n + 1)).toNat

end

end A260641.P8110836638757596573

/-!
# A260642: Numbers in A004782, n-1 | C(n-1), but not in A081767, n-1 | C(n), where C(n) = A000108(n) = 2n!/n!(n+1)! are the Catalan numbers.

The programs for A260642, there is no canonical definition to state claims against.
-/

/-! ## A260642.P27790369877385073

`2^A260641(n+1)-1`
-/

namespace A260642.P27790369877385073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A260641 (n + 1) : ℤ) - 1

end

end A260642.P27790369877385073

/-! ## A260642.P4497059980483614125

`A000225(A260641(n+1))`
-/

namespace A260642.P4497059980483614125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A260641 (n + 1)).toNat

end

end A260642.P4497059980483614125

/-! ## A260642.P11809367151282477077

`A126646(A260641(n+1)-1)`
-/

namespace A260642.P11809367151282477077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A260641 (n + 1) - 1).toNat

end

end A260642.P11809367151282477077

/-! ## A260642.P10127716676268434912

`A255047(lcm(A033999(n), A260641(n+1)))`
-/

namespace A260642.P10127716676268434912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (Int.lcm (A033999 n) (A260641 (n + 1)))

end

end A260642.P10127716676268434912

/-! ## A260642.P12248914548512021004

`or(A000918(A260641(n+1)), A007455(n))`
-/

namespace A260642.P12248914548512021004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000918 (A260641 (n + 1)).toNat) (A007455 n)

end

end A260642.P12248914548512021004

/-!
# A260643: Start a spiral of numbers on a square grid, with the initial square as a(1) = 1. a(n) is the smallest positive integer not equal to or previously adjacent (horizontally/vertically) to its neighbors. See the Comments section for a more exact definition.

The programs for A260643, there is no canonical definition to state claims against.
-/

/-! ## A260643.P16833592623719522834

`A265579(n+1)+1`
-/

namespace A260643.P16833592623719522834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265579 (n + 1) + 1

end

end A260643.P16833592623719522834

/-!
# A260644: Four steps forward, three steps back.

The programs for A260644, the canonical program `A260644.P13162989458698755411` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260644 has offset 0).

The definition of A260644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260644.P13162989458698755411

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=3, a(6)=2, a(7)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260644

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P13162989458698755411.Spec : Prop :=
  ∀ n, P13162989458698755411.a n = A260644 n

theorem P13162989458698755411.correct : P13162989458698755411.Spec := by
  intro n
  simp only [A260644]

end A260644

/-! ## A260644.P15143290331340036168

`2*A072229(n+3)-n`
-/

namespace A260644.P15143290331340036168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072229 (n + 3) - (n : ℤ)

end

end A260644.P15143290331340036168

namespace A260644

/-- `2*A072229(n+3)-n` -/
def P15143290331340036168.Spec : Prop :=
  ∀ n, P15143290331340036168.a n = A260644 n

end A260644

/-! ## A260644.P433112825348488027

`A271800(A060464(n+1))`
-/

namespace A260644.P433112825348488027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (A060464 (n + 1)).toNat

end

end A260644.P433112825348488027

namespace A260644

/-- `A271800(A060464(n+1))` -/
def P433112825348488027.Spec : Prop :=
  ∀ n, P433112825348488027.a n = A260644 n

end A260644

/-! ## A260644.P14537730015518705390

`∑[and(2, A078019(n+1))]-n`
-/

namespace A260644.P14537730015518705390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A078019 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A260644.P14537730015518705390

namespace A260644

/-- `∑[and(2, A078019(n+1))]-n` -/
def P14537730015518705390.Spec : Prop :=
  ∀ n, P14537730015518705390.a n = A260644 n

end A260644

/-! ## A260644.P1999127136119418753

`∑[and(2, -A005251(n))]-n`
-/

namespace A260644.P1999127136119418753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A005251 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A260644.P1999127136119418753

namespace A260644

/-- `∑[and(2, -A005251(n))]-n` -/
def P1999127136119418753.Spec : Prop :=
  ∀ n, P1999127136119418753.a n = A260644 n

end A260644

/-! ## A260644.P16970451615035099098

`∑[and(2, ∑[A020713(n)])]-n`
-/

namespace A260644.P16970451615035099098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A260644.P16970451615035099098

namespace A260644

/-- `∑[and(2, ∑[A020713(n)])]-n` -/
def P16970451615035099098.Spec : Prop :=
  ∀ n, P16970451615035099098.a n = A260644 n

end A260644

/-! ## A260644.P9141876563343950531

`∑[and(2, A078007(n+1))]-n`
-/

namespace A260644.P9141876563343950531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A078007 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A260644.P9141876563343950531

namespace A260644

/-- `∑[and(2, A078007(n+1))]-n` -/
def P9141876563343950531.Spec : Prop :=
  ∀ n, P9141876563343950531.a n = A260644 n

end A260644

/-!
# A260647: Numbers that are the sum of two distinct nonzero triangular numbers.

The programs for A260647, there is no canonical definition to state claims against.
-/

/-! ## A260647.P13786943917504239848

`lt[0, A307597(n)]`
-/

namespace A260647.P13786943917504239848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260647.P13786943917504239848

/-! ## A260647.P17496163218022027017

`lt[1, A053603(n)]`
-/

namespace A260647.P17496163218022027017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260647.P17496163218022027017

/-! ## A260647.P11779382983897889901

`eq[0, A010057(A053603(n)²)]`
-/

namespace A260647.P11779382983897889901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A053603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P11779382983897889901

/-! ## A260647.P12439450264838961287

`eq[0, A036987(A053603(n)²)]`
-/

namespace A260647.P12439450264838961287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A053603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P12439450264838961287

/-! ## A260647.P4258624706497065788

`eq[0, A005614(A307597(n)²)]`
-/

namespace A260647.P4258624706497065788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A307597 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P4258624706497065788

/-! ## A260647.P13698555025457121952

`eq[1, A003849(A307597(n)²)]`
-/

namespace A260647.P13698555025457121952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A307597 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P13698555025457121952

/-! ## A260647.P10917225754012558753

`eq[2, A007895(A053603(n)²)]`
-/

namespace A260647.P10917225754012558753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A053603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P10917225754012558753

/-! ## A260647.P7274006205452047434

`eq[2, A020639(A053603(n)!)]`
-/

namespace A260647.P7274006205452047434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A053603 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P7274006205452047434

/-! ## A260647.P4050670648414351460

`eq[1, A001221(A307597(n)+1)]`
-/

namespace A260647.P4050670648414351460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A307597 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P4050670648414351460

/-! ## A260647.P1044456233708657690

`eq[1, A052344(2*A307597(n))]`
-/

namespace A260647.P1044456233708657690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (2 * A307597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260647.P1044456233708657690

/-!
# A260648: Number of distinct prime divisors p of the n-th composite number c such that gpf(c - p) = p, where gpf = greatest prime factor (A006530).

The programs for A260648, there is no canonical definition to state claims against.
-/

/-! ## A260648.P2922618539279943139

`Δ[A073454(A018252(n+1))]+1`
-/

namespace A260648.P2922618539279943139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073454 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A260648.P2922618539279943139

/-! ## A260648.P9258592427144300307

`∑[A101504(A285115(n))]%3`
-/

namespace A260648.P9258592427144300307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101504 (A285115 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A260648.P9258592427144300307

/-! ## A260648.P7041102586412644409

`A030386((2-char[xor(n, 2*n)])^A000010(n+1))`
-/

namespace A260648.P7041102586412644409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A000010 (n + 1) : ℤ))).toNat

end

end A260648.P7041102586412644409

/-! ## A260648.P15684922461724044550

`A036579((1-char[xor(n, 2*n)])*A263617(2*(n+2)))`
-/

namespace A260648.P15684922461724044550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A263617 (2 * (n + 2))).toNat

end

end A260648.P15684922461724044550

/-! ## A260648.P604842514990140880

`A036579((2*n+1-comp[xor(n, 2*n)])*A263617(2*(n+2)))`
-/

namespace A260648.P604842514990140880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (((2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) * A263617 (2 * (n + 2))).toNat

end

end A260648.P604842514990140880

/-!
# A260649: Expansion of (phi(q^3) * phi(q^5) + phi(q) * phi(q^15)) / 2 - 1 in powers of q where phi(q) is a Ramanujan theta function.

The programs for A260649, the canonical program `A260649.P13570363332858308188` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260649 has offset 1).

The definition of A260649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260649.P1864162766625478191

`A122855(n+1)`
-/

namespace A260649.P1864162766625478191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (n + 1)

end

end A260649.P1864162766625478191

namespace A260649

/-- `A122855(n+1)` -/
def P1864162766625478191.Spec : Prop :=
  ∀ n, P1864162766625478191.a n = A260649 (n + 1)

end A260649

/-! ## A260649.P9002158276139567248

`abs(A140727(n+1))`
-/

namespace A260649.P9002158276139567248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140727 (n + 1)|

end

end A260649.P9002158276139567248

namespace A260649

/-- `abs(A140727(n+1))` -/
def P9002158276139567248.Spec : Prop :=
  ∀ n, P9002158276139567248.a n = A260649 (n + 1)

end A260649

/-! ## A260649.P13570363332858308188

`abs(A140728(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A260649

/-- `abs(A140728(n+1))` -/
def P13570363332858308188.Spec : Prop :=
  ∀ n, P13570363332858308188.a n = A260649 (n + 1)

theorem P13570363332858308188.correct : P13570363332858308188.Spec := by
  intro n
  simp only [A260649, Nat.add_sub_cancel]

end A260649

/-! ## A260649.P15836239186875073434

`gcd(A000038(n), A140727(n+1))`
-/

namespace A260649.P15836239186875073434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140727 (n + 1))

end

end A260649.P15836239186875073434

namespace A260649

/-- `gcd(A000038(n), A140727(n+1))` -/
def P15836239186875073434.Spec : Prop :=
  ∀ n, (P15836239186875073434.a n : ℤ) = A260649 (n + 1)

end A260649

/-! ## A260649.P9037148158762306738

`lcm(A020985(n), A140727(n+1))`
-/

namespace A260649.P9037148158762306738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A140727 (n + 1))

end

end A260649.P9037148158762306738

namespace A260649

/-- `lcm(A020985(n), A140727(n+1))` -/
def P9037148158762306738.Spec : Prop :=
  ∀ n, (P9037148158762306738.a n : ℤ) = A260649 (n + 1)

end A260649

/-! ## A260649.P16670939201176077735

`lcm(A033999(n), A140728(n+1))`
-/

namespace A260649.P16670939201176077735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A140728 (n + 1))

end

end A260649.P16670939201176077735

namespace A260649

/-- `lcm(A033999(n), A140728(n+1))` -/
def P16670939201176077735.Spec : Prop :=
  ∀ n, (P16670939201176077735.a n : ℤ) = A260649 (n + 1)

end A260649

/-! ## A260649.P1357428255514475944

`A192323(n+1)+A140727(n+1)`
-/

namespace A260649.P1357428255514475944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (n + 1) + A140727 (n + 1)

end

end A260649.P1357428255514475944

namespace A260649

/-- `A192323(n+1)+A140727(n+1)` -/
def P1357428255514475944.Spec : Prop :=
  ∀ n, P1357428255514475944.a n = A260649 (n + 1)

end A260649

/-! ## A260649.P7114805959284311309

`lcm(A065357(n)*A140728(n+1), A065357(n))`
-/

namespace A260649.P7114805959284311309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A140728 (n + 1)) (A065357 n)

end

end A260649.P7114805959284311309

namespace A260649

/-- `lcm(A065357(n)*A140728(n+1), A065357(n))` -/
def P7114805959284311309.Spec : Prop :=
  ∀ n, (P7114805959284311309.a n : ℤ) = A260649 (n + 1)

end A260649

/-! ## A260649.P2115891790481295583

`lcm(A140728(n+1)*A143431(n), A143431(n))`
-/

namespace A260649.P2115891790481295583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140728 (n + 1) * A143431 n) (A143431 n)

end

end A260649.P2115891790481295583

namespace A260649

/-- `lcm(A140728(n+1)*A143431(n), A143431(n))` -/
def P2115891790481295583.Spec : Prop :=
  ∀ n, (P2115891790481295583.a n : ℤ) = A260649 (n + 1)

end A260649

/-! ## A260649.P18358310960186602535

`A260671(n+1)-A140727(n+1)`
-/

namespace A260649.P18358310960186602535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (n + 1) - A140727 (n + 1)

end

end A260649.P18358310960186602535

namespace A260649

/-- `A260671(n+1)-A140727(n+1)` -/
def P18358310960186602535.Spec : Prop :=
  ∀ n, P18358310960186602535.a n = A260649 (n + 1)

end A260649

/-! ## A260649.P10771815282623940117

`(A260671(n+1)+A192323(n+1))/2`
-/

namespace A260649.P10771815282623940117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (n + 1) + A192323 (n + 1) : ℚ) / 2

end

end A260649.P10771815282623940117

namespace A260649

/-- `(A260671(n+1)+A192323(n+1))/2` -/
def P10771815282623940117.Spec : Prop :=
  ∀ n, P10771815282623940117.a n = (A260649 (n + 1) : ℚ)

end A260649

/-!
# A260650: G.f. satisfies: A(x)^2 = A( x^2/(1-4*x)^2 ).

The programs for A260650, there is no canonical definition to state claims against.
-/

/-! ## A260650.P11856937065872391944

`A001281(A081911(n)+A081909(n))`
-/

namespace A260650.P11856937065872391944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A081911 n + A081909 n).toNat

end

end A260650.P11856937065872391944

/-! ## A260650.P13181320292684013642

`A004525(A081911(n)+A081909(n))`
-/

namespace A260650.P13181320292684013642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A081911 n + A081909 n).toNat

end

end A260650.P13181320292684013642

/-!
# A260651: Number of factorions in base n.

The programs for A260651, there is no canonical definition to state claims against.
-/

/-! ## A260651.P12887569702565385024

`Δ[eq[1, A193163(n+2)]]`
-/

namespace A260651.P12887569702565385024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193163 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260651.P12887569702565385024

/-! ## A260651.P1025156962346028962

`Δ[record[n-A193163(n+3)]]`
-/

namespace A260651.P1025156962346028962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A193163 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260651.P1025156962346028962

/-! ## A260651.P15400226041911674904

`A353861(or(A000041(3*n), A181464(n+1)))`
-/

namespace A260651.P15400226041911674904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (Int.lor (A000041 (3 * n)) (A181464 (n + 1))).toNat

end

end A260651.P15400226041911674904

/-!
# A260652: The minimal difference between the first and last terms of a set of n coprime numbers.

The programs for A260652, there is no canonical definition to state claims against.
-/

/-! ## A260652.P14204864880444176314

`A264482(∑[n+1])-A264483(n+1)`
-/

namespace A260652.P14204864880444176314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264482 (∑ j ∈ Finset.range (n + 1), f1 j) - A264483 (n + 1)

end

end A260652.P14204864880444176314

/-! ## A260652.P6650328078211025176

`A264482(∑[n+1])-A264482(A000124(n))`
-/

namespace A260652.P6650328078211025176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264482 (∑ j ∈ Finset.range (n + 1), f1 j) - A264482 (A000124 n).toNat

end

end A260652.P6650328078211025176

/-! ## A260652.P3299871790745833207

`record[A264482(A038722(n+1))-A264482(n+1)]`
-/

namespace A260652.P3299871790745833207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264482 (A038722 (n + 1)).toNat - A264482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260652.P3299871790745833207

/-! ## A260652.P14213621931373337051

`A261987(C(n+2, 2))-A262042(n+1)`
-/

namespace A260652.P14213621931373337051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261987 (Nat.choose (n + 2) 2) - A262042 (n + 1)

end

end A260652.P14213621931373337051

/-! ## A260652.P1118451976009492674

`lt[A260437(n+1), A260449(A260466(n+3))]`
-/

namespace A260652.P1118451976009492674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A260466 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260652.P1118451976009492674

/-!
# A260653: Phi-practical numbers: integers n such that x^n - 1 has divisors of every degree up to n.

The programs for A260653, there is no canonical definition to state claims against.
-/

/-! ## A260653.P13571608497417250758

`∩[A256389(n+1), A336506(n+1)]`
-/

namespace A260653.P13571608497417250758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260653.P13571608497417250758

/-! ## A260653.P4269158274773076942

`∩[A335523(n+1), A336506(n+1)]`
-/

namespace A260653.P4269158274773076942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260653.P4269158274773076942

/-! ## A260653.P15636252293625696317

`∩[A335523(n+1), A336508(n+1)]`
-/

namespace A260653.P15636252293625696317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260653.P15636252293625696317

/-! ## A260653.P2647238215140953926

`∩[A238369(n+1), A336506(n+1)]`
-/

namespace A260653.P2647238215140953926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260653.P2647238215140953926

/-! ## A260653.P12420307309103520765

`∩[A238369(n+1), A336508(n+1)]`
-/

namespace A260653.P12420307309103520765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260653.P12420307309103520765

/-!
# A260655: a(n) = 4*36^n*Gamma(n+3/2)/(sqrt(Pi)*(n+2)!).

The programs for A260655, the canonical program `A260655.P1454264924499781841` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260655 has offset 0).

The definition of A260655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260655.P1454264924499781841

`9^n*A000108(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260655

/-- `9^n*A000108(n+1)` -/
def P1454264924499781841.Spec : Prop :=
  ∀ n, P1454264924499781841.a n = A260655 n

theorem P1454264924499781841.correct : P1454264924499781841.Spec := by
  intro n
  simp only [A260655]

end A260655

/-! ## A260655.P3618599735924201093

`A156273(n+1)/9`
-/

namespace A260655.P3618599735924201093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156273 (n + 1) : ℚ) / 9

end

end A260655.P3618599735924201093

namespace A260655

/-- `A156273(n+1)/9` -/
def P3618599735924201093.Spec : Prop :=
  ∀ n, P3618599735924201093.a n = (A260655 n : ℚ)

end A260655

/-! ## A260655.P13640750981732718607

`A000168(n)*A124647(n)`
-/

namespace A260655.P13640750981732718607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000168 n * A124647 n

end

end A260655.P13640750981732718607

namespace A260655

/-- `A000168(n)*A124647(n)` -/
def P13640750981732718607.Spec : Prop :=
  ∀ n, P13640750981732718607.a n = A260655 n

end A260655

/-! ## A260655.P4418686170597289592

`Δ[A014138(n)]*A001019(n)`
-/

namespace A260655.P4418686170597289592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001019 n

end

end A260655.P4418686170597289592

namespace A260655

/-- `Δ[A014138(n)]*A001019(n)` -/
def P4418686170597289592.Spec : Prop :=
  ∀ n, P4418686170597289592.a n = A260655 n

end A260655

/-! ## A260655.P17674091247548673184

`record[A097331(n)]*A001019(n)`
-/

namespace A260655.P17674091247548673184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001019 n

end

end A260655.P17674091247548673184

namespace A260655

/-- `record[A097331(n)]*A001019(n)` -/
def P17674091247548673184.Spec : Prop :=
  ∀ n, P17674091247548673184.a n = A260655 n

end A260655

/-! ## A260655.P14412844924896609942

`record[A126120(n)]*A001019(n)`
-/

namespace A260655.P14412844924896609942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001019 n

end

end A260655.P14412844924896609942

namespace A260655

/-- `record[A126120(n)]*A001019(n)` -/
def P14412844924896609942.Spec : Prop :=
  ∀ n, P14412844924896609942.a n = A260655 n

end A260655

/-! ## A260655.P11947975580185578340

`A000108(n+1)*A001019(n)`
-/

namespace A260655.P11947975580185578340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A001019 n

end

end A260655.P11947975580185578340

namespace A260655

/-- `A000108(n+1)*A001019(n)` -/
def P11947975580185578340.Spec : Prop :=
  ∀ n, P11947975580185578340.a n = A260655 n

end A260655

/-! ## A260655.P5493710239772196047

`A000108(n+1)*A000244(n)²`
-/

namespace A260655.P5493710239772196047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000244 n ^ 2

end

end A260655.P5493710239772196047

namespace A260655

/-- `A000108(n+1)*A000244(n)²` -/
def P5493710239772196047.Spec : Prop :=
  ∀ n, P5493710239772196047.a n = A260655 n

end A260655

/-! ## A260655.P7576705246840271444

`A001019(n)*A039599(∑[n+1])`
-/

namespace A260655.P7576705246840271444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260655.P7576705246840271444

namespace A260655

/-- `A001019(n)*A039599(∑[n+1])` -/
def P7576705246840271444.Spec : Prop :=
  ∀ n, P7576705246840271444.a n = A260655 n

end A260655

/-! ## A260655.P11887330088756640724

`A000108(n+1)*A000244(2*n)`
-/

namespace A260655.P11887330088756640724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000244 (2 * n)

end

end A260655.P11887330088756640724

namespace A260655

/-- `A000108(n+1)*A000244(2*n)` -/
def P11887330088756640724.Spec : Prop :=
  ∀ n, P11887330088756640724.a n = A260655 n

end A260655

/-!
# A260656: a(n) = lcm{!2, !3, ..., !n}, where !n = A000166(n) is subfactorial.

The programs for A260656, there is no canonical definition to state claims against.
-/

/-! ## A260656.P9037927955142401571

`lcm(a(n-1), record[A000166(n)])` with `a(0)=1`
-/

namespace A260656.P9037927955142401571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A260656.P9037927955142401571

/-! ## A260656.P13169236570270869863

`lcm(floor(a(n-1)), A000166(n+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A260656.P13169236570270869863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000166 (n + 2))

end

end A260656.P13169236570270869863

/-! ## A260656.P14084937002401949461

`lcm(a(A023443(n)), A000166(n+2))` with `a(0)=1`
-/

namespace A260656.P14084937002401949461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A023443 n).toNat : ℤ) (A000166 (n + 2))

end

end A260656.P14084937002401949461

/-!
# A260657: Rounded error in Stirling's formula: a(n) = round(n! - exp(-n)*n^(n+1/2)*sqrt(2*Pi)).

The programs for A260657, the canonical program `A260657.P11255028026321949958` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260657 has offset 0).

The definition of A260657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260657.P11255028026321949958

`A000142(n)-A005394(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260657

/-- `A000142(n)-A005394(n)` -/
def P11255028026321949958.Spec : Prop :=
  ∀ n, P11255028026321949958.a n = A260657 n

theorem P11255028026321949958.correct : P11255028026321949958.Spec := by
  intro n
  simp only [A260657]

end A260657

/-! ## A260657.P11633554610283180143

`round(n!-exp(-n)*n^(n+1/2)*sqrt(2*π))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260657.P11633554610283180143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) - Real.exp (-(n : ℤ) : ℝ) * (n : ℝ) ^ ((n : ℚ) + (1 : ℚ) / 2 : ℝ) * Real.sqrt (2 * Real.pi))

end

end A260657.P11633554610283180143

namespace A260657

/-- `round(n!-exp(-n)*n^(n+1/2)*sqrt(2*π))` -/
def P11633554610283180143.Spec : Prop :=
  ∀ n, P11633554610283180143.a n = A260657 n

end A260657

/-! ## A260657.P3602917767833829789

`Δ[A003422(n)]-A005394(n)`
-/

namespace A260657.P3602917767833829789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005394 n

end

end A260657.P3602917767833829789

namespace A260657

/-- `Δ[A003422(n)]-A005394(n)` -/
def P3602917767833829789.Spec : Prop :=
  ∀ n, P3602917767833829789.a n = A260657 n

end A260657

/-! ## A260657.P17679138046558936524

`∏[A028310(n)]-A005394(n)`
-/

namespace A260657.P17679138046558936524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A005394 n

end

end A260657.P17679138046558936524

namespace A260657

/-- `∏[A028310(n)]-A005394(n)` -/
def P17679138046558936524.Spec : Prop :=
  ∀ n, P17679138046558936524.a n = A260657 n

end A260657

/-! ## A260657.P9608742788444701002

`A047920(A000217(n))-A005394(n)`
-/

namespace A260657.P9608742788444701002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat - A005394 n

end

end A260657.P9608742788444701002

namespace A260657

/-- `A047920(A000217(n))-A005394(n)` -/
def P9608742788444701002.Spec : Prop :=
  ∀ n, P9608742788444701002.a n = A260657 n

end A260657

/-!
# A260658: Numerators of a BBP-like formula for 4*Pi/sqrt(27).

The programs for A260658, the canonical program `A260658.P2171500633036475055` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260658 has offset 0).

The definition of A260658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260658.P2171500633036475055

`(-1)^n*A000265(9*n+5)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A260658

/-- `(-1)^n*A000265(9*n+5)` -/
def P2171500633036475055.Spec : Prop :=
  ∀ n, P2171500633036475055.a n = A260658 n

theorem P2171500633036475055.correct : P2171500633036475055.Spec := by
  intro n
  simp only [A260658]

end A260658

/-! ## A260658.P11506036741036606167

`A000265(A017221(n))/(-1)^n`
-/

namespace A260658.P11506036741036606167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A017221 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A260658.P11506036741036606167

namespace A260658

/-- `A000265(A017221(n))/(-1)^n` -/
def P11506036741036606167.Spec : Prop :=
  ∀ n, P11506036741036606167.a n = (A260658 n : ℚ)

end A260658

/-! ## A260658.P5363884240297684113

`A000265(9*n+5)*A009001(2*n)`
-/

namespace A260658.P5363884240297684113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (9 * n + 5) * A009001 (2 * n)

end

end A260658.P5363884240297684113

namespace A260658

/-- `A000265(9*n+5)*A009001(2*n)` -/
def P5363884240297684113.Spec : Prop :=
  ∀ n, P5363884240297684113.a n = A260658 n

end A260658

/-! ## A260658.P3357287972110062031

`A000265(A017221(n))*A033999(n)`
-/

namespace A260658.P3357287972110062031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017221 n).toNat * A033999 n

end

end A260658.P3357287972110062031

namespace A260658

/-- `A000265(A017221(n))*A033999(n)` -/
def P3357287972110062031.Spec : Prop :=
  ∀ n, P3357287972110062031.a n = A260658 n

end A260658

/-! ## A260658.P4937252573855639093

`(-1)^n*A075677(3*n+2)`
-/

namespace A260658.P4937252573855639093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A075677 (3 * n + 2)

end

end A260658.P4937252573855639093

namespace A260658

/-- `(-1)^n*A075677(3*n+2)` -/
def P4937252573855639093.Spec : Prop :=
  ∀ n, P4937252573855639093.a n = A260658 n

end A260658

/-! ## A260658.P1819292712195559356

`A075677(A016789(n))/(-1)^n`
-/

namespace A260658.P1819292712195559356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075677 (A016789 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A260658.P1819292712195559356

namespace A260658

/-- `A075677(A016789(n))/(-1)^n` -/
def P1819292712195559356.Spec : Prop :=
  ∀ n, P1819292712195559356.a n = (A260658 n : ℚ)

end A260658

/-! ## A260658.P17458580857037356455

`A075677(3*n+2)/A033999(n)`
-/

namespace A260658.P17458580857037356455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075677 (3 * n + 2) : ℚ) / (A033999 n : ℚ)

end

end A260658.P17458580857037356455

namespace A260658

/-- `A075677(3*n+2)/A033999(n)` -/
def P17458580857037356455.Spec : Prop :=
  ∀ n, P17458580857037356455.a n = (A260658 n : ℚ)

end A260658

/-! ## A260658.P13179761711616505876

`(-1)^n*A337349(A016825(n))`
-/

namespace A260658.P13179761711616505876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A337349 (A016825 n).toNat

end

end A260658.P13179761711616505876

namespace A260658

/-- `(-1)^n*A337349(A016825(n))` -/
def P13179761711616505876.Spec : Prop :=
  ∀ n, P13179761711616505876.a n = A260658 n

end A260658

/-!
# A260661: The number of distinct (up to alpha-equivalence) closed lambda calculus terms n characters long, assuming standard notational conventions.

The programs for A260661, there is no canonical definition to state claims against.
-/

/-! ## A260661.P9369678957970152893

`floor(A004666(n)/58)`
-/

namespace A260661.P9369678957970152893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004666 n : ℚ) / 58⌋

end

end A260661.P9369678957970152893

/-! ## A260661.P11335444842830634823

`A004788(A124425(n))`
-/

namespace A260661.P11335444842830634823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A124425 n).toNat

end

end A260661.P11335444842830634823

/-! ## A260661.P11262085015593622235

`A327469(A022867(n+1))`
-/

namespace A260661.P11262085015593622235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327469 (A022867 (n + 1)).toNat

end

end A260661.P11262085015593622235

/-! ## A260661.P9964586603332055062

`A327469(A365243(n+1))`
-/

namespace A260661.P9964586603332055062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327469 (A365243 (n + 1)).toNat

end

end A260661.P9964586603332055062

/-! ## A260661.P15564993363780644076

`A138234(A238831(n+2))`
-/

namespace A260661.P15564993363780644076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A238831 (n + 2)).toNat

end

end A260661.P15564993363780644076

/-!
# A260664: Number of ordered triples of partitions of n with no common parts.

The programs for A260664, there is no canonical definition to state claims against.
-/

/-! ## A260664.P11878068365811274709

`A002865(n)*A303431(A291552(n))`
-/

namespace A260664.P11878068365811274709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n * A303431 (A291552 n).toNat

end

end A260664.P11878068365811274709

/-! ## A260664.P4330597620647060044

`A110173(A061286(n+1)+A000079(n))`
-/

namespace A260664.P4330597620647060044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110173 (A061286 (n + 1) + A000079 n).toNat

end

end A260664.P4330597620647060044

/-!
# A260668: Number of binary words of length n such that for every prefix the number of occurrences of subword 101 is larger than or equal to the number of occurrences of subword 010.

The programs for A260668, there is no canonical definition to state claims against.
-/

/-! ## A260668.P7355732351681145904

`floor(sqrt(sqrt(A157133(3*n+4))))`
-/

namespace A260668.P7355732351681145904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A157133 (3 * n + 4) : ℝ))⌋

end

end A260668.P7355732351681145904

/-! ## A260668.P13104059823568765622

`round(sqrt(sqrt(A215327(3*n+2))))`
-/

namespace A260668.P13104059823568765622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A215327 (3 * n + 2) : ℝ)))

end

end A260668.P13104059823568765622

/-! ## A260668.P8209211491483841125

`∑[A002024(A141771(n))]`
-/

namespace A260668.P8209211491483841125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A141771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260668.P8209211491483841125

/-! ## A260668.P4771970010221435575

`A157271(A167606(n+2))`
-/

namespace A260668.P4771970010221435575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A167606 (n + 2)).toNat

end

end A260668.P4771970010221435575

/-! ## A260668.P10335494994471065862

`A192654(A087051(n)+3)`
-/

namespace A260668.P10335494994471065862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192654 (A087051 n + 3).toNat

end

end A260668.P10335494994471065862

/-!
# A260669: Number of unordered pairs of partitions of n with no common parts.

The programs for A260669, there is no canonical definition to state claims against.
-/

/-! ## A260669.P14024112452129404034

`round(A054440(n)/2)`
-/

namespace A260669.P14024112452129404034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054440 n : ℚ) / 2)

end

end A260669.P14024112452129404034

/-! ## A260669.P10744285521074471382

`A054440(n)/A036453(n+1)`
-/

namespace A260669.P10744285521074471382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054440 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A260669.P10744285521074471382

/-! ## A260669.P6494809511683808103

`A054440(n)/A104435(n+1)`
-/

namespace A260669.P6494809511683808103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054440 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A260669.P6494809511683808103

/-! ## A260669.P1286402871305354430

`A054440(n)/A040001(2*n)`
-/

namespace A260669.P1286402871305354430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054440 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A260669.P1286402871305354430

/-! ## A260669.P14030921291317603055

`A370207(∑[n])`
-/

namespace A260669.P14030921291317603055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260669.P14030921291317603055

/-! ## A260669.P672807311565111169

`ceil(A284592(A046092(n))/2)`
-/

namespace A260669.P672807311565111169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284592 (A046092 n).toNat : ℚ) / 2⌉

end

end A260669.P672807311565111169

/-!
# A260671: Expansion of theta_3(q) * theta_3(q^15) in powers of q.

The programs for A260671, there is no canonical definition to state claims against.
-/

/-! ## A260671.P15836991880145907904

`2*A122855(n)-A192323(n)`
-/

namespace A260671.P15836991880145907904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122855 n - A192323 n

end

end A260671.P15836991880145907904

/-! ## A260671.P13494643675697840117

`A005843(A122855(n))-A192323(n)`
-/

namespace A260671.P13494643675697840117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122855 n).toNat - A192323 n

end

end A260671.P13494643675697840117

/-! ## A260671.P10720286365619924769

`A192323(3*n)`
-/

namespace A260671.P10720286365619924769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (3 * n)

end

end A260671.P10720286365619924769

/-! ## A260671.P2821147141507637724

`A192323(A008486(n))+A000007(n)`
-/

namespace A260671.P2821147141507637724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A008486 n).toNat + A000007 n

end

end A260671.P2821147141507637724

/-! ## A260671.P1623278959845960074

`or(A000007(n), A192323(A008585(n)))`
-/

namespace A260671.P1623278959845960074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A192323 (A008585 n).toNat)

end

end A260671.P1623278959845960074

/-! ## A260671.P16308706753578437758

`A192323(A008585(n))+A000007(n+1)`
-/

namespace A260671.P16308706753578437758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A008585 n).toNat + A000007 (n + 1)

end

end A260671.P16308706753578437758

/-! ## A260671.P12448977877114003566

`A192323(A305548(n))+char[A041199(n+10)]`
-/

namespace A260671.P12448977877114003566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041199 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A305548 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260671.P12448977877114003566

/-! ## A260671.P2049845254187906054

`A192323(A305548(n))^A000045(gcd(n, n-1))`
-/

namespace A260671.P2049845254187906054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192323 (A305548 n).toNat : ℚ) ^ (A000045 (Int.gcd (n : ℤ) ((n : ℤ) - 1)) : ℤ)

end

end A260671.P2049845254187906054

/-! ## A260671.P2676384407321100001

`A192323(A304840(n+1))+A192323(A305548(n))`
-/

namespace A260671.P2676384407321100001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A304840 (n + 1)).toNat + A192323 (A305548 n).toNat

end

end A260671.P2676384407321100001

/-! ## A260671.P6264210908042953901

`A192323(n²)+A192323(A008486(n))`
-/

namespace A260671.P6264210908042953901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (n ^ 2) + A192323 (A008486 n).toNat

end

end A260671.P6264210908042953901

/-! ## A260671.P6674737515394891459

`gcd(A192323(n²), A192323(A305548(n)))`
-/

namespace A260671.P6674737515394891459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A192323 (n ^ 2)) (A192323 (A305548 n).toNat)

end

end A260671.P6674737515394891459

/-! ## A260671.P8678190224286741658

`or(A192323(n²), A192323(A008585(n)))`
-/

namespace A260671.P8678190224286741658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A192323 (n ^ 2)) (A192323 (A008585 n).toNat)

end

end A260671.P8678190224286741658

/-! ## A260671.P5000563886894494704

`A192323(A014963(n+1)²)+A192323(A305548(n))`
-/

namespace A260671.P5000563886894494704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A014963 (n + 1) ^ 2).toNat + A192323 (A305548 n).toNat

end

end A260671.P5000563886894494704

/-!
# A260672: Table read by rows: T(n,k) = n - A001318(k), k = 0 .. A193832(n)-1.

The programs for A260672, there is no canonical definition to state claims against.
-/

/-! ## A260672.P15795592564980978990

`A235127(record[A277699(A099884(n))])`
-/

namespace A260672.P15795592564980978990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (A099884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260672.P15795592564980978990

/-! ## A260672.P11576879977363165548

`A025581(record[A002265(A113219(n))])`
-/

namespace A260672.P11576879977363165548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A113219 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260672.P11576879977363165548

/-! ## A260672.P12462487413987582081

`A025581(record[A300763(A113219(n))])`
-/

namespace A260672.P12462487413987582081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A113219 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260672.P12462487413987582081

/-! ## A260672.P13528866784235727508

`A025581(record[A002265(A113221(n))])`
-/

namespace A260672.P13528866784235727508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A113221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260672.P13528866784235727508

/-! ## A260672.P10619096099053641293

`A025581(lt[A000225(n), A242144(n+1)])`
-/

namespace A260672.P10619096099053641293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260672.P10619096099053641293

/-!
# A260675: Expansion of psi(x^2) * phi(x^15) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A260675, the canonical program `A260675.P7933500571381634096` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260675 has offset 0).

The definition of A260675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260675.P7933500571381634096

`A128616(4*n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A260675

/-- `A128616(4*n+1)` -/
def P7933500571381634096.Spec : Prop :=
  ∀ n, P7933500571381634096.a n = A260675 n

theorem P7933500571381634096.correct : P7933500571381634096.Spec := by
  intro n
  simp only [A260675]

end A260675

/-! ## A260675.P15207703738394676240

`A028625(4*n+1)/2`
-/

namespace A260675.P15207703738394676240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028625 (4 * n + 1) : ℚ) / 2

end

end A260675.P15207703738394676240

namespace A260675

/-- `A028625(4*n+1)/2` -/
def P15207703738394676240.Spec : Prop :=
  ∀ n, P15207703738394676240.a n = (A260675 n : ℚ)

end A260675

/-! ## A260675.P14287619295153575622

`A260671(4*n+1)/2`
-/

namespace A260675.P14287619295153575622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (4 * n + 1) : ℚ) / 2

end

end A260675.P14287619295153575622

namespace A260675

/-- `A260671(4*n+1)/2` -/
def P14287619295153575622.Spec : Prop :=
  ∀ n, P14287619295153575622.a n = (A260675 n : ℚ)

end A260675

/-! ## A260675.P6737780554480106912

`A128617(8*n+2)`
-/

namespace A260675.P6737780554480106912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (8 * n + 2)

end

end A260675.P6737780554480106912

namespace A260675

/-- `A128617(8*n+2)` -/
def P6737780554480106912.Spec : Prop :=
  ∀ n, P6737780554480106912.a n = A260675 n

end A260675

/-! ## A260675.P9074746541752067633

`A028956(A016825(2*n))/4`
-/

namespace A260675.P9074746541752067633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028956 (A016825 (2 * n)).toNat : ℚ) / 4

end

end A260675.P9074746541752067633

namespace A260675

/-- `A028956(A016825(2*n))/4` -/
def P9074746541752067633.Spec : Prop :=
  ∀ n, P9074746541752067633.a n = (A260675 n : ℚ)

end A260675

/-! ## A260675.P9646231640569888803

`A260676(A008597(n))`
-/

namespace A260675.P9646231640569888803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260676 (A008597 n).toNat

end

end A260675.P9646231640569888803

namespace A260675

/-- `A260676(A008597(n))` -/
def P9646231640569888803.Spec : Prop :=
  ∀ n, P9646231640569888803.a n = A260675 n

end A260675

/-!
# A260676: Expansion of phi(x) * psi(x^30) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A260676, the canonical program `A260676.P11014802293256740310` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260676 has offset 0).

The definition of A260676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260676.P11014802293256740310

`A128616(A004767(n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A260676

/-- `A128616(A004767(n+3))` -/
def P11014802293256740310.Spec : Prop :=
  ∀ n, P11014802293256740310.a n = A260676 n

theorem P11014802293256740310.correct : P11014802293256740310.Spec := by
  intro n
  simp only [A260676]

end A260676

/-! ## A260676.P16414152382219580199

`A128617(A008590(n+4)-2)`
-/

namespace A260676.P16414152382219580199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (A008590 (n + 4) - 2).toNat

end

end A260676.P16414152382219580199

namespace A260676

/-- `A128617(A008590(n+4)-2)` -/
def P16414152382219580199.Spec : Prop :=
  ∀ n, P16414152382219580199.a n = A260676 n

end A260676

/-! ## A260676.P10176908305116679978

`A128617(A016825(2*n+3)+16)`
-/

namespace A260676.P10176908305116679978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (A016825 (2 * n + 3) + 16).toNat

end

end A260676.P10176908305116679978

namespace A260676

/-- `A128617(A016825(2*n+3)+16)` -/
def P10176908305116679978.Spec : Prop :=
  ∀ n, P10176908305116679978.a n = A260676 n

end A260676

/-! ## A260676.P12788692903191234551

`A128617(A016945(2*n+7))`
-/

namespace A260676.P12788692903191234551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (A016945 (2 * n + 7)).toNat

end

end A260676.P12788692903191234551

namespace A260676

/-- `A128617(A016945(2*n+7))` -/
def P12788692903191234551.Spec : Prop :=
  ∀ n, P12788692903191234551.a n = A260676 n

end A260676

/-! ## A260676.P11770801825652902349

`A128617(Δ[Δ[A143938(n+2)]])`
-/

namespace A260676.P11770801825652902349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143938 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (f1 (n + 1) - f1 n).toNat

end

end A260676.P11770801825652902349

namespace A260676

/-- `A128617(Δ[Δ[A143938(n+2)]])` -/
def P11770801825652902349.Spec : Prop :=
  ∀ n, P11770801825652902349.a n = A260676 n

end A260676

/-!
# A260677: a(n) = number of decimal digits in the n-th odd Catalan number A038003(n).

The programs for A260677, there is no canonical definition to state claims against.
-/

/-! ## A260677.P17148279274046041327

`A389231(2^n-1)`
-/

namespace A260677.P17148279274046041327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389231 (2 ^ n - 1)

end

end A260677.P17148279274046041327

/-! ## A260677.P18227513716416890468

`A057755(n+1)-A001221(A126869(2*n))`
-/

namespace A260677.P18227513716416890468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 (n + 1) - A001221 (A126869 (2 * n)).toNat

end

end A260677.P18227513716416890468

/-! ## A260677.P12255133946051703697

`A334265(A000213(n))+A324350(n)`
-/

namespace A260677.P12255133946051703697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (A000213 n).toNat + A324350 n

end

end A260677.P12255133946051703697

/-! ## A260677.P9977913606472603233

`A233583(A217933(n+1))-A057574(n)`
-/

namespace A260677.P9977913606472603233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A217933 (n + 1)).toNat - A057574 n

end

end A260677.P9977913606472603233

/-!
# A260678: Numbers n>0 for which n+(17-n)^2 is not prime.

The programs for A260678, there is no canonical definition to state claims against.
-/

/-! ## A260678.P15117734597164281460

`A007636(n+1)+17`
-/

namespace A260678.P15117734597164281460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007636 (n + 1) + 17

end

end A260678.P15117734597164281460

/-! ## A260678.P10539170145730084325

`comp[A028823(n+1)]+17`
-/

namespace A260678.P10539170145730084325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 17

end

end A260678.P10539170145730084325

/-! ## A260678.P2412015980625349740

`comp[floor(sqrt(A007635(n+1)-17))]+17`
-/

namespace A260678.P2412015980625349740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007635 (n + 1) - 17)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 17

end

end A260678.P2412015980625349740

/-! ## A260678.P9788997551297475684

`eq[0, A010051(n²+17+n)]+17`
-/

namespace A260678.P9788997551297475684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 17

end

end A260678.P9788997551297475684

/-! ## A260678.P17281711567150511868

`lt[2, A000005(n²+17+n)]+17`
-/

namespace A260678.P17281711567150511868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 17

end

end A260678.P17281711567150511868

/-! ## A260678.P616364541854050812

`lt[3, A336063(A001222(n²+17+n)+1)]+17`
-/

namespace A260678.P616364541854050812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336063 (A001222 (n ^ 2 + 17 + n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 17

end

end A260678.P616364541854050812

/-! ## A260678.P2708323286493601963

`eq[1, A066247(n²+17+n)]+17`
-/

namespace A260678.P2708323286493601963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 17

end

end A260678.P2708323286493601963

/-!
# A260679: a(n) = n + (17 - n)^2.

The programs for A260679, the canonical program `A260679.P563279350895066060` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260679 has offset 1).

The definition of A260679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+(17-(n+1))²` (program `A260679.P563279350895066060`, by `A260679.P563279350895066060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260679.P563279350895066060

`n+1+(17-(n+1))²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260679

/-- `n+1+(17-(n+1))²` -/
def P563279350895066060.Spec : Prop :=
  ∀ n, P563279350895066060.a n = A260679 (n + 1)

theorem P563279350895066060.correct : P563279350895066060.Spec := by
  intro n
  simp only [A260679, Nat.add_sub_cancel]

end A260679

/-! ## A260679.P16874250322371403271

`or(1, (16-n)^2+n)`
-/

namespace A260679.P16874250322371403271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((16 - (n : ℤ)) ^ 2 + (n : ℤ))

end

end A260679.P16874250322371403271

namespace A260679

/-- `or(1, (16-n)^2+n)` -/
def P16874250322371403271.Spec : Prop :=
  ∀ n, P16874250322371403271.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P12460183356026036758

`xor(1, A022972(n)²+n)`
-/

namespace A260679.P12460183356026036758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A022972 n ^ 2 + (n : ℤ))

end

end A260679.P12460183356026036758

namespace A260679

/-- `xor(1, A022972(n)²+n)` -/
def P12460183356026036758.Spec : Prop :=
  ∀ n, P12460183356026036758.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P12191092792476365200

`A000027(A022972(n)²+n+1)`
-/

namespace A260679.P12191092792476365200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022972 n ^ 2 + (n : ℤ) + 1).toNat

end

end A260679.P12191092792476365200

namespace A260679

/-- `A000027(A022972(n)²+n+1)` -/
def P12191092792476365200.Spec : Prop :=
  ∀ n, P12191092792476365200.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P4937186187627453254

`A000027(n+1+A023458(n)²)`
-/

namespace A260679.P4937186187627453254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1 : ℤ) + A023458 n ^ 2).toNat

end

end A260679.P4937186187627453254

namespace A260679

/-- `A000027(n+1+A023458(n)²)` -/
def P4937186187627453254.Spec : Prop :=
  ∀ n, P4937186187627453254.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P5399929098897644441

`A327938(A023458(n)²+n+1)`
-/

namespace A260679.P5399929098897644441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A023458 n ^ 2 + (n + 1 : ℤ)).toNat

end

end A260679.P5399929098897644441

namespace A260679

/-- `A327938(A023458(n)²+n+1)` -/
def P5399929098897644441.Spec : Prop :=
  ∀ n, P5399929098897644441.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P2890414049060373268

`A141310(A022972(n)²+n)`
-/

namespace A260679.P2890414049060373268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A022972 n ^ 2 + (n : ℤ)).toNat

end

end A260679.P2890414049060373268

namespace A260679

/-- `A141310(A022972(n)²+n)` -/
def P2890414049060373268.Spec : Prop :=
  ∀ n, P2890414049060373268.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P2530368939805515251

`A020725((16-n)²+n)`
-/

namespace A260679.P2530368939805515251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((16 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A260679.P2530368939805515251

namespace A260679

/-- `A020725((16-n)²+n)` -/
def P2530368939805515251.Spec : Prop :=
  ∀ n, P2530368939805515251.a n = A260679 (n + 1)

end A260679

/-! ## A260679.P14563399528713350371

`((16-n)^2+n+1)/A001222(A011757(n+1))`
-/

namespace A260679.P14563399528713350371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 - (n : ℤ)) ^ 2 + (n + 1 : ℤ) : ℚ) / (A001222 (A011757 (n + 1)).toNat : ℚ)

end

end A260679.P14563399528713350371

namespace A260679

/-- `((16-n)^2+n+1)/A001222(A011757(n+1))` -/
def P14563399528713350371.Spec : Prop :=
  ∀ n, P14563399528713350371.a n = (A260679 (n + 1) : ℚ)

end A260679

/-!
# A260682: Löschian numbers (A003136) of the form 6*k+1.

The programs for A260682, the canonical program `A260682.P10691635331888986917` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260682 has offset 1).

The definition of A260682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260682.P9356977679277172343

`filter[A202822(n+1), A359374(#)]`
-/

namespace A260682.P9356977679277172343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A260682.P9356977679277172343

namespace A260682

/-- `filter[A202822(n+1), A359374(#)]` -/
def P9356977679277172343.Spec : Prop :=
  ∀ n, P9356977679277172343.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P17663986651338264096

`filter[A202822(n+1), A359832(#)]`
-/

namespace A260682.P17663986651338264096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A260682.P17663986651338264096

namespace A260682

/-- `filter[A202822(n+1), A359832(#)]` -/
def P17663986651338264096.Spec : Prop :=
  ∀ n, P17663986651338264096.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P10691635331888986917

`filter[A202822(n+1), A373156(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A260682

/-- `filter[A202822(n+1), A373156(#)]` -/
def P10691635331888986917.Spec : Prop :=
  ∀ n, P10691635331888986917.a n = A260682 (n + 1)

theorem P10691635331888986917.correct : P10691635331888986917.Spec := by
  intro n
  simp only [A260682, Nat.add_sub_cancel]

end A260682

/-! ## A260682.P4701942538594462617

`filter[A202822(n+1), A374134(#)]`
-/

namespace A260682.P4701942538594462617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A260682.P4701942538594462617

namespace A260682

/-- `filter[A202822(n+1), A374134(#)]` -/
def P4701942538594462617.Spec : Prop :=
  ∀ n, P4701942538594462617.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P7935403454571901438

`filter[A266836(n+1), A187074(#)]`
-/

namespace A260682.P7935403454571901438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A260682.P7935403454571901438

namespace A260682

/-- `filter[A266836(n+1), A187074(#)]` -/
def P7935403454571901438.Spec : Prop :=
  ∀ n, P7935403454571901438.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P4063380884294618966

`filter[A266836(n+1), A359374(#)]`
-/

namespace A260682.P4063380884294618966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A260682.P4063380884294618966

namespace A260682

/-- `filter[A266836(n+1), A359374(#)]` -/
def P4063380884294618966.Spec : Prop :=
  ∀ n, P4063380884294618966.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P4551416521592181624

`filter[A266836(n+1), A373155(#)]`
-/

namespace A260682.P4551416521592181624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A260682.P4551416521592181624

namespace A260682

/-- `filter[A266836(n+1), A373155(#)]` -/
def P4551416521592181624.Spec : Prop :=
  ∀ n, P4551416521592181624.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P11071075552260149874

`filter[A266836(n+1), A373156(#)]`
-/

namespace A260682.P11071075552260149874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A260682.P11071075552260149874

namespace A260682

/-- `filter[A266836(n+1), A373156(#)]` -/
def P11071075552260149874.Spec : Prop :=
  ∀ n, P11071075552260149874.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P5058073442642712241

`filter[A266836(n+1), A374043(#)]`
-/

namespace A260682.P5058073442642712241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A260682.P5058073442642712241

namespace A260682

/-- `filter[A266836(n+1), A374043(#)]` -/
def P5058073442642712241.Spec : Prop :=
  ∀ n, P5058073442642712241.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P3654987453256927217

`filter[A202822(n+1), A039982(#)]`
-/

namespace A260682.P3654987453256927217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A260682.P3654987453256927217

namespace A260682

/-- `filter[A202822(n+1), A039982(#)]` -/
def P3654987453256927217.Spec : Prop :=
  ∀ n, P3654987453256927217.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P15763043787537511006

`filter[A202822(n+1), A093719(#)]`
-/

namespace A260682.P15763043787537511006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A260682.P15763043787537511006

namespace A260682

/-- `filter[A202822(n+1), A093719(#)]` -/
def P15763043787537511006.Spec : Prop :=
  ∀ n, P15763043787537511006.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P7426091571907938194

`filter[A202822(n+1), A098725(#)]`
-/

namespace A260682.P7426091571907938194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A260682.P7426091571907938194

namespace A260682

/-- `filter[A202822(n+1), A098725(#)]` -/
def P7426091571907938194.Spec : Prop :=
  ∀ n, P7426091571907938194.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P2664853993567896076

`filter[A202822(n+1), A166486(#)]`
-/

namespace A260682.P2664853993567896076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A260682.P2664853993567896076

namespace A260682

/-- `filter[A202822(n+1), A166486(#)]` -/
def P2664853993567896076.Spec : Prop :=
  ∀ n, P2664853993567896076.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P14773319961186216479

`filter[A202822(n+1), A320106(#)]`
-/

namespace A260682.P14773319961186216479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A260682.P14773319961186216479

namespace A260682

/-- `filter[A202822(n+1), A320106(#)]` -/
def P14773319961186216479.Spec : Prop :=
  ∀ n, P14773319961186216479.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P5910113066693503425

`filter[A202822(n+1), A354354(#)]`
-/

namespace A260682.P5910113066693503425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A260682.P5910113066693503425

namespace A260682

/-- `filter[A202822(n+1), A354354(#)]` -/
def P5910113066693503425.Spec : Prop :=
  ∀ n, P5910113066693503425.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P16763143879263877463

`filter[A266836(n+1), A320106(#)]`
-/

namespace A260682.P16763143879263877463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A260682.P16763143879263877463

namespace A260682

/-- `filter[A266836(n+1), A320106(#)]` -/
def P16763143879263877463.Spec : Prop :=
  ∀ n, P16763143879263877463.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P15693709526981609006

`filter[A266836(n+1), A354354(#)]`
-/

namespace A260682.P15693709526981609006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A260682.P15693709526981609006

namespace A260682

/-- `filter[A266836(n+1), A354354(#)]` -/
def P15693709526981609006.Spec : Prop :=
  ∀ n, P15693709526981609006.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P18389219036557292024

`filter[A243175(n+1), A354354(#)]`
-/

namespace A260682.P18389219036557292024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A260682.P18389219036557292024

namespace A260682

/-- `filter[A243175(n+1), A354354(#)]` -/
def P18389219036557292024.Spec : Prop :=
  ∀ n, P18389219036557292024.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P5953518100920957344

`filter[A243175(n+2), A320106(#)]`
-/

namespace A260682.P5953518100920957344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A260682.P5953518100920957344

namespace A260682

/-- `filter[A243175(n+2), A320106(#)]` -/
def P5953518100920957344.Spec : Prop :=
  ∀ n, P5953518100920957344.a n = A260682 (n + 1)

end A260682

/-! ## A260682.P2700115036221288947

`filter[A243175(n+2), A359374(#)]`
-/

namespace A260682.P2700115036221288947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A260682.P2700115036221288947

namespace A260682

/-- `filter[A243175(n+2), A359374(#)]` -/
def P2700115036221288947.Spec : Prop :=
  ∀ n, P2700115036221288947.a n = A260682 (n + 1)

end A260682

/-!
# A260683: Number of 2's in the expansion of 2^n in base 3.

The programs for A260683, the canonical program `A260683.P1450554479988976395` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260683 has offset 0).

The definition of A260683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260683.P4949076793760516722

`A020915(n)-A104320(n)-A036461(n)`
-/

namespace A260683.P4949076793760516722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - A104320 n - A036461 n

end

end A260683.P4949076793760516722

namespace A260683

/-- `A020915(n)-A104320(n)-A036461(n)` -/
def P4949076793760516722.Spec : Prop :=
  ∀ n, P4949076793760516722.a n = A260683 n

end A260683

/-! ## A260683.P1450554479988976395

`A081603(A000079(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A260683

/-- `A081603(A000079(n))` -/
def P1450554479988976395.Spec : Prop :=
  ∀ n, P1450554479988976395.a n = A260683 n

theorem P1450554479988976395.correct : P1450554479988976395.Spec := by
  intro n
  simp only [A260683]

end A260683

/-! ## A260683.P6533593396695436317

`A265157(n)+n%2`
-/

namespace A260683.P6533593396695436317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + ((n % 2 : ℕ) : ℤ)

end

end A260683.P6533593396695436317

namespace A260683

/-- `A265157(n)+n%2` -/
def P6533593396695436317.Spec : Prop :=
  ∀ n, P6533593396695436317.a n = A260683 n

end A260683

/-! ## A260683.P15875004121862565282

`A265157(n)+A000035(n)`
-/

namespace A260683.P15875004121862565282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + A000035 n

end

end A260683.P15875004121862565282

namespace A260683

/-- `A265157(n)+A000035(n)` -/
def P15875004121862565282.Spec : Prop :=
  ∀ n, P15875004121862565282.a n = A260683 n

end A260683

/-! ## A260683.P9062061101880081272

`A265157(n)+Δ[A008619(n)]`
-/

namespace A260683.P9062061101880081272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + (f1 (n + 1) - f1 n)

end

end A260683.P9062061101880081272

namespace A260683

/-- `A265157(n)+Δ[A008619(n)]` -/
def P9062061101880081272.Spec : Prop :=
  ∀ n, P9062061101880081272.a n = A260683 n

end A260683

/-! ## A260683.P17982831449820942673

`A265157(n)+char[A005408(n)]`
-/

namespace A260683.P17982831449820942673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260683.P17982831449820942673

namespace A260683

/-- `A265157(n)+char[A005408(n)]` -/
def P17982831449820942673.Spec : Prop :=
  ∀ n, P17982831449820942673.a n = A260683 n

end A260683

/-! ## A260683.P8784620930032562821

`A265157(n)+1-A059841(n)`
-/

namespace A260683.P8784620930032562821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + (1 - A059841 n)

end

end A260683.P8784620930032562821

namespace A260683

/-- `A265157(n)+1-A059841(n)` -/
def P8784620930032562821.Spec : Prop :=
  ∀ n, P8784620930032562821.a n = A260683 n

end A260683

/-! ## A260683.P1987708639168871692

`A265157(n)+and(1, A138554(n))`
-/

namespace A260683.P1987708639168871692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + Int.land 1 (A138554 n)

end

end A260683.P1987708639168871692

namespace A260683

/-- `A265157(n)+and(1, A138554(n))` -/
def P1987708639168871692.Spec : Prop :=
  ∀ n, P1987708639168871692.a n = A260683 n

end A260683

/-! ## A260683.P7558330953662964405

`A265157(n)+char[A328478(n+1)]`
-/

namespace A260683.P7558330953662964405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260683.P7558330953662964405

namespace A260683

/-- `A265157(n)+char[A328478(n+1)]` -/
def P7558330953662964405.Spec : Prop :=
  ∀ n, P7558330953662964405.a n = A260683 n

end A260683

/-! ## A260683.P12643454517867821085

`A265157(n)+Δ[A004526(n)]`
-/

namespace A260683.P12643454517867821085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + (f1 (n + 1) - f1 n)

end

end A260683.P12643454517867821085

namespace A260683

/-- `A265157(n)+Δ[A004526(n)]` -/
def P12643454517867821085.Spec : Prop :=
  ∀ n, P12643454517867821085.a n = A260683 n

end A260683

/-! ## A260683.P8563309266969346989

`A265157(n)+A059841(n+1)`
-/

namespace A260683.P8563309266969346989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + A059841 (n + 1)

end

end A260683.P8563309266969346989

namespace A260683

/-- `A265157(n)+A059841(n+1)` -/
def P8563309266969346989.Spec : Prop :=
  ∀ n, P8563309266969346989.a n = A260683 n

end A260683

/-! ## A260683.P13974152766757118976

`A265157(n)+A099475(A171977(n+1))`
-/

namespace A260683.P13974152766757118976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265157 n + A099475 (A171977 (n + 1)).toNat

end

end A260683.P13974152766757118976

namespace A260683

/-- `A265157(n)+A099475(A171977(n+1))` -/
def P13974152766757118976.Spec : Prop :=
  ∀ n, P13974152766757118976.a n = A260683 n

end A260683

/-! ## A260683.P11469387931324176880

`∑{digits}[A004642(n), A073642(#)]`
-/

namespace A260683.P11469387931324176880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A073642 x).sum

end

end A260683.P11469387931324176880

namespace A260683

/-- `∑{digits}[A004642(n), A073642(#)]` -/
def P11469387931324176880.Spec : Prop :=
  ∀ n, P11469387931324176880.a n = A260683 n

end A260683

/-! ## A260683.P1498809281329083310

`∑{digits}[A004642(n), 1-A039966(#)]`
-/

namespace A260683.P1498809281329083310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A039966 x).sum

end

end A260683.P1498809281329083310

namespace A260683

/-- `∑{digits}[A004642(n), 1-A039966(#)]` -/
def P1498809281329083310.Spec : Prop :=
  ∀ n, P1498809281329083310.a n = A260683 n

end A260683

/-! ## A260683.P2132862029443241638

`∑{digits}[A004642(n), A000007(2-#)]`
-/

namespace A260683.P2132862029443241638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 (2 - x)).sum

end

end A260683.P2132862029443241638

namespace A260683

/-- `∑{digits}[A004642(n), A000007(2-#)]` -/
def P2132862029443241638.Spec : Prop :=
  ∀ n, P2132862029443241638.a n = A260683 n

end A260683

/-! ## A260683.P12889919936085608795

`∑{digits}[A004642(n), A001343(2-#)]`
-/

namespace A260683.P12889919936085608795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001343 (2 - x)).sum

end

end A260683.P12889919936085608795

namespace A260683

/-- `∑{digits}[A004642(n), A001343(2-#)]` -/
def P12889919936085608795.Spec : Prop :=
  ∀ n, P12889919936085608795.a n = A260683 n

end A260683

/-! ## A260683.P16412001265606581139

`∑{digits}[A004642(n), A029419(2-#)]`
-/

namespace A260683.P16412001265606581139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029419 (2 - x)).sum

end

end A260683.P16412001265606581139

namespace A260683

/-- `∑{digits}[A004642(n), A029419(2-#)]` -/
def P16412001265606581139.Spec : Prop :=
  ∀ n, P16412001265606581139.a n = A260683 n

end A260683

/-! ## A260683.P6222704543092714627

`∑{digits}[2*A004642(n), A072661(#)]`
-/

namespace A260683.P6222704543092714627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A072661 x).sum

end

end A260683.P6222704543092714627

namespace A260683

/-- `∑{digits}[2*A004642(n), A072661(#)]` -/
def P6222704543092714627.Spec : Prop :=
  ∀ n, P6222704543092714627.a n = A260683 n

end A260683

/-!
# A260684: Irregular triangular array read by rows. Row n gives the primes in the prime factorization of n! that have exponent of 1.

The programs for A260684, the canonical program `A260684.P9944264110032864462` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260684 has offset 2).

The definition of A260684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260684.P9944264110032864462

`p?[A322832(n)+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260684

/-- `p?[A322832(n)+1]` -/
def P9944264110032864462.Spec : Prop :=
  ∀ n, P9944264110032864462.a n = A260684 (n + 2)

theorem P9944264110032864462.correct : P9944264110032864462.Spec := by
  intro n
  simp only [A260684, Nat.add_sub_cancel]

end A260684

/-! ## A260684.P814548842516138806

`p?[A138099(n+1)]`
-/

namespace A260684.P814548842516138806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P814548842516138806

namespace A260684

/-- `p?[A138099(n+1)]` -/
def P814548842516138806.Spec : Prop :=
  ∀ n, P814548842516138806.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P13008487548805005588

`filter[A138099(n+1), A010051(#)]`
-/

namespace A260684.P13008487548805005588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A260684.P13008487548805005588

namespace A260684

/-- `filter[A138099(n+1), A010051(#)]` -/
def P13008487548805005588.Spec : Prop :=
  ∀ n, P13008487548805005588.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P6387272161315343369

`filter[A138099(n+2), A080339(#)]`
-/

namespace A260684.P6387272161315343369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A260684.P6387272161315343369

namespace A260684

/-- `filter[A138099(n+2), A080339(#)]` -/
def P6387272161315343369.Spec : Prop :=
  ∀ n, P6387272161315343369.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P1135091599181748319

`p?[n+1-A033638(n-A083479(n))]`
-/

namespace A260684.P1135091599181748319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033638 ((n : ℤ) - A083479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P1135091599181748319

namespace A260684

/-- `p?[n+1-A033638(n-A083479(n))]` -/
def P1135091599181748319.Spec : Prop :=
  ∀ n, P1135091599181748319.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P14835063132024431686

`p?[Δ[A091995(n+1)]]`
-/

namespace A260684.P14835063132024431686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P14835063132024431686

namespace A260684

/-- `p?[Δ[A091995(n+1)]]` -/
def P14835063132024431686.Spec : Prop :=
  ∀ n, P14835063132024431686.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P3999343472366820145

`p?[A091995(n+2)-A091995(n+1)]`
-/

namespace A260684.P3999343472366820145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 2) - A091995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P3999343472366820145

namespace A260684

/-- `p?[A091995(n+2)-A091995(n+1)]` -/
def P3999343472366820145.Spec : Prop :=
  ∀ n, P3999343472366820145.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P11326476023097421561

`p?[p?[A002260(n+1)]*A115627(n+2)]`
-/

namespace A260684.P11326476023097421561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A115627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P11326476023097421561

namespace A260684

/-- `p?[p?[A002260(n+1)]*A115627(n+2)]` -/
def P11326476023097421561.Spec : Prop :=
  ∀ n, P11326476023097421561.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P9350710290953174729

`p?[p?[A131818(n+1)]*A115627(n+2)]`
-/

namespace A260684.P9350710290953174729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A115627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P9350710290953174729

namespace A260684

/-- `p?[p?[A131818(n+1)]*A115627(n+2)]` -/
def P9350710290953174729.Spec : Prop :=
  ∀ n, P9350710290953174729.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P2417477885032530220

`p?[A002260(n+1)*A101688(n)]`
-/

namespace A260684.P2417477885032530220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A101688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P2417477885032530220

namespace A260684

/-- `p?[A002260(n+1)*A101688(n)]` -/
def P2417477885032530220.Spec : Prop :=
  ∀ n, P2417477885032530220.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P17618190152607878233

`p?[C(A002260(n+1), A288386(n))]`
-/

namespace A260684.P17618190152607878233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A288386 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A260684.P17618190152607878233

namespace A260684

/-- `p?[C(A002260(n+1), A288386(n))]` -/
def P17618190152607878233.Spec : Prop :=
  ∀ n, (P17618190152607878233.a n : ℤ) = A260684 (n + 2)

end A260684

/-! ## A260684.P4411669876806590368

`p?[A128180(n+1)]`
-/

namespace A260684.P4411669876806590368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P4411669876806590368

namespace A260684

/-- `p?[A128180(n+1)]` -/
def P4411669876806590368.Spec : Prop :=
  ∀ n, P4411669876806590368.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P2649558864198588403

`p?[A355859(n+1)]`
-/

namespace A260684.P2649558864198588403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P2649558864198588403

namespace A260684

/-- `p?[A355859(n+1)]` -/
def P2649558864198588403.Spec : Prop :=
  ∀ n, P2649558864198588403.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P16629447237325767537

`p?[A027656(A051162(n))]`
-/

namespace A260684.P16629447237325767537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P16629447237325767537

namespace A260684

/-- `p?[A027656(A051162(n))]` -/
def P16629447237325767537.Spec : Prop :=
  ∀ n, P16629447237325767537.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P14790840606787862190

`p?[A108872(n+1)-A006530(A108872(n+1))]`
-/

namespace A260684.P14790840606787862190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A006530 (A108872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P14790840606787862190

namespace A260684

/-- `p?[A108872(n+1)-A006530(A108872(n+1))]` -/
def P14790840606787862190.Spec : Prop :=
  ∀ n, P14790840606787862190.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P14214889708259001479

`p?[A187881(n+1)]`
-/

namespace A260684.P14214889708259001479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P14214889708259001479

namespace A260684

/-- `p?[A187881(n+1)]` -/
def P14214889708259001479.Spec : Prop :=
  ∀ n, P14214889708259001479.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P12612311835571172534

`p?[A143310(n+3)]`
-/

namespace A260684.P12612311835571172534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P12612311835571172534

namespace A260684

/-- `p?[A143310(n+3)]` -/
def P12612311835571172534.Spec : Prop :=
  ∀ n, P12612311835571172534.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P16593414958655940075

`p?[p?[A002262(n)]*A115627(n+2)]`
-/

namespace A260684.P16593414958655940075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A115627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P16593414958655940075

namespace A260684

/-- `p?[p?[A002262(n)]*A115627(n+2)]` -/
def P16593414958655940075.Spec : Prop :=
  ∀ n, P16593414958655940075.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P6307301373210838295

`p?[A144328(n+1)-A144299(n)]`
-/

namespace A260684.P6307301373210838295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P6307301373210838295

namespace A260684

/-- `p?[A144328(n+1)-A144299(n)]` -/
def P6307301373210838295.Spec : Prop :=
  ∀ n, P6307301373210838295.a n = A260684 (n + 2)

end A260684

/-! ## A260684.P18100450605902073178

`p?[abs(lt[A141692(n), 1]-2*n-1)]`
-/

namespace A260684.P18100450605902073178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (2 * n : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P18100450605902073178

namespace A260684

/-- `p?[abs(lt[A141692(n), 1]-2*n-1)]` -/
def P18100450605902073178.Spec : Prop :=
  ∀ n, P18100450605902073178.a n = A260684 (n + 2)

end A260684

/-!
# A260685: Sequence is defined by the condition that Sum_{d|n} a(d)^(n/d) = 1 if n=1, = 0 if n>1.

The programs for A260685, there is no canonical definition to state claims against.
-/

/-! ## A260685.P14730595519428422528

`A294080(2^(n+1))`
-/

namespace A260685.P14730595519428422528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294080 (2 ^ (n + 1))

end

end A260685.P14730595519428422528

/-! ## A260685.P17380305529753598008

`A294080(A198633(n))%57`
-/

namespace A260685.P17380305529753598008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294080 (A198633 n).toNat) 57

end

end A260685.P17380305529753598008

/-! ## A260685.P14137396948633743721

`A294080(A000079(n+1))%57`
-/

namespace A260685.P14137396948633743721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294080 (A000079 (n + 1)).toNat) 57

end

end A260685.P14137396948633743721

/-! ## A260685.P10292452077021409618

`A294080(A198633(n))+A165878(n)`
-/

namespace A260685.P10292452077021409618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294080 (A198633 n).toNat + A165878 n

end

end A260685.P10292452077021409618

/-! ## A260685.P8027633583782495954

`or(A008683(n+1), A294080(A000079(n+1)))`
-/

namespace A260685.P8027633583782495954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (n + 1)) (A294080 (A000079 (n + 1)).toNat)

end

end A260685.P8027633583782495954

/-!
# A260686: Period 6 zigzag sequence, repeat [0, 1, 2, 3, 2, 1].

The programs for A260686, the canonical program `A260686.P11534064417136253124` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260686 has offset 0).

The definition of A260686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260686.P11534064417136253124

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260686

/-- `a(n-6)` -/
def P11534064417136253124.Spec : Prop :=
  ∀ n, (P11534064417136253124.a n : ℤ) = A260686 n

theorem P11534064417136253124.correct : P11534064417136253124.Spec := by
  intro n
  simp only [A260686]

end A260686

/-!
# A260687: Triangular array with n-th row giving coefficients of polynomial Product_{k = 2..n} (k + n*t) for n >= 1.

The programs for A260687, there is no canonical definition to state claims against.
-/

/-! ## A260687.P10398753592253804669

`abs(A049444(n)*A076112(n+1))`
-/

namespace A260687.P10398753592253804669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049444 n * A076112 (n + 1)|

end

end A260687.P10398753592253804669

/-! ## A260687.P5743788524433406979

`A076112(n+1)*A136124(n+2)`
-/

namespace A260687.P5743788524433406979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A136124 (n + 2)

end

end A260687.P5743788524433406979

/-! ## A260687.P10257783297534593285

`abs(A049444(n))*A009999(A245300(n))`
-/

namespace A260687.P10257783297534593285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049444 n| * A009999 (A245300 n).toNat

end

end A260687.P10257783297534593285

/-! ## A260687.P8886724043470985610

`A009999(A245300(n))*A136124(n+2)`
-/

namespace A260687.P8886724043470985610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A245300 n).toNat * A136124 (n + 2)

end

end A260687.P8886724043470985610

/-! ## A260687.P745219006049650872

`lcm(A049444(n)*A076112(n+1), A014963(9*n+6))`
-/

namespace A260687.P745219006049650872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049444 n * A076112 (n + 1)) (A014963 (9 * n + 6))

end

end A260687.P745219006049650872

/-!
# A260690: Array read by antidiagonals: D(w,h) is the maximum number of diagonals that can be placed in a w X h grid made up of unit squares when diagonals are placed in the unit squares in such a way that no two diagonals may cross or intersect at an endpoint.

The programs for A260690, there is no canonical definition to state claims against.
-/

/-! ## A260690.P5181378501082411502

`A037800(A022166(n))+A002024(n+1)`
-/

namespace A260690.P5181378501082411502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A022166 n).toNat + A002024 (n + 1)

end

end A260690.P5181378501082411502

/-! ## A260690.P13368809301763391062

`A000523(A203452(n+1))-2`
-/

namespace A260690.P13368809301763391062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A203452 (n + 1)).toNat - 2

end

end A260690.P13368809301763391062

/-! ## A260690.P11069037114830396349

`A166469(A223209(n+1))`
-/

namespace A260690.P11069037114830396349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A223209 (n + 1)).toNat

end

end A260690.P11069037114830396349

/-! ## A260690.P71041199274682758

`A341594(5*A223209(n+1))`
-/

namespace A260690.P71041199274682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (5 * A223209 (n + 1)).toNat

end

end A260690.P71041199274682758

/-! ## A260690.P11038204927461565322

`A023142(A223569(n+1))+A003056(n)`
-/

namespace A260690.P11038204927461565322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A223569 (n + 1)).toNat + A003056 n

end

end A260690.P11038204927461565322

/-!
# A260692: Binary representation of the n-th iteration of the "Rule 17" elementary cellular automaton starting with a single ON (black) cell.

The programs for A260692, there is no canonical definition to state claims against.
-/

/-! ## A260692.P8889912545886793751

`A007088(A266090(n))`
-/

namespace A260692.P8889912545886793751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266090 n).toNat

end

end A260692.P8889912545886793751

/-! ## A260692.P13243089871173905542

`A007088(and(A266671(n), A267003(n)))`
-/

namespace A260692.P13243089871173905542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266671 n) (A267003 n)).toNat

end

end A260692.P13243089871173905542

/-! ## A260692.P10125629485891391976

`A007088(and(A266671(n), A267271(n)))`
-/

namespace A260692.P10125629485891391976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266671 n) (A267271 n)).toNat

end

end A260692.P10125629485891391976

/-! ## A260692.P9573223784425993329

`A007088(2*A266671(n)-A267003(n))`
-/

namespace A260692.P9573223784425993329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A266671 n - A267003 n).toNat

end

end A260692.P9573223784425993329

/-! ## A260692.P9196232651571551225

`A007088(A266671(n)+A266671(n)-A267003(n))`
-/

namespace A260692.P9196232651571551225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266671 n + (A266671 n - A267003 n)).toNat

end

end A260692.P9196232651571551225

/-!
# A260693: Triangle read by rows: T(n,k) is the number of parking functions of length n whose maximum element is k, where n >= 0 and 0 <= k <= n.

The programs for A260693, there is no canonical definition to state claims against.
-/

/-! ## A260693.P6385768191302136054

`A112318(A256549(n))`
-/

namespace A260693.P6385768191302136054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A256549 n).toNat

end

end A260693.P6385768191302136054

/-! ## A260693.P1989621687924646857

`A344646(A269939(n))`
-/

namespace A260693.P1989621687924646857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A269939 n).toNat

end

end A260693.P1989621687924646857

/-! ## A260693.P17458818677398885176

`A121480(A269939(n)+2)`
-/

namespace A260693.P17458818677398885176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121480 (A269939 n + 2).toNat

end

end A260693.P17458818677398885176

/-! ## A260693.P13235093730727741898

`A340205(A269939(n)+2)`
-/

namespace A260693.P13235093730727741898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A269939 n + 2).toNat

end

end A260693.P13235093730727741898

/-!
# A260694: Number of up-down parking functions of length n.

The programs for A260694, there is no canonical definition to state claims against.
-/

/-! ## A260694.P16763629234703997496

`A008612(round(A306183(n)-atan(n)))`
-/

namespace A260694.P16763629234703997496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.roundAway ((A306183 n : ℝ) - Real.arctan (n : ℝ))).toNat

end

end A260694.P16763629234703997496

/-! ## A260694.P15924554810836673513

`A008612(A306183(n)-floor(n^(1/3)))`
-/

namespace A260694.P15924554810836673513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A306183 n - ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋).toNat

end

end A260694.P15924554810836673513

/-!
# A260695: a(n) is the number of permutations p of {1,..,n} such that the minimum number of block interchanges required to sort the permutation p to the identity permutation is maximized.

The programs for A260695, there is no canonical definition to state claims against.
-/

/-! ## A260695.P16813077870006238462

`A164652(∑[A014681(n)])`
-/

namespace A260695.P16813077870006238462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260695.P16813077870006238462

/-! ## A260695.P12735613192677090983

`A185263(A024206(n+1))`
-/

namespace A260695.P12735613192677090983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185263 (A024206 (n + 1)).toNat

end

end A260695.P12735613192677090983

/-! ## A260695.P12730652802149782253

`A185263(A002620(n)+n)`
-/

namespace A260695.P12730652802149782253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185263 (A002620 n + (n : ℤ)).toNat

end

end A260695.P12730652802149782253

/-! ## A260695.P16608394066243273500

`A164652(A000217(n)+A000035(n))`
-/

namespace A260695.P16608394066243273500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (A000217 n + A000035 n).toNat

end

end A260695.P16608394066243273500

/-! ## A260695.P9336908609649861927

`A185263(A123108(A110654(n²))+n)`
-/

namespace A260695.P9336908609649861927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185263 (A123108 (A110654 (n ^ 2)).toNat + (n : ℤ)).toNat

end

end A260695.P9336908609649861927

/-!
# A260696: The number of length-n permutations avoiding the patterns 1234, 1324, 1432 and 3214.

The programs for A260696, there is no canonical definition to state claims against.
-/

/-! ## A260696.P9934841050507739024

`A087844(A275751(n))`
-/

namespace A260696.P9934841050507739024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087844 (A275751 n).toNat

end

end A260696.P9934841050507739024

/-! ## A260696.P11218111343221670880

`A340854(A052806(n))`
-/

namespace A260696.P11218111343221670880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A052806 n).toNat

end

end A260696.P11218111343221670880

/-! ## A260696.P11995947025451054555

`A340854(A085748(n))`
-/

namespace A260696.P11995947025451054555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A085748 n).toNat

end

end A260696.P11995947025451054555

/-!
# A260697: Number of binary words w of length n with equal numbers of 010 and 101 subwords such that for every prefix of w the number of occurrences of subword 101 is larger than or equal to the number of occurrences of subword 010.

The programs for A260697, there is no canonical definition to state claims against.
-/

/-! ## A260697.P12733430070400015056

`A307531(A141312(n))`
-/

namespace A260697.P12733430070400015056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A141312 n).toNat

end

end A260697.P12733430070400015056

/-! ## A260697.P7959737523661079754

`∑[A000196(∑[A094554(n)])]`
-/

namespace A260697.P7959737523661079754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260697.P7959737523661079754

/-! ## A260697.P6884872692981669348

`A257639(A007283(n)*A117791(n))`
-/

namespace A260697.P6884872692981669348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A007283 n * A117791 n).toNat

end

end A260697.P6884872692981669348

/-! ## A260697.P145211191264037465

`A191794(n)+A003056(Δ[A086581(n)])`
-/

namespace A260697.P145211191264037465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 n + A003056 (f1 (n + 1) - f1 n).toNat

end

end A260697.P145211191264037465

/-! ## A260697.P9592603708920401667

`A257639(Δ[A109537(n+5)]*A007283(n))`
-/

namespace A260697.P9592603708920401667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ((f1 (n + 1) - f1 n) * A007283 n).toNat

end

end A260697.P9592603708920401667

/-!
# A260698: Practical numbers of the form p - 1 where p is a prime.

The programs for A260698, there is no canonical definition to state claims against.
-/

/-! ## A260698.P13174731872170115930

`p?[A005153(n+1)+1]-1`
-/

namespace A260698.P13174731872170115930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A260698.P13174731872170115930

/-! ## A260698.P10422460726289141902

`∩[A005153(n+1), A006093(n+1)]`
-/

namespace A260698.P10422460726289141902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260698.P10422460726289141902

/-! ## A260698.P5652337335516547553

`∩[A005153(n+1), A068499(n+1)]`
-/

namespace A260698.P5652337335516547553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260698.P5652337335516547553

/-! ## A260698.P7822293026593853993

`∩[A000040(n+1)-1, A005153(n+1)]`
-/

namespace A260698.P7822293026593853993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260698.P7822293026593853993

/-! ## A260698.P6167357072652512699

`∩[A000010(A000040(n+1)), A005153(n+1)]`
-/

namespace A260698.P6167357072652512699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260698.P6167357072652512699

/-! ## A260698.P2479438903438752034

`filter[A006093(n+1), A322860(#)]`
-/

namespace A260698.P2479438903438752034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A260698.P2479438903438752034

/-! ## A260698.P1367397104158217852

`filter[A068499(n+1), A322860(#)]`
-/

namespace A260698.P1367397104158217852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A260698.P1367397104158217852

/-! ## A260698.P17349536645916922829

`filter[A173919(n+1), A322860(#)]`
-/

namespace A260698.P17349536645916922829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A260698.P17349536645916922829

/-! ## A260698.P16905842229134268823

`∩[A005153(n+1), A173919(n+1)]`
-/

namespace A260698.P16905842229134268823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260698.P16905842229134268823

/-! ## A260698.P10724057434872900616

`filter[A066249(2*(n+1)), A322860(#)]`
-/

namespace A260698.P10724057434872900616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A260698.P10724057434872900616

/-! ## A260698.P8529366713153866837

`filter[A066251(2*n+1), A322860(#)]`
-/

namespace A260698.P8529366713153866837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A260698.P8529366713153866837

/-! ## A260698.P11551694036221870154

`∩[A006093(n+1), A377929(n+1)]`
-/

namespace A260698.P11551694036221870154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260698.P11551694036221870154

/-! ## A260698.P8176208184301354972

`record[A327832(A003958(n+1))]`
-/

namespace A260698.P8176208184301354972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A003958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P8176208184301354972

/-! ## A260698.P7644178968699729404

`record[A327832(A006093(n+1))]`
-/

namespace A260698.P7644178968699729404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P7644178968699729404

/-! ## A260698.P12784488776332728607

`record[A327832(A007918(n)-1)]`
-/

namespace A260698.P12784488776332728607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A007918 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P12784488776332728607

/-! ## A260698.P8245026864288767770

`record[A327832(A051698(n)-1)]`
-/

namespace A260698.P8245026864288767770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A051698 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P8245026864288767770

/-! ## A260698.P6900638362109367628

`record[A327832(A151800(n)-1)]`
-/

namespace A260698.P6900638362109367628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A151800 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P6900638362109367628

/-! ## A260698.P17247812218757588747

`record[A327832(A162753(n)-1)]`
-/

namespace A260698.P17247812218757588747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A162753 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P17247812218757588747

/-! ## A260698.P17720061763101259276

`record[A327832(A000010(∏{p}[n, #]))]`
-/

namespace A260698.P17720061763101259276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A000010 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P17720061763101259276

/-! ## A260698.P17679652406110345734

`record[A327832(record[A000010(n+1)])]`
-/

namespace A260698.P17679652406110345734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260698.P17679652406110345734

/-!
# A260699: a(2n+6) = a(2n) + 12*n + 20, a(2n+1) = (n+1)*(2*n+1), with a(0)=0, a(2)=2, a(4)=9.

The programs for A260699, the canonical program `A260699.P12674455544274516738` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260699 has offset 0).

The definition of A260699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260699.P12674455544274516738

`n*(n+1)/2-(1+(-1)^n)*floor(n/6+2/3)/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260699

/-- `n*(n+1)/2-(1+(-1)^n)*floor(n/6+2/3)/2` -/
def P12674455544274516738.Spec : Prop :=
  ∀ n, P12674455544274516738.a n = (A260699 n : ℚ)

end A260699

/-! ## A260699.P3373573535874802711

`floor(n/3*∑[n%2+1])`
-/

namespace A260699.P3373573535874802711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A260699.P3373573535874802711

namespace A260699

/-- `floor(n/3*∑[n%2+1])` -/
def P3373573535874802711.Spec : Prop :=
  ∀ n, P3373573535874802711.a n = A260699 n

end A260699

/-! ## A260699.P7470625274744047629

`floor(n*∑[gcd(2, n+1)/3])`
-/

namespace A260699.P7470625274744047629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A260699.P7470625274744047629

namespace A260699

/-- `floor(n*∑[gcd(2, n+1)/3])` -/
def P7470625274744047629.Spec : Prop :=
  ∀ n, P7470625274744047629.a n = A260699 n

end A260699

/-! ## A260699.P5300188252074223024

`floor(n/3*∑[and(1, n)+1])`
-/

namespace A260699.P5300188252074223024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A260699.P5300188252074223024

namespace A260699

/-- `floor(n/3*∑[and(1, n)+1])` -/
def P5300188252074223024.Spec : Prop :=
  ∀ n, P5300188252074223024.a n = A260699 n

end A260699

/-! ## A260699.P15045637677182115737

`floor(n/3*∑[C(2, and(1, n))])`
-/

namespace A260699.P15045637677182115737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A260699.P15045637677182115737

namespace A260699

/-- `floor(n/3*∑[C(2, and(1, n))])` -/
def P15045637677182115737.Spec : Prop :=
  ∀ n, P15045637677182115737.a n = A260699 n

end A260699

/-! ## A260699.P6708394364260147294

`∪[A248121(n+1), A000384(n)]`
-/

namespace A260699.P6708394364260147294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260699.P6708394364260147294

namespace A260699

/-- `∪[A248121(n+1), A000384(n)]` -/
def P6708394364260147294.Spec : Prop :=
  ∀ n, (P6708394364260147294.a n : ℤ) = A260699 n

end A260699

